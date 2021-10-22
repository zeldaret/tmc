#include "item.h"

extern Entity* sub_08077BD4(ItemBehavior*);
extern void sub_08077E78(ItemBehavior*, u32);

void ItemDebug(ItemBehavior* beh, u32 arg1) {
    sub_08077BD4(beh);
    sub_08077E78(beh, arg1);
}
