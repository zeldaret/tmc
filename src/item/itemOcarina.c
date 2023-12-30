#include "functions.h"
#include "item.h"
#include "sound.h"

extern void ResetPlayerVelocity(void);
extern void CreateBird(Entity*);
void OcarinaUse(ItemBehavior*, u32);
void OcarinaUpdate(ItemBehavior*, u32);

void ItemOcarina(ItemBehavior* this, u32 index) {
    static void (*const gOcarinaStates[])(ItemBehavior*, u32) = {
        OcarinaUse,
        OcarinaUpdate,
    };
    gOcarinaStates[this->stateID](this, index);
    gPlayerEntity.unk_7a++;
}

void OcarinaUse(ItemBehavior* this, u32 index) {
    if (gPlayerState.queued_action == PLAYER_ROLL) {
        DeleteItemBehavior(this, index);
    } else {
        this->priority |= 0xf;
        gPlayerEntity.base.animationState = 0x04;
        gPlayerEntity.base.spriteSettings.flipX = 0;
        gPlayerEntity.base.flags &= ~ENT_COLLIDE;
        gPlayerEntity.unk_7a = 2;
        gPlayerState.flags |= PL_USE_OCARINA;
        gPlayerState.field_0x27[0] = -1;
        gPauseMenuOptions.disabled = 1;
        gPlayerState.field_0xa = (8 >> index) | gPlayerState.field_0xa;
        gPlayerState.keepFacing = (8 >> index) | gPlayerState.keepFacing;
        ResetPlayerVelocity();
        sub_08077D38(this, index);
        SoundReq(SFX_216);
        SetPlayerEventPriority();
    }
}

void OcarinaUpdate(ItemBehavior* this, u32 index) {
    UpdateItemAnim(this);
    if ((this->playerFrame & 0x80) != 0) {
        gPlayerEntity.base.flags |= ENT_COLLIDE;
        gPlayerState.flags &= ~PL_USE_OCARINA;
        gPlayerState.field_0x27[0] = 0;
        gPauseMenuOptions.disabled = 0;
        CreateBird(&gPlayerEntity.base);
        ResetPlayerEventPriority();
        DeleteItemBehavior(this, index);
    }
}
