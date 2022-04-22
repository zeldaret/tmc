#include "entity.h"

void sub_080874F8(Entity*);
void nullsub_117(Entity*);

void Object1D(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080874F8,
        nullsub_117,
    };
    actionFuncs[this->action](this);
}

void sub_080874F8(Entity* this) {
    DeleteThisEntity();
}

void nullsub_117(Entity* this) {
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
