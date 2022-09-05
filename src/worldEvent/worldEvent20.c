/**
 * @file worldEvent20.c
 * @ingroup WorldEvents
 *
 * @brief World Event 20
 */
#include "fade.h"
#include "menu.h"
#include "npc.h"
#include "room.h"
#include "script.h"
#include "subtask.h"

extern Script script_SyrupKinstone;
const EntityData gUnk_080FF308[] = {
    { NPC, 79, SYRUP, 0, 0, 0x78, 0x38, (u32)&script_SyrupKinstone },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_20_0(void);
void WorldEvent_20_1(void);
void (*const WorldEvent_20_Functions[])(void) = {
    WorldEvent_20_0,
    WorldEvent_20_1,
};

void WorldEvent_20(void) {
    WorldEvent_20_Functions[gMenu.overlayType]();
}

void WorldEvent_20_0(void) {
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList((EntityData*)gUnk_080FF308);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_20_1(void) {
}
