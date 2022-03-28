#include "item.h"
#include "functions.h"

extern void (*const gUnk_0811BD78[])(ItemBehavior*, u32);

void ItemBoomerang(ItemBehavior* this, u32 idx) {
    gUnk_0811BD78[this->stateID](this, idx);
}

void sub_08075D2C(ItemBehavior* this, u32 idx) {
    if (((gPlayerState.field_0x3[1] & 8) == 0) && (sub_08077C94(this, this->behaviorID) == NULL)) {
        this->field_0x5[4] |= 0xf;
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
        if (((this->behaviorID == 0xc) && ((gPlayerState.field_0xa & 0x80) != 0)) && ((this->field_0x5[9] & 2) != 0)) {
            ResetPlayerVelocity();
            return;
        }
        UpdateItemAnim(this);
        if ((this->field_0x5[9] & 0x80) == 0) {
            return;
        }
    }
    DeletePlayerItem(this, idx);
}
