#include "global.h"
#include "item.h"

// TODO - How does this relate to PlayerItemFunctions? Is this just a lookup table?
void (*const gItemFunctions[])(ItemBehavior*, u32) = {

    ItemDebug,        ItemSword,    ItemSword,    ItemSword,    ItemSword,     ItemSword,     ItemSword,
    ItemBomb,         ItemBomb,     ItemBow,      ItemBow,      ItemBoomerang, ItemBoomerang, ItemShield,
    ItemShield,       ItemLantern,  ItemLantern,  ItemGustJar,  ItemPacciCane, ItemMoleMitts, ItemRocsCape,
    ItemPegasusBoots, ItemDebug,    ItemOcarina,  ItemDebug,    ItemDebug,     ItemDebug,     ItemTryPickupObject,
    ItemJarEmpty,     ItemJarEmpty, ItemJarEmpty, ItemJarEmpty,
};
