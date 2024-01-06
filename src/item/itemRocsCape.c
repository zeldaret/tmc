#include "functions.h"
#include "item.h"
#include "sound.h"

void sub_08076758(ItemBehavior*, u32);
extern void sub_08077F84(void);

void ItemRocsCape(ItemBehavior* this, u32 index) {
    if (this->stateID != 0) {
        sub_08076758(this, index);
        return;
    }
    if (gPlayerState.item == NULL) {
        if (gPlayerState.grab_status) {
            if (((gPlayerState.attack_status | gPlayerState.heldObject) == 0) &&
                (((gPlayerState.floor_type != SURFACE_DOOR && (gPlayerState.floor_type != SURFACE_PIT)) ||
                  ((gPlayerEntity.base.z.WORD != 0 || (gPlayerState.field_0x14 != 0)))))) {
                if ((gPlayerState.jump_status == 0) || ((gPlayerState.jump_status & 7) == 3)) {
                    if (-1 < gPlayerEntity.base.z.WORD) {
                        gPlayerState.grab_status = 0;
                        this->stateID++;
                        gPlayerState.keepFacing = 0;
                        gPlayerState.jump_status = 1;
                        gPlayerState.itemAnimPriority = -1;
                        gPlayerState.item = NULL;
                        gPlayerEntity.base.zVelocity = Q_16_16(2.0);
                        sub_08077F84();
                        SoundReq(SFX_PLY_VO4);
                        return;
                    }
                } else {
                    sub_08076758(this, index);
                    return;
                }
            }
        } else {
            if (((u8)(gPlayerState.sword_state | gPlayerState.field_0xa | gPlayerState.attack_status |
                      gPlayerState.heldObject | gPlayerState.gustJarState | gPlayerState.moleMittsState) == 0) &&
                ((((gPlayerState.floor_type != SURFACE_DOOR && gPlayerState.floor_type != SURFACE_DOOR_13 &&
                    gPlayerState.floor_type != SURFACE_PIT) ||
                   (gPlayerEntity.base.z.WORD != 0)) ||
                  (gPlayerState.field_0x14 != 0)))) {
                if ((gPlayerState.jump_status != 0) && ((gPlayerState.jump_status & 7) != 3)) {
                    sub_08076758(this, index);
                    return;
                } else if (gPlayerEntity.base.z.WORD >= 0) {
                    gPlayerEntity.base.zVelocity = Q_16_16(2.0);
                    gPlayerState.jump_status = 1;
                    gPlayerState.item = NULL;
                    this->stateID++;
                    sub_08077F84();
                    SoundReq(SFX_PLY_VO4);
                    return;
                }
            }
        }
    }
    DeleteItemBehavior(this, index);
}

void sub_08076758(ItemBehavior* this, u32 index) {
    gPlayerState.itemAnimPriority = 0;
    if ((((gPlayerState.jump_status & 0x28) == 0) && (gPlayerState.jump_status != 0)) &&
        ((gPlayerState.jump_status & 7) != 3)) {
        if (IsItemActive(this)) {
            if (this->stateID < 2) {
                if ((gPlayerEntity.base.zVelocity <= 0) && ((gPlayerState.jump_status & 0x10) == 0)) {
                    this->stateID = 2;
                    gPlayerEntity.unk_7a = 2;
                    gPlayerEntity.base.zVelocity = Q_16_16(2.0);
                    gPlayerState.jump_status |= 0x10;
                    gPlayerState.animation = ANIM_ROCS_CAPE;
                    SoundReq(SFX_172);
                }
            } else {
                gPlayerEntity.unk_7a++;
            }
        } else {
            if (this->stateID > 1) {
                gPlayerEntity.unk_7a++;
                gPlayerState.jump_status &= 0xef;
            }
        }
    } else {
        DeleteItemBehavior(this, index);
    }
}
