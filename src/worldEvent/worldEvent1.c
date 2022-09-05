/**
 * @file worldEvent1.c
 * @ingroup WorldEvents
 *
 * @brief World Event 1
 */
#include "asm.h"
#include "fade.h"
#include "flags.h"
#include "menu.h"
#include "physics.h"
#include "room.h"
#include "script.h"
#include "sound.h"
#include "subtask.h"

void WorldEvent_1_0(void);
void WorldEvent_1_1(void);
void WorldEvent_1_2(void);
void (*const WorldEvent_1_Functions[])(void) = {
    WorldEvent_1_0,
    WorldEvent_1_1,
    WorldEvent_1_2,
};

void WorldEvent_1(void) {
    WorldEvent_1_Functions[gMenu.overlayType]();
}

void WorldEvent_1_0(void) {
    u8* ptr = gMenu.field_0xc;
    sub_0804B0B0(ptr[2], ptr[3]);
    sub_0804B0E8(ptr[2], ptr[3]);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_1_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        gMenu.overlayType++;
        gMenu.transitionTimer = 180;
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        sub_080553E0(gMenu.field_0x4);
        sub_0801876C(gMenu.field_0x4, 1);
    }
}

void WorldEvent_1_2(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
