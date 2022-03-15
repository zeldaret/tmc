#define NENT_DEPRECATED
#include "entity.h"
#include "player.h"
#include "item.h"

void sub_0808E42C(Entity*);
void sub_0808E448(Entity*);

void Object45(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808E42C,
        sub_0808E448,
    };

    actionFuncs[this->action]((Entity*)this);
}

void sub_0808E42C(Entity* this) {
    this->action = 1;
    this->updatePriority = 6;
    InitializeAnimation(this, this->type);
}

void sub_0808E448(Entity* this) {
    if (1 < IsItemEquipped(ITEM_LANTERN_ON)) {
        DeleteThisEntity();
    }
    GetNextFrame(this);

    switch (this->frame) {
        case 0x80:
            DeleteThisEntity();
        case 1:
            this->spriteSettings.draw ^= 1;
            break;
        default:
            this->spriteSettings.draw = 1;
            break;
    }

    if (this->type == 0) {
        this->z.WORD -= 0x8000;
    }
}
