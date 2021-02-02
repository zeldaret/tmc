#include "fileScreen.h"

// copy, erase, start
#define NUM_FILE_OPERATIONS 3

// todo: does this belong with gUnk_02019EE0?
typedef enum {
    SAVE_EMPTY = 0,
    SAVE_VALID = 1,
    SAVE_DELETED = 0xFFFFFFFF,
} SaveStatus;

typedef enum {
    STATE_NONE,
    STATE_NEW,
    STATE_CHOOSE_LANG,
    STATE_OPTIONS,
    STATE_VIEW,
    STATE_COPY,
    STATE_ERASE,
    STATE_START,
} FileSelectState;

static void HandleFileScreenEnter(void);
static void HandleFileScreenActive(void);
static void HandleFileScreenExit(void);

static void (*const sScreenHandlers[])(void) = {
    HandleFileScreenEnter,
    HandleFileScreenActive,
    HandleFileScreenExit,
};

static void HandleFileSelect(void);
extern void HandleFileNew(void);
static void HandleFileLanguageSelect(void);
extern void HandleFileOptions(void);
static void HandleFileView(void);
extern void HandleFileCopy(void);
extern void HandleFileDelete(void);
extern void HandleFileStart(void);

static void (*const sFileScreenSubHandlers[])(void) = {
    HandleFileSelect, HandleFileNew,  HandleFileLanguageSelect, HandleFileOptions,
    HandleFileView,   HandleFileCopy, HandleFileDelete,         HandleFileStart,
};

extern KeyButtonLayout gUnk_080FC8D0;
// static const KeyButtonLayout gUnk_080FC8D0 = {
//     0xFF, 0xD8, 0x0, 0xFF, 0xD8, 0x0, 0xE0, 0x10, 0xF, {{0x5, 0x0}, { 0x2, 0x0 }}, 0xFF
// };

// main "file selection" screen
extern void (*const sFileSelectDefaultHandlers[])(void);

// handles submenus
extern void (*const sFileScreenSubHandlers[])(void);

extern void (*const gUnk_080FC944[])(void);

static void sub_08050624(u32);
static void sub_0805066C(void);
static void HideButtonR(void);
static void ShowButtonR(void);

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
    gScreen.bg.bg3Control = BGCNT_PRIORITY(1);
}

void sub_08050384(void) {
    sub_0801C4A0(0, 0);
    _DmaZero(&gBG0Buffer, sizeof(gBG0Buffer));
    gScreen.bg.bg3Control = BGCNT_PRIORITY(1);
}

void sub_080503A8(u32 gfxGroup) {
    LoadGfxGroup(gfxGroup);
    gScreen.bg.bg2yOffset = 1;
    gScreen.affine.unk = 1;
}

void SetFileSelectState(FileSelectState mode) {
    gUnk_02032EC0.state = mode;
    _DmaZero(&gBG0Buffer, sizeof(gBG0Buffer));
    _DmaZero(&gBG1Buffer, sizeof(gBG1Buffer));
}

void LoadOptionsFromSave(u32 idx) {
    u8 messageSpeed;
    u8 brightnessPref;

    if (idx >= NUM_SAVE_SLOTS) {
        // these apply to the language selection screen
        messageSpeed = 1;
        brightnessPref = 1;
    } else {
        SaveFile* saveFile = &gSaveFiles[idx];
        messageSpeed = saveFile->messageSpeed;
        brightnessPref = saveFile->brightnessPref;
    }

    gUnk_02000000->messageSpeed = messageSpeed;
    gUnk_02000000->brightnessPref = brightnessPref;
    gUsedPalettes = 0xFFFFFFFF;
}

void SetActiveSave(u32 idx) {
    if (idx < NUM_SAVE_SLOTS) {
        gUnk_02000000->saveFileId = idx;
        _DmaCopy(&gSaveFiles[idx], &gUnk_02002A40, sizeof(gSaveFiles[idx]));
    }
    LoadOptionsFromSave(idx);
}

void HandleChooseFileScreen(void) {
    FlushSprites();
    sScreenHandlers[gUnk_03001000.funcIndex]();
    if (gUnk_02032EC0.lastState != gUnk_02032EC0.state) {
        gUnk_02032EC0.lastState = gUnk_02032EC0.state;
        gScreen.bg.bg1Control = 0;
        gScreen.bg.bg2Control = 0;
        gScreen.bg.bg1yOffset = 0;
        gScreen.bg.bg2xOffset = 0;
        gScreen.affine.bg2xOffset = 0;
        gScreen.affine.bg2yOffset = 0;
        _DmaZero(&gChooseFileState, sizeof(gChooseFileState));
    }

    HideButtonR();
    sFileScreenSubHandlers[gUnk_02032EC0.lastState]();

    gUnk_02019EE0.isTransitioning = FALSE;
    sub_0805E5C0();
    sub_0805066C();
    sub_0801C1D4();
    sub_0801C208();
    sub_080AD9B0();
    sub_080AD918();
    if (gUnk_02019EE0.unk3 != gUnk_02000000->gameLanguage) {
        gUnk_02019EE0.unk3 = gUnk_02000000->gameLanguage;
        sub_080503A8(0x6);
        sub_080503A8(0xF);
    }
}

static void HandleFileScreenEnter(void) {
    u32 i;

    sub_0801DA90(1);
    sub_080A3210();
    _DmaZero((void*)VRAM, 0x80); // clear palettes
    sub_08056418();
    EraseAllEntities();
    sub_08080668();
    sub_080ADD30();
    sub_0801CFA8(0);
    _DmaZero(&gUnk_0200AF00, sizeof(gUnk_0200AF00));
    _DmaZero(&gUnk_02019EE0, sizeof(gUnk_02019EE0));
    gUnk_02019EE0.unk3 = 7;
    gUnk_02019EE0.unk6 = gUnk_02000000->gameLanguage > LANGUAGE_EN ? 3 : 0;
    _DmaZero(&gUnk_02032EC0, sizeof(gUnk_02032EC0));
    gUnk_02032EC0.lastState = 8;
    SetFileSelectState(STATE_NONE);
    InitDMA();
    sub_08050624(0);
    sub_08050624(1);
    sub_08050624(2);
    sub_08056208();
    sub_080503A8(0x5);
    LoadPaletteGroup(0x9);
    for (i = 0; i < 26; i++) {
        CreateObject(0x48, i, 0);
    }

    sub_080A70AC(&gUnk_080FC8D0);
    HideButtonR();
    gScreen.lcd.displayControl |= DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON;
    gScreen.affine.bg3Control = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30);
    gScreen.controls.layerFXControl = BLDCNT_TGT1_BG2 | BLDCNT_TGT2_BG3 | BLDCNT_EFFECT_BLEND;
    gScreen.controls.alphaBlend = BLDALPHA_BLEND(15, 10);
    gUnk_02024490.unk0 = 1;
    gUnk_03001000.funcIndex = 1;
    PlaySFX(0x7);
    DoFade(4, 8);
}

static void HandleFileScreenActive(void) {
}

static void HandleFileScreenExit(void) {
    if (!gFadeControl.active) {
        InitScreen(SCREEN_GAMEPLAY);
    }
}

static void sub_08050624(u32 idx) {
    SaveFile* saveFile = &gSaveFiles[idx];
    int status = sub_0807CF28(idx, saveFile);
    switch (status) {
        case SAVE_DELETED:
            sub_0807CF48(idx);
            // fallthrough
        case SAVE_EMPTY:
            sub_0805194C(idx);
            break;
    }
    gUnk_02019EE0.saveStatus[idx] = status;
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
        var0->charColor = 0;
        var0->bgColor = 5;
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
            // i is a struct of size 0x200
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
        var0->charColor = 0;
        var0->bgColor = 5;
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

static void HideButtonR(void) {
    gUnk_0200AF00.rButtonX = 0x140;
    gUnk_0200AF00.rButtonY = 0x24;
}

static void ShowButtonR(void) {
    gUnk_0200AF00.rButtonX = 0xD0;
    gUnk_0200AF00.rButtonY = 0x24;
}

static void HandleFileSelect(void) {
    sFileSelectDefaultHandlers[gChooseFileState.state]();
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

// transitioning away from submenu
void sub_08050888(void) {
    if (!gFadeControl.active) {
        switch (gUnk_02019EE0.saveStatus[gUnk_02019EE0.unk7]) {
            case SAVE_EMPTY:
                sub_0805194C(gUnk_02019EE0.unk7);
                gChooseFileState.subState = 2;
                break;
            case SAVE_VALID:
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
    int row_idx;
    u32 keys;
    int num_rows;
    FileSelectState mode;

    if (gUnk_02019EE0.isTransitioning) {
        return;
    }

    row_idx = gUnk_02019EE0.unk6;
    keys = gUnk_03000FF0.newKeys;
    if ((gUnk_03000FF0.heldKeys & L_BUTTON) && gUnk_02019EE0.saveStatus[row_idx] == SAVE_VALID) {
        keys &= ~(DPAD_UP | DPAD_DOWN);
    }

    num_rows = gUnk_02000000->gameLanguage > GAME_LANGUAGE ? NUM_SAVE_SLOTS + 1 : NUM_SAVE_SLOTS;
    mode = gUnk_02032EC0.lastState;
    switch (keys) {
        case DPAD_UP:
            if (row_idx > 0)
                row_idx--;
            break;
        case DPAD_DOWN:
            if (num_rows - 1 > row_idx)
                row_idx++;
            break;
        case R_BUTTON:
            if (gUnk_02019EE0.saveStatus[row_idx] == SAVE_VALID)
                mode = STATE_OPTIONS;
            break;
        case A_BUTTON:
        case START_BUTTON:
            SetActiveSave(row_idx);
            if (row_idx == 3)
                mode = STATE_CHOOSE_LANG;
            else
                switch (gUnk_02019EE0.saveStatus[row_idx]) {
                    case SAVE_EMPTY:
                        mode = STATE_NEW;
                        break;
                    case SAVE_VALID:
                        mode = STATE_VIEW;
                        break;
                }
            break;
    }

    if (gUnk_02032EC0.lastState != mode) {
        SetFileSelectState(mode);
        PlaySFX(0x6A);
    }

    row_idx = (row_idx + num_rows) % num_rows;
    if (gUnk_02019EE0.unk6 != row_idx) {
        gUnk_02019EE0.unk6 = row_idx;
        sub_08050AFC(row_idx);
        PlaySFX(0x69);
    }

    if (gUnk_02019EE0.saveStatus[gUnk_02019EE0.unk6] == SAVE_VALID) {
        ShowButtonR();
    }
}

void sub_08050A64(u32 idx) {
    if (gUnk_02019EE0.saveStatus[idx] != SAVE_VALID) {
        return;
    }

    gUnk_03001010._4 = 0;
    gUnk_03001010._6 = 0;
    gUnk_03001010._8 = 0x400;

    // Draw the save file's obtained elements.
    if (GetInventoryValue(0x40)) {
        gUnk_03001010.x = 0xA2;
        gUnk_03001010.y = 0x36;
        sub_080ADA14(0x145, 0x24);
    }
    if (GetInventoryValue(0x41)) {
        gUnk_03001010.x = 0x96;
        gUnk_03001010.y = 0x3D;
        sub_080ADA14(0x145, 0x22);
    }
    if (GetInventoryValue(0x42)) {
        gUnk_03001010.x = 0xAE;
        gUnk_03001010.y = 0x3D;
        sub_080ADA14(0x145, 0x23);
    }
    if (GetInventoryValue(0x43)) {
        gUnk_03001010.x = 0xA2;
        gUnk_03001010.y = 0x44;
        sub_080ADA14(0x145, 0x21);
    }
}

void sub_08050B3C(u16*);

void sub_08050AFC(u32 idx) {
    SetActiveSave(idx);
    _DmaZero(&gBG1Buffer, sizeof(gBG1Buffer));
    if (gUnk_02019EE0.saveStatus[idx] == SAVE_VALID) {
        sub_08050B3C(&gBG1Buffer.unk29C);
    }
    gScreen.bg.bg2yOffset = 1;
}

typedef struct {
    u16* unk0;
    u32 unk4;
} unk_08050B3C;

extern const u16 gUnk_080FC914[];

// Handles drawing of hearts
NONMATCH("asm/non_matching/save/sub_08050B3C.inc", void sub_08050B3C(u16* arg0)) {
    unk_08050B3C sp;
    int var0;
    int var1;
    int var2;
    int var3;
    int var4;
    int var5;
    int var6;
    int var7;
    u16* var8;

    sp.unk0 = arg0;
    var0 = gUnk_02002A40.stats.health / 2;
    if (var0 == 0) {
        var0 = 1;
    }

    var1 = gUnk_02002A40.stats.maxHealth / 2;
    if (var1 == 0) {
        return;
    }

    if (var0 > var1) {
        var0 = var1;
    }

    sp.unk4 = var0 & 0x3;
    var2 = var0 * 2;
    var5 = var2;
    if (var2 > 10) {
        var5 = 10;
    }

    var6 = var2;
    var6 -= 10;
    var7 = var6;
    if (var6 < 0) {
        var7 = 0;
    }

    var1 = var1 >> 2;
    var4 = var1;
    if (var1 > 10) {
        var1 = 10;
    }

    var4 -= 10;
    sp.unk0[0] = 0xF24C;
    DmaCopy16(3, &gUnk_080FC914[10 - var5], &sp.unk0[1], var1 * 2);
    if (var4 > 0) {
        sp.unk0[0x20] = 0xF24C;
        DmaCopy16(3, &gUnk_080FC914[10 - var7], &sp.unk0[1], var4 * 2);
    }

    if (!sp.unk4) {
        return;
    }

    var8 = sp.unk0;
    if (var2 >= 10) {
        var2 = var6;
        var8 += 0x20;
    }

    var8[var2 + 1] = sp.unk4 - 0xDB3;
}
END_NONMATCH

void HandleFileView(void) {
    gUnk_080FC93C[gMenu.menuType]();
    sub_08050A64(gUnk_02019EE0.unk6);
}

extern Input gUnk_03000FF0;

void sub_08050C54(void) {
    s32 column_idx;

    if (gUnk_02019EE0.isTransitioning)
        return;

    column_idx = gMenu.column_idx;
    switch (gUnk_03000FF0.newKeys) {
        case A_BUTTON:
        case START_BUTTON:
            if (column_idx == 0) {
                PlaySFX(0x80080000);
            }
            gMenu.transitionTimer = 0xf;
            sub_080A7114(1);
            PlaySFX(0x6a);
            break;
        case B_BUTTON:
            PlaySFX(0x6c);
            SetFileSelectState(STATE_NONE);
            break;
        case DPAD_LEFT:
            column_idx--;
            break;
        case DPAD_RIGHT:
            column_idx++;
            break;
    }
    if (column_idx < 0) {
        column_idx = 0;
    }
    if (column_idx >= NUM_FILE_OPERATIONS) {
        column_idx = NUM_FILE_OPERATIONS - 1;
    }
    if (gMenu.column_idx != column_idx) {
        gMenu.column_idx = column_idx;
        PlaySFX(0x69);
    }
}

void sub_08050D68(void) {
    u32 state;

    if (gMenu.transitionTimer == 0) {
        switch (gMenu.column_idx) {
            default:
            case 0:
                state = STATE_START;
                break;
            case 1:
                state = STATE_COPY;
                break;
            case 2:
                state = STATE_ERASE;
                break;
        }
        SetFileSelectState(state);
    } else {
        gMenu.transitionTimer--;
    }
}

void HandleFileLanguageSelect(void) {
    gUnk_080FC944[gMenu.menuType]();
}

void sub_08050DB8(void) {
    _DmaZero(&gBG2Buffer, sizeof(gBG2Buffer));
    sub_080503A8(0xc);
    gMenu.field_0x4 = gUnk_02000000->gameLanguage;
    sub_080A7114(1);
}

void sub_08050DE4(void) {
    s32 row_idx;

    if (gUnk_02019EE0.isTransitioning)
        return;

    row_idx = gUnk_02000000->gameLanguage;
    switch (gUnk_03000FF0.newKeys) {
        case DPAD_UP:
            row_idx--;
            break;
        case DPAD_DOWN:
            row_idx++;
            break;
        case A_BUTTON:
        case START_BUTTON:
            PlaySFX(0x6a);
            if (gMenu.field_0x4 != row_idx) {
                sub_080A7114(2);
                sub_08050318(8, 0);
            } else {
                SetFileSelectState(STATE_NONE);
            }
            break;
        case B_BUTTON:
            row_idx = gMenu.field_0x4;
            gUnk_02000000->gameLanguage = gMenu.field_0x4;
            PlaySFX(0x6c);
            SetFileSelectState(STATE_NONE);
            break;
    }

    // Lazy solution for positioning the rows lower on the screen
    if (row_idx < 2) {
        row_idx = 2;
    }
    if (row_idx > 6) {
        row_idx = 6;
    }
    if (gUnk_02000000->gameLanguage != row_idx) {
        gUnk_02000000->gameLanguage = row_idx;
        PlaySFX(0x69);
    }
}

void sub_08050E88(void) {
    if (sub_0807CDA4(SAVE_DONE))
        SetFileSelectState(0);
}
