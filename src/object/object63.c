#define NENT_DEPRECATED
#include "entity.h"
#include "functions.h"
#include "asm.h"
#include "object.h"

void sub_08093D88(Entity*);
void sub_08093DE0(Entity*);
void Object63_Delete(Entity*);
void sub_08093E10(Entity*, Entity*);

void Object63(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08093D88,
        sub_08093DE0,
        Object63_Delete,
    };

    actionFuncs[this->action]((Entity*)this);
}

void sub_08093D88(Entity* this) {
    Entity* objEnt;

    this->action = 1;
    this->z.HALF.HI -= 8;
    this->zVelocity = 0x2a000;
    this->actionDelay = 32;
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
                objEnt->actionDelay = 5;
                sub_08093E10(this, objEnt);
            }
            break;
    }
}

void sub_08093DE0(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 2;
    }

    if ((this->actionDelay & 1) != 0) {
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
