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
    SetMetaTile(SPECIAL_META_TILE_20, TILE_POS(3, 23), LAYER_BOTTOM);
    if ((gRoomControls.origin_y + 200 < gPlayerEntity.y.HALF.HI) &&
        ((u32)(gPlayerEntity.x.HALF.HI - gRoomControls.origin_x) - 0x30 < 0x11)) {
        gPlayerEntity.collisionLayer = 3;
        UpdateSpriteForCollisionLayer(&gPlayerEntity);
    }
    DeleteManager(super);
}
