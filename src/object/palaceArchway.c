#include "object.h"

void sub_0809F2A0(Entity*);
void nullsub_537(Entity*);

void PalaceArchway(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0809F2A0,
        nullsub_537,
    };
    actionFuncs[this->action](this);
}

void sub_0809F2A0(Entity* this) {
    this->action = 1;
    this->frameIndex = this->type2;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    SetTile(0x4069, COORD_TO_TILE(this), this->collisionLayer);
}

void nullsub_537(Entity* this) {
}
