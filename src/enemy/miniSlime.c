/**
 * @file miniSlime.c
 * @ingroup Enemies
 *
 * @brief Mini Slime enemy
 */
#include "enemy.h"
#include "physics.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[4];
    /*0x6c*/ u8 unk_6c;
    /*0x6d*/ u8 unk_6d;
} MiniSlimeEntity;

void sub_08045374(MiniSlimeEntity* this);
void MiniSlime_OnTick(MiniSlimeEntity* this);
void MiniSlime_OnCollision(MiniSlimeEntity* this);
void MiniSlime_OnDeath(MiniSlimeEntity* this);
void MiniSlime_OnGrabbed(MiniSlimeEntity* this);
void sub_080452A4(MiniSlimeEntity* this);
void sub_080452E4(MiniSlimeEntity* this);
void sub_080452FC(MiniSlimeEntity* this);

extern void ReplaceMonitoredEntity(Entity*, Entity*);

static void (*const MiniSlime_Functions[])(MiniSlimeEntity*) = {
    MiniSlime_OnTick,
    MiniSlime_OnCollision,
    (void (*)(MiniSlimeEntity*))GenericKnockback,
    MiniSlime_OnDeath,
    (void (*)(MiniSlimeEntity*))GenericConfused,
    MiniSlime_OnGrabbed,
};

void MiniSlime(MiniSlimeEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)MiniSlime_Functions);
    EnemySetFXOffset(super, 0, 1, -8);
}

void MiniSlime_OnTick(MiniSlimeEntity* this) {
    static void (*const actionFuncs[])(MiniSlimeEntity*) = {
        sub_080452A4,
        sub_080452E4,
        sub_080452FC,
        sub_08045374,
    };
    actionFuncs[super->action](this);
}

void MiniSlime_OnCollision(MiniSlimeEntity* this) {
    if (super->confusedTime)
        EnemyCreateFX(super, FX_STARS);

    EnemyFunctionHandlerAfterCollision(super, MiniSlime_Functions);
}

void MiniSlime_OnDeath(MiniSlimeEntity* this) {
    Entity* parent = super->parent;
    if ((super != parent) && (parent != NULL)) {
        this->unk_6c &= ~0x80;
        super->parent->child = super->child;
        super->child->parent = super->parent;
        if (this->unk_6d & 0x40)
            ReplaceMonitoredEntity(super, parent);
    }
    GenericDeath(super);
}

void MiniSlime_OnGrabbed(MiniSlimeEntity* this) {
}

void sub_080452A4(MiniSlimeEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->speed = 0x100;
    sub_0804A720(super);
    InitializeAnimation(super, 6);
    if (super->type2) {
        super->action = 2;
        super->timer = 1;
    } else {
        sub_080452E4(this);
    }
}

void sub_080452E4(MiniSlimeEntity* this) {
    super->action = 2;
    super->timer = (Random() & 0x1f) + 1;
}

void sub_080452FC(MiniSlimeEntity* this) {
    u32 cVar2, bVar3;
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->action = 3;
        super->timer = 1;
        if (0 < super->speed)
            super->timer = FixedDiv(0x1000, super->speed) >> 8;

        if (sub_08049FA0(super) == 0 && (Random() & 3)) {
            cVar2 = sub_08049EE4(super);
            bVar3 = Random() & 8;
            bVar3 += 0xfc;
            super->direction = DirectionRound(cVar2 + bVar3);
        } else {
            super->direction = DirectionRound(Random());
            sub_08045374(this);
        }
    }
}

void sub_08045374(MiniSlimeEntity* this) {
    ProcessMovement0(super);
    GetNextFrame(super);
    if (--super->timer == 0)
        super->action = 1;
}
