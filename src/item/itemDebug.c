#include "item.h"

extern Entity* sub_08077BD4(ItemBehavior*);
extern void DeletePlayerItem(ItemBehavior*, u32);

void ItemDebug(ItemBehavior* beh, u32 idx) {
    sub_08077BD4(beh);
    DeletePlayerItem(beh, idx);
}
