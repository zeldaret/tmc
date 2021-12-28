#include "item.h"
#include "functions.h"
#include "sound.h"
#include "object.h"

extern void (*const gUnk_0811BD44[])(ItemBehavior*, u32);

void sub_080759B8(ItemBehavior*, u32);

extern u32 sub_08077EC8(ItemBehavior*);

void sub_08075694(ItemBehavior* this, u32 arg1);

void ItemSword(ItemBehavior* this, u32 arg1) {
    gPlayerState.framestate = PL_STATE_SWORD;
    gUnk_0811BD44[this->stateID](this, arg1);
}

#ifdef EU
ASM_FUNC("asm/non_matching/eu/sub_08075338.inc", void sub_08075338(ItemBehavior* this, u32 arg1))
#else
ASM_FUNC("asm/non_matching/itemSword/sub_08075338.inc", void sub_08075338(ItemBehavior* this, u32 arg1))
#endif

ASM_FUNC("asm/non_matching/itemSword/sub_080754B8.inc", void sub_080754B8(ItemBehavior* this, u32 arg1))

void sub_08075580(ItemBehavior* this, u32 arg1) {
    if ((sub_08077EFC(this) != 0) && (gPlayerState.jumpStatus == 0)) {
        gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> arg1);
        gPlayerState.field_0x1a[1] = 1;
        gPlayerState.item->hurtType = 0xd;
        this->field_0xf = 0;
        this->stateID = 2;
        if ((gPlayerState.field_0xac & 0x200) != 0) {
            this->field_0x5[2] = 0x28;
        } else {
            this->field_0x5[2] = 0x50;
        }
        sub_08077DF4(this, 0x168);
        CreateObject(OBJECT_43, 0, 0);
        return;
    }
    sub_080759B8(this, arg1);
}

void sub_080755F0(ItemBehavior* this, u32 arg1) {
    if (sub_08077EFC(this) != 0) {
        if (sub_08077EC8(this) == 0) {
            if ((gPlayerState.field_0x1a[1] | gPlayerState.field_0x3[1]) != 0) {
                if (--this->field_0x5[2] == 0) {
                    this->stateID = 3;
                    this->field_0x5[4] |= 0x80;
                    gPlayerState.field_0x1a[1] = gPlayerState.field_0x1a[1] | 0x20;
                }
            } else {
                sub_080759B8(this, arg1);
            }
        }
    } else {
        sub_080759B8(this, arg1);
    }
}

void sub_0807564C(ItemBehavior* this, u32 arg1) {
    if ((gPlayerState.field_0x1a[1] | gPlayerState.field_0x3[1]) == 0) {
        sub_080759B8(this, arg1);
    } else {
        if ((sub_08077EC8(this) == 0) && ((sub_08077EFC(this) == 0 || ((gPlayerState.field_0x1a[1] & 0x80) != 0)))) {
            sub_08075694(this, arg1);
        }
    }
}

void sub_08075694(ItemBehavior* this, u32 arg1) {
    this->field_0x5[2] = 1;
    if (gPlayerState.flags & PL_SWORD_THRUST) {
        gPlayerState.flags &= ~PL_SWORD_THRUST;
        gPlayerState.flags &= ~PL_ROLLING;
        sub_08077DF4(this, 300);
    } else {
        gPlayerState.field_0xab = 1;
        sub_08077DF4(this, 0x124);
    }
    gPlayerState.field_0xa = (8 >> arg1) | gPlayerState.field_0xa;
    this->stateID = 4;
    this->field_0xf = 6;
    gPlayerEntity.hurtType = 0x1e;
    gPlayerState.field_0x1a[1] |= 0x40;
    gPlayerState.field_0x1a[1] &= 0xdf;
    if ((gPlayerState.field_0xa0[0] == 0x04) && ((gPlayerState.flags & PL_CLONING) == 0)) {
        gPlayerState.field_0xa0[0] = 0x01;
        DeleteClones();
    }
    SoundReq(SFX_PLY_VO2);
}

ASM_FUNC("asm/non_matching/itemSword/sub_08075738.inc", void sub_08075738(ItemBehavior* this, u32 arg1))

void sub_08075898(ItemBehavior* this, u32 arg1) {
    if (gPlayerState.field_0x3[1] == 0) {
        sub_080759B8(this, arg1);
    }
}

void sub_080758B0(ItemBehavior* this, u32 arg1) {
    if (gPlayerState.field_0x3[1] == 0) {
        sub_080759B8(this, arg1);
    } else {
        UpdateItemAnim(this);
        if ((this->field_0x5[9] & 0x80) != 0) {
            this->field_0xf = 0;
            if ((gPlayerState.field_0x1a[1] & 0x20) != 0) {
                this->stateID = 3;
            } else {
                this->stateID = 5;
            }
            gPlayerState.field_0x1a[1] &= 0xf7;
        }
    }
}

ASM_FUNC("asm/non_matching/itemSword/sub_08075900.inc", void sub_08075900(ItemBehavior* this, u32 arg1))

void sub_080759B8(ItemBehavior* this, u32 arg1) {
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        gPlayerEntity.hurtType = 0;
    }
    gPlayerState.flags &= ~PL_SWORD_THRUST;
    gPlayerState.field_0x1a[1] = 0;
    gPlayerState.item = NULL;
    sub_08077E78(this, arg1);
}
