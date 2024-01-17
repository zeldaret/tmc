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
#include "tiles.h"

extern void sub_0807C898(void);
extern void sub_0805BB74(s32);
extern void LoadRoomGfx(void);
extern void LoadRoomTileSet(void);
extern void sub_0807C4F8(void);

extern void gMapData;
extern u8 gUpdateVisibleTiles;
extern u16 gMapDataTopSpecial[];
extern u16 gMapDataBottomSpecial[];
extern const u8 gGlobalGfxAndPalettes[];
extern const u8 gEntityListLUT[];

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
void RenderMapLayerToSubTileMap(u16* subTileMap, MapLayer* mapLayer);

u32 GetTileSetIndexForSpecialTile(u32 position, u32 tileIndex);

extern u32 sub_0807BDB8(Entity* this, u32 param_2);
extern void sub_0804B388(u32 a1, u32 a2);
extern u32 sub_080A7CFC(u32 a1, u32 tmp); // TODO does this really have a second param?
extern void OpenSmallChest(u32 pos, u32 layer);
extern bool32 sub_08079778();
extern Transition* sub_08080734(u32, u32);

extern const s16 gUnk_080B4490[];
extern const s16 gUnk_080B4468[];
extern const s16 gUnk_080B4478[];

bool32 sub_0801A2B0(MapLayer* mapLayer, u32 position, u32 collisionType);
bool32 sub_0801A9F0(u32 param_1, u32 param_2, u32 param_3);
u32 sub_0801A570(Entity*, u32);
bool32 sub_0801A458(MapLayer* mapLayer, u32 position, u32 collisionType);
bool32 sub_0801A370(MapLayer* mapLayer, u32 position);
u32 sub_0801A8D0(Entity* this, u32 param_2);

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

void LoadMapData(MapDataDefinition* dataDefinition) {
    u32 uVar1;
    u8* src;
    void* dest;

    do {
        dest = dataDefinition->dest;
        if (dest != NULL) {
            src = &gMapData + (dataDefinition->src & 0x7fffffff);
            if ((dataDefinition->size & MAP_COMPRESSED) != 0) {
                if ((u32)dest >> 0x18 == 6) {
                    LZ77UnCompVram(src, dest);
                } else {
                    LZ77UnCompWram(src, dest);
                }
            } else {
                MemCopy(src, dest, dataDefinition->size);
            }
        } else {
            LoadPaletteGroup(*(u16*)dataDefinition);
            sub_080533CC();
        }
        dataDefinition++;
    } while (((dataDefinition - 1)->src & MAP_MULTIPLE) != 0);
}

// Has ifdefs for other variants
u32 UpdatePlayerCollision(void) {
    u32 direction;
    u32 tileType;
    MapLayer* mapLayer;
    Transition* transition;
    Entity* pushedBlock;
    Entity* player;
    u32 position;
    u32 index;
    const s16* ptr1;
    const s16* ptr2;
    s32 framestate;
    u32 tmp2;
    u32 tmp3;
    // There are some weird assignment necessary to access gPlayerEntity.base.animationState correctly.
    u32 animationState1;
    u32 animationState2;
    u32 animationState3;

    if (gPlayerState.framestate == PL_STATE_IDLE) {
        framestate = gPlayerState.framestate_last;
    } else {
        framestate = gPlayerState.framestate;
    }

    switch (framestate) {
        case PL_STATE_GUSTJAR:
            return 0;
        case PL_STATE_DIE:
            return 0;
        case PL_STATE_DROWN:
            return 0;
    }

    if (gPlayerState.dash_state != 0 || gPlayerEntity.base.action == PLAYER_CLIMB) {
        direction = gPlayerEntity.base.direction;
    } else {
        direction = gPlayerState.direction;
    }
    if (((direction & (DIR_NOT_MOVING_CHECK | 0x3)) == 0) && (gPlayerState.field_0xa == 0)) {
        index = sub_0807BDB8(&gPlayerEntity.base, direction >> 2);
        if (index != 0xff && (gRoomControls.scroll_flags & 4) == 0) {
            ptr1 = &gUnk_080B4490[index * 2];
            if (GetCollisionDataAtTilePos(COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -ptr1[0], -ptr1[1]),
                                          gPlayerEntity.base.collisionLayer) == COLLISION_DATA_255) {
                if ((((gPlayerState.flags & (PL_FLAGS10000 | PL_FLAGS2)) != 0) ||
                     ((gPlayerState.sword_state & 0x10) != 0)) ||
                    ((sub_080806BC(gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x,
                                   gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y, index, 5) == 0 &&
                      (((gPlayerState.heldObject != 0 || ((gPlayerState.gustJarState & 0xf) != 0)) ||
                        (sub_0807BD14(&gPlayerEntity.base, index) == 0)))))) {
                    return 3;
                }
                gPlayerEntity.base.direction = (index << 3);
                return 0xf;
            }
        }
    }
    mapLayer = GetLayerByIndex(gPlayerEntity.base.collisionLayer);
    ptr1 = &gUnk_080B4468[gPlayerEntity.base.animationState & 6];
    position = COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -ptr1[0], -ptr1[1]);
    tileType = GetTileTypeAtTilePos(position, gPlayerEntity.base.collisionLayer);
    if (tileType < 0x4000) {
        direction = GetActTileForTileType(tileType);
    } else {
        direction = tileType;
    }
    animationState1 = gPlayerEntity.base.animationState;
    animationState2 = animationState1 & 0xff;

    switch (direction) {
        case SPECIAL_TILE_0:
            if (sub_0801A458(mapLayer, position, 2) == 0) {
                return 0;
            }
            mapLayer->mapData[position] = 0x4001 + (gPlayerEntity.base.animationState >> 1);
            if ((gPlayerState.flags & PL_MINISH) != 0) {
                gPlayerState.pushedObject = 0xc0;
            } else {
                gPlayerState.pushedObject = 0xa0;
            }
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            return 1;
        case ACT_TILE_40:
            if ((gPlayerState.flags & PL_MINISH) != 0) {
                return 0;
            }
            gPlayerEntity.base.action = gPlayerEntity.base.action;
            if (gPlayerState.field_0xa != 0) {
                return 0;
            }
            if ((Direction8FromAnimationState(gPlayerEntity.base.animationState)) - gPlayerState.direction !=
                DirectionNorth) {
                return 0;
            }
            if ((gPlayerEntity.base.direction & DIR_NOT_MOVING_CHECK) != 0) {
                return 0;
            }
            if (GetCollisionDataAtTilePos(position, gPlayerEntity.base.collisionLayer) != COLLISION_DATA_15) {
                return 0;
            }
            if (sub_08079778() == 0) {
                return 0;
            }

            ptr1 = &gUnk_080B4478[gPlayerEntity.base.animationState & 6];
            transition = sub_08080734((gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x) + ptr1[0],
                                      (gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y) + ptr1[1]);
            if (transition == NULL) {
                return 0;
            }
            if ((gPlayerEntity.base.animationState & 2) != 0) {
                gPlayerEntity.base.y.HALF.HI = gRoomControls.origin_y + transition->startY + 6;
            } else {
                gPlayerEntity.base.x.HALF.HI = gRoomControls.origin_x + transition->startX;
            }
            sub_08078AC0(4, 0, 1);
            return 0;
        case SPECIAL_TILE_27:
            if (sub_0801A2B0(mapLayer, position, 0xb) == 0) {
                return 0;
            }
            // Start moving the boulder.
            mapLayer->mapData[position] = SPECIAL_TILE_28 + (gPlayerEntity.base.animationState / 2);
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            gPlayerEntity.base.type = 1;
            return 1;
        case ACT_TILE_112:
            if ((gPlayerState.field_0x35 & 0x80) == 0) {
                if ((gPlayerEntity.base.frame & 1) != 0) {
                    if (sub_0801A9F0(gPlayerState.field_0x35 << 2, tileType, position) != 0) {
                        return 1;
                    }
                }
            }
            return 0;
        case ACT_TILE_58:
        case ACT_TILE_91:
        case SPECIAL_TILE_81:
            if (gPlayerState.flags & PL_MINISH) {
                return 0;
            }
            if (gPlayerEntity.base.animationState != IdleNorth) {
                return 0;
            }
            gHUD.rActionInteractTile = R_ACTION_READ;
            if ((gPlayerState.playerInput.newInput & (INPUT_ACTION | INPUT_40)) == 0) {
                return 0;
            }
            gPlayerState.mobility = 1;
            sub_080A7CFC(position, gPlayerEntity.base.collisionLayer);
            return 1;
        case ACT_TILE_26:
            if ((animationState1 & 0xff) != 0) {
                return 0;
            }
            if ((gPlayerState.flags & (PL_DRUGGED | PL_MINISH)) != 0) {
                return 0;
            }
            gHUD.rActionInteractTile = R_ACTION_OPEN;
            if ((gPlayerState.playerInput.newInput & (INPUT_ACTION | INPUT_INTERACT)) == 0) {
                return 0;
            }
            gPlayerState.mobility = 1;
            OpenSmallChest(position, gPlayerEntity.base.collisionLayer);
            return 2;
        case ACT_TILE_113:
            if (HasDungeonSmallKey() == 0) {
                return 0;
            }
            gHUD.rActionInteractTile = R_ACTION_OPEN;
            if ((gPlayerState.playerInput.newInput & (INPUT_ACTION | INPUT_INTERACT)) == 0) {
                return 0;
            }
            gPlayerState.mobility = 1;
            sub_0804B388(position, gPlayerEntity.base.collisionLayer);
            return 2;
        case ACT_TILE_61:
        case SPECIAL_TILE_64 ... SPECIAL_TILE_72:
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
            if ((Direction8FromAnimationState(gPlayerEntity.base.animationState)) - gPlayerState.direction !=
                DirectionNorth) {
                return 0;
            }
            if ((gPlayerEntity.base.direction & 0x80) != 0) {
                return 0;
            }
            if (gPlayerEntity.base.subtimer < 6) {
                return 0;
            }
            gPlayerState.jump_status = 0x81;
            gPlayerState.flags |= PL_USE_PORTAL;
            gPlayerState.queued_action = PLAYER_USEPORTAL;
            gPlayerEntity.base.zVelocity = 0x20000;
            COLLISION_OFF(&gPlayerEntity.base);
            return 1;
        case SPECIAL_TILE_11:
            if (sub_0801A2B0(mapLayer, position, 8) == 0) {
                return 0;
            }
            if ((gPlayerEntity.base.collisionLayer == 3) && (gMapTop.mapData[position] == SPECIAL_TILE_11)) {
                gMapTop.mapData[position] = SPECIAL_TILE_12 + (gPlayerEntity.base.animationState >> 1);
            } else {
                mapLayer->mapData[position] = SPECIAL_TILE_12 + (gPlayerEntity.base.animationState >> 1);
            }
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            return 1;
        case SPECIAL_TILE_90:
            if (sub_0801A2B0(mapLayer, position, 2) == 0) {
                return 0;
            }
            // Move ice block.
            mapLayer->mapData[position] = SPECIAL_TILE_91 + (gPlayerEntity.base.animationState >> 1);
            gPlayerState.pushedObject = 0x98;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            return 1;
        case SPECIAL_TILE_54:
            if (sub_0801A2B0(mapLayer, position, 0xb) == 0) {
                return 0;
            }
            mapLayer->mapData[position] = SPECIAL_TILE_55 + (gPlayerEntity.base.animationState >> 1);
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            return 1;
        case SPECIAL_TILE_62:
            if ((animationState1 & 0xff) != 0) {
                return 0;
            }
            if (((gPlayerState.field_0x35 | gPlayerState.direction) & DIR_NOT_MOVING_CHECK) != 0) {
                return 0;
            }
            if ((gPlayerEntity.base.frame & 2) == 0) {
                return 0;
            }
            mapLayer->mapData[position] = SPECIAL_TILE_63;
            gPlayerState.pushedObject = 0x82;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            return 1;
        case ACT_TILE_114:
            if ((gPlayerState.field_0x35 & 0x80) != 0) {
                return 0;
            }
            if ((gPlayerEntity.base.frame & 1) == 0) {
                return 0;
            }
            position = sub_0801A570(&gPlayerEntity.base, 1);
            if (position == 0xffff) {
                return 0;
            }
            tmp2 = (position >> 0xc) - 1;
            position &= 0xfff;
            // TODO convert to for loop?
            index = 0;
            tmp3 = 0;
            while (index < 3) {
                if ((((*(u32*)(&(((GenericEntity*)gPlayerClones[0]))->field_0x6c)) & (1 << index)) != 0) &&
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
            pushedBlock->direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            pushedBlock->x.HALF.HI = ((position & 0xfff & 0x3f) << 4) + 8 + gRoomControls.origin_x;
            pushedBlock->y.HALF.HI = ((position & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
            pushedBlock->collisionLayer = gPlayerEntity.base.collisionLayer;
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = pushedBlock->direction;
            return 1;
        case SPECIAL_TILE_43 ... SPECIAL_TILE_45:
            if (sub_0801A370(mapLayer, position) != 0) {
                mapLayer->mapData[position] = SPECIAL_TILE_48 + ((gPlayerEntity.base.animationState & 4) >> 2);
                if ((gPlayerState.flags & PL_MINISH) != 0) {
                    gPlayerState.pushedObject = 0xa0;
                } else {
                    gPlayerState.pushedObject = 0x90;
                }
                gPlayerState.queued_action = PLAYER_PUSH;
                gPlayerState.flags |= PL_BUSY;
                gPlayerEntity.base.x.HALF.LO = 0;
                gPlayerEntity.base.y.HALF.LO = 0;
                gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
                return 1;
            } else {
                return 0;
            }
        case SPECIAL_TILE_74:
            if (sub_0801A458(mapLayer, position, 8) == 0) {
                return 0;
            }
            mapLayer->mapData[position] = SPECIAL_TILE_75 + (gPlayerEntity.base.animationState >> 1);
            if ((gPlayerState.flags & PL_MINISH) != 0) {
                gPlayerState.pushedObject = 0xc0;
            } else {
                gPlayerState.pushedObject = 0xa0;
            }
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            return 1;
        case SPECIAL_TILE_82:
            if (gPlayerState.field_0x35 != 0) {
                return 0;
            }
            SetTile(SPECIAL_TILE_84, position, gPlayerEntity.base.collisionLayer);
            return 4;
        case SPECIAL_TILE_83:
            if (gPlayerState.field_0x35 != 6) {
                return 0;
            }
            SetTile(SPECIAL_TILE_84, position, gPlayerEntity.base.collisionLayer);
            return 4;
        case SPECIAL_TILE_85:
            position--;
            // fallthrough
        case SPECIAL_TILE_86:
            if (gPlayerState.field_0x35 != 0) {
                return 0;
            }
            if ((gPlayerEntity.base.y.HALF.HI & 0xf) < 10) {
                return 0;
            }
            for (index = 0; index < 3; index++) {
                if (sub_0801A8D0(gPlayerClones[index], 0) == position) {
                    SetTile(SPECIAL_TILE_89, position, gPlayerEntity.base.collisionLayer);
                    return 4;
                }
            }
            return 0;
        case SPECIAL_TILE_87:
            position -= 0x40;
            // fallthrough
        case SPECIAL_TILE_88:
            if (gPlayerState.field_0x35 != 6) {
                return 0;
            }
            if ((gPlayerEntity.base.x.HALF.HI & 0xf) < 10) {
                return 0;
            }
            for (index = 0; index < 3; index++) {
                if (sub_0801A8D0(gPlayerClones[index], 6) == position) {
                    SetTile(SPECIAL_TILE_89, position, gPlayerEntity.base.collisionLayer);
                    return 4;
                }
            }
            return 0;
        case SPECIAL_TILE_95:
            animationState3 = 2;
            animationState3 &= animationState1;
            if (animationState3 == 0) {
                return 0;
            }
            if (((gPlayerState.field_0x35 | gPlayerState.direction) & DIR_NOT_MOVING_CHECK) != 0) {
                return 0;
            }
            if ((gPlayerEntity.base.frame & 1) == 0) {
                return 0;
            }
            SetTile(SPECIAL_TILE_116, position, gPlayerEntity.base.collisionLayer);
            gPlayerState.pushedObject = 0xa0;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = Direction8FromAnimationState(gPlayerEntity.base.animationState);
            return 1;
        case SPECIAL_TILE_125:
            animationState3 = gPlayerEntity.base.animationState;
            if ((animationState2) != 4) {
                return 0;
            }
            if (((gPlayerState.field_0x35 | gPlayerState.direction) & DIR_NOT_MOVING_CHECK) != 0) {
                return 0;
            }
            if ((gPlayerEntity.base.frame & 1) == 0) {
                return 0;
            }
            SetTile(SPECIAL_TILE_116, position, gPlayerEntity.base.collisionLayer);
            SetActTileAtTilePos(ACT_TILE_13, position, gPlayerEntity.base.collisionLayer);
            return 1;
        default:
            return 0;
    }
}

bool32 sub_0801A2B0(MapLayer* mapLayer, u32 position, u32 collisionType) {
    u16 uVar1;
    s16 x;
    s16 y;
    u16 temp4;

    uVar1 = gUnk_080B4488[gPlayerEntity.base.animationState >> 1];
    if ((((gPlayerState.field_0x35 | gPlayerState.direction) & DIR_NOT_MOVING_CHECK) == 0) &&
        ((gPlayerEntity.base.frame & 1) != 0)) {
        position = (u16)(position - (-uVar1)); // necessary for match
        temp4 = GetActTileForTileType(GetTileTypeAtTilePos(position, gPlayerEntity.base.collisionLayer));
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
                if ((mapLayer->collisionData[(position)] != 0x28)) {
                    x = (((position & 0x3f) * 0x10 + (u32)gRoomControls.origin_x));
                    y = (((position >> 6) * 0x10 + (u32)gRoomControls.origin_y));
                    if ((!IsTileCollision(mapLayer->collisionData, x, y, collisionType))) {
                        return TRUE;
                    }
                }
                break;
        }
    }
    return FALSE;
}

bool32 sub_0801A370(MapLayer* mapLayer, u32 position) {
    MapLayer* topLayer;
    u32 tileType;
    u32 pos;
    s32 offset;
    s32 temp;

    if ((gPlayerEntity.base.animationState & 2) == 0) {
        return FALSE;
    }
    if (!sub_0801A4F8()) {
        return FALSE;
    }
    topLayer = GetLayerByIndex(LAYER_TOP);
    offset = gUnk_080B4488[gPlayerEntity.base.animationState >> 1];
    pos = position + offset;
    tileType = GetTileTypeAtTilePos(pos, gPlayerEntity.base.collisionLayer);
    switch (tileType) {
        case SPECIAL_TILE_43:
            pos += offset;
            break;
        case SPECIAL_TILE_44 ... SPECIAL_TILE_47:
            return TRUE;
    }
    if (topLayer->collisionData[pos - 0x80] == 0x46) {
        return FALSE;
    }
    switch ((u16)GetActTileForTileType(GetTileTypeAtTilePos(pos, gPlayerEntity.base.collisionLayer))) {
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
    switch (temp = mapLayer->collisionData[pos]) {
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

bool32 sub_0801A458(MapLayer* mapLayer, u32 position, u32 collisionType) {
    u32 tileType;
    u32 pos;
    s32 offset = gUnk_080B4488[gPlayerEntity.base.animationState >> 1];
    if (sub_0801A4F8()) {
        pos = position + offset;
        tileType = GetTileTypeAtTilePos(pos, gPlayerEntity.base.collisionLayer);
        switch (GetActTileForTileType(tileType)) {
            case 0x52:
            case 0x26:
            case 0x27:
            case 0x29:
            case 0x74:
                return FALSE;
            default:
                if (((mapLayer->collisionData[pos] != 0x28) &&
                     (!IsTileCollision(mapLayer->collisionData, (pos & 0x3f) * 0x10 + gRoomControls.origin_x,
                                       (pos >> 6) * 0x10 + gRoomControls.origin_y, collisionType))) &&
                    (0xe < (u32)mapLayer->collisionData[pos] - 1)) {
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
        if ((gPlayerState.direction & DIR_NOT_MOVING_CHECK) != 0) {
            return FALSE;
        }
        if (gPlayerState.direction != gPlayerEntity.base.direction) {
            return FALSE;
        }
        tmp = (((gPlayerEntity.base.direction + 4) & DirectionWest) >> 3);
        if ((gUnk_080B44A0[tmp] & gPlayerEntity.base.collisions) == 0) {
            return FALSE;
        }
    } else {
        if (((gPlayerState.field_0x35 | gPlayerState.direction) & DIR_NOT_MOVING_CHECK) != 0) {
            return FALSE;
        }
        if ((gPlayerEntity.base.frame & 1) == 0) {
            return FALSE;
        }
    }
    return TRUE;
}

u32 sub_0801A570(Entity* this, u32 param_2) {
    MapLayer* layer;
    u32 tileType;
    u32 position;
    u32 index1;
    u32 index2;
    u16* tileTypes;
    u8* collisionData;

    if (this == NULL) {
        return 0xffff;
    }
    layer = GetLayerByIndex(this->collisionLayer);
    tileTypes = layer->tileTypes;
    index1 = 4;
    index2 = 2;
    switch (this->animationState >> 1) {
        case 0:
        default:
            position = COORD_TO_TILE_OFFSET(this, 0, 10);
            do {
                if (tileTypes[layer->mapData[position]] == 0x370)
                    break;
                position--;
                index1--;
            } while (index1 != 0);

            position = position - 0x40;
            do {
                if (tileTypes[layer->mapData[(position)]] != 0x374)
                    break;
                index2++;
                position -= 0x40;
            } while (index2 < 4);

            if (param_2 == 0) {
                return position;
            }

            index1 = GetTileTypeAtTilePos(position, this->collisionLayer);
            if ((index1 - 0x369) > 1) {
                position = 0xffff;
            } else {
                collisionData = layer->collisionData - 0x40 + position;
                for (index1 = 0; index1 < index2; index1++) {
                    if (collisionData[index1] != 0) {
                        position = 0xffff;
                        break;
                    }
                }
            }
            break;
        case 1:
            position = COORD_TO_TILE_OFFSET(this, -10, 0);
            do {
                if (layer->tileTypes[layer->mapData[position]] == 0x370)
                    break;
                position += 0x40;
                index1--;
            } while (index1 != 0);

            position = position - 0x40;
            do {
                if (tileTypes[layer->mapData[(position)]] != 0x374)
                    break;
                index2++;
                position -= 0x40;
            } while (index2 < 4);

            if (param_2 == 0) {
                return position;
            }

            index1 = GetTileTypeAtTilePos(position, this->collisionLayer);
            if (!(index1 == 0x369) && !(index1 == 0x36d))
                position = 0xffff;
            else {
                collisionData = layer->collisionData + (position + index2);
                for (index1 = 0; index1 < index2; index1++) {
                    if (collisionData[index1 * 0x40] != 0) {
                        position = 0xffff;
                        break;
                    }
                }
            }
            break;
        case 2:
            position = COORD_TO_TILE_OFFSET(this, 0, -10);
            do {
                if (layer->tileTypes[layer->mapData[position]] == 0x36f)
                    break;
                position++;
                index1--;
            } while (index1 != 0);

            position = position - 1;
            do {
                if (tileTypes[layer->mapData[position]] != 0x372)
                    break;
                index2++;
                position--;
            } while (index2 < 4);

            if (param_2 == 0) {
                return position;
            }

            index1 = GetTileTypeAtTilePos(position, this->collisionLayer);
            if (!(index1 == 0x369) && !(index1 == 0x36b))
                position = 0xffff;
            else {
                collisionData = layer->collisionData + (position + (index2 * 0x40));
                for (index1 = 0; index1 < index2; index1++) {
                    if (collisionData[index1] != 0) {
                        position = 0xffff;
                        break;
                    }
                }
            }
            break;
        case 3:
            position = COORD_TO_TILE_OFFSET(this, 10, 0);
            do {
                if (layer->tileTypes[layer->mapData[position]] == 0x36f)
                    break;
                position -= 0x40;
                index1--;
            } while (index1 != 0);

            position = position - 1;
            do {
                if (tileTypes[layer->mapData[position]] != 0x372)
                    break;
                index2++;
                position--;
            } while (index2 < 4);

            if (param_2 == 0) {
                return position;
            }

            index1 = GetTileTypeAtTilePos(position, this->collisionLayer);
            if (!(index1 == 0x369) && !(index1 == 0x36c))
                position = 0xffff;
            else {
                collisionData = layer->collisionData - 1 + position;
                for (index1 = 0; index1 < index2; index1++) {
                    if (collisionData[index1 * 0x40] != 0) {
                        position = 0xffff;
                        break;
                    }
                }
            }
    }
    if (param_2 != 0) {
        position |= index2 << 0xc;
    }
    return position;
}

u32 sub_0801A8D0(Entity* this, u32 param_2) {
    u16* mapData;
    u32 tileIndex;
    u32 position;

    if (this == NULL)
        return 0xffff;

    mapData = GetLayerByIndex(this->collisionLayer)->mapData;
    if (param_2 == 0) {
        position = COORD_TO_TILE_OFFSET(this, 0, 8);
        tileIndex = mapData[position];
        if (tileIndex == SPECIAL_TILE_85) {
            return position - 1;
        }
        if (tileIndex == SPECIAL_TILE_86) {
            return position;
        }
    } else {
        position = COORD_TO_TILE_OFFSET(this, 8, 0);
        tileIndex = mapData[position];
        if (tileIndex == SPECIAL_TILE_87) {
            return position - 0x40;
        }
        if (tileIndex == SPECIAL_TILE_88) {
            return position;
        }
    }
    return 0xffff;
}

bool32 sub_0801A980(void) {
    u16 tileType;
    const s16* ptr;
    GetLayerByIndex(gPlayerEntity.base.collisionLayer); // TODO result unused?
    ptr = &gUnk_080B44A8[gPlayerEntity.base.animationState & 6];
    tileType = GetTileTypeAtTilePos(COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -ptr[0], -ptr[1]),
                                    gPlayerEntity.base.collisionLayer);
    if (tileType < 0x4000) {
        GetActTileForTileType(tileType);
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
        return sub_0801AA58(&gPlayerEntity.base, param_3, param_1);
    }

    return FALSE;
}

bool32 sub_0801AA58(Entity* this, u32 param_2, u32 param_3) {
    MapLayer* mapLayer;
    Entity* object;
    u32 temp;

    mapLayer = GetLayerByIndex(this->collisionLayer);
    if (((mapLayer->collisionData[param_2 + gUnk_080B4488[param_3 >> 3]] == 0) ||
         ((u8)(mapLayer->collisionData[param_2 + gUnk_080B4488[param_3 >> 3]] - 0x20) < 0x20))) {

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

void RenderMapLayerToSubTileMap(u16* subTileMap, MapLayer* mapLayer) {
    u16* subTiles;
    u16* mapData;
    u16* mapDataOriginal;
    u16 tileY;
    u16 tileX;
    u32 tilePosAndLayer;
    u32 layerIndex;
    // Index into the tileSet at MapLayer.tiles
    u32 tileSetIndex;

    if (mapLayer == &gMapBottom) {
        layerIndex = 1;
    } else {
        layerIndex = 2;
    }
    tilePosAndLayer = layerIndex << 0xc;
    mapDataOriginal = mapLayer->mapDataOriginal;
    mapData = mapLayer->mapData;

    for (tileY = 0; tileY < 0x40; tileY++) {
        for (tileX = 0; tileX < 0x10; tileX++) {
            // inner loop seems to be unrolled four times for some reason?

            if (mapData[0] < 0x4000) {
                tileSetIndex = mapData[0] * 4;
            } else {
                tileSetIndex = GetTileSetIndexForSpecialTile(tilePosAndLayer, mapDataOriginal[0]);
            }
            subTiles = mapLayer->subTiles + tileSetIndex;
            subTileMap[0] = subTiles[0];
            subTileMap[1] = subTiles[1];
            subTileMap[0x80 + 0] = subTiles[2];
            subTileMap[0x80 + 1] = subTiles[3];
            subTileMap += 2;

            if (mapData[1] < 0x4000) {
                tileSetIndex = mapData[1] * 4;
            } else {
                tileSetIndex = GetTileSetIndexForSpecialTile(tilePosAndLayer + 1, mapDataOriginal[1]);
            }
            subTiles = mapLayer->subTiles + tileSetIndex;
            subTileMap[0] = subTiles[0];
            subTileMap[1] = subTiles[1];
            subTileMap[0x80 + 0] = subTiles[2];
            subTileMap[0x80 + 1] = subTiles[3];
            subTileMap += 2;

            if (mapData[2] < 0x4000) {
                tileSetIndex = mapData[2] * 4;
            } else {
                tileSetIndex = GetTileSetIndexForSpecialTile(tilePosAndLayer + 2, mapDataOriginal[2]);
            }
            subTiles = mapLayer->subTiles + tileSetIndex;
            subTileMap[0] = subTiles[0];
            subTileMap[1] = subTiles[1];
            subTileMap[0x80 + 0] = subTiles[2];
            subTileMap[0x80 + 1] = subTiles[3];
            subTileMap += 2;

            if (mapData[3] < 0x4000) {
                tileSetIndex = mapData[3] * 4;
            } else {
                tileSetIndex = GetTileSetIndexForSpecialTile(tilePosAndLayer + 3, mapDataOriginal[3]);
            }
            subTiles = mapLayer->subTiles + tileSetIndex;
            subTileMap[0] = subTiles[0];
            subTileMap[1] = subTiles[1];
            subTileMap[0x80 + 0] = subTiles[2];
            subTileMap[0x80 + 1] = subTiles[3];
            subTileMap += 2;

            mapData += 4;
            mapDataOriginal += 4;
            tilePosAndLayer = (u16)(tilePosAndLayer + 4);
        }
        subTileMap = subTileMap + 0x80;
    }
}

u32 GetTileSetIndexForSpecialTile(u32 tilePosAndLayer, u32 tileIndex) {
    u32 index;
    SpecialTileEntry* ptr;
    u32 count;

    ptr = gTilesForSpecialTiles;
    count = gRoomVars.tileEntityCount;
    for (index = 0; index < count; ptr++, index++) {
        if (tilePosAndLayer == ptr->tilePosAndLayer) {
            return ptr->tileIndex * 4;
        }
    }
    return tileIndex * 4;
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
                if (ptr->tileType == GetTileTypeAtTilePos(position, 1)) {
                    if (gUnk_080B44B8[ptr->unk_a] != 0) {
                        sub_0801AD6C(ptr, position);
                        break;
                    }
                }
            }

            for (ptr = gUnk_080B44C2; ptr->tileType != 0xffff; ptr++) {
                if (ptr->tileType == GetTileTypeAtTilePos(position, 2)) {
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

void sub_0801AD6C(const Data* param_1, u32 tilePos) {
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
            tmpX1 = ((u16)tilePos & 0x3f) * 0x10 + 8;
            entity->x.HALF.HI = tmpX1 + gRoomControls.origin_x;
            tmpY1 = (s16)((tilePos & 0xfc0) >> 2) + 8;
            entity->y.HALF.HI = tmpY1 + gRoomControls.origin_y;
            entity->collisionLayer = 0;
            ResolveCollisionLayer(entity);
            AppendEntityToList(entity, gEntityListLUT[entity->kind]);
        }
    } else {
        manager = GetEmptyManager();
        if (manager != NULL) {
            manager->kind = (u8)param_1->kind;
            manager->id = (u8)param_1->id;
            manager->type = (u8)param_1->type;
            manager->type2 = (u8)param_1->type2;
            // TODO are these fields common for all managers or does this usually create managers of certain types?
            tmpX2 = ((u16)tilePos & 0x3f) * 0x10 + 8;
            *(u16*)(&manager[1].timer + 10) = tmpX2 + gRoomControls.origin_x;
            tmpY2 = (s16)((tilePos & 0xfc0) >> 2) + 8;
            *(u16*)(&manager[1].timer + 12) = tmpY2 + gRoomControls.origin_y;
            AppendEntityToList((Entity*)manager, gEntityListLUT[manager->kind]);
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
    gRoomControls.tileSet = (u32)NULL;
    LoadRoomTileSet();
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
            RenderMapLayerToSubTileMap(gMapDataBottomSpecial, &gMapBottom);
        }
        if (gMapTop.bgSettings != NULL) {
            RenderMapLayerToSubTileMap(gMapDataTopSpecial, &gMapTop);
        }
    } else {
        sub_0807C4F8();
    }
    UpdateScrollVram();
}

void SetMultipleTiles(const TileData* tileData, u32 basePosition, u32 layer) {
    while (tileData->tileIndex != -1) {
        SetTile((u16)tileData->tileIndex, basePosition + tileData->tilePosOffset, layer);
        tileData++;
    }
}

// Add a new entry at the end of gTilesForSpecialTiles
void RegisterInteractTile(u32 tileIndex, u32 tilePos, u32 layer) {
    u32 index;
    if ((tileIndex < 0x4000) && (gRoomTransition.field30 == 0)) {
        index = gRoomVars.tileEntityCount;
        if (index < 0x100) {
            gTilesForSpecialTiles[index].tileIndex = tileIndex;
            gTilesForSpecialTiles[index].tilePosAndLayer = (layer << 12) | tilePos;
            gRoomVars.tileEntityCount = index + 1;
        }
    }
}

void UnregisterInteractTile(u32 tilePos, s32 layer) {
    u32 count;
    SpecialTileEntry* ptr;
    u32 tilePosAndLayer;
    u32 t;

    layer = layer << 12;
    tilePosAndLayer = tilePos | layer;
    ptr = gTilesForSpecialTiles;
    count = gRoomVars.tileEntityCount;
    t = 0;

    if (t >= count) {
        return;
    }

    if (tilePosAndLayer == ptr->tilePosAndLayer) {
        count--;
        gRoomVars.tileEntityCount = count;
        ptr[0] = ptr[count];
        return;
    }
    while (tilePosAndLayer != ptr->tilePosAndLayer) {
        ptr++;
        t++;
        if (t >= count) {
            return;
        }
    }
    count--;
    gRoomVars.tileEntityCount = count;
    ptr = gTilesForSpecialTiles;
    ptr[t] = ptr[count];
}

const struct_080B44D0 gUnk_080B44D0[] = {
    { 0x67, SPECIAL_TILE_132 }, { 0x68, SPECIAL_TILE_133 }, { 0x69, SPECIAL_TILE_134 }, { 0x6a, SPECIAL_TILE_135 },
    { 0x6b, SPECIAL_TILE_136 }, { 0x27, SPECIAL_TILE_131 }, { 0x23, SPECIAL_TILE_141 }, { 0x0, 0x0 },
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
    width = gRoomControls.width / 16;
    height = gRoomControls.height / 16;
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            for (ptr = gUnk_080B44D0; ptr->collision != 0; ptr++) {
                if (ptr->collision == *collisionData) {
                    SetTile(ptr->tileIndex, y * 0x40 + x, LAYER_BOTTOM);
                    break;
                }
            }
            collisionData++;
        }
        collisionData = collisionData + (0x40 - width);
    }
}
