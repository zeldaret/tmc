#define NENT_DEPRECATED
#include "entity.h"

void Object15_Init(Entity*);
void Object15_Action1(Entity*);

void Object15(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        Object15_Init,
        Object15_Action1,
    };

    actionFuncs[this->action](this);
}

void Object15_Init(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitializeAnimation(this, this->animIndex);
}

void Object15_Action1(Entity* this) {
    if (this->type == 0) {
        GetNextFrame(this);
    }

    if (this->type2 != 0) {
        this->spriteSettings.draw ^= 1;
    }

    if ((int)(this->actionDelay * 0x1000000) >= 0) {
        if (this->actionDelay) {
            if (--this->actionDelay == 0) {
                DeleteThisEntity();
            }
        } else {
            if ((this->frame & 0x80) != 0) {
                DeleteThisEntity();
            }
        }
    }

    if (this->child != NULL) {
        this->x = this->child->x;
        this->y = this->child->y;
        this->z = this->child->z;
    }
}
