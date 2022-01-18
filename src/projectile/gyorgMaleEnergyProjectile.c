#include "entity.h"
#include "enemy.h"
#include "coord.h"
#include "player.h"

extern s32 sub_080AF090(Entity*);
extern s32 IsProjectileOffScreen(Entity*);

extern void (*const GyorgMaleEnergyProjectile_Functions[])(Entity*);
extern void (*const GyorgMaleEnergyProjectile_Actions[])(Entity*);

void GyorgMaleEnergyProjectile_Action1(Entity*);

void GyorgMaleEnergyProjectile(Entity* this) {
    GyorgMaleEnergyProjectile_Functions[GetNextFunction(this)](this);
}

void GyorgMaleEnergyProjectile_OnTick(Entity* this) {
    GyorgMaleEnergyProjectile_Actions[this->action](this);
}

void sub_080AC8DC(Entity* this) {
    switch ((s8)(this->bitfield & 0x7f)) {
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
                this->flags &= 0x7f;
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
    this->actionDelay = 0x3c;
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
    PositionRelative(this->parent, this, gSineTable[animationState] * 0x2800,
                     gSineTable[animationState + 0x40] * -0x2800);
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        this->action = 2;
        COLLISION_ON(this);
        this->direction = GetFacingDirection(this, &gPlayerEntity);
        SoundReq(SFX_12E);
    }
}

void GyorgMaleEnergyProjectile_Action2(Entity* this) {
    sub_080AF090(this);
    GetNextFrame(this);
    if (IsProjectileOffScreen(this) != 0) {
        DeleteThisEntity();
    }
    if (--this->actionDelay == 0) {
        this->action = 3;
        COLLISION_OFF(this);
        this->speed = this->speed >> 1;
        InitializeAnimation(this, 1);
    }
}

void GyorgMaleEnergyProjectile_Action3(Entity* this) {
    sub_080AF090(this);
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        DeleteThisEntity();
    }
}

void (*const GyorgMaleEnergyProjectile_Functions[])(Entity*) = {
    GyorgMaleEnergyProjectile_OnTick, sub_080AC8DC, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const GyorgMaleEnergyProjectile_Actions[])(Entity*) = {
    GyorgMaleEnergyProjectile_Init,
    GyorgMaleEnergyProjectile_Action1,
    GyorgMaleEnergyProjectile_Action2,
    GyorgMaleEnergyProjectile_Action3,
};
