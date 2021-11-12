#include "global.h"
#include "entity.h"
#include "game.h"

void Archway(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->frameIndex = this->type2;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        if (CheckIsDungeon()) {
            this->spritePriority.b0 = 1;
        }
    }
}
