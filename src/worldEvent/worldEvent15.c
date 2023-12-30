/**
 * @file worldEvent15.c
 * @ingroup WorldEvents
 *
 * @brief World Event 15
 */
#include "fade.h"
#include "flags.h"
#include "menu.h"
#include "room.h"
#include "subtask.h"

extern void sub_08054A14(u32);
extern const EntityData gUnk_080FEE48[];

void WorldEvent_15_0(void);
void WorldEvent_15_1(void);
void WorldEvent_15_2(void);
void (*const WorldEvent_15_Functions[])(void) = {
    WorldEvent_15_0,
    WorldEvent_15_1,
    WorldEvent_15_2,
};

void WorldEvent_15(void) {
    WorldEvent_15_Functions[gMenu.overlayType]();
}

void WorldEvent_15_0(void) {
    Entity* entity;

    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    entity = LoadRoomEntity((EntityData*)gUnk_080FEE48);
    if (entity != NULL) {
        entity->type2 = 2;
        ((GenericEntity*)entity)->field_0x86.HWORD = 0x80ff;
    }
    sub_08054A14(gMenu.field_0x4);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_15_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        gMenu.overlayType++;
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_15_2(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
