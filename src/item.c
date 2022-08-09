#include "global.h"
#include "item.h"

// TODO - How does this relate to PlayerItemFunctions? Is this just a lookup table?
void (*const gItemFunctions[])(ItemBehavior*, u32) = {
    [ITEM_NONE] = ItemDebug,
    [ITEM_SMITH_SWORD] = ItemSword,
    [ITEM_GREEN_SWORD] = ItemSword,
    [ITEM_RED_SWORD] = ItemSword,
    [ITEM_BLUE_SWORD] = ItemSword,
    [ITEM_UNUSED_SWORD] = ItemSword,
    [ITEM_FOURSWORD] = ItemSword,
    [ITEM_BOMBS] = ItemBomb,
    [ITEM_REMOTE_BOMBS] = ItemBomb,
    [ITEM_BOW] = ItemBow,
    [ITEM_LIGHT_ARROW] = ItemBow,
    [ITEM_BOOMERANG] = ItemBoomerang,
    [ITEM_MAGIC_BOOMERANG] = ItemBoomerang,
    [ITEM_SHIELD] = ItemShield,
    [ITEM_MIRROR_SHIELD] = ItemShield,
    [ITEM_LANTERN_OFF] = ItemLantern,
    [ITEM_LANTERN_ON] = ItemLantern,
    [ITEM_GUST_JAR] = ItemGustJar,
    [ITEM_PACCI_CANE] = ItemPacciCane,
    [ITEM_MOLE_MITTS] = ItemMoleMitts,
    [ITEM_ROCS_CAPE] = ItemRocsCape,
    [ITEM_PEGASUS_BOOTS] = ItemPegasusBoots,
    [ITEM_FIRE_ROD] = ItemDebug,
    [ITEM_OCARINA] = ItemOcarina,
    [ITEM_ORB_GREEN] = ItemDebug,
    [ITEM_ORB_BLUE] = ItemDebug,
    [ITEM_ORB_RED] = ItemDebug,
    [ITEM_TRY_PICKUP_OBJECT] = ItemTryPickupObject,
    [ITEM_BOTTLE1] = ItemJarEmpty,
    [ITEM_BOTTLE2] = ItemJarEmpty,
    [ITEM_BOTTLE3] = ItemJarEmpty,
    [ITEM_BOTTLE4] = ItemJarEmpty,
};

void ExecuteItemFunction(ItemBehavior* behavior, u32 index) {
    gItemFunctions[behavior->behaviorId](behavior, index);
}
