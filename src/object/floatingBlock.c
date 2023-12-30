/**
 * @file floatingBlock.c
 * @ingroup Objects
 *
 * @brief Floating Block object
 */
#include "object.h"

void FloatingBlock(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = this->type;
        this->spritePriority.b0 = 0xe;
        this->collisionLayer = 1;
        UpdateSpriteForCollisionLayer(this);
    }
}
