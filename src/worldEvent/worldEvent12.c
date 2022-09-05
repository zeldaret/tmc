/**
 * @file worldEvent12.c
 * @ingroup WorldEvents
 *
 * @brief World Event 12
 */
#include "fade.h"
#include "kinstone.h"
#include "menu.h"
#include "npc.h"
#include "object.h"
#include "room.h"
#include "script.h"
#include "subtask.h"

extern Script script_GormanFirstAppearance;
const EntityData gUnk_080FF2C0[] = {
    // TODO what are these kinds?
    { 0x10 + OBJECT, 15, HOUSE_DOOR_EXT, 0, 2, 0x2b8, 0x36b, 0 },
    { NPC, 79, GORMAN, 0, 0, 0x2f8, 0x308, (u32)&script_GormanFirstAppearance },
    { 0x10 + NPC, 15, NPC_UNK_4F, 0, 0, 0x2f8, 0x360, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_12_0(void);
void WorldEvent_12_1(void);
void (*const WorldEvent_12_Functions[])(void) = {
    WorldEvent_12_0,
    WorldEvent_12_1,
};

void WorldEvent_12(void) {
    WorldEvent_12_Functions[gMenu.overlayType]();
}

void WorldEvent_12_0(void) {
    LoadRoomEntityList((EntityData*)gUnk_080FF2C0);
    if (gSave.global_progress != 9) {
        sub_08018C58(0xdb4);
    }
    sub_08055B70(gMenu.field_0x4, 1, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_12_1(void) {
}
