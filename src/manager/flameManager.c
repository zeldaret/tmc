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

void FlameManager_Main(FlameManager* this) {
    if (super->action == 0) {
        this->field_0x38 = TILE(this->field_0x38, this->field_0x3a);
        if (GetTileType(this->field_0x38, 2) == 0x75) {
            super->action = 1;
            SetBottomTile(0x406a, this->field_0x38, 1);
        } else {
            DeleteThisEntity();
        }
    }
    if (GetTileType(this->field_0x38, 1) == 0x406b) {
        sub_0807B7D8(0x76, this->field_0x38, 2);
        DeleteThisEntity();
    }
    if (GetTileType(this->field_0x38, 2) == 0x76) {
        SetBottomTile(0x406b, this->field_0x38, 1);
        DeleteThisEntity();
    }
}
