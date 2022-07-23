/**
 * @file windTribeFlag.c
 * @ingroup Objects
 *
 * @brief Wind Tribe Flag object
 */
#include "object.h"

void WindTribeFlag(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->collisionLayer = 2;
        if (this->type == 0) {
            this->spriteSettings.flipX = 0;
        } else {
            this->spriteSettings.flipX = 1;
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
