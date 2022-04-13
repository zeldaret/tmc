/**
 * @file smallPesto.c
 * @ingroup Enemies
 *
 * @brief Small Pesto enemy
 */

#include "enemy.h"
#include "physics.h"

void sub_080317F8(Entity*);
void SmallPesto_OnTick(Entity*);
void SmallPesto_OnCollision(Entity*);
void SmallPesto_OnGrabbed(Entity*);
void sub_08031704(Entity*);
void sub_08031714(Entity*);
void sub_08031770(Entity*);
void sub_080316DC(Entity*);
void sub_080316E8(Entity*);
void sub_080316F0(Entity*);

static void (*const SmallPesto_Functions[])(Entity*) = {
    SmallPesto_OnTick, SmallPesto_OnCollision, GenericKnockback, GenericDeath, GenericConfused, SmallPesto_OnGrabbed,
};

void sub_080317B4(Entity*);
void sub_080317E0(Entity*);
void sub_08031840(Entity*);

void SmallPesto(Entity* this) {
    SmallPesto_Functions[GetNextFunction(this)](this);
}

void SmallPesto_OnTick(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08031704,
        sub_08031714,
        sub_08031770,
    };
    actionFuncs[this->action](this);
}

void SmallPesto_OnCollision(Entity* this) {
}

void SmallPesto_OnGrabbed(Entity* this) {
    s32 iVar1;
    static void (*const subActionFuncs[])(Entity*) = {
        sub_080316DC,
        sub_080316E8,
        sub_080316F0,
    };

    GetNextFrame(this);
    iVar1 = sub_0806F520(this);
    if (iVar1 == 0) {
        this->action = 1;
        this->subAction = 0;
        COLLISION_ON(this);
        this->speed = 0x40;
        this->subtimer = 1;
    } else {
        subActionFuncs[this->subAction](this);
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
    static const Hitbox3D gUnk_080CE560 = { 0, -3, { 3, 2, 2, 3 }, 2, 2, 12, { 0, 0, 0 } };
    u8 newDirection = Random() & 0x18;
    this->action = 1;
    this->z.HALF.HI = 0x0000FFF4;
    this->collisionLayer = 1;
    this->collisionFlags |= 0x10;
    this->gustJarFlags = 1;
    this->direction = newDirection;
    this->hitbox = (Hitbox*)&gUnk_080CE560;
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
