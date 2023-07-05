/**
 * @file flameManager.c
 * @ingroup Managers
 *
 * @brief Manages flame that can be ignited with the lamp.
 *
 * However, this manager is deleted when the flame is ignited the first time.
 */
#include "manager/flameManager.h"
#include "asm.h"
#include "functions.h"
#include "room.h"
#include "tiles.h"

void FlameManager_Main(FlameManager* this) {
    if (super->action == 0) {
        this->metaTilePos = TILE(this->metaTilePos, this->field_0x3a);
        if (GetMetaTileType(this->metaTilePos, LAYER_TOP) == META_TILE_TYPE_117) {
            super->action = 1;
            SetMetaTile(SPECIAL_META_TILE_106, this->metaTilePos, LAYER_BOTTOM);
        } else {
            DeleteThisEntity();
        }
    }
    if (GetMetaTileType(this->metaTilePos, LAYER_BOTTOM) == SPECIAL_META_TILE_107) {
        sub_0807B7D8(META_TILE_TYPE_118, this->metaTilePos, LAYER_TOP);
        DeleteThisEntity();
    }
    if (GetMetaTileType(this->metaTilePos, LAYER_TOP) == META_TILE_TYPE_118) {
        SetMetaTile(SPECIAL_META_TILE_107, this->metaTilePos, LAYER_BOTTOM);
        DeleteThisEntity();
    }
}
