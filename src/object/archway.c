/**
 * @file archway.c
 * @ingroup Objects
 *
 * @brief Archway object
 */
#include "entity.h"
#include "game.h"

void Archway(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->frameIndex = this->type2;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        if (AreaIsDungeon()) {
            this->spritePriority.b0 = 1;
        }
    }
}
