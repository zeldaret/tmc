#include "object.h"
#include "functions.h"
#include "hitbox.h"

void sub_08086A6C(Entity*);

void (*const gUnk_081206C4[])(Entity*);

// Main
void Rupee(Entity* ent) {
    gUnk_081206C4[ent->action](ent);
}

void sub_080869DC(Entity* ent) {
    Entity* itemEntity;

    ent->action = 1;
    ent->spriteSettings.draw = 0;
    ent->hitbox = (Hitbox*)&gUnk_080FD1A8;
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
        ProcessMovement0(ent);
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
    ent->zVelocity = Q_16_16(2.5);
    ent->direction = DirectionNormalize(uVar1 >> 16);
    ent->speed = uVar1 & 480;
}

void (*const gUnk_081206C4[])(Entity*) = {
    sub_080869DC,
    sub_08086A28,
    sub_08086A5C,
};
