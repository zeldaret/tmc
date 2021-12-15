#include "global.h"
#include "entity.h"
#include "script.h"
#include "functions.h"

extern Hitbox gUnk_0810C3C0;

void Wheaton(Entity* this) {
    if (this->action == 0) {
        this->action++;

        SetDefaultPriority(this, PRIO_MESSAGE);

        ResolveEntityOnTop(this, this);

        this->hitbox = &gUnk_0810C3C0;

        this->spriteOffsetY = 0xfe;

        sub_0807DD64(this);
    }

    sub_0807DD94(this, 0);
}
