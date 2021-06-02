#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void (*const gUnk_0812A3C0[])(Entity*);

extern void (*const gUnk_0812A3D4[])(Entity*);

extern s32 sub_080AF090(Entity*);

extern s32 sub_080A7EB0(Entity*);

void Projectile16(Entity* this) {
    gUnk_0812A3C0[GetNextFunction(this)](this);
}

void sub_080AAB04(Entity* this) {
    gUnk_0812A3D4[this->action](this);
}

void sub_080AAB1C(Entity* this) {
    DeleteThisEntity();
}

void sub_080AAB24(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x1e;
    InitializeAnimation(this, 0);
}

void sub_080AAB38(Entity* this) {
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

void sub_080AAB64(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    if (this->collisions != 0) {
        DeleteThisEntity();
    }
    if (sub_080A7EB0(this) != 0) {
        DeleteThisEntity();
    }
}
