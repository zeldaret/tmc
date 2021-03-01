#include "global.h"
#include "entity.h"

extern Entity* GetEmptyEntity();
extern void AppendEntityToList(Entity*, u8);

Entity* CreateNPC(u32 subtype, u32 form, u32 parameter) {
    Entity* pEVar1;

    pEVar1 = GetEmptyEntity();
    if (pEVar1 != NULL) {
        pEVar1->kind = 7;
        pEVar1->id = subtype;
        pEVar1->type = form;
        pEVar1->type2 = parameter;
        AppendEntityToList(pEVar1, 7);
    }
    return pEVar1;
}
