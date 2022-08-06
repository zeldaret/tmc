#include "global.h"
#include "entity.h"
#include "item.h"
#include "sound.h"
#include "functions.h"

void sub_08076D04(ItemBehavior*, u32);
void sub_08076D34(ItemBehavior*, u32);
void sub_08076D94(ItemBehavior*, u32);

void ItemShield(ItemBehavior* beh, u32 idx) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08076D04,
        sub_08076D34,
        sub_08076D94,
    };
    stateFuncs[beh->stateID](beh, idx);
}

void sub_08076D04(ItemBehavior* beh, u32 idx) {
    gPlayerState.field_0x3[0] = 0x81;
    beh->field_0x9 = 2;
    sub_0806F948(&gPlayerEntity);
    sub_08077D38(beh, idx);
    sub_08077BB8(beh);
}

void sub_08076D34(ItemBehavior* beh, u32 idx) {
    if (sub_08077EFC(beh) != 0) {
        gPlayerState.field_0x3[0] |= 1;
        UpdateItemAnim(beh);
        if (beh->playerFrame != 0) {
            beh->stateID++;
            beh->field_0xf = 0;
            gPlayerState.field_0xa &= ~(u8)(8 >> idx);
            SoundReq(SFX_15D);
        }
    } else {
        gPlayerState.field_0x3[0] = 0;
        DeletePlayerItem(beh, idx);
    }
}

void sub_08076D94(ItemBehavior* beh, u32 idx) {
    if (sub_08077EFC(beh)) {
        gPlayerState.field_0x3[0] |= 1;
        UpdateItemAnim(beh);
    } else {
        gPlayerState.field_0x3[0] = 0;
        DeletePlayerItem(beh, idx);
    }
}
