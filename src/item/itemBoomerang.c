#include "item.h"
#include "functions.h"

void sub_08075D2C(ItemBehavior*, u32);
void sub_08075D88(ItemBehavior*, u32);

void ItemBoomerang(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075D2C,
        sub_08075D88,
    };
    stateFuncs[this->stateID](this, index);
}

void sub_08075D2C(ItemBehavior* this, u32 index) {
    if (((gPlayerState.attack_status & 8) == 0) && (FindPlayerItemForItem(this, this->behaviorId) == NULL)) {
        this->priority |= 0xf;
        sub_0806F948(&gPlayerEntity.base);
        CreatePlayerItemIfNotExists(this, ITEM_BOOMERANG);
        sub_08077D38(this, index);
        gPlayerState.attack_status |= 8;
    } else {
        DeleteItemBehavior(this, index);
    }
}

void sub_08075D88(ItemBehavior* this, u32 index) {
    if ((gPlayerState.attack_status & 0x80) == 0) {
        if (((this->behaviorId == 0xc) && ((gPlayerState.field_0xa & 0x80) != 0)) && ((this->playerFrame & 2) != 0)) {
            ResetPlayerVelocity();
            return;
        }
        UpdateItemAnim(this);
        if ((this->playerFrame & 0x80) == 0) {
            return;
        }
    }
    DeleteItemBehavior(this, index);
}
