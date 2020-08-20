#include "global.h"
#include "entity.h"

extern Entity* GetEmptyEntity();
extern void AppendEntityToList(Entity*, u8);

Entity* CreateNPC(u32 subtype, u32 form, u32 parameter)

{
    Entity* pEVar1;

    pEVar1 = GetEmptyEntity();
    if (pEVar1 != NULL) {
        (pEVar1->entityType).type = 7;
        (pEVar1->entityType).subtype = subtype;
        (pEVar1->entityType).form = form;
        (pEVar1->entityType).parameter = parameter;
        AppendEntityToList(pEVar1, 7);
    }
    return pEVar1;
}
