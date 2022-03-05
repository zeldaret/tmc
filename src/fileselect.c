/**
 * @file fileselect.c
 * @ingroup Tasks
 *
 * @brief File select task
 */

#include "fileselect.h"
#include "main.h"
#include "common.h"
#include "screen.h"
#include "menu.h"
#include "message.h"
#include "object.h"
#include "functions.h"
#include "subtask.h"
#include "item.h"
#include "game.h"

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

static void sub_08050624(u32);
static void sub_0805066C(void);
static void HideButtonR(void);
static void ShowButtonR(void);
void sub_08051458(void);

void CreateDialogBox(u32 arg0, u32 arg1) {
    u32 sfx;
    struct_080FC844 var0;

    sub_08050384();
    MemCopy(&gUnk_080FC844, &var0, sizeof(gUnk_080FC844));
    sub_08056FEC(arg1, gUnk_020227E8);
    var0.unk10 |= gUnk_080FC85C[arg0][0] << 0xC;
    sub_0805F46C(gUnk_080FC85C[arg0][1], &var0);
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
    gUsedPalettes = 0xFFFFFFFF;
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
    sub_0801C1D4();
    DrawOAMCmd();
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
    ClearTilemaps();
    ResetPalettes();
    ResetPaletteTable(0);
    MemClear(&gUnk_0200AF00, sizeof(gUnk_0200AF00));
    MemClear(&gMapDataBottomSpecial, sizeof(gMapDataBottomSpecial));
    gMapDataBottomSpecial.unk3 = 7;
    gMapDataBottomSpecial.unk6 = gSaveHeader->language > LANGUAGE_EN ? 3 : 0;
    MemClear(&gUI, sizeof(gUI));
    gUI.lastState = 8;
    SetFileSelectState(STATE_NONE);
    InitDMA();
    sub_08050624(0);
    sub_08050624(1);
    sub_08050624(2);
    sub_08056208();
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
    SetFade(4, 8);
}

static void HandleFileScreenActive(void) {
}

static void HandleFileScreenExit(void) {
    if (!gFadeControl.active) {
        SetTask(TASK_GAME);
    }
}

static void sub_08050624(u32 idx) {
    SaveFile* saveFile = &gMapDataBottomSpecial.saves[idx];
    int status = ReadSaveFile(idx, saveFile);
    switch (status) {
        case SAVE_DELETED:
            SetFileStatusDeleted(idx);
            // fallthrough
        case SAVE_EMPTY:
            sub_0805194C(idx);
            break;
    }
    gMapDataBottomSpecial.saveStatus[idx] = status;
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
    struct_02036540* var0;
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
    struct_02036540* var0;
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
    gUnk_0200AF00.rButtonX = 0x140;
    gUnk_0200AF00.rButtonY = 0x24;
}

static void ShowButtonR(void) {
    gUnk_0200AF00.rButtonX = 0xD0;
    gUnk_0200AF00.rButtonY = 0x24;
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

void sub_0805086C(void) {
    gUnk_080FC908[gChooseFileState.subState]();
}

// transitioning away from submenu
void sub_08050888(void) {
    if (!gFadeControl.active) {
        switch (gMapDataBottomSpecial.saveStatus[gMapDataBottomSpecial.unk7]) {
            case SAVE_EMPTY:
                sub_0805194C(gMapDataBottomSpecial.unk7);
                gChooseFileState.subState = 2;
                break;
            case SAVE_VALID:
                gChooseFileState.subState = 2;
                break;
            default:
                sub_0805194C(gMapDataBottomSpecial.unk7);
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
    var0 = gSave.stats.health / 2;
    if (var0 == 0) {
        var0 = 1;
    }

    var1 = gSave.stats.maxHealth / 2;
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
            gMenu.transitionTimer = 0xf;
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
    gMenu.transitionTimer = 0xff;
    SetMenuType(1);
}

NONMATCH("asm/non_matching/fileScreen/sub_08050EF4.inc", void sub_08050EF4(void)) {
    u8* p_option;
    u32 option;
    char column_idx;
    int mode;

    if (gMapDataBottomSpecial.isTransitioning)
        return;

    p_option = &gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6].brightness;
    if (gMenu.column_idx == 0) {
        p_option = &gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6].msg_speed;
    }

    mode = 0;
    option = *p_option;
    column_idx = gMenu.column_idx;
    switch (gInput.newKeys) {
        case DPAD_RIGHT:
            if (*p_option < 2) {
                option = *p_option + 1;
            }
            break;
        case DPAD_LEFT:
            if (*p_option != 0) {
                option = *p_option - 1;
            }
            break;
        case DPAD_UP:
            column_idx = 0;
            break;
        case DPAD_DOWN:
            column_idx = 1;
            break;
        case A_BUTTON:
        case START_BUTTON:
            mode = 2;
            if (*(u16*)&gMapDataBottomSpecial.unk4 !=
                *(u16*)&gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6].msg_speed)
                mode = 3;
            break;
        case B_BUTTON:
            mode = 2;
            break;
    }

    switch (mode) {
        case 3:
            gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6].msg_speed = gMapDataBottomSpecial.unk4;
            gMapDataBottomSpecial.saves[gMapDataBottomSpecial.unk6].brightness = gMapDataBottomSpecial.unk5;
            SoundReq(SFX_MENU_CANCEL);
            SetMenuType(mode);
            SetActiveSave(gMapDataBottomSpecial.unk6);
            break;
        case 2:
            CreateDialogBox(8, 0);
            SoundReq(SFX_TEXTBOX_SELECT);
        default:
        case 1:
            SetMenuType(mode);
            SetActiveSave(gMapDataBottomSpecial.unk6);
            break;
        case 0:
            if (gMenu.column_idx != column_idx) {
                gMenu.column_idx = column_idx;
                SoundReq(SFX_TEXTBOX_CHOICE);
            } else if (option != *p_option) {
                *p_option = option;
                LoadOptionsFromSave(gMapDataBottomSpecial.unk6);
                SoundReq(SFX_TEXTBOX_CHOICE);
            }
            break;
    }
}
END_NONMATCH

void sub_08050FFC(void) {
    switch (HandleSave(0)) {
        case SAVE_ERROR:
            gMenu.transitionTimer = 0x1e;
            sub_0805194C(gMapDataBottomSpecial.unk6);
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

NONMATCH("asm/non_matching/fileScreen/sub_080610B8.inc", void sub_080610B8(void)) {
}
END_NONMATCH

void sub_08051358(void) {
    gGenericMenu.unk10.a[2] = gSaveHeader->language == 0 ? 4 : 3;

    if (gGenericMenu.unk10.a[0] != 0x0b || gGenericMenu.unk10.a[1] != 0x5) {
        gGenericMenu.unk10.a[1] = 0x5;
        gGenericMenu.unk10.a[0] = 0xb;
        SoundReq(SFX_TEXTBOX_NEXT);
    }
}

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
            sub_0805194C(gMapDataBottomSpecial.unk6);
            CreateDialogBox(6, 0);
            gMenu.transitionTimer = 0x1e;
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
    MemCopy(gBG3Buffer + 0x80, &gUnk_02022030, 0x400);
}

u32 sub_080514BC(u32);
void sub_08051574(u32);

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

void HandleFileDelete(void) {
    gUnk_080FC9BC[gMenu.menuType]();
    sub_08050A64(gMapDataBottomSpecial.unk6);
}

void sub_080515c8(void) {
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
        sub_0805194C(gMapDataBottomSpecial.unk6);
        sub_08050AFC(gMapDataBottomSpecial.unk6);
        gMenu.transitionTimer = 2;
        SetFileSelectState(0);
    }
}

void HandleFileCopy(void) {
    gUnk_080FC9C8[gMenu.menuType]();
    sub_08050A64(gMapDataBottomSpecial.unk6);
}

// regalloc
NONMATCH("asm/non_matching/fileScreen/sub_08051738.inc", void sub_08051738(void)) {
    s32 temp;
    u32 i;
    s32 uVar3;

    gMapDataBottomSpecial.unk7 = 4;
    uVar3 = 0;
    for (i = 0; i < 3; i++) {
        if (gMapDataBottomSpecial.saveStatus[i] == 1) {
            temp = gMapDataBottomSpecial.unk6 ^ i;
            uVar3 = !!temp & 4;
        } else {
            uVar3++;
        }
        (&gGenericMenu.selectMtx)[i] = uVar3;
    }
    if (uVar3 == 0) {
        gMenu.transitionTimer = 0x3c;
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
END_NONMATCH

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
            sub_0805194C(gMapDataBottomSpecial.unk7);
            CreateDialogBox(3, 0);
            gMenu.transitionTimer = 0x1e;
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
        SetFade(5, 8);
    }
}

void sub_0805194C(u32 save_idx) {
    SaveFile* save;

    gMapDataBottomSpecial.saveStatus[save_idx] = 0;
    save = &gMapDataBottomSpecial.saves[save_idx];
    MemClear(save, sizeof(*save));
    save->msg_speed = 1;
    save->brightness = 1;
    save->stats.health = 24;
    save->stats.maxHealth = 24;
}
