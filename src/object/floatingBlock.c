#include "global.h"
#include "entity.h"
#include "functions.h"

void FloatingBlock(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = this->entityType.form;
        this->spritePriority.b0 = 0xe;
        this->collisionLayer = 1;
        UpdateSpriteForCollisionLayer(this);
    }
}
