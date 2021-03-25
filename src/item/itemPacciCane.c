#include "global.h"
#include "entity.h"
#include "item.h"

// TODO include correct headers?
extern void UpdateItemAnim(ItemBehavior*);
extern void CreatePlayerBomb(ItemBehavior*, u32);
extern void sub_08077E78(ItemBehavior*, u32);
extern void sub_08077BB8(ItemBehavior*);
extern void sub_0806F948(Entity*);
extern void sub_08077D38(ItemBehavior*, u32);

extern void (*const gUnk_0811BDE0[])(ItemBehavior* beh, u32);

void ItemPacciCane(ItemBehavior* beh, u32 arg1) {
    gUnk_0811BDE0[beh->stateID](beh, arg1);
}

void sub_08076C98(ItemBehavior* beh, u32 arg1) {
    beh->field_0x5[4] |= 0xf;
    sub_08077D38(beh, arg1);
    sub_0806F948(&gPlayerEntity);
    sub_08077BB8(beh);
}

void sub_08076CBC(ItemBehavior* beh, u32 arg1) {
    if ((beh->field_0x5[9] & 0x80) != 0) {
        sub_08077E78(beh, arg1);
    } else {
        if ((beh->field_0x5[9] & 0x40) != 0) {
            CreatePlayerBomb(beh, 0x12);
        }
        UpdateItemAnim(beh);
    }
}
