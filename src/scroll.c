#include "global.h"
#include "entity.h"
#include "structures.h"
#include "functions.h"
#include "game.h"
#include "map.h"
#include "asm.h"
#include "common.h"
#include "fileselect.h"

extern void sub_08080BC4(void);

extern u8 gUpdateVisibleTiles;

extern void (*const gUnk_0811E768[])(RoomControls*);

void sub_0807FC7C(RoomControls*);
void sub_080805F8(void);

extern void (*const gUnk_0811E780[])(RoomControls*);

extern void (*const gUnk_0811E794[])(RoomControls*);

extern u8 gMapDataTopSpecial[];

void UpdateScroll(void) {
    gRoomControls.scroll_flags &= 0xfb;
    gUnk_0811E768[gRoomControls.unk3](&gRoomControls);
}

void sub_0807FC64(RoomControls* controls) {
    controls->unk3 = 1;
    controls->reload_flags = 0;
    controls->unk5 = 4;
    sub_0807FC7C(controls);
    sub_080805F8();
}

ASM_FUNC("asm/non_matching/scroll/sub_0807FC7C.inc", void sub_0807FC7C(RoomControls* controls))

void sub_0807FDB0(RoomControls* controls) {
    gUnk_0811E780[controls->unk4](controls);
}

void sub_0807FDC8(RoomControls* controls) {
    gUpdateVisibleTiles = 1;
    UpdateScrollVram();
    controls->unk4 = 1;
    gUpdateVisibleTiles = 0;
}

void sub_0807FDE4(RoomControls* controls) {
    controls->unk4 = 2;
    controls->filler2[0] = 0;
    gUpdateVisibleTiles = 2;
}

ASM_FUNC("asm/non_matching/scroll/sub_0807FDF8.inc", void sub_0807FDF8())

void sub_0807FEC8(RoomControls* this) {
    this->unk3 = 0;
    MemFill32(0xffffffff, gPlayerState.path_memory, 0x40);
    gPlayerState.startPosX = this->camera_target->x.HALF.HI;
    gPlayerState.startPosY = this->camera_target->y.HALF.HI;
}

void sub_0807FEF0(RoomControls* controls) {
    extern void (*const gUnk_0811E78C[])(RoomControls*);
    gUnk_0811E78C[controls->unk4](controls);
}

void sub_0807FF08(RoomControls* controls) {
    controls->unk4 = 1;
    controls->filler2[0] = 0;
    gUpdateVisibleTiles = 3;
}

void sub_0807FF1C(RoomControls* controls) {
    if ((gRoomTransition.frameCount & 1U) == 0) {
        gUpdateVisibleTiles = 3;
        if (++controls->filler2[0] > 0x13) {
            controls->unk3 = 0;
            ResetSystemPriority();
        }
    }
}

void sub_0807FF54(RoomControls* controls) {
    gUnk_0811E794[controls->unk4](controls);
}

ASM_FUNC("asm/non_matching/scroll/sub_0807FF6C.inc", void sub_0807FF6C())

ASM_FUNC("asm/non_matching/scroll/sub_0807FFE4.inc", void sub_0807FFE4())

ASM_FUNC("asm/non_matching/scroll/sub_08080040.inc", void sub_08080040())

ASM_FUNC("asm/non_matching/scroll/sub_08080108.inc", void sub_08080108())

void sub_08080198(RoomControls* controls) {
    controls->unk4 = 5;
    controls->filler2[2] = 0xff;
    LoadRoom();
    CallRoomProp5And7();
    gUpdateVisibleTiles = 0;
    sub_080805F8();
}

ASM_FUNC("asm/non_matching/scroll/sub_080801BC.inc", void sub_080801BC())

ASM_FUNC("asm/non_matching/scroll/sub_08080278.inc", void sub_08080278())

ASM_FUNC("asm/non_matching/scroll/sub_08080368.inc", void sub_08080368())

ASM_FUNC("asm/non_matching/scroll/sub_080803D0.inc", void sub_080803D0())

void sub_080805F8(void) {
    switch (gRoomControls.area) {
        case 0xc:
        case 0x0f:
        case 0x13:
        case 0x14:
        case 0x16:
        case 0x17:
        case 0x19:
            gUnk_03004030.unk_08 = 1;
            return;
    }
    gUnk_03004030.unk_08 = 0;
}

void ClearTilemaps(void) {
    MemClear(&gRoomControls, 0x38);
    MemClear(&gUnk_03004030, 0xc);
    gRoomControls.filler3 = 0xffff;
    gUnk_03004030.unk_0a = 0xff;
    gUnk_02034480.unk_00 = 0;
    MemClear(&gUnk_02019EE0, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
}

ASM_FUNC("asm/non_matching/scroll/sub_080806BC.inc", bool32 sub_080806BC(u32 a, u32 b, u32 c, u32 d))

ASM_FUNC("asm/non_matching/scroll/sub_08080734.inc", void sub_08080734())

ASM_FUNC("asm/non_matching/scroll/sub_08080794.inc", void sub_08080794())

ASM_FUNC("asm/non_matching/scroll/sub_08080808.inc", void sub_08080808())

ASM_FUNC("asm/non_matching/scroll/DoExitTransition.inc", void DoExitTransition(const ScreenTransitionData* data))

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

void sub_0808091C(const ScreenTransitionData* param_1, u32 param_2) {
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

LayerStruct* GetLayerByIndex(u32 param_1) {
    if (param_1 == 2) {
        return &gMapTop;
    } else {
        return &gMapBottom;
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
    int x, y;
    int var1, var0;
    RoomControls* roomControls = &gRoomControls;
    roomControls->scroll_flags &= ~4;

    x = roomControls->camera_target->x.HALF.HI;
    var0 = roomControls->origin_x;
    if (x <= var0 + 120) {
        roomControls->scroll_x = var0;
    } else {
        var0 += roomControls->width;
        var1 = var0 - 120;
        if (x < var1) {
            var1 = (u16)roomControls->camera_target->x.HALF.HI;
        }
        roomControls->scroll_x = var1 - 120;
    }

    y = roomControls->camera_target->y.HALF.HI;
    var0 = roomControls->origin_y;
    if (y <= var0 + 80) {
        roomControls->scroll_y = var0;
    } else {
        var0 += roomControls->height;
        var1 = var0 - 80;
        if (y < var1) {
            var1 = (u16)roomControls->camera_target->y.HALF.HI;
        }
        roomControls->scroll_y = var1 - 80;
    }

    sub_08080BC4();
    gUpdateVisibleTiles = 1;
}

ASM_FUNC("asm/non_matching/scroll/UpdateDoorTransition.inc", void UpdateDoorTransition())

ASM_FUNC("asm/non_matching/scroll/sub_08080B60.inc", void sub_08080B60())

ASM_FUNC("asm/non_matching/scroll/sub_08080BC4.inc", void sub_08080BC4())

ASM_FUNC("asm/non_matching/scroll/sub_08080C80.inc", void sub_08080C80())

ASM_FUNC("asm/non_matching/scroll/sub_08080CB4.inc", void sub_08080CB4(Entity* a))
