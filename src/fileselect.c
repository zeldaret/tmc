/**
 * @file fileselect.c
 * @ingroup Tasks
 *
 * @brief File select task
 */
#include "fileselect.h"

#include "common.h"
#include "figurineMenu.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "kinstone.h"
#include "main.h"
#include "menu.h"
#include "message.h"
#include "object.h"
#include "screen.h"
#include "subtask.h"
#include "ui.h"

// copy, erase, start
#define NUM_FILE_OPERATIONS 3

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

// todo: does this belong with gMapDataBottomSpecial?
typedef enum {
    SAVE_EMPTY = 0,
    SAVE_VALID = 1,
    SAVE_DELETED = 0xFFFFFFFF,
} SaveStatus;

typedef enum {
    RESULT_INVALID = 0,
    RESULT_ASCII = 1,
} CharResult;

const struct_080FC3E4 gUnk_080FC3E4[] = {
    { 0, 0, 128, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
#ifdef EU
    { 0, 0, 0, 1 },
#else
    { 0, 0, 2, 1 },
#endif
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, KINSTONE_2C, UNK_6_10, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 4, 1 },
    { 0, 0, 7, 1 },
    { 0, 0, 3, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 4, 1 },
#ifdef EU
    { 0, 0, 2, 1 },
#else
    { 0, 0, 3, 1 },
#endif
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
#if defined(EU) || defined(JP)
    { 0, 0x12, UNK_6_40, 1 },
#else
    { 0, 5, UNK_6_20, 1 },
#endif
    { 0, 0, 0, 1 },
    { FLAG_BANK_4, YAMADOUKUTU_0E_SENNIN, UNK_6_40, 1 },
    { 0, 0, 3, 1 },
    { 0, 0, 5, 1 },
    { 0, 0, 5, 1 },
    { 0, 0, 3, 1 },
    { 0, 0, 1, 1 },
    { 0, 0, 3, 1 },
    { 0, 0, 5, 1 },
    { 0, 0, 3, 1 },
    { 0, 0, 2, 1 },
    { 0, 0, 2, 1 },
    { 0, 0, 2, 1 },
    { 0, 0, UNK_6_20, 1 },
    { 0, KINSTONE_30, UNK_6_10, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 0, 1 },
    { 0, 0, 4, 1 },
    { 0, 0, 4, 1 },
    { 0, 0, 3, 1 },
    { 0, 0, 3, 1 },
    { FLAG_BANK_4, GORON_DOUKUTU_APPEAR, UNK_6_40, 1 },
    { 0, 0, 3, 1 },
    { 0, 0, 3, 0 },
    { 0, 0, 4, 0 },
    { 0, 0, 7, 0 },
    { 0, 0, 0, 0 },
    { 0, 0, 0, 0 },
    { 0, 0, 0, 0 },
    { 0, 0, 2, 0 },
    { 0, 0, 0, 0 },
    { 0, 0, 0, 0 },
    { 0, 0, 4, 0 },
    { 0, 0, 0, 0 },
    { 0, 0, 0, 0 },
    { 0, 0, 4, 0 },
    { 0, 0, 3, 0 },
    { 0, 0, 3, 0 },
    { 0, 0, 6, 0 },
    { 0, 0, 0, 0 },
    { 0, 0, 7, 0 },
#ifdef EU
    { 0, 0, 0, 0 },
#else
    { 0, 0, 2, 0 },
#endif
    { 0, KINSTONE_33, UNK_6_10, 1 },
    { 0, 1, UNK_6_20, 0 },
    { 0, 0, 0, 2 },
    { 0, 0, 4, 2 },
    { 0, 0, 4, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 5, 2 },
    { 0, 0, 7, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 3, 3 },
    { 0, 0, 7, 3 },
    { 0, 0, 0, 2 },
#ifdef EU
    { 0, 0, 3, 2 },
    { 0, 0, 6, 2 },
#else
    { 0, 0, 6, 2 },
    { 0, 0, 3, 2 },
#endif
    { 0, 0, 5, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 4, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 7, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 7, 3 },
    { 0, 0, 0, 2 },
    { 0, 0, 2, 2 },
    { 0, 0, 2, 2 },
    { 0, 0, 6, 2 },
    { 0, 0, 4, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 7, 2 },
    { 0, 0, 7, 2 },
    { 0, 0, 6, 2 },
    { 0, 0, 0, 2 },
    { 0, 2, UNK_6_20, 3 },
    { 0, 3, UNK_6_20, 3 },
    { 0, 4, UNK_6_20, 3 },
    { 0, 0, 2, 2 },
    { 0, 0, 6, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 0, 2 },
    { 0, 0, 3, 2 },
    { 0, 0, 0, 3 },
    { 0, 0, 1, 2 },
    { 0, 0, 4, 3 },
    { 0, 0, 7, 3 },
    { 0, 0, 6, 1 },
    { 0, 0, 0, 3 },
    { 0, 0, 1, 3 },
    { 0, 0, 3, 3 },
    { FLAG_BANK_8, LV4_10_BOSSDIE, UNK_6_8, 3 },
    { 0, 0, 9, 0 },
    { 0, 0, 9, 1 },
    { 0, 0, 9, 3 },
    { 0, 0, 9, 3 },
    { 0, 0, 9, 3 },
    { 0, 0, 9, 3 },
    { 0, 0xffff, 0, 1 },
    { 0, 0xffff, 0, 1 },
    { 0, 0xffff, 0, 1 },
};

const Font gUnk_080FC844 = {
    &gBG0Buffer[0xcf], BG_TILE_ADDR(0x198), gTextGfxBuffer, 0, 96, 224, 1, 1, 0, 1, 3, 0, 0, 1, 0
};

const u16 gUnk_080FC85C[][3] = {
    { 0, 3, SFX_MENU_ERROR },
    { 0, 4, SFX_MENU_ERROR },
    { 1, 5, 0 },
    { 0, 6, SFX_MENU_ERROR },
    { 1, 7, 0 },
    { 1, 8, 0 },
    { 0, 9, SFX_MENU_ERROR },
    { 1, 10, 0 },
    { 1, 11, 0 },
    { 0, 12, SFX_MENU_ERROR },
    { 1, 13, 0 },
    { 0, 14, 0 },
};

static void HandleFileScreenEnter(void);
static void HandleFileScreenActive(void);
static void HandleFileScreenExit(void);
static void (*const sTaskHandlers[])(void) = {
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

static const KeyButtonLayout gUnk_080FC8D0 = {
    .aButtonX = 0xFF,
    .aButtonY = 0xD8,
    .aButtonText = 0x0,
    .bButtonX = 0xFF,
    .bButtonY = 0xD8,
    .bButtonText = 0x0,
    .rButtonX = 0xE0,
    .rButtonY = 0x10,
    .rButtonText = 0xF,
    .settingDict = { 0x5, 0x0, 0x2, 0x0, 0xFF },
};

static const u16 gUnk_080FC8DE[] = {
    0x01, 0x00, 0x20, 0x40, 0x60, 0x80, 0xa0, 0xc0, 0xe0, 0xc0, 0xa0, 0x80, 0x60, 0x40, 0x20,
};

static void sub_08050848(void);
static void sub_0805086C(void);
static void sub_08050940(void);
void sub_08051358(void);
void sub_08051574(u32);
void sub_08051480(u32);
static void (*const sFileSelectDefaultHandlers[])(void) = {
    sub_08050848,
    sub_0805086C,
    sub_08050940,
};

extern void (*const gUnk_080FC944[])(void);
extern void (*const gUnk_080FC950[])(void);
extern void (*const gUnk_080FC960[])(void);
extern void (*const gUnk_080FC9B0[])(void);
extern void (*const gUnk_080FC9BC[])(void);
extern void (*const gUnk_080FC9C8[])(void);
extern const u8 gUnk_080FC970[];
extern const u8 gUnk_080FC980[];
extern const u8 gUnk_080FC9A0[];

static void ResetEmptyOrDeletedSaveFile(u32);
static void sub_0805066C(void);
static void HideButtonR(void);
static void ShowButtonR(void);
void sub_08051458(void);

void sub_08050888(void);
void sub_080508E4(void);
void sub_08050910(void);

void CreateDialogBox(u32 arg0, u32 arg1) {
    u32 sfx;
    Font var0;

    sub_08050384();
    MemCopy(&gUnk_080FC844, &var0, sizeof(gUnk_080FC844));
    sub_08056FEC(arg1, gUnk_020227E8);
    var0.gfx_src |= gUnk_080FC85C[arg0][0] << 0xC;
    ShowTextBox(gUnk_080FC85C[arg0][1], &var0);
    sfx = gUnk_080FC85C[arg0][2];
    if (sfx) {
        SoundReq(sfx);
    }
    gScreen.bg0.updated = 1;
}

void sub_08050384(void) {
    RecoverUI(0, 0);
    MemClear(&gBG0Buffer, sizeof(gBG0Buffer));
    gScreen.bg0.updated = 1;
}

void sub_080503A8(u32 gfxGroup) {
    LoadGfxGroup(gfxGroup);
    gScreen.bg1.updated = 1;
    gScreen.bg2.updated = 1;
}

void SetFileSelectState(FileSelectState mode) {
    gUI.state = mode;
    MemClear(&gBG0Buffer, sizeof(gBG0Buffer));
    MemClear(&gBG1Buffer, sizeof(gBG1Buffer));
}

void LoadOptionsFromSave(u32 idx) {
    u8 msg_speed;
    u8 brightness;

    if (idx >= NUM_SAVE_SLOTS) {
        // these apply to the language selection screen
        msg_speed = 1;
        brightness = 1;
    } else {
        SaveFile* saveFile = &gMapDataBottomSpecial.saves[idx];
        msg_speed = saveFile->msg_speed;
        brightness = saveFile->brightness;
    }

    gSaveHeader->msg_speed = msg_speed;
    gSaveHeader->brightness = brightness;
    gUsedPalettes = 0xffffffff;
}

void SetActiveSave(u32 idx) {
    if (idx < NUM_SAVE_SLOTS) {
        gSaveHeader->saveFileId = idx;
        MemCopy(&gMapDataBottomSpecial.saves[idx], &gSave, sizeof(gMapDataBottomSpecial.saves[idx]));
    }
    LoadOptionsFromSave(idx);
}

void FileSelectTask(void) {
    FlushSprites();
    sTaskHandlers[gMain.state]();
    if (gUI.lastState != gUI.state) {
        gUI.lastState = gUI.state;
        gScreen.bg0.xOffset = 0;
        gScreen.bg0.yOffset = 0;
        gScreen.bg1.xOffset = 0;
        gScreen.bg1.yOffset = 0;
        gScreen.bg2.xOffset = 0;
        gScreen.bg2.yOffset = 0;
        MemClear(&gChooseFileState, sizeof(gChooseFileState));
    }

    HideButtonR();
    sFileScreenSubHandlers[gUI.lastState]();

    gMapDataBottomSpecial.isTransitioning = FALSE;
    UpdateEntities();
    sub_0805066C();
    UpdateUIElements();
    DrawUIElements();
    DrawEntities();
    CopyOAM();
    if (gMapDataBottomSpecial.unk3 != gSaveHeader->language) {
        gMapDataBottomSpecial.unk3 = gSaveHeader->language;
        sub_080503A8(0x6);
        sub_080503A8(0xF);
    }
}

static void HandleFileScreenEnter(void) {
    u32 i;

    DispReset(1);
    InitSoundPlayingInfo();
    MemClear((void*)VRAM, 0x80); // clear palettes
    MessageInitialize();
    EraseAllEntities();
    ClearTileMaps();
    ResetPalettes();
    ResetPaletteTable(0);
    MemClear(&gHUD, sizeof(gHUD));
    MemClear(&gMapDataBottomSpecial, sizeof(gMapDataBottomSpecial));
    gMapDataBottomSpecial.unk3 = 7;
    gMapDataBottomSpecial.unk6 = gSaveHeader->language > LANGUAGE_EN ? 3 : 0;
    MemClear(&gUI, sizeof(gUI));
    gUI.lastState = 8;
    SetFileSelectState(STATE_NONE);
    InitDMA();
    ResetEmptyOrDeletedSaveFile(0);
    ResetEmptyOrDeletedSaveFile(1);
    ResetEmptyOrDeletedSaveFile(2);
    InitVBlankDMA();
    sub_080503A8(0x5);
    LoadPaletteGroup(0x9);
    for (i = 0; i < 26; i++) {
        CreateObject(FILE_SCREEN_OBJECTS, i, 0);
    }

    sub_080A70AC(&gUnk_080FC8D0);
    HideButtonR();
    gScreen.lcd.displayControl |= DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON;
    gScreen.bg3.control = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30);
    gScreen.controls.layerFXControl = BLDCNT_TGT1_BG2 | BLDCNT_TGT2_BG3 | BLDCNT_EFFECT_BLEND;
    gScreen.controls.alphaBlend = BLDALPHA_BLEND(15, 10);
    gGFXSlots.unk0 = 1;
    gMain.state = GAMETASK_INIT;
    SoundReq(BGM_FILE_SELECT);
    SetFade(FADE_INSTANT, 8);
}

static void HandleFileScreenActive(void) {
}

static void HandleFileScreenExit(void) {
    if (!gFadeControl.active) {
        SetTask(TASK_GAME);
    }
}

static void ResetEmptyOrDeletedSaveFile(u32 index) {
    SaveFile* saveFile = &gMapDataBottomSpecial.saves[index];
    int status = ReadSaveFile(index, saveFile);
    switch (status) {
        case SAVE_DELETED:
            SetFileStatusDeleted(index);
            // fallthrough
        case SAVE_EMPTY:
            ResetSaveFile(index);
            break;
    }
    gMapDataBottomSpecial.saveStatus[index] = status;
}

static void sub_0805066C(void) {
    u32 loadNewPalette;
    const u8* paletteOffset;

    loadNewPalette = FALSE;
    if (--gMapDataBottomSpecial.unk1 == 0) {
        gMapDataBottomSpecial.unk1 = 16;
        gMapDataBottomSpecial.unk2 = (gMapDataBottomSpecial.unk2 + 1) % 15;
        loadNewPalette = TRUE;
    }

    if (gMapDataBottomSpecial.unk2 == 0) {
        gMapDataBottomSpecial.unk2 = 1;
        gMapDataBottomSpecial.unk1 = (Random() & 0x7) * 16 + 8;
        loadNewPalette = TRUE;
    }

    if (loadNewPalette) {
        paletteOffset = &gGlobalGfxAndPalettes[gUnk_080FC8DE[gMapDataBottomSpecial.unk2]];
#ifdef EU
        LoadPalettes(&paletteOffset[0x11A60], 11, 1);
        LoadPalettes(&paletteOffset[0x11B60], 12, 1);
        LoadPalettes(&paletteOffset[0x11C60], 13, 1);
        LoadPalettes(&paletteOffset[0x11D60], 14, 1);
#else
        LoadPalettes(&paletteOffset[0x11AA0], 11, 1);
        LoadPalettes(&paletteOffset[0x11BA0], 12, 1);
        LoadPalettes(&paletteOffset[0x11CA0], 13, 1);
        LoadPalettes(&paletteOffset[0x11DA0], 14, 1);
#endif
    }
}

void sub_0805070C(void) {
    u32 i;
    int j;
    WStruct* var0;
    char* name;

    var0 = sub_0805F2C8();
    if (var0) {
        var0->charColor = 0;
        var0->bgColor = 5;
        var0->unk1 = 1;
        var0->unk4 = 0x30;
        var0->unk8 = gTextGfxBuffer;
        for (i = 0; i < NUM_SAVE_SLOTS; i++) {
            var0->unk6 = 0;
            MemClear(var0->unk8, 0x200);
            name = &gMapDataBottomSpecial.saves[i].name[0];
            for (j = 0; j < FILENAME_LENGTH; j++) {
                sub_0805F7DC(name[j], var0);
            }
            // i is a struct of size 0x200
            MemCopy(var0->unk8, (void*)(OBJ_VRAM0 + 0x4000 + i * 0x200), 0x200);
        }
        sub_0805F300(var0);
    }
}

void sub_08050790(void) {
    u32 i, j;
    WStruct* var0;
    u32 var1;

    var0 = sub_0805F2C8();
    if (var0) {
        var0->charColor = 0;
        var0->bgColor = 5;
        var0->unk1 = 1;
        var0->unk4 = 0x80;
        var0->unk8 = gTextGfxBuffer;
        for (i = 0; i < 16; i++) {
            var0->unk6 = 0;
            var1 = i * 16;
            for (j = 0; j < 16; j++) {
                sub_0805F7DC(var1, var0);
                var1++;
            }
            MemCopy(gTextGfxBuffer, (void*)(BG_VRAM + i * 0x400), 0x400);
        }
        sub_0805F300(var0);
    }
}

static void HideButtonR(void) {
    gHUD.buttonX[2] = 0x140;
    gHUD.buttonY[2] = 0x24;
}

static void ShowButtonR(void) {
    gHUD.buttonX[2] = 0xD0;
    gHUD.buttonY[2] = 0x24;
}

static void HandleFileSelect(void) {
    sFileSelectDefaultHandlers[gChooseFileState.state]();
    sub_08050A64(gMapDataBottomSpecial.unk6);
}

void sub_08050848(void) {
    sub_080503A8(0x7);
    sub_0805070C();
    gMapDataBottomSpecial.unk7 = 0;
    sub_08050AFC(gMapDataBottomSpecial.unk6);
    SetMenuType(1);
}

void (*const gUnk_080FC908[])(void) = {
    sub_08050888,
    sub_080508E4,
    sub_08050910,
};

void sub_0805086C(void) {
    gUnk_080FC908[gChooseFileState.subState]();
}

// transitioning away from submenu
void sub_08050888(void) {
    if (!gFadeControl.active) {
        switch (gMapDataBottomSpecial.saveStatus[gMapDataBottomSpecial.unk7]) {
            case SAVE_EMPTY:
                ResetSaveFile(gMapDataBottomSpecial.unk7);
                gChooseFileState.subState = 2;
                break;
            case SAVE_VALID:
                gChooseFileState.subState = 2;
                break;
            default:
                ResetSaveFile(gMapDataBottomSpecial.unk7);
                CreateDialogBox(0, gMapDataBottomSpecial.unk7 + 1);
                gChooseFileState.timer = 30;
                gChooseFileState.subState = 1;
                break;
        }
    }
}

void sub_080508E4(void) {
    if (gChooseFileState.timer == 0) {
        if (gInput.newKeys & (A_BUTTON | START_BUTTON)) {
            gChooseFileState.subState = 2;
        }
    } else {
        gChooseFileState.timer--;
    }
}

void sub_08050910(void) {
    sub_08050384();
    if (++gMapDataBottomSpecial.unk7 > 2) {
        SetMenuType(2);
    } else {
        gChooseFileState.subState = 0;
    }
}

void sub_08050940(void) {
    int row_idx;
    u32 keys;
    int num_rows;
    FileSelectState mode;

    if (gMapDataBottomSpecial.isTransitioning) {
        return;
    }

    row_idx = gMapDataBottomSpecial.unk6;
    keys = gInput.newKeys;
    if ((gInput.heldKeys & L_BUTTON) && gMapDataBottomSpecial.saveStatus[row_idx] == SAVE_VALID) {
        keys &= ~(DPAD_UP | DPAD_DOWN);
    }

    num_rows = gSaveHeader->language > 1 ? NUM_SAVE_SLOTS + 1 : NUM_SAVE_SLOTS;
    mode = gUI.lastState;
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
            if (gMapDataBottomSpecial.saveStatus[row_idx] == SAVE_VALID)
                mode = STATE_OPTIONS;
            break;
        case A_BUTTON:
        case START_BUTTON:
            SetActiveSave(row_idx);
            if (row_idx == 3)
                mode = STATE_CHOOSE_LANG;
            else
                switch (gMapDataBottomSpecial.saveStatus[row_idx]) {
                    case SAVE_EMPTY:
                        mode = STATE_NEW;
                        break;
                    case SAVE_VALID:
                        mode = STATE_VIEW;
                        break;
                }
            break;
    }

    if (gUI.lastState != mode) {
        SetFileSelectState(mode);
        SoundReq(SFX_TEXTBOX_SELECT);
    }

    row_idx = (row_idx + num_rows) % num_rows;
    if (gMapDataBottomSpecial.unk6 != row_idx) {
        gMapDataBottomSpecial.unk6 = row_idx;
        sub_08050AFC(row_idx);
        SoundReq(SFX_TEXTBOX_CHOICE);
    }

    if (gMapDataBottomSpecial.saveStatus[gMapDataBottomSpecial.unk6] == SAVE_VALID) {
        ShowButtonR();
    }
}

void sub_08050A64(u32 idx) {
    if (gMapDataBottomSpecial.saveStatus[idx] != SAVE_VALID) {
        return;
    }

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x400;

    // Draw the save file's obtained elements.
    if (GetInventoryValue(ITEM_EARTH_ELEMENT)) {
        gOamCmd.x = 0xA2;
        gOamCmd.y = 0x36;
#ifdef EU
        DrawDirect(0x144, 0x24);
#else
        DrawDirect(0x145, 0x24);
#endif
    }
    if (GetInventoryValue(ITEM_FIRE_ELEMENT)) {
        gOamCmd.x = 0x96;
        gOamCmd.y = 0x3D;
#ifdef EU
        DrawDirect(0x144, 0x22);
#else
        DrawDirect(0x145, 0x22);
#endif
    }
    if (GetInventoryValue(ITEM_WATER_ELEMENT)) {
        gOamCmd.x = 0xAE;
        gOamCmd.y = 0x3D;
#ifdef EU
        DrawDirect(0x144, 0x23);
#else
        DrawDirect(0x145, 0x23);
#endif
    }
    if (GetInventoryValue(ITEM_WIND_ELEMENT)) {
        gOamCmd.x = 0xA2;
        gOamCmd.y = 0x44;
#ifdef EU
        DrawDirect(0x144, 0x21);
#else
        DrawDirect(0x145, 0x21);
#endif
    }
}

void sub_08050B3C(u16*);

void sub_08050AFC(u32 idx) {
    SetActiveSave(idx);
    MemClear(&gBG1Buffer, sizeof(gBG1Buffer));
    if (gMapDataBottomSpecial.saveStatus[idx] == SAVE_VALID) {
        sub_08050B3C(&gBG1Buffer[0x14E]);
    }
    gScreen.bg1.updated = 1;
}

typedef struct {
    u16* unk0;
    u32 unk4;
} unk_08050B3C;

extern const u16 gUnk_080FC914[];

const u16 gUnk_080FC914[] = { 0xf251, 0xf251, 0xf251, 0xf251, 0xf251, 0xf251, 0xf251, 0xf251, 0xf251, 0xf251,
                              0xf24d, 0xf24d, 0xf24d, 0xf24d, 0xf24d, 0xf24d, 0xf24d, 0xf24d, 0xf24d, 0xf24d };

// Handles drawing of hearts
void sub_08050B3C(u16* target) {
    s32 currentQuarterHearts;
    s32 maxQuarterHearts;
    s32 maxHeartsFirstRow;
    s32 currentFullHearts;
    s32 maxHeartsSecondRow;
    u32 currentFullHeartsFirstRow;
    s32 currentFullHeartsSecondRow;
    u16* temp_target;
    u32 currentPartialHeartValue;
    u32 maxHearts;

    currentQuarterHearts = gSave.stats.health / 2;
    if (currentQuarterHearts == 0) {
        currentQuarterHearts = 1;
    }

    maxQuarterHearts = gSave.stats.maxHealth / 2;
    if (maxQuarterHearts == 0) {
        return;
    }

    if (currentQuarterHearts > maxQuarterHearts) {
        currentQuarterHearts = maxQuarterHearts;
    }

    currentPartialHeartValue = currentQuarterHearts & 3;
    currentFullHearts = currentQuarterHearts / 4;
    currentFullHeartsFirstRow = currentFullHearts;
    if (currentFullHearts > 10) {
        currentFullHeartsFirstRow = 10;
    }

    currentFullHeartsSecondRow = currentFullHearts - 10;
    if (currentFullHeartsSecondRow < 0) {
        currentFullHeartsSecondRow = 0;
    }

    maxHearts = maxQuarterHearts / 4;
    maxHeartsFirstRow = maxHearts;
    if (maxHeartsFirstRow > 10) {
        maxHeartsFirstRow = 10;
    }
    maxHeartsSecondRow = maxHearts - 10;
    temp_target = target;
    temp_target[0] = 0xF24C;
    DmaCopy16(3, &gUnk_080FC914[10 - currentFullHeartsFirstRow], &temp_target[1], maxHeartsFirstRow * 2);
    if (maxHeartsSecondRow > 0) {
        temp_target += 0x20;
        temp_target[0] = 0xF24C;
        DmaCopy16(3, &gUnk_080FC914[10 - currentFullHeartsSecondRow], &temp_target[1], maxHeartsSecondRow * 2);
    }

    if (!currentPartialHeartValue) {
        return;
    }

    temp_target = target;
    if (currentFullHearts >= 10) {
        currentFullHearts = currentFullHearts - 10;
        temp_target += 0x20;
    }

    temp_target[currentFullHearts + 1] = currentPartialHeartValue - 0xDB3;
}

void sub_08050C54(void);
void sub_08050D68(void);

void (*const gUnk_080FC93C[])() = {
    sub_08050C54,
    sub_08050D68,
};

void HandleFileView(void) {
    gUnk_080FC93C[gMenu.menuType]();
    sub_08050A64(gMapDataBottomSpecial.unk6);
}

void sub_08050C54(void) {
    s32 column_idx;

    if (gMapDataBottomSpecial.isTransitioning)
        return;

    column_idx = gMenu.column_idx;
    switch (gInput.newKeys) {
        case A_BUTTON:
        case START_BUTTON:
            if (column_idx == 0) {
                SoundReq(SONG_VOL_FADE_OUT);
            }
            gMenu.transitionTimer = 15;
            SetMenuType(1);
            SoundReq(SFX_TEXTBOX_SELECT);
            break;
        case B_BUTTON:
            SoundReq(SFX_MENU_CANCEL);
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
        SoundReq(SFX_TEXTBOX_CHOICE);
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

void sub_08050DB8(void);
void sub_08050DE4(void);
void sub_08050E88(void);
void (*const gUnk_080FC944[])(void) = {
    sub_08050DB8,
    sub_08050DE4,
    sub_08050E88,
};

void HandleFileLanguageSelect(void) {
    gUnk_080FC944[gMenu.menuType]();
}

void sub_08050DB8(void) {
    MemClear(&gBG2Buffer, sizeof(gBG2Buffer));
    sub_080503A8(0xc);
    gMenu.field_0x4 = gSaveHeader->language;
    SetMenuType(1);
}

void sub_08050DE4(void) {
    s32 row_idx;

    if (gMapDataBottomSpecial.isTransitioning)
        return;

    row_idx = gSaveHeader->language;
    switch (gInput.newKeys) {
        case DPAD_UP:
            row_idx--;
            break;
        case DPAD_DOWN:
            row_idx++;
            break;
        case A_BUTTON:
        case START_BUTTON:
            SoundReq(SFX_TEXTBOX_SELECT);
            if (gMenu.field_0x4 != row_idx) {
                SetMenuType(2);
                CreateDialogBox(8, 0);
            } else {
                SetFileSelectState(STATE_NONE);
            }
            break;
        case B_BUTTON:
            row_idx = gMenu.field_0x4;
            gSaveHeader->language = gMenu.field_0x4;
            SoundReq(SFX_MENU_CANCEL);
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
    if (gSaveHeader->language != row_idx) {
        gSaveHeader->language = row_idx;
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
}

void sub_08050E88(void) {
    if (HandleSave(2))
        SetFileSelectState(0);
}

void sub_08050EB8(void);
void sub_08050EF4(void);
void sub_08050FFC(void);
void sub_0805103C(void);
void (*const gUnk_080FC950[])(void) = {
    sub_08050EB8,
    sub_08050EF4,
    sub_08050FFC,
    sub_0805103C,
};

void HandleFileOptions(void) {
    gUnk_080FC950[gMenu.menuType]();
}

void sub_08050EB8(void) {
    SaveFile* save;
    sub_080503A8(0xe);
    save = &gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6];
    gMapDataBottomSpecial.unk4 = save->msg_speed;
    gMapDataBottomSpecial.unk5 = save->brightness;
    gMenu.column_idx = 0;
    gMenu.transitionTimer = 255;
    SetMenuType(1);
}

void sub_08050EF4(void) {
    u8* p_option;
    u32 option;
    char column_idx;
    u8 mode;

    if (gMapDataBottomSpecial.isTransitioning == 0) {
        SaveFile* currentFile = &gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6];
        column_idx = gMenu.column_idx;

        if (column_idx == 0) {
            p_option = &currentFile->msg_speed;
        } else {
            p_option = &currentFile->brightness;
        }

        option = *p_option;
        mode = 0;
        switch (gInput.newKeys) {
            case DPAD_UP:
                column_idx = 0;
                break;
            case DPAD_DOWN:
                column_idx = 1;
                break;
            case DPAD_LEFT:
                if (option != 0) {
                    option--;
                }
                break;
            case DPAD_RIGHT:
                if (option < 2) {
                    option++;
                }
                break;

            case A_BUTTON:
            case START_BUTTON:
                if (gMapDataBottomSpecial.unk4 != currentFile->msg_speed ||
                    gMapDataBottomSpecial.unk5 != currentFile->brightness) {
                    mode = 2;
                    break;
                }
            case B_BUTTON:
                mode = 3;
                break;
        }

        if (mode != 0) {
            switch (mode) {
                case 2:
                    CreateDialogBox(8, 0);
                    SoundReq(SFX_TEXTBOX_SELECT);
                    break;
                case 3:
                    currentFile->msg_speed = gMapDataBottomSpecial.unk4;
                    currentFile->brightness = gMapDataBottomSpecial.unk5;
                    SoundReq(SFX_MENU_CANCEL);
                    break;
            }
            SetMenuType(mode);
            SetActiveSave(gMapDataBottomSpecial.unk6);
        } else if (gMenu.column_idx != column_idx) {
            gMenu.column_idx = column_idx;
            SoundReq(SFX_TEXTBOX_CHOICE);
        } else if (option != *p_option) {
            *p_option = option;
            LoadOptionsFromSave(gMapDataBottomSpecial.unk6);
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
    }
}

void sub_08050FFC(void) {
    switch (HandleSave(0)) {
        case SAVE_ERROR:
            gMenu.transitionTimer = 30;
            ResetSaveFile(gMapDataBottomSpecial.unk6);
            CreateDialogBox(9, 0);
        case SAVE_OK:
            SetMenuType(3);
            break;
    }
}

void sub_0805103C(void) {
    // this gets optimized as a ldrb
    switch (gMenu.transitionTimer % 256) {
        case 0:
            if (!(gInput.newKeys & (A_BUTTON | START_BUTTON)))
                return;
        default:
            gMenu.transitionTimer--;
            break;
        case 255:
            SetFileSelectState(STATE_NONE);
            break;
    }
}

void sub_08051090(void);
void sub_080610B8(void);
void sub_0805138C(void);
void sub_0805144C(void);
void (*const gUnk_080FC960[])(void) = {
    sub_08051090,
    sub_080610B8,
    sub_0805138C,
    sub_0805144C,
};

void HandleFileNew(void) {
    gUnk_080FC960[gMenu.menuType]();
}

void sub_08051090(void) {
    sub_080503A8(8);
    sub_08050790();
    sub_0805070C();
    sub_08051458();
    gScreen.bg1.yOffset = 0xff;
    gScreen.bg2.yOffset = 0xff;
    SetMenuType(1);
}

const u8 gUnk_080FC970[] = {
    1, 2, 3, 5, 8, 0, 0, 0, 1, 2, 5, 8, 0, 0, 0, 0,
};
const u8 gUnk_080FC980[] = {
    0, 0, 0, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 0, 0, 0,
};
const u8 gUnk_080FC9A0[] = {
    1, 3, 6, 8, 11, 0, 0, 0, 1, 4, 7, 11, 11, 0, 0, 0,
};

void sub_080610B8(void) {
    u8 uVar7;
    s32 uVar6;
    s32 tmp4;
    const u8* puVar3;
    const u8* puVar4;
    const u8* puVar5;
    s32 iVar4;
    u8 bVar2;
    u32 tmp1;
    u32 tmp3;
    u8 tmp2;
    u8 cVar1;
    s32 uVar8;
    s32 uVar5;

    if (gMapDataBottomSpecial.isTransitioning != 0) {
        return;
    }
    uVar7 = 0;
    switch (gInput.newKeys) {
        default:
            uVar6 = 0;
            tmp4 = 0;
            switch (gInput.menuScrollKeys) {
                case DPAD_UP:
                    tmp4 = -1;
                    break;
                case DPAD_DOWN:
                    tmp4 = 1;
                    break;
                case DPAD_LEFT:
                    uVar6 = -1;
                    break;
                case DPAD_RIGHT:
                    uVar6 = 1;
                    break;
            }
            gGenericMenu.unk10.a[1] = (gGenericMenu.unk10.a[1] + tmp4 + 6) % 6;
            if ((tmp4 | uVar6) != 0) {
                SoundReq(SFX_TEXTBOX_NEXT);
            }
            if (uVar6 != 0) {
                if (gGenericMenu.unk10.a[1] != 5) {
                    gGenericMenu.unk10.a[0] = (gGenericMenu.unk10.a[0] + uVar6 + 0xd) % 0xd;
                    puVar4 = gUnk_080FC980;
                    if (gSaveHeader->language != 0) {
                        puVar4 += 0x10;
                    }
                    gGenericMenu.unk10.a[2] = puVar4[gGenericMenu.unk10.a[0]];
                } else {
                    if (gSaveHeader->language == 0) {
                        iVar4 = 5;
                    } else {
                        iVar4 = 4;
                    }
                    gGenericMenu.unk10.a[2] = (gGenericMenu.unk10.a[2] + uVar6 + iVar4) % iVar4;
                    if (gSaveHeader->language != 0) {
                        puVar5 = gUnk_080FC9A0 + 8;
                    } else {
                        puVar5 = gUnk_080FC9A0;
                    }
                    gGenericMenu.unk10.a[0] = puVar5[gGenericMenu.unk10.a[2]];
                }
            }
            break;
        case B_BUTTON:
            if (gGenericMenu.unk10.a[3] != 0) {
                uVar7 = 5;
            } else {
                sub_08051358();
            }
            break;
        case START_BUTTON:
            if (gSaveHeader->language == 0) {
                iVar4 = 4;
            } else {
                iVar4 = 3;
            }
            if ((gGenericMenu.unk10.a[1] == 5) && (iVar4 == gGenericMenu.unk10.a[2])) {
                uVar7 = 8;
            } else {
                sub_08051358();
            }
            break;
        case A_BUTTON:
            if (gGenericMenu.unk10.a[1] == 5) {
                puVar3 = gUnk_080FC970;
                tmp1 = gGenericMenu.unk10.a[2];
                if (gSaveHeader->language != 0) {
                    tmp1 += 8;
                }
                uVar7 = puVar3[tmp1];

            } else {
                uVar7 = 6;
            }
            break;
        case L_BUTTON:
            if (gSaveHeader->language == 0) {
                uVar7 = 4;
            } else {
                uVar7 = 1;
            }
            break;
        case R_BUTTON:
            if (gSaveHeader->language == 0) {
                uVar7 = 7;
            } else {
                uVar7 = 2;
            }
            break;
    }
    tmp3 = gMenu.column_idx;
    switch (uVar7) {
        case 1:
            tmp3 = 0;
            break;
        case 2:
            tmp3 = 1;
            break;
        case 3:
            tmp3 = 2;
            break;
        case 4:
            tmp3++;
            break;
        case 5:
            if (gGenericMenu.unk10.a[3] != 0) {
                gGenericMenu.unk10.a[3]--;
                gSave.name[gGenericMenu.unk10.a[3]] = 0;
                gSave.name[gGenericMenu.unk10.a[3] + 1] = 0;
                sub_08051574(0x6c);
            }
            break;
        case 7:
            sub_08051480(0);
            break;
        case 6:
            tmp2 = ((gBG3Buffer[gGenericMenu.unk10.a[0] * 2 + 0xc3 + gGenericMenu.unk10.a[1] * 0x40]) >> 1);
            sub_08051480(tmp2);
            break;
        case 8:
            uVar8 = 5;
            do {
                cVar1 = gSave.name[uVar8];
                if ((cVar1 != 0) && (cVar1 != 0x20)) {
                    break;
                }
                gSave.name[uVar8] = 0;
                uVar8--;
            } while (0 <= uVar8);
            if (gSave.name[0] != 0) {
                uVar7 = 2;
            } else {
                uVar7 = 3;
            }
            sub_08051574(0x6a);
            SetMenuType(uVar7);
    }
    if (gSaveHeader->language == 0) {
        iVar4 = 3;
    } else {
        iVar4 = 2;
    }
    tmp3 = (s32)(tmp3 + iVar4) % (iVar4);
    if (gMenu.column_idx != tmp3) {
        gMenu.column_idx = tmp3;
        sub_08051458();
        SoundReq(SFX_TEXTBOX_SWAP);
    }
}

void sub_08051358(void) {
    gGenericMenu.unk10.a[2] = gSaveHeader->language == 0 ? 4 : 3;

    if (gGenericMenu.unk10.a[0] != 0x0b || gGenericMenu.unk10.a[1] != 0x5) {
        gGenericMenu.unk10.a[1] = 0x5;
        gGenericMenu.unk10.a[0] = 0xb;
        SoundReq(SFX_TEXTBOX_NEXT);
    }
}

void sub_080513A8(void);
void sub_080513C0(void);
void sub_0805141C(void);
void (*const gUnk_080FC9B0[])(void) = {
    sub_080513A8,
    sub_080513C0,
    sub_0805141C,
};

void sub_0805138C(void) {
    gUnk_080FC9B0[gMenu.overlayType]();
}

void sub_080513A8(void) {
    CreateDialogBox(5, 0);
    gMenu.overlayType = 1;
}

void sub_080513C0(void) {
    switch (HandleSave(0)) {
        case 1:
            gMapDataBottomSpecial.saveStatus[gMapDataBottomSpecial.unk6] = 1;
            SetMenuType(3);
            break;
        case 0:
            break;
        case -1:
            ResetSaveFile(gMapDataBottomSpecial.unk6);
            CreateDialogBox(6, 0);
            gMenu.transitionTimer = 30;
            gMenu.overlayType = 2;
            break;
    }
}

void sub_0805141C(void) {
    switch (gMenu.transitionTimer) {
        case 0:
            if (gInput.newKeys & (A_BUTTON | START_BUTTON)) {
                SetMenuType(3);
            }
            break;
        default:
            gMenu.transitionTimer--;
            break;
    }
}

void sub_0805144C(void) {
    SetFileSelectState(STATE_NONE);
}

void sub_08051458(void) {
    sub_080503A8(gMenu.column_idx + 9);
    MemCopy(&gBG3Buffer[0x80], &gBG1Buffer[0x80], 0x400);
}

u32 sub_080514BC(u32);

void sub_08051480(u32 c) {
    CharResult result;
    u32 idx;

    result = sub_080514BC(c);
    idx = gGenericMenu.unk10.a[3];

    if (result == RESULT_INVALID) {
        return;
    }

    if (result != RESULT_ASCII) {
        c = result;
        idx--;
    }

    if (idx > FILENAME_LENGTH - 1) {
        idx = FILENAME_LENGTH - 1;
    }

    gGenericMenu.unk10.a[3] = idx + 1;
    gSave.name[idx] = c;
    sub_08051574(SFX_6B);
}

u32 sub_080514BC(u32 a1) {
    u32 c;
    u32 idx;

    if (gSaveHeader->language != 0)
        return 1;

    switch (a1) {
        case 0x0:
        case 0xe:
        case 0xf:
            break;
        default:
            return 1;
    }

    idx = gGenericMenu.unk10.a[3];
    if (idx == 0)
        return 0;

    c = gSave.name[idx - 1];
    if (c - 0xa4 < 0x29) {
        switch (a1) {
            case 0x0:
                if (c < 0xc3) {
                    return c + 0x33;
                } else {
                    return c + 10;
                }
            case 0xE:
                return c;
            case 0xF:
                if (c < 0xc3)
                    return 0;
                else
                    return c + 10;
            default:
                return c;
        }
    }

    if (c - 0xcd < 10) {
        switch (a1) {
            case 0xf:
                return c;
            case 0x0:
                return c + 0x29;
            case 0xe:
                return c - 10;
        }
    }

    if (c - 0xd7 < 0x29) {
        switch (a1) {
            default:
            case 0x0:
            case 0xe:
                return c - 0x33;
            case 0xf:
                if (c > 0xf5)
                    return c - 0x29;
        }
    }

    return 0;
}

void sub_08051574(u32 sfx) {
    SoundReq(sfx);
    MemCopy(&gSave, &gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6],
            sizeof(gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6]));
    sub_0805070C();
}

void sub_080515C8(void);
void sub_080515D4(void);
void sub_080516E0(void);
void (*const gUnk_080FC9BC[])(void) = {
    sub_080515C8,
    sub_080515D4,
    sub_080516E0,
};

void HandleFileDelete(void) {
    gUnk_080FC9BC[gMenu.menuType]();
    sub_08050A64(gMapDataBottomSpecial.unk6);
}

void sub_080515C8(void) {
    SetMenuType(1);
}

void sub_080515D4(void) {
    u32 column_idx;

    if (gMapDataBottomSpecial.isTransitioning)
        return;

    gMenu.transitionTimer = 4;
    column_idx = gMenu.column_idx;
    switch (gInput.newKeys) {
        case B_BUTTON:
            gMenu.column_idx = 0; // ??
            column_idx = 0;
        case A_BUTTON:
        case START_BUTTON:
            if (column_idx == 1) {
                CreateDialogBox(4, 0);
                SetMenuType(2);
                SoundReq(SFX_TEXTBOX_SELECT);
            } else {
                SetFileSelectState(0);
                SoundReq(SFX_MENU_CANCEL);
            }
            break;
        case DPAD_LEFT:
            column_idx = 0;
            break;
        case DPAD_RIGHT:
            column_idx = 1;
            break;
    }

    if (gMenu.column_idx != column_idx) {
        gMenu.column_idx = column_idx;
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
}

void sub_080516E0(void) {
    if (HandleSave(1)) {
        ResetSaveFile(gMapDataBottomSpecial.unk6);
        sub_08050AFC(gMapDataBottomSpecial.unk6);
        gMenu.transitionTimer = 2;
        SetFileSelectState(0);
    }
}

void sub_08051738(void);
void sub_080517EC(void);
void sub_08051874(void);
void sub_080518E4(void);
void (*const gUnk_080FC9C8[])(void) = {
    sub_08051738,
    sub_080517EC,
    sub_08051874,
    sub_080518E4,
};

void HandleFileCopy(void) {
    gUnk_080FC9C8[gMenu.menuType]();
    sub_08050A64(gMapDataBottomSpecial.unk6);
}

void sub_08051738(void) {
    s32 temp;
    u32 i;
    s32 uVar3;
    s32 val;
    u32 temp2;

    gMapDataBottomSpecial.unk7 = 4;
    uVar3 = 0;
    for (i = 0; i < 3; i++) {
        if (gMapDataBottomSpecial.saveStatus[i] == 1) {
            temp = gMapDataBottomSpecial.unk6;
            val = 4;
            if ((temp ^ i) == 0) {
                val = 0;
            }
        } else {
            uVar3++;
            val = uVar3;
        }
        gGenericMenu.unk10.a[i] = val;
    }
    if (uVar3 == 0) {
        gMenu.transitionTimer = 60;
        CreateDialogBox(1, 0);
        SetMenuType(3);
    } else {
        SetMenuType(1);
    }
    uVar3++;
    gGenericMenu.unk16 = uVar3;
    gGenericMenu.unk10.a[3] = 4;
    gGenericMenu.unk14 = uVar3;
}

s32 sub_080517B4(s32 a1) {
    u32 i = gMapDataBottomSpecial.unk7;
    if (a1 != 0) {
        for (i = i + a1; i < 5; i += a1) {
            if (gGenericMenu.unk10.a[i] != 0 && gGenericMenu.unk10.a[i] != 4)
                return i;
        }

        i = gMapDataBottomSpecial.unk7;
    }
    return i;
}

void sub_080517EC(void) {
    u32 temp;
    s32 delta;

    if (gMapDataBottomSpecial.isTransitioning)
        return;

    delta = 0;
    switch (gInput.newKeys) {
        case DPAD_UP:
            delta = -1;
            break;
        case DPAD_DOWN:
            delta = 1;
            break;
        case A_BUTTON:
        case START_BUTTON:
            if (gMapDataBottomSpecial.unk7 < 3) {
                CreateDialogBox(2, 0);
                SetMenuType(2);
                SoundReq(SFX_TEXTBOX_SELECT);
                break;
            }
            // fallthrough
        case B_BUTTON:
            gMapDataBottomSpecial.unk7 = 4;
            SoundReq(SFX_MENU_CANCEL);
            SetFileSelectState(0);
            break;
    }
    temp = sub_080517B4(delta);
    if (temp != gMapDataBottomSpecial.unk7) {
        gMapDataBottomSpecial.unk7 = temp;
        SoundReq(SFX_TEXTBOX_CHOICE);
    }
}

void sub_08051874(void) {
    s32 temp;
    gSaveHeader->saveFileId = gMapDataBottomSpecial.unk7;
    temp = HandleSave(0);
    gMapDataBottomSpecial.saveStatus[gMapDataBottomSpecial.unk7] = temp;
    switch (temp) {
        case 1:
            MemCopy(&gSave, &gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk7],
                    sizeof(gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk7]));
            SetFileSelectState(0);
            break;
        case -1:
            ResetSaveFile(gMapDataBottomSpecial.unk7);
            CreateDialogBox(3, 0);
            gMenu.transitionTimer = 30;
            SetMenuType(3);
            break;
    }
}

void sub_080518E4(void) {
    switch (gMenu.transitionTimer) {
        case 0:
            if (gInput.newKeys & (A_BUTTON | START_BUTTON)) {
                SetFileSelectState(0);
            }
            break;
        default:
            gMenu.transitionTimer--;
            break;
    }
}

void HandleFileStart(void) {
    if (gMenu.menuType == 0) {
        gMenu.menuType = 1;
        gSaveHeader->msg_speed = gSave.msg_speed;
        gSaveHeader->brightness = gSave.brightness;
        gMain.state = GAMETASK_MAIN;
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
    }
}

void ResetSaveFile(u32 save_idx) {
    SaveFile* save;

    gMapDataBottomSpecial.saveStatus[save_idx] = 0;
    save = &gMapDataBottomSpecial.saves[save_idx];
    MemClear(save, sizeof(SaveFile));
    save->msg_speed = 1;
    save->brightness = 1;
    save->stats.health = 24;
    save->stats.maxHealth = 24;
}
