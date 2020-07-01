#include "global.h"
#include "entity.h"

extern void (*gUnk_0811B9E0[])(Entity*);

// inject
void sub_08070680(Entity* this) {
    gUnk_0811B9E0[this->action](this);
}
