#include "global.h"
#include "entity.h"
#include "item.h"

extern void (*const gUnk_0811BDF4[])(ItemBehavior* beh, u32);

void ItemGustJar(ItemBehavior* beh, u32 arg1) {
    gPlayerState.field_0xa8 = 3;
    gUnk_0811BDF4[beh->stateID](beh, arg1);
}
