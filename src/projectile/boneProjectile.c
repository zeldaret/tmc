/**
 * @file boneProjectile.c
 * @ingroup Projectiles
 *
 * @brief Bone Projectile
 */
#include "collision.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const BoneProjectile_Functions[])(Entity*);
extern void (*const BoneProjectile_Actions[])(Entity*);

void sub_080A82D8(Entity*);

void BoneProjectile(Entity* this) {
    BoneProjectile_Functions[GetNextFunction(this)](this);
}

void BoneProjectile_OnTick(Entity* this) {
    BoneProjectile_Actions[this->action](this);
}

void BoneProjectile_OnCollision(Entity* this) {
    if (this->contactFlags == CONTACT_NOW) {
        DeleteEntity(this);
    } else {
        sub_080A82D8(this);
    }
}

void BoneProjectile_Init(Entity* this) {
    this->action = 1;
    this->timer = 60;
    this->z.HALF.HI = -2;
    InitializeAnimation(this, 0);
}

void BoneProjectile_Action1(Entity* this) {
    GetNextFrame(this);
    ProcessMovement3(this);
    if (this->collisions == COL_NONE) {
        if (IsProjectileOffScreen(this)) {
            DeleteEntity(this);
        } else {
            UpdateCollisionLayer(this);
            if (--this->timer == 0) {
                this->action = 2;
                this->speed = 0x120;
            }
        }
    } else {
        sub_080A82D8(this);
    }
}

void BoneProjectile_Action2(Entity* this) {
    GetNextFrame(this);
    ProcessMovement3(this);
    if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
        this->action = 3;
        COLLISION_OFF(this);
        this->speed = 0xe0;
        this->zVelocity = Q_16_16(0.875);
    }
}

void BoneProjectile_Action3(Entity* this) {
    this->spriteSettings.draw ^= 1;
    LinearMoveUpdate(this);
    GetNextFrame(this);
    if (BounceUpdate(this, Q_8_8(24.0)) == BOUNCE_DONE_ALL) {
        DeleteEntity(this);
    }
}

void BoneProjectile_Action4(Entity* this) {
    GetNextFrame(this);
    LinearMoveUpdate(this);
    if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
        DeleteEntity(this);
    }
}

void sub_080A82D8(Entity* this) {
    this->action = 4;
    COLLISION_OFF(this);
    this->zVelocity = Q_16_16(1.0);
    this->direction ^= DirectionSouth;
    this->speed = 0x80;
}

void (*const BoneProjectile_Functions[])(Entity*) = {
    BoneProjectile_OnTick, BoneProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const BoneProjectile_Actions[])(Entity*) = {
    BoneProjectile_Init, BoneProjectile_Action1, BoneProjectile_Action2, BoneProjectile_Action3, BoneProjectile_Action4,
};
