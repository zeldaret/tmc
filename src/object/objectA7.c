/**
 * @file objectA7.c
 * @ingroup Objects
 *
 * @brief Object A7 object
 */
#include "entity.h"

void ObjectA7(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spritePriority.b0 = 6;
        InitializeAnimation(this, 0);
    }
    GetNextFrame(this);
}
