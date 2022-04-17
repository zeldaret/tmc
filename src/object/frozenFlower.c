#include "object.h"

void sub_0808A9DC(Entity*);
void nullsub_519(Entity*);

void FrozenFlower(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808A9DC,
        nullsub_519,
    };
    actionFuncs[this->action](this);
}

void sub_0808A9DC(Entity* this) {
    this->action = 1;
    this->frameIndex = this->type;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
}

void nullsub_519(Entity* this) {
}
