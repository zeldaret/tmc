#include "global.h"
#include "entity.h"
#include "functions.h"

void WindTribeFlag(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->collisionLayer = 2;
        if ((this->entityType).form == 0) {
            this->spriteSettings.b.flipX = 0;
        } else {
            this->spriteSettings.b.flipX = 1;
        }
        UpdateSpriteForCollisionLayer(this);
        InitializeAnimation(this, 0);
    } else {
        GetNextFrame(this);
    }
    if (this->frameDuration == 0xff) {
        this->frameDuration = (Random() & 0xf) + 0x10;
    }
}
