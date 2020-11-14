#include "global.h"
#include "entity.h"
#include "room.h"
#include "functions.h"

void sub_08045374(Entity*);

extern u32 sub_0806FA04(u32, u32);
extern void sub_0804A720();
extern void sub_080452E4();
extern void sub_0804AA30();
extern void ReplaceMonitoredEntity(Entity*, Entity*);
extern void sub_0804A7D4(Entity*);

extern void (*const gUnk_080D17C0[])(Entity*);
extern void (*const gUnk_080D17D8[])(Entity*);

void MiniSlime(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080D17C0);
    SetChildOffset(this, 0, 1, -8);
}

void sub_08045220(Entity* this) {
    gUnk_080D17D8[this->action](this);
}

void sub_08045238(Entity* this) {
    if (this->field_0x43)
        sub_0804A9FC(this, 0x1c);

    sub_0804AA30(this, gUnk_080D17C0);
}

void sub_0804525C(Entity* this) {
    Entity* parent = this->parent;
    if (this != parent && parent) {
        this->field_0x6c.HALF.LO &= 0x7f;
        this->parent->attachedEntity = this->attachedEntity;
        this->attachedEntity->parent = this->parent;
        if (this->field_0x6c.HALF.HI & 0x40)
            ReplaceMonitoredEntity(this, parent);
    }
    sub_0804A7D4(this);
}

void nullsub_22(void) {
}

void sub_080452A4(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->nonPlanarMovement = 0x100;
    sub_0804A720(this);
    InitializeAnimation(this, 6);
    if (this->entityType.parameter) {
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
        if (0 < this->nonPlanarMovement)
            this->actionDelay = sub_0806FA04(0x1000, this->nonPlanarMovement) >> 0x8;

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
    ProcessMovement(this);
    GetNextFrame(this);
    if (--this->actionDelay == 0)
        this->action = 1;
}
