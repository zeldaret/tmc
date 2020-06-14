#include "global.h"
#include "entity.h"

extern Entity* GetEmptyEntity();
extern void sub_0805EA2C(Entity*, u8);

Entity* CreateNPC(u32 subtype, u32 parameter1, u32 parameter2)

{
    Entity* pEVar1;

    pEVar1 = GetEmptyEntity();
    if (pEVar1 != NULL) {
        (pEVar1->entityType).type = 7;
        (pEVar1->entityType).subtype = subtype;
        (pEVar1->entityType).parameter1 = parameter1;
        (pEVar1->entityType).parameter2 = parameter2;
        sub_0805EA2C(pEVar1, 7);
    }
    return pEVar1;
}
