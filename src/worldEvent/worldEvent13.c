/**
 * @file worldEvent13.c
 * @ingroup WorldEvents
 *
 * @brief World Event 13
 */
#include "fade.h"
#include "menu.h"
#include "npc.h"
#include "room.h"
#include "script.h"
#include "subtask.h"

extern Script script_MutohKinstone;
const EntityData gUnk_080FF154[] = {
    { NPC, 79, MUTOH, 0, 0, 0x78, 0x70, (u32)&script_MutohKinstone },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_13_0(void);
void WorldEvent_13_1(void);
void (*const WorldEvent_13_Functions[])(void) = {
    WorldEvent_13_0,
    WorldEvent_13_1,
};
void WorldEvent_13(void) {
    WorldEvent_13_Functions[gMenu.overlayType]();
}

void WorldEvent_13_0(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList(gUnk_080FF154);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_13_1(void) {
}
