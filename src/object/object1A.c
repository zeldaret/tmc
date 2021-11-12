#include "global.h"
#include "entity.h"
#include "random.h"
#include "object.h"
#include "functions.h"

extern void sub_08086A6C();

extern void (*gUnk_081206C4[99])(Entity*);

extern Hitbox gUnk_080FD1A8;

// Main
void Object1A(Entity* ent) {
    gUnk_081206C4[ent->action](ent);
}

void sub_080869DC(Entity* ent) {
    Entity* itemEntity;

    ent->action = 1;
    ent->spriteSettings.draw = 0;
    ent->hitbox = &gUnk_080FD1A8;
    ent->field_0x3c |= 16;
    itemEntity = CreateObject(GROUND_ITEM, ent->type, 0);
    if (itemEntity != NULL) {
        itemEntity->actionDelay = 10;
        itemEntity->parent = ent;
        ent->child = itemEntity;
        CopyPosition(ent, itemEntity);
        sub_08086A6C(ent);
    }
}

void sub_08086A28(Entity* ent) {
    if (ent->child->next == NULL) {
        ent->action = 2;
    } else {
        u32 iVar1 = sub_080044EC(ent, 10240);
        if (iVar1 == 0) {
            ent->action = 2;
        }
        ProcessMovement(ent);
        CopyPosition(ent, ent->child);
    }
}

void sub_08086A5C(Entity* ent) {
    ent->child->parent = NULL;
    DeleteThisEntity();
}

void sub_08086A6C(Entity* ent) {
    u32 uVar1;

    uVar1 = Random();
    ent->zVelocity = 163840;
    ent->direction = (uVar1 >> 16) & 31;
    ent->speed = uVar1 & 480;
}
