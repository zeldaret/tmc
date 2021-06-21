#include "global.h"
#include "entity.h"

extern void (*const gUnk_0812119C[])(Entity*);

void FrozenFlower(Entity* this) {
    gUnk_0812119C[this->action](this);
}

void sub_0808A9DC(Entity* this) {
    this->action = 1;
    this->frameIndex = this->type;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
}

void nullsub_519(Entity* this) {
}
