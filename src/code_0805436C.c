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
#include "droptables.h"

typedef struct {
    u8 unk;
    u8 filler[7];
} struct_080FD5B4;

extern struct_080FD5B4 gUnk_080FD5B4[];

extern u8 gUnk_0200AF13;
extern u8 gUnk_0200AF14;
extern u8 gUnk_080FE1C6[];
extern Droptable gUnk_02034398;
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

    MemCopy(&gUnk_080015BC[0] + gUnk_080FE1C6[bVar1] * 0x8, &gUnk_02034398, 0x20);
}
END_NONMATCH

void sub_08054564(void) {
    gRoomVars.field_0x2 = 1;
}

void sub_08054570(void) {
    gRoomVars.field_0x2 = 0;
}

// BUG?
extern const Droptable gUnk_080014e4[];
extern void sub_08000F14(s16*, const s16*, const s16*, const s16*);
extern u32 sub_08000F2C(s16*, const s16*, const s16*, const s16*);
u32 CreateItemDrop(Entity* arg0, u32 itemID, u32 itemParameter);
u32 CreateRandomItemDrop(Entity* arg0, u32 arg1) {
    extern const u8 gUnk_080FE1B4[]/* = {
        ITEM_NONE,         ITEM_RUPEE1,  ITEM_RUPEE5, ITEM_RUPEE20,        ITEM_HEART,         ITEM_FAIRY,
        ITEM_BOMBS5,       ITEM_ARROWS5, ITEM_SHELLS, ITEM_KINSTONE_GREEN, ITEM_KINSTONE_BLUE, ITEM_KINSTONE_RED,
        ITEM_ENEMY_BEETLE, ITEM_NONE,    ITEM_NONE,   ITEM_NONE,           ITEM_NONE,          ITEM_NONE,
    }*/;

    int r0, r1, r2, r4, r5;
    u32 r3;
    const Droptable *ptr2, *ptr3, *ptr4;
    Droptable s0;
    r3 = arg1;
    if (gRoomVars.field_0x2 != 1) {
        ptr2 = &gUnk_08001A1C[0];
        ptr4 = 0;
        switch (r3) {
            case 1 ... 12:
                ptr4 = &gUnk_0800137C[r3];
                break;
#ifndef EU
            case 24:
            case 25:
                r0 = gRoomVars.unk2;
                ptr4 = &gUnk_0800191C[0];
                if (r0) {
                    ptr4++;
                }
                break;
#endif
            case 16 ... 23:
#ifdef EU
            case 24:
#endif
                ptr2 = &gUnk_0800161C[r3];
            case 15:
                ptr4 = &gUnk_02034398;
                break;
            case 0:
            default:
                break;
        }
        if (ptr4 != 0) {
            if ((r1 = gSave.stats.unkB) == 0) {
                ptr3 = &gUnk_08001A1C[0];
            } else {
#ifdef EU
                ptr3 = &gUnk_0800143C[r1+3];
#else
                ptr3 = &gUnk_0800143C[r1];
#endif
            }
            sub_08000F14(s0.a, ptr4->a, ptr2->a, ptr3->a);
            if (gSave.stats.health <= 8) {
                s0.s.hearts += 5;
            }
            if (gSave.stats.bombCount == 0) {
                s0.s.bombs += 3;
            }
            if (gSave.stats.arrowCount == 0) {
                s0.s.arrows += 3;
            }
            if (gSave.stats.rupees <= 10) {
                s0.s.rupee5 += 1;
            }
            ptr2 = &gUnk_08001A1C[0];
            r0 = gSave.stats.hasAllFigurines;
            ptr3 = ptr2;
            if (r0 != 0) {
                ptr2++;
            }
            if (gSave.fillerD0[0x46] != 0) {
                ptr3 += 2;
            }
            r4 = sub_08000F2C(s0.a, s0.a, ptr2->a, ptr3->a);
            r2 = Random();
            r5 = (r2 >> 0x18);
            r5 &= 0xF;
            r2 = r2 % r4;
            {
                u32 r3;
                for (r3 = 0, r1 = 0; r3 < 0x10; r3++, r5 = (r5 + 1) & 0xF) {
                    if ((r1 += s0.a[r5]) > r2) {
                        break;
                    }
                }
            }
            r1 = gUnk_080FE1B4[r5];
            if (r1 != 0) {
                r2 = 0;
                return CreateItemDrop(arg0, r1, r2);
            }
        }
    }
    return 0;
}

u32 CreateItemDrop(Entity* arg0, u32 itemID, u32 itemParameter) {
    u32 adjustedParam = itemParameter;
    Entity* itemEntity;

    switch (itemID) {
        case ITEM_ENEMY_BEETLE:
            if (!GetInventoryValue(ITEM_SMITH_SWORD)) {
                return ITEM_NONE;
            }
            break;
        case ITEM_BOMBS5:
            if (!GetInventoryValue(ITEM_BOMBBAG)) {
                return ITEM_NONE;
            }
            break;
        case ITEM_ARROWS5:
            if (!GetInventoryValue(ITEM_BOW)) {
                return ITEM_NONE;
            }
            break;
        case ITEM_SHELLS: {
            if (!GetInventoryValue(ITEM_EARTH_ELEMENT)) {
                return ITEM_NONE;
            }
            if (itemParameter == 0) {
                adjustedParam = 1;
            }
            break;
        }
        case ITEM_KINSTONE:
        case ITEM_KINSTONE_GREEN ... ITEM_KINSTONE_RED: {
            u32 rand;

            if (GetInventoryValue(ITEM_KINSTONE_BAG) == 0) {
                return 0;
            }
            if (3 < gRoomVars.filler1[0]) {
                return 0;
            }

            if (itemID != ITEM_KINSTONE) {
                adjustedParam = itemID - ITEM_KINSTONE_GREEN;
                rand = (Random() & 0x3f);
                adjustedParam = gUnk_080FE1DD[(rand + adjustedParam * 0x40)];
                if (adjustedParam == 0) {
                    itemID = ITEM_NONE;
                } else {
                    itemID = ITEM_KINSTONE;
                }
            }
            break;
        }
    }
    if (itemID != ITEM_NONE) {
        if (itemID != ITEM_ENEMY_BEETLE) {
            itemEntity = CreateObject(GROUND_ITEM, itemID, adjustedParam);
            if (itemEntity != NULL) {
                if (arg0 == &gPlayerEntity) {
                    itemEntity->actionDelay = 1;
                } else {
                    itemEntity->actionDelay = 0;
                }
                if (arg0->kind == OBJECT) {
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
                if (arg0->kind == OBJECT) {
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
