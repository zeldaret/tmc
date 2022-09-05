/**
 * @file worldEvent8.c
 * @ingroup WorldEvents
 *
 * @brief World Event 8
 */
#include "fade.h"
#include "flags.h"
#include "menu.h"
#include "sound.h"
#include "subtask.h"

void WorldEvent_8_0(void);
void WorldEvent_8_1(void);
void WorldEvent_8_2(void);
void WorldEvent_8_3(void);
void (*const WorldEvent_8_Functions[])(void) = {
    WorldEvent_8_0,
    WorldEvent_8_1,
    WorldEvent_8_2,
    WorldEvent_8_3,
};

void WorldEvent_8(void) {
    WorldEvent_8_Functions[gMenu.overlayType]();
}

void WorldEvent_8_0(void) {
    sub_0804B0E8(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_8_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void WorldEvent_8_2(void) {
    if (gFadeControl.active == 0) {
        sub_0801876C(gMenu.field_0x4, 1);
        sub_080553E0(gMenu.field_0x4);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_8_3(void) {
    if ((gFadeControl.active == 0) && --gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
