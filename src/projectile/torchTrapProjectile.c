/**
 * @file torchTrapProjectile.c
 * @ingroup Projectiles
 *
 * @brief Torch Trap Projectile
 */
#include "collision.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const TorchTrapProjectile_Functions[])(Entity*);
extern void (*const TorchTrapProjectile_Actions[])(Entity*);

void TorchTrapProjectile(Entity* this) {
    TorchTrapProjectile_Functions[GetNextFunction(this)](this);
}

void TorchTrapProjectile_OnTick(Entity* this) {
    TorchTrapProjectile_Actions[this->action](this);
}

void TorchTrapProjectile_OnCollision(Entity* this) {
    DeleteThisEntity();
}

void TorchTrapProjectile_Init(Entity* this) {
    this->action = 1;
    this->timer = 30;
    InitializeAnimation(this, 0);
}

void TorchTrapProjectile_Action1(Entity* this) {
    GetNextFrame(this);
    if (this->timer != 0) {
        this->timer--;
    } else {
        if (ProcessMovement3(this) == 0) {
            LinearMoveUpdate(this);
        } else {
            this->action = 2;
        }
    }
}

void TorchTrapProjectile_Action2(Entity* this) {
    GetNextFrame(this);
    ProcessMovement3(this);
    if (this->collisions != COL_NONE) {
        DeleteThisEntity();
    }
    if (IsProjectileOffScreen(this)) {
        DeleteThisEntity();
    }
}

void (*const TorchTrapProjectile_Functions[])(Entity*) = {
    TorchTrapProjectile_OnTick, TorchTrapProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const TorchTrapProjectile_Actions[])(Entity*) = {
    TorchTrapProjectile_Init,
    TorchTrapProjectile_Action1,
    TorchTrapProjectile_Action2,
};
