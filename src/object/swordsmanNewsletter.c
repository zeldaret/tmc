#include "global.h"
#include "entity.h"
#include "textbox.h"

extern void sub_080787B4(Entity*);

extern void (*const gUnk_081228B0[])(Entity*);

extern BoundingBox gUnk_081228A8;
extern u16 gUnk_081228B8[];

void SwordsmanNewsletter(Entity* this) {
    gUnk_081228B0[this->action](this);
}

void sub_080933D8(Entity* this) {
    this->action = 1;
    this->frameIndex = this->entityType.form;
    UpdateSpriteForCollisionLayer(this);
    this->boundingBox = &gUnk_081228A8;
    sub_080787B4(this);
}

void sub_080933FC(Entity* this) {
    if (this->interactType != 0) {
        this->interactType = 0;
        TextboxNoOverlap(gUnk_081228B8[this->entityType.form], this);
    }
}
