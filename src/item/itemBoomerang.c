#include "item.h"
#include "functions.h"

void sub_08075D2C(ItemBehavior*, u32);
void sub_08075D88(ItemBehavior*, u32);

void ItemBoomerang(ItemBehavior* this, u32 idx) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075D2C,
        sub_08075D88,
    };
    stateFuncs[this->stateID](this, idx);
}

void sub_08075D2C(ItemBehavior* this, u32 idx) {
    if (((gPlayerState.field_0x3[1] & 8) == 0) && (sub_08077C94(this, this->behaviorID) == NULL)) {
        this->field_0x9 |= 0xf;
        sub_0806F948(&gPlayerEntity);
        sub_08077C0C(this, 0xb);
        sub_08077D38(this, idx);
        gPlayerState.field_0x3[1] |= 8;
    } else {
        DeletePlayerItem(this, idx);
    }
}

void sub_08075D88(ItemBehavior* this, u32 idx) {
    if ((gPlayerState.field_0x3[1] & 0x80) == 0) {
        if (((this->behaviorID == 0xc) && ((gPlayerState.field_0xa & 0x80) != 0)) && ((this->playerFrame & 2) != 0)) {
            ResetPlayerVelocity();
            return;
        }
        UpdateItemAnim(this);
        if ((this->playerFrame & 0x80) == 0) {
            return;
        }
    }
    DeletePlayerItem(this, idx);
}
