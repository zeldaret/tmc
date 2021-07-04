#include "global.h"
#include "entity.h"
#include "item.h"
#include "functions.h"

extern void (*const gUnk_0811BDF4[])(ItemBehavior* beh, u32);

void ItemGustJar(ItemBehavior* this, u32 arg1) {
    gPlayerState.field_0xa8 = 3;
    gUnk_0811BDF4[this->stateID](this, arg1);
}

ASM_FUNC("asm/non_matching/itemGustJar/sub_08076DF4.inc", void sub_08076DF4(ItemBehavior* this, u32 arg1))

void sub_08076E60(ItemBehavior* this, u32 arg1) {
    Entity* playerItem;

    if ((gPlayerState.field_0x1c & 0xf) == 0) {
        sub_08077E78(this, arg1);
    }
    if ((this->field_0x5[9] & 0x80) != 0) {
        this->stateID = 2;
        sub_08077DF4(this, 0x504);
        gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> arg1);
        playerItem = CreatePlayerItem(0x10, 0, 0, 0);
        if (playerItem != NULL) {
            playerItem->parent = &gPlayerEntity;
        }
    } else {
        UpdateItemAnim(this);
    }
}

ASM_FUNC("asm/non_matching/itemGustJar/sub_08076EC8.inc", void sub_08076EC8(ItemBehavior* this, u32 arg1))

ASM_FUNC("asm/non_matching/itemGustJar/sub_08076F64.inc", void sub_08076F64(ItemBehavior* this, u32 arg1))
