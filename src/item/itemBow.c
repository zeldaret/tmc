#include "item.h"
#include "functions.h"
#include "save.h"

void sub_08075DF4(ItemBehavior*, u32);
void sub_08075E40(ItemBehavior*, u32);
void ItemBowShoot(ItemBehavior*, u32);
void sub_08075F38(ItemBehavior*, u32);
void sub_08075F84(ItemBehavior*, u32);
void sub_08075D88(ItemBehavior*, u32);

void ItemBow(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075DF4, sub_08075E40, ItemBowShoot, sub_08075F38, sub_08075F84, sub_08075D88,
    };
    stateFuncs[this->stateID](this, index);
}

void sub_08075DF4(ItemBehavior* this, u32 index) {
    if ((gPlayerState.attack_status & 8) == 0) {
        this->priority |= 0x80;
        sub_0806F948(&gPlayerEntity.base);
        sub_08077BB8(this);
        sub_08077D38(this, index);
        gPlayerState.bow_state = 1;
    } else {
        DeleteItemBehavior(this, index);
    }
}

void sub_08075E40(ItemBehavior* this, u32 index) {
    if (gPlayerState.bow_state != 0) {
        if ((gPlayerState.attack_status & 0x80) == 0) {
            UpdateItemAnim(this);
            if ((this->playerFrame & 0x80) != 0) {
                this->stateID = 2;
                this->priority &= ~0x80;
                if (gSave.stats.arrowCount != 0) {
                    this->animPriority = 0;
                    gPlayerState.field_0xa &= ~(8 >> index);
                }
            }
            return;
        }
    }
    gPlayerState.bow_state = 0;
    DeleteItemBehavior(this, index);
}

void ItemBowShoot(ItemBehavior* this, u32 index) {
    u8 arrowCount;
    s32 isShooting;

    arrowCount = gSave.stats.arrowCount;
    isShooting = IsItemActive(this);
    if (isShooting && arrowCount != 0) {
        if (((gPlayerState.attack_status & 0x80) != 0) || (gPlayerState.bow_state == 0)) {
            gPlayerState.bow_state = 0;
            DeleteItemBehavior(this, index);
        }
    } else {
        gPlayerState.field_0xa = (8 >> index) | gPlayerState.field_0xa;
        SetItemAnim(this, ANIM_BOW_SHOOT);
        this->animPriority = 0xf;
        this->priority |= 0xf;
        this->stateID = 3;
    }
}

void sub_08075F38(ItemBehavior* this, u32 index) {
    if (((gPlayerState.attack_status & 0x80) == 0) && (gPlayerState.bow_state != 0)) {
        UpdateItemAnim(this);
        if ((this->playerFrame & 1) != 0) {
            this->stateID = 4;
        }
    } else {
        gPlayerState.bow_state = 0;
        DeleteItemBehavior(this, index);
    }
}

void sub_08075F84(ItemBehavior* this, u32 index) {
    if (((gPlayerState.attack_status & 0x80) == 0) && (gPlayerState.bow_state != 0)) {
        if (GetInventoryValue(ITEM_ARROW_BUTTERFLY) == 1) {
            sub_08077E3C(this, 5);
        } else {
            UpdateItemAnim(this);
        }
        if ((this->playerFrame & 0x80) == 0) {
            return;
        }
    }
    gPlayerState.bow_state = 0;
    DeleteItemBehavior(this, index);
}
