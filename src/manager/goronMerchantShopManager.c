/**
 * @file goronMerchantShopManager.c
 * @ingroup Managers
 *
 * @brief Spawns the shop items for the kinstones for the goron merchant.
 */
#include "manager/goronMerchantShopManager.h"
#include "asm.h"
#include "flags.h"
#include "object.h"

typedef struct {
    u16 minType;
    u16 maxType;
    u16 x;
    u16 y;
} GoronShopSpawnData;

void GoronMerchantShopManager_Main(GoronMerchantShopManager* this) {
    static const GoronShopSpawnData gUnk_08108D5C[3] = { { 0x6e, 0x3, 0x210, 0x210 },
                                                         { 0x71, 0x2, 0x220, 0x210 },
                                                         { 0x73, 0x3, 0x230, 0x210 } };
    s32 uVar2;
    const GoronShopSpawnData* spawnData;
    s32 count;

    if (super->action == 0) {
        super->action++;
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
                    object->timer = 1;
                    object->subtimer = count;
                    object->x.HALF.HI = spawnData->x + gRoomControls.origin_x;
                    object->y.HALF.HI = spawnData->y + gRoomControls.origin_y;
                    object->field_0x80.HWORD = spawnData->x;
                    object->field_0x82.HWORD = spawnData->y;
                    object->collisionLayer = 1;
                    object->parent = (Entity*)this;
                    this->itemActive[count] = 1;
                }
            }
            count++;
            spawnData++;
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
