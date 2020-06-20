#include "global.h"
#include "entity.h"

extern Entity* CreateObject();
extern void CopyPosition();
extern void sub_08086A6C();
extern s32 sub_080044EC();
extern void sub_080AEF88();
extern void DeleteThisEntity();
extern u32 Random(void);

extern void (*gUnk_081206C4[99])(Entity*);

extern u32 gUnk_080FD1A8;

// Main
void Object1A(Entity* ent) {
    gUnk_081206C4[ent->action](ent);
}

void sub_080869DC(Entity* ent) {
    Entity* itemEntity;

    ent->action = 1;
    ent->spriteSettings.b.ss0 = 0;
    ent->boundingBox = &gUnk_080FD1A8;
    ent->field_0x3c |= 16;
    itemEntity = CreateObject(0, ent->entityType.form, 0);
    if (itemEntity != NULL) {
        itemEntity->actionDelay = 10;
        itemEntity->parent = ent;
        ent->attachedEntity = itemEntity;
        CopyPosition(ent, itemEntity);
        sub_08086A6C(ent);
    }
}

void sub_08086A28(Entity* ent) {
    s32 iVar1;

    if (ent->attachedEntity->field_0x4 == NULL) {
        ent->action = 2;
    } else {
        iVar1 = sub_080044EC(ent, 10240);
        if (iVar1 == 0) {
            ent->action = 2;
        }
        sub_080AEF88(ent);
        CopyPosition(ent, ent->attachedEntity);
    }
}

void sub_08086A5C(Entity* ent) {
    ent->attachedEntity->parent = NULL;
    DeleteThisEntity();
}

void sub_08086A6C(Entity* ent) {
    u32 uVar1;

    uVar1 = Random();
    ent->field_0x20 = 163840;
    ent->direction = (uVar1 >> 16) & 31;
    ent->nonPlanarMovement = uVar1 & 480;
}
