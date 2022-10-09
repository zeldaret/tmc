/**
 * @file worldEvent19.c
 * @ingroup WorldEvents
 *
 * @brief World Event 19
 */
#include "fade.h"
#include "functions.h"
#include "menu.h"
#include "npc.h"
#include "room.h"
#include "script.h"
#include "subtask.h"

extern Script script_BigGoronKinstone1;
extern Script script_BigGoronKinstone2;
extern Script script_BigGoronKinstone3;
const EntityData gUnk_080FEED4[] = {
    { NPC, 79, BIG_GORON, 0, 0, 0x140, 0xf8, (u32)&script_BigGoronKinstone1 },
    { NPC, 79, BIG_GORON, 5, 0, 0xd0, 0xc8, (u32)&script_BigGoronKinstone2 },
    { NPC, 79, BIG_GORON, 10, 0, 0x1b0, 0x108, (u32)&script_BigGoronKinstone3 },
    { NPC, 15, BIG_GORON, 1, 0, 0x108, 0x88, 0 },
    { NPC, 15, BIG_GORON, 2, 0, 0x108, 0x88, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_19_0(void);
void WorldEvent_19_1(void);
void (*const WorldEvent_19_Functions[])(void) = {
    WorldEvent_19_0,
    WorldEvent_19_1,
};

void WorldEvent_19(void) {
    WorldEvent_19_Functions[gMenu.overlayType]();
}

void WorldEvent_19_0(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList(gUnk_080FEED4);
    LoadStaticBackground(2);
    sub_0806D0B0(NULL);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_19_1(void) {
}
