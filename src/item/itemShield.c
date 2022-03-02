#include "global.h"
#include "entity.h"
#include "item.h"
#include "sound.h"
#include "functions.h"

extern void (*const gUnk_0811BDE8[])(ItemBehavior* beh, u32);

void ItemShield(ItemBehavior* beh, u32 arg1) {
    gUnk_0811BDE8[beh->stateID](beh, arg1);
}

void sub_08076D04(ItemBehavior* beh, u32 arg1) {
    gPlayerState.field_0x3[0] = 0x81;
    beh->field_0x5[4] = 2;
    sub_0806F948(&gPlayerEntity);
    sub_08077D38(beh, arg1);
    sub_08077BB8(beh);
}

void sub_08076D34(ItemBehavior* beh, u32 arg1) {
    if (sub_08077EFC(beh) != 0) {
        gPlayerState.field_0x3[0] |= 1;
        UpdateItemAnim(beh);
        if (beh->field_0x5[9] != 0) {
            beh->stateID++;
            beh->field_0xf = 0;
            gPlayerState.field_0xa &= ~(u8)(8 >> arg1);
            SoundReq(SFX_15D);
        }
    } else {
        gPlayerState.field_0x3[0] = 0;
        sub_08077E78(beh, arg1);
    }
}

void sub_08076D94(ItemBehavior* beh, u32 arg1) {
    if (sub_08077EFC(beh)) {
        gPlayerState.field_0x3[0] |= 1;
        UpdateItemAnim(beh);
    } else {
        gPlayerState.field_0x3[0] = 0;
        sub_08077E78(beh, arg1);
    }
}
