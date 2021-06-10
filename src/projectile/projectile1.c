#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void (*const gUnk_081295D0[])(Entity*);

extern void (*const gUnk_081295E4[])(Entity*);

void sub_080A8178(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);
extern void sub_08016AD2(Entity*);

void Projectile1(Entity* this) {
    gUnk_081295D0[GetNextFunction(this)](this);
}

void sub_080A804C(Entity* this) {
    gUnk_081295E4[this->action](this);
}

void sub_080A8064(Entity* this) {
    if (this->bitfield == 0x80) {
        DeleteEntity(this);
    } else {
        this->direction = this->field_0x3e;
        sub_080A8178(this);
    }
}

void sub_080A8088(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x30;
    this->field_0x20 = 0xa000;
    InitializeAnimation(this, 0);
}

void sub_080A80A0(Entity* this) {
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

void sub_080A80F4(Entity* this) {
    sub_0806F69C(this);
    GetNextFrame(this);
    if (sub_08003FC4(this, 0x1800) == 0) {
        DeleteEntity(this);
    }
}

void sub_080A8118(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    switch (sub_080044EC(this, 0x2800)) {
        case 0:
            DeleteEntity(this);
            return;
        case 1:
            this->flags &= 0x7f;
            this->speed = 0x120;
            if (sub_0800442E(this) != 0) {
                return;
            }

            break;
    }
    if ((this->flags & 0x80) == 0) {
        this->spriteSettings.b.draw ^= 1;
    }
}

void sub_080A8178(Entity* this) {
    this->action = 2;
    this->flags &= 0x7f;
    this->speed = 0x40;
    this->field_0x20 = 0x14000;
}
