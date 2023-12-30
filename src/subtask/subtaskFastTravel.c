/**
 * @file subtaskFastTravel.c
 * @ingroup Subtasks
 *
 * @brief Fast Travel Subtask
 */
#include "subtask.h"
#include "common.h"
#include "menu.h"
#include "functions.h"
#include "message.h"
#include "sound.h"
#include "save.h"

extern void (*const Subtask_FastTravel_Functions[])(void);
void sub_080A6E70(void);
u32 sub_080A6D74(u32);
void sub_080A6EE0(u32 param_1);

extern const ScreenTransitionData gUnk_08128024[];

void Subtask_FastTravel(void) {
    FlushSprites();
    Subtask_FastTravel_Functions[gMenu.menuType]();
    if (gMenu.field_0x0 != 0) {
        sub_080A6E70();
    }
    sub_080A6498();
    CopyOAM();
}

void Subtask_FastTravel_0(void) {
    sub_080A4D34();
    sub_080A4DB8(0xd);
    sub_080A6290();
    gMenu.field_0x3 = sub_080A6D74(0);
    SetMenuType(1);
    SetFade(FADE_INSTANT, 8);
}

void Subtask_FastTravel_1(void) {
    u32 uVar1;
    u32 uVar2;

    if (gFadeControl.active) {
        return;
    }

    gMenu.field_0x0 = 1;
    uVar2 = 0;

    switch (gInput.newKeys) {
        case DPAD_LEFT:
        case DPAD_UP:
            uVar2 = -1;
            break;
        case DPAD_RIGHT:
        case DPAD_DOWN:
            uVar2 = 1;
            break;
        case A_BUTTON:
        case START_BUTTON:
            gMenu.field_0x0 = 2;
            SetMenuType(2);
            MessageFromTarget(TEXT_INDEX(TEXT_WINDCRESTS, 0x04));
            break;
        case B_BUTTON:
            gMenu.field_0x0 = 3;
            SetMenuType(3);
            break;
    }

    if (uVar2) {
        uVar1 = sub_080A6D74(uVar2);
        if (uVar1 != gMenu.field_0x3) {
            gMenu.field_0x3 = uVar1;
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
    }
}

u32 sub_080A6D74(u32 param_1) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;

    uVar3 = gSave.windcrests >> 0x18;
    uVar2 = gMenu.field_0x3;
    if (param_1 == 0) {
        uVar2 = 0;
        if ((uVar3 & 1) == 0) {
            while (++uVar2 < 8 && ((1 << uVar2) & uVar3) == 0) {}
        }
    } else if (uVar3 != 0) {
        do {
            uVar2 = (uVar2 + param_1 + 8) & 7;
        } while ((1 << uVar2 & uVar3) == 0);
    }
    return uVar2 & 7;
}

void Subtask_FastTravel_2(void) {
    u32 tmp;
    switch (sub_08056338()) {
#ifdef EU
        case 0:
            gMenu.field_0x0 = 2;
            break;
        case 1:
            gMenu.field_0x0 = 3;
            tmp = 1;
            break;
        default:
            return;
    }

    if (tmp) {
        SetMenuType(3);
    }
#else
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
#endif
}

void Subtask_FastTravel_3(void) {
    if (gMenu.field_0x0 == 2) {
        SetMenuType(4);
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
    } else {
        ResetPlayerAnimationAndAction();
        sub_080042D0(&gPlayerEntity.base, (u32)gPlayerEntity.base.animIndex, gPlayerEntity.base.spriteIndex);
        Subtask_Exit();
        gPauseMenuOptions.disabled = 0;
        SoundReq(SFX_MENU_CANCEL);
    }
}

void Subtask_FastTravel_4(void) {
    if (gFadeControl.active == 0) {
        sub_080A71F4(&gUnk_08128024[gMenu.field_0x3]);
    }
}

void sub_080A6E70(void) {
    u32 frameIndex;
    u32 i;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x400;
    gGenericMenu.unk2c++;
    sub_080A6EE0(gMenu.field_0x3);
    if ((gGenericMenu.unk2c & 0x10) != 0) {
        frameIndex = 0x5d;
    } else {
        frameIndex = 0x5e;
    }

    DrawDirect(DRAW_DIRECT_SPRITE_INDEX, frameIndex);
    for (i = 0; i < 8; i++) {
        if (IS_BIT_SET(gSave.windcrests, i + 24)) {
            sub_080A6EE0(i);
            DrawDirect(DRAW_DIRECT_SPRITE_INDEX, 0x5c);
        }
    }
}

void sub_080A6EE0(u32 param_1) {
    u32 x;
    u32 y;
    RoomHeader* roomHeader;
    const ScreenTransitionData* ptr = &gUnk_08128024[param_1];

    x = (u16)ptr->playerXPos;
    y = (u16)ptr->playerYPos;
    roomHeader = &gAreaRoomHeaders[ptr->area][ptr->room];
    x += roomHeader->map_x;
    y += roomHeader->map_y;
    gOamCmd.x = (s32)(x * DISPLAY_HEIGHT) / 0xf90 + 0x28;
    gOamCmd.y = (s32)(y * DISPLAY_HEIGHT) / 0xf90 + 0xc;
}
