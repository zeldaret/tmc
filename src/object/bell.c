/**
 * @file bell.c
 * @ingroup Objects
 *
 * @brief Bell object
 */
#include "object.h"

void Bell_Init(Entity*);
void Bell_Action1(Entity*);

void Bell(Entity* ent) {
    static void (*const Bell_Actions[])(Entity*) = {
        Bell_Init,
        Bell_Action1,
    };
    Bell_Actions[ent->action](ent);
}

void Bell_Init(Entity* ent) {
    ent->action = 1;
    ent->spriteSettings.draw = 1;
    ent->collisionLayer = 1;
    ent->spritePriority.b0 = 0;
    UpdateSpriteForCollisionLayer(ent);
    InitAnimationForceUpdate(ent, 0);
}

void Bell_Action1(Entity* ent) {
    UpdateAnimationSingleFrame(ent);
}
