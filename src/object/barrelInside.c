#include "entity.h"

const u8 gUnk_08120C80[];
const u8 gUnk_08120C92[];

void BarrelInside(Entity* this) {
    const u8* ptr;
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->frameIndex = this->type;
        this->timer = 16;
        this->subtimer = 1;
        ptr = gUnk_08120C80 + this->type * 3;
        this->spriteRendering.b3 = *ptr;
        this->spritePriority.b0 = *(ptr + 1);
        this->spriteOrientation.flipY = *(ptr + 2);
    }

    if (this->type == 4) {
        if (--this->timer == 0) {
            this->timer = 16;
            this->frameIndex = gUnk_08120C92[this->subtimer++];
            if (this->subtimer == 3) {
                this->subtimer = 0;
            }
        }
    }
}

const u8 gUnk_08120C80[] = {
    2, 5, 2, 2, 5, 2, 3, 4, 2, 3, 6, 3, 3, 5, 3, 3, 6, 3,
};

const u8 gUnk_08120C92[] = {
    4, 6, 7, 0, 0, 0,
};
