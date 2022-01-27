#include "global.h"
#include "player.h"
#include "room.h"
#include "menu.h"
#include "area.h"
#include "common.h"
#include "save.h"
#include "item.h"
#include "object.h"
#include "enemy.h"

typedef struct {
    u8 unk;
    u8 filler[7];
} struct_080FD5B4;

extern struct_080FD5B4 gUnk_080FD5B4[];

extern u8 gUnk_0200AF13;
extern u8 gUnk_0200AF14;
extern u32 gUnk_080015BC;
extern u8 gUnk_080FE1C6[];
extern u32 gUnk_02034398;
extern void (*const gUnk_080FE2A0[])(void);

void ForceEquipItem(u32, u8);
extern void sub_0807CAA0(u32, u32);

/*
Returns the slot the item is equipped in.
0: A
1: B
2: Not equipped
*/
extern u8 gUnk_080FE1DD[];

u32 IsItemEquipped(u32 itemID) {
    u32 itemSlot;

    if (itemID == gSave.stats.itemButtons[SLOT_A])
        itemSlot = 0;
    else if (itemID == gSave.stats.itemButtons[SLOT_B])
        itemSlot = 1;
    else
        itemSlot = 2;
    return itemSlot;
}

void PutItemOnSlot(u32 itemID) {
    u32 itemSlot;
    u32 itemID2 = itemID;
    if (itemID2 < 0x47) {
        sub_0807CAA0(0, 1);
    }
    if (itemID2 - 1 < 0x1f) {
        itemSlot = 2;
        if (gSave.stats.itemButtons[SLOT_A] == 0) {
            itemSlot = 0;
        } else if (gSave.stats.itemButtons[SLOT_B] == 0) {
            itemSlot = 1;
        }
        if (itemSlot == 2) {
            u32 temp = gUnk_080FD5B4[itemID2].unk;
            if (temp == gUnk_080FD5B4[gSave.stats.itemButtons[SLOT_A]].unk) {
                itemSlot = 0;
            } else {
                if (temp == gUnk_080FD5B4[gSave.stats.itemButtons[SLOT_B]].unk) {
                    itemSlot = 1;
                }
            }
            if (itemSlot == 2) {
                return;
            }
        }
        ForceEquipItem(itemID2, itemSlot);
    }
}

ASM_FUNC("asm/non_matching/ForceEquipItem.inc", void ForceEquipItem(u32 itemID, u8 itemSlot))

u32 SetBottleContents(u32 itemID, u32 bottleIndex) {

    if (bottleIndex > 3) {
        bottleIndex = 0;
        if (gSave.stats.bottles[0] != 0x20) {
            do {
                bottleIndex++;
                if (bottleIndex > 3) {
                    return bottleIndex;
                }
            } while (gSave.stats.bottles[bottleIndex] != 0x20);
        }
        if (bottleIndex > 3) {
            return bottleIndex;
        }
    }
    gSave.stats.bottles[bottleIndex] = itemID;
    return bottleIndex;
}

bool32 ItemIsSword(u32 item) {
    switch (item) {
        case ITEM_SMITH_SWORD:
        case ITEM_GREEN_SWORD:
        case ITEM_RED_SWORD:
        case ITEM_BLUE_SWORD:
        case ITEM_FOURSWORD:
            return TRUE;
        default:
            return FALSE;
    }
}

bool32 ItemIsShield(u32 id) {
    switch (id) {
        case 13:
        case 14:
            return 1;
        default:
            return 0;
    }
}

bool32 ItemIsBottle(u32 id) {
    switch (id) {
        case 28:
        case 29:
        case 30:
        case 31:
            return 1;
        default:
            return 0;
    }
}

u32 GetBottleContaining(u32 id) {
    if (id == gSave.stats.bottles[0]) {
        return 1;
    } else if (id == gSave.stats.bottles[1]) {
        return 2;
    } else if (id == gSave.stats.bottles[2]) {
        return 3;
    } else if (id == gSave.stats.bottles[3]) {
        return 4;
    } else {
        return 0;
    }
}

NONMATCH("asm/non_matching/sub_08054524.inc", void sub_08054524(void)) {
    // reg-alloc
    u32 bVar1;

    bVar1 = gArea.locationIndex;
    if (gArea.locationIndex == 0) {
        bVar1 = gRoomTransition.player_status.field_0x24[0xa];
    }
    if (bVar1 > 0x16) {
        bVar1 = 0;
    }

    MemCopy(&gUnk_080015BC + gUnk_080FE1C6[bVar1] * 0x8, &gUnk_02034398, 0x20);
}
END_NONMATCH

void sub_08054564(void) {
    gRoomVars.field_0x2 = 1;
}

void sub_08054570(void) {
    gRoomVars.field_0x2 = 0;
}

ASM_FUNC("asm/non_matching/sub_0805457C.inc", u32 sub_0805457C(u32 arg0, u32 arg1));

u32 CreateItemDrop(Entity* arg0, u32 itemID, u32 itemParameter) {
    u32 prereqID;
    u32 adjustedParam = itemParameter;
    u32 uVar1;
    Entity* itemEntity;

    switch (itemID) {
        case 0xff:
            if (!GetInventoryValue(0x1)) {
                return 0;
            }
            break;
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
        case 0x3f: {
            if (!GetInventoryValue(0x40)) {
                return 0;
            }
            if (itemParameter == 0) {
                adjustedParam = 1;
            }
            break;
        }
        case 0x5c:
        case 0xfc ... 0xfe: {
            u32 tmp, tmp2;
            u32 rand;
            u8* ptr;

            if (GetInventoryValue(0x67) == 0) {
                return 0;
            }
            if (3 < gRoomVars.filler1[0]) {
                return 0;
            }

            if (itemID != 0x5c) {
                adjustedParam = itemID - 0xfc;
                rand = (Random() & 0x3f);
                ptr = gUnk_080FE1DD;
                adjustedParam = gUnk_080FE1DD[(rand + adjustedParam * 0x40)];
                if (adjustedParam == 0) {
                    itemID = 0;
                } else {
                    itemID = 0x5c;
                }
            }
            break;
        }
    }
    if (itemID != 0) {
        if (itemID != 0xff) {
            itemEntity = CreateObject(GROUND_ITEM, itemID, adjustedParam);
            if (itemEntity != NULL) {
                if (arg0 == &gPlayerEntity) {
                    itemEntity->actionDelay = 1;
                } else {
                    itemEntity->actionDelay = 0;
                }
                if (arg0->kind == 6) {
                    if (arg0->id == 99) {
                        arg0->child = itemEntity;
                    } else if (arg0->id == 0x1e) {
                        itemEntity->direction = arg0->animationState << 3 | 0x80;
                        itemEntity->speed = 0xc0;
                        itemEntity->zVelocity = Q_16_16(1.5);
                    }
                }
                CopyPosition(arg0, itemEntity);
            }
        } else {
            itemEntity = CreateEnemy(BEETLE, 0);
            if (itemEntity != NULL) {
                itemEntity->x.HALF.HI = arg0->x.HALF.HI;
                itemEntity->y.HALF.HI = arg0->y.HALF.HI;
                itemEntity->collisionLayer = arg0->collisionLayer;
                UpdateSpriteForCollisionLayer(itemEntity);
            }
        }
    }
    return itemID;
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
            itemEntity = CreateEnemy(BEETLE, 0);
            if (itemEntity != NULL) {
                itemEntity->x.HALF.HI = arg0->x.HALF.HI;
                itemEntity->y.HALF.HI = arg0->y.HALF.HI;
                itemEntity->collisionLayer = arg0->collisionLayer;
                UpdateSpriteOrderAndFlip(itemEntity);
            }
        } else {
            itemEntity = CreateObject(GROUND_ITEM, itemID, adjustedParam);
            if (itemEntity != NULL) {
                if (arg0 == &gPlayerEntity) {
                    itemEntity->actionDelay = 1;
                } else {
                    itemEntity->actionDelay = 0;
                }
                if (arg0->kind == 6) {
                    if (arg0->id == 99) {
                        arg0->child = itemEntity;
                    } else if (arg0->id == 0x1e) {
                        itemEntity->direction = arg0->animationState << 3 | 0x80;
                        itemEntity->speed = 0xc0;
                        itementity->zVelocity = 0x18000;
                    }
                }
                CopyPosition(arg0, itemEntity);
            }
        }
    }
    return itemID;
}
*/

void Subtask_WorldEvent(void) {
#if !(defined(DEMO_USA) || defined(DEMO_JP))
    gUnk_080FE2A0[gMenu.menuType]();
#endif
}
