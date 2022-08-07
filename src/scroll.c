#include "scroll.h"
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
#include "manager/diggingCaveEntranceManager.h"
#include "kinstone.h"
#include "effects.h"
#include "object.h"

extern void sub_08080BC4(void);
extern void sub_080197D4(const void*);
extern void sub_0807C8B0(u16*, u32, u32);
extern void sub_0801AB08(u8*, LayerStruct*);
extern void sub_0807C810();
extern void DeleteSleepingEntities(void);
extern void sub_0807BBE4();
extern void sub_0807BC84();
extern void sub_0805E248();

extern u8 gUpdateVisibleTiles;
extern u16 gUnk_0200B640;
extern u32** gUnk_08109194[];
extern u8 gUnk_02022830[];
extern u16 gUnk_020246B0[];
extern u8 gUnk_080B37A0[];
extern u8 gUnk_080B7910[];

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
u32 sub_080803D0();
u32 sub_08080278();
void sub_08080C80(u32*);
void sub_08080368();
void sub_08080B60(LayerStruct*);
bool32 sub_08080794(const Transition* transition, u32 param_2, u32 param_3, u32 param_4);
bool32 sub_08080808(const Transition* transition, u32 param_2, u32 param_3, u32 param_4);
void sub_080808D8(s32);
void sub_080808E4(s32);
void sub_08080904(s32);
void sub_08080910(s32);

extern u8 gMapDataTopSpecial[];

extern const s8 gUnk_080169A4[];

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

NONMATCH("asm/non_matching/scroll/sub_0807FC7C.inc", void sub_0807FC7C(RoomControls* controls)) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    int iVar4;
    u32 uVar5;
    u32 temp;
    u32 temp2;
    u32 uVar6;

    if (controls->camera_target != NULL) {
        iVar4 = (int)controls->scroll_x;
        temp = controls->camera_target->x.HALF.HI - 0x78;
        uVar3 = iVar4 - temp;
        if (uVar3 != 0) {
            uVar1 = (u16)controls->scroll_x;
            uVar5 = uVar1 & 7;
            uVar6 = uVar1;
            if ((int)uVar3 >= 1) {
                uVar2 = controls->origin_x;
                if ((int)uVar2 < iVar4) {
                    if ((int)controls->unk5 <= (int)uVar3) {
                        uVar3 = controls->unk5;
                        controls->scroll_flags = controls->scroll_flags | 4;
                    }
                    controls->scroll_x = uVar6 - uVar3;
                    if ((int)((uVar5)-uVar3) < 1) {
                        gUpdateVisibleTiles = 1;
                    }
                    if ((int)uVar2 >= (int)controls->scroll_x) {
                        controls->scroll_x = (s16)uVar2;
                    }
                }
            } else {
                uVar2 = (controls->origin_x + controls->width) - 0xf0;
                if (iVar4 < (int)uVar2) {
                    if ((int)-controls->unk5 >= (int)uVar3) {
                        uVar3 = -controls->unk5;
                        controls->scroll_flags |= 4;
                    }
                    controls->scroll_x = uVar1 - (short)uVar3;
                    if (7 < (int)((uVar5)-uVar3)) {
                        gUpdateVisibleTiles = 1;
                    }
                    if ((int)controls->scroll_x >= (int)uVar2) {
                        controls->scroll_x = (s16)uVar2;
                    }
                }
            }
        }

        iVar4 = (int)controls->scroll_y;
        temp = controls->camera_target->y.HALF.HI - 0x50;
        uVar3 = iVar4 - (temp);
        if (uVar3 != 0) {
            uVar1 = (u16)controls->scroll_y;
            uVar5 = uVar1 & 7;
            uVar6 = uVar1;
            if ((int)uVar3 >= 1) {
                uVar2 = temp2 = (u16)controls->origin_y;
                if ((int)uVar2 < iVar4) {
                    if ((int)controls->unk5 <= (int)uVar3) {
                        uVar3 = controls->unk5;
                        controls->scroll_flags |= 4;
                    }
                    controls->scroll_y = uVar6 - uVar3;
                    if ((int)((uVar5)-uVar3) < 1) {
                        gUpdateVisibleTiles = 1;
                    }
                    if ((int)uVar2 >= (int)controls->scroll_y) {
                        controls->scroll_y = (s16)uVar2;
                    }
                }
            } else {
                uVar2 = (controls->origin_y + controls->height) - DISPLAY_HEIGHT;
                if (iVar4 < (int)uVar2) {
                    if ((int)-controls->unk5 >= (int)uVar3) {
                        uVar3 = -controls->unk5;
                        controls->scroll_flags = controls->scroll_flags | 4;
                    }
                    controls->scroll_y = uVar1 - (short)uVar3;
                    if (7 < (int)((uVar1 & 7) - uVar3)) {
                        gUpdateVisibleTiles = 1;
                    }
                    if ((int)controls->scroll_y >= (int)uVar2) {
                        controls->scroll_y = (s16)uVar2;
                    }
                }
            }
        }
    }
    sub_08080BC4();
}
END_NONMATCH

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
    s32 iVar3;

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
    if (gDiggingCaveEntranceTransition.isDiggingCave) {
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
    sub_080197D4(*gUnk_08109194[gDiggingCaveEntranceTransition.entrance->type]);
    sub_0807C8B0(gMapTop.mapData, controls->width >> 4, controls->height >> 4);
    sub_0801AB08(gMapDataTopSpecial, &gMapTop);
}

void sub_08080040(RoomControls* controls) {
    s32 iVar2;
    s32 iVar3;
    s32 uVar5;
    s32 uVar6;
    s32 iVar7;
    s32 temp;

    controls->filler2[0] -= 6;
    controls->filler2[1] = (controls->filler2[0] << 1) / 3;
    if (0x2a < controls->filler2[0]) {
        iVar2 = controls->camera_target->x.HALF.HI - controls->scroll_x;
        uVar6 = (iVar2 - controls->filler2[0]) + 8;
        if (uVar6 < 0) {
            uVar6 = 0;
        }
        iVar7 = iVar2 + controls->filler2[0] - 8;
        if (DISPLAY_WIDTH < iVar7) {
            iVar7 = DISPLAY_WIDTH;
        }
        temp = controls->camera_target->y.HALF.HI - controls->scroll_y;
        uVar5 = (temp - controls->filler2[1]) + 8;
        if (uVar5 < 0) {
            uVar5 = 0;
        }
        iVar3 = temp + controls->filler2[1] - 8;
        if (DISPLAY_HEIGHT < iVar3) {
            iVar3 = DISPLAY_HEIGHT;
        }
        gScreen.controls.window1HorizontalDimensions = ((uVar6 & 0xff) << 8) | (iVar7 & 0xff);
        gScreen.controls.window1VerticalDimensions = ((uVar5 & 0xff) << 8) | (iVar3 & 0xff);
    }
    if (controls->filler2[0] == 0) {
        controls->unk4 = 3;
        DeleteSleepingEntities();
        sub_0807C810();
        sub_08080C80(*(gUnk_08109194[gDiggingCaveEntranceTransition.entrance->type] + 1));
    } else {
        gUpdateVisibleTiles = 4;
    }
}

void sub_08080108(RoomControls* controls) {
    controls->unk4 = 4;
    MemCopy(gMapBottom.mapData, gMapBottom.mapDataClone, sizeof(gMapBottom.mapData));
    MemCopy(gMapTop.mapData, gMapTop.mapDataClone, sizeof(gMapTop.mapData));
    sub_08080368();
    gUnk_02034480.unk_00 = gUnk_0200B640;
    MemCopy(gUnk_02022830, gUnk_020246B0, 0x1800);
    sub_08080B60(&gMapBottom);
    sub_08080B60(&gMapTop);
    sub_0807BBE4();
    sub_0807BC84();
    sub_0805E248();
    sub_0801AB08((u8*)&gMapDataBottomSpecial, &gMapBottom);
    sub_0801AB08(gMapDataTopSpecial, &gMapTop);
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
    s32 iVar2;
    s32 iVar3;
    s32 uVar5;
    s32 uVar6;
    s32 iVar7;
    s32 temp;

    controls->filler2[0] += 6;
    controls->filler2[1] = (controls->filler2[0] << 1) / 3;
    if (0x1e < controls->filler2[0]) {
        iVar2 = controls->camera_target->x.HALF.HI - controls->scroll_x;
        uVar6 = (iVar2 - controls->filler2[0]);
        if (uVar6 < 0) {
            uVar6 = 0;
        }
        iVar7 = iVar2 + controls->filler2[0];
        if (DISPLAY_WIDTH < iVar7) {
            iVar7 = DISPLAY_WIDTH;
        }
        temp = controls->camera_target->y.HALF.HI - controls->scroll_y;
        uVar5 = (temp - controls->filler2[1]);
        if (uVar5 < 0) {
            uVar5 = 0;
        }
        iVar3 = temp + controls->filler2[1];
        if (DISPLAY_HEIGHT < iVar3) {
            iVar3 = DISPLAY_HEIGHT;
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

void sub_08080368(void) {
    u32 tmp;
    u32 index;
    u16* ptr;

    if ((gDiggingCaveEntranceTransition.previousArea != gRoomControls.area) &&
        (gDiggingCaveEntranceTransition.previousArea != 0xff)) {
        gUnk_02034480.unk_00 = 0;
    } else {
        ptr = gUnk_020246B0;
        tmp = gUnk_02034480.unk_00 << 1;
        index = 0;
        while (index < tmp) {
            sub_0807B9B8(ptr[1], ptr[0] & 0xfff, (ptr[0] >> 0xe));
            ptr += 2;
            index += 2;
        }
        gUpdateVisibleTiles = 0;
    }
}

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
            gDiggingCaveEntranceTransition.isDiggingCave = 1;
            return;
    }
    gDiggingCaveEntranceTransition.isDiggingCave = 0;
}

void ClearTilemaps(void) {
    // Is gRoomControls 4 bytes bigger?
    MemClear(&gRoomControls, 0x38);
    MemClear(&gDiggingCaveEntranceTransition, sizeof(gDiggingCaveEntranceTransition));
    gRoomControls.filler3 = 0xffff;
    gDiggingCaveEntranceTransition.previousArea = 0xff;
    gUnk_02034480.unk_00 = 0;
    MemClear(&gMapDataBottomSpecial, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
}

bool32 sub_080806BC(u32 param_1, u32 param_2, u32 param_3, u32 param_4) {
    static bool32 (*const gUnk_0811E7AC[])(const Transition*, u32, u32, u32) = {
        sub_08080794,
        sub_08080808,
        sub_08080794,
        sub_08080808,
    };
    u32 uVar1;
    s32 iVar2;
    const Transition* puVar3;

    puVar3 = (gArea.pCurrentRoomInfo->exits);
    while (*(u16*)puVar3 != 0xffff) {
        u32 uVar3 = *(u16*)puVar3;
        if ((((1 << uVar3) & param_4) != 0) && (gUnk_0811E7AC[uVar3](puVar3, param_1, param_2, param_3))) {
            DoExitTransition((const ScreenTransitionData*)puVar3);
            return 1;
        }
        puVar3++;
    }
    return 0;
}

const Transition* sub_08080734(u32 param_1, u32 param_2) {
    u32 warpType;
    s32 iVar2;
    u32 uVar4;
    const Transition* puVar3;

    puVar3 = (gArea.pCurrentRoomInfo->exits);
    uVar4 = 10;
    while (*(u16*)puVar3 != 0xffff) {
        if ((((1 << *(u16*)puVar3) & uVar4) != 0) && (sub_08080808(puVar3, param_1, param_2, 0))) {
            return puVar3;
        }
        puVar3++;
    }
    return NULL;
}

bool32 sub_08080794(const Transition* transition, u32 param_2, u32 param_3, u32 param_4) {
    u32 bVar1;

    switch (param_4) {
        default:
            return 0;
        case 0:
            if (gRoomControls.width >> 1 < param_2) {
                bVar1 = 2;
            } else {
                bVar1 = 1;
            }
            break;
        case 1:
            if (gRoomControls.height >> 1 < param_3) {
                bVar1 = 8;
            } else {
                bVar1 = 4;
            }
            break;
        case 2:
            if (gRoomControls.width >> 1 < param_2) {
                bVar1 = 0x20;
            } else {
                bVar1 = 0x10;
            }
            break;
        case 3:
            if (gRoomControls.height >> 1 < param_3) {
                bVar1 = 0x80;
            } else {
                bVar1 = 0x40;
            }
            break;
    }

    if ((transition->shape & bVar1) != 0) {
        return 1;
    }
    return 0;
}

bool32 sub_08080808(const Transition* param_1, u32 param_2, u32 param_3, u32 param_4) {
    static const u8 gUnk_0811E7BC[] = { 6, 6, 6, 14, 14, 6, 22, 6 };
    const u8* ptr;
    u32 temp;
    u32 temp2;
    u32 temp3;
    u32 temp4;
    ptr = &gUnk_0811E7BC[param_1->shape * 2];
    temp = ptr[0];
    temp2 = param_2 - param_1->startX;
    if ((temp2 + temp <= ptr[0] * 2)) {
        temp3 = ptr[1];
        temp4 = param_3 - param_1->startY;
        if (temp4 + temp3 <= ptr[1] * 2) {
            return TRUE;
        } else {
            return FALSE;
        }
    } else {
        return FALSE;
    }
}

void DoExitTransition(const ScreenTransitionData* data) {
    static void (*const gUnk_0811E7C4[])(s32) = {
        sub_080808D8,
        sub_080808E4,
        sub_08080904,
        sub_08080910,
    };
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
    status->spawn_type = data->spawn_type;
    status->start_anim = data->playerState;
    if (data->transitionSFX != SFX_NONE) {
        SoundReq(data->transitionSFX);
    }
    gUnk_0811E7C4[data->type](data->field_0xa);
}

void sub_080808D8(s32 param_1) {
    gRoomTransition.type = TRANSITION_DEFAULT;
}

void sub_080808E4(s32 param_1) {
    if (CheckAreaOverworld(gRoomTransition.player_status.area_next)) {
        gRoomTransition.type = TRANSITION_DEFAULT;
    } else {
        gRoomTransition.type = TRANSITION_FADE_BLACK;
    }
}

void sub_08080904(s32 param_1) {
    gRoomTransition.type = TRANSITION_CUT;
}

void sub_08080910(s32 param_1) {
    gRoomTransition.type = TRANSITION_CUT;
}

void sub_0808091C(const ScreenTransitionData* param_1, u32 param_2) {
    DoExitTransition(param_1);
    gRoomTransition.type = param_2;
}

void sub_08080930(u32 unused) {
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
    s32 x, y;
    s32 var1, var0;
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

NONMATCH("asm/non_matching/scroll/UpdateDoorTransition.inc", void UpdateDoorTransition()) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    Entity* target;

    if (gRoomControls.camera_target != &gPlayerEntity) {
        return;
    }
    if (gPlayerState.jump_status != 0) {
        return;
    }
    switch (gRoomControls.camera_target->action) {
        case 0x0f:
            if (gRoomControls.area == 0x48) {
                return;
            }
        case 1:
        case 9:
        case 0x18:
        case 0x1d:
            uVar4 = gRoomControls.camera_target->y.HALF.HI - gRoomControls.origin_y;
            uVar3 = gRoomControls.camera_target->x.HALF.HI - gRoomControls.origin_x;
            uVar1 =
                sub_080B1AE0(COORD_TO_TILE(gRoomControls.camera_target), gRoomControls.camera_target->collisionLayer);
            gRoomTransition.stairs_idx = sub_080B1A48(uVar3, uVar4, gRoomControls.camera_target->collisionLayer);
            switch (uVar1) {
                case 0x3f:
                case 0xf1:
                case 0x28:
                case 0x29:
                    sub_080806BC(uVar3, uVar4, 0xff, 10);
                    break;
            }
    }
}
END_NONMATCH

void sub_08080B60(LayerStruct* layer) {
    u32 index;
    u16* metatileTypes = layer->metatileTypes;
    u8* ptr = gUnk_080B37A0;
    u8* ptr3 = layer->unkData3;
    u16* mapData = layer->mapData;
    for (index = 0; index < 0x1000; index++) {
        u16 val = mapData[index];
        if (val < 0x4000) {
            layer->unkData3[index] = ptr[metatileTypes[val]];
        } else {
            layer->unkData3[index] = gUnk_080B7910[val - 0x4000];
        }
    }
}

void sub_08080BC4(void) {
    const s8* ptr;
    s32 tmpX;
    s32 tmpY;

    tmpX = (gRoomControls.scroll_x - gRoomControls.origin_x) & 0xf;
    tmpY = ((gRoomControls.scroll_y - gRoomControls.origin_y) & 0xf) + 8;
    if (gRoomControls.shake_duration != 0) {
        gRoomControls.shake_duration--;
        ptr = &gUnk_080169A4[gRoomControls.shake_magnitude * 0x10 + (gRoomControls.shake_duration & 0xe)];
        if (gMapBottom.bgSettings != NULL) {
            gMapBottom.bgSettings->xOffset = ptr[0] + tmpX;
            gMapBottom.bgSettings->yOffset = ptr[1] + tmpY;
        }
        if (gMapTop.bgSettings != NULL) {
            gMapTop.bgSettings->xOffset = ptr[0] + tmpX;
            gMapTop.bgSettings->yOffset = ptr[1] + tmpY;
        }
        gRoomControls.aff_x = ptr[0];
        gRoomControls.aff_y = ptr[1];
    } else {
        if (gMapBottom.bgSettings != NULL) {
            gMapBottom.bgSettings->xOffset = tmpX;
            gMapBottom.bgSettings->yOffset = tmpY;
        }
        if (gMapTop.bgSettings != NULL) {
            gMapTop.bgSettings->xOffset = tmpX;
            gMapTop.bgSettings->yOffset = tmpY;
        }
        gRoomControls.aff_x = 0;
        gRoomControls.aff_y = 0;
    }
}

void sub_08080C80(u32* param_1) {
    sub_080197D4(param_1);
    sub_0807C8B0(gMapBottom.mapData, gRoomControls.width >> 4, gRoomControls.height >> 4);
    sub_0807C8B0(gMapTop.mapData, gRoomControls.width >> 4, gRoomControls.height >> 4);
}

NONMATCH("asm/non_matching/scroll/sub_08080CB4.inc", void sub_08080CB4(Entity* this)) {
    Entity* effect;
    u32 tmp;
    u32 tmp2;

    if (this->type != this->animIndex) {
        InitAnimationForceUpdate(this, this->type);
        if (this->type == 0x5c) {
            struct_080C9CBC* ptr = &gUnk_080C9CBC[this->type2];
            this->palette.raw = ((ptr->unk0 & 0xf) << 4) | ptr->unk0;
        }

    } else {

        UpdateAnimationSingleFrame(this);
        if (this->spriteSettings.draw != 0) {
            switch (this->type) {
                case 0x60:
                    if (this->field_0x6a.HALF.LO != 0) {
                        this->field_0x6a.HALF.LO--;
                    } else {
                        this->field_0x6a.HALF.LO = (Random() & 0x1f) + 10;
                        effect = CreateFx(this, FX_SPARKLE, 0);
                        if (effect != NULL) {
                            effect->spriteOffsetX = this->spriteOffsetX;
                            effect->spriteOffsetY = this->spriteOffsetY;
                            SortEntityAbove(this, effect);
                        }
                    }
                    break;
                case 0x40:
                case 0x41:
                case 0x42:
                case 0x43:
                case 0x5c:
                case 0x62:
                    if ((gRoomTransition.frameCount & 0xf) == 0) {
                        CreateSparkle(this);
                    }
                    break;
            }
        }
    }
}
END_NONMATCH
