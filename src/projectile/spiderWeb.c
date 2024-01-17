/**
 * @file spiderWeb.c
 * @ingroup Projectiles
 *
 * @brief Spider Web Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[28];
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unused2;
    /*0x86*/ u16 unk_86;
} SpiderWebEntity;

typedef struct {
    u8 b0;
    u8 direction;
} PACKED Struct_0812A074;

void SpiderWeb_OnTick(SpiderWebEntity*);
void SpiderWeb_OnCollision(SpiderWebEntity*);
void sub_080AAAA8(SpiderWebEntity*);
void sub_080AAA68(Entity*);
void sub_080AA9E0(Entity*);
void SpiderWeb_OnGrabbed(SpiderWebEntity*);
void SpiderWeb_Init(SpiderWebEntity*);
void SpiderWeb_Action1(SpiderWebEntity*);
void SpiderWeb_Action2(SpiderWebEntity*);
void SpiderWeb_Action3(SpiderWebEntity*);
void SpiderWeb_SubAction0(SpiderWebEntity*);
void SpiderWeb_SubAction1(SpiderWebEntity*);

void SpiderWeb(SpiderWebEntity* this) {
    static void (*const SpiderWeb_Functions[])(SpiderWebEntity*) = {
        SpiderWeb_OnTick,
        SpiderWeb_OnCollision,
        (void (*)(SpiderWebEntity*))DeleteEntity,
        (void (*)(SpiderWebEntity*))DeleteEntity,
        (void (*)(SpiderWebEntity*))DeleteEntity,
        SpiderWeb_OnGrabbed,
    };
    SpiderWeb_Functions[GetNextFunction(super)](this);
}

void SpiderWeb_OnTick(SpiderWebEntity* this) {
    static void (*const SpiderWeb_Actions[])(SpiderWebEntity*) = {
        SpiderWeb_Init,
        SpiderWeb_Action1,
        SpiderWeb_Action2,
        SpiderWeb_Action3,
    };
    SpiderWeb_Actions[super->action](this);
}

void SpiderWeb_OnCollision(SpiderWebEntity* this) {
    static const s8 typeSpritOffsets[] = {
        -8, -4, 6, 1, 4, -11, -3, 3, -7, -3, 6, 4, -4, -11, 3, 3,
    };
    Entity* object;

    if (super->contactFlags == (CONTACT_NOW | 0x7)) {
        super->action = 3;
        super->timer = 90;
        COLLISION_OFF(super);
        InitAnimationForceUpdate(super, super->type + 0x10);
        object = CreateObject(FLAME, 3, 0);
        if (object != NULL) {
            object->type2 = 0x5a;
            object->spritePriority.b0 = 3;
            object->spriteOffsetX = typeSpritOffsets[super->type * 4];
            object->spriteOffsetY = typeSpritOffsets[super->type * 4 + 1];
            object->parent = super;
        }
        object = CreateObject(FLAME, 3, 0);
        if (object != NULL) {
            object->type2 = 0x5a;
            object->spritePriority.b0 = 3;
            object->spriteOffsetX = typeSpritOffsets[super->type * 4 + 2];
            object->spriteOffsetY = typeSpritOffsets[super->type * 4 + 3];
            object->parent = super;
        }
    } else {
        InitAnimationForceUpdate(super, super->type + 0x10);
        EnqueueSFX(SFX_101);
    }
}

void SpiderWeb_OnGrabbed(SpiderWebEntity* this) {
    u32 animationState;

    if (super->subAction == 0) {
        animationState = (gPlayerEntity.base.animationState >> 1);
        if (animationState != super->type) {
            super->gustJarState &= ~4;
            if (AnimationStateFlip90(animationState) != super->type) {
                return;
            }
            super->iframes = 0xe2;
            SpiderWeb_OnCollision(this);
            return;
        }
        super->subAction = 1;
        InitAnimationForceUpdate(super, animationState + 8);
    }
    if (sub_0806F520(super)) {
        UpdateAnimationSingleFrame(super);
        if ((super->frame & 0x10) != 0) {
            super->frame &= ~0x10;
            EnqueueSFX(SFX_100);
        }
        if ((super->frame & ANIM_DONE) != 0) {
            sub_080AAAA8(this);
        }
    } else {
        if ((super->frame & 1) != 0) {
            sub_080AAAA8(this);
        } else {
            InitAnimationForceUpdate(super, super->type + 0x10);
        }
    }
}

void SpiderWeb_Init(SpiderWebEntity* this) {
    static const Hitbox* const typeHitboxes[] = {
        &gUnk_080FD41C,
        &gUnk_080FD424,
        &gUnk_080FD42C,
        &gUnk_080FD434,
    };
    if (CheckFlags(this->unk_86) != 0) {
        DeleteThisEntity();
    }
    super->action = 1;
    super->gustJarFlags = 1;
    super->carryFlags = 1;
    super->hitbox = (Hitbox*)typeHitboxes[super->type];
    this->unk_84 = 0;
    InitAnimationForceUpdate(super, super->type);
    sub_080AAA68(super);
}

void SpiderWeb_Action1(SpiderWebEntity* this) {
    if ((super->frame & ANIM_DONE) == 0) {
        UpdateAnimationSingleFrame(super);
    }
    sub_080AA9E0(super);
}

void SpiderWeb_Action2(SpiderWebEntity* this) {
    static void (*const SpiderWeb_SubActions[])(SpiderWebEntity*) = {
        SpiderWeb_SubAction0,
        SpiderWeb_SubAction1,
    };
    sub_0806FBB4(super);
    SpiderWeb_SubActions[super->subAction - 5](this);
}

void SpiderWeb_SubAction0(SpiderWebEntity* this) {
    static const s8 gUnk_0812A064[] = { 0, 17, -15, 4, 0, -11, 15, 4 };
    static const s8 gUnk_0812A06C[] = { 0, 2, -2, 0, 0, -2, 2, 0 };

    u32 tmp;
    u16 x;
    u16 y;
    Entity* entity;

    entity = &gPlayerEntity.base;

    if (this->unk_84 == 0) {
        tmp = super->type;
        if (tmp * 2 - entity->animationState == 0) {
            x = gUnk_0812A064[tmp * 2] + super->x.HALF.HI;
            y = gUnk_0812A064[tmp * 2 + 1] + super->y.HALF.HI;
            if (GetCollisionDataAtWorldCoords(x, y, entity->collisionLayer) == 0) {
                entity->x.HALF.HI = x;
                entity->y.HALF.HI = y;
            }
        }
        this->unk_84 = 1;
        super->subtimer = 2;
        InitAnimationForceUpdate(super, super->type + 4);
    }
    if ((entity->animationState >> 1 == super->type) && (gPlayerState.framestate == PL_STATE_PULL) &&
        ((gPlayerState.heldObject & 2) != 0) && ((gPlayerEntity.base.frame & 2) != 0) &&
        ((super->frame & ANIM_DONE) == 0)) {
        UpdateAnimationSingleFrame(super);
        if ((super->frame & 1) != 0) {
            entity->x.HALF.HI = gUnk_0812A06C[entity->animationState] + entity->x.HALF.HI;
            entity->y.HALF.HI = gUnk_0812A06C[entity->animationState + 1] + entity->y.HALF.HI;
            EnqueueSFX(SFX_100);
        }
    }
}

void SpiderWeb_SubAction1(SpiderWebEntity* this) {
    super->action = 1;
    this->unk_84 = 0;
    InitAnimationForceUpdate(super, super->type + 0xc);
}

void SpiderWeb_Action3(SpiderWebEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        sub_080AAAA8(this);
    }
}

void sub_080AA9E0(Entity* this) {
    static const Struct_0812A074 gUnk_0812A074[] = { { 4, 0 },  { 5, 16 }, { 3, 8 },  { 5, 24 },
                                                     { 3, 16 }, { 5, 0 },  { 3, 24 }, { 5, 8 } };
    s32 diff;
    const Struct_0812A074* ptr;

    diff = (this->type & 0x1) ? (gPlayerEntity.base.x.HALF.HI - this->x.HALF.HI)
                              : (gPlayerEntity.base.y.HALF.HI - this->y.HALF.HI);
    ptr = gUnk_0812A074 + (this->type << 1);
    switch (this->type) {
        case 0:
        case 3: {
            if (diff > 4) {
                ptr++;
            }
            break;
        }
        case 1:
        case 2: {
            if (diff < -4) {
                ptr++;
            }
            break;
        }
    }

    this->spritePriority.b0 = ptr->b0;
    this->direction = ptr->direction;
    if (ptr->b0 == 5) {
        RegisterCarryEntity(this);
    }
}

void sub_080AAA68(Entity* this) {
    static const u16 typeTiles[] = { SPECIAL_TILE_35, SPECIAL_TILE_37, SPECIAL_TILE_38, SPECIAL_TILE_36 };
    SetTile(typeTiles[this->type], TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
}

void sub_080AAAA8(SpiderWebEntity* this) {
    SetFlag(this->unk_86);
    RestorePrevTileEntity(TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    DeleteThisEntity();
}
