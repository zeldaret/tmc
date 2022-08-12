#include "item.h"

extern Entity* CreatePlayerItemForItemIfNotExists(ItemBehavior*);
extern void DeleteItemBehavior(ItemBehavior*, u32);

void ItemDebug(ItemBehavior* this, u32 index) {
    CreatePlayerItemForItemIfNotExists(this);
    DeleteItemBehavior(this, index);
}
