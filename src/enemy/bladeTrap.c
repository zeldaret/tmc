#include "global.h"
#include "entity.h"
#include "room.h"
extern void sub_080A2CC0();
extern void sub_0806F69C();
extern void EnqueueSFX();
extern Entity* GetCurrentRoomProperty();

void BladeTrap(Entity* ent) {
    u16 uVar1;
    Entity* pEVar2;
    u16* puVar3;
    if (ent->action == 0) {
        ent->action = 1;
        pEVar2 = GetCurrentRoomProperty((u8)(ent->entityType).form);
        ent->attachedEntity = pEVar2;
        sub_080A2CC0((EntityData*)ent, &ent->attachedEntity, &ent->field_0x74);
    }
    if ((ent->direction & 0x80) == 0) {
        sub_0806F69C(ent);
    }

    puVar3 = &(ent->field_0x74.HWORD);
    uVar1 = *puVar3;
    *puVar3 = uVar1 - 1;
    if ((*puVar3) == 0) {
        if ((u16)(ent->direction & 0x80) == 0) {
            EnqueueSFX(0x74);
        }
        sub_080A2CC0((EntityData*)ent, &ent->attachedEntity, puVar3);
    }
}
