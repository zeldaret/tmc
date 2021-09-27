#include "global.h"
#include "entity.h"
#include "structures.h"
#include "functions.h"
#include "room.h"

extern void sub_08080BC4(void);

extern u32 gUnk_0200B650;
extern u32 gUnk_02025EB0;
extern u8 gUnk_02000070;

void sub_080808D8(void) {
    gScreenTransition.transitionType = 0;
}

void sub_080808E4(void) {

    if (sub_08052638(gScreenTransition.areaID)) {
        gScreenTransition.transitionType = 0;
    } else {
        gScreenTransition.transitionType = 5;
    }
}

void sub_08080904(void) {
    gScreenTransition.transitionType = 1;
}

void sub_08080910(void) {
    gScreenTransition.transitionType = 1;
}

void sub_0808091C(ScreenTransitionData* param_1, u32 param_2) {
    DoExitTransition(param_1);
    gScreenTransition.transitionType = param_2;
}

void sub_08080930(void)

{
    gRoomControls.unk3 = 5;
    gRoomControls.unk4 = 0;
    gRoomControls.unk2 = 2;
    gRoomControls.unk_10 = 0;
    sub_0805E5A8();
}

u32* GetLayerByIndex(u32 param_1) {

    if (param_1 == 2) {
        return &gUnk_0200B650;
    } else {
        return &gUnk_02025EB0;
    }
}

void sub_08080964(u32 time, u32 magnitude) {
    gRoomControls.screenShakeTime = time;
    gRoomControls.screenShakeMagnitude = magnitude & 7;
}

void sub_08080974(u32 arg0, u32 arg1) {
    u32 var0, var1;
    RoomControls* roomControls = &gRoomControls;

    var0 = roomControls->roomOriginX;
    if (arg0 <= var0 + 120) {
        roomControls->roomScrollX = var0;
    } else {
        var0 += roomControls->width;
        var1 = var0 - 120;
        if (arg0 < var1) {
            var1 = arg0;
        }
        roomControls->roomScrollX = var1 - 120;
    }

    var0 = roomControls->roomOriginY;
    if (arg1 <= var0 + 80) {
        roomControls->roomScrollY = var0;
    } else {
        var0 += roomControls->height;
        var1 = var0 - 80;
        if (arg1 < var1) {
            var1 = arg1;
        }
        roomControls->roomScrollY = var1 - 80;
    }

    sub_080809D4();
    gUnk_02000070 = 1;
}

void sub_080809D4(void) {
    register Entity* target asm("r4");
    int x, y;
    int var1, var0;
    RoomControls* roomControls = &gRoomControls;
    roomControls->unk6 &= 0xFB;

    target = roomControls->cameraTarget;
    x = target->x.HALF.HI;
    var0 = roomControls->roomOriginX;
    if (x <= var0 + 120) {
        roomControls->roomScrollX = var0;
    } else {
        var0 += roomControls->width;
        var1 = var0 - 120;
        if (x < var1) {
            var1 = (u16)target->x.HALF.HI;
        }
        roomControls->roomScrollX = var1 - 120;
    }

    target = roomControls->cameraTarget;
    y = target->y.HALF.HI;
    var0 = roomControls->roomOriginY;
    if (y <= var0 + 80) {
        roomControls->roomScrollY = var0;
    } else {
        var0 += roomControls->height;
        var1 = var0 - 80;
        if (y < var1) {
            var1 = (u16)target->y.HALF.HI;
        }
        roomControls->roomScrollY = var1 - 80;
    }

    sub_08080BC4();
    gUnk_02000070 = 1;
}
