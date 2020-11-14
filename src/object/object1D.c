#include "global.h"
#include "entity.h"

void DeleteThisEntity();

extern void (*gUnk_081208A0[])(Entity*);

void Object1D(Entity* this) {
    gUnk_081208A0[this->action](this);
}

void sub_080874F8(Entity* this) {
    DeleteThisEntity();
}

void nullsub_117(Entity* this) {
}
