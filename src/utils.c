#include "global.h"
#include "utils.h"
#include "structures.h"
#include "screen.h"

static void StoreKeyInput(Input* input, u32 keyInput);

typedef struct {
    u16 paletteId;
    u8 destPaletteNum;
    u8 numPalettes;
} PaletteGroup;

typedef struct {
    union {
        int raw;
        struct {
            u8 filler0[0x3];
            u8 unk3;
        } bytes;
    } unk0;
    u32 dest;
    u32 unk8;
} GfxItem;

extern const PaletteGroup* gPaletteGroups[];
extern const u8 gGlobalGfxAndPalettes[];
extern u32 gUsedPalettes;
extern u16 gPaletteBuffer[];
extern const GfxItem* gGfxGroups[];

void MemFill16(u32 value, void* dest, u32 size) {
    DmaFill16(3, value, dest, size);
}

void MemFill32(u32 value, void* dest, u32 size) {
    DmaFill32(3, value, dest, size);
}

void MemClear(void* dest, u32 size) {
    u32 zero = 0;

    switch (((u32)dest | size) & 3) {
        case 0:
            MemFill32(0, dest, size);
            break;
        case 2:
            MemFill16(0, dest, size);
            break;
        default:
            do {
                *(u8*)dest = zero;
                dest++;
                size--;
            } while (size != 0);
    }
}

void MemCopy(const void* src, void* dest, u32 size) {
    switch (((u32)src | (u32)dest | size) & 3) {
        case 0:
            DmaCopy32(3, src, dest, size);
            break;
        case 2:
            DmaCopy16(3, src, dest, size);
            break;
        default:
            do {
                *(u8*)dest = *(u8*)src;
                src++;
                dest++;
            } while (--size);
    }
}

void ReadKeyInput(void) {
    u32 keyInput = ~REG_KEYINPUT & KEYS_MASK;
    StoreKeyInput(&gInput, keyInput);
}

static void StoreKeyInput(Input* input, u32 keyInput) {
    u32 heldKeys = input->heldKeys;
    u32 difference = keyInput & ~heldKeys;
    input->newKeys = difference;
    if (keyInput == heldKeys) {
        if (--input->unk7 == 0) {
            input->unk7 = 4;
            input->unk4 = keyInput;
        } else {
            input->unk4 = 0;
        }
    } else {
        input->unk7 = 0x14;
        input->unk4 = difference;
    }
    input->heldKeys = keyInput;
}

void LoadPaletteGroup(u32 group) {
    const PaletteGroup* paletteGroup = gPaletteGroups[group];
    while (1) {
        u32 destPaletteNum = paletteGroup->destPaletteNum;
        u32 numPalettes = paletteGroup->numPalettes & 0xF;
        if (numPalettes == 0) {
            numPalettes = 16;
        }
        LoadPalettes(&gGlobalGfxAndPalettes[paletteGroup->paletteId * 32], destPaletteNum, numPalettes);
        if ((paletteGroup->numPalettes & 0x80) == 0) {
            break;
        }
        paletteGroup++;
    }
}

void LoadPalettes(const u8* src, int destPaletteNum, int numPalettes) {
    u16* dest;
    u32 size = numPalettes * 32;
    u32 usedPalettesMask = 1 << destPaletteNum;
    while (--numPalettes > 0) {
        usedPalettesMask |= (usedPalettesMask << 1);
    }
    gUsedPalettes |= usedPalettesMask;
    dest = &gPaletteBuffer[destPaletteNum * 16];
    DmaCopy32(3, src, dest, size);
}

void sub_0801D79C(u32 colorIndex, u32 color) {
    gPaletteBuffer[colorIndex] = color;
    gUsedPalettes |= 1 << (colorIndex / 16);
}

void sub_0801D7BC(u32 color, u32 arg1) {
    if (arg1) {
        gScreen.lcd.unk6 = 0xE0FF;
    } else {
        gScreen.lcd.unk6 = 0xFFFF;
    }
    sub_0801D79C(0, color);
}

void LoadGfxGroup(u32 group) {
    u32 terminator;
    u32 dmaCtrl;
    int gfxOffset;
    const u8* src;
    u32 dest;
    int size;
    const GfxItem* gfxItem = gGfxGroups[group];
    while (1) {
        u32 loadGfx = FALSE;
        u32 ctrl = gfxItem->unk0.bytes.unk3;
        ctrl &= 0xF;
        switch (ctrl) {
            case 0x7:
                loadGfx = TRUE;
                break;
            case 0xD:
                return;
            case 0xE:
                if (gUnk_02000000->gameLanguage != 0 && gUnk_02000000->gameLanguage != 1) {
                    loadGfx = TRUE;
                }
                break;
            case 0xF:
                if (gUnk_02000000->gameLanguage != 0) {
                    loadGfx = TRUE;
                }
                break;
            default:
                if (ctrl == gUnk_02000000->gameLanguage) {
                    loadGfx = TRUE;
                }
                break;
        }

        if (loadGfx) {
            gfxOffset = gfxItem->unk0.raw & 0xFFFFFF;
            src = &gGlobalGfxAndPalettes[gfxOffset];
            dest = gfxItem->dest;
            size = gfxItem->unk8;
            dmaCtrl = 0x80000000;
            if (size < 0) {
                if (dest >= VRAM) {
                    LZ77UnCompVram(src, (void*)dest);
                } else {
                    LZ77UnCompWram(src, (void*)dest);
                }
            } else {
                DmaSet(3, src, dest, dmaCtrl | ((u32)size >> 1));
            }
        }

        terminator = gfxItem->unk0.bytes.unk3;
        terminator &= 0x80;
        gfxItem++;
        if (!terminator) {
            break;
        }
    }
}

/* TODO:
    clear OAM, zMalloc, etc.
*/
