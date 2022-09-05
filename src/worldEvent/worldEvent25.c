/**
 * @file worldEvent25.c
 * @ingroup WorldEvents
 *
 * @brief World Event 25
 */
#include "fade.h"
#include "menu.h"
#include "object.h"
#include "script.h"
#include "subtask.h"

void WorldEvent_25_0(void);
void WorldEvent_25_1(void);
void WorldEvent_25_2(void);
void (*const WorldEvent_25_Functions[])(void) = {
    WorldEvent_25_0,
    WorldEvent_25_1,
    WorldEvent_25_2,
};

extern Script script_KinstoneSparkKinstoneSpark;
extern Script script_KinstoneSparkKinstoneSparkFromBottom;
extern Script script_KinstoneSparkKinstoneSparkGoronMerchang;
extern Script script_KinstoneSparkKinstoneSparkGoron;
const EntityData gUnk_080FF378[] = {
    { OBJECT, 79, KINSTONE_SPARK, 0, 0, 0x0, 0x0, (u32)&script_KinstoneSparkKinstoneSpark },
    { OBJECT, 79, KINSTONE_SPARK, 0, 0, 0x0, 0x0, (u32)&script_KinstoneSparkKinstoneSparkFromBottom },
    { OBJECT, 79, KINSTONE_SPARK, 0, 0, 0x0, 0x0, (u32)&script_KinstoneSparkKinstoneSparkGoronMerchang },
    { OBJECT, 79, KINSTONE_SPARK, 0, 0, 0x0, 0x0, (u32)&script_KinstoneSparkKinstoneSparkGoron },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

extern const EntityData gUnk_080FED18[];

void WorldEvent_25(void) {
    WorldEvent_25_Functions[gMenu.overlayType]();
}

void WorldEvent_25_0(void) {
    Entity* entity;
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    entity = LoadRoomEntity((EntityData*)&gUnk_080FED18[gMenu.field_0xc[1]]);
    if (entity != NULL) {
        entity->type2 = 1;
    }
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_25_1(void) {
    if (gFadeControl.active == 0) {
        gMenu.transitionTimer = 120;
    }
}

void WorldEvent_25_2(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08055B70(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    u8* ptr = gMenu.field_0xc;
    Entity* entity = LoadRoomEntity((EntityData*)&gUnk_080FF378[param_2]);
    if (entity != NULL) {
        entity->x.HALF.HI = *(s16*)(ptr + 8) + param_3 + gRoomControls.origin_x;
        entity->y.HALF.HI = *(s16*)(ptr + 10) + param_4 + gRoomControls.origin_y;
    }
}
