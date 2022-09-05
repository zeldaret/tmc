/**
 * @file worldEvent21.c
 * @ingroup WorldEvents
 *
 * @brief World Event 21
 */
#include "fade.h"
#include "menu.h"
#include "npc.h"
#include "room.h"
#include "subtask.h"

extern Script script_CarlovKinstone;
const EntityData gUnk_080FF264[] = {
    { NPC, 79, CARLOV, 1, 0, 0x78, 0x48, (u32)&script_CarlovKinstone },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_21_0(void);
void WorldEvent_21_1(void);
void (*const WorldEvent_21_Functions[])(void) = {
    WorldEvent_21_0,
    WorldEvent_21_1,
};

void WorldEvent_21(void) {
    WorldEvent_21_Functions[gMenu.overlayType]();
}

void WorldEvent_21_0(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList((EntityData*)gUnk_080FF264);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_21_1(void) {
}
