/**
 * @file worldEvent7.c
 * @ingroup WorldEvents
 *
 * @brief World Event 7
 */
#include "fade.h"
#include "menu.h"
#include "object.h"
#include "sound.h"
#include "subtask.h"

void WorldEvent_7_0(void);
void WorldEvent_7_1(void);
void WorldEvent_7_2(void);
void WorldEvent_7_3(void);
void (*const WorldEvent_7_Functions[])(void) = { WorldEvent_7_0, WorldEvent_7_1, WorldEvent_7_2, WorldEvent_7_3 };
const u32 unused[] = { 0xff, 0, 0, 0 };

void WorldEvent_7(void) {
    WorldEvent_7_Functions[gMenu.overlayType]();
}

void WorldEvent_7_0(void) {
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    sub_0801876C(gMenu.field_0x4, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_7_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        gMenu.overlayType++;
    }
}

void WorldEvent_7_2(void) {
    u8* ptr;
    Entity* entity;
    if (gFadeControl.active == 0) {
        ptr = gMenu.field_0xc;
        sub_080553E0((u32)gMenu.field_0x4);
        if ((ptr[1] & 0x80) != 0) {
            sub_08054974(gMenu.field_0x4, 0);
        } else {
            entity = FindEntity(OBJECT, TREE_THORNS, 6, 0, ptr[1] & 0x80);
            if (entity != NULL) {
                DeleteEntity(entity->child);
                DeleteEntity(entity);
            }
        }
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
        SoundReq(SFX_SECRET_BIG);
        gMenu.overlayType++;
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_7_3(void) {
    if ((gFadeControl.active == 0) && --gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
