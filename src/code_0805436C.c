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
#include "itemMetaData.h"

extern u8 gUnk_0200AF13;
extern u8 gUnk_0200AF14;
extern u8 gUnk_080FE1C6[];
/*{
0u,
0x1u,
0x2u,
0x3u,
0x4u,
0x5u,
0x6u,
0x7u,
0x8u,
0x9u,
0x8u,
0x9u,
0xau,
0xau,
0xbu,
0xcu,
0xdu,
0xeu,
0xfu,
0x8u,
0xfu,
0x1u,
0x8u,
};
*/
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
            u32 temp = gItemMetaData[itemID2].menuSlot;
            if (temp == gItemMetaData[gSave.stats.itemButtons[SLOT_A]].menuSlot) {
                itemSlot = 0;
            } else {
                if (temp == gItemMetaData[gSave.stats.itemButtons[SLOT_B]].menuSlot) {
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

void sub_08054524(void) {
    u32 bVar1;

    bVar1 = gArea.locationIndex;
    if (gArea.locationIndex == 0) {
        bVar1 = gRoomTransition.player_status.field_0x24[0xa];
    }
    if (bVar1 > 0x16) {
        bVar1 = 0;
    }

    bVar1 = gUnk_080FE1C6[bVar1];
    MemCopy(&gAreaDroptables[bVar1], &gRoomVars.currentAreaDroptable, 0x20);
}

void sub_08054564(void) {
    gRoomVars.field_0x2 = 1;
}

void sub_08054570(void) {
    gRoomVars.field_0x2 = 0;
}

extern void sub_08000F14(s16*, const s16*, const s16*, const s16*);
extern u32 sub_08000F2C(s16*, const s16*, const s16*, const s16*);
u32 CreateItemDrop(Entity* arg0, u32 itemID, u32 itemParameter);
u32 CreateRandomItemDrop(Entity* arg0, u32 arg1) {
    extern const u8 gUnk_080FE1B4[] /* = {
         ITEM_NONE,         ITEM_RUPEE1,  ITEM_RUPEE5, ITEM_RUPEE20,        ITEM_HEART,         ITEM_FAIRY,
         ITEM_BOMBS5,       ITEM_ARROWS5, ITEM_SHELLS, ITEM_KINSTONE_GREEN, ITEM_KINSTONE_BLUE, ITEM_KINSTONE_RED,
         ITEM_ENEMY_BEETLE, ITEM_NONE,    ITEM_NONE,   ITEM_NONE,           ITEM_NONE,          ITEM_NONE,
     }*/;

    int r0, r1, rand, summOdds, item;
    u32 r3;
    const Droptable *ptr2, *ptr3, *ptr4;
    Droptable droptable;
    r3 = arg1;
    if (gRoomVars.field_0x2 != 1) {
        ptr2 = &gDroptableModifiers[DROPTABLE_NONE];
        ptr4 = NULL;
        switch (r3) {
            case 1 ... 12:
                ptr4 = &gEnemyDroptables[r3];
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
                ptr2 = &gObjectDroptables[r3 - 16];
            case 15:
                ptr4 = &gRoomVars.currentAreaDroptable;
                break;
            case 0:
            default:
                break;
        }
        if (ptr4 != 0) {
            if ((r1 = gSave.stats.picolyteType) == 0) {
                // nop
                ptr3 = &gDroptableModifiers[DROPTABLE_NONE];
            } else {
#ifdef EU
                ptr3 = &gEnemyDroptables[r1 + 9];
#else
                ptr3 = &gEnemyDroptables[r1 + 6];
#endif
            }
            // vector addition, s0 = ptr4 + ptr2 + ptr3
            sub_08000F14(droptable.a, ptr4->a, ptr2->a, ptr3->a);
            if (gSave.stats.health <= 8) {
                droptable.s.hearts += 5;
            }
            if (gSave.stats.bombCount == 0) {
                droptable.s.bombs += 3;
            }
            if (gSave.stats.arrowCount == 0) {
                droptable.s.arrows += 3;
            }
            if (gSave.stats.rupees <= 10) {
                droptable.s.rupee5 += 1;
            }
            ptr2 = &gDroptableModifiers[DROPTABLE_NONE];
            r0 = gSave.stats.hasAllFigurines;
            ptr3 = &gDroptableModifiers[DROPTABLE_NONE];
            // don't drop shells anymore
            if (r0 != 0) {
                ptr2 = &gDroptableModifiers[DROPTABLE_NO_SHELLS];
            }
            // don't drop kinstones anymore
            if (gSave.didAllFusions != 0) {
                ptr3 = &gDroptableModifiers[DROPTABLE_NO_KINSTONES];
            }
            // vector addition, s0 = s0 + ptr2 + ptr3
            // resulting values are clamped to be >= 0
            // returns sum over s0
            summOdds = sub_08000F2C(droptable.a, droptable.a, ptr2->a, ptr3->a);
            rand = Random();
            item = (rand >> 0x18);
            item &= 0xF;
            rand = rand % summOdds;
            {
                u32 r3;
                for (r3 = 0, r1 = 0; r3 < 0x10; r3++, item = (item + 1) & 0xF) {
                    if ((r1 += droptable.a[item]) > rand) {
                        break;
                    }
                }
            }
            r1 = gUnk_080FE1B4[item];
            if (r1 != ITEM_NONE) {
                return CreateItemDrop(arg0, r1, 0);
            }
        }
    }
    return ITEM_NONE;
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
                return ITEM_NONE;
            }
            if (3 < gRoomVars.filler1[0]) {
                return ITEM_NONE;
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

void Subtask_WorldEvent(void) {
#if !(defined(DEMO_USA) || defined(DEMO_JP))
    gUnk_080FE2A0[gMenu.menuType]();
#endif
}
