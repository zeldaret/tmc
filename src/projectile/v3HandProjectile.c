/**
 * @file v3HandProjectile.c
 * @ingroup Projectiles
 *
 * @brief V3 Hand Projectile
 */
#include "collision.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "player.h"

extern void (*const V3HandProjectile_Functions[])(Entity*);

void V3HandProjectile(Entity* this) {
    V3HandProjectile_Functions[GetNextFunction(this)](this);
}

void V3HandProjectile_OnTick(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->direction = GetFacingDirection(this, &gPlayerEntity.base);
        InitializeAnimation(this, 0);
        SoundReq(SFX_199);
    }
    if (this->z.HALF.HI < -6) {
        this->z.HALF.HI += 2;
    }
    ProcessMovement3(this);
    if (this->collisions != COL_NONE) {
        DeleteThisEntity();
    }
    GetNextFrame(this);
    if (IsProjectileOffScreen(this)) {
        DeleteThisEntity();
    }
}

void V3HandProjectile_OnCollision(Entity* this) {
    DeleteThisEntity();
}

void (*const V3HandProjectile_Functions[])(Entity*) = {
    V3HandProjectile_OnTick, V3HandProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
};
