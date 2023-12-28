/**
 * @file worldEvent22.c
 * @ingroup WorldEvents
 *
 * @brief World Event 22
 */
#include "functions.h"
#include "menu.h"
#include "npc.h"
#include "room.h"
#include "screen.h"

extern void sub_0804B0B0(u32, u32);
extern void sub_08055B70(u32, u32, u32, u32);

extern u8 gUpdateVisibleTiles;
extern Script script_StampKinstone;
const EntityData gUnk_080FF400[] = {
    { NPC, 79, STAMP, 0, 0, 0x48, 0x38, (u32)&script_StampKinstone },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_22_0(void);
void WorldEvent_22_1(void);
void (*const WorldEvent_22_Functions[])(void) = {
    WorldEvent_22_0,
    WorldEvent_22_1,
};

void WorldEvent_22(void) {
    WorldEvent_22_Functions[gMenu.overlayType]();
}

void WorldEvent_22_0(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList(gUnk_080FF400);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_22_1(void) {
}
