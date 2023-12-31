/**
 * @file object63.c
 * @ingroup Objects
 *
 * @brief Object63 object
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "object.h"

void Object63_Init(Entity*);
void Object63_Action1(Entity*);
void Object63_Delete(Entity*);
void sub_08093E10(Entity*, Entity*);

void Object63(Entity* this) {
    static void (*const Object63_Actions[])(Entity*) = {
        Object63_Init,
        Object63_Action1,
        Object63_Delete,
    };

    Object63_Actions[this->action]((Entity*)this);
}

void Object63_Init(Entity* this) {
    Entity* objEnt;

    this->action = 1;
    this->z.HALF.HI -= 8;
    this->zVelocity = Q_16_16(2.625);
    this->timer = 32;
    switch (this->type) {
        case 0:
            if (CreateRandomItemDrop(this, 4) == 0) {
                this->action = 2;
            }
            this->child->zVelocity = this->zVelocity;
            break;
        case 1:
            objEnt = CreateObject(0, OBJECT_BLOCKING_STAIRS, 0);
            if (objEnt != NULL) {
                objEnt->timer = 5;
                sub_08093E10(this, objEnt);
            }
            break;
    }
}

void Object63_Action1(Entity* this) {
    if (--this->timer == 0) {
        this->action = 2;
    }

    if ((this->timer & 1) != 0) {
        this->child->y.HALF.HI++;
    }
}

void Object63_Delete(Entity* this) {
    DeleteEntity(this);
}

void sub_08093E10(Entity* this, Entity* ent) {
    CopyPosition(this, ent);
    ent->parent = this;
    this->child = ent;
    ent->zVelocity = this->zVelocity;
}
