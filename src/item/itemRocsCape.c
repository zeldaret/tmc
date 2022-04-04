#include "item.h"
#include "sound.h"
#include "functions.h"

void sub_08076758(ItemBehavior*, u32);
extern void sub_08077F84(void);

void ItemRocsCape(ItemBehavior* this, u32 arg1) {
    if (this->stateID != 0) {
        sub_08076758(this, arg1);
        return;
    }
    if (gPlayerState.item == NULL) {
        if (gPlayerState.field_0x0[1]) {
            if (((gPlayerState.field_0x3[1] | gPlayerState.heldObject) == 0) &&
                (((gPlayerState.floor_type != SURFACE_DOOR && (gPlayerState.floor_type != SURFACE_PIT)) ||
                  ((gPlayerEntity.z.WORD != 0 || (gPlayerState.field_0x14 != 0)))))) {
                if ((gPlayerState.jump_status == 0) || ((gPlayerState.jump_status & 7) == 3)) {
                    if (-1 < gPlayerEntity.z.WORD) {
                        gPlayerState.field_0x0[1] = 0;
                        this->stateID += 1;
                        gPlayerState.keepFacing = 0;
                        gPlayerState.jump_status = 1;
                        gPlayerState.field_0xe = -1;
                        gPlayerState.item = NULL;
                        gPlayerEntity.zVelocity = Q_16_16(2.0);
                        sub_08077F84();
                        SoundReq(SFX_PLY_VO4);
                        return;
                    }
                } else {
                    sub_08076758(this, arg1);
                    return;
                }
            }
        } else {
            if (((u8)(gPlayerState.sword_state | gPlayerState.field_0xa | gPlayerState.field_0x3[1] |
                      gPlayerState.heldObject | gPlayerState.field_0x1c | gPlayerState.field_0x3c[1]) == 0) &&
                ((((gPlayerState.floor_type != SURFACE_DOOR && gPlayerState.floor_type != SURFACE_DOOR_13 &&
                    gPlayerState.floor_type != SURFACE_PIT) ||
                   (gPlayerEntity.z.WORD != 0)) ||
                  (gPlayerState.field_0x14 != 0)))) {
                if ((gPlayerState.jump_status != 0) && ((gPlayerState.jump_status & 7) != 3)) {
                    sub_08076758(this, arg1);
                    return;
                } else if (gPlayerEntity.z.WORD >= 0) {
                    gPlayerEntity.zVelocity = Q_16_16(2.0);
                    gPlayerState.jump_status = 1;
                    gPlayerState.item = NULL;
                    this->stateID += 1;
                    sub_08077F84();
                    SoundReq(SFX_PLY_VO4);
                    return;
                }
            }
        }
    }
    DeletePlayerItem(this, arg1);
}

void sub_08076758(ItemBehavior* this, u32 arg1) {
    s32 iVar1;

    gPlayerState.field_0xe = 0;
    if ((((gPlayerState.jump_status & 0x28) == 0) && (gPlayerState.jump_status != 0)) &&
        ((gPlayerState.jump_status & 7) != 3)) {
        if (sub_08077EFC(this)) {
            if (this->stateID < 2) {
                if ((gPlayerEntity.zVelocity <= 0) && ((gPlayerState.jump_status & 0x10) == 0)) {
                    this->stateID = 2;
                    gPlayerEntity.field_0x7a.HWORD = 2;
                    gPlayerEntity.zVelocity = Q_16_16(2.0);
                    gPlayerState.jump_status |= 0x10;
                    gPlayerState.animation = 0x288;
                    SoundReq(SFX_172);
                }
            } else {
                gPlayerEntity.field_0x7a.HWORD += 1;
            }
        } else {
            if (this->stateID > 1) {
                gPlayerEntity.field_0x7a.HWORD += 1;
                gPlayerState.jump_status &= 0xef;
            }
        }
    } else {
        DeletePlayerItem(this, arg1);
    }
}
