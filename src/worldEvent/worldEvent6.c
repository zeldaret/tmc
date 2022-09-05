/**
 * @file worldEvent6.c
 * @ingroup WorldEvents
 *
 * @brief World Event 6
 */
#include "fade.h"
#include "menu.h"
#include "object.h"
#include "sound.h"
#include "subtask.h"

void WorldEvent_6_0(void);
void WorldEvent_6_1(void);
void WorldEvent_6_2(void);
void WorldEvent_6_3(void);
void (*const WorldEvent_6_Functions[])(void) = {
    WorldEvent_6_0,
    WorldEvent_6_1,
    WorldEvent_6_2,
    WorldEvent_6_3,
};

void WorldEvent_6(void) {
    WorldEvent_6_Functions[gMenu.overlayType]();
}

void WorldEvent_6_0(void) {
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    sub_0801876C(gMenu.field_0x4, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_6_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void WorldEvent_6_2(void) {
    if (gFadeControl.active == 0) {
        sub_08054974(gMenu.field_0x4, 0);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_6_3(void) {
    if ((gFadeControl.active == 0) && (--gMenu.transitionTimer == 0)) {
        gMenu.menuType++;
    }
}

void sub_080553E0(u32 param_1) {
    u8* ptr = gMenu.field_0xc;
    Entity* effect = CreateObject(SPECIAL_FX, FX_BIG_EXPLOSION2, 0);
    if (effect != NULL) {
        effect->x.HALF.HI = *(s16*)(ptr + 8) + gRoomControls.origin_x;
        effect->y.HALF.HI = *(s16*)(ptr + 10) + gRoomControls.origin_y;
    }
}
