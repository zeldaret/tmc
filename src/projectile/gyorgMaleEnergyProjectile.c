/**
 * @file gyorgMaleEnergyProjectile.c
 * @ingroup Projectiles
 *
 * @brief Gyorg Male Energy Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "physics.h"
#include "player.h"

extern void (*const GyorgMaleEnergyProjectile_Functions[])(Entity*);
extern void (*const GyorgMaleEnergyProjectile_Actions[])(Entity*);

void GyorgMaleEnergyProjectile_Action1(Entity*);

void GyorgMaleEnergyProjectile(Entity* this) {
    GyorgMaleEnergyProjectile_Functions[GetNextFunction(this)](this);
}

void GyorgMaleEnergyProjectile_OnTick(Entity* this) {
    GyorgMaleEnergyProjectile_Actions[this->action](this);
}

void GyorgMaleEnergyProjectile_OnCollision(Entity* this) {
    switch ((s8)(this->contactFlags & 0x7f)) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 0x1e:
        case 0x1f: {
            DeleteThisEntity();
            break;
        }
        default: {
            if (this->action != 3) {
                this->action = 3;
                this->flags &= ~ENT_COLLIDE;
                this->speed >>= 1;
                InitializeAnimation(this, 1);
            }
            break;
        }
    }

    GyorgMaleEnergyProjectile_OnTick(this);
}

void GyorgMaleEnergyProjectile_Init(Entity* this) {
    this->action = 1;
    this->timer = 60;
    this->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(this);
    InitializeAnimation(this, 0);
    GyorgMaleEnergyProjectile_Action1(this);
}

void GyorgMaleEnergyProjectile_Action1(Entity* this) {
    u32 animationState;

    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    animationState = this->parent->animationState;
    PositionRelative(this->parent, this, gSineTable[animationState] * Q_16_16(5.0 / 32.0),
                     gSineTable[animationState + 0x40] * Q_16_16(-5.0 / 32.0));
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->action = 2;
        COLLISION_ON(this);
        this->direction = GetFacingDirection(this, &gPlayerEntity.base);
        SoundReq(SFX_12E);
    }
}

void GyorgMaleEnergyProjectile_Action2(Entity* this) {
    ProcessMovement3(this);
    GetNextFrame(this);
    if (IsProjectileOffScreen(this)) {
        DeleteThisEntity();
    }
    if (--this->timer == 0) {
        this->action = 3;
        COLLISION_OFF(this);
        this->speed = this->speed >> 1;
        InitializeAnimation(this, 1);
    }
}

void GyorgMaleEnergyProjectile_Action3(Entity* this) {
    ProcessMovement3(this);
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void (*const GyorgMaleEnergyProjectile_Functions[])(Entity*) = {
    GyorgMaleEnergyProjectile_OnTick, GyorgMaleEnergyProjectile_OnCollision, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const GyorgMaleEnergyProjectile_Actions[])(Entity*) = {
    GyorgMaleEnergyProjectile_Init,
    GyorgMaleEnergyProjectile_Action1,
    GyorgMaleEnergyProjectile_Action2,
    GyorgMaleEnergyProjectile_Action3,
};
