#include "item.h"
#include "functions.h"
#include "sound.h"

extern void (*const gUnk_0811BDB4[])(ItemBehavior*, u32);

u32 sub_08077F64(ItemBehavior* arg0, u32 idx);

u32 sub_080789A8(void);
void sub_080762C4(ItemBehavior*, void*, u8, u32);
void sub_08076088(ItemBehavior*, void*, u32);

void ItemTryPickupObject(ItemBehavior* this, u32 idx) {
    gUnk_0811BDB4[this->stateID](this, idx);
}

void ItemPickupCheck(ItemBehavior* this, u32 idx) {
    Entity* carried;

    if (!(((gPlayerState.field_0x3[1] != 0) ||
           (((gPlayerState.jump_status != 0 && ((gPlayerState.flags & (PL_BUSY | PL_FALLING | PL_IN_MINECART)) == 0)) ||
             (gPlayerState.field_0x0[1] = gPlayerEntity.animationState | 0x80, 8 < gPlayerEntity.iframes)))))) {

        switch (sub_080789A8()) {
            case 2:
                if (((gCarriedEntity.unk_8)->carryFlags & 0xf) == 0) {
                    sub_08076088(this, gCarriedEntity.unk_8, idx);
                    return;
                }
                carried = gCarriedEntity.unk_8;
                this->field_0x18 = carried;
                carried->action = 2;
                carried->subAction = 5;
                gPlayerState.framestate = 5;
                sub_080762C4(this, carried, 2, idx);
                gUnk_0200AF00.unk_2e = 8;
                SoundReq(SFX_102);
                break;
            case 1:
                sub_080762C4(this, 0, 1, idx);
                SoundReq(SFX_102);
                break;
            case 0:
                this->stateID = 5;
                this->field_0x5[2] = 0x0f;
                this->field_0xf = 6;
                gPlayerState.field_0xa = (8 >> idx) | gPlayerState.field_0xa;
                gPlayerState.keepFacing = (8 >> idx) | gPlayerState.keepFacing;
                if ((gPlayerState.flags & PL_NO_CAP) == 0) {
                    sub_08077DF4(this, 0x378);
                } else {
                    sub_08077DF4(this, 0x948);
                }
                SoundReq(SFX_88);
                break;
            default:
                break;
        }
    } else {
        PlayerCancelHoldItem(this, idx);
    }
}

void sub_080762C4(ItemBehavior* this, void* arg1, u8 arg2, u32 arg3) {
    this->field_0x18 = arg1;
    gPlayerState.heldObject = arg2;
    sub_08077D38(this, arg3);
}

ASM_FUNC("asm/non_matching/itemTryPickupObject/sub_080762D8.inc", void sub_080762D8(ItemBehavior* this, u32 idx))

void sub_08076488(ItemBehavior* this, u32 idx) {
    u32 bVar1;
    s32 iVar2;

    if (this->field_0x5[2] == 0) {
        if (PlayerTryDropObject(this, idx) != 0) {
            if ((((this->field_0x18->carryFlags) & 0xf0) == 0x10) && ((gRoomTransition.frameCount & 1U) != 0)) {
                return;
            }
            UpdateItemAnim(this);
            if ((this->field_0x5[9] & 0x80) != 0) {
                gPlayerEntity.flags |= ENT_COLLIDE;
                gPlayerState.heldObject = 4;
                bVar1 = ~(8 >> idx);
                gPlayerState.keepFacing = bVar1 & gPlayerState.keepFacing;
                gPlayerState.field_0xa = bVar1 & gPlayerState.field_0xa;
                this->stateID += 1;
                this->field_0xf = 0;
            }
        }
    } else {
        this->field_0x5[2] -= 1;
    }
    gPlayerState.framestate = PL_STATE_HOLD;
}

ASM_FUNC("asm/non_matching/itemTryPickupObject/sub_08076518.inc", void sub_08076518(ItemBehavior* this, u32 idx))

void sub_080765E0(ItemBehavior* this, u32 idx) {
    if (PlayerTryDropObject(this, idx) != 0) {
        if ((this->field_0x5[9] & 0x80) != 0) {
            PlayerCancelHoldItem(this, idx);
        } else {
            UpdateItemAnim(this);
        }
    }
}

void sub_0807660C(ItemBehavior* this, u32 idx) {
    UpdateItemAnim(this);
    if ((this->field_0x5[2]-- == 0) || (gPlayerState.field_0x0[1] == 0)) {
        gPlayerState.field_0x0[1] = 0;
        DeletePlayerItem(this, idx);
    }
}
