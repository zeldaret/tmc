/**
 * @file smallPesto.c
 * @ingroup Enemies
 *
 * @brief Small Pesto enemy
 */
#include "enemy.h"
#include "physics.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u16 unk_80;
} SmallPestoEntity;

void sub_080317F8(SmallPestoEntity* this);
void SmallPesto_OnTick(SmallPestoEntity* this);
void SmallPesto_OnCollision(SmallPestoEntity* this);
void SmallPesto_OnGrabbed(SmallPestoEntity* this);
void sub_08031704(SmallPestoEntity* this);
void sub_08031714(SmallPestoEntity* this);
void sub_08031770(SmallPestoEntity* this);
void sub_080316DC(SmallPestoEntity* this);
void sub_080316E8(SmallPestoEntity* this);
void sub_080316F0(SmallPestoEntity* this);

static void (*const SmallPesto_Functions[])(SmallPestoEntity*) = {
    SmallPesto_OnTick,
    SmallPesto_OnCollision,
    (void (*)(SmallPestoEntity*))GenericKnockback,
    (void (*)(SmallPestoEntity*))GenericDeath,
    (void (*)(SmallPestoEntity*))GenericConfused,
    SmallPesto_OnGrabbed,
};

void sub_080317B4(SmallPestoEntity* this);
void sub_080317E0(SmallPestoEntity* this);
void sub_08031840(SmallPestoEntity* this);

void SmallPesto(SmallPestoEntity* this) {
    SmallPesto_Functions[GetNextFunction(super)](this);
}

void SmallPesto_OnTick(SmallPestoEntity* this) {
    static void (*const actionFuncs[])(SmallPestoEntity*) = {
        sub_08031704,
        sub_08031714,
        sub_08031770,
    };
    actionFuncs[super->action](this);
}

void SmallPesto_OnCollision(SmallPestoEntity* this) {
}

void SmallPesto_OnGrabbed(SmallPestoEntity* this) {
    s32 iVar1;
    static void (*const subActionFuncs[])(SmallPestoEntity*) = {
        sub_080316DC,
        sub_080316E8,
        sub_080316F0,
    };

    GetNextFrame(super);
    iVar1 = sub_0806F520(super);
    if (iVar1 == 0) {
        super->action = 1;
        super->subAction = 0;
        COLLISION_ON(super);
        super->speed = 0x40;
        super->subtimer = 1;
    } else {
        subActionFuncs[super->subAction](this);
    }
}

void sub_080316DC(SmallPestoEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x3c;
}

void sub_080316E8(SmallPestoEntity* this) {
    sub_0806F4E8(super);
}

void sub_080316F0(SmallPestoEntity* this) {
    if (sub_0806F3E4(super)) {
        GenericDeath(super);
    }
}

void sub_08031704(SmallPestoEntity* this) {
    sub_0804A720(super);
    sub_080317F8(this);
}

void sub_08031714(SmallPestoEntity* this) {
    sub_080317B4(this);
    if (--super->subtimer == 0) {
        super->subtimer = (Random() & 0xf) + 16;
        if (sub_08049FA0(super) == 0 && (super->subtimer & 1) != 0) {
            super->direction = sub_08049EE4(super);
        } else {
            super->direction += DirectionWest;
            super->direction = ((Random() & 0xe) + super->direction) & (0x3 | DirectionNorthWest);
        }
        sub_080317E0(this);
    }
}

void sub_08031770(SmallPestoEntity* this) {
    if (this->unk_80 != 0) {
        if (--this->unk_80 == 0) {
            sub_08031840(this);
        }
    } else if (super->child == NULL) {
        this->unk_80 = (Random() & 0x7f) | (0x80 << 2);
    } else {
        if (super->child->next == NULL) {
            super->child = NULL;
        }
    }
}

void sub_080317B4(SmallPestoEntity* this) {
    super->z.HALF.HI = ((Random() & 0x30) != 0) ? -0xc : -0xd;
    LinearMoveUpdate(super);
    GetNextFrame(super);
}

void sub_080317E0(SmallPestoEntity* this) {
    super->animationState = ((u8)(super->direction + 2) & 0x1c) >> 2;
    InitializeAnimation(super, super->animationState);
}

void sub_080317F8(SmallPestoEntity* this) {
    static const Hitbox3D gUnk_080CE560 = { 0, -3, { 3, 2, 2, 3 }, 2, 2, 12, { 0, 0, 0 } };
    u8 newDirection = Random() & 0x18;
    super->action = 1;
    super->z.HALF.HI = 0x0000FFF4;
    super->collisionLayer = 1;
    super->collisionFlags |= 0x10;
    super->gustJarFlags = 1;
    super->direction = newDirection;
    super->hitbox = (Hitbox*)&gUnk_080CE560;
    sub_080317E0(this);
    super->timer = 0;
    super->subtimer = 32;
}

void sub_08031840(SmallPestoEntity* this) {
    Entity* enemy = CreateEnemy(SMALL_PESTO, super->type);
    if (enemy != NULL) {
        CopyPosition(super, enemy);
        enemy->parent = super;
        super->child = enemy;
        enemy->type2 = 1;
    }
}
