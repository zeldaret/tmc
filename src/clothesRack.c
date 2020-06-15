#include "global.h"
#include "entity.h"

extern void (*gUnk_0811423C[])(Entity*);

void sub_0806DD78(Entity* this) {
    gUnk_0811423C[this->action](this);
}
