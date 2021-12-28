#include "item.h"
#include "audio.h"
#include "functions.h"

extern void (*const gOcarinaStates[4])(ItemBehavior*, u32);

extern void ResetPlayerVelocity(void);
extern void SetPlayerEventPriority(void);

extern void CreateBird(void);
extern void ResetPlayerEventPriority(void);

void ItemOcarina(ItemBehavior* this, u32 arg1) {
    gOcarinaStates[this->stateID](this, arg1);
    gPlayerEntity.field_0x7a.HWORD += 1;
}

void OcarinaUse(ItemBehavior* this, u32 arg1) {
    if (gPlayerState.queued_action == PLAYER_ROLL) {
        sub_08077E78(this, arg1);
    } else {
        this->field_0x5[4] |= 0xf;
        gPlayerEntity.animationState = 0x04;
        gPlayerEntity.spriteSettings.flipX = 0;
        gPlayerEntity.flags &= 0x7f;
        gPlayerEntity.field_0x7a.HWORD = 2;
        gPlayerState.flags |= PL_USE_OCARINA;
        gPlayerState.field_0x27[0] = -1;
        gUnk_02034490[0] = 1;
        gPlayerState.field_0xa = (8 >> arg1) | gPlayerState.field_0xa;
        gPlayerState.keepFacing = (8 >> arg1) | gPlayerState.keepFacing;
        ResetPlayerVelocity();
        sub_08077D38(this, arg1);
        SoundReq(SFX_216);
        SetPlayerEventPriority();
    }
}

NONMATCH("asm/non_matching/ocarina/OcarinaUpdate.inc", void OcarinaUpdate(ItemBehavior* this, u32 arg1)) {
    // TODO regalloc
    UpdateItemAnim(this);
    if ((this->field_0x5[9] & 0x80) != 0) {
        gPlayerEntity.flags |= 0x80;
        gPlayerState.flags &= ~PL_USE_OCARINA;
        gPlayerState.field_0x27[0] = 0;
        gUnk_02034490[0] = 0;
        CreateBird();
        ResetPlayerEventPriority();
        sub_08077E78(this, arg1);
    }
}
END_NONMATCH
