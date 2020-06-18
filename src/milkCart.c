#include "global.h"
#include "entity.h"

extern void _call_via_r1(Entity*, u32);
extern void sub_0806ED78();
extern void InitAnimationForceUpdate();
extern void UpdateAnimationSingleFrame();

extern void (*gMilkCartBehaviors[2])(Entity*);

void MilkCart(Entity* ent) {
    gMilkCartBehaviors[ent->action](ent);
    sub_0806ED78(ent);
}

void sub_08065B6C(Entity* ent) {
    ent->action++;
    ent->spriteSettings.b.ss0 = 1;
    (ent->y).HALF.LO += -32768;
    ent->animationState = 6;
    InitAnimationForceUpdate(ent, 3);
}

void sub_08065B9C(Entity* ent) {
    UpdateAnimationSingleFrame(ent);
}
