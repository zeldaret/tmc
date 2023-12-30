/**
 * @file object1D.c
 * @ingroup Objects
 *
 * @brief Object1D object
 */
#include "entity.h"

void Object1D_Init(Entity*);
void Object1D_Action1(Entity*);

void Object1D(Entity* this) {
    static void (*const Object1D_Actions[])(Entity*) = {
        Object1D_Init,
        Object1D_Action1,
    };
    Object1D_Actions[this->action](this);
}

void Object1D_Init(Entity* this) {
    DeleteThisEntity();
}

void Object1D_Action1(Entity* this) {
}

static const s16 unused1[] = {
    -1,
    0x8000,
    1,
    0,
};
static const s16* const unusedptr[] = {
    unused1,
};
static const u32 unused2 = 0;
