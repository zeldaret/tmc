#include "global.h"
#include "entity.h"
#include "item.h"
#include "functions.h"

void sub_08076C98(ItemBehavior*, u32);
void sub_08076CBC(ItemBehavior*, u32);

void ItemPacciCane(ItemBehavior* beh, u32 idx) {
    static void (*const stateFuncs[])(ItemBehavior * beh, u32) = {
        sub_08076C98,
        sub_08076CBC,
    };
    stateFuncs[beh->stateID](beh, idx);
}

void sub_08076C98(ItemBehavior* beh, u32 idx) {
    beh->field_0x5[4] |= 0xf;
    sub_08077D38(beh, idx);
    sub_0806F948(&gPlayerEntity);
    sub_08077BB8(beh);
}

void sub_08076CBC(ItemBehavior* beh, u32 idx) {
    if ((beh->field_0x5[9] & 0x80) != 0) {
        DeletePlayerItem(beh, idx);
    } else {
        if ((beh->field_0x5[9] & 0x40) != 0) {
            CreatePlayerItemWithParent(beh, 0x12);
        }
        UpdateItemAnim(beh);
    }
}
