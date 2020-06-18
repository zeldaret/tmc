#include "global.h"
#include "entity.h"

extern void (*gUnk_0811423C[])(Entity*);

void ClothesRack(Entity* this) {
    gUnk_0811423C[this->action](this);
}
