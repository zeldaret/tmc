#include "beanstalkSubtask.h"

#include "backgroundAnimations.h"
#include "collision.h"
#include "common.h"
#include "fade.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "main.h"
#include "manager.h"
#include "manager/diggingCaveEntranceManager.h"
#include "menu.h"
#include "object.h"
#include "screen.h"
#include "scroll.h"
#include "structures.h"

extern void sub_0807C898(void);
extern void sub_0805BB74(s32);
extern void LoadRoomGfx(void);
extern void sub_0807BFD0(void);
extern void sub_0807C4F8(void);

extern void gMapData;
extern u8 gUpdateVisibleTiles;
extern u16 gMapDataTopSpecial[];
extern u16 gMapDataBottomSpecial[];
extern const u8 gGlobalGfxAndPalettes[];
extern const u8 gUnk_081091E4[];

typedef struct {
    u16 tileType;
    u16 kind;
    u16 id;
    u16 type;
    u16 type2;
    u16 unk_a;
} Data;

extern const u16 gUnk_080B4410[]; // TODO figure out structure
extern void (*const gUnk_080B4458[])(void);
extern const s16 gUnk_080B4468[]; // TODO struct xy
extern const s16 gUnk_080B4478[]; // TODO struct xy
extern const s16 gUnk_080B4488[];
extern const s16 gUnk_080B4490[]; // TODO struct xy
extern const u16 gUnk_080B44A0[];
extern const s16 gUnk_080B44A8[]; // TODO struct xy
extern const u32 gUnk_080B44B8[]; // TODO actually function pointers?
extern const Data gUnk_080B44C0[];
extern const Data gUnk_080B44C2[];

void sub_0801AD6C(const Data*, u32);
bool32 sub_0801A4F8(void);
bool32 sub_0801AA58(Entity*, u32, u32);
void sub_0801AB08(u16*, LayerStruct*);

u32 sub_0801AC68(u32 position, u32 data);

extern u32 sub_0807BDB8(Entity* this, u32 param_2);
extern void sub_0804B388(u32 a1, u32 a2);
extern u32 sub_080A7CFC(u32 a1, u32 tmp); // TODO does this really have a second param?
extern void OpenSmallChest(u32 pos, u32 layer);
extern bool32 sub_08079778();
extern Transition* sub_08080734(u32, u32);

extern const s16 gUnk_080B4490[];
extern const s16 gUnk_080B4468[];
extern const s16 gUnk_080B4478[];

bool32 sub_0801A2B0(LayerStruct* layer, u32 position, u32 collisionType);
bool32 sub_0801A9F0(u32 param_1, u32 param_2, u32 param_3);
u32 sub_0801A570(Entity*, u32);
bool32 sub_0801A458(LayerStruct* layer, u32 position, u32 collisionType);
bool32 sub_0801A370(LayerStruct* layer, u32 position);
u32 sub_0801A8D0(Entity* this, u32 param_2);
extern void sub_080001D0(u32, u32, u32);

void sub_0801967C(void) {
    gUnk_080B4458[gMenu.overlayType]();
}

void sub_08019698(void) {
    Entity* object;
    const u16* ptr;
    ptr = &gUnk_080B4410[gUI.field_0x3 * 7];
    SetLocalFlagByBank(FLAG_BANK_1, ptr[2]);
    LoadAuxiliaryRoom(ptr[0], ptr[1]);
    gRoomControls.scroll_x += ptr[3];
    gRoomControls.scroll_y += ptr[4];
    gUpdateVisibleTiles = 1;
    UpdateScrollVram();
    gScreen.lcd.displayControl &= 0xfeff;
    object = CreateObject(BEANSTALK, 0, 0);
    if (object != NULL) {
        object->x.HALF.HI = gRoomControls.scroll_x + ptr[5];
        object->y.HALF.HI = gRoomControls.scroll_y + ptr[6];
    }
    LoadGfxGroup(0x11);
    FlushSprites();
    DrawEntities();
    CopyOAM();
    SetFade(FADE_INSTANT, 8);
    gUnk_02018EB0.unk_0++;
}

void sub_08019740(void) {
    if (gFadeControl.active == 0) {
        gUnk_02018EB0.unk_0++;
        gUnk_02018EB0.unk_4 = 0x186;
    }
}

void sub_08019764(void) {
    FlushSprites();
    UpdateEntities();
    DrawEntities();
    CopyOAM();
    if ((--gUnk_02018EB0.unk_4 == 0) || ((gInput.newKeys & (B_BUTTON | START_BUTTON)) != 0)) {
        gUnk_02018EB0.unk_0++;
    }
}

void sub_080197A0(void) {
    MenuFadeIn(2, 0xb);
}

void SetBGDefaults(void) {
    gMapBottom.bgSettings = (BgSettings*)&gScreen.bg2;
    gMapBottom.bgSettings->control = gUnk_080B77C0[0];
    gMapTop.bgSettings = &gScreen.bg1;
    gMapTop.bgSettings->control = gUnk_080B77C0[1];
}

void sub_080197D4(struct_08109194* param_1) {
    u32 uVar1;
    u8* src;
    void* dest;

    do {
        dest = param_1->dest;
        if (dest != NULL) {
            src = &gMapData + (param_1->src & 0x7fffffff);
            if ((param_1->size & 0x80000000) != 0) {
                if ((u32)dest >> 0x18 == 6) {
                    LZ77UnCompVram(src, dest);
                } else {
                    LZ77UnCompWram(src, dest);
                }
            } else {
                MemCopy(src, dest, param_1->size);
            }
        } else {
            LoadPaletteGroup(*(u16*)param_1);
            sub_080533CC();
        }
        param_1++;
    } while (((param_1 - 1)->src & 0x80000000) != 0);
}

// Has ifdefs for other variants
u32 UpdatePlayerCollision(void) {
    u32 direction;
    u32 tileType;
    LayerStruct* layer;
    Transition* transition;
    Entity* pushedBlock;
    Entity* player;
    u32 position;
    u32 index;
    const s16* ptr1;
    const s16* ptr2;
    s32 tmp1;
    u32 tmp2;
    u32 tmp3;
    // There are some weird assignment necessary to access gPlayerEntity.animationState correctly.
    u32 animationState1;
    u32 animationState2;
    u32 animationState3;

    if (gPlayerState.framestate == 0) {
        tmp1 = gPlayerState.framestate_last;
    } else {
        tmp1 = gPlayerState.framestate;
    }

    switch (tmp1) {
        case 3:
            return 0;
        case 0x12:
            return 0;
        case 0x16:
            return 0;
    }

    if (gPlayerState.dash_state != 0 || gPlayerEntity.action == PLAYER_CLIMB) {
        direction = gPlayerEntity.direction;
    } else {
        direction = gPlayerState.direction;
    }
    if (((direction & 0x83) == 0) && (gPlayerState.field_0xa == 0)) {
        index = sub_0807BDB8(&gPlayerEntity, direction >> 2);
        if (index != 0xff && (gRoomControls.scroll_flags & 4) == 0) {
            ptr1 = &gUnk_080B4490[index * 2];
            if (sub_080B1B44(COORD_TO_TILE_OFFSET(&gPlayerEntity, -ptr1[0], -ptr1[1]), gPlayerEntity.collisionLayer) ==
                0xff) {
                if ((((gPlayerState.flags & (PL_FLAGS10000 | PL_FLAGS2)) != 0) ||
                     ((gPlayerState.sword_state & 0x10) != 0)) ||
                    ((sub_080806BC(gPlayerEntity.x.HALF.HI - gRoomControls.origin_x,
                                   gPlayerEntity.y.HALF.HI - gRoomControls.origin_y, index, 5) == 0 &&
                      (((gPlayerState.heldObject != 0 || ((gPlayerState.field_0x1c & 0xf) != 0)) ||
                        (sub_0807BD14(&gPlayerEntity, index) == 0)))))) {
                    return 3;
                }
                gPlayerEntity.direction = (index << 3);
                return 0xf;
            }
        }
    }
    layer = GetLayerByIndex(gPlayerEntity.collisionLayer);
    ptr1 = &gUnk_080B4468[gPlayerEntity.animationState & 6];
    position = COORD_TO_TILE_OFFSET(&gPlayerEntity, -ptr1[0], -ptr1[1]);
    tileType = GetTileType(position, gPlayerEntity.collisionLayer);
    if (tileType < 0x4000) {
        direction = sub_080B1B54(tileType);
    } else {
        direction = tileType;
    }
    animationState1 = gPlayerEntity.animationState;
    animationState2 = animationState1 & 0xff;

    switch (direction) {
        case 0x4000:
            if (sub_0801A458(layer, position, 2) == 0) {
                return 0;
            }
            layer->mapData[position] = 0x4001 + (gPlayerEntity.animationState >> 1);
            if ((gPlayerState.flags & PL_MINISH) != 0) {
                gPlayerState.pushedObject = 0xc0;
            } else {
                gPlayerState.pushedObject = 0xa0;
            }
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            return 1;
        case 0x28:
            if ((gPlayerState.flags & PL_MINISH) != 0) {
                return 0;
            }
            gPlayerEntity.action = gPlayerEntity.action;
            if (gPlayerState.field_0xa != 0) {
                return 0;
            }
            if ((Direction8FromAnimationState(gPlayerEntity.animationState)) - gPlayerState.direction != 0) {
                return 0;
            }
            if ((gPlayerEntity.direction & 0x80) != 0) {
                return 0;
            }
            if (sub_080B1B44(position, gPlayerEntity.collisionLayer) != 0xf) {
                return 0;
            }
            if (sub_08079778() == 0) {
                return 0;
            }

            ptr1 = &gUnk_080B4478[gPlayerEntity.animationState & 6];
            transition = sub_08080734((gPlayerEntity.x.HALF.HI - gRoomControls.origin_x) + ptr1[0],
                                      (gPlayerEntity.y.HALF.HI - gRoomControls.origin_y) + ptr1[1]);
            if (transition == NULL) {
                return 0;
            }
            if ((gPlayerEntity.animationState & 2) != 0) {
                gPlayerEntity.y.HALF.HI = gRoomControls.origin_y + transition->startY + 6;
            } else {
                gPlayerEntity.x.HALF.HI = gRoomControls.origin_x + transition->startX;
            }
            sub_08078AC0(4, 0, 1);
            return 0;
        case 0x401b:
            if (sub_0801A2B0(layer, position, 0xb) == 0) {
                return 0;
            }
            layer->mapData[position] = 0x401c + (gPlayerEntity.animationState >> 1);
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            gPlayerEntity.type = 1;
            return 1;
        case 0x70:
            if ((gPlayerState.field_0x35 & 0x80) == 0) {
                if ((gPlayerEntity.frame & 1) != 0) {
                    if (sub_0801A9F0(gPlayerState.field_0x35 << 2, tileType, position) != 0) {
                        return 1;
                    }
                }
            }
            return 0;
        case 0x3a:
        case 0x5b:
        case 0x4051:
            if ((gPlayerState.flags & PL_MINISH) != 0) {
                return 0;
            }
            if (gPlayerEntity.animationState != 0) {
                return 0;
            }
            gUnk_0200AF00.rActionInteractTile = R_ACTION_READ;
            if ((gPlayerState.playerInput.newInput & (PLAYER_INPUT_80 | PLAYER_INPUT_40)) == 0) {
                return 0;
            }
            gPlayerState.mobility = 1;
            sub_080A7CFC(position, gPlayerEntity.collisionLayer);
            return 1;
        case 0x1a:
            if ((animationState1 & 0xff) != 0) {
                return 0;
            }
            if ((gPlayerState.flags & (PL_DRUGGED | PL_MINISH)) != 0) {
                return 0;
            }
            gUnk_0200AF00.rActionInteractTile = R_ACTION_OPEN;
            if ((gPlayerState.playerInput.newInput & (PLAYER_INPUT_80 | PLAYER_INPUT_8)) == 0) {
                return 0;
            }
            gPlayerState.mobility = 1;
            OpenSmallChest(position, gPlayerEntity.collisionLayer);
            return 2;
        case 0x71:
            if (HasDungeonSmallKey() == 0) {
                return 0;
            }
            gUnk_0200AF00.rActionInteractTile = R_ACTION_OPEN;
            if ((gPlayerState.playerInput.newInput & (PLAYER_INPUT_80 | PLAYER_INPUT_8)) == 0) {
                return 0;
            }
            gPlayerState.mobility = 1;
            sub_0804B388(position, gPlayerEntity.collisionLayer);
            return 2;
        case 0x3d:
        case 0x4040 ... 0x4048:
            if ((gPlayerState.flags & PL_DRUGGED) != 0) {
                return 0;
            }
            if (sub_08079778() == 0) {
                return 0;
            }
#if !(defined(EU) || defined(JP))
            if (gPlayerState.field_0xa != 0) {
                return 0;
            }
#endif
            if ((Direction8FromAnimationState(gPlayerEntity.animationState)) - gPlayerState.direction != 0) {
                return 0;
            }
            if ((gPlayerEntity.direction & 0x80) != 0) {
                return 0;
            }
            if (gPlayerEntity.subtimer < 6) {
                return 0;
            }
            gPlayerState.jump_status = 0x81;
            gPlayerState.flags |= PL_USE_PORTAL;
            gPlayerState.queued_action = PLAYER_USEPORTAL;
            gPlayerEntity.zVelocity = 0x20000;
            COLLISION_OFF(&gPlayerEntity);
            return 1;
        case 0x400b:
            if (sub_0801A2B0(layer, position, 8) == 0) {
                return 0;
            }
            if ((gPlayerEntity.collisionLayer == 3) && (gMapTop.mapData[position] == 0x400b)) {
                gMapTop.mapData[position] = 0x400c + (gPlayerEntity.animationState >> 1);
            } else {
                layer->mapData[position] = 0x400c + (gPlayerEntity.animationState >> 1);
            }
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            return 1;
        case 0x405a:
            if (sub_0801A2B0(layer, position, 2) == 0) {
                return 0;
            }
            layer->mapData[position] = 0x405b + (gPlayerEntity.animationState >> 1);
            gPlayerState.pushedObject = 0x98;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            return 1;
        case 0x4036:
            if (sub_0801A2B0(layer, position, 0xb) == 0) {
                return 0;
            }
            layer->mapData[position] = 0x4037 + (gPlayerEntity.animationState >> 1);
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            return 1;
        case 0x403e:
            if ((animationState1 & 0xff) != 0) {
                return 0;
            }
            if (((gPlayerState.field_0x35 | gPlayerState.direction) & 0x80) != 0) {
                return 0;
            }
            if ((gPlayerEntity.frame & 2) == 0) {
                return 0;
            }
            layer->mapData[position] = 0x403f;
            gPlayerState.pushedObject = 0x82;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            return 1;
        case 0x72:
            if ((gPlayerState.field_0x35 & 0x80) != 0) {
                return 0;
            }
            if ((gPlayerEntity.frame & 1) == 0) {
                return 0;
            }
            position = sub_0801A570(&gPlayerEntity, 1);
            if (position == 0xffff) {
                return 0;
            }
            tmp2 = (position >> 0xc) - 1;
            position &= 0xfff;
            // TODO convert to for loop?
            index = 0;
            tmp3 = 0;
            while (index < 3) {
                if ((((*(u32*)(&(gPlayerClones[0])->field_0x6c)) & (1 << index)) != 0) &&
                    (sub_0801A570(gPlayerClones[index], 0) == position)) {
                    tmp3++;
                }
                index++;
            }
            if (tmp3 < tmp2) {
                return 0;
            }
            pushedBlock = CreateObject(PUSHED_BLOCK, tmp2, 0);
            if (pushedBlock == NULL) {
                return 0;
            }
            pushedBlock->direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            pushedBlock->x.HALF.HI = ((position & 0xfff & 0x3f) << 4) + 8 + gRoomControls.origin_x;
            pushedBlock->y.HALF.HI = ((position & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
            pushedBlock->collisionLayer = gPlayerEntity.collisionLayer;
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = pushedBlock->direction;
            return 1;
        case 0x402b ... 0x402d:
            if (sub_0801A370(layer, position) != 0) {
                layer->mapData[position] = 0x4030 + ((gPlayerEntity.animationState & 4) >> 2);
                if ((gPlayerState.flags & PL_MINISH) != 0) {
                    gPlayerState.pushedObject = 0xa0;
                } else {
                    gPlayerState.pushedObject = 0x90;
                }
                gPlayerState.queued_action = PLAYER_PUSH;
                gPlayerState.flags |= PL_BUSY;
                gPlayerEntity.x.HALF.LO = 0;
                gPlayerEntity.y.HALF.LO = 0;
                gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
                return 1;
            } else {
                return 0;
            }
        case 0x404a:
            if (sub_0801A458(layer, position, 8) == 0) {
                return 0;
            }
            layer->mapData[position] = 0x404b + (gPlayerEntity.animationState >> 1);
            if ((gPlayerState.flags & PL_MINISH) != 0) {
                gPlayerState.pushedObject = 0xc0;
            } else {
                gPlayerState.pushedObject = 0xa0;
            }
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            return 1;
        case 0x4052:
            if (gPlayerState.field_0x35 != 0) {
                return 0;
            }
            SetTile(0x4054, position, gPlayerEntity.collisionLayer);
            return 4;
        case 0x4053:
            if (gPlayerState.field_0x35 != 6) {
                return 0;
            }
            SetTile(0x4054, position, gPlayerEntity.collisionLayer);
            return 4;
        case 0x4055:
            position--;
            // fallthrough
        case 0x4056:
            if (gPlayerState.field_0x35 != 0) {
                return 0;
            }
            if ((gPlayerEntity.y.HALF.HI & 0xf) < 10) {
                return 0;
            }
            for (index = 0; index < 3; index++) {
                if (sub_0801A8D0(gPlayerClones[index], 0) == position) {
                    SetTile(0x4059, position, gPlayerEntity.collisionLayer);
                    return 4;
                }
            }
            return 0;
        case 0x4057:
            position -= 0x40;
            // fallthrough
        case 0x4058:
            if (gPlayerState.field_0x35 != 6) {
                return 0;
            }
            if ((gPlayerEntity.x.HALF.HI & 0xf) < 10) {
                return 0;
            }
            for (index = 0; index < 3; index++) {
                if (sub_0801A8D0(gPlayerClones[index], 6) == position) {
                    SetTile(0x4059, position, gPlayerEntity.collisionLayer);
                    return 4;
                }
            }
            return 0;
        case 0x405f:
            animationState3 = 2;
            animationState3 &= animationState1;
            if (animationState3 == 0) {
                return 0;
            }
            if (((gPlayerState.field_0x35 | gPlayerState.direction) & 0x80) != 0) {
                return 0;
            }
            if ((gPlayerEntity.frame & 1) == 0) {
                return 0;
            }
            SetTile(0x4074, position, gPlayerEntity.collisionLayer);
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = Direction8FromAnimationState(gPlayerEntity.animationState);
            return 1;
        case 0x407d:
            animationState3 = gPlayerEntity.animationState;
            if ((animationState2) != 4) {
                return 0;
            }
            if (((gPlayerState.field_0x35 | gPlayerState.direction) & 0x80) != 0) {
                return 0;
            }
            if ((gPlayerEntity.frame & 1) == 0) {
                return 0;
            }
            SetTile(0x4074, position, gPlayerEntity.collisionLayer);
            sub_080001D0(0xd, position, gPlayerEntity.collisionLayer);
            return 1;
        default:
            return 0;
    }
}

bool32 sub_0801A2B0(LayerStruct* layer, u32 position, u32 collisionType) {
    u16 uVar1;
    s16 x;
    s16 y;
    u16 temp4;

    uVar1 = gUnk_080B4488[gPlayerEntity.animationState >> 1];
    if ((((gPlayerState.field_0x35 | gPlayerState.direction) & 0x80) == 0) && ((gPlayerEntity.frame & 1) != 0)) {
        position = (u16)(position - (-uVar1)); // necessary for match
        temp4 = sub_080B1B54(GetTileType(position, gPlayerEntity.collisionLayer));
        switch (temp4) {
            case 0x52:
                break;
            case 0x26:
            case 0x27:
                return FALSE;
            case 0x29:
                return FALSE;
            case 0x74:
                return FALSE;
            default:
                if ((layer->collisionData[(position)] != 0x28)) {
                    x = (((position & 0x3f) * 0x10 + (u32)gRoomControls.origin_x));
                    y = (((position >> 6) * 0x10 + (u32)gRoomControls.origin_y));
                    if ((!IsTileCollision(layer->collisionData, x, y, collisionType))) {
                        return TRUE;
                    }
                }
                break;
        }
    }
    return FALSE;
}

bool32 sub_0801A370(LayerStruct* layer, u32 position) {
    LayerStruct* topLayer;
    u32 tileType;
    u32 pos;
    s32 offset;
    s32 temp;

    if ((gPlayerEntity.animationState & 2) == 0) {
        return FALSE;
    }
    if (!sub_0801A4F8()) {
        return FALSE;
    }
    topLayer = GetLayerByIndex(2);
    offset = gUnk_080B4488[gPlayerEntity.animationState >> 1];
    pos = position + offset;
    tileType = GetTileType(pos, gPlayerEntity.collisionLayer);
    switch (tileType) {
        case 0x402b:
            pos += offset;
            break;
        case 0x402c ... 0x402f:
            return TRUE;
    }
    if (topLayer->collisionData[pos - 0x80] == 0x46) {
        return FALSE;
    }
    switch ((u16)sub_080B1B54(GetTileType(pos, gPlayerEntity.collisionLayer))) {
        case 0x52:
            return FALSE;
        case 0x26:
        case 0x27:
            return FALSE;
        case 0x29:
            return FALSE;
        case 0x74:
            return FALSE;
    }
    switch (temp = layer->collisionData[pos]) {
        case 0:
            return TRUE;
        case 5:
        case 0x45:
            if (offset == 1) {
                return TRUE;
            }
            break;
        case 0xa:
        case 0x44:
            if (offset == -1) {
                return TRUE;
            }
            break;
    }
    return FALSE;
}

bool32 sub_0801A458(LayerStruct* layer, u32 position, u32 collisionType) {
    u32 tileType;
    u32 pos;
    s32 offset = gUnk_080B4488[gPlayerEntity.animationState >> 1];
    if (sub_0801A4F8()) {
        pos = position + offset;
        tileType = GetTileType(pos, gPlayerEntity.collisionLayer);
        switch (sub_080B1B54(tileType)) {
            case 0x52:
            case 0x26:
            case 0x27:
            case 0x29:
            case 0x74:
                return FALSE;
            default:
                if (((layer->collisionData[pos] != 0x28) &&
                     (!IsTileCollision(layer->collisionData, (pos & 0x3f) * 0x10 + gRoomControls.origin_x,
                                       (pos >> 6) * 0x10 + gRoomControls.origin_y, collisionType))) &&
                    (0xe < (u32)layer->collisionData[pos] - 1)) {
                    return TRUE;
                }
                break;
        }
    }
    return FALSE;
}

bool32 sub_0801A4F8(void) {
    u32 tmp;
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        if (GetInventoryValue(ITEM_POWER_BRACELETS) != 1) {
            return FALSE;
        }
        if ((gPlayerState.direction & 0x80) != 0) {
            return FALSE;
        }
        if (gPlayerState.direction != gPlayerEntity.direction) {
            return FALSE;
        }
        tmp = (((gPlayerEntity.direction + 4) & 0x18) >> 3);
        if ((gUnk_080B44A0[tmp] & gPlayerEntity.collisions) == 0) {
            return FALSE;
        }
    } else {
        if (((gPlayerState.field_0x35 | gPlayerState.direction) & 0x80) != 0) {
            return FALSE;
        }
        if ((gPlayerEntity.frame & 1) == 0) {
            return FALSE;
        }
    }
    return TRUE;
}

ASM_FUNC("asm/non_matching/beanstalkSubtask/sub_0801A570.inc", u32 sub_0801A570(Entity* a, u32 b))

u32 sub_0801A8D0(Entity* this, u32 param_2) {
    u16* mapData;
    u32 tile;
    u32 position;

    if (this == NULL)
        return 0xffff;

    mapData = GetLayerByIndex(this->collisionLayer)->mapData;
    if (param_2 == 0) {
        position = COORD_TO_TILE_OFFSET(this, 0, 8);
        tile = mapData[position];
        if (tile == 0x4055) {
            return position - 1;
        }
        if (tile == 0x4056) {
            return position;
        }
    } else {
        position = COORD_TO_TILE_OFFSET(this, 8, 0);
        tile = mapData[position];
        if (tile == 0x4057) {
            return position - 0x40;
        }
        if (tile == 0x4058) {
            return position;
        }
    }
    return 0xffff;
}

bool32 sub_0801A980(void) {
    u16 tileType;
    const s16* ptr;
    GetLayerByIndex(gPlayerEntity.collisionLayer);
    ptr = &gUnk_080B44A8[gPlayerEntity.animationState & 6];
    tileType = GetTileType(COORD_TO_TILE_OFFSET(&gPlayerEntity, -ptr[0], -ptr[1]), gPlayerEntity.collisionLayer);
    if (tileType < 0x4000) {
        sub_080B1B54(tileType);
    }
    return FALSE;
}

bool32 sub_0801A9F0(u32 param_1, u32 param_2, u32 param_3) {
    bool32 cond = FALSE;
    switch (param_2) {
        case 0x360:
            cond = TRUE;
            break;
        case 0x361:
            if (param_1 == 0) {
                cond = TRUE;
            }
            break;
        case 0x364:
            if (param_1 == 8) {
                cond = TRUE;
            }
            break;
        case 0x362:
            if (param_1 == 0x10) {
                cond = TRUE;
            }
            break;
        case 0x363:
            if (param_1 == 0x18) {
                cond = TRUE;
            }
            break;
        default:
            break;
    }

    if (cond) {
        return sub_0801AA58(&gPlayerEntity, param_3, param_1);
    }

    return FALSE;
}

bool32 sub_0801AA58(Entity* this, u32 param_2, u32 param_3) {
    LayerStruct* layer;
    Entity* object;
    u32 temp;

    layer = GetLayerByIndex(this->collisionLayer);
    if (((layer->collisionData[param_2 + gUnk_080B4488[param_3 >> 3]] == 0) ||
         ((u8)(layer->collisionData[param_2 + gUnk_080B4488[param_3 >> 3]] - 0x20) < 0x20))) {

        object = CreateObject(PUSHED_BLOCK, 0, 0);
        if (object != NULL) {
            object->direction = param_3;
            object->x.HALF.HI = ((((param_2)&0x3f) << 4) + 8) + gRoomControls.origin_x;
            object->y.HALF.HI = (((param_2 & 0xfc0) >> 2) + 8) + gRoomControls.origin_y;
            object->collisionLayer = this->collisionLayer;
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            this->x.HALF.LO = 0;
            this->y.HALF.LO = 0;
            this->direction = param_3;
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0801AB08(u16* specialData, LayerStruct* layer) {
    u16* metatiles;
    u16* mapData;
    u16* mapDataClone;
    u16 index;
    u16 innerIndex;
    u32 tmp2;
    u32 tmp3;
    u32 tmp1;

    if (layer == &gMapBottom) {
        tmp3 = 1;
    } else {
        tmp3 = 2;
    }
    tmp2 = tmp3 << 0xc;
    mapDataClone = layer->mapDataClone;
    mapData = layer->mapData;

    for (index = 0; index < 0x40; index++) {
        for (innerIndex = 0; innerIndex < 0x10; innerIndex++) {
            if (mapData[0] < 0x4000) {
                tmp1 = mapData[0] << 2;
            } else {
                tmp1 = sub_0801AC68(tmp2, mapDataClone[0]);
            }
            metatiles = layer->metatiles + tmp1;
            specialData[0] = metatiles[0];
            specialData[1] = metatiles[1];
            specialData[0x80 + 0] = metatiles[2];
            specialData[0x80 + 1] = metatiles[3];
            specialData += 2;
            if (mapData[1] < 0x4000) {
                tmp1 = mapData[1] << 2;
            } else {
                tmp1 = sub_0801AC68(tmp2 + 1, mapDataClone[1]);
            }
            metatiles = layer->metatiles + tmp1;
            specialData[0] = metatiles[0];
            specialData[1] = metatiles[1];
            specialData[0x80 + 0] = metatiles[2];
            specialData[0x80 + 1] = metatiles[3];
            specialData += 2;
            if (mapData[2] < 0x4000) {
                tmp1 = mapData[2] << 2;
            } else {
                tmp1 = sub_0801AC68(tmp2 + 2, mapDataClone[2]);
            }
            metatiles = layer->metatiles + tmp1;
            specialData[0] = metatiles[0];
            specialData[1] = metatiles[1];
            specialData[0x80 + 0] = metatiles[2];
            specialData[0x80 + 1] = metatiles[3];
            specialData += 2;
            if (mapData[3] < 0x4000) {
                tmp1 = mapData[3] << 2;
            } else {
                tmp1 = sub_0801AC68(tmp2 + 3, mapDataClone[3]);
            }
            metatiles = layer->metatiles + tmp1;
            specialData[0] = metatiles[0];
            specialData[1] = metatiles[1];
            specialData[0x80 + 0] = metatiles[2];
            specialData[0x80 + 1] = metatiles[3];
            specialData += 2;

            mapData += 4;
            mapDataClone += 4;
            tmp2 = (u16)(tmp2 + 4);
        }
        specialData = specialData + 0x80;
    }
}

u32 sub_0801AC68(u32 position, u32 data) {
    u32 index;
    struct_0200B240* ptr;
    u32 end;

    ptr = gUnk_0200B240;
    end = gRoomVars.unk_0e;
    for (index = 0; index < end; ptr++, index++) {
        if (position == ptr->position) {
            return ptr->data << 2;
        }
    }
    return data << 2;
}

void sub_0801AC98(void) {
    u32 position;
    u32 width;
    u32 height;
    u32 indexX;
    u32 indexY;
    const Data* ptr;

    width = gRoomControls.width >> 4;
    height = gRoomControls.height >> 4;
    position = 0;

    for (indexY = 0; indexY < height; indexY++) {
        for (indexX = 0; indexX < width; indexX++, position++) {
            for (ptr = gUnk_080B44C0; ptr->tileType != 0xffff; ptr++) {
                if (ptr->tileType == GetTileType(position, 1)) {
                    if (gUnk_080B44B8[ptr->unk_a] != 0) {
                        sub_0801AD6C(ptr, position);
                        break;
                    }
                }
            }

            for (ptr = gUnk_080B44C2; ptr->tileType != 0xffff; ptr++) {
                if (ptr->tileType == GetTileType(position, 2)) {
                    if (gUnk_080B44B8[ptr->unk_a] != 0) {
                        sub_0801AD6C(ptr, position);
                        break;
                    }
                }
            }
        }
        position = position + (0x40 - width);
    }
}

void sub_0801AD6C(const Data* param_1, u32 tilePosition) {
    Entity* entity;
    Manager* manager;
    s32 tmpX1;
    s32 tmpY1;
    s32 tmpX2;
    s32 tmpY2;

    if (param_1->kind != MANAGER) {
        entity = GetEmptyEntity();
        if (entity != NULL) {
            entity->kind = (u8)param_1->kind;
            entity->id = (u8)param_1->id;
            entity->type = (u8)param_1->type;
            entity->type2 = (u8)param_1->type2;
            tmpX1 = ((u16)tilePosition & 0x3f) * 0x10 + 8;
            entity->x.HALF.HI = tmpX1 + gRoomControls.origin_x;
            tmpY1 = (s16)((tilePosition & 0xfc0) >> 2) + 8;
            entity->y.HALF.HI = tmpY1 + gRoomControls.origin_y;
            entity->collisionLayer = 0;
            ResolveCollisionLayer(entity);
            AppendEntityToList(entity, gUnk_081091E4[entity->kind]);
        }
    } else {
        manager = GetEmptyManager();
        if (manager != NULL) {
            manager->kind = (u8)param_1->kind;
            manager->id = (u8)param_1->id;
            manager->type = (u8)param_1->type;
            manager->type2 = (u8)param_1->type2;
            // TODO are these fields common for all managers or does this usually create managers of certain types?
            tmpX2 = ((u16)tilePosition & 0x3f) * 0x10 + 8;
            *(u16*)(&manager[1].timer + 10) = tmpX2 + gRoomControls.origin_x;
            tmpY2 = (s16)((tilePosition & 0xfc0) >> 2) + 8;
            *(u16*)(&manager[1].timer + 12) = tmpY2 + gRoomControls.origin_y;
            AppendEntityToList((Entity*)manager, gUnk_081091E4[manager->kind]);
        }
    }
}

bool32 sub_0801AE30(void) {
    return TRUE;
}

u32 sub_0801AE34(void) {
    return gRoomControls.scroll_flags >> 1 & 1;
}

void sub_0801AE44(bool32 loadGfx) {
    void (*func)(void);
    gRoomControls.unk_34 = 0;
    sub_0807BFD0();
    if (loadGfx != 0) {
        LoadRoomGfx();
    }
    sub_080809D4();
    UpdateIsDiggingCave();
    if (gRoomTransition.field2d != 0) {
        sub_0807C898();
    }
    if (gArea.lightType != 0) {
        MemFill16(0xf, (void*)0x600f000, 0x800);
        sub_0805BB74(-1);
    }
    func = GetCurrentRoomProperty(5);
    if (func != NULL) {
        func();
    }
    if ((gDiggingCaveEntranceTransition.isDiggingCave == 0) && (gArea.onEnter != NULL)) {
        gArea.onEnter(gArea.transitionManager);
    }
    if ((gRoomControls.scroll_flags & 1) == 0) {
        if (gMapBottom.bgSettings != NULL) {
            sub_0801AB08(gMapDataBottomSpecial, &gMapBottom);
        }
        if (gMapTop.bgSettings != NULL) {
            sub_0801AB08(gMapDataTopSpecial, &gMapTop);
        }
    } else {
        sub_0807C4F8();
    }
    UpdateScrollVram();
}

void SetMultipleTiles(const TileData* tileData, u32 basePosition, u32 layer) {
    while (tileData->tile != -1) {
        SetTile((u16)tileData->tile, basePosition + tileData->position, layer);
        tileData++;
    }
}

// Add a new entry at the end of gUnk_0200B240
void sub_0801AF48(u32 data, u32 position, u32 layer) {
    u32 index;
    if ((data < 0x4000) && (gRoomTransition.field30 == 0)) {
        index = gRoomVars.unk_0e;
        if (index < 0x100) {
            gUnk_0200B240[index].data = data;
            gUnk_0200B240[index].position = (layer << 0xc) | position;
            gRoomVars.unk_0e = index + 1;
        }
    }
}

void DeleteLoadedTileEntity(u32 position, s32 layer) {
    u32 count;
    struct_0200B240* ptr;
    u32 positionLayer;
    u32 t;

    layer = layer << 12;
    positionLayer = position | layer;
    ptr = gUnk_0200B240;
    count = gRoomVars.unk_0e;
    t = 0;

    if (t >= count) {
        return;
    }

    if (positionLayer == ptr->position) {
        count--;
        gRoomVars.unk_0e = count;
        ptr[0] = ptr[count];
        return;
    }
    while (positionLayer != ptr->position) {
        ptr++;
        t++;
        if (t >= count) {
            return;
        }
    }
    count--;
    gRoomVars.unk_0e = count;
    ptr = gUnk_0200B240;
    ptr[t] = ptr[count];
}

const struct_080B44D0 gUnk_080B44D0[] = {
    { 0x67, 0x4084 }, { 0x68, 0x4085 }, { 0x69, 0x4086 }, { 0x6a, 0x4087 },
    { 0x6b, 0x4088 }, { 0x27, 0x4083 }, { 0x23, 0x408d }, { 0x0, 0x0 },
};

// used for minish houses, seems to overwrite all tiles with certain collision values on layer 1 for them?
void sub_0801AFE4(void) {
    const struct_080B44D0* ptr;
    u8* collisionData;
    u32 x;
    u32 y;
    u32 width;
    u32 height;

    collisionData = gMapBottom.collisionData;
    width = gRoomControls.width >> 4;
    height = gRoomControls.height >> 4;
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            for (ptr = gUnk_080B44D0; ptr->collision != 0; ptr++) {
                if (ptr->collision == *collisionData) {
                    SetTile(ptr->tileIndex, y * 0x40 + x, 1);
                    break;
                }
            }
            collisionData++;
        }
        collisionData = collisionData + (0x40 - width);
    }
}
