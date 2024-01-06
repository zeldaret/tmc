/**
 * @file vaatiProjectile.c
 * @ingroup Enemies
 *
 * @brief Vaati Projectile enemy
 */
#include "enemy.h"
#include "functions.h"
#include "screenTransitions.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u16 unk_78;
} VaatiProjectileEntity;

extern Entity* gUnk_020000B0;

bool32 sub_0803E4A0(VaatiProjectileEntity*);
void VaatiProjectile_OnTick(VaatiProjectileEntity*);
void VaatiProjectile_OnCollision(VaatiProjectileEntity*);
void VaatiProjectile_OnDeath(VaatiProjectileEntity*);
void VaatiProjectile_OnGrabbed(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action0(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action1(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action2(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action3(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action4(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action5(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action6(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action7(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action8(VaatiProjectileEntity*);
void VaatiProjectileFunction0Action9(VaatiProjectileEntity*);
void sub_0803E444(VaatiProjectileEntity*);
void sub_0803E480(VaatiProjectileEntity*);
void sub_0803E4D8(VaatiProjectileEntity*);

void (*const VaatiProjectile_Functions[])(VaatiProjectileEntity*) = {
    VaatiProjectile_OnTick,
    VaatiProjectile_OnCollision,
    (void (*)(VaatiProjectileEntity*))GenericKnockback2,
    VaatiProjectile_OnDeath,
    (void (*)(VaatiProjectileEntity*))GenericConfused,
    VaatiProjectile_OnGrabbed,
};
void (*const vaatiProjectileFunction0Actions[])(VaatiProjectileEntity*) = {
    VaatiProjectileFunction0Action0, VaatiProjectileFunction0Action1, VaatiProjectileFunction0Action2,
    VaatiProjectileFunction0Action3, VaatiProjectileFunction0Action4, VaatiProjectileFunction0Action5,
    VaatiProjectileFunction0Action6, VaatiProjectileFunction0Action7, VaatiProjectileFunction0Action8,
    VaatiProjectileFunction0Action9,
};

void VaatiProjectile(VaatiProjectileEntity* this) {
    if (sub_0803E4A0(this)) {
        COLLISION_OFF(super);
        super->health = 0;
        super->parent = NULL;
    }
    VaatiProjectile_Functions[GetNextFunction(super)](this);
}

void VaatiProjectile_OnTick(VaatiProjectileEntity* this) {
    vaatiProjectileFunction0Actions[super->action](this);
}

void VaatiProjectile_OnCollision(VaatiProjectileEntity* this) {
    Entity* entity;

    if (super->contactFlags == CONTACT_NOW) {
#ifndef EU
        if (super->health != 0) {
#endif
            super->action = 5;
            COLLISION_OFF(super);
            super->spritePriority.b1 = 0;
            gPlayerEntity.base.flags &= ~ENT_COLLIDE;
            gPlayerEntity.base.spriteOrientation.flipY = super->spriteOrientation.flipY;
            gPlayerEntity.base.spriteRendering.b3 = super->spriteRendering.b3;
            sub_0803E444(this);
#ifndef EU
            SetPlayerControl(2);
            entity = super->parent;
            if (entity != NULL) {
                entity->flags = entity->flags & ~ENT_COLLIDE;
            }
        } else {
            gPlayerState.flags &= ~PL_DISABLE_ITEMS;
            entity = &gPlayerEntity.base;
            entity->flags = gPlayerEntity.base.flags | ENT_COLLIDE;
        }
#endif
    }
    EnemyFunctionHandlerAfterCollision(super, (EntityActionArray)VaatiProjectile_Functions);
}

void VaatiProjectile_OnDeath(VaatiProjectileEntity* this) {
    if (super->parent != NULL) {
        super->parent->subtimer--;
        super->parent = NULL;
    }
    GenericDeath(super);
}

void VaatiProjectile_OnGrabbed(VaatiProjectileEntity* this) {
}

void VaatiProjectileFunction0Action0(VaatiProjectileEntity* this) {
    Entity* entity;

    if (super->type == 0) {
        entity = CreateEnemy(VAATI_PROJECTILE, 1);
        if (entity != NULL) {
            entity->parent = super;
            super->child = entity;
            if (super->type2 == 0) {
                super->action = 1;
                super->z.HALF.HI = -0x18;
            } else {
                super->action = 9;
                super->z.HALF.HI = -0x80;
                super->collisionMask = 1;
            }
            InitializeAnimation(super, 0);
        }
    } else {
        super->action = 8;
        COLLISION_OFF(super);
        super->spriteOffsetY = 1;
        super->spriteOrientation.flipY = super->parent->spriteOrientation.flipY;
        super->spriteRendering.b3 = super->parent->spriteRendering.b3;
        super->spritePriority.b1 = 0;
        PositionRelative(super->parent, super, 0, Q_16_16(-1.0));
        InitializeAnimation(super, 1);
    }
}

void VaatiProjectileFunction0Action1(VaatiProjectileEntity* this) {
    sub_0803E480(this);
    if (PlayerInRange(super, 0, 8) != 0) {
        super->action = 2;
        super->timer = 10;
        InitializeAnimation(super->child, 2);
    } else {
        if (gUnk_020000B0 != NULL) {
            sub_08004596(super, GetFacingDirection(super, gUnk_020000B0));
            LinearMoveUpdate(super);
        }
    }
    GetNextFrame(super);
}

void VaatiProjectileFunction0Action2(VaatiProjectileEntity* this) {
    if (super->timer != 0) {
        super->timer--;
    } else {
        if (++super->z.HALF.HI == 0) {
            super->action = 3;
        }
    }
    GetNextFrame(super);
}

void VaatiProjectileFunction0Action3(VaatiProjectileEntity* this) {
    if (super->child->frame & ANIM_DONE) {
        if (--super->z.HALF.HI <= -0x18) {
            super->action = 4;
            super->timer = (Random() & 0xf) + 15;
            InitializeAnimation(super->child, 1);
        }
        GetNextFrame(super);
    }
}

void VaatiProjectileFunction0Action4(VaatiProjectileEntity* this) {
    if (--super->timer == 0) {
        super->action = 1;
        super->direction = GetFacingDirection(super, &gPlayerEntity.base);
    }
    GetNextFrame(super);
}

void VaatiProjectileFunction0Action5(VaatiProjectileEntity* this) {
    sub_0803E444(this);
    if (super->timer != 0) {
        super->timer--;
    } else {
        if (-0x18 < --super->z.HALF.HI) {
            return;
        }
        super->action = 6;
        super->timer = 20;
    }
}

void VaatiProjectileFunction0Action6(VaatiProjectileEntity* this) {
    if (--super->timer == 0) {
        super->action = 7;
        super->direction = DirectionSouth;
        super->speed = 0x300;
    }
    sub_0803E444(this);
}

void VaatiProjectileFunction0Action7(VaatiProjectileEntity* this) {
    sub_0803E444(this);
    LinearMoveUpdate(super);
    sub_0803E4D8(this);
    if ((gRoomControls.origin_y + gRoomControls.height + -0x10) <= super->y.HALF.HI) {
        SetInitializationPriority();
        // TODO super screen transition is to mazaal. Is super also the projectile for Mazaals shrink ray?
        DoExitTransition(&gUnk_0813AB94);
    }
}

void VaatiProjectileFunction0Action8(VaatiProjectileEntity* this) {
    if (super->parent->next == NULL) {
        DeleteThisEntity();
    }
    PositionRelative(super->parent, super, 0, Q_16_16(-1.0));
    GetNextFrame(super);
}

void VaatiProjectileFunction0Action9(VaatiProjectileEntity* this) {
    super->x.HALF.HI = gPlayerEntity.base.x.HALF.HI;
    super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI;
    if (super->z.HALF.HI < -8) {
        if (super->animIndex != 2) {
            super->timer = 0;
            InitializeAnimation(super->child, 2);
        }
        VaatiProjectileFunction0Action2(this);
    } else {
        super->z.HALF.HI += 8;
    }
}

void sub_0803E444(VaatiProjectileEntity* this) {
    ResetActiveItems();
    gPlayerState.mobility |= 0x80;
    gPlayerState.field_0xa |= 0x80;
    sub_0806FA90(super, super->contactedEntity, 0, -2);
    gPlayerEntity.base.spriteOffsetY += 0xe;
}

void sub_0803E480(VaatiProjectileEntity* this) {
    if (this->unk_78 >= 0x4b1) {
        super->speed = 0x180;
    } else {
        this->unk_78++;
    }
}

bool32 sub_0803E4A0(VaatiProjectileEntity* this) {
#ifdef EU
    bool32 ret;
    if (gRoomTransition.field_0x39 == 0) {
        return TRUE;
    } else {
        if (super->parent == NULL) {
            return FALSE;
        }
        ret = super->parent->next == NULL;
    }
    return ret;
#else
    bool32 ret;
    if (gRoomTransition.field_0x39 != 0) {
        if (super->parent == NULL) {
            return FALSE;
        }
        if (super->parent->health == 0) {
            return TRUE;
        } else {
            ret = super->parent->next == NULL;
        }
    } else {
        return TRUE;
    }
    return ret;
#endif
}

void sub_0803E4D8(VaatiProjectileEntity* this) {
    u32 tilePos = TILE(super->x.HALF.HI, super->y.HALF.HI + 8);
    if (GetCollisionDataAtTilePos(tilePos, gPlayerEntity.base.collisionLayer) != COLLISION_DATA_255) {
        SetTile(SPECIAL_TILE_116, tilePos, gPlayerEntity.base.collisionLayer);
    }
}
