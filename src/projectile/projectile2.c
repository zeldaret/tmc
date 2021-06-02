#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void (*const gUnk_0812960C[])(Entity*);

extern void (*const gUnk_08129620[])(Entity*);

void sub_080A82D8(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);
extern void sub_08016AD2(Entity*);

void Projectile2(Entity* this) {
    gUnk_0812960C[GetNextFunction(this)](this);
}

void sub_080A81AC(Entity* this) {
    gUnk_08129620[this->action](this);
}

void sub_080A81C4(Entity* this) {
    if (this->bitfield == 0x80) {
        DeleteEntity(this);
    } else {
        sub_080A82D8(this);
    }
}

void sub_080A81E0(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x3c;
    this->height.HALF.HI = 0xfffe;
    InitializeAnimation(this, 0);
}

void sub_080A81FC(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    if (this->collisions == 0) {
        if (sub_080A7EB0(this) != 0) {
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

void sub_080A8248(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    if (sub_08003FC4(this, 0x1800) == 0) {
        this->action = 3;
        this->flags = this->flags & 0x7f;
        this->speed = 0xe0;
        this->field_0x20 = 0xe000;
    }
}

void sub_080A827C(Entity* this) {
    this->spriteSettings.b.draw ^= 1;
    sub_0806F69C(this);
    GetNextFrame(this);
    if (sub_080044EC(this, 0x1800) == 0) {
        DeleteEntity(this);
    }
}

void sub_080A82B4(Entity* this) {
    GetNextFrame(this);
    sub_0806F69C(this);
    if (sub_08003FC4(this, 0x1800) == 0) {
        DeleteEntity(this);
    }
}

void sub_080A82D8(Entity* this) {
    this->action = 4;
    this->flags &= 0x7f;
    this->field_0x20 = 0x10000;
    this->direction ^= 0x10;
    this->speed = 0x80;
}
