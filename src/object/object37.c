#define NENT_DEPRECATED
#include "entity.h"
#include "functions.h"
#include "save.h"
#include "item.h"

typedef struct {
    Entity base;
    u8 filler[0x8];
    u16 unk70;
    u8 filler2[0x6];
    u16* unk78;
} Object37Entity;

extern u32 sub_0806F798(Entity*);

void Object37_Init(Object37Entity*);
void Object37_Action1(Object37Entity*);

void Object37(Entity* this) {
    static void (*const actionFuncs[])(Object37Entity*) = {
        Object37_Init,
        Object37_Action1,
    };

    actionFuncs[this->action]((Object37Entity*)this);
}

void Object37_Init(Object37Entity* this) {
    u16* puVar1;

    puVar1 = GetLayerByIndex(super->collisionLayer)->mapData + sub_0806F798(super);
    this->unk78 = puVar1;
    this->unk70 = *puVar1;
    super->action = 1;
}

void Object37_Action1(Object37Entity* this) {
    Entity* item;

    if ((gSave.unk24E[0] != 0) && (this->unk70 != *this->unk78)) {
        item = CreateGroundItem(super, ITEM_RUPEE100, 0);
        if (item != 0) {
            item->direction = gPlayerEntity.animationState << 2;
            item->speed = 0x80;
            item->zVelocity = 0x20000;
        }
        gSave.unk24E[0] = 1;
        DeleteThisEntity();
    }
}