/**
 * @file worldEvent10.c
 * @ingroup WorldEvents
 *
 * @brief World Event 10
 */
#include "fade.h"
#include "menu.h"
#include "object.h"
#include "subtask.h"

void WorldEvent_Beanstalk_0(void);
void WorldEvent_Beanstalk_1(void);
void WorldEvent_Beanstalk_2(void);
void WorldEvent_Beanstalk_3(void);
void (*const WorldEvent_Beanstalk_Functions[])(void) = {
    WorldEvent_Beanstalk_0,
    WorldEvent_Beanstalk_1,
    WorldEvent_Beanstalk_2,
    WorldEvent_Beanstalk_3,
};
void WorldEvent_Beanstalk(void) {
    WorldEvent_Beanstalk_Functions[gMenu.overlayType]();
}

void WorldEvent_Beanstalk_0(void) {
    u8* ptr = gMenu.field_0xc;
    SetLocalFlagByBank(gLocalFlagBanks[gMenu.field_0xc[0x11]], (u32) * (u16*)(gMenu.field_0xc + 0x12));
    sub_0804B0E8(ptr[2], ptr[3]);
    LoadGfxGroup(0x11);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_Beanstalk_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        gMenu.overlayType++;
    }
}

void WorldEvent_Beanstalk_2(void) {
    u8* ptr = gMenu.field_0xc;
    Entity* obj = CreateObject(BEANSTALK, 0, 0);
    if (obj != NULL) {
        obj->x.HALF.HI = gRoomControls.origin_x + *(s16*)(ptr + 8);
        obj->y.HALF.HI = gRoomControls.origin_y + *(s16*)(ptr + 10);
    }
    gMenu.overlayType++;
    gMenu.transitionTimer = 390;
}

void WorldEvent_Beanstalk_3(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
