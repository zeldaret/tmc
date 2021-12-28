#include "item.h"
#include "audio.h"
#include "functions.h"

void sub_08076758(ItemBehavior*, u32);
extern void sub_08077F84(void);

/*void ItemRocsCape(ItemBehavior* this, u32 arg1) {
    if (this->stateID != 0) {
        sub_08076758(this, arg1);
        return;
    }
    if (gPlayerState.item == NULL) {
        if (gPlayerState.field_0x0[1] == 0) {
            if (((u8)(gPlayerState.field_0x1a[1] | gPlayerState.field_0xa | gPlayerState.field_0x3[1] |
                        gPlayerState.heldObject | gPlayerState.field_0x1c | gPlayerState.field_0x3c[1]) == 0) &&
                ((((1 < (u8)(gPlayerState.field_0x10[2] - 0x12) && (gPlayerState.field_0x10[2] != 1)) ||
                   (gPlayerEntity.z.WORD != 0)) ||
                  (gPlayerState.field_0x14 != 0)))) {
                if ((gPlayerState.jumpStatus != 0) && ((gPlayerState.jumpStatus & 7) != 3))
                    goto _08076710;
                if (-1 < gPlayerEntity.z.WORD) {
                    gPlayerEntity.zVelocity = 0x20000;
                    gPlayerState.jumpStatus = 1;
                    gPlayerState.item = NULL;
                    this->stateID += 1;
                    goto _0807673C;
                }
            }
        } else {
            if (((gPlayerState.heldObject | gPlayerState.field_0x3[1]) == 0) &&
                (((gPlayerState.field_0x10[2] != 0x12 && (gPlayerState.field_0x10[2] != 1)) ||
                  ((gPlayerEntity.z.WORD != 0 || (gPlayerState.field_0x14 != 0)))))) {
                if ((gPlayerState.jumpStatus != 0) && ((gPlayerState.jumpStatus & 7) != 3)) {
                _08076710:
                    sub_08076758(this, arg1);
                    return;
                }
                if (-1 < gPlayerEntity.z.WORD) {
                    gPlayerState.field_0x0[1] = 0;
                    this->stateID += 1;
                    gPlayerState.keepFacing = 0;
                    gPlayerState.jumpStatus = 1;
                    gPlayerState.field_0xe = -1;
                    gPlayerState.item = NULL;
                    gPlayerEntity.zVelocity = 0x20000;
                _0807673C:
                    sub_08077F84();
                    SoundReq(SFX_PLY_VO4);
                    return;
                }
            }
        }
    }
    sub_08077E78(this, arg1);
}
*/
ASM_FUNC("asm/non_matching/itemRocsCape/ItemRocsCape.inc", void ItemRocsCape(ItemBehavior* this, u32 arg1))

void sub_08076758(ItemBehavior* this, u32 arg1) {
    s32 iVar1;

    gPlayerState.field_0xe = 0;
    if ((((gPlayerState.jumpStatus & 0x28) == 0) && (gPlayerState.jumpStatus != 0)) &&
        ((gPlayerState.jumpStatus & 7) != 3)) {
        if (sub_08077EFC(this)) {
            if (this->stateID < 2) {
                if ((gPlayerEntity.zVelocity < 1) && ((gPlayerState.jumpStatus & 0x10) == 0)) {
                    this->stateID = 2;
                    gPlayerEntity.field_0x7a.HWORD = 2;
                    gPlayerEntity.zVelocity = 0x20000;
                    gPlayerState.jumpStatus |= 0x10;
                    gPlayerState.animation = 0x288;
                    SoundReq(SFX_172);
                }
            } else {
                gPlayerEntity.field_0x7a.HWORD += 1;
            }
        } else {
            if (this->stateID > 1) {
                gPlayerEntity.field_0x7a.HWORD += 1;
                gPlayerState.jumpStatus &= 0xef;
            }
        }
    } else {
        sub_08077E78(this, arg1);
    }
}
