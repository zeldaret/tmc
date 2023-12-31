/**
 * @file lilypadLargeFalling.c
 * @ingroup Objects
 *
 * @brief LilypadLargeFalling object
 */
#include "entity.h"
#include "functions.h"
#include "object/lilypadLarge.h"

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
        s32 position = 0x120 - parent->z.HALF.HI;
        SetAffineInfo(this, position, position, ((LilypadLargeEntity*)parent)->unk_7c.HALF_U.HI);
    }
}
