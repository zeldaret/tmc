#include "global.h"
#include "entity.h"

extern void (*const gUnk_080B3E30[])(Entity*);

void sub_08018FCC(Entity* this){
    gUnk_080B3E30[(this->action)](this);
}
