/**
 * @file iceProjectile.c
 * @ingroup Projectiles
 *
 * @brief Ice Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const IceProjectile_Actions[])(Entity*);

void IceProjectile(Entity* this) {
    if (GetNextFunction(this) != 0) {
        DeleteThisEntity();
    }
    IceProjectile_Actions[this->action](this);
}

void IceProjectile_Init(Entity* this) {
    if (this->type == 0) {
        this->action = 1;
        InitializeAnimation(this, this->direction >> 3);
    } else {
        this->action = 2;
        InitializeAnimation(this, this->direction >> 3 | IdleSouth);
        EnqueueSFX(SFX_160);
    }
}

void IceProjectile_Action1(Entity* this) {
    u32 direction;
    Entity* parent;

    parent = this->parent;
    if (parent == NULL) {
        DeleteEntity(this);
    } else {
        if (parent->next == NULL) {
            DeleteEntity(this);
        } else {
            if (this->spriteSettings.draw == 1) {
                CopyPosition(parent, this);
                if (this->timer != 0) {
                    direction = parent->direction & DirectionWest;
                    this->direction = direction;
                    this->timer = 0;
                    InitializeAnimation(this, direction >> 3);
                }
            }
            GetNextFrame(this);
        }
    }
}

void IceProjectile_Action2(Entity* this) {
    GetNextFrame(this);
    if (ProcessMovement3(this) != 0) {
        if (IsProjectileOffScreen(this)) {
            DeleteEntity(this);
        } else {
            UpdateCollisionLayer(this);
        }
    } else {
        this->action = 3;
        COLLISION_OFF(this);
        this->speed = 0;
    }
}

void IceProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteEntity(this);
    }
}

void (*const IceProjectile_Actions[])(Entity*) = {
    IceProjectile_Init,
    IceProjectile_Action1,
    IceProjectile_Action2,
    IceProjectile_Action3,
};
