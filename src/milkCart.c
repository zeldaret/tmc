#include "global.h"
#include "entity.h"

extern void _call_via_r1(Entity *, u32);
extern void sub_0806ED78();
extern void LoadAnimation();
extern void sub_080042B8();

extern void (*gMilkCartBehaviors[2])(Entity*);

void sub_08065B4C(Entity *ent)
{
    gMilkCartBehaviors[ent->action](ent);
    sub_0806ED78(ent);
}


void sub_08065B6C(Entity *ent)
{
    ent->action++;
    ent->spriteSettings.b.ss0 = 1;
    (ent->y).HALF.LO += -32768;
    ent->animationState = 6;
    LoadAnimation(ent, 3);
}


void sub_08065B9C(Entity *ent)
{
    sub_080042B8(ent);
}