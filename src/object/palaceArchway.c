#include "global.h"
#include "entity.h"
#include "room.h"
#include "functions.h"

extern void (*const gUnk_081246EC[])(Entity*);

void PalaceArchway(Entity* this) {
    gUnk_081246EC[this->action](this);
}

void sub_0809F2A0(Entity* this) {
    this->action = 1;
    this->frameIndex = this->entityType.parameter;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    SetTile(0x4069, COORD_TO_TILE(this), this->collisionLayer);
}

void nullsub_537() {
}
