/**
 * @file waterDropObject.c
 * @ingroup Objects
 *
 * @brief Water Drop object
 */
#include "entity.h"
#include "functions.h"

void WaterDropObject(Entity* this) {
    u32 iVar2;
    u32 iVar4;
    Entity* parent;

    parent = this->parent;
    if (parent->z.HALF.HI != 0) {
        if (this->action == 0) {
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->spritePriority.b0 = 6;
            this->spriteOffsetY = 5;
            InitializeAnimation(this, 1);
        }
        this->x.HALF.HI = parent->x.HALF.HI;
        this->y.HALF.HI = parent->y.HALF.HI;
        this->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = parent->spriteRendering.b3;
        if (parent->z.HALF.HI > -0x40) {
            iVar2 = 0x100;
            iVar4 = 0x200;
        } else {
            iVar2 = 0x100 - 2 * (parent->z.HALF.HI + 0x40);
            iVar4 = 0x200 - 4 * (parent->z.HALF.HI + 0x40);
        }
        SetAffineInfo(this, iVar2, iVar4, 0);
    } else {
        DeleteThisEntity();
    }
}
