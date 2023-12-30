#include "global.h"
#include "entity.h"
#include "item.h"
#include "functions.h"
#include "playeritem.h"

void sub_08076C98(ItemBehavior*, u32);
void sub_08076CBC(ItemBehavior*, u32);

void ItemPacciCane(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08076C98,
        sub_08076CBC,
    };
    stateFuncs[this->stateID](this, index);
}

void sub_08076C98(ItemBehavior* this, u32 index) {
    this->priority |= 0xf;
    sub_08077D38(this, index);
    sub_0806F948(&gPlayerEntity.base);
    sub_08077BB8(this);
}

void sub_08076CBC(ItemBehavior* this, u32 index) {
    if ((this->playerFrame & 0x80) != 0) {
        DeleteItemBehavior(this, index);
    } else {
        if ((this->playerFrame & 0x40) != 0) {
            CreatePlayerItemWithParent(this, PLAYER_ITEM_PACCI_CANE_PROJECTILE);
        }
        UpdateItemAnim(this);
    }
}
