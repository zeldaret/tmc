/**
 * @file treeItem.c
 * @ingroup Enemies
 *
 * @brief Tree Item enemy
 */

#include "global.h"
#include "enemy.h"
#include "object.h"
#include "item.h"

static bool32 ShouldSpawnTreeItem(Entity*);

extern u32 GetRandomByWeight(const u8*);
extern void sub_08049CF4(Entity*);

const u8 gTreeItemDropTables[][16] = {
    { 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x08, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x08, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
};
const u8 gTreeItemDrops[] = { 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x00, 0x00, 0x00, 0x00 };

#define FAIRY_INDEX 8

void TreeItem(Entity* this) {
    Entity* itemEntity;

    if (this->action == 0) {
        this->action++;
        this->field_0x68.HALF.LO = GetRandomByWeight(gTreeItemDropTables[this->type]);
        if (this->field_0x68.HALF.LO > FAIRY_INDEX) {
            DeleteThisEntity();
        }
        if (this->field_0x68.HALF.LO < FAIRY_INDEX && GetInventoryValue(ITEM_KINSTONE_BAG) == 0) {
            this->field_0x68.HALF.LO = FAIRY_INDEX;
        }
    }

    if (!ShouldSpawnTreeItem(this)) {
        return;
    }

    switch (this->field_0x68.HALF.LO) {
        case FAIRY_INDEX:
            itemEntity = CreateObject(FAIRY, 0x60, 0);
            if (itemEntity) {
                itemEntity->timer = 0;
                CopyPosition(this, itemEntity);
            }
            break;
        case 0 ...(FAIRY_INDEX - 1):
            itemEntity = CreateObject(OBJECT_96, 0x7, gTreeItemDrops[this->field_0x68.HALF.LO]);
            if (itemEntity) {
                CopyPosition(this, itemEntity);
                itemEntity->y.HALF.HI += 16;
                itemEntity->z.HALF.HI = -32;
            }
            break;
        default:
            break;
    }

    sub_08049CF4(this);
    DeleteThisEntity();
}

static bool32 ShouldSpawnTreeItem(Entity* this) {
    int diff;
    int expectedStateX, expectedStateY;
    int playerState;

    if (gPlayerEntity.action != PLAYER_BOUNCE) {
        return FALSE;
    }

    diff = gPlayerEntity.x.HALF.HI - this->x.HALF.HI;
    expectedStateX = 6;
    if (diff & 0x8000) {
        expectedStateX = 2;
    }

    diff += 40;
    if ((u16)diff >= 80) {
        return FALSE;
    }

    diff = gPlayerEntity.y.HALF.HI - this->y.HALF.HI;
    expectedStateY = 0;
    if (diff & 0x8000) {
        expectedStateY = 4;
    }

    diff += 40;
    if ((u16)diff >= 80) {
        return FALSE;
    }

    playerState = gPlayerEntity.animationState;
    if ((playerState == 0 && expectedStateY == 0) || (playerState == 4 && expectedStateY == 4) ||
        (playerState == 6 && expectedStateX == 6) || (playerState == 2 && expectedStateX == 2)) {
        return TRUE;
    }

    return FALSE;
}
