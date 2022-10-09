/**
 * @file worldEvent4.c
 * @ingroup WorldEvents
 *
 * @brief World Event 4
 */
#include "fade.h"
#include "flags.h"
#include "functions.h"
#include "kinstone.h"
#include "menu.h"
#include "screen.h"
#include "sound.h"
#include "subtask.h"

void sub_08055B70(u32, u32, u32, u32);

void WorldEvent_4_0(void);
void WorldEvent_4_1(void);
void WorldEvent_4_2(void);
void WorldEvent_4_3(void);
void (*const WorldEvent_4_Functions[])(void) = {
    WorldEvent_4_0,
    WorldEvent_4_1,
    WorldEvent_4_2,
    WorldEvent_4_3,
};

void WorldEvent_4(void) {
    WorldEvent_4_Functions[gMenu.overlayType]();
}

void WorldEvent_4_0(void) {
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    sub_0801876C(gMenu.field_0x4, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_4_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void WorldEvent_4_2(void) {
    if (gFadeControl.active == 0) {
        sub_08054974(gMenu.field_0x4, 0);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_4_3(void) {
    if ((gFadeControl.active == 0) && (--gMenu.transitionTimer == 0)) {
        gMenu.menuType++;
    }
}
