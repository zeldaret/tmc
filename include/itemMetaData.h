#ifndef ITEMMETADATA_H
#define ITEMMETADATA_H

#include "global.h"

typedef enum {
    MENU_SLOT_SWORD,
    MENU_SLOT_GUST_JAR,
    MENU_SLOT_CANE,
    MENU_SLOT_BOOMERANG,
    MENU_SLOT_SHIELD,
    MENU_SLOT_MOLE_MITTS,
    MENU_SLOT_LANTERN,
    MENU_SLOT_BOMBS,
    MENU_SLOT_PEGASUS_BOOTS,
    MENU_SLOT_ROCS_CAPE,
    MENU_SLOT_OCARINA,
    MENU_SLOT_BOW,
    MENU_SLOT_BOTTLE0,
    MENU_SLOT_BOTTLE1,
    MENU_SLOT_BOTTLE2,
    MENU_SLOT_BOTTLE3,
    MENU_SLOT_SAVE_BUTTON,
    MENU_SLOT_SAVE_BUTTON_JP,
    MENU_SLOT_COUNT = MENU_SLOT_SAVE_BUTTON_JP
} ItemMenuTableSlot;

typedef struct ItemMetaData {
    u8 menuSlot;
    u8 unk1;
    u8 unk2; // parameter? number of bombs, type of dungeon item
    u8 unk3; // flags? bit 0x2 makes pickup cutscene appear every time
    u8 textId;
    u8 textCategory;
    u8 unk6;
    u8 unk7;
} ItemMetaData;

extern const ItemMetaData gItemMetaData[];

#endif // ITEMMETADATA_H
