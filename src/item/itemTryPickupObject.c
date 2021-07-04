#include "item.h"
#include "functions.h"

extern void (*const gUnk_0811BDB4[])(ItemBehavior*, u32);

u32 sub_08077F64(ItemBehavior* arg0, u32 unk);

void ItemTryPickupObject(ItemBehavior* this, u32 arg1) {
    gUnk_0811BDB4[this->stateID](this, arg1);
}

ASM_FUNC("asm/non_matching/itemTryPickupObject/sub_080761C0.inc", void sub_080761C0(ItemBehavior* this, u32 arg1))

void sub_080762C4(ItemBehavior* this, u32 arg1, u8 arg2, u32 arg3) {
    this->field_0x18 = arg1;
    gPlayerState.heldObject = arg2;
    sub_08077D38(this, arg3);
}

ASM_FUNC("asm/non_matching/itemTryPickupObject/sub_080762D8.inc", void sub_080762D8(ItemBehavior* this, u32 arg1))

void sub_08076488(ItemBehavior* this, u32 arg1) {
    u32 bVar1;
    s32 iVar2;

    if (this->field_0x5[2] == 0) {
        if (sub_08077F64(this, arg1) != 0) {
            if (((*(u8*)((this->field_0x18) + 0x16) & 0xf0) == 0x10) && ((gScreenTransition.frameCount & 1U) != 0)) {
                return;
            }
            UpdateItemAnim(this);
            if ((this->field_0x5[9] & 0x80) != 0) {
                gPlayerEntity.flags |= 0x80;
                gPlayerState.heldObject = 4;
                bVar1 = ~(8 >> arg1);
                gPlayerState.keepFacing = bVar1 & gPlayerState.keepFacing;
                gPlayerState.field_0xa = bVar1 & gPlayerState.field_0xa;
                this->stateID += 1;
                this->field_0xf = 0;
            }
        }
    } else {
        this->field_0x5[2] -= 1;
    }
    gPlayerState.field_0xa8 = 4;
}

ASM_FUNC("asm/non_matching/itemTryPickupObject/sub_08076518.inc", void sub_08076518(ItemBehavior* this, u32 arg1))

void sub_080765E0(ItemBehavior* this, u32 arg1) {
    if (sub_08077F64(this, arg1) != 0) {
        if ((this->field_0x5[9] & 0x80) != 0) {
            sub_08077F50(this, arg1);
        } else {
            UpdateItemAnim(this);
        }
    }
}

void sub_0807660C(ItemBehavior* this, u32 arg1) {
    UpdateItemAnim(this);
    if ((--this->field_0x5[2] == 0xff) || (gPlayerState.field_0x0[1] == 0)) {
        gPlayerState.field_0x0[1] = 0;
        sub_08077E78(this, arg1);
    }
}
