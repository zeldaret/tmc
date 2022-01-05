#include "global.h"
#include "entity.h"
#include "structures.h"
#include "functions.h"
#include "game.h"

extern void sub_08080BC4(void);

extern u32 gUnk_0200B650;
extern u32 gUnk_02025EB0;
extern u8 gUpdateVisibleTiles;

void sub_080808D8(void) {
    gRoomTransition.type = TRANSITION_DEFAULT;
}

void sub_080808E4(void) {
    if (CheckAreaOverworld(gRoomTransition.player_status.area_next)) {
        gRoomTransition.type = TRANSITION_DEFAULT;
    } else {
        gRoomTransition.type = TRANSITION_FADE_BLACK;
    }
}

void sub_08080904(void) {
    gRoomTransition.type = TRANSITION_CUT;
}

void sub_08080910(void) {
    gRoomTransition.type = TRANSITION_CUT;
}

void sub_0808091C(ScreenTransitionData* param_1, u32 param_2) {
    DoExitTransition(param_1);
    gRoomTransition.type = param_2;
}

void sub_08080930(void) {
    gRoomControls.unk3 = 5;
    gRoomControls.unk4 = 0;
    gRoomControls.reload_flags = 2;
    gRoomControls.scroll_direction = 0;
    SetInitializationPriority();
}

u32* GetLayerByIndex(u32 param_1) {
    if (param_1 == 2) {
        return &gUnk_0200B650;
    } else {
        return &gUnk_02025EB0;
    }
}

void InitScreenShake(u32 time, u32 magnitude) {
    gRoomControls.shake_duration = time;
    gRoomControls.shake_magnitude = magnitude & 7;
}

void sub_08080974(u32 arg0, u32 arg1) {
    u32 var0, var1;
    RoomControls* roomControls = &gRoomControls;

    var0 = roomControls->origin_x;
    if (arg0 <= var0 + 120) {
        roomControls->scroll_x = var0;
    } else {
        var0 += roomControls->width;
        var1 = var0 - 120;
        if (arg0 < var1) {
            var1 = arg0;
        }
        roomControls->scroll_x = var1 - 120;
    }

    var0 = roomControls->origin_y;
    if (arg1 <= var0 + 80) {
        roomControls->scroll_y = var0;
    } else {
        var0 += roomControls->height;
        var1 = var0 - 80;
        if (arg1 < var1) {
            var1 = arg1;
        }
        roomControls->scroll_y = var1 - 80;
    }

    sub_080809D4();
    gUpdateVisibleTiles = 1;
}

void sub_080809D4(void) {
    register Entity* target asm("r4");
    int x, y;
    int var1, var0;
    RoomControls* roomControls = &gRoomControls;
    roomControls->scroll_flags &= ~4;

    target = roomControls->camera_target;
    x = target->x.HALF.HI;
    var0 = roomControls->origin_x;
    if (x <= var0 + 120) {
        roomControls->scroll_x = var0;
    } else {
        var0 += roomControls->width;
        var1 = var0 - 120;
        if (x < var1) {
            var1 = (u16)target->x.HALF.HI;
        }
        roomControls->scroll_x = var1 - 120;
    }

    target = roomControls->camera_target;
    y = target->y.HALF.HI;
    var0 = roomControls->origin_y;
    if (y <= var0 + 80) {
        roomControls->scroll_y = var0;
    } else {
        var0 += roomControls->height;
        var1 = var0 - 80;
        if (y < var1) {
            var1 = (u16)target->y.HALF.HI;
        }
        roomControls->scroll_y = var1 - 80;
    }

    sub_08080BC4();
    gUpdateVisibleTiles = 1;
}
