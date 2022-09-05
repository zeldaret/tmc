/**
 * @file worldEvent14.c
 * @ingroup WorldEvents
 *
 * @brief World Event 14
 */
#include "fade.h"
#include "kinstone.h"
#include "menu.h"
#include "npc.h"
#include "object.h"
#include "room.h"
#include "script.h"
#include "subtask.h"

extern Script script_GhostBrotherKinstone;
const EntityData gUnk_080FF17C[] = {
    { NPC, 79, GHOST_BROTHERS, 1, 0, 0x388, 0x338, (u32)&script_GhostBrotherKinstone },
    // TODO what are these kinds?
    { 0x10 + OBJECT, 15, HOUSE_DOOR_EXT, 0, 2, 0x348, 0x303, 0 },
    { 0x10 + OBJECT, 15, HOUSE_DOOR_EXT, 0, 2, 0x3b8, 0x363, 0 },
    { 0x10 + NPC, 15, NPC_UNK_4F, 0, 0, 0x2f8, 0x360, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_14_0(void);
void WorldEvent_14_1(void);
void (*const WorldEvent_14_Functions[])(void) = {
    WorldEvent_14_0,
    WorldEvent_14_1,
};

void WorldEvent_14(void) {
    WorldEvent_14_Functions[gMenu.overlayType]();
}

void WorldEvent_14_0(void) {
    LoadRoomEntityList(gUnk_080FF17C);
    if (gSave.global_progress != 9) {
        sub_08018C58(0xdb4);
    }
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_14_1(void) {
}
