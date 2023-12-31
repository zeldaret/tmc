/**
 * @file giantRock.c
 * @ingroup Objects
 *
 * @brief Giant Rock object
 */
#include "entity.h"

void GiantRock(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        this->spritePriority.b0 = 0;
        InitializeAnimation(this, this->type);
    }
}
