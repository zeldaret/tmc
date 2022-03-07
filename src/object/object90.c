/**
 * @file object90.c
 * @ingroup Objects
 *
 * @brief Object90 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

void Object90_Init(Entity*);
void Object90_Action1(Entity*);

void Object90(Entity* this) {
    static void (*const Object90_Actions[])(Entity*) = {
        Object90_Init,
        Object90_Action1,
    };
    Object90_Actions[this->action](this);
}

void Object90_Init(Entity* this) {
    this->action = 1;
    this->frameIndex = 0;
    this->spritePriority.b0 = 5;
}

void Object90_Action1(Entity* this) {
}
