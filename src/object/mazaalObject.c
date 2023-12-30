/**
 * @file mazaalObject.c
 * @ingroup Objects
 *
 * @brief Mazaal Object object
 */
#include "entity.h"
#include "physics.h"

void MazaalObject(Entity* this) {

    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        this->spritePriority.b0 = 7;
        this->frameIndex = 0x28;
        if (this->type == 0) {
            this->spriteSettings.draw = TRUE;
        } else if (this->type == 2) {
            this->spriteSettings.flipX = TRUE;
        }
    }
    PositionRelative(this->parent, this, 0, Q_16_16(8.0));
    this->z.HALF.HI = 0;
    if (this->type != 0) {
        this->spriteSettings.draw = this->child->spriteSettings.draw;
        this->frameIndex = this->child->frameIndex + 0x1f;
    }
}
