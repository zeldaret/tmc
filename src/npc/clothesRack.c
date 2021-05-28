#include "global.h"
#include "entity.h"

extern void (*gUnk_0811423C[])(Entity*);

void ClothesRack(Entity* this) {
    gUnk_0811423C[this->action](this);
}

ASM_FUNC("asm/non_matching/clothesRack/sub_0806DD90.inc", void sub_0806DD90(Entity* this))

void sub_0806DEC8(Entity* this) {
    GetNextFrame(this);
}
