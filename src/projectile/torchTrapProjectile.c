#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);

extern void (*const TorchTrapProjectile_Functions[])(Entity*);
extern void (*const TorchTrapProjectile_Actions[])(Entity*);

void TorchTrapProjectile(Entity* this) {
    TorchTrapProjectile_Functions[GetNextFunction(this)](this);
}

void TorchTrapProjectile_OnTick(Entity* this) {
    TorchTrapProjectile_Actions[this->action](this);
}

void sub_080AAB1C(Entity* this) {
    DeleteThisEntity();
}

void TorchTrapProjectile_Init(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x1e;
    InitializeAnimation(this, 0);
}

void TorchTrapProjectile_Action1(Entity* this) {
    GetNextFrame(this);
    if (this->actionDelay != 0) {
        this->actionDelay -= 1;
    } else {
        if (sub_080AF090(this) == 0) {
            sub_0806F69C(this);
        } else {
            this->action = 2;
        }
    }
}

void TorchTrapProjectile_Action2(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    if (this->collisions != 0) {
        DeleteThisEntity();
    }
    if (sub_080A7EB0(this) != 0) {
        DeleteThisEntity();
    }
}

void (*const TorchTrapProjectile_Functions[])(Entity*) = {
    TorchTrapProjectile_OnTick, sub_080AAB1C, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const TorchTrapProjectile_Actions[])(Entity*) = {
    TorchTrapProjectile_Init,
    TorchTrapProjectile_Action1,
    TorchTrapProjectile_Action2,
};
