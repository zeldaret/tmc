/**
 * @file itemUtils.c
 *
 * @brief Item Utils
 */
#include "item.h"
#include "game.h"
#include "itemMetaData.h"
#include "sound.h"
#include "save.h"
#include "object.h"
#include "enemy.h"
#include "message.h"

const Wallet gWalletSizes[] = {
    { 100, 0xf060 },
    { 300, 0xf064 },
    { 500, 0xf068 },
    { 999, 0xf06c },
};
const u8 gBombBagSizes[] = {
    10,
    30,
    50,
    99,
};
const u8 gQuiverSizes[] = {
    30,
    50,
    70,
    99,
};
const u16 gUnk_080FD5A8[] = { 1, 5, 20, 50, 100, 200 };

u32 GetSaleItemConfirmMessageID(u32 item) {
    const struct_080FD964* ptr = &gUnk_080FD964[item];
    return ptr->saleItemConfirmMessageId;
}

s32 GetItemPrice(u32 item) {
    const struct_080FD964* ptr = &gUnk_080FD964[item];
    return ptr->itemPrice;
}

u32 GiveItem(Item item, u32 param_2) {
    u32 uVar4;
    u32 result;
    u32 uVar9;
    const ItemMetaData* metaData;

    uVar4 = GetInventoryValue(item);
    metaData = &gItemMetaData[item];

    if (uVar4 == 0) {
        result = *(u16*)&metaData->textId;
    } else {
        result = *(u16*)&metaData->unk6;
    }
    if (!ItemIsBottle(item)) {
        PutItemOnSlot(item);
        if (uVar4 == 0) {
            SetInventoryValue(item, 1);
        }
    }
    switch (metaData->unk1) {
        case 0:
        default:
            break;
        case 1:
            ModHealth(metaData->unk2);
            SoundReq(SFX_HEART_GET);
            break;
        case 2:
            ModRupees((u32)gUnk_080FD5A8[metaData->unk2]);
            SoundReq(SFX_RUPEE_GET);
            break;
        case 3:
            uVar9 = 0;
            while (TRUE) {
                if (3 < uVar9) {
                    return result;
                }
                if (GetInventoryValue(ITEM_BOTTLE1 + uVar9) == 0)
                    break;
                uVar9++;
            }
            item = ITEM_BOTTLE1 + uVar9;
            if (gSave.stats.bottles[uVar9] == 0) {
                gSave.stats.bottles[uVar9] = 0x20;
            }
            SetInventoryValue(item, 1);
            PutItemOnSlot(item);
            break;
        case 4:
            uVar9 = 0;
            while (gSave.stats.bottles[uVar9] != 0x20) {
                uVar9++;
                if (3 < uVar9) {
                    return result;
                }
            }
            if (3 < uVar9) {
                break;
            }
            gSave.stats.bottles[uVar9] = (u8)item;
            SetInventoryValue(item, 1);
            SoundReq(SFX_ITEM_GET);
            break;
        case 5:
            ModDungeonKeys(1);
            SoundReq(SFX_103);
            break;
        case 6: // TODO dungeon item?
            gSave.dungeonItems[gArea.dungeon_idx] |= metaData->unk2;
            break;
        case 0xd:
            AddKinstoneToBag(0x72);
            break;
        case 0x12:
            if (item == ITEM_BOOMERANG) {
                SetInventoryValue(ITEM_MAGIC_BOOMERANG, 0);
            } else {
                SetInventoryValue(ITEM_BOOMERANG, 0);
            }
        case 0x11:
            LoadItemGfx();
            break;
        case 7:
            if (item == ITEM_BOMBS) {
                SetInventoryValue(ITEM_REMOTE_BOMBS, 0);
            } else {
                SetInventoryValue(ITEM_BOMBS, 0);
            }
            ModBombs(99);
            LoadItemGfx();
            break;
        case 8:
            if (uVar4 == 0) {
                SetInventoryValue(ITEM_BOMBS, 1);
                PutItemOnSlot(7);
            } else {
                gSave.stats.bombBagType++;
                if (3 < gSave.stats.bombBagType) {
                    gSave.stats.bombBagType = 3;
                }
            }
            ModBombs(99);
            break;
        case 9:
            ModBombs(metaData->unk2);
            SoundReq(SFX_103);
            break;
        case 0xb:
            if (GetInventoryValue(ITEM_LARGE_QUIVER) == 0) {
                SetInventoryValue(ITEM_LARGE_QUIVER, 1);
            }
            ModArrows(99);
            LoadItemGfx();
            break;
        case 0xa:
            gSave.stats.quiverType++;
            if (3 < gSave.stats.quiverType) {
                gSave.stats.quiverType = 3;
            }
            ModArrows(99);
            break;
        case 0xc:
            ModArrows(metaData->unk2);
            SoundReq(SFX_103);
            break;
        case 0x0e:
            SetInventoryValue(ITEM_SHELLS, 1);
            ModShells(param_2);
            SoundReq(SFX_103);
            break;
        case 0x0f:
            AddKinstoneToBag(param_2);
            break;
        case 0x10:
            gSave.stats.walletType++;
            if (gSave.stats.walletType < 4) {
                break;
            }
            gSave.stats.walletType = 3;
            break;
    }
    return result;
}

// TODO Adapt ItemMetaData struct
void sub_08054288(s32 param_1) {
    const ItemMetaData* ptr1 = gItemMetaData;
    u16* ptr = (u16*)&((ptr1)[param_1]);
    MessageFromTarget(ptr[3]);
}

u32 getItemMetaDataGetTextIndex(s32 itemIndex) {
    const ItemMetaData* ptr1 = gItemMetaData;
    u16* ptr = (u16*)&((ptr1)[itemIndex]);
    return ptr[2];
}

u32 IsMinishItem(u32 param_1) {
    const ItemMetaData* ptr1 = gItemMetaData;
    u8* ptr = (u8*)&((ptr1)[param_1]);
    return ptr[3] & 1;
}

void ModShells(s32 shells) {
    if (shells == 0) {
        shells = 1;
    }
    shells += gSave.stats.shells;
    if (shells < 0) {
        shells = 0;
    } else if (999 < shells) {
        shells = 999;
    }
    gSave.stats.shells = shells;
}

void ModBombs(s32 bombs) {
    s32 bombCount = bombs;
    s32 bagSize;
    bombCount += gSave.stats.bombCount;
    bagSize = gBombBagSizes[gSave.stats.bombBagType];
    if (bombCount < 0) {
        bombCount = 0;
    } else if (bagSize < bombCount) {
        bombCount = bagSize;
    }
    gSave.stats.bombCount = bombCount;
}

void ModArrows(s32 arrows) {
    s32 quiverSize;
    s32 arrowCount = arrows;
    arrowCount += gSave.stats.arrowCount;
    quiverSize = gQuiverSizes[gSave.stats.quiverType];
    if (arrowCount < 0) {
        arrowCount = 0;
    } else if (quiverSize < arrowCount) {
        arrowCount = quiverSize;
    }
    gSave.stats.arrowCount = arrowCount;
}

/**
 * @brief Returns the slot the item is equipped in.
 *
 * 0: A
 * 1: B
 * 2: Not equipped
 */
EquipSlot IsItemEquipped(u32 itemId) {
    EquipSlot equipSlot;

    if (itemId == gSave.stats.equipped[SLOT_A]) {
        equipSlot = EQUIP_SLOT_A;
    } else if (itemId == gSave.stats.equipped[SLOT_B]) {
        equipSlot = EQUIP_SLOT_B;
    } else {
        equipSlot = EQUIP_SLOT_NONE;
    }
    return equipSlot;
}

void PutItemOnSlot(u32 itemId) {
    EquipSlot equipSlot;
    u32 itemId2 = itemId;
    if (itemId2 < 0x47) {
        SetInventoryValue(0, 1);
    }
    if (itemId2 - 1 < 0x1f) {
        equipSlot = EQUIP_SLOT_NONE;
        if (gSave.stats.equipped[SLOT_A] == ITEM_NONE) {
            equipSlot = EQUIP_SLOT_A;
        } else if (gSave.stats.equipped[SLOT_B] == ITEM_NONE) {
            equipSlot = EQUIP_SLOT_B;
        }
        if (equipSlot == EQUIP_SLOT_NONE) {
            u32 temp = gItemMetaData[itemId2].menuSlot;
            if (temp == gItemMetaData[gSave.stats.equipped[SLOT_A]].menuSlot) {
                equipSlot = EQUIP_SLOT_A;
            } else {
                if (temp == gItemMetaData[gSave.stats.equipped[SLOT_B]].menuSlot) {
                    equipSlot = EQUIP_SLOT_B;
                }
            }
            if (equipSlot == EQUIP_SLOT_NONE) {
                return;
            }
        }
        ForceEquipItem(itemId2, equipSlot);
    }
}

void ForceEquipItem(u32 itemId, u32 equipSlot) {
    u32 otherItem;
    u32 otherItemSlot;
    u32 replacedItem;

    if ((itemId - 1 < 0x1f) && (equipSlot < EQUIP_SLOT_NONE)) {
        otherItemSlot = equipSlot == EQUIP_SLOT_A;
        replacedItem = gSave.stats.equipped[equipSlot];
        otherItem = gSave.stats.equipped[otherItemSlot];
        if (gItemMetaData[otherItem].menuSlot == gItemMetaData[itemId].menuSlot) {
            otherItem = replacedItem;
        }
        gSave.stats.equipped[equipSlot] = itemId;
        gSave.stats.equipped[otherItemSlot] = otherItem;
        gHUD.unk_13 = 0x7f;
        gHUD.unk_14 = 0x7f;
    }
}

u32 SetBottleContents(u32 itemId, u32 bottleIndex) {
    if (bottleIndex > 3) {
        bottleIndex = 0;
        for (bottleIndex = 0; gSave.stats.bottles[bottleIndex] != ITEM_BOTTLE_EMPTY;) {
            if (++bottleIndex > 3) {
                return bottleIndex;
            }
        }
        if (bottleIndex > 3) {
            return bottleIndex;
        }
    }
    gSave.stats.bottles[bottleIndex] = itemId;
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
        case ITEM_SHIELD:
        case ITEM_MIRROR_SHIELD:
            return TRUE;
        default:
            return FALSE;
    }
}

bool32 ItemIsBottle(u32 id) {
    switch (id) {
        case ITEM_BOTTLE1:
        case ITEM_BOTTLE2:
        case ITEM_BOTTLE3:
        case ITEM_BOTTLE4:
            return TRUE;
        default:
            return FALSE;
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

extern u8 gUnk_080FE1C6[];
void sub_08054524(void) {
    u32 bVar1;

    bVar1 = gArea.locationIndex;
    if (gArea.locationIndex == 0) {
        bVar1 = gRoomTransition.location;
    }
    if (bVar1 > 0x16) {
        bVar1 = 0;
    }

    bVar1 = gUnk_080FE1C6[bVar1];
    MemCopy(&gAreaDroptables[bVar1], &gRoomVars.currentAreaDroptable, sizeof(Droptable));
}

void DisableRandomDrops(void) {
    gRoomVars.randomDropsDisabled = TRUE;
}

void EnableRandomDrops(void) {
    gRoomVars.randomDropsDisabled = FALSE;
}

extern void SumDropProbabilities(s16*, const s16*, const s16*, const s16*);
extern u32 SumDropProbabilities2(s16*, const s16*, const s16*, const s16*);
u32 CreateItemDrop(Entity* arg0, u32 itemId, u32 itemParameter);
u32 CreateRandomItemDrop(Entity* arg0, u32 arg1) {
    extern const u8 gUnk_080FE1B4[] /* = {
         ITEM_NONE,         ITEM_RUPEE1,  ITEM_RUPEE5, ITEM_RUPEE20,      ITEM_HEART,         ITEM_FAIRY,
         ITEM_BOMBS5,       ITEM_ARROWS5, ITEM_SHELLS, ITEM_KINSTONE_RED, ITEM_KINSTONE_BLUE, ITEM_KINSTONE_GREEN,
         ITEM_ENEMY_BEETLE, ITEM_NONE,    ITEM_NONE,   ITEM_NONE,         ITEM_NONE,          ITEM_NONE,
     }*/;

    int r0, r1, rand, summOdds, item;
    u32 r3;
    const Droptable *ptr2, *ptr3, *ptr4;
    Droptable droptable;
    r3 = arg1;
    if (gRoomVars.randomDropsDisabled != TRUE) {
        ptr2 = &gDroptableModifiers[DROPTABLE_NONE];
        ptr4 = NULL;
        switch (r3) {
            case 1 ... 12:
                ptr4 = &gEnemyDroptables[r3];
                break;
#ifndef EU
            case 24:
            case 25:
                r0 = gRoomVars.needHealthDrop;
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
            SumDropProbabilities(droptable.a, ptr4->a, ptr2->a, ptr3->a);
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
                droptable.s.rupee5++;
            }
            ptr2 = &gDroptableModifiers[DROPTABLE_NONE];
            r0 = gSave.stats.hasAllFigurines;
            ptr3 = &gDroptableModifiers[DROPTABLE_NONE];
            // don't drop shells anymore
            if (r0 != 0) {
                ptr2 = &gDroptableModifiers[DROPTABLE_NO_SHELLS];
            }
            // don't drop kinstones anymore
            if (gSave.kinstones.didAllFusions != 0) {
                ptr3 = &gDroptableModifiers[DROPTABLE_NO_KINSTONES];
            }
            // vector addition, s0 = s0 + ptr2 + ptr3
            // resulting values are clamped to be >= 0
            // returns sum over s0
            summOdds = SumDropProbabilities2(droptable.a, droptable.a, ptr2->a, ptr3->a);
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

extern u8 gUnk_080FE1DD[3][0x40];
u32 CreateItemDrop(Entity* arg0, u32 itemId, u32 itemParameter) {
    u32 adjustedParam = itemParameter;
    Entity* itemEntity;

    switch (itemId) {
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
        case ITEM_KINSTONE_RED ... ITEM_KINSTONE_GREEN: {
            u32 rand;

            if (GetInventoryValue(ITEM_KINSTONE_BAG) == 0) {
                return ITEM_NONE;
            }
            if (3 < gRoomVars.numKinstoneDropsPrevFrame) {
                return ITEM_NONE;
            }

            if (itemId != ITEM_KINSTONE) {
                adjustedParam = itemId - ITEM_KINSTONE_RED;
                rand = (Random() & 0x3f);
                adjustedParam = gUnk_080FE1DD[adjustedParam][rand];
                if (adjustedParam == 0) {
                    itemId = ITEM_NONE;
                } else {
                    itemId = ITEM_KINSTONE;
                }
            }
            break;
        }
    }
    if (itemId != ITEM_NONE) {
        if (itemId != ITEM_ENEMY_BEETLE) {
            itemEntity = CreateObject(GROUND_ITEM, itemId, adjustedParam);
            if (itemEntity != NULL) {
                if (arg0 == &gPlayerEntity.base) {
                    itemEntity->timer = 1;
                } else {
                    itemEntity->timer = 0;
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
    return itemId;
}
