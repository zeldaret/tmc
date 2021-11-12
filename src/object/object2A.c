#include "global.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"

extern void (*const gUnk_08120DD0[])(Entity*);

void Object2A(Entity* this) {
    gUnk_08120DD0[this->action](this);
}

void sub_08089B18(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = TRUE;
    if (this->type2 != 0) {
        this->actionDelay = this->type2;
    }
    InitializeAnimation(this, 0);
    switch (this->type) {
        case 1:
            this->y.HALF.HI -= 8;
            this->actionDelay = 0x28;
            break;
        case 2:
            this->actionDelay = 0xf;
            sub_08004168(this);
            break;
        case 3:
            CopyPosition(this->parent, this);
            break;
        case 4:
            if (!CheckFlags(this->field_0x86.HWORD)) {
                this->spriteSettings.draw = FALSE;
                this->subAction = 1;
                return;
            }
    }
    EnqueueSFX(0x124);
}
