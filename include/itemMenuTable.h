#ifndef SUBTASK_ITEMMENUTABLE_H
#define SUBTASK_ITEMMENUTABLE_H

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
} ItemMenuTableSlot;

typedef struct {
    u8 up;
    u8 down;
    u8 left;
    u8 right;
    u8 type;
    u8 unk0;
    u8 x;
    u8 y;
} ItemMenuTableEntry;

extern const ItemMenuTableEntry gItemMenuTable[];

#endif // SUBTASK_ITEMMENUTABLE_H
