#include "global.h"
#include "enemy.h"
#include "entity.h"
#include "object.h"
#include "functions.h"

static bool32 ShouldSpawnTreeItem(Entity*);

extern u32 sub_080028F4(const u8*);
extern void sub_08049CF4(Entity*);

extern const u8 gUnk_080D29E0[][16];
extern const u8 gUnk_080D2AB0[];

void TreeItem(Entity* this) {
    Entity* itemEntity;
    int var0;

    if (this->action == 0) {
        this->action++;
        this->field_0x68.HALF.LO = sub_080028F4(gUnk_080D29E0[this->type]);
        if (this->field_0x68.HALF.LO > 8) {
            DeleteThisEntity();
        }

        if (this->field_0x68.HALF.LO < 8 && GetInventoryValue(0x67) == 0) {
            this->field_0x68.HALF.LO = 8;
        }
    }

    if (!ShouldSpawnTreeItem(this)) {
        return;
    }

    var0 = this->field_0x68.HALF.LO;
    if (var0 >= 0) {
        if (var0 > 7) {
            if (var0 == 8) {
                itemEntity = CreateObject(FAIRY, 0x60, 0);
                if (itemEntity) {
                    itemEntity->actionDelay = 0;
                    CopyPosition(this, itemEntity);
                }
            }
        } else {
            itemEntity = CreateObject(OBJECT_96, 0x7, gUnk_080D2AB0[var0]);
            if (itemEntity) {
                CopyPosition(this, itemEntity);
                itemEntity->y.HALF.HI += 16;
                itemEntity->z.HALF.HI = -32;
            }
        }
    }

    sub_08049CF4(this);
    DeleteThisEntity();
}

static bool32 ShouldSpawnTreeItem(Entity* this) {
    int diff;
    int expectedStateX, expectedStateY;
    int playerState;

    if (gPlayerEntity.action != 0x6) {
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
