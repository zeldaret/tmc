#include "global.h"
#include "entity.h"

extern void (*const gUnk_08108D3C[])(Entity*);
extern void (*const gUnk_08108D44[])(Entity*);

void sub_0805D250(Entity* this) {
    gUnk_08108D3C[this->entityType.form](this);
}

void sub_0805D268(Entity* this) {
    gUnk_08108D44[this->action](this);
}
