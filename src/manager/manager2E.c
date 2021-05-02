#include "global.h"
#include "entity.h"

extern void (*const gUnk_08108D3C[])(Entity*);
extern void (*const gUnk_08108D44[])(Entity*);

void Manager2E_Main(Entity* this) {
    gUnk_08108D3C[this->type](this);
}

void sub_0805D268(Entity* this) {
    gUnk_08108D44[this->action](this);
}
