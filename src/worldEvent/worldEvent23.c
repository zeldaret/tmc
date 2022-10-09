/**
 * @file worldEvent23.c
 * @ingroup WorldEvents
 *
 * @brief World Event 23
 */
#include "fade.h"
#include "menu.h"
#include "npc.h"
#include "subtask.h"

const EntityData gUnk_080FF298[] = {
    { NPC, 15, FOREST_MINISH, 0, 513, 0x78, 0x58, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void WorldEvent_23_0(void);
void WorldEvent_23_1(void);
void (*const WorldEvent_23_Functions[])(void) = {
    WorldEvent_23_0,
    WorldEvent_23_1,
};

void WorldEvent_23(void) {
    WorldEvent_23_Functions[gMenu.overlayType]();
}

void WorldEvent_23_0(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    sub_0804B0B0((u32)gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList((EntityData*)gUnk_080FF298);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_23_1(void) {
}
