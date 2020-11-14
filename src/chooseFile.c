#include "global.h"
#include "functions.h"
#include "main.h"
#include "player.h"
#include "readKeyInput.h"
#include "screen.h"

typedef struct {
    u8 filler0[0x5];
    u8 state;
    u8 subState;
    u16 timer;
    u8 fillerA[0x26];
} ChooseFileState;

// TODO: This occupies the same memory region as gMenu
extern ChooseFileState gChooseFileState;

typedef struct {
    u8 filler0[0x1];
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    u8* unk8;
} struct_02036540;

typedef struct {
    u8 filler0[0x10];
    u16 unk10;
    u8 filler12[0x6];
} struct_080FC844;

typedef struct {
    u8 filler0[0x4];
} struct_020227E8;

extern struct_020227E8 gUnk_020227E8;

typedef struct {
    u8 filler0[0x29C];
    u16 unk29C;
    u8 filler29E[0x562];
} struct_02034CB0;

extern struct_02034CB0 gUnk_02034CB0;
extern struct_02034CB0 gUnk_02021F30;
extern SaveFile gSaveFiles[];
extern u32 gUsedPalettes;
extern u8 gUnk_02000D00[];
extern u16 gUnk_03001010[5];

static void sub_08050624(u32);
static void sub_0805066C(void);
static void sub_080507FC(void);

extern void _DmaCopy(const void* src, void* dest, u32 size);
extern void sub_08056FEC(u32, struct_020227E8*);
extern void sub_0805F46C(u32, struct_080FC844*);
extern void sub_0801C4A0(u32, u32);
extern void sub_08080668(void);
extern void sub_0805194C(u32);
extern void LoadPalettes(const u8*, int, int);
extern struct_02036540* sub_0805F2C8(void);
extern void sub_0805F7DC(u32, struct_02036540*);
extern void sub_0805F300(struct_02036540*);
extern void sub_08050A64(u32);
extern void sub_08050AFC(u32);

extern const struct_080FC844 gUnk_080FC844;
extern const u16 gUnk_080FC85C[][3];
extern void (*const gUnk_080FC8A4[])(void);
extern void (*const gUnk_080FC8B0[])(void);
extern void (*const gUnk_080FC8FC[])(void);
extern void (*const gUnk_080FC908[])(void);
extern const u8 gUnk_080FC8D0[];
extern const u16 gUnk_080FC8DE[];
extern const u8 gGlobalGfxAndPalettes[];

void sub_08050318(u32 arg0, u32 arg1) {
    u32 sfx;
    struct_080FC844 var0;

    sub_08050384();
    _DmaCopy(&gUnk_080FC844, &var0, sizeof(gUnk_080FC844));
    sub_08056FEC(arg1, &gUnk_020227E8);
    var0.unk10 |= gUnk_080FC85C[arg0][0] << 0xC;
    sub_0805F46C(gUnk_080FC85C[arg0][1], &var0);
    sfx = gUnk_080FC85C[arg0][2];
    if (sfx) {
        PlaySFX(sfx);
    }
    gScreen.bg.bg3Control = 1;
}

void sub_08050384(void) {
    sub_0801C4A0(0, 0);
    _DmaZero(&gUnk_02034CB0, sizeof(gUnk_02034CB0));
    gScreen.bg.bg3Control = 1;
}

void sub_080503A8(u32 gfxGroup) {
    LoadGfxGroup(gfxGroup);
    gScreen.bg.bg2yOffset = 1;
    gScreen.affine.unk = 1;
}

void sub_080503BC(u8 state) {
    gUnk_02032EC0.state = state;
    _DmaZero(&gUnk_02034CB0, sizeof(gUnk_02034CB0));
    _DmaZero(&gUnk_02021F30, sizeof(gUnk_02021F30));
}

void sub_080503E4(u32 saveFileId) {
    u8 messageSpeed;
    u8 brightnessPref;

    if (saveFileId > 2) {
        messageSpeed = 1;
        brightnessPref = 1;
    } else {
        SaveFile* saveFile = &gSaveFiles[saveFileId];
        messageSpeed = saveFile->messageSpeed;
        brightnessPref = saveFile->brightnessPref;
    }

    ((struct_02000000*)0x2000000)->messageSpeed = messageSpeed;
    ((struct_02000000*)0x2000000)->brightnessPref = brightnessPref;
    gUsedPalettes = 0xFFFFFFFF;
}

void sub_0805041C(u32 saveFileId) {
    SaveFile* saveFile;

    if (saveFileId < 3) {
        ((struct_02000000*)0x2000000)->saveFileId = saveFileId;
        saveFile = &gSaveFiles[saveFileId];
        _DmaCopy(saveFile, &gUnk_02002A40, sizeof(*saveFile));
    }
    sub_080503E4(saveFileId);
}

void HandleChooseFileScreen(void) {
    sub_080AD90C();
    gUnk_080FC8A4[gUnk_03001000.funcIndex]();
    if (gUnk_02032EC0.transitionType != gUnk_02032EC0.state) {
        gUnk_02032EC0.transitionType = gUnk_02032EC0.state;
        gScreen.bg.bg1Control = 0;
        gScreen.bg.bg2Control = 0;
        gScreen.bg.bg1yOffset = 0;
        gScreen.bg.bg2xOffset = 0;
        gScreen.affine.bg2xOffset = 0;
        gScreen.affine.bg2yOffset = 0;
        _DmaZero(&gChooseFileState, sizeof(gChooseFileState));
    }

    sub_080507FC();
    gUnk_080FC8B0[gUnk_02032EC0.transitionType]();
    gUnk_02019EE0.unk0 = 0;
    sub_0805E5C0();
    sub_0805066C();
    sub_0801C1D4();
    sub_0801C208();
    sub_080AD9B0();
    sub_080AD918();
    if (gUnk_02019EE0.unk3 != ((struct_02000000*)0x2000000)->gameLanguage) {
        gUnk_02019EE0.unk3 = ((struct_02000000*)0x2000000)->gameLanguage;
        sub_080503A8(0x6);
        sub_080503A8(0xF);
    }
}

void sub_080504F4(void) {
    u32 i;

    sub_0801DA90(1);
    sub_080A3210();
    _DmaZero((void*)VRAM, 0x80);
    sub_08056418();
    EraseAllEntities();
    sub_08080668();
    sub_080ADD30();
    sub_0801CFA8(0);
    _DmaZero(&gUnk_0200AF00, sizeof(gUnk_0200AF00));
    _DmaZero(&gUnk_02019EE0, sizeof(gUnk_02019EE0));
    gUnk_02019EE0.unk3 = 7;
    gUnk_02019EE0.unk6 = ((struct_02000000*)0x2000000)->gameLanguage > 1 ? 3 : 0;
    _DmaZero(&gUnk_02032EC0, sizeof(gUnk_02032EC0));
    gUnk_02032EC0.transitionType = 8;
    sub_080503BC(0);
    sub_0805616C();
    sub_08050624(0);
    sub_08050624(1);
    sub_08050624(2);
    sub_08056208();
    sub_080503A8(0x5);
    LoadPaletteGroup(0x9);
    for (i = 0; i < 26; i++) {
        CreateObject(0x48, i, 0);
    }

    sub_080A70AC(gUnk_080FC8D0);
    sub_080507FC();
    gScreen.lcd.displayControl |= 0x1F00;
    gScreen.affine.bg3Control = 0x1E0B;
    gScreen.controls.layerFXControl = 0x844;
    gScreen.controls.alphaBlend = BLDALPHA_BLEND(15, 10);
    gUnk_02024490.unk0 = 1;
    gUnk_03001000.funcIndex = 1;
    PlaySFX(0x7);
    DoFade(4, 8);
}

void nullsub_479(void) {
}

void sub_0805060C(void) {
    if (!gFadeControl.active) {
        InitScreen(SCREEN_GAMEPLAY);
    }
}

static void sub_08050624(u32 saveFileId) {
    SaveFile* saveFile = &gSaveFiles[saveFileId];
    int var0 = sub_0807CF28(saveFileId, saveFile);
    switch (var0) {
        case -1:
            sub_0807CF48(saveFileId);
            // fallthrough
        case 0:
            sub_0805194C(saveFileId);
            break;
    }
    gUnk_02019EE0.unk8[saveFileId] = var0;
}

static void sub_0805066C(void) {
    u32 loadNewPalette;
    const u8* paletteOffset;

    loadNewPalette = FALSE;
    if (--gUnk_02019EE0.unk1 == 0) {
        gUnk_02019EE0.unk1 = 16;
        gUnk_02019EE0.unk2 = (gUnk_02019EE0.unk2 + 1) % 15;
        loadNewPalette = TRUE;
    }

    if (gUnk_02019EE0.unk2 == 0) {
        gUnk_02019EE0.unk2 = 1;
        gUnk_02019EE0.unk1 = (Random() & 0x7) * 16 + 8;
        loadNewPalette = TRUE;
    }

    if (loadNewPalette) {
        paletteOffset = &gGlobalGfxAndPalettes[gUnk_080FC8DE[gUnk_02019EE0.unk2]];
        LoadPalettes(&paletteOffset[0x11AA0], 11, 1);
        LoadPalettes(&paletteOffset[0x11BA0], 12, 1);
        LoadPalettes(&paletteOffset[0x11CA0], 13, 1);
        LoadPalettes(&paletteOffset[0x11DA0], 14, 1);
    }
}

void sub_0805070C(void) {
    u32 i;
    int j;
    struct_02036540* var0;
    u8* playerName;

    var0 = sub_0805F2C8();
    if (var0) {
        var0->unk2 = 0;
        var0->unk3 = 5;
        var0->unk1 = 1;
        var0->unk4 = 0x30;
        var0->unk8 = gUnk_02000D00;
        for (i = 0; i < 3; i++) {
            var0->unk6 = 0;
            _DmaZero(var0->unk8, 0x200);
            playerName = gSaveFiles[i].playerName;
            for (j = 0; j < 6; j++) {
                sub_0805F7DC(playerName[j], var0);
            }
            _DmaCopy(var0->unk8, (void*)(OBJ_VRAM0 + 0x4000 + i * 0x200), 0x200);
        }
        sub_0805F300(var0);
    }
}

void sub_08050790(void) {
    u32 i, j;
    struct_02036540* var0;
    u32 var1;

    var0 = sub_0805F2C8();
    if (var0) {
        var0->unk2 = 0;
        var0->unk3 = 5;
        var0->unk1 = 1;
        var0->unk4 = 0x80;
        var0->unk8 = gUnk_02000D00;
        for (i = 0; i < 16; i++) {
            var0->unk6 = 0;
            var1 = i * 16;
            for (j = 0; j < 16; j++) {
                sub_0805F7DC(var1, var0);
                var1++;
            }
            _DmaCopy(gUnk_02000D00, (void*)(BG_VRAM + i * 0x400), 0x400);
        }
        sub_0805F300(var0);
    }
}

static void sub_080507FC(void) {
    gUnk_0200AF00.unk1A = 0x140;
    gUnk_0200AF00.unk20 = 0x24;
}

void sub_08050810(void) {
    gUnk_0200AF00.unk1A = 0xD0;
    gUnk_0200AF00.unk20 = 0x24;
}

void sub_08050820(void) {
    gUnk_080FC8FC[gChooseFileState.state]();
    sub_08050A64(gUnk_02019EE0.unk6);
}

void sub_08050848(void) {
    sub_080503A8(0x7);
    sub_0805070C();
    gUnk_02019EE0.unk7 = 0;
    sub_08050AFC(gUnk_02019EE0.unk6);
    sub_080A7114(1);
}

void sub_0805086C(void) {
    gUnk_080FC908[gChooseFileState.subState]();
}

void sub_08050888(void) {
    if (!gFadeControl.active) {
        switch (gUnk_02019EE0.unk8[gUnk_02019EE0.unk7]) {
            case 0:
                sub_0805194C(gUnk_02019EE0.unk7);
                gChooseFileState.subState = 2;
                break;
            case 1:
                gChooseFileState.subState = 2;
                break;
            default:
                sub_0805194C(gUnk_02019EE0.unk7);
                sub_08050318(0, gUnk_02019EE0.unk7 + 1);
                gChooseFileState.timer = 30;
                gChooseFileState.subState = 1;
                break;
        }
    }
}

void sub_080508E4(void) {
    if (gChooseFileState.timer == 0) {
        if (gUnk_03000FF0.newKeys & (A_BUTTON | START_BUTTON)) {
            gChooseFileState.subState = 2;
        }
    } else {
        gChooseFileState.timer--;
    }
}

void sub_08050910(void) {
    sub_08050384();
    if (++gUnk_02019EE0.unk7 > 2) {
        sub_080A7114(2);
    } else {
        gChooseFileState.subState = 0;
    }
}

void sub_08050940(void) {
    int saveFileId;
    u32 newKeys;
    int var1;
    u32 var2;

    if (gUnk_02019EE0.unk0) {
        return;
    }

    saveFileId = gUnk_02019EE0.unk6;
    newKeys = gUnk_03000FF0.newKeys;
    if ((gUnk_03000FF0.heldKeys & L_BUTTON) && gUnk_02019EE0.unk8[saveFileId] == 1) {
        newKeys &= ~(DPAD_UP | DPAD_DOWN);
    }

    var1 = ((struct_02000000*)0x2000000)->gameLanguage > 1 ? 4 : 3;
    var2 = gUnk_02032EC0.transitionType;
    switch (newKeys) {
        case DPAD_UP:
            if (saveFileId > 0) {
                saveFileId--;
            }
            break;
        case DPAD_DOWN:
            if (var1 - 1 > saveFileId) {
                saveFileId++;
            }
            break;
        case R_BUTTON:
            if (gUnk_02019EE0.unk8[saveFileId] == 1) {
                var2 = 3;
            }
            break;
        case A_BUTTON:
        case START_BUTTON:
            sub_0805041C(saveFileId);
            if (saveFileId == 3) {
                var2 = 2;
            } else {
                switch (gUnk_02019EE0.unk8[saveFileId]) {
                    case 0:
                        var2 = 1;
                        break;
                    case 1:
                        var2 = 4;
                        break;
                }
            }
            break;
    }

    if (gUnk_02032EC0.transitionType != var2) {
        sub_080503BC(var2);
        PlaySFX(0x6A);
    }

    saveFileId = (saveFileId + var1) % var1;
    if (gUnk_02019EE0.unk6 != saveFileId) {
        gUnk_02019EE0.unk6 = saveFileId;
        sub_08050AFC(saveFileId);
        PlaySFX(0x69);
    }

    if (gUnk_02019EE0.unk8[gUnk_02019EE0.unk6] == 1) {
        sub_08050810();
    }
}

void sub_08050A64(u32 saveFileId) {
    if (gUnk_02019EE0.unk8[saveFileId] != 1) {
        return;
    }

    gUnk_03001010[2] = 0;
    gUnk_03001010[3] = 0;
    gUnk_03001010[4] = 0x400;

    // Draw the save file's obtained elements.
    if (GetInventoryValue(0x40)) {
        gUnk_03001010[0] = 0xA2;
        gUnk_03001010[1] = 0x36;
        sub_080ADA14(0x145, 0x24);
    }
    if (GetInventoryValue(0x41)) {
        gUnk_03001010[0] = 0x96;
        gUnk_03001010[1] = 0x3D;
        sub_080ADA14(0x145, 0x22);
    }
    if (GetInventoryValue(0x42)) {
        gUnk_03001010[0] = 0xAE;
        gUnk_03001010[1] = 0x3D;
        sub_080ADA14(0x145, 0x23);
    }
    if (GetInventoryValue(0x43)) {
        gUnk_03001010[0] = 0xA2;
        gUnk_03001010[1] = 0x44;
        sub_080ADA14(0x145, 0x21);
    }
}

void sub_08050B3C(u16*);

void sub_08050AFC(u32 saveFileId) {
    sub_0805041C(saveFileId);
    _DmaZero(&gUnk_02021F30, sizeof(gUnk_02021F30));
    if (gUnk_02019EE0.unk8[saveFileId] == 1) {
        sub_08050B3C(&gUnk_02021F30.unk29C);
    }
    gScreen.bg.bg2yOffset = 1;
}

// typedef struct {
//     u16* unk0;
//     u32 unk4;
// } unk_08050B3C;

// extern const u16 gUnk_080FC914[];

// void sub_08050B3C(u16* arg0) {
//     unk_08050B3C sp;
//     int var0;
//     int var1;
//     int var2;
//     int var3;
//     int var4;
//     int var5;
//     int var6;
//     int var7;
//     u16* var8;

//     sp.unk0 = arg0;
//     var0 = gUnk_02002A40.stats.health * 2;
//     if (var0 == 0) {
//         var0 = 1;
//     }

//     var1 = gUnk_02002A40.stats.maxHealth * 2;
//     if (var1 == 0) {
//         return;
//     }

//     if (var0 > var1) {
//         var0 = var1;
//     }

//     sp.unk4 = var0 & 0x3;
//     var2 = var0 >> 2;
//     var5 = var2;
//     if (var2 > 10) {
//         var5 = 10;
//     }

//     var6 = var2;
//     var6 -= 10;
//     var7 = var6;
//     if (var6 < 0) {
//         var7 = 0;
//     }

//     var1 = var1 >> 2;
//     var4 = var1;
//     if (var1 > 10) {
//         var1 = 10;
//     }

//     var4 -= 10;
//     sp.unk0[0] = 0xF24C;
//     DmaCopy16(3, &gUnk_080FC914[10 - var5], &sp.unk0[1], var1 * 2);
//     if (var4 > 0) {
//         sp.unk0[0x20] = 0xF24C;
//         DmaCopy16(3, &gUnk_080FC914[10 - var7], &sp.unk0[1], var4 * 2);
//     }

//     if (!sp.unk4) {
//         return;
//     }

//     var8 = sp.unk0;
//     if (var2 >= 10) {
//         var2 = var6;
//         var8 += 0x20;
//     }

//     var8[var2 + 1] = sp.unk4 - 0xDB3;
// }
