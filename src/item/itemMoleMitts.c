
#include "item.h"
#include "functions.h"
#include "sound.h"

extern void (*const gUnk_0811BE04[])(ItemBehavior*, u32);

s32 sub_080774A0(void);

extern u8 gUnk_0811BE14[];
extern s32 sub_0800875A(Entity*, u32, ItemBehavior*);

extern void UpdatePlayerMovement();

void ItemMoleMitts(ItemBehavior* this, u32 arg1) {
    gUnk_0811BE04[this->stateID](this, arg1);
}

void sub_08077130(ItemBehavior* this, u32 arg1) {
    s32 iVar1;

    if (gPlayerState.jump_status == 0) {
        sub_08077D38(this, arg1);
        gPlayerState.field_0x3c[1] = 1;
        this->field_0x5[4] |= 0x80;
        iVar1 = sub_080774A0();
        if (iVar1 != 0) {
            if (this->field_0x5[2] == 0) {
                sub_08077DF4(this, 0x50c);
                this->stateID = 2;
                if (iVar1 == 0x56) {
                    if ((gPlayerEntity.animationState & 2) != 0) {
                        gPlayerEntity.y.HALF.HI = (gPlayerEntity.y.HALF.HI & 0xfff0) | 6;
                    } else {
                        gPlayerEntity.x.HALF.HI = (gPlayerEntity.x.HALF.HI & 0xfff0) | 8;
                    }
                }
            }
        } else {
            sub_08077DF4(this, 0x508);
            this->stateID = 1;
        }
    } else {
        sub_08077E78(this, arg1);
        gPlayerState.field_0x3c[1] = 0;
    }
}

void sub_080771C8(ItemBehavior* this, u32 arg1) {
    Entity* object;

    UpdateItemAnim(this);
    if ((this->field_0x5[9] & 0x80) != 0) {
        sub_08077E78(this, arg1);
        gPlayerState.field_0x3c[1] = 0;
    } else {
        if (((this->field_0x5[9] & 0x20) != 0) && (this->field_0x5[3] == 0xff)) {
            CreateObjectWithParent(&gPlayerEntity, 0x1e, this->field_0x5[9], 1);
        }
        if ((this->field_0x5[9] & 0x10) != 0) {
            if (sub_0800875A(&gPlayerEntity, 0xd, this) == 0) {
                sub_08077DF4(this, 0x520);
                this->stateID = 3;
                SoundReq(SFX_107);
            } else {
                if (this->field_0x5[3] != 0xff) {
                    object = CreateObjectWithParent(&gPlayerEntity, 0x1f, 0, this->field_0x2[1]);
                    if (object != NULL) {
                        object->actionDelay = this->field_0x5[2];
                        object->field_0xf = this->field_0x5[3];
                        object->animationState = gPlayerEntity.animationState & 6;
                        gPlayerEntity.frame = 0;
                        gPlayerEntity.frameDuration = gUnk_0811BE14[this->field_0x5[3]];
                    }
                } else {
                    if ((this->field_0x2[1] == 0x0f) && (this->field_0x5[2] == 0x17)) {
                        this->field_0x5[3] = 0;
                    }
                }
                SoundReq(SFX_108);
            }
        }
    }
}

ASM_FUNC("asm/non_matching/itemMoleMitts/sub_080772A8.inc", void sub_080772A8(ItemBehavior* this, u32 arg1))

void sub_08077448(ItemBehavior* this, u32 arg1) {
    gPlayerEntity.direction = gPlayerEntity.animationState << 2 ^ 0x10;
    gPlayerEntity.speed = 0x100;
    if (((this->field_0x5[9] & 1) != 0) && (this->field_0x5[0] != 0)) {
        UpdatePlayerMovement();
    }
    UpdateItemAnim(this);
    if ((this->field_0x5[9] & 0x80) != 0) {
        gPlayerState.field_0x3c[1] = 0;
        sub_08077E78(this, arg1);
    }
}

ASM_FUNC("asm/non_matching/itemMoleMitts/sub_080774A0.inc", s32 sub_080774A0(void))
