#include "global.h"
#include "entity.h"
#include "textbox.h"

extern void sub_080787B4(Entity*);

extern void (*const gUnk_081228B0[])(Entity*);

extern Hitbox gUnk_081228A8;
extern u16 gUnk_081228B8[];

void SwordsmanNewsletter(Entity* this) {
    gUnk_081228B0[this->action](this);
}

void sub_080933D8(Entity* this) {
    this->action = 1;
    this->frameIndex = this->type;
    UpdateSpriteForCollisionLayer(this);
    this->hitbox = &gUnk_081228A8;
    sub_080787B4(this);
}

void sub_080933FC(Entity* this) {
    if (this->interactType != 0) {
        this->interactType = 0;
        MessageNoOverlap(gUnk_081228B8[this->type], this);
    }
}
