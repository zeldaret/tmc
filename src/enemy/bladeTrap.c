/**
 * @file bladeTrap.c
 * @ingroup Enemies
 *
 * @brief Blade Trap enemy
 */

#include "sound.h"
#include "entity.h"
#include "room.h"
#include "object.h"

#define DIR_NOT_MOVING_CHECK 0x80

void BladeTrap(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->child = GetCurrentRoomProperty(this->type);
        UpdateRailMovement(this, (u16**)&this->child, &this->field_0x74.HWORD);
    }
    if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
        LinearMoveUpdate(this);
    }

    if (!(--this->field_0x74.HWORD)) {
        if (!(this->direction & DIR_NOT_MOVING_CHECK)) {
            EnqueueSFX(SFX_METAL_CLINK);
        }
        UpdateRailMovement(this, (u16**)&this->child, &this->field_0x74.HWORD);
    }
}
