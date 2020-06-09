#include "global.h"
#include "entity.h"

extern void sub_0806ED78();
extern void sub_08067C44();

extern void (*gCat[9])(Entity *);

//Main
void sub_080677B4(Entity *ent)
{
    gCat[ent->action](ent);
    sub_08067C44(ent);
    if (((ent->flags & 128) == 0) && ((ent->entityType).parameter1 != 5)) {
        sub_0806ED78(ent);
    }
}