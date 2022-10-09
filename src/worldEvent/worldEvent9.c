/**
 * @file worldEvent9.c
 * @ingroup WorldEvents
 *
 * @brief World Event 9
 */
#include "fade.h"
#include "flags.h"
#include "menu.h"
#include "object.h"
#include "room.h"
#include "sound.h"
#include "subtask.h"

const EntityData gUnk_080FF33C[] = {
    { 0x10 + OBJECT, 15, HOUSE_DOOR_EXT, 0, 2, 0x98, 0x173, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

void WorldEvent_9_0(void);
void WorldEvent_9_1(void);
void WorldEvent_9_2(void);
void WorldEvent_9_3(void);
void (*const WorldEvent_9_Functions[])(void) = {
    WorldEvent_9_0,
    WorldEvent_9_1,
    WorldEvent_9_2,
    WorldEvent_9_3,
};

void WorldEvent_9(void) {
    WorldEvent_9_Functions[gMenu.overlayType]();
}

void WorldEvent_9_0(void) {
    if (gMenu.field_0xc[1] != 0) {
        LoadRoomEntityList((EntityData*)gUnk_080FF33C);
    }
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_9_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void WorldEvent_9_2(void) {
    if (gFadeControl.active == 0) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_9_3(void) {
    if ((gFadeControl.active == 0) && --gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
