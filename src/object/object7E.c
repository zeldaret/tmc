#include "global.h"
#include "entity.h"
#include "functions.h"

void Object7E(Entity* this) {

    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        this->spritePriority.b0 = 7;
        this->frameIndex = 0x28;
        if (this->entityType.form == 0) {
            this->spriteSettings.b.draw = TRUE;
        } else if (this->entityType.form == 2) {
            this->spriteSettings.b.flipX = TRUE;
        }
    }
    PositionRelative(this->parent, this, 0, 0x80000);
    this->height.HALF.HI = 0;
    if ((this->entityType).form != 0) {
        this->spriteSettings.b.draw = this->attachedEntity->spriteSettings.b.draw;
        this->frameIndex = this->attachedEntity->frameIndex + 0x1f;
    }
}
