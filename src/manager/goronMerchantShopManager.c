/**
 * @file goronMerchantShopManager.c
 * @ingroup Managers
 *
 * @brief Spawns the shop items for the kinstones for the goron merchant.
 */
#include "manager/goronMerchantShopManager.h"

#include "asm.h"
#include "flags.h"
#include "item.h"
#include "object.h"
#include "object/itemForSale.h"

typedef struct {
    u16 minType;
    u16 numTypes;
    u16 x;
    u16 y;
} GoronShopSpawnData;

inline static void CheckGoronKakera() {
    if (CheckGlobalFlag(GORON_KAKERA_L) == 0 || CheckGlobalFlag(GORON_KAKERA_M) == 0 ||
        CheckGlobalFlag(GORON_KAKERA_R) == 0)
        return;

    if (CheckGlobalFlag(GORON_KAKERA_LV2) == 0) {
        if (CheckGlobalFlag(LV1_CLEAR) == 0)
            return;
        SetGlobalFlag(GORON_KAKERA_LV2);
    } else if (CheckGlobalFlag(GORON_KAKERA_LV3) == 0) {
        if (CheckGlobalFlag(LV2_CLEAR) == 0)
            return;
        SetGlobalFlag(GORON_KAKERA_LV3);
    } else if (CheckGlobalFlag(GORON_KAKERA_LV4) == 0) {
        if (CheckGlobalFlag(LV3_CLEAR) == 0)
            return;
        SetGlobalFlag(GORON_KAKERA_LV4);
    } else if (CheckGlobalFlag(GORON_KAKERA_LV5) == 0) {
        if (CheckGlobalFlag(LV4_CLEAR) == 0)
            return;
        SetGlobalFlag(GORON_KAKERA_LV5);
    } else
        return;
    ClearGlobalFlag(GORON_KAKERA_L);
    ClearGlobalFlag(GORON_KAKERA_M);
    ClearGlobalFlag(GORON_KAKERA_R);
    return;
}

void GoronMerchantShopManager_Main(GoronMerchantShopManager* this) {
    static const GoronShopSpawnData shopSpawnData[3] = { { 0x6e, 0x3, 0x210, 0x210 },
                                                         { 0x71, 0x2, 0x220, 0x210 },
                                                         { 0x73, 0x3, 0x230, 0x210 } };
    const GoronShopSpawnData* spawnData;
    s32 count;

    if (super->action == 0) {
        super->action++;
        CheckGoronKakera();
        this->itemActive[2] = 0;
        this->itemActive[1] = 0;
        this->itemActive[0] = 0;
        spawnData = shopSpawnData;
        count = 0;
        for (count = 0; count < 3;) {
            if (CheckGlobalFlag(GORON_KAKERA_L + count) == 0) {
                ItemForSaleEntity* object = (ItemForSaleEntity*)CreateObject(
                    SHOP_ITEM, ITEM_KINSTONE, ((s32)Random() % spawnData->numTypes) + spawnData->minType);
                if (object != NULL) {
                    object->base.timer = 1;
                    object->base.subtimer = count;
                    object->base.x.HALF.HI = spawnData->x + gRoomControls.origin_x;
                    object->base.y.HALF.HI = spawnData->y + gRoomControls.origin_y;
                    object->unk_80 = spawnData->x;
                    object->unk_82 = spawnData->y;
                    object->base.collisionLayer = 1;
                    object->base.parent = (Entity*)this;
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
