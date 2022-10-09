/**
 * @file worldEvent11.c
 * @ingroup WorldEvents
 *
 * @brief World Event 11
 */
#include "fade.h"
#include "flags.h"
#include "menu.h"
#include "subtask.h"

void WorldEvent_11_0(void);
void WorldEvent_11_1(void);
void WorldEvent_11_2(void);
void (*const WorldEvent_11_Functions[])(void) = {
    WorldEvent_11_0,
    WorldEvent_11_1,
    WorldEvent_11_2,
};

void WorldEvent_11(void) {
    WorldEvent_11_Functions[gMenu.overlayType]();
}

void WorldEvent_11_0(void) {
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_11_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        gMenu.overlayType++;
        gMenu.transitionTimer = 180;
    }
}

void WorldEvent_11_2(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
