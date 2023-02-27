/**
 * @file subtaskWorldEvent.c
 *
 * @brief World Event Subtask
 */
#include "area.h"
#include "asm.h"
#include "common.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "kinstone.h"
#include "main.h"
#include "menu.h"
#include "message.h"
#include "room.h"
#include "screen.h"
#include "subtask.h"

void Subtask_WorldEvent_Update(void);

extern void (*const gUnk_080FE2A0[])(void);
void Subtask_WorldEvent(void) {
#if !(defined(DEMO_USA) || defined(DEMO_JP))
    gUnk_080FE2A0[gMenu.menuType]();
#endif
}

void Subtask_WorldEvent_Init(void) {
    const WorldEvent* ptr = &gWorldEvents[gUI.field_0x3];
    gMenu.field_0x0 = ptr->type;
    gMenu.field_0x3 = ptr->entity_idx;
    gMenu.field_0x4 = gUI.field_0x3;
    gMenu.field_0xc = (u8*)ptr;
    gMenu.menuType++;
    gMenu.overlayType = 0;
    gMenu.transitionTimer = 300;
    DispReset(0);
    sub_08054974(gUI.field_0x3, 1);
    sub_0806F364();
    ClearRoomFlag(0xff);
    Subtask_WorldEvent_Update();
}

extern void (*const gWorldEventFunctions[])(void);

void Subtask_WorldEvent_Update(void) {
    gWorldEventFunctions[gMenu.field_0x0]();
    FlushSprites();
    UpdateEntities();
    DrawEntities();
    CopyOAM();
    UpdateScroll();
    UpdateBgAnimations();
    UpdateScrollVram();
}

void Subtask_WorldEvent_End(void) {
    MessageInitialize();
    sub_0806F38C();
    if (gKinstoneWorldEvents[gFuseInfo.kinstoneId].mapMarkerIcon != 0) {
        // Show the map hint.
        MenuFadeIn(SUBTASK_LOCALMAPHINT, gUI.field_0x3);
    } else {
        gUI.nextToLoad = 3; // Subtask_FadeOut
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
    }
}

void sub_08054968(void) {
    gMenu.menuType = 2;
}

// Controls showing the world event cutscene?
void sub_08054974(u32 worldEventId, bool32 param_2) {
    const WorldEvent* ptr = &gWorldEvents[worldEventId];
    SetCurrentRoomPropertyList(ptr->area, ptr->room);
    gRoomControls.area = ptr->area;
    gRoomControls.room = ptr->room;
    LoadGfxGroups();
    gArea.localFlagOffset = GetFlagBankOffset(gRoomControls.area);
    if (param_2) {
        LoadAuxiliaryRoom(ptr->area, ptr->room);
    } else {
        sub_08052FF4(ptr->area, ptr->room);
        InitializeCamera();
        gUpdateVisibleTiles = 1;
    }
    gScreen.lcd.displayControl &= 0x1fff;
    gRoomControls.scroll_x = gRoomControls.origin_x + ptr->offsetX;
    gRoomControls.scroll_y = gRoomControls.origin_y + ptr->offsetY;
    if (ptr->area == AREA_HYRULE_TOWN) {
        TryLoadPrologueHyruleTown();
    }
    sub_08018710(gUI.field_0x3);
}

void sub_08054A14(s32 worldEventId) {
    const WorldEvent* ptr = &gWorldEvents[worldEventId];
    if (ptr->bank < 0xe) {
        SetLocalFlagByBank(gLocalFlagBanks[ptr->bank], ptr->flag);
    }
}
