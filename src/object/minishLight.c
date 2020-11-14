#include "global.h"
#include "entity.h"

extern void (*const gUnk_081247F8[])(Entity*);

void MinishLight(Entity* this) {
    gUnk_081247F8[this->action](this);
}

void sub_0809F840(Entity* this) {
    this->action = 1;
    this->frameIndex = 0;
    this->actionDelay = 0x20;
    this->field_0xf = 0;

    if (this->entityType.parameter != 0) {
        this->spriteSettings.b.flipX = 1;
    }

    UpdateSpriteForCollisionLayer(this);
}

void sub_0809F868(Entity* this) {
    if (--this->actionDelay == 0) {
        if (this->field_0xf == 0) {
            if (++this->frameIndex == 3) {
                this->field_0xf = 1;
            }
        } else {
            if (--this->frameIndex == 0) {
                this->field_0xf = 0;
            }
        }
        this->actionDelay = 32;
    }
}
