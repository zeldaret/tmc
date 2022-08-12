/**
 * @file miniSlime.c
 * @ingroup Enemies
 *
 * @brief Mini Slime enemy
 */

#include "enemy.h"
#include "physics.h"

void sub_08045374(Entity*);
void MiniSlime_OnTick(Entity*);
void MiniSlime_OnCollision(Entity*);
void MiniSlime_OnDeath(Entity*);
void MiniSlime_OnGrabbed(Entity*);
void sub_080452A4(Entity*);
void sub_080452E4(Entity*);
void sub_080452FC(Entity*);
void sub_08045374(Entity*);

extern void sub_080452E4(Entity*);
extern void ReplaceMonitoredEntity(Entity*, Entity*);

static void (*const MiniSlime_Functions[])(Entity*) = {
    MiniSlime_OnTick, MiniSlime_OnCollision, GenericKnockback, MiniSlime_OnDeath, GenericConfused, MiniSlime_OnGrabbed,
};

void MiniSlime(Entity* this) {
    EnemyFunctionHandler(this, MiniSlime_Functions);
    SetChildOffset(this, 0, 1, -8);
}

void MiniSlime_OnTick(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080452A4,
        sub_080452E4,
        sub_080452FC,
        sub_08045374,
    };
    actionFuncs[this->action](this);
}

void MiniSlime_OnCollision(Entity* this) {
    if (this->confusedTime)
        Create0x68FX(this, FX_STARS);

    EnemyFunctionHandlerAfterCollision(this, MiniSlime_Functions);
}

void MiniSlime_OnDeath(Entity* this) {
    Entity* parent = this->parent;
    if ((this != parent) && (parent != NULL)) {
        this->field_0x6c.HALF.LO &= ~0x80;
        this->parent->child = this->child;
        this->child->parent = this->parent;
        if (this->field_0x6c.HALF.HI & 0x40)
            ReplaceMonitoredEntity(this, parent);
    }
    GenericDeath(this);
}

void MiniSlime_OnGrabbed(Entity* this) {
}

void sub_080452A4(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->speed = 0x100;
    sub_0804A720(this);
    InitializeAnimation(this, 6);
    if (this->type2) {
        this->action = 2;
        this->timer = 1;
    } else {
        sub_080452E4(this);
    }
}

void sub_080452E4(Entity* this) {
    this->action = 2;
    this->timer = (Random() & 0x1f) + 1;
}

void sub_080452FC(Entity* this) {
    u32 cVar2, bVar3;
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->action = 3;
        this->timer = 1;
        if (0 < this->speed)
            this->timer = FixedDiv(0x1000, this->speed) >> 8;

        if (sub_08049FA0(this) == 0 && (Random() & 3)) {
            cVar2 = sub_08049EE4(this);
            bVar3 = Random() & 8;
            bVar3 += 0xfc;
            this->direction = DirectionRound(cVar2 + bVar3);
        } else {
            this->direction = DirectionRound(Random());
            sub_08045374(this);
        }
    }
}

void sub_08045374(Entity* this) {
    ProcessMovement0(this);
    GetNextFrame(this);
    if (--this->timer == 0)
        this->action = 1;
}
