/**
 * @file rupee.c
 * @ingroup Objects
 *
 * @brief Rupee object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"

void sub_08086A6C(Entity*);
void Rupee_Init(Entity*);
void Rupee_Action_1(Entity*);
void Rupee_Action_2(Entity*);

// Main
void Rupee(Entity* ent) {
    static void (*const Rupee_Actions[])(Entity*) = {
        Rupee_Init,
        Rupee_Action_1,
        Rupee_Action_2,
    };

    Rupee_Actions[ent->action](ent);
}

void Rupee_Init(Entity* ent) {
    Entity* itemEntity;

    ent->action = 1;
    ent->spriteSettings.draw = 0;
    ent->hitbox = (Hitbox*)&gUnk_080FD1A8;
    ent->collisionFlags |= 16;
    itemEntity = CreateObject(GROUND_ITEM, ent->type, 0);
    if (itemEntity != NULL) {
        itemEntity->timer = 10;
        itemEntity->parent = ent;
        ent->child = itemEntity;
        CopyPosition(ent, itemEntity);
        sub_08086A6C(ent);
    }
}

void Rupee_Action_1(Entity* ent) {
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

void Rupee_Action_2(Entity* ent) {
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
