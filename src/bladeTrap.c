#include "global.h"
#include "entity.h"
#include "entityData.h"

extern void sub_080A2CC0();
extern void sub_0806F69C();
extern void sub_08004488();
extern Entity* sub_0804B128();

void sub_08032358(Entity* ent) {
    u16 uVar1;
    Entity* pEVar2;
    u16* puVar3;
    if (ent->action == 0) {
        ent->action = 1;
        pEVar2 = sub_0804B128((u8)(ent->entityType).parameter1);
        ent->attachedEntity = pEVar2;
        sub_080A2CC0((EntityData*)ent, &ent->attachedEntity, &ent->heldObjectPtr);
    }
    if ((ent->direction & 0x80) == 0) {
        sub_0806F69C(ent);
    }
    (u32) puVar3 = &(ent->heldObjectPtr);
    uVar1 = *puVar3;
    *puVar3 = uVar1 - 1;
    if ((u16)(*puVar3) == 0) {
        if ((ent->direction & 0x80) == 0) {
            sub_08004488(0x74);
        }
        sub_080A2CC0((EntityData*)ent, &ent->attachedEntity, puVar3);
    }
}
