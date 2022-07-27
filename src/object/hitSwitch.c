/**
 * @file hitSwitch.c
 * @ingroup Objects
 *
 * @brief Hit Switch object
 */
#include "entity.h"
#include "physics.h"

void HitSwitch(Entity* this) {
    Entity* parent = this->parent;
    if (parent->next == NULL) {
        DeleteThisEntity();
    }

    if (this->action == 0) {
        this->action = 1;
        this->field_0x76.HALF.LO = parent->animationState;
        this->field_0x74.HALF.LO = this->spriteOffsetX;
        this->field_0x74.HALF.HI = this->spriteOffsetY;
        InitializeAnimation(this, this->animationState);
    }

    if (parent->animationState != this->field_0x76.HALF.LO) {
        DeleteThisEntity();
    }
    this->spriteSettings.draw = parent->spriteSettings.draw;
    CopyPositionAndSpriteOffset(parent, this);
    this->spriteOffsetX += this->field_0x74.HALF.LO;
    this->spriteOffsetY += this->field_0x74.HALF.HI;
    if (this->animationState != 2) {
        this->y.HALF.HI++;
        this->spriteOffsetY--;
    } else {
        this->y.HALF.HI--;
        this->spriteOffsetY++;
    }

    GetNextFrame(this);
    if (this->frame & 0x80) {
        DeleteThisEntity();
    }
}
