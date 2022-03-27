/**
 * @file miniSlime.c
 * @ingroup Enemies
 *
 * @brief Mini Slime enemy
 */

#include "enemy.h"
#include "functions.h"

void sub_08045374(Entity*);

extern void sub_080452E4(Entity*);
extern void ReplaceMonitoredEntity(Entity*, Entity*);

extern void (*const MiniSlime_Functions[])(Entity*);
extern void (*const gUnk_080D17D8[])(Entity*);

void MiniSlime(Entity* this) {
    EnemyFunctionHandler(this, MiniSlime_Functions);
    SetChildOffset(this, 0, 1, -8);
}

void MiniSlime_OnTick(Entity* this) {
    gUnk_080D17D8[this->action](this);
}

void MiniSlime_OnCollision(Entity* this) {
    if (this->confusedTime)
        Create0x68FX(this, FX_STARS);

    EnemyFunctionHandlerAfterCollision(this, MiniSlime_Functions);
}

void MiniSlime_OnDeath(Entity* this) {
    Entity* parent = this->parent;
    if ((this != parent) && (parent != NULL)) {
        this->field_0x6c.HALF.LO &= 0x7f;
        this->parent->child = this->child;
        this->child->parent = this->parent;
        if (this->field_0x6c.HALF.HI & 0x40)
            ReplaceMonitoredEntity(this, parent);
    }
    GenericDeath(this);
}

void MiniSlime_OnGrabbed(void) {
}

void sub_080452A4(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->speed = 0x100;
    sub_0804A720(this);
    InitializeAnimation(this, 6);
    if (this->type2) {
        this->action = 2;
        this->actionDelay = 1;
    } else {
        sub_080452E4(this);
    }
}

void sub_080452E4(Entity* this) {
    this->action = 2;
    this->actionDelay = (Random() & 0x1f) + 1;
}

void sub_080452FC(Entity* this) {
    u32 cVar2, bVar3;
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        this->action = 3;
        this->actionDelay = 1;
        if (0 < this->speed)
            this->actionDelay = FixedDiv(0x1000, this->speed) >> 0x8;

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
    if (--this->actionDelay == 0)
        this->action = 1;
}
