#include "global.h"
#include "entity.h"
#include "functions.h"

extern void sub_08068318(Entity*);
extern void sub_0806854C(Entity*, u32);

void ZeldaFollower(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.b.draw = TRUE;
        this->animationState = 4;
        this->field_0x68.HALF.LO = 0;
        this->field_0x68.HALF.HI = 0;
        sub_0805E3A0(this, 2);
        InitAnimationForceUpdate(this, 0);
        sub_0806854C(this, 0);
    }
    if ((s8)this->field_0x68.HALF.LO != 0) {
        sub_08068318(this);
    } else {
        this->spriteSettings.b.draw = FALSE;
    }
}
