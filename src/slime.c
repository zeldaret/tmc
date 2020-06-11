#include "global.h"
#include "entity.h"

extern void sub_0804A9AC();
extern void sub_0800129E();

extern void gUnk_080D16A4(void);

void Slime(Entity *ent)

{
    sub_0800129E(ent, &gUnk_080D16A4);
    sub_0804A9AC(ent,0,1,-12);
}