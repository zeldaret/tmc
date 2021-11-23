#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern s32 sub_080AF090(Entity*);
extern s32 IsProjectileOffScreen(Entity*);
extern void sub_08016AD2(Entity*);

extern void (*const BoneProjectile_Functions[])(Entity*);
extern void (*const BoneProjectile_Actions[])(Entity*);

void sub_080A82D8(Entity*);

void BoneProjectile(Entity* this) {
    BoneProjectile_Functions[GetNextFunction(this)](this);
}

void BoneProjectile_OnTick(Entity* this) {
    BoneProjectile_Actions[this->action](this);
}

void sub_080A81C4(Entity* this) {
    if (this->bitfield == 0x80) {
        DeleteEntity(this);
    } else {
        sub_080A82D8(this);
    }
}

void BoneProjectile_Init(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x3c;
    this->z.HALF.HI = 0xfffe;
    InitializeAnimation(this, 0);
}

void BoneProjectile_Action1(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    if (this->collisions == 0) {
        if (IsProjectileOffScreen(this) != 0) {
            DeleteEntity(this);
        } else {
            sub_08016AD2(this);
            if (--this->actionDelay == 0) {
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
    sub_080AF090(this);
    if (sub_08003FC4(this, 0x1800) == 0) {
        this->action = 3;
        COLLISION_OFF(this);
        this->speed = 0xe0;
        this->zVelocity = 0xe000;
    }
}

void BoneProjectile_Action3(Entity* this) {
    this->spriteSettings.draw ^= 1;
    sub_0806F69C(this);
    GetNextFrame(this);
    if (sub_080044EC(this, 0x1800) == 0) {
        DeleteEntity(this);
    }
}

void BoneProjectile_Action4(Entity* this) {
    GetNextFrame(this);
    sub_0806F69C(this);
    if (sub_08003FC4(this, 0x1800) == 0) {
        DeleteEntity(this);
    }
}

void sub_080A82D8(Entity* this) {
    this->action = 4;
    COLLISION_OFF(this);
    this->zVelocity = 0x10000;
    this->direction ^= 0x10;
    this->speed = 0x80;
}

void (*const BoneProjectile_Functions[])(Entity*) = {
    BoneProjectile_OnTick, sub_080A81C4, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const BoneProjectile_Actions[])(Entity*) = {
    BoneProjectile_Init, BoneProjectile_Action1, BoneProjectile_Action2, BoneProjectile_Action3, BoneProjectile_Action4,
};
