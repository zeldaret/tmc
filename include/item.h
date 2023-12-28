#ifndef ITEM_H
#define ITEM_H

#include "global.h"
#include "entity.h"
#include "player.h"

void CreateItemEntity(u32, u32, u32);
extern void ExecuteItemFunction(ItemBehavior* this, u32 index);

extern void ItemDebug(ItemBehavior*, u32);
extern void ItemSword(ItemBehavior*, u32);
extern void ItemBomb(ItemBehavior*, u32);
extern void ItemBow(ItemBehavior*, u32);
extern void ItemBoomerang(ItemBehavior*, u32);
extern void ItemShield(ItemBehavior*, u32);
extern void ItemLantern(ItemBehavior*, u32);
extern void ItemGustJar(ItemBehavior*, u32);
extern void ItemPacciCane(ItemBehavior*, u32);
extern void ItemMoleMitts(ItemBehavior*, u32);
extern void ItemRocsCape(ItemBehavior*, u32);
extern void ItemPegasusBoots(ItemBehavior*, u32);
extern void ItemOcarina(ItemBehavior*, u32);
extern void ItemTryPickupObject(ItemBehavior*, u32);
extern void ItemJarEmpty(ItemBehavior*, u32);

typedef enum {
    ITEM_NONE,
    ITEM_SMITH_SWORD,
    ITEM_GREEN_SWORD,
    ITEM_RED_SWORD,
    ITEM_BLUE_SWORD,
    ITEM_UNUSED_SWORD,
    ITEM_FOURSWORD,
    ITEM_BOMBS,
    ITEM_REMOTE_BOMBS,
    ITEM_BOW,
    ITEM_LIGHT_ARROW,
    ITEM_BOOMERANG,
    ITEM_MAGIC_BOOMERANG,
    ITEM_SHIELD,
    ITEM_MIRROR_SHIELD,
    ITEM_LANTERN_OFF,
    ITEM_LANTERN_ON,
    ITEM_GUST_JAR,
    ITEM_PACCI_CANE,
    ITEM_MOLE_MITTS,
    ITEM_ROCS_CAPE,
    ITEM_PEGASUS_BOOTS,
    ITEM_FIRE_ROD,
    ITEM_OCARINA,
    ITEM_ORB_GREEN,
    ITEM_ORB_BLUE,
    ITEM_ORB_RED,
    ITEM_TRY_PICKUP_OBJECT,
    ITEM_BOTTLE1,
    ITEM_BOTTLE2,
    ITEM_BOTTLE3,
    ITEM_BOTTLE4,
    // End of activatable items.
    ITEM_BOTTLE_EMPTY,
    ITEM_BOTTLE_BUTTER,
    ITEM_BOTTLE_MILK,
    ITEM_BOTTLE_HALF_MILK,
    ITEM_BOTTLE_RED_POTION,
    ITEM_BOTTLE_BLUE_POTION,
    ITEM_BOTTLE_WATER,
    ITEM_BOTTLE_MINERAL_WATER,
    ITEM_BOTTLE_FAIRY,
    ITEM_BOTTLE_PICOLYTE_RED,
    ITEM_BOTTLE_PICOLYTE_ORANGE,
    ITEM_BOTTLE_PICOLYTE_YELLOW,
    ITEM_BOTTLE_PICOLYTE_GREEN,
    ITEM_BOTTLE_PICOLYTE_BLUE,
    ITEM_BOTTLE_PICOLYTE_WHITE,
    BOTTLE_CHARM_NAYRU,
    BOTTLE_CHARM_FARORE,
    BOTTLE_CHARM_DIN,
    ITEM_32,
    ITEM_33,
    ITEM_QST_SWORD,
    ITEM_QST_BROKEN_SWORD,
    ITEM_QST_DOGFOOD,
    ITEM_QST_LONLON_KEY,
    ITEM_QST_MUSHROOM,
    ITEM_QST_BOOK1,
    ITEM_QST_BOOK2,
    ITEM_QST_BOOK3,
    ITEM_QST_GRAVEYARD_KEY,
    ITEM_QST_TINGLE_TROPHY,
    ITEM_QST_CARLOV_MEDAL,
    ITEM_SHELLS,
    ITEM_EARTH_ELEMENT,
    ITEM_FIRE_ELEMENT,
    ITEM_WATER_ELEMENT,
    ITEM_WIND_ELEMENT,
    ITEM_GRIP_RING,
    ITEM_POWER_BRACELETS,
    ITEM_FLIPPERS,
    ITEM_MAP,
    ITEM_SKILL_SPIN_ATTACK,
    ITEM_SKILL_ROLL_ATTACK,
    ITEM_SKILL_DASH_ATTACK,
    ITEM_SKILL_ROCK_BREAKER,
    ITEM_SKILL_SWORD_BEAM,
    ITEM_SKILL_GREAT_SPIN,
    ITEM_SKILL_DOWN_THRUST,
    ITEM_SKILL_PERIL_BEAM,
    ITEM_DUNGEON_MAP,
    ITEM_COMPASS,
    ITEM_BIG_KEY,
    ITEM_SMALL_KEY,
    ITEM_RUPEE1,
    ITEM_RUPEE5,
    ITEM_RUPEE20,
    ITEM_RUPEE50,
    ITEM_RUPEE100,
    ITEM_RUPEE200,
    ITEM_5A,
    ITEM_JABBERNUT,
    ITEM_KINSTONE,
    ITEM_BOMBS5,
    ITEM_ARROWS5,
    ITEM_HEART,
    ITEM_FAIRY,
    ITEM_SHELLS30,
    ITEM_HEART_CONTAINER,
    ITEM_HEART_PIECE,
    ITEM_WALLET,
    ITEM_BOMBBAG,
    ITEM_LARGE_QUIVER,
    ITEM_KINSTONE_BAG,
    ITEM_BRIOCHE,
    ITEM_CROISSANT,
    ITEM_PIE,
    ITEM_CAKE,
    ITEM_BOMBS10,
    ITEM_BOMBS30,
    ITEM_ARROWS10,
    ITEM_ARROWS30,
    ITEM_ARROW_BUTTERFLY,
    ITEM_DIG_BUTTERFLY,
    ITEM_SWIM_BUTTERFLY,
    ITEM_SKILL_FAST_SPIN,
    ITEM_SKILL_FAST_SPLIT,
    ITEM_SKILL_LONG_SPIN,

    // these are not actually item ids but special values used by item drops for example
    ITEM_KINSTONE_RED = 0xfc,
    ITEM_KINSTONE_BLUE,
    ITEM_KINSTONE_GREEN,
    ITEM_ENEMY_BEETLE
} Item;

/** Slot that the item is equipped in. */
typedef enum { EQUIP_SLOT_A, EQUIP_SLOT_B, EQUIP_SLOT_NONE } EquipSlot;

/** Function used to create the item. */
typedef enum {
    CREATE_ITEM_0,
    CREATE_ITEM_1,
    CREATE_ITEM_2,
    CREATE_ITEM_3,
    CREATE_ITEM_4,
    CREATE_ITEM_5,
} CreateItemFunc;

#endif // ITEM_H
