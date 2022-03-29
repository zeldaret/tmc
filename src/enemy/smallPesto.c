/**
 * @file smallPesto.c
 * @ingroup Enemies
 *
 * @brief Small Pesto enemy
 */

#include "enemy.h"
#include "functions.h"

extern void sub_080317F8(Entity*);

extern void (*SmallPesto_Functions[])(Entity*);
extern void (*gUnk_080CE548[])(Entity*);
extern void (*gUnk_080CE554[])(Entity*);

void sub_080317B4(Entity*);
void sub_080317E0(Entity*);
void sub_08031840(Entity*);

extern Hitbox gUnk_080CE560;

void SmallPesto(Entity* this) {
    SmallPesto_Functions[GetNextFunction(this)](this);
}

void SmallPesto_OnTick(Entity* this) {
    gUnk_080CE548[this->action](this);
}

void SmallPesto_OnCollision(Entity* this) {
}

void SmallPesto_OnGrabbed(Entity* this) {
    s32 iVar1;

    GetNextFrame(this);
    iVar1 = sub_0806F520(this);
    if (iVar1 == 0) {
        this->action = 1;
        this->subAction = 0;
        COLLISION_ON(this);
        this->speed = 0x40;
        this->subtimer = 1;
    } else {
        gUnk_080CE554[this->subAction](this);
    }
}

void sub_080316DC(Entity* this) {
    this->subAction = 1;
    this->gustJarTolerance = 0x3c;
}

void sub_080316E8(Entity* this) {
    sub_0806F4E8(this);
}

void sub_080316F0(Entity* this) {
    if (sub_0806F3E4(this)) {
        GenericDeath(this);
    }
}

void sub_08031704(Entity* this) {
    sub_0804A720(this);
    sub_080317F8(this);
}

void sub_08031714(Entity* this) {
    sub_080317B4(this);
    if (--this->subtimer == 0) {
        this->subtimer = (Random() & 0xf) + 0x10;
        if (sub_08049FA0(this) == 0 && (this->subtimer & 1) != 0) {
            this->direction = sub_08049EE4(this);
        } else {
            this->direction += 0x18;
            this->direction = ((Random() & 0xe) + this->direction) & 0x1f;
        }
        sub_080317E0(this);
    }
}

void sub_08031770(Entity* this) {
    if (this->field_0x80.HWORD != 0) {
        if (--this->field_0x80.HWORD == 0) {
            sub_08031840(this);
        }
    } else if (this->child == NULL) {
        this->field_0x80.HWORD = (Random() & 0x7f) | (0x80 << 2);
    } else {
        if (this->child->next == NULL) {
            this->child = NULL;
        }
    }
}

void sub_080317B4(Entity* this) {
    this->z.HALF.HI = ((Random() & 0x30) != 0) ? -0xc : -0xd;
    LinearMoveUpdate(this);
    GetNextFrame(this);
}

void sub_080317E0(Entity* this) {
    this->animationState = ((u8)(this->direction + 2) & 0x1c) >> 2;
    InitializeAnimation(this, this->animationState);
}

void sub_080317F8(Entity* this) {
    u8 newDirection = Random() & 0x18;
    this->action = 1;
    this->z.HALF.HI = 0x0000FFF4;
    this->collisionLayer = 1;
    this->collisionFlags |= 0x10;
    this->gustJarFlags = 1;
    this->direction = newDirection;
    this->hitbox = &gUnk_080CE560;
    sub_080317E0(this);
    this->timer = 0;
    this->subtimer = 0x20;
}

void sub_08031840(Entity* this) {
    Entity* enemy = CreateEnemy(SMALL_PESTO, this->type);
    if (enemy != NULL) {
        CopyPosition(this, enemy);
        enemy->parent = this;
        this->child = enemy;
        enemy->type2 = 1;
    }
}
