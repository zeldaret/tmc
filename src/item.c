#include "global.h"
#include "entity.h"
#include "item.h"


// TODO - How does this relate to PlayerItemFunctions? Is this just a lookup table?
void (*const gItemFunctions[])(ItemBehavior*, u32) = {
    DebugItem,
    Sword,
    Sword,
    Sword,
    Sword,
    Sword,
    Sword,
    Bomb,
    Bomb,
    Bow,
    Bow,
    sub_08075D14,
    sub_08075D14,
    Shield,
    Shield,
    Lantern,
    Lantern,
    GustJar,
    PacciCane,
    MoleMitts,
    RocsCape,
    sub_08076800,
    DebugItem,
    Ocarina,
    DebugItem,
    DebugItem,
    DebugItem,
    TryPickupObject,
    JarEmpty,
    JarEmpty,
    JarEmpty,
    JarEmpty,
};
