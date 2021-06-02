#include "entity.h"
#include "enemy.h"

extern void (*const gUnk_08129BEC[])(Entity*);

extern void (*const gUnk_08129C00[])(Entity*);

void sub_080A9DC0(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);

void Projectile12(Entity* this) {
    gUnk_08129BEC[GetNextFunction(this)](this);
}

void sub_080A9DC0(Entity* this) {
    gUnk_08129C00[this->action](this);
}

void sub_080A9DD8(Entity* this) {
    if ((this->currentHealth == 0) || (this->bitfield == 0x80)) {
        DeleteThisEntity();
    }
    sub_080A9DC0(this);
}

void sub_080A9DFC(Entity* this) {
    this->action = 1;
    this->actionDelay = 0xb4;
    this->currentHealth = 1;
    InitializeAnimation(this, 0);
}

void sub_080A9E14(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    if ((this->collisions != 0) || (--this->actionDelay == 0)) {
        CreateFx(this, 0x4f, 0);
        DeleteThisEntity();
    }
    if (sub_080A7EB0(this) != 0) {
        DeleteThisEntity();
    }
}
