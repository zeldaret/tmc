#include "entity.h"

extern void (*const gUnk_081247F8[])(Entity*);

void MinishLight(Entity* this) {
    gUnk_081247F8[this->action](this);
}

void sub_0809F840(Entity* this) {
    this->action = 1;
    this->frameIndex = 0;
    this->timer = 0x20;
    this->subtimer = 0;

    if (this->type2 != 0) {
        this->spriteSettings.flipX = 1;
    }

    UpdateSpriteForCollisionLayer(this);
}

void sub_0809F868(Entity* this) {
    if (--this->timer == 0) {
        if (this->subtimer == 0) {
            if (++this->frameIndex == 3) {
                this->subtimer = 1;
            }
        } else {
            if (--this->frameIndex == 0) {
                this->subtimer = 0;
            }
        }
        this->timer = 32;
    }
}
