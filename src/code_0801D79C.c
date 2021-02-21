#include "global.h"
#include "screen.h"
#include "structures.h"

extern u16 gPaletteBuffer[];
extern u32 gUsedPalettes;

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

extern const GfxItem* gUnk_08100AA8[];
extern const u8 gGlobalGfxAndPalettes[];

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
    const GfxItem* gfxItem = gUnk_08100AA8[group];
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
                if (((struct_02000000*)0x2000000)->gameLanguage > 1) {
                    loadGfx = TRUE;
                }
                break;
            case 0xF:
                if (((struct_02000000*)0x2000000)->gameLanguage != 0) {
                    loadGfx = TRUE;
                }
                break;
            default:
                if (ctrl == ((struct_02000000*)0x2000000)->gameLanguage) {
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
