/**
 * @file minishSizedArchway.c
 * @ingroup Objects
 *
 * @brief Minish Sized Archway object
 */
#include "entity.h"
#include "game.h"

void MinishSizedArchway(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = this->type;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        if (AreaIsDungeon()) {
            this->spritePriority.b0 = 1;
        }
    }
}
