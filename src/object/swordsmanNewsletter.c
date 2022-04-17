#include "global.h"
#include "entity.h"
#include "message.h"

extern void sub_080787B4(Entity*);
void sub_080933D8(Entity*);
void sub_080933FC(Entity*);

static const Hitbox gUnk_081228A8 = { 0, 0, {}, 6, 8 };

void SwordsmanNewsletter(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080933D8,
        sub_080933FC,
    };
    actionFuncs[this->action](this);
}

void sub_080933D8(Entity* this) {
    this->action = 1;
    this->frameIndex = this->type;
    UpdateSpriteForCollisionLayer(this);
    this->hitbox = (Hitbox*)&gUnk_081228A8;
    sub_080787B4(this);
}

void sub_080933FC(Entity* this) {
    static const u16 messageIndices[] = {
        0x301, 0x302, 0x303, 0x304, 0x305, 0x306, 0x307, 0x308,
    };
    if (this->interactType != 0) {
        this->interactType = 0;
        MessageNoOverlap(messageIndices[this->type], this);
    }
}
