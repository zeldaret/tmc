#include "global.h"
#include "entity.h"
#include "position.h"
#include "random.h"
#include "functions.h"

extern u32 GetNextFunction(Entity*);
extern void sub_080317F8(Entity*);

extern void (*gUnk_080CE530[])(Entity*);
extern void (*gUnk_080CE548[])(Entity*);
extern void (*gUnk_080CE554[])(Entity*);

void sub_080317B4(Entity*);
void sub_080317E0(Entity*);
void sub_08031840(Entity*);

extern Hitbox gUnk_080CE560;

void SmallPesto(Entity* this) {
    gUnk_080CE530[GetNextFunction(this)](this);
}

void sub_08031680(Entity* this) {
    gUnk_080CE548[this->action](this);
}

void nullsub_152() {
}

void sub_0803169C(Entity* this) {
    s32 iVar1;

    GetNextFrame(this);
    iVar1 = sub_0806F520(this);
    if (iVar1 == 0) {
        this->action = 1;
        this->subAction = 0;
        this->flags = this->flags | 0x80;
        this->speed = 0x40;
        this->field_0xf = 1;
    } else {
        gUnk_080CE554[this->subAction](this);
    }
}

void sub_080316DC(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 0x3c;
}

void sub_080316E8(Entity* this) {
    sub_0806F4E8(this);
}

void sub_080316F0(Entity* this) {
    if (sub_0806F3E4(this)) {
        sub_0804A7D4(this);
    }
}

void sub_08031704(Entity* this) {
    sub_0804A720(this);
    sub_080317F8(this);
}

void sub_08031714(Entity* this) {
    u8 newDirection;
    sub_080317B4(this);
    if (--this->field_0xf == 0) {
        this->field_0xf = (Random() & 0xf) + 0x10;
        if (sub_08049FA0(this) == 0) {
            if ((this->field_0xf & 1) != 0) {
                this->direction = sub_08049EE4(this);
                goto _08031766;
            }
        }
        this->direction += 0x18;
        this->direction = ((Random() & 0xe) + this->direction) & 0x1f;
    _08031766:
        sub_080317E0(this);
    }
}

void sub_08031770(Entity* this) {
    if (this->field_0x80.HWORD != 0) {
        if (--this->field_0x80.HWORD == 0) {
            sub_08031840(this);
        }
    } else if (this->attachedEntity == NULL) {
        this->field_0x80.HWORD = (Random() & 0x7f) | (0x80 << 2);
    } else {
        if (this->attachedEntity->next == NULL) {
            this->attachedEntity = NULL;
        }
    }
}

void sub_080317B4(Entity* this) {
    this->height.HALF.HI = ((Random() & 0x30) != 0) ? -0xc : -0xd;
    sub_0806F69C(this);
    GetNextFrame(this);
}

void sub_080317E0(Entity* this) {
    this->animationState = ((u8)(this->direction + 2) & 0x1c) >> 2;
    InitializeAnimation(this, this->animationState);
}

void sub_080317F8(Entity* this) {
    u8 newDirection = Random() & 0x18;
    this->action = 1;
    this->height.HALF.HI = 0x0000FFF4;
    this->collisionLayer = 1;
    this->field_0x3c |= 0x10;
    this->field_0x1c = 1;
    this->direction = newDirection;
    this->hitbox = &gUnk_080CE560;
    sub_080317E0(this);
    this->actionDelay = 0;
    this->field_0xf = 0x20;
}

void sub_08031840(Entity* this) {
    Entity* enemy = CreateEnemy(0x2d, this->type);
    if (enemy != NULL) {
        CopyPosition(this, enemy);
        enemy->parent = this;
        this->attachedEntity = enemy;
        enemy->type2 = 1;
    }
}
