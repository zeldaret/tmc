#include "global.h"
#include "entity.h"

extern Entity * GetEmptyEntity();
extern void sub_0805EA2C(Entity *,u8);

Entity * CreateObject(u32 subtype,u32 param1,u32 param2)

{
    Entity *newEnt;
    
    newEnt = GetEmptyEntity();
    if (newEnt != NULL) {
        (newEnt->entityType).type = 6;
        (newEnt->entityType).subtype = subtype;
        (newEnt->entityType).parameter1 = param1;
        (newEnt->entityType).parameter2 = param2;
        sub_0805EA2C(newEnt,6);
    }
    return newEnt;
}