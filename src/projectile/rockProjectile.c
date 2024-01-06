/**
 * @file rockProjectile.c
 * @ingroup Projectiles
 *
 * @brief Rock Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const RockProjectile_Functions[])(Entity*);
extern void (*const RockProjectile_Actions[])(Entity*);

void sub_080A8178(Entity*);

void RockProjectile(Entity* this) {
    RockProjectile_Functions[GetNextFunction(this)](this);
}

void RockProjectile_OnTick(Entity* this) {
    RockProjectile_Actions[this->action](this);
}

void RockProjectile_OnCollision(Entity* this) {
    if (this->contactFlags == CONTACT_NOW) {
        DeleteEntity(this);
    } else {
        this->direction = this->knockbackDirection;
        sub_080A8178(this);
    }
}

void RockProjectile_Init(Entity* this) {
    this->action = 1;
    this->timer = 48;
    this->zVelocity = Q_16_16(0.625);
    InitializeAnimation(this, 0);
}

void RockProjectile_Action1(Entity* this) {
    GetNextFrame(this);
    if (ProcessMovement3(this) != 0) {
        if (IsProjectileOffScreen(this)) {
            DeleteEntity(this);
        } else {
            UpdateCollisionLayer(this);
            if (--this->timer == 0) {
                this->action = 3;
            }
        }
    } else {
        sub_0800417E(this, this->collisions);
        sub_080A8178(this);
        UpdateCollisionLayer(this);
    }
}

void RockProjectile_Action2(Entity* this) {
    LinearMoveUpdate(this);
    GetNextFrame(this);
    if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
        DeleteEntity(this);
    }
}

void RockProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    ProcessMovement3(this);
    switch (BounceUpdate(this, Q_8_8(40.0))) {
        case BOUNCE_DONE_ALL:
            DeleteEntity(this);
            return;
        case BOUNCE_INIT_NEXT:
            COLLISION_OFF(this);
            this->speed = 0x120;
            if (sub_0800442E(this) != 0) {
                return;
            }

            break;
    }
    if ((this->flags & ENT_COLLIDE) == 0) {
        this->spriteSettings.draw ^= 1;
    }
}

void sub_080A8178(Entity* this) {
    this->action = 2;
    COLLISION_OFF(this);
    this->speed = 0x40;
    this->zVelocity = Q_16_16(1.25);
}

void (*const RockProjectile_Functions[])(Entity*) = {
    RockProjectile_OnTick, RockProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const RockProjectile_Actions[])(Entity*) = {
    RockProjectile_Init,
    RockProjectile_Action1,
    RockProjectile_Action2,
    RockProjectile_Action3,
};
