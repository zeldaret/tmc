/**
 * @file windProjectile.c
 * @ingroup Projectiles
 *
 * @brief Wind Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const WindProjectile_Actions[])(Entity*);

void WindProjectile(Entity* this) {
    if (GetNextFunction(this) != 0) {
        DeleteThisEntity();
    }
    WindProjectile_Actions[this->action](this);
}

void WindProjectile_Init(Entity* this) {
    if (this->type == 0) {
        this->action = 1;
        InitializeAnimation(this, this->direction >> 3);
    } else {
        this->action = 2;
        InitializeAnimation(this, this->direction >> 3 | IdleSouth);
        EnqueueSFX(SFX_15F);
    }
}

void WindProjectile_Action1(Entity* this) {
    u32 direction;
    Entity* parent = this->parent;
    if (parent == NULL) {
        DeleteEntity(this);
    } else {
        if (parent->next == NULL) {
            DeleteEntity(this);
        } else {
            if (this->spriteSettings.draw == 1) {
                CopyPosition(parent, this);
                direction = (parent->direction + 4) & DirectionWest;
                if (this->timer != 0) {
                    this->direction = direction;
                    this->animationState = direction >> 2;
                    this->timer = 0;
                    InitializeAnimation(this, direction >> 3);
                } else {
                    if (direction >> 2 != this->animationState) {
                        this->direction = direction;
                        this->animationState = direction >> 2;
                        InitializeAnimation(this, direction >> 3);
                    }
                }
            }
            GetNextFrame(this);
        }
    }
}

void WindProjectile_Action2(Entity* this) {
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

void WindProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteEntity(this);
    }
}

void (*const WindProjectile_Actions[])(Entity*) = {
    WindProjectile_Init,
    WindProjectile_Action1,
    WindProjectile_Action2,
    WindProjectile_Action3,
};
