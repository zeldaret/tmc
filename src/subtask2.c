#include "global.h"
#include "menu.h"
#include "game.h"
#include "subtask.h"
#include "save.h"
#include "screen.h"
#include "common.h"
#include "fileselect.h"
#include "flags.h"
#include "functions.h"
#include "main.h"
#include "message.h"

extern u8 gUnk_08128D38[];
extern u8 gUnk_08128D43[];

void sub_080A5CFC(u32, void*, u32);
void sub_080A6FB4(u32, u32);

extern void DrawDungeonMap(u32 floor, struct_02019EE0* data, u32 size);
extern void LoadDungeonMap(void);

void DrawDungeonFeatures(u32, void*, u32);

extern void (*const gUnk_08128D58[])(void);

extern KeyButtonLayout gUnk_08128D60;

extern void (*const gUnk_08128DB0[])(void);
void sub_080A617C(void);
void sub_080A7040(u32);

extern u8 gUnk_08128DB8[];
extern KeyButtonLayout gUnk_08128DBC;

extern void (*const gUnk_08128DCC[])(void);
void sub_080A6378(void);

extern void (*const gUnk_08128F24[])(void);
void sub_080A6E70(void);
void sub_080A6498(void);

void sub_080A4DB8(u32);
void sub_080A6290(void);
u32 sub_080A6D74(u32);

extern const ScreenTransitionData gUnk_08128024[];
void sub_080A71F4(ScreenTransitionData*);

extern u8 gUnk_02018EB0[];

extern void DeleteAllEntities(void);
extern void sub_0805E974(void);

extern void (*const gUnk_0812901C[])(void);

void sub_080A74F4(void);

extern void DrawUI(void);
extern void UpdateCarriedObject(void);

extern void (*const gSubtasks[])(void);

ASM_FUNC("asm/non_matching/subtask2/sub_080A5594.inc", void sub_080A5594())

ASM_FUNC("asm/non_matching/subtask2/sub_080A56A0.inc", void sub_080A56A0())

ASM_FUNC("asm/non_matching/subtask2/sub_080A57F4.inc", void sub_080A57F4())

void sub_080A5990(void) {
    extern void (*const gUnk_08128D14[])(void);
    gUnk_08128D14[gMenu.menuType]();
}

void sub_080A59AC(void) {
    gMenu.field_0x3 = 0;
    SetPopupState(0, 0);
    SetMenuType(1);
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A59C8.inc", void sub_080A59C8())

void sub_080A5A54(void) {
    switch (HandleSave(0)) {
        case SAVE_ERROR:
            CreateDialogBox(9, 0);
            gMenu.transitionTimer = 0x3c;
            // fallthrough
        case SAVE_OK:
            SetMenuType(3);
            break;
        case SAVE_BUSY:
            break;
    }
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A5A90.inc", void sub_080A5A90())

ASM_FUNC("asm/non_matching/subtask2/sub_080A5AD8.inc", void sub_080A5AD8())

ASM_FUNC("asm/non_matching/subtask2/sub_080A5AF4.inc", void sub_080A5AF4())

ASM_FUNC("asm/non_matching/subtask2/sub_080A5B34.inc", void sub_080A5B34())

ASM_FUNC("asm/non_matching/subtask2/sub_080A5BB8.inc", void sub_080A5BB8())

ASM_FUNC("asm/non_matching/subtask2/sub_080A5BF0.inc", void sub_080A5BF0())

void sub_080A5C44(u32 param_1, u32 param_2, u32 param_3) {
    s8* ptr;
    gMenu.field_0xc = gUnk_08128D38;
    sub_080A5CFC(gMenu.field_0x3, &gMenu, param_3);
    LoadGfxGroup(0x81);
    sub_080A6FB4(gArea.dungeon_idx, 1);
    SetMenuType(1);
    ptr = &gUnk_08128D43[(u32)gArea.dungeon_idx * 2];
    gScreen.bg1.xOffset += ptr[0];
    gScreen.bg1.yOffset += ptr[0];
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A5C9C.inc", void sub_080A5C9C())

void sub_080A5CFC(u32 menuType, void* param_2, u32 param_3) {
    DrawDungeonFeatures(menuType, param_2, param_3);
    LoadDungeonMap();
    DrawDungeonMap(menuType, &gMapDataBottomSpecial, 0x400);
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A5D1C.inc", void sub_080A5D1C())

bool32 sub_080A5F24(void) {
    bool32 result = TRUE;
    if ((gArea.dungeon_idx == 6) && CheckLocalFlagByBank(0x8c0, 0x7b)) {
        result = 0;
    }
    return result;
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A5F48.inc", void sub_080A5F48())

void sub_080A6008(void) {
    gUnk_08128D58[gMenu.menuType]();
}

void sub_080A6024(void) {
    sub_080A70AC((KeyButtonLayout*)&gUnk_08128D60);
    sub_0801E738(0);
    sub_080A4398();
    SetMenuType(1);
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A6044.inc", void sub_080A6044())

void sub_080A60E0(void) {
    gUnk_08128DB0[gMenu.menuType]();
    sub_080A617C();
    sub_080A7040(gMenu.field_0x3);
}

void sub_080A6108(void) {
    gMenu.field_0xc = (u8*)gUnk_08128DB8;
    sub_080A70AC((KeyButtonLayout*)&gUnk_08128DBC);
    SetMenuType(1);
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A612C.inc", void sub_080A612C())

ASM_FUNC("asm/non_matching/subtask2/sub_080A617C.inc", void sub_080A617C())

void sub_080A6270(void) {
    gUnk_08128DCC[gMenu.menuType]();
    sub_080A6378();
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A6290.inc", void sub_080A6290())

ASM_FUNC("asm/non_matching/subtask2/sub_080A62E0.inc", void sub_080A62E0())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6378.inc", void sub_080A6378())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6438.inc", void sub_080A6438())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6498.inc", void sub_080A6498())

ASM_FUNC("asm/non_matching/subtask2/Subtask_MapHint.inc", void Subtask_MapHint())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6534.inc", void sub_080A6534())

ASM_FUNC("asm/non_matching/subtask2/sub_080A65AC.inc", void sub_080A65AC())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6608.inc", void sub_080A6608())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6650.inc", void sub_080A6650())

ASM_FUNC("asm/non_matching/subtask2/sub_080A667C.inc", void sub_080A667C())

ASM_FUNC("asm/non_matching/subtask2/sub_080A66D0.inc", void sub_080A66D0())

ASM_FUNC("asm/non_matching/subtask2/sub_080A67C4.inc", void sub_080A67C4())

ASM_FUNC("asm/non_matching/subtask2/sub_080A68D4.inc", void sub_080A68D4())

ASM_FUNC("asm/non_matching/subtask2/sub_080A698C.inc", void sub_080A698C())

ASM_FUNC("asm/non_matching/subtask2/sub_080A69E0.inc", void sub_080A69E0())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6A80.inc", void sub_080A6A80())

ASM_FUNC("asm/non_matching/subtask2/Subtask_LocalMapHint.inc", void Subtask_LocalMapHint())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6B04.inc", void sub_080A6B04())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6C1C.inc", void sub_080A6C1C())

void Subtask_FastTravel(void) {
    FlushSprites();
    gUnk_08128F24[gMenu.menuType]();
    if (gMenu.field_0x0 != 0) {
        sub_080A6E70();
    }
    sub_080A6498();
    CopyOAM();
}

void sub_080A6CA8(void) {
    sub_080A4D34();
    sub_080A4DB8(0xd);
    sub_080A6290();
    gMenu.field_0x3 = sub_080A6D74(0);
    SetMenuType(1);
    SetFade(4, 8);
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A6CD8.inc", void sub_080A6CD8())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6D74.inc", u32 sub_080A6D74(u32 a))

#ifdef EU
ASM_FUNC("asm/non_matching/subtask2/sub_080A6DD0.inc", u32 sub_080A6DD0(void))
#else
void sub_080A6DD0(void) {
    u32 tmp;
    switch (sub_08056338()) {
        case 0:
            gMenu.field_0x0 = 2;
            tmp = 3;
            break;
        case 1:
            tmp = 1;
            break;
        default:
            return;
    }
    SetMenuType(tmp);
}
#endif

void sub_080A6DF8(void) {
    if (gMenu.field_0x0 == 2) {
        SetMenuType(4);
        SetFade(5, 8);
    } else {
        ResetPlayerAnimationAndAction();
        sub_080042D0(&gPlayerEntity, (u32)gPlayerEntity.animIndex, gPlayerEntity.spriteIndex);
        Subtask_Exit();
        gUnk_02034490.unk0 = 0;
        SoundReq(SFX_MENU_CANCEL);
    }
}

void sub_080A6E44(void) {
    if (gFadeControl.active == 0) {
        sub_080A71F4((ScreenTransitionData*)&gUnk_08128024[gMenu.field_0x3]);
    }
}

ASM_FUNC("asm/non_matching/subtask2/sub_080A6E70.inc", void sub_080A6E70())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6EE0.inc", void sub_080A6EE0())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6F40.inc", void sub_080A6F40())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6F6C.inc", void sub_080A6F6C())

ASM_FUNC("asm/non_matching/subtask2/sub_080A6FB4.inc", void sub_080A6FB4(u32 a, u32 b))

ASM_FUNC("asm/non_matching/subtask2/sub_080A7040.inc", void sub_080A7040(u32 a))

ASM_FUNC("asm/non_matching/subtask2/sub_080A70AC.inc", void sub_080A70AC(const KeyButtonLayout* layout))

void SetMenuType(u32 menuType) {
    gMenu.menuType = menuType;
    gMenu.overlayType = 0;
    gMenu.storyPanelIndex = 0;
}

void ResetUI(void) {
    MemClear(&gUI, 0x3b4);
}

void MenuFadeIn(u32 param_1, u32 param_2) {
    if (gUI.nextToLoad == 0) {
        MemClear(&gUI, 0x3b4);
        gUI.lastState = param_1;
        gUI.field_0x3 = param_2;
        gUI.pauseFadeIn = gMain.substate;
    } else {
        gUI.state = param_1;
        gUI.field_0x5 = param_2;
        gUI.nextToLoad = 1;
    }
    gUI.field_0x6 = 0;
    gUI.isLoading = 0xffff;
    gUI.fadeInTime = 0x20;
    gMain.substate = GAMEMAIN_SUBTASK;
    SetFade(5, 0x20);
    gUnk_02018EB0[0] = 0;
    gUnk_02018EB0[1] = 0;
}

void sub_080A71A4(u32 param_1, u32 param_2, u32 param_3) {
    if (gUI.nextToLoad == 0) {
        gUI.fillerC[2] = param_3;
    } else {
        gUI.fillerC[3] = param_3;
    }
    MenuFadeIn(param_1, param_2);
}

void sub_080A71C4(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    MenuFadeIn(param_1, param_2);
    gUI.isLoading = param_3;
    gUI.fadeInTime = param_4;
}

void Subtask_Exit(void) {
    gUI.nextToLoad = 3;
    SetFade(5, 0x20);
}

void sub_080A71F4(ScreenTransitionData* exitTransition) {
    if (exitTransition != NULL) {
        DoExitTransition(exitTransition);
    }
    DeleteAllEntities();
    sub_0805E974();
    DeleteAllEntities();
    gMain.state = GAMETASK_INIT;
    gMain.substate = GAMEMAIN_INITROOM;
}

void GameMain_Subtask(void) {
    if (gUI.nextToLoad < 3) {
        if (gUI.state != 0) {
            gUI.field_0x3 = gUI.field_0x5;
            gUI.lastState = gUI.state;
            gUI.state = 0;
        }
    }
    gUnk_0812901C[gUI.nextToLoad]();
}

ASM_FUNC("asm/non_matching/subtask2/Subtask_FadeIn.inc", void Subtask_FadeIn())

void Subtask_Init(void) {
    if (gFadeControl.active == 0) {
        DeleteAllEntities();
        MemClear(&gMenu, 0x30);
        MemClear(&gRoomControls, 0x38);
        MemClear(gOAMControls.unk, 0x100);
        MemClear(&gActiveScriptInfo, 0xc);
        gActiveScriptInfo.unk_08 = 8;
        DispReset(1);
        MessageInitialize();
        ResetPalettes();
        ResetPaletteTable(0);
        gGFXSlots.unk0 = 1;
        gUI.nextToLoad = 2;
        gRoomTransition.field_0x2c[3] = 1;
    }
}

ASM_FUNC("asm/non_matching/subtask2/Subtask_FadeOut.inc", void Subtask_FadeOut())

void Subtask_Die(void) {
    sub_080A74F4();
    if (gFadeControl.active == 0) {
        gMain.substate = gUI.pauseFadeIn;
        gUI.nextToLoad = gFadeControl.active;
        gUI.lastState = gFadeControl.active;
        ResetSystemPriority();
    }
}

void sub_080A74F4(void) {
    SetInitializationPriority();
    gMain.pad = 0;
    FlushSprites();
    UpdateEntities();
    UpdateManagers();
    DrawUI();
    DrawUIElements();
    UpdateCarriedObject();
    DrawEntities();
    CopyOAM();
}

void Subtask_Update(void) {
    gSubtasks[gUI.lastState]();
}
