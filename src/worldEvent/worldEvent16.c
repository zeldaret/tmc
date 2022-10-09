/**
 * @file worldEvent16.c
 * @ingroup WorldEvents
 *
 * @brief World Event 16
 */
#include "fade.h"
#include "menu.h"
#include "npc.h"
#include "room.h"
#include "script.h"
#include "subtask.h"

extern Script script_GoronMerchantArriving;
const EntityData gUnk_080FF128[] = {
    { NPC, 79, GORON_MERCHANT, 0, 0, 0x410, 0xf8, (u32)&script_GoronMerchantArriving },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_16_0(void);
void WorldEvent_16_1(void);
void WorldEvent_16_2(void);
void (*const WorldEvent_16_Functions[])(void) = {
    WorldEvent_16_0,
    WorldEvent_16_1,
    WorldEvent_16_2,
};

void WorldEvent_16(void) {
    WorldEvent_16_Functions[gMenu.overlayType]();
}

void WorldEvent_16_0(void) {
    LoadRoomEntityList(gUnk_080FF128);
    sub_08055B70(gMenu.field_0x4, 2, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_16_1(void) {
}

void WorldEvent_16_2(void) {
}
