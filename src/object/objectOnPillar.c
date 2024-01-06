/**
 * @file objectOnPillar.c
 * @ingroup Objects
 *
 * @brief Object on Pillar object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 tileIndex;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 tilePos;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unk_78[0x4];
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unk_7f;
    /*0x80*/ u8 unk_80[0x4];
    /*0x84*/ u16 hitFlag;
    /*0x86*/ u16 flag;
} ObjectOnPillarEntity;

extern bool32 sub_080896B0(void); // pushableStatue

extern s16 gUnk_080B4488[];

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[10 + 0x14];
    /*0x86*/ u16 hitFlag;
} EntityWithHitFlag;

void sub_080970F4(ObjectOnPillarEntity*);
void sub_080971E0(ObjectOnPillarEntity*);
bool32 sub_08097194(ObjectOnPillarEntity*);
bool32 sub_08097008(ObjectOnPillarEntity*);
bool32 sub_08097144(ObjectOnPillarEntity*);
void sub_08097098(ObjectOnPillarEntity*);
u32 sub_08097074(u32);
bool32 sub_08097348(u32);
void ObjectOnPillar_Init(ObjectOnPillarEntity*);
void ObjectOnPillar_Action1(ObjectOnPillarEntity*);
void ObjectOnPillar_Action2(ObjectOnPillarEntity*);
void ObjectOnPillar_Action3(ObjectOnPillarEntity*);
void ObjectOnPillar_Action4(ObjectOnPillarEntity*);
void ObjectOnPillar_SubAction0(ObjectOnPillarEntity*);
void ObjectOnPillar_SubAction1(ObjectOnPillarEntity*);

void ObjectOnPillar(ObjectOnPillarEntity* this) {
    static void (*const ObjectOnPillar_Actions[])(ObjectOnPillarEntity*) = {
        ObjectOnPillar_Init,    ObjectOnPillar_Action1, ObjectOnPillar_Action2,
        ObjectOnPillar_Action3, ObjectOnPillar_Action4,
    };
    ObjectOnPillar_Actions[super->action](this);
}

void ObjectOnPillar_Init(ObjectOnPillarEntity* this) {
    static const u8 gUnk_08123264[] = {
        0, 2, 4, 3, 7, 5, 0, 0,
    };
    if (CheckFlags(this->flag) == 0) {
        super->action = 1;
        super->speed = 0x80;
        super->updatePriority = 3;
        super->spriteSettings.draw = 1;
        super->spritePriority.b1 = 1;
        super->spriteSettings.shadow = 1;
        super->spriteOffsetY = 4;
        super->hitbox = (Hitbox*)&gUnk_080FD1F4;
        super->carryFlags = 1;
        this->unk_72 = 0;
        super->collisionLayer = this->unk_7d >> 4;
        UpdateSpriteForCollisionLayer(super);
        sub_080970F4(this);
        super->frameIndex = gUnk_08123264[super->type];
    } else {
        super->x.HALF.HI = (this->unk_7c | ((this->unk_7d & 0xf) << 8)) + gRoomControls.origin_x;
        super->y.HALF.HI = (this->unk_7e | ((this->unk_7f & 0xf) << 8)) + gRoomControls.origin_y;
        super->collisionLayer = this->unk_7f >> 4;
        sub_080971E0(this);
    }
}

void ObjectOnPillar_Action1(ObjectOnPillarEntity* this) {
    if (sub_08097194(this) == FALSE) {
        if (sub_08097008(this)) {
            super->action = 3;
        } else {
            RegisterCarryEntity(super);
        }
    }
}

void ObjectOnPillar_Action2(ObjectOnPillarEntity* this) {
    static void (*const ObjectOnPillar_SubActions[])(ObjectOnPillarEntity*) = {
        ObjectOnPillar_SubAction0,
        ObjectOnPillar_SubAction1,
    };
    if (this->unk_76 != 0) {
        sub_08097144(this);
    } else {
        if (gPlayerState.heldObject == 0) {
            super->subAction = 6;
        }
        ObjectOnPillar_SubActions[super->subAction - 5](this);
    }
}

void ObjectOnPillar_SubAction0(ObjectOnPillarEntity* this) {
    static const s8 gUnk_08123274[] = { 0, 14, -14, 2, 0, -14, 14, 2 };
    const s8* ptr;
    if (this->unk_72 == 0) {
        this->unk_72 = 1;
        ptr = &gUnk_08123274[gPlayerEntity.base.animationState];
        PositionRelative(super, &gPlayerEntity.base, ptr[0] << 0x10, ptr[1] << 0x10);
    }
    sub_08097008(this);
    if (sub_080896B0()) {
        gPlayerState.queued_action = PLAYER_PULL;
        gPlayerState.field_0x38 = 0x20;
        gPlayerState.flags |= PL_BUSY;
        gPlayerEntity.base.x.HALF.LO = 0;
        gPlayerEntity.base.y.HALF.LO = 0;
        super->direction = ((gPlayerEntity.base.animationState ^ 4) << 2);
        sub_08097098(this);
    }
}

void ObjectOnPillar_SubAction1(ObjectOnPillarEntity* this) {
    super->action = 1;
    this->unk_72 = 0;
}

void ObjectOnPillar_Action3(ObjectOnPillarEntity* this) {
    if (sub_08097144(this)) {
        super->action = 1;
    }
}

void ObjectOnPillar_Action4(ObjectOnPillarEntity* this) {
}

bool32 sub_08097008(ObjectOnPillarEntity* this) {
    Entity* effect;
    u32 tileType = GetTileTypeAtTilePos(this->tilePos, super->collisionLayer);
    if (tileType != SPECIAL_TILE_54) {
        switch (sub_08097074(tileType)) {
            case 1:
                super->direction = (((tileType - 0x37) & 3) << 3);
                sub_08097098(this);
                return TRUE;
            case 2:
                this->tileIndex = tileType;
                break;
            default:
                effect = CreateObject(SPECIAL_FX, FX_ROCK, 0);
                if (effect != NULL) {
                    CopyPosition(super, effect);
                }
                DeleteEntity(super);
                break;
        }
    }
    return FALSE;
}

u32 sub_08097074(u32 tileType) {

    static const KeyValuePair gUnk_0812327C[] = {
        { SPECIAL_TILE_55, 1 }, { SPECIAL_TILE_56, 1 }, { SPECIAL_TILE_57, 1 },
        { SPECIAL_TILE_58, 1 }, { TILE_TYPE_122, 2 },   { TILE_TYPE_120, 2 },
    };
    static const u16 gUnk_0812327CEnd = 0;
    const KeyValuePair* entry = gUnk_0812327C;
    for (; entry->key != 0; entry++) {
        if (entry->key == tileType) {
            return entry->value;
        }
    }
    return 0;
}

void sub_08097098(ObjectOnPillarEntity* this) {
    u16 tileType;
    this->unk_76 = 0x20;
    EnqueueSFX(SFX_10F);
    SetTile(this->tileIndex, this->tilePos, super->collisionLayer);
    tileType = GetTileTypeAtTilePos(gUnk_080B4488[super->direction >> 3] + this->tilePos, super->collisionLayer);
    if ((tileType == 0x79) || tileType == 0x77) {
        super->spriteOffsetY = 2;
    }
}

void sub_080970F4(ObjectOnPillarEntity* this) {
    this->tilePos = COORD_TO_TILE(super);
    this->tileIndex = GetTileIndex(this->tilePos, super->collisionLayer);
    SetTile(SPECIAL_TILE_54, this->tilePos, super->collisionLayer);
}

bool32 sub_08097144(ObjectOnPillarEntity* this) {
    LinearMoveUpdate(super);
    sub_0800445C(super);
    if (GetActTileAtEntity(super) == ACT_TILE_25) {
        super->spriteOffsetY = 2;
    }
    if ((--this->unk_76 == 0) && sub_08097194(this) == FALSE) {
        super->spriteOffsetY = 4;
        sub_080970F4(this);
        return TRUE;
    } else {
        return FALSE;
    }
}

bool32 sub_08097194(ObjectOnPillarEntity* this) {
    if (sub_0800442E(super)) {
        return TRUE;
    } else {
        u32 tileType = GetTileTypeAtEntity(super);
        if (tileType == TILE_TYPE_113 || tileType == TILE_TYPE_114 || tileType == SPECIAL_TILE_32) {
            SetFlag(this->flag);
            EnqueueSFX(SFX_10B);
            sub_080971E0(this);
            return TRUE;
        } else {
            return FALSE;
        }
    }
    return FALSE;
}

void sub_080971E0(ObjectOnPillarEntity* this) {
    EntityWithHitFlag* entity;
    u32 tilePos;

    entity = (EntityWithHitFlag*)CreateObject(SPECIAL_FX, FX_DASH, 0x40);
    if (entity != NULL) {
        PositionRelative(super, &entity->base, -0x80000, 0x20000);
    }
    entity = (EntityWithHitFlag*)CreateObject(SPECIAL_FX, FX_DASH, 0x40);
    if (entity != NULL) {
        PositionRelative(super, &entity->base, 0x80000, 0x20000);
    }
    switch (super->type) {
        case 0:
        default:
            super->action = 4;
            super->frameIndex = 1;
            super->spritePriority.b0 = 7;
            SetTile(0, COORD_TO_TILE(super), super->collisionLayer);
            DeleteThisEntity();
            break;
        case 1:
            tilePos = COORD_TO_TILE(super);
            if (sub_08097348(tilePos) == 0) {
                SetTileType(TILE_TYPE_115, tilePos, super->collisionLayer);
            }
            DeleteThisEntity();
            break;
        case 2:
            entity = (EntityWithHitFlag*)CreateObject(HITTABLE_LEVER, 0, 0);
            if (entity != NULL) {
                (entity->base).x.HALF.HI = (super->x.HALF.HI & 0xfff0) + 8;
                (entity->base).y.HALF.HI = (super->y.HALF.HI & 0xfff0) + 8;
                (entity->base).collisionLayer = super->collisionLayer;
                entity->hitFlag = this->hitFlag;
            }
            DeleteThisEntity();
            break;
        case 3:
            entity = (EntityWithHitFlag*)CreateObject(HITTABLE_LEVER, 1, 0);
            if (entity != NULL) {
                (entity->base).x.HALF.HI = (super->x.HALF.HI & 0xfff0) + 8;
                (entity->base).y.HALF.HI = (super->y.HALF.HI & 0xfff0) + 8;
                (entity->base).collisionLayer = super->collisionLayer;
                entity->hitFlag = this->hitFlag;
            }
            DeleteThisEntity();
            break;
    }
}

bool32 sub_08097348(u32 tilePos) {
    u32 index;
    TileEntity* tileEntity = gSmallChests;
    for (index = 0; index < ARRAY_COUNT(gSmallChests); index++, tileEntity++) {
        if (tileEntity->tilePos == tilePos) {
            return CheckLocalFlag(tileEntity->localFlag);
        }
    }
    return FALSE;
}
