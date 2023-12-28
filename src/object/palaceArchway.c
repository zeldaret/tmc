/**
 * @file palaceArchway.c
 * @ingroup Objects
 *
 * @brief Palace Archway object
 */
#define NENT_DEPRECATED
#include "object.h"
#include "tiles.h"

void PalaceArchway_Init(Entity*);
void PalaceArchway_Action1(Entity*);

void PalaceArchway(Entity* this) {
    static void (*const PalaceArchway_Actions[])(Entity*) = {
        PalaceArchway_Init,
        PalaceArchway_Action1,
    };
    PalaceArchway_Actions[this->action](this);
}

void PalaceArchway_Init(Entity* this) {
    this->action = 1;
    this->frameIndex = this->type2;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    SetMetaTile(SPECIAL_META_TILE_105, COORD_TO_TILE(this), this->collisionLayer);
}

void PalaceArchway_Action1(Entity* this) {
}
