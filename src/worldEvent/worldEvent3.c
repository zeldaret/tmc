/**
 * @file worldEvent3.c
 * @ingroup WorldEvents
 *
 * @brief World Event 3
 */
#include "fade.h"
#include "flags.h"
#include "functions.h"
#include "menu.h"
#include "subtask.h"

void WorldEvent_3_0(void);
void WorldEvent_3_1(void);
void WorldEvent_3_2(void);
void (*const WorldEvent_3_Functions[])(void) = {
    WorldEvent_3_0,
    WorldEvent_3_1,
    WorldEvent_3_2,
};

void WorldEvent_3(void) {
    WorldEvent_3_Functions[gMenu.overlayType]();
}

void WorldEvent_3_0(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_3_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        gMenu.overlayType++;
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_3_2(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
