#include "global.h"
#include "entity.h"
#include "link.h"
#include "room.h"
#include "menu.h"

typedef struct {
    u8 filler[0xa8];
    Stats stats;
} struct_02002A40;

typedef struct {
    u8 unk;
    u8 filler[7];
} struct_080FD5B4;

typedef struct {
    u8 filler[0x2e];
    u8 unk;
} ScreenTransition;

extern struct_02002A40 gUnk_02002A40;
extern struct_080FD5B4 gUnk_080FD5B4[];
extern ScreenTransition gScreenTransition;

extern u8 gUnk_0200AF13;
extern u8 gUnk_0200AF14;
extern u32 gUnk_080015BC;
extern u8 gUnk_080FE1C6[];
extern u32 gUnk_02034398;
extern void (*const gUnk_080FE2A0[])();


u32 IsItemEquipped(u32 itemID) {
    u32 ret;

    if (itemID == gUnk_02002A40.stats.itemOnA)
        ret = 0;
    else if (itemID == gUnk_02002A40.stats.itemOnB)
        ret = 1;
    else
        ret = 2;
    return ret;
}

#if NON_MATCHING // reg-alloc
void PutItemOnSlot(u32 itemID) {
    u32 itemSlot;
    if (itemID < 0x47) {
        ModifyInventory(0, 1);
    }
    if (itemID - 1 < 0x1f) {
        itemSlot = 2;
        if (gUnk_02002A40.stats.itemOnA == 0) {
            itemSlot = 0;
        } else if (gUnk_02002A40.stats.itemOnB == 0) {
            itemSlot = 1;
        }
        if (itemSlot == 2) {
            u8 temp = gUnk_080FD5B4[itemID].unk;
            if (temp == gUnk_080FD5B4[gUnk_02002A40.stats.itemOnA].unk) {
                itemSlot = 0;
            } else {
                if (temp == gUnk_080FD5B4[gUnk_02002A40.stats.itemOnB].unk) {
                    itemSlot = 1;
                }
            }
            if (itemSlot == 2) {
                return;
            }
        }
        ForceEquipItem(itemID, itemSlot);
    }
}
#else
NAKED
void PutItemOnSlot(u32 itemID) {
    asm(".include \"asm/non_matching/putItemOnSlot.s\"");
}
#endif

u32 SetBottleContents(u32 itemID, u32 bottleIndex) {

    if (bottleIndex > 3) {
        bottleIndex = 0;
        if (gUnk_02002A40.stats.filler2[0] != 0x20) {
            do {
                bottleIndex++;
                if (bottleIndex > 3) {
                    return bottleIndex;
                }
            } while (gUnk_02002A40.stats.filler2[bottleIndex] != 0x20);
        }
        if (bottleIndex > 3) {
            return bottleIndex;
        }
    }
    gUnk_02002A40.stats.filler2[bottleIndex] = itemID;
    return bottleIndex;
}

u32 sub_0805449C(u32 arg0) {
    switch (arg0) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
            return 1;
        default:
            return 0;
    }
}

u32 sub_080544B4(u32 arg0) {
    switch (arg0) {
        case 13:
        case 14:
            return 1;
        default:
            return 0;
    }
}

u32 sub_080544C8(u32 arg0) {
    switch (arg0) {
        case 28:
        case 29:
        case 30:
        case 31:
            return 1;
        default:
            return 0;
    }
}

u32 sub_080544DC(u32 arg0) {
    if (arg0 == gUnk_02002A40.stats.filler2[0]) {
        return 1;
    } else if (arg0 == gUnk_02002A40.stats.filler2[1]) {
        return 2;
    } else if (arg0 == gUnk_02002A40.stats.filler2[2]) {
        return 3;
    } else if (arg0 == gUnk_02002A40.stats.filler2[3]) {
        return 4;
    } else {
        return 0;
    }
}

#if NON_MATCHING // reg-alloc
void sub_08054524(void) {
    u32 bVar1;

    bVar1 = gArea.locationIndex;
    if (gArea.locationIndex == 0) {
        bVar1 = gScreenTransition.unk;
    }
    if (bVar1 > 0x16) {
        bVar1 = 0;
    }

    sub_0801D66C(&gUnk_080015BC + gUnk_080FE1C6[bVar1] * 0x8, &gUnk_02034398, 0x20);
}
#else
NAKED
void sub_08054524(void) {
    asm(".include \"asm/non_matching/sub_08054524.inc\"");
}
#endif

void sub_08054564(void) {
    gRoomVars.filler[2] = 1;
}

void sub_08054570(void) {
    gRoomVars.filler[2] = 0;
}

NAKED
u32 sub_0805457C(u32 arg0, u32 arg1) {
    asm(".include \"asm/non_matching/code_0805457C.inc\"");
}

void sub_08054870(void)
{
  gUnk_080FE2A0[gMenu.menuType]();
}