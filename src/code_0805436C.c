#include "global.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "menu.h"

typedef struct {
    u8 filler[0xa8];
    Stats stats;
} SaveFile;

typedef struct {
    u8 unk;
    u8 filler[7];
} struct_080FD5B4;

typedef struct {
    u8 filler[0x2e];
    u8 unk;
} ScreenTransition;

extern SaveFile gUnk_02002A40;
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

    _DmaCopy(&gUnk_080015BC + gUnk_080FE1C6[bVar1] * 0x8, &gUnk_02034398, 0x20);
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

/*
extern u8 gUnk_080FE1DD[];

u32 CreateItemDrop(Entity* arg0, u32 itemID, u32 itemParameter) {
    u32 prereqID;
    u32 adjustedParam;
    u32 uVar1;
    Entity* itemEntity;

    adjustedParam = (u8)itemParameter;
    switch (adjustedParam) {
        case 0x3f:
            if (!GetInventoryValue(0x40)) {
                return 0;
            }
            if (itemParameter == 0) {
                adjustedParam = 1;
            }
        case 0x5d:
            if (!GetInventoryValue(0x65)) {
                return 0;
            }
            break;
        case 0x5e:
            if (!GetInventoryValue(0x9)) {
                return 0;
            }
            break;
        case 0x5c:
        case 0xfc ... 0xfe:
            if (GetInventoryValue(0x67) == 0) {
                return 0;
            }
            if (3 < gRoomVars.filler[5]) {
                return 0;
            }

            if (itemID != 0x5c) {
                adjustedParam = gUnk_080FE1DD[(Random() & 0x3f) + (itemID - 0xfc) * 0x40];
                if (adjustedParam == 0) {
                    itemID = 0;
                }
                else {
                    itemID = 0x5c;
                }
            }
            break;
        case 0xff:
            if (!GetInventoryValue(0x1)) {
                return 0;
            }
    }
    if (itemID != 0) {
        if (itemID == 0xff) {
            itemEntity = CreateEnemy(7, 0);
            if (itemEntity != NULL) {
                itemEntity->x.HALF.HI = arg0->x.HALF.HI;
                itemEntity->y.HALF.HI = arg0->y.HALF.HI;
                itemEntity->collisionLayer = arg0->collisionLayer;
                UpdateSpriteOrderAndFlip(itemEntity);
            }
        } else {
            itemEntity = CreateObject(0, itemID, adjustedParam);
            if (itemEntity != NULL) {
                if (arg0 == &gPlayerEntity) {
                    itemEntity->actionDelay = 1;
                } else {
                    itemEntity->actionDelay = 0;
                }
                if ((arg0->entityType).type == 6) {
                    if (arg0->entityType.subtype == 99) {
                        arg0->attachedEntity = itemEntity;
                    } else if (arg0->entityType.subtype == 0x1e) {
                        itemEntity->direction = arg0->animationState << 3 | 0x80;
                        itemEntity->nonPlanarMovement = 0xc0;
                        itemEntity->field_0x20 = 0x18000;
                    }
                }
                CopyPosition(arg0, itemEntity);
            }
        }
    }
    return itemID;
}
*/

void sub_08054870(void) {
    gUnk_080FE2A0[gMenu.menuType]();
}
