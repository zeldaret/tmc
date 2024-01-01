/**
 * @file waterfallBottomManager.c
 * @ingroup Managers
 *
 * @brief Sets a tile at the bottom of the climb next to the waterfall in Temple of Droplets.
 */
#include "manager/waterfallBottomManager.h"
#include "asm.h"
#include "entity.h"
#include "functions.h"

void WaterfallBottomManager_Main(WaterfallBottomManager* this) {
    SetBottomTile(0x4014, 0x5c3, 1);
    if ((gRoomControls.origin_y + 200 < gPlayerEntity.base.y.HALF.HI) &&
        ((u32)(gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x) - 0x30 < 0x11)) {
        gPlayerEntity.base.collisionLayer = 3;
        UpdateSpriteForCollisionLayer(&gPlayerEntity.base);
    }
    DeleteManager(super);
}
