#include "global.h"
#include "functions.h"

extern void PlayerItemSword();
extern void PlayerItemBomb();
extern void PlayerItem3();
extern void PlayerItemBow();
extern void PlayerItemShield();
extern void PlayerItemLantern();
extern void PlayerItemNulled();
extern void PlayerItemGustJar();
extern void PlayerItemPacciCane();
extern void PlayerItemC();
extern void PlayerItemCellOverwriteSet();
extern void PlayerItemSwordSpin();
extern void PlayerItemSwordBeam();
extern void PlayerItem10();
extern void PlayerItem11();
extern void PlayerItem12();
extern void PlayerItem13();
extern void PlayerItem14();
extern void PlayerItem15();
extern void PlayerItemNulled2();

void (*const gPlayerItemFunctions[])() = {

    DeleteEntity,
    PlayerItemSword,
    PlayerItemBomb,
    PlayerItem3,
    PlayerItemBow,
    PlayerItemShield,
    PlayerItemLantern,
    PlayerItemNulled,
    PlayerItemGustJar,
    PlayerItemPacciCane,
    DeleteEntity,
    DeleteEntity,
    PlayerItemC,
    PlayerItemCellOverwriteSet,
    PlayerItemSwordSpin,
    PlayerItemSwordBeam,
    PlayerItem10,
    PlayerItem11,
    PlayerItem12,
    PlayerItem13,
    PlayerItem14,
    PlayerItem15,
    PlayerItemSwordBeam,
    PlayerItemNulled2,
    PlayerItemCellOverwriteSet
};
