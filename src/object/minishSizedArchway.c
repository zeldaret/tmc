#include "entity.h"
#include "overworld.h"

void MinishSizedArchway(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = this->type;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        if (CheckIsDungeon()) {
            this->spritePriority.b0 = 1;
        }
    }
}
