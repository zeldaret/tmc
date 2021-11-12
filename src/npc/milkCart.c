#include "global.h"
#include "entity.h"
#include "functions.h"

extern void (*gMilkCartBehaviors[2])(Entity*);

void MilkCart(Entity* ent) {
    gMilkCartBehaviors[ent->action](ent);
    sub_0806ED78(ent);
}

void sub_08065B6C(Entity* ent) {
    ent->action++;
    ent->spriteSettings.draw = 1;
    ent->y.HALF.LO += -0x8000;
    ent->animationState = 6;
    InitAnimationForceUpdate(ent, 3);
}

void sub_08065B9C(Entity* ent) {
    UpdateAnimationSingleFrame(ent);
}
