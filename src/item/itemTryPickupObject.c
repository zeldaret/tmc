#include "functions.h"
#include "item.h"
#include "playeritem.h"
#include "sound.h"

u32 sub_08077F64(ItemBehavior* arg0, u32 index);
u32 sub_080789A8(void);
void sub_080762C4(ItemBehavior*, Entity*, u8, u32);
void sub_08076088(ItemBehavior*, Entity*, u32);
void ItemPickupCheck(ItemBehavior*, u32);
void sub_080762D8(ItemBehavior*, u32);
void sub_08076488(ItemBehavior*, u32);
void sub_08076518(ItemBehavior*, u32);
void sub_080765E0(ItemBehavior*, u32);
void sub_0807660C(ItemBehavior*, u32);

extern s32 DoItemTileInteraction(Entity*, u32, ItemBehavior*);

extern const u16 gUnk_0811BE38[];
extern const u16 gUnk_0811BE40[];

void sub_08076088(ItemBehavior* this, Entity* param_2, u32 param_3) {
    if (param_2 != NULL) {
        if ((param_2->carryFlags & 1) != 0) {
            return;
        }
        param_2->action = 2;
        param_2->subAction = param_2->carryFlags & 1;
    }

    this->field_0x18 = param_2;
    if ((gPlayerState.flags & PL_NO_CAP)) {
        SetItemAnim(this, ANIM_PICKUP_NOCAP);
    } else {
        SetItemAnim(this, ANIM_PICKUP);
    }
    gPlayerState.heldObject = 3;
    gPlayerState.framestate = 4;
    this->stateID = 2;
    this->animPriority = 0xf;
    if ((gPlayerEntity.unk_79 & 0x80)) {
        gPlayerEntity.unk_79 = 0;
        COLLISION_ON(&gPlayerEntity.base);
        gPlayerState.heldObject = 4;
        gPlayerState.keepFacing = ~(8 >> param_3) & gPlayerState.keepFacing;
        gPlayerState.field_0xa = ~(8 >> param_3) & gPlayerState.field_0xa;
        this->stateID = 3;
        this->animPriority = 0;
    } else {
        gPlayerState.field_0xa |= (8 >> param_3);
        gPlayerState.keepFacing |= (8 >> param_3);
    }

    param_2 = CreatePlayerItemWithParent(this, PLAYER_ITEM_HELD_OBJECT);
    if (param_2 == NULL) {
        PlayerCancelHoldItem(this, param_3);
    } else {
        PlayerEntity* playerEnt = &gPlayerEntity;
        playerEnt->carriedEntity = param_2;
        playerEnt->base.subtimer = 0;
        param_2->child = this->field_0x18;
        param_2->carryFlags = playerEnt->base.carryFlags;
        param_2->parent = (Entity*)this;
        this->field_0x18 = param_2;
        param_2->type2 = this->field_0x2[1];
        param_2->timer = this->timer;
        param_2->subtimer = this->subtimer;
        if ((this->field_0x18->carryFlags & 0xf0) == 0x10) {
            this->timer = 8;
        } else {
            this->timer = 0;
        }
        SoundReq(SFX_PLY_LIFT);
    }
}

void ItemTryPickupObject(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        ItemPickupCheck, sub_080762D8, sub_08076488, sub_08076518, sub_080765E0, sub_0807660C,
    };
    stateFuncs[this->stateID](this, index);
}

void ItemPickupCheck(ItemBehavior* this, u32 index) {
    Entity* carried;

    if (gPlayerState.attack_status == 0 &&
        (gPlayerState.jump_status == 0 || (gPlayerState.flags & (PL_BUSY | PL_FALLING | PL_IN_MINECART)) != 0) &&
        (gPlayerState.grab_status = gPlayerEntity.base.animationState | 0x80, gPlayerEntity.base.iframes <= 8)) {

        switch (sub_080789A8()) {
            case 2:
                if (((gCarriedEntity.unk_8)->carryFlags & 0xf) == 0) {
                    sub_08076088(this, gCarriedEntity.unk_8, index);
                    return;
                }
                carried = gCarriedEntity.unk_8;
                this->field_0x18 = carried;
                carried->action = 2;
                carried->subAction = 5;
                gPlayerState.framestate = PL_STATE_THROW;
                sub_080762C4(this, carried, 2, index);
                gHUD.rActionGrabbing = R_ACTION_GRAB;
                SoundReq(SFX_102);
                break;
            case 1:
                sub_080762C4(this, 0, 1, index);
                SoundReq(SFX_102);
                break;
            case 0:
                this->stateID = 5;
                this->timer = 0x0f;
                this->animPriority = 6;
                gPlayerState.field_0xa = (8 >> index) | gPlayerState.field_0xa;
                gPlayerState.keepFacing = (8 >> index) | gPlayerState.keepFacing;
                if (!(gPlayerState.flags & PL_NO_CAP)) {
                    SetItemAnim(this, ANIM_GRAB);
                } else {
                    SetItemAnim(this, ANIM_GRAB_NOCAP);
                }
                SoundReq(SFX_GRAB);
                break;
            default:
                break;
        }
    } else {
        PlayerCancelHoldItem(this, index);
    }
}

void sub_080762C4(ItemBehavior* this, Entity* arg1, u8 arg2, u32 arg3) {
    this->field_0x18 = arg1;
    gPlayerState.heldObject = arg2;
    sub_08077D38(this, arg3);
}

void sub_080762D8(ItemBehavior* this, u32 index) {
    u32 animIndex;

    gPlayerState.heldObject &= 0xcf;
    if (!PlayerTryDropObject(this, index)) {
        return;
    }

    if (gPlayerEntity.base.iframes < 9 && gPlayerEntity.base.knockbackDuration == 0) {
        if (this->field_0x18 != NULL) {
            if (this->field_0x18->action == 2 && this->field_0x18->subAction == 5) {
                if (!(gPlayerState.playerInput.heldInput & INPUT_ACTION)) { // Pressing R
                    this->field_0x18->subAction = 6;
                    PlayerCancelHoldItem(this, index);
                    return;
                }
            } else {
                PlayerCancelHoldItem(this, index);
                return;
            }
        }

        gPlayerState.framestate = PL_STATE_THROW;
        gHUD.rActionGrabbing = 8;
    } else {
        if (this->field_0x18 != NULL) {
            this->field_0x18->subAction = 6;
        }
        PlayerCancelHoldItem(this, index);
        return;
    }

    if (!gPlayerState.jump_status) {

        if (gPlayerState.heldObject == 1 && DoItemTileInteraction(&gPlayerEntity.base, 6, this) != 0) {
            sub_08076088(this, NULL, index);
            return;
        } else if (gUnk_0811BE38[gPlayerEntity.base.animationState >> 1] & gPlayerState.playerInput.heldInput) {
            UpdateItemAnim(this);

            if (!(gPlayerState.flags & PL_NO_CAP)) {
                animIndex = ANIM_PULL;
            } else {
                animIndex = ANIM_PULL_START_NOCAP;
            }

            if (animIndex != this->animIndex) {
                SetItemAnim(this, animIndex);
            }

            gPlayerState.heldObject |= 0x10;
            gPlayerState.framestate = PL_STATE_PULL;

            if (gPlayerState.heldObject == 1) {
                return;
            }

            sub_08076088(this, this->field_0x18, index);
        } else {
            if (gPlayerState.playerInput.heldInput & gUnk_0811BE40[gPlayerEntity.base.animationState >> 1]) {
                if (gPlayerEntity.base.subtimer < 6) {
                    gPlayerEntity.base.subtimer++;
                    return;
                }

                gPlayerState.field_0x35 = this->playerAnimationState;
                gPlayerState.pushedObject |= 0x80;
                gPlayerState.heldObject |= 0x20;
                gPlayerState.framestate = PL_STATE_PUSH;

                if (!(gPlayerState.flags & PL_NO_CAP)) {
                    animIndex = ANIM_PUSH;
                } else {
                    animIndex = ANIM_PUSH_NOCAP;
                }

                if (animIndex == this->animIndex) {
                    UpdateItemAnim(this);
                } else {
                    SetItemAnim(this, animIndex);
                }
            } else {
                gPlayerEntity.base.subtimer = 0;

                if (!(gPlayerState.flags & PL_NO_CAP)) {
                    SetItemAnim(this, ANIM_PULL);
                } else {
                    SetItemAnim(this, ANIM_PULL_START_NOCAP);
                }
            }
        }
    } else {
        PlayerCancelHoldItem(this, index);
    }
}

void sub_08076488(ItemBehavior* this, u32 index) {
    u32 bVar1;
    s32 iVar2;

    if (this->timer == 0) {
        if (PlayerTryDropObject(this, index) != 0) {
            if ((((this->field_0x18->carryFlags) & 0xf0) == 0x10) && ((gRoomTransition.frameCount & 1U) != 0)) {
                return;
            }
            UpdateItemAnim(this);
            if ((this->playerFrame & 0x80) != 0) {
                gPlayerEntity.base.flags |= ENT_COLLIDE;
                gPlayerState.heldObject = 4;
                bVar1 = ~(8 >> index);
                gPlayerState.keepFacing = bVar1 & gPlayerState.keepFacing;
                gPlayerState.field_0xa = bVar1 & gPlayerState.field_0xa;
                this->stateID++;
                this->animPriority = 0;
            }
        }
    } else {
        this->timer--;
    }
    gPlayerState.framestate = PL_STATE_HOLD;
}

void sub_08076518(ItemBehavior* this, u32 index) {
    if (PlayerTryDropObject(this, index)) {
        gPlayerState.framestate = PL_STATE_HOLD;
        if ((gPlayerState.jump_status & 0x80) == 0 && gPlayerState.field_0x1f[0] == 0) {
            if (gPlayerEntity.base.knockbackDuration != 0) {
                PlayerCancelHoldItem(this, index);
            } else {
                if ((gPlayerState.playerInput.newInput & (INPUT_LIFT_THROW | INPUT_CANCEL | INPUT_INTERACT)) != 0) {
                    sub_0806F948(&gPlayerEntity.base);
                    gPlayerState.heldObject = 5;
                    this->field_0x18->subAction = 2;
                    this->field_0x18->direction = (gPlayerEntity.base.animationState & 0xe) << 2;
                    this->field_0x18 = NULL;
                    this->stateID++;
                    this->animPriority = 0x0f;
                    if (gPlayerState.flags & PL_NO_CAP) {
                        SetItemAnim(this, ANIM_THROW_NOCAP);
                    } else {
                        SetItemAnim(this, ANIM_THROW);
                    }
                    gPlayerState.field_0xa |= 8 >> index;
                    gPlayerState.keepFacing |= 8 >> index;
                }
            }
        }
    }
}

void sub_080765E0(ItemBehavior* this, u32 index) {
    if (PlayerTryDropObject(this, index) != 0) {
        if ((this->playerFrame & 0x80) != 0) {
            PlayerCancelHoldItem(this, index);
        } else {
            UpdateItemAnim(this);
        }
    }
}

void sub_0807660C(ItemBehavior* this, u32 index) {
    UpdateItemAnim(this);
    if ((this->timer-- == 0) || (gPlayerState.grab_status == 0)) {
        gPlayerState.grab_status = 0;
        DeleteItemBehavior(this, index);
    }
}
