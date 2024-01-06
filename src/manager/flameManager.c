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
        this->tilePos = TILE(this->tilePos, this->field_0x3a);
        if (GetTileTypeAtTilePos(this->tilePos, LAYER_TOP) == TILE_TYPE_117) {
            super->action = 1;
            SetTile(SPECIAL_TILE_106, this->tilePos, LAYER_BOTTOM);
        } else {
            DeleteThisEntity();
        }
    }
    if (GetTileTypeAtTilePos(this->tilePos, LAYER_BOTTOM) == SPECIAL_TILE_107) {
        sub_0807B7D8(TILE_TYPE_118, this->tilePos, LAYER_TOP);
        DeleteThisEntity();
    }
    if (GetTileTypeAtTilePos(this->tilePos, LAYER_TOP) == TILE_TYPE_118) {
        SetTile(SPECIAL_TILE_107, this->tilePos, LAYER_BOTTOM);
        DeleteThisEntity();
    }
}
