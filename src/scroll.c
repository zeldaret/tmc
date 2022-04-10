#include "global.h"
#include "entity.h"
#include "structures.h"
#include "functions.h"
#include "game.h"
#include "map.h"
#include "asm.h"
#include "common.h"
#include "fileselect.h"
#include "screen.h"

extern void sub_08080BC4(void);
extern void sub_080197D4(const void*);
extern void sub_0807C8B0(u8*, u32, u32);
extern void sub_0801AB08(u8*, u8*);
extern void sub_0807C810();
extern void DeleteSleepingEntities(void);
extern void sub_0807BBE4();
extern void sub_0807BC84();
extern void sub_0805E248();

extern u8 gUpdateVisibleTiles;
extern u16 gUnk_0200B640;
extern u32** gUnk_08109194[];
extern u8 gMapDataTop[];
extern u8 gMapDataBottom[];
extern u8 gUnk_02022830[];
extern u8 gUnk_020246B0[];

void sub_0807FC64(RoomControls*);
void sub_0807FC7C(RoomControls*);
void sub_0807FDB0(RoomControls*);
void sub_0807FEF0(RoomControls*);
void sub_0807FF54(RoomControls*);
void sub_0807FDC8(RoomControls*);
void sub_0807FDE4(RoomControls*);
void sub_0807FDF8(RoomControls*);
void sub_0807FEC8(RoomControls*);
void sub_0807FF08(RoomControls*);
void sub_0807FF1C(RoomControls*);

void sub_0807FF6C(RoomControls*);
void sub_0807FFE4(RoomControls*);
void sub_08080040(RoomControls*);
void sub_08080108(RoomControls*);
void sub_08080198(RoomControls*);
void sub_080801BC(RoomControls*);
void UpdateIsDiggingCave(void);
u32 sub_080803D0();
u32 sub_08080278();
void sub_08080C80(u32*);
void sub_08080368();
void sub_08080B60(u8*);

extern u8 gMapDataTopSpecial[];

extern const void (*const gUnk_0811E7C4[])(int);

void UpdateScroll(void) {
    static void (*const gUnk_0811E768[])(RoomControls*) = {
        sub_0807FC64, sub_0807FC7C, sub_0807FDB0, NULL, sub_0807FEF0, sub_0807FF54,
    };

    gRoomControls.scroll_flags &= 0xfb;
    gUnk_0811E768[gRoomControls.unk3](&gRoomControls);
}

void sub_0807FC64(RoomControls* controls) {
    controls->unk3 = 1;
    controls->reload_flags = 0;
    controls->unk5 = 4;
    sub_0807FC7C(controls);
    UpdateIsDiggingCave();
}

ASM_FUNC("asm/non_matching/scroll/sub_0807FC7C.inc", void sub_0807FC7C(RoomControls* controls))

void sub_0807FDB0(RoomControls* controls) {
    static void (*const gUnk_0811E780[])(RoomControls*) = {
        sub_0807FDC8,
        sub_0807FDE4,
        sub_0807FDF8,
    };
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

void sub_0807FDF8(RoomControls* controls) {
    u32 bVar1;
    Entity* pEVar2;
    int iVar3;

    gUpdateVisibleTiles = 2;
    controls->filler2[0]++;
    switch (controls->scroll_direction) {
        case 0:
            controls->scroll_y -= 4;
            pEVar2 = controls->camera_target;
            if (pEVar2 == &gPlayerEntity) {
                pEVar2->y.WORD = gPlayerEntity.y.WORD - Q_16_16(0.375);
            }
            if (controls->filler2[0] == 0x28) {
                sub_0807FEC8(controls);
            }
            break;
        case 1:
            controls->scroll_x = controls->scroll_x + 4;
            if (controls->camera_target == &gPlayerEntity) {
                gPlayerEntity.x.WORD += Q_16_16(0.25);
            }
            if (controls->filler2[0] == 0x3c) {
                sub_0807FEC8(controls);
            }
            break;
        case 2:
            controls->scroll_y = controls->scroll_y + 4;
            pEVar2 = controls->camera_target;
            if (pEVar2 == &gPlayerEntity) {
                pEVar2->y.WORD = gPlayerEntity.y.WORD + Q_16_16(0.375);
            }
            if (controls->filler2[0] == 0x28) {
                sub_0807FEC8(controls);
            }
            break;
        case 3:
            controls->scroll_x -= 4;
            if (controls->camera_target == &gPlayerEntity) {
                gPlayerEntity.x.WORD -= Q_16_16(0.25);
            }
            if (controls->filler2[0] == 0x3c) {
                sub_0807FEC8(controls);
            }
            break;
    }

    controls->shake_duration = 0;
    sub_08080BC4();
}

void sub_0807FEC8(RoomControls* this) {
    this->unk3 = 0;
    MemFill32(0xffffffff, gPlayerState.path_memory, sizeof(gPlayerState.path_memory));
    gPlayerState.startPosX = this->camera_target->x.HALF.HI;
    gPlayerState.startPosY = this->camera_target->y.HALF.HI;
}

void sub_0807FEF0(RoomControls* controls) {
    static void (*const gUnk_0811E78C[])(RoomControls*) = {
        sub_0807FF08,
        sub_0807FF1C,
    };
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
    static void (*const gUnk_0811E794[])(RoomControls*) = {
        sub_0807FF6C, sub_0807FFE4, sub_08080040, sub_08080108, sub_08080198, sub_080801BC,
    };
    gUnk_0811E794[controls->unk4](controls);
}

void sub_0807FF6C(RoomControls* controls) {
    controls->unk4 = 1;
    gScreen.lcd.displayControl |= DISPCNT_WIN1_ON;
    gScreen.controls.windowInsideControl = (u8)gScreen.controls.windowInsideControl | 0x1700;
    gScreen.controls.windowOutsideControl = (gScreen.controls.windowOutsideControl & 0xff00) | 7;
    gScreen.controls.window1HorizontalDimensions = 0xf0;
    gScreen.controls.window1VerticalDimensions = 0xf0;
    ResetPlayerItem();
    ResetPlayerAnimationAndAction();
    if (gUnk_03004030.isDiggingCave) {
        gPlayerEntity.animationState = 4;
    } else {
        gPlayerEntity.animationState = 0;
    }
    sub_080809D4();
}

void sub_0807FFE4(RoomControls* controls) {
    controls->unk4 = 2;
    controls->filler2[0] = sub_080803D0() + 6;
    gUnk_0200B640 = sub_08080278();
    sub_080197D4(*gUnk_08109194[gUnk_03004030.unk_00->unk_03]);
    sub_0807C8B0(gMapDataTop, controls->width >> 4, controls->height >> 4);
    sub_0801AB08(gMapDataTopSpecial, gMapDataTop - 4);
}

void sub_08080040(RoomControls* controls) {
    int iVar2;
    int iVar3;
    int uVar5;
    int uVar6;
    int iVar7;
    int temp;

    controls->filler2[0] -= 6;
    controls->filler2[1] = (controls->filler2[0] << 1) / 3;
    if (0x2a < controls->filler2[0]) {
        iVar2 = controls->camera_target->x.HALF.HI - controls->scroll_x;
        uVar6 = (iVar2 - controls->filler2[0]) + 8;
        if (uVar6 < 0) {
            uVar6 = 0;
        }
        iVar7 = iVar2 + controls->filler2[0] - 8;
        if (0xf0 < iVar7) {
            iVar7 = 0xf0;
        }
        temp = controls->camera_target->y.HALF.HI - controls->scroll_y;
        uVar5 = (temp - controls->filler2[1]) + 8;
        if (uVar5 < 0) {
            uVar5 = 0;
        }
        iVar3 = temp + controls->filler2[1] - 8;
        if (0xa0 < iVar3) {
            iVar3 = 0xa0;
        }
        gScreen.controls.window1HorizontalDimensions = ((uVar6 & 0xff) << 8) | (iVar7 & 0xff);
        gScreen.controls.window1VerticalDimensions = ((uVar5 & 0xff) << 8) | (iVar3 & 0xff);
    }
    if (controls->filler2[0] == 0) {
        controls->unk4 = 3;
        DeleteSleepingEntities();
        sub_0807C810();
        sub_08080C80(*(gUnk_08109194[gUnk_03004030.unk_00->unk_03] + 1));
    } else {
        gUpdateVisibleTiles = 4;
    }
}

void sub_08080108(RoomControls* controls) {
    controls->unk4 = 4;
    MemCopy(gMapDataBottom, gMapDataBottom + 0x3000, 0x2000);
    MemCopy(gMapDataTop, gMapDataTop + 0x3000, 0x2000);
    sub_08080368();
    gUnk_02034480.unk_00 = gUnk_0200B640;
    MemCopy(gUnk_02022830, gUnk_020246B0, 0x1800);
    sub_08080B60(gMapDataBottom - 4);
    sub_08080B60(gMapDataTop - 4);
    sub_0807BBE4();
    sub_0807BC84();
    sub_0805E248();
    sub_0801AB08((u8*)&gMapDataBottomSpecial, gMapDataBottom - 4);
    sub_0801AB08(gMapDataTopSpecial, gMapDataTop - 4);
}

void sub_08080198(RoomControls* controls) {
    controls->unk4 = 5;
    controls->filler2[2] = 0xff;
    LoadRoom();
    CallRoomProp5And7();
    gUpdateVisibleTiles = 0;
    UpdateIsDiggingCave();
}

void sub_080801BC(RoomControls* controls) {
    int iVar2;
    int iVar3;
    int uVar5;
    int uVar6;
    int iVar7;
    int temp;

    controls->filler2[0] += 6;
    controls->filler2[1] = (controls->filler2[0] << 1) / 3;
    if (0x1e < controls->filler2[0]) {
        iVar2 = controls->camera_target->x.HALF.HI - controls->scroll_x;
        uVar6 = (iVar2 - controls->filler2[0]);
        if (uVar6 < 0) {
            uVar6 = 0;
        }
        iVar7 = iVar2 + controls->filler2[0];
        if (0xf0 < iVar7) {
            iVar7 = 0xf0;
        }
        temp = controls->camera_target->y.HALF.HI - controls->scroll_y;
        uVar5 = (temp - controls->filler2[1]);
        if (uVar5 < 0) {
            uVar5 = 0;
        }
        iVar3 = temp + controls->filler2[1];
        if (0xa0 < iVar3) {
            iVar3 = 0xa0;
        }
        gScreen.controls.window1HorizontalDimensions = ((uVar6 & 0xff) << 8) | (iVar7 & 0xff);
        gScreen.controls.window1VerticalDimensions = ((uVar5 & 0xff) << 8) | (iVar3 & 0xff);
    }
    if (controls->filler2[2] == 0) {
        controls->unk3 = 0;
        controls->reload_flags = 0;
        ResetSystemPriority();
        gScreen.lcd.displayControl &= ~DISPCNT_WIN1_ON;
        gScreen.controls.windowInsideControl &= 0xff;
        gScreen.controls.windowOutsideControl &= 0xff00;
    } else {
        gUpdateVisibleTiles = 4;
        controls->filler2[2] = 0;
    }
}

ASM_FUNC("asm/non_matching/scroll/sub_08080278.inc", u32 sub_08080278())

ASM_FUNC("asm/non_matching/scroll/sub_08080368.inc", void sub_08080368())

ASM_FUNC("asm/non_matching/scroll/sub_080803D0.inc", u32 sub_080803D0())

void UpdateIsDiggingCave(void) {
    switch (gRoomControls.area) {
        case AREA_LAKE_WOODS_CAVE:
        case AREA_HYRULE_DIG_CAVES:
        case AREA_DIG_CAVES:
        case AREA_CRENEL_DIG_CAVE:
        case AREA_VEIL_FALLS_DIG_CAVE:
        case AREA_CASTOR_WILDS_DIG_CAVE:
        case AREA_HYLIA_DIG_CAVES:
            gUnk_03004030.isDiggingCave = 1;
            return;
    }
    gUnk_03004030.isDiggingCave = 0;
}

void ClearTilemaps(void) {
    // Is gRoomControls 4 bytes bigger?
    MemClear(&gRoomControls, 0x38);
    MemClear(&gUnk_03004030, sizeof(gUnk_03004030));
    gRoomControls.filler3 = 0xffff;
    gUnk_03004030.unk_0a = 0xff;
    gUnk_02034480.unk_00 = 0;
    MemClear(&gMapDataBottomSpecial, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
}

ASM_FUNC("asm/non_matching/scroll/sub_080806BC.inc", bool32 sub_080806BC(u32 a, u32 b, u32 c, u32 d))

ASM_FUNC("asm/non_matching/scroll/sub_08080734.inc", void sub_08080734())

ASM_FUNC("asm/non_matching/scroll/sub_08080794.inc", void sub_08080794())

ASM_FUNC("asm/non_matching/scroll/sub_08080808.inc", void sub_08080808())

void DoExitTransition(const ScreenTransitionData* data) {
    PlayerRoomStatus* status;
    gRoomTransition.transitioningOut = 1;
    status = &gRoomTransition.player_status;
    if ((u16)data->playerXPos <= 0x3ff) {
        status->start_pos_x = data->playerXPos;
    } else {
        status->start_pos_x = (gRoomControls.camera_target)->x.HALF.HI | 0x8000;
    }
    if ((u16)data->playerYPos <= 0x3ff) {
        status->start_pos_y = data->playerYPos;
    } else {
        status->start_pos_y = (gRoomControls.camera_target)->y.HALF.HI | 0x8000;
    }
    status->area_next = data->area;
    status->room_next = data->room;
    status->layer = data->playerLayer;
    status->spawn_type = data->field_0xe;
    status->start_anim = data->playerState;
    if (data->transitionSFX != SFX_NONE) {
        SoundReq(data->transitionSFX);
    }
    gUnk_0811E7C4[data->type](data->field_0xa);
}

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

ASM_FUNC("asm/non_matching/scroll/sub_08080B60.inc", void sub_08080B60(u8* param_1))

ASM_FUNC("asm/non_matching/scroll/sub_08080BC4.inc", void sub_08080BC4())

ASM_FUNC("asm/non_matching/scroll/sub_08080C80.inc", void sub_08080C80(u32* param_1))

ASM_FUNC("asm/non_matching/scroll/sub_08080CB4.inc", void sub_08080CB4(Entity* a))
