#include "global.h"

typedef enum {
    SWORD,
    GUST_JAR,
    CANE,
    BOOMERANG,
    SHIELD,
    MOLE_MITTS,
    LANTERN,
    BOMBS,
    PEGASUS_BOOTS,
    ROCS_CAPE,
    OCARINA,
    BOW,
    BOTTLE0,
    BOTTLE1,
    BOTTLE2,
    BOTTLE3,
    SAVE_BUTTON,
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

const ItemMenuTableEntry gItemMenuTable[] = {
    [SWORD] = { BOTTLE0, SHIELD, BOOMERANG, GUST_JAR, 0x01, 0x0c, 0x42, 0x33 },
    [GUST_JAR] = { BOTTLE1, MOLE_MITTS, SWORD, CANE, 0x01, 0x10, 0x66, 0x33 },
    [CANE] = { BOTTLE3, LANTERN, GUST_JAR, BOOMERANG, 0x01, 0x14, 0x8a, 0x33 },
    [BOOMERANG] = { SAVE_BUTTON, BOMBS, CANE, SWORD, 0x01, 0x15, 0xae, 0x33 },
    [SHIELD] = { SWORD, PEGASUS_BOOTS, BOMBS, MOLE_MITTS, 0x01, 0x16, 0x42, 0x4b },
    [MOLE_MITTS] = { GUST_JAR, ROCS_CAPE, SHIELD, LANTERN, 0x01, 0x17, 0x66, 0x4b },
    [LANTERN] = { CANE, OCARINA, MOLE_MITTS, BOMBS, 0x01, 0x00, 0x8a, 0x4b },
    [BOMBS] = { BOOMERANG, BOW, LANTERN, SHIELD, 0x01, 0x00, 0xae, 0x4b },
    [PEGASUS_BOOTS] = { SHIELD, BOTTLE0, BOW, ROCS_CAPE, 0x01, 0x00, 0x42, 0x63 },
    [ROCS_CAPE] = { MOLE_MITTS, BOTTLE1, PEGASUS_BOOTS, OCARINA, 0x01, 0x00, 0x66, 0x63 },
    [OCARINA] = { LANTERN, BOTTLE3, ROCS_CAPE, BOW, 0x01, 0x00, 0x8a, 0x63 },
    [BOW] = { BOMBS, SAVE_BUTTON, OCARINA, PEGASUS_BOOTS, 0x01, 0x00, 0xae, 0x63 },
    [BOTTLE0] = { PEGASUS_BOOTS, SWORD, SAVE_BUTTON, BOTTLE1, 0x01, 0x00, 0x42, 0x7b },
    [BOTTLE1] = { ROCS_CAPE, GUST_JAR, BOTTLE0, BOTTLE2, 0x01, 0x00, 0x5a, 0x7b },
    [BOTTLE2] = { ROCS_CAPE, GUST_JAR, BOTTLE1, BOTTLE3, 0x01, 0x00, 0x72, 0x7b },
    [BOTTLE3] = { OCARINA, CANE, BOTTLE2, SAVE_BUTTON, 0x01, 0x00, 0x8a, 0x7b },
    [SAVE_BUTTON] = { BOW, BOOMERANG, BOTTLE3, BOTTLE0, 0x03, 0x00, 0xb5, 0x75 },
    { BOW, BOOMERANG, BOTTLE3, BOTTLE0, 0x05, 0x00, 0xb5, 0x75 },
};
