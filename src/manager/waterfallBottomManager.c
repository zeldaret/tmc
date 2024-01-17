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
#include "tiles.h"

void WaterfallBottomManager_Main(WaterfallBottomManager* this) {
    SetTile(SPECIAL_TILE_20, TILE_POS(3, 23), LAYER_BOTTOM);
    if ((gRoomControls.origin_y + 200 < gPlayerEntity.base.y.HALF.HI) &&
        ((u32)(gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x) - 0x30 < 0x11)) {
        gPlayerEntity.base.collisionLayer = 3;
        UpdateSpriteForCollisionLayer(&gPlayerEntity.base);
    }
    DeleteManager(super);
}
