#include "entity.h"
#include "room.h"
#include "functions.h"

void sub_080979CC(Entity*);
void nullsub_529(Entity*);

void StoneTablet(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080979CC,
        nullsub_529,
    };

    actionFuncs[this->action](this);
}

void sub_080979CC(Entity* this) {
    static const u8 gUnk_081232EC[] = {
        0x22, 0x40, 0xFE, 0xFF, 0x22, 0x40, 0xFF, 0xFF, 0x22, 0x40, 0x0, 0x0, 0x22, 0x40, 0x1, 0x0, 0xFF, 0xFF,
    };

    static const u8 gUnk_081232FE[] = {
        0x65, 0x40, 0xBF, 0xFF, 0x22, 0x40, 0xC0, 0xFF, 0x66, 0x40, 0xC1, 0xFF, 0x29,
        0x40, 0xFF, 0xFF, 0x26, 0x40, 0x0,  0x0,  0x2A, 0x40, 0x1,  0x0,  0xFF, 0xFF,
    };
    this->action = 1;
    this->spriteSettings.draw = 1;
    if (this->type == 3) {
        this->frameIndex = 0;
        sub_0801AF18(gUnk_081232FE, COORD_TO_TILE(this), this->collisionLayer);
    } else {
        this->frameIndex = this->type;
        sub_0801AF18(gUnk_081232EC, COORD_TO_TILE(this), this->collisionLayer);
    }
}

void nullsub_529(Entity* this) {
}
