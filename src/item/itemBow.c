#include "item.h"
#include "functions.h"
#include "save.h"

void sub_08075DF4(ItemBehavior*, u32);
void sub_08075E40(ItemBehavior*, u32);
void sub_08075EC0(ItemBehavior*, u32);
void sub_08075F38(ItemBehavior*, u32);
void sub_08075F84(ItemBehavior*, u32);
void sub_08075D88(ItemBehavior*, u32);

void ItemBow(ItemBehavior* this, u32 idx) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075DF4, sub_08075E40, sub_08075EC0, sub_08075F38, sub_08075F84, sub_08075D88,
    };
    stateFuncs[this->stateID](this, idx);
}

void sub_08075DF4(ItemBehavior* this, u32 idx) {
    if ((gPlayerState.field_0x3[1] & 8) == 0) {
        this->field_0x5[4] |= 0x80;
        sub_0806F948(&gPlayerEntity);
        sub_08077BB8(this);
        sub_08077D38(this, idx);
        gPlayerState.field_0x1f[2] = 1;
    } else {
        DeletePlayerItem(this, idx);
    }
}

void sub_08075E40(ItemBehavior* this, u32 idx) {
    u8 bVar1;

    if (gPlayerState.field_0x1f[2] != 0) {
        bVar1 = gPlayerState.field_0x3[1] & 0x80;
        if (bVar1 == 0) {
            UpdateItemAnim(this);
            if ((this->field_0x5[9] & 0x80) != 0) {
                this->stateID = 2;
                this->field_0x5[4] &= 0x7f;
                if (gSave.stats.arrowCount != 0) {
                    this->field_0xf = bVar1;
                    gPlayerState.field_0xa &= ~(8 >> idx);
                }
            }
            return;
        }
    }
    gPlayerState.field_0x1f[2] = 0;
    DeletePlayerItem(this, idx);
}

void sub_08075EC0(ItemBehavior* this, u32 idx) {
    u8 arrowCount;
    s32 iVar2;

    arrowCount = gSave.stats.arrowCount;
    iVar2 = sub_08077EFC(this);
    if (iVar2 != 0 && arrowCount != 0) {
        if (((gPlayerState.field_0x3[1] & 0x80) != 0) || (gPlayerState.field_0x1f[2] == 0)) {
            gPlayerState.field_0x1f[2] = 0;
            DeletePlayerItem(this, idx);
        }
    } else {
        gPlayerState.field_0xa = (8 >> idx) | gPlayerState.field_0xa;
        sub_08077DF4(this, 0x27c);
        this->field_0xf = 0xf;
        this->field_0x5[4] |= 0xf;
        this->stateID = 3;
    }
}

void sub_08075F38(ItemBehavior* this, u32 idx) {
    if (((gPlayerState.field_0x3[1] & 0x80) == 0) && (gPlayerState.field_0x1f[2] != 0)) {
        UpdateItemAnim(this);
        if ((this->field_0x5[9] & 1) != 0) {
            this->stateID = 4;
        }
    } else {
        gPlayerState.field_0x1f[2] = 0;
        DeletePlayerItem(this, idx);
    }
}

void sub_08075F84(ItemBehavior* this, u32 idx) {
    if (((gPlayerState.field_0x3[1] & 0x80) == 0) && (gPlayerState.field_0x1f[2] != 0)) {
        if (GetInventoryValue(ITEM_ARROW_BUTTERFLY) == 1) {
            sub_08077E3C(this, 5);
        } else {
            UpdateItemAnim(this);
        }
        if ((this->field_0x5[9] & 0x80) == 0) {
            return;
        }
    }
    gPlayerState.field_0x1f[2] = 0;
    DeletePlayerItem(this, idx);
}
