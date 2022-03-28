#include "item.h"
#include "sound.h"
#include "functions.h"

extern void (*const gOcarinaStates[4])(ItemBehavior*, u32);

extern void ResetPlayerVelocity(void);

extern void CreateBird(void);

void ItemOcarina(ItemBehavior* this, u32 idx) {
    gOcarinaStates[this->stateID](this, idx);
    gPlayerEntity.field_0x7a.HWORD += 1;
}

void OcarinaUse(ItemBehavior* this, u32 idx) {
    if (gPlayerState.queued_action == PLAYER_ROLL) {
        DeletePlayerItem(this, idx);
    } else {
        this->field_0x5[4] |= 0xf;
        gPlayerEntity.animationState = 0x04;
        gPlayerEntity.spriteSettings.flipX = 0;
        gPlayerEntity.flags &= ~ENT_COLLIDE;
        gPlayerEntity.field_0x7a.HWORD = 2;
        gPlayerState.flags |= PL_USE_OCARINA;
        gPlayerState.field_0x27[0] = -1;
        gPauseMenuOptions.disabled = 1;
        gPlayerState.field_0xa = (8 >> idx) | gPlayerState.field_0xa;
        gPlayerState.keepFacing = (8 >> idx) | gPlayerState.keepFacing;
        ResetPlayerVelocity();
        sub_08077D38(this, idx);
        SoundReq(SFX_216);
        SetPlayerEventPriority();
    }
}

NONMATCH("asm/non_matching/ocarina/OcarinaUpdate.inc", void OcarinaUpdate(ItemBehavior* this, u32 idx)) {
    // TODO regalloc
    UpdateItemAnim(this);
    if ((this->field_0x5[9] & 0x80) != 0) {
        gPlayerEntity.flags |= ENT_COLLIDE;
        gPlayerState.flags &= ~PL_USE_OCARINA;
        gPlayerState.field_0x27[0] = 0;
        gPauseMenuOptions.disabled = 0;
        CreateBird();
        ResetPlayerEventPriority();
        DeletePlayerItem(this, idx);
    }
}
END_NONMATCH
