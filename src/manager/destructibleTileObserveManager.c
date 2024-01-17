/**
 * @file destructibleTileObserveManager.c
 * @ingroup Managers
 *
 * @brief Sets a flag when a tile changes, e.g. to remember that grass has been cut.
 */
#include "manager/destructibleTileObserveManager.h"
#include "asm.h"
#include "flags.h"
#include "room.h"

void sub_0805CFF0(DestructibleTileObserveManager_unk*);

void DestructibleTileObserveManager_Main(DestructibleTileObserveManager* this) {
    DestructibleTileObserveManager_unk* data;

    if (super->action == 0) {
        super->action++;
    }
    data = (DestructibleTileObserveManager_unk*)GetCurrentRoomProperty(3);
    if (data != NULL) {
        for (; data->field_0x0 != 0; data = data + 1) {
            if (data->field_0x0 == 10) {
                sub_0805CFF0(data);
            }
        }
    }
}

void sub_0805CFF0(DestructibleTileObserveManager_unk* param_1) {
    if (!CheckLocalFlag(param_1->flag)) {
        u32 tileType = GetTileTypeAtTilePos(param_1->tilePos, param_1->tileLayer);
        if (param_1->tileType == tileType) {
            SetLocalFlag(param_1->flag);
        }
    }
}
