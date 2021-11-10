#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);
extern void sub_08016AD2(Entity*);

extern void (*const RockProjectile_Functions[])(Entity*);
extern void (*const RockProjectile_Actions[])(Entity*);

void sub_080A8178(Entity*);

void RockProjectile(Entity* this) {
    RockProjectile_Functions[GetNextFunction(this)](this);
}

void RockProjectile_OnTick(Entity* this) {
    RockProjectile_Actions[this->action](this);
}

void sub_080A8064(Entity* this) {
    if (this->bitfield == 0x80) {
        DeleteEntity(this);
    } else {
        this->direction = this->knockbackDirection;
        sub_080A8178(this);
    }
}

void RockProjectile_Init(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x30;
    this->hVelocity = 0xa000;
    InitializeAnimation(this, 0);
}

void RockProjectile_Action1(Entity* this) {
    GetNextFrame(this);
    if (sub_080AF090(this) != 0) {
        if (sub_080A7EB0(this) != 0) {
            DeleteEntity(this);
        } else {
            sub_08016AD2(this);
            if (--this->actionDelay == 0) {
                this->action = 3;
            }
        }
    } else {
        sub_0800417E(this, this->collisions);
        sub_080A8178(this);
        sub_08016AD2(this);
    }
}

void RockProjectile_Action2(Entity* this) {
    sub_0806F69C(this);
    GetNextFrame(this);
    if (sub_08003FC4(this, 0x1800) == 0) {
        DeleteEntity(this);
    }
}

void RockProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    switch (sub_080044EC(this, 0x2800)) {
        case 0:
            DeleteEntity(this);
            return;
        case 1:
            COLLISION_OFF(this);
            this->speed = 0x120;
            if (sub_0800442E(this) != 0) {
                return;
            }

            break;
    }
    if ((this->flags & ENT_COLLIDE) == 0) {
        this->spriteSettings.b.draw ^= 1;
    }
}

void sub_080A8178(Entity* this) {
    this->action = 2;
    COLLISION_OFF(this);
    this->speed = 0x40;
    this->hVelocity = 0x14000;
}

void (*const RockProjectile_Functions[])(Entity*) = {
    RockProjectile_OnTick, sub_080A8064, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const RockProjectile_Actions[])(Entity*) = {
    RockProjectile_Init,
    RockProjectile_Action1,
    RockProjectile_Action2,
    RockProjectile_Action3,
};
