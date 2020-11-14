#include "global.h"
#include "entity.h"

extern void sub_0805E3A0(Entity*, u32);
extern void ResolveEntityOnTop(Entity*, Entity*);
extern BoundingBox gUnk_0810C3C0;
extern void sub_0807DD64(Entity*);
extern void sub_0807DD94(Entity*, u32);

void Wheaton(Entity* this) {
    if (this->action == 0) {
        this->action++;

        sub_0805E3A0(this, 2);

        ResolveEntityOnTop(this, this);

        this->boundingBox = &gUnk_0810C3C0;

        this->spriteOffsetY = 0xfe;

        sub_0807DD64(this);
    }

    sub_0807DD94(this, 0);
}
