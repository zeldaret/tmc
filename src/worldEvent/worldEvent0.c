/**
 * @file worldEvent0.c
 * @ingroup WorldEvents
 *
 * @brief World Event 0
 */
#include "fade.h"
#include "menu.h"
#include "message.h"

void WorldEvent_0_0(void);
void WorldEvent_0_1(void);
void WorldEvent_0_2(void);
void (*const WorldEvent_0_Functions[])(void) = {
    WorldEvent_0_0,
    WorldEvent_0_1,
    WorldEvent_0_2,
};
void WorldEvent_0(void) {
    WorldEvent_0_Functions[gMenu.overlayType]();
}

void WorldEvent_0_0(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_0_1(void) {
    if (gFadeControl.active == 0) {
        MessageFromTarget(TEXT_INDEX(TEXT_EMPTY, 0x01));
        gMenu.overlayType++;
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_0_2(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
