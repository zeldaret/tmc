
#include "manager.h"
#include "flags.h"
#include "asm.h"
#include "object.h"
#include "room.h"

typedef struct {
    Manager manager;
    u8 itemActive[3];
} Manager31;

typedef struct {
    u16 minType;
    u16 maxType;
    u16 x;
    u16 y;
} GoronShopSpawnData;

extern GoronShopSpawnData gUnk_08108D5C[3];

/*
Spawns the shop items for the kinstones for the goron merchant.
*/
void Manager31_Main(Manager31* this) {
    s32 uVar2;
    GoronShopSpawnData* spawnData;
    s32 count;

    if (this->manager.action == 0) {
        this->manager.action++;
        if (CheckGlobalFlag(GORON_KAKERA_L) != 0 && CheckGlobalFlag(GORON_KAKERA_M) != 0 &&
            CheckGlobalFlag(GORON_KAKERA_R) != 0) {
            if (CheckGlobalFlag(GORON_KAKERA_LV2) == 0) {
                if (CheckGlobalFlag(LV1_CLEAR) != 0) {
                    SetGlobalFlag(GORON_KAKERA_LV2);
                    goto clearGlobalFlags;
                }
            } else if (CheckGlobalFlag(GORON_KAKERA_LV3) == 0) {
                if (CheckGlobalFlag(LV2_CLEAR) != 0) {
                    SetGlobalFlag(GORON_KAKERA_LV3);
                    goto clearGlobalFlags;
                }
            } else if (CheckGlobalFlag(GORON_KAKERA_LV4) == 0) {
                if (CheckGlobalFlag(LV3_CLEAR) != 0) {
                    SetGlobalFlag(GORON_KAKERA_LV4);
                    goto clearGlobalFlags;
                }
            } else if (CheckGlobalFlag(GORON_KAKERA_LV5) == 0 && CheckGlobalFlag(LV4_CLEAR) != 0) {
                SetGlobalFlag(GORON_KAKERA_LV5);
            clearGlobalFlags:
                ClearGlobalFlag(GORON_KAKERA_L);
                ClearGlobalFlag(GORON_KAKERA_M);
                ClearGlobalFlag(GORON_KAKERA_R);
            }
        }
        this->itemActive[2] = 0;
        this->itemActive[1] = 0;
        this->itemActive[0] = 0;
        spawnData = gUnk_08108D5C;
        count = 0;
        for (count = 0; count < 3;) {
            if (CheckGlobalFlag(GORON_KAKERA_L + count) == 0) {
                Entity* object =
                    CreateObject(SHOP_ITEM, 0x5c, ((s32)Random() % spawnData->maxType) + spawnData->minType);
                if (object != NULL) {
                    object->actionDelay = 1;
                    object->field_0xf = count;
                    object->x.HALF.HI = spawnData->x + gRoomControls.roomOriginX;
                    object->y.HALF.HI = spawnData->y + gRoomControls.roomOriginY;
                    object->field_0x80.HWORD = spawnData->x;
                    object->field_0x82.HWORD = spawnData->y;
                    object->collisionLayer = 1;
                    object->parent = (Entity*)this;
                    this->itemActive[count] = 1;
                }
            }
            count += 1;
            spawnData += 1;
        }
    }
    for (count = 0; count < 3; ++count) {
        if (CheckGlobalFlag(GORON_KAKERA_L + count) == 0) {
            if ((s8)this->itemActive[count] >= FALSE) {
            } else {
                SetGlobalFlag(GORON_KAKERA_L + count);
            }
        }
    }
}
