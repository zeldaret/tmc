/**
 * @file specialWarpManager.c
 * @ingroup Managers
 *
 * @brief Handles some special warps, like beanstalks, minish holes or the entrances into minish village
 */
#include "manager/specialWarpManager.h"
#include "asm.h"
#include "functions.h"

void SpecialWarpManager_Main(SpecialWarpManager* this) {
    u32 collisionLayer;
    SpecialWarpManagerWarpData* data;
    if (super->action == 0) {
        super->action = 1;
        this->warpList = GetCurrentRoomProperty(super->type);
        if (this->warpList == NULL) {
            DeleteManager(super);
            return;
        }
    }
    if (super->timer == 0 || gPlayerState.floor_type == SURFACE_LADDER) {
        for (data = this->warpList; data->posX != 0xffff; data++) {
            collisionLayer = (data->unk_07.all & 0x3);
            if ((collisionLayer & gPlayerEntity.base.collisionLayer) != 0) {
                if ((gPlayerState.flags & PL_MINISH) != 0 || data->unk_07.b.unk2 != 0) {
                    if (CheckPlayerInRegion(data->posX, data->posY, data->width, data->height) &&
                        gPlayerEntity.base.z.HALF.HI == 0) {
                        DoExitTransition(GetCurrentRoomProperty(data->roomProperty));
                    }
                }
            }
        }
    }
}
