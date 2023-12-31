/**
 * @file bell.c
 * @ingroup Objects
 *
 * @brief Bell object
 */
#include "object.h"

void Bell_Init(Entity* this);
void Bell_Action1(Entity* this);

void Bell(Entity* this) {
    static void (*const Bell_Actions[])(Entity*) = {
        Bell_Init,
        Bell_Action1,
    };
    Bell_Actions[this->action](this);
}

void Bell_Init(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->collisionLayer = 1;
    this->spritePriority.b0 = 0;
    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, 0);
}

void Bell_Action1(Entity* this) {
    UpdateAnimationSingleFrame(this);
}
