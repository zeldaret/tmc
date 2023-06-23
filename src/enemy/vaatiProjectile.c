/**
 * @file vaatiProjectile.c
 * @ingroup Enemies
 *
 * @brief Vaati Projectile enemy
 */

#include "enemy.h"
#include "functions.h"
#include "screenTransitions.h"

extern Entity* gUnk_020000B0;

bool32 sub_0803E4A0(Entity*);
void VaatiProjectile_OnTick(Entity*);
void VaatiProjectile_OnCollision(Entity*);
void GenericKnockback2(Entity*);
void VaatiProjectile_OnDeath(Entity*);
void VaatiProjectile_OnGrabbed(Entity*);
void VaatiProjectileFunction0Action0(Entity*);
void VaatiProjectileFunction0Action1(Entity*);
void VaatiProjectileFunction0Action2(Entity*);
void VaatiProjectileFunction0Action3(Entity*);
void VaatiProjectileFunction0Action4(Entity*);
void VaatiProjectileFunction0Action5(Entity*);
void VaatiProjectileFunction0Action6(Entity*);
void VaatiProjectileFunction0Action7(Entity*);
void VaatiProjectileFunction0Action8(Entity*);
void VaatiProjectileFunction0Action9(Entity*);
void sub_0803E444(Entity*);
void sub_0803E480(Entity*);
void sub_0803E4D8(Entity*);

void (*const VaatiProjectile_Functions[])(Entity*) = {
    VaatiProjectile_OnTick, VaatiProjectile_OnCollision, GenericKnockback2, VaatiProjectile_OnDeath,
    GenericConfused,        VaatiProjectile_OnGrabbed,
};
void (*const vaatiProjectileFunction0Actions[])(Entity*) = {
    VaatiProjectileFunction0Action0, VaatiProjectileFunction0Action1, VaatiProjectileFunction0Action2,
    VaatiProjectileFunction0Action3, VaatiProjectileFunction0Action4, VaatiProjectileFunction0Action5,
    VaatiProjectileFunction0Action6, VaatiProjectileFunction0Action7, VaatiProjectileFunction0Action8,
    VaatiProjectileFunction0Action9,
};

void VaatiProjectile(Entity* this) {
    if (sub_0803E4A0(this)) {
        COLLISION_OFF(this);
        this->health = 0;
        this->parent = NULL;
    }
    VaatiProjectile_Functions[GetNextFunction(this)](this);
}

void VaatiProjectile_OnTick(Entity* this) {
    vaatiProjectileFunction0Actions[this->action](this);
}

void VaatiProjectile_OnCollision(Entity* this) {
    Entity* entity;

    if (this->contactFlags == 0x80) {
#ifndef EU
        if (this->health != 0) {
#endif
            this->action = 5;
            COLLISION_OFF(this);
            this->spritePriority.b1 = 0;
            gPlayerEntity.flags &= ~ENT_COLLIDE;
            gPlayerEntity.spriteOrientation.flipY = this->spriteOrientation.flipY;
            gPlayerEntity.spriteRendering.b3 = this->spriteRendering.b3;
            sub_0803E444(this);
#ifndef EU
            SetPlayerControl(2);
            entity = this->parent;
            if (entity != NULL) {
                entity->flags = entity->flags & ~ENT_COLLIDE;
            }
        } else {
            gPlayerState.flags &= ~PL_DISABLE_ITEMS;
            entity = &gPlayerEntity;
            entity->flags = gPlayerEntity.flags | ENT_COLLIDE;
        }
#endif
    }
    EnemyFunctionHandlerAfterCollision(this, VaatiProjectile_Functions);
}

void VaatiProjectile_OnDeath(Entity* this) {
    if (this->parent != NULL) {
        this->parent->subtimer--;
        this->parent = NULL;
    }
    GenericDeath(this);
}

void VaatiProjectile_OnGrabbed(Entity* this) {
}

void VaatiProjectileFunction0Action0(Entity* this) {
    Entity* entity;

    if (this->type == 0) {
        entity = CreateEnemy(VAATI_PROJECTILE, 1);
        if (entity != NULL) {
            entity->parent = this;
            this->child = entity;
            if (this->type2 == 0) {
                this->action = 1;
                this->z.HALF.HI = -0x18;
            } else {
                this->action = 9;
                this->z.HALF.HI = -0x80;
                this->flags2 = 1;
            }
            InitializeAnimation(this, 0);
        }
    } else {
        this->action = 8;
        COLLISION_OFF(this);
        this->spriteOffsetY = 1;
        this->spriteOrientation.flipY = this->parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = this->parent->spriteRendering.b3;
        this->spritePriority.b1 = 0;
        PositionRelative(this->parent, this, 0, Q_16_16(-1.0));
        InitializeAnimation(this, 1);
    }
}

void VaatiProjectileFunction0Action1(Entity* this) {
    sub_0803E480(this);
    if (PlayerInRange(this, 0, 8) != 0) {
        this->action = 2;
        this->timer = 10;
        InitializeAnimation(this->child, 2);
    } else {
        if (gUnk_020000B0 != NULL) {
            sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
            LinearMoveUpdate(this);
        }
    }
    GetNextFrame(this);
}

void VaatiProjectileFunction0Action2(Entity* this) {
    if (this->timer != 0) {
        this->timer--;
    } else {
        if (++this->z.HALF.HI == 0) {
            this->action = 3;
        }
    }
    GetNextFrame(this);
}

void VaatiProjectileFunction0Action3(Entity* this) {
    if (this->child->frame & ANIM_DONE) {
        if (--this->z.HALF.HI <= -0x18) {
            this->action = 4;
            this->timer = (Random() & 0xf) + 15;
            InitializeAnimation(this->child, 1);
        }
        GetNextFrame(this);
    }
}

void VaatiProjectileFunction0Action4(Entity* this) {
    if (--this->timer == 0) {
        this->action = 1;
        this->direction = GetFacingDirection(this, &gPlayerEntity);
    }
    GetNextFrame(this);
}

void VaatiProjectileFunction0Action5(Entity* this) {
    sub_0803E444(this);
    if (this->timer != 0) {
        this->timer--;
    } else {
        if (-0x18 < --this->z.HALF.HI) {
            return;
        }
        this->action = 6;
        this->timer = 20;
    }
}

void VaatiProjectileFunction0Action6(Entity* this) {
    if (--this->timer == 0) {
        this->action = 7;
        this->direction = 0x10;
        this->speed = 0x300;
    }
    sub_0803E444(this);
}

void VaatiProjectileFunction0Action7(Entity* this) {
    sub_0803E444(this);
    LinearMoveUpdate(this);
    sub_0803E4D8(this);
    if ((gRoomControls.origin_y + gRoomControls.height + -0x10) <= this->y.HALF.HI) {
        SetInitializationPriority();
        // TODO this screen transition is to mazaal. Is this also the projectile for Mazaals shrink ray?
        DoExitTransition(&gUnk_0813AB94);
    }
}

void VaatiProjectileFunction0Action8(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    PositionRelative(this->parent, this, 0, Q_16_16(-1.0));
    GetNextFrame(this);
}

void VaatiProjectileFunction0Action9(Entity* this) {
    this->x.HALF.HI = gPlayerEntity.x.HALF.HI;
    this->y.HALF.HI = gPlayerEntity.y.HALF.HI;
    if (this->z.HALF.HI < -8) {
        if (this->animIndex != 2) {
            this->timer = 0;
            InitializeAnimation(this->child, 2);
        }
        VaatiProjectileFunction0Action2(this);
    } else {
        this->z.HALF.HI += 8;
    }
}

void sub_0803E444(Entity* this) {
    ResetActiveItems();
    gPlayerState.mobility |= 0x80;
    gPlayerState.field_0xa |= 0x80;
    sub_0806FA90(this, this->contactedEntity, 0, -2);
    gPlayerEntity.spriteOffsetY += 0xe;
}

void sub_0803E480(Entity* this) {
    if (this->field_0x78.HWORD >= 0x4b1) {
        this->speed = 0x180;
    } else {
        this->field_0x78.HWORD++;
    }
}

bool32 sub_0803E4A0(Entity* this) {
#ifdef EU
    bool32 ret;
    if (gRoomTransition.field_0x39 == 0) {
        return TRUE;
    } else {
        if (this->parent == NULL) {
            return FALSE;
        }
        ret = this->parent->next == NULL;
    }
    return ret;
#else
    bool32 ret;
    if (gRoomTransition.field_0x39 != 0) {
        if (this->parent == NULL) {
            return FALSE;
        }
        if (this->parent->health == 0) {
            return TRUE;
        } else {
            ret = this->parent->next == NULL;
        }
    } else {
        return TRUE;
    }
    return ret;
#endif
}

void sub_0803E4D8(Entity* this) {
    u32 tile;

    tile = TILE(this->x.HALF.HI, this->y.HALF.HI + 8);
    if (GetCollisionDataAtMetaTilePos(tile, gPlayerEntity.collisionLayer) != 0xff) {
        SetMetaTile(0x4074, tile, gPlayerEntity.collisionLayer);
    }
}
