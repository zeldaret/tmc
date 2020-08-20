#include "global.h"
#include "entity.h"

extern Entity* GetEmptyEntity();
extern void AppendEntityToList(Entity*, u8);

Entity* CreateObject(u32 subtype, u32 param1, u32 param2)

{
    Entity* newEnt;

    newEnt = GetEmptyEntity();
    if (newEnt != NULL) {
        (newEnt->entityType).type = 6;
        (newEnt->entityType).subtype = subtype;
        (newEnt->entityType).form = param1;
        (newEnt->entityType).parameter = param2;
        AppendEntityToList(newEnt, 6);
    }
    return newEnt;
}
