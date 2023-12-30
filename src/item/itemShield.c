#include "global.h"
#include "entity.h"
#include "item.h"
#include "sound.h"
#include "functions.h"

void sub_08076D04(ItemBehavior*, u32);
void sub_08076D34(ItemBehavior*, u32);
void sub_08076D94(ItemBehavior*, u32);

void ItemShield(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08076D04,
        sub_08076D34,
        sub_08076D94,
    };
    stateFuncs[this->stateID](this, index);
}

void sub_08076D04(ItemBehavior* this, u32 index) {
    gPlayerState.shield_status = 0x81;
    this->priority = 2;
    sub_0806F948(&gPlayerEntity.base);
    sub_08077D38(this, index);
    sub_08077BB8(this);
}

void sub_08076D34(ItemBehavior* this, u32 index) {
    if (IsItemActive(this) != 0) {
        gPlayerState.shield_status |= 1;
        UpdateItemAnim(this);
        if (this->playerFrame != 0) {
            this->stateID++;
            this->animPriority = 0;
            gPlayerState.field_0xa &= ~(u8)(8 >> index);
            SoundReq(SFX_15D);
        }
    } else {
        gPlayerState.shield_status = 0;
        DeleteItemBehavior(this, index);
    }
}

void sub_08076D94(ItemBehavior* this, u32 index) {
    if (IsItemActive(this)) {
        gPlayerState.shield_status |= 1;
        UpdateItemAnim(this);
    } else {
        gPlayerState.shield_status = 0;
        DeleteItemBehavior(this, index);
    }
}
