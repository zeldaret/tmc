/**
 * @file lilypadLargeFalling.c
 * @ingroup Objects
 *
 * @brief LilypadLargeFalling object
 */
#include "entity.h"
#include "functions.h"
#include "global.h"

void LilypadLargeFalling(Entity* this) {
    Entity* parent;

    if (this->action == 0) {
        this->action = 1;
        this->z.WORD = 0;
        this->spriteRendering.b3 = 3;
        InitializeAnimation(this, 9);
    }

    parent = this->parent;
    if (parent->z.WORD == 0) {
        DeleteThisEntity();
    } else {
        int position = 0x120 - parent->z.HALF.HI;
        SetAffineInfo(this, position, position, parent->field_0x7c.HALF_U.HI);
    }
}
