/**
 * @file vaati3PlayerObject.c
 * @ingroup Objects
 *
 * @brief Vaati3 Player object
 */
#include "entity.h"
#include "physics.h"
#include "player.h"
#include "room.h"

void Vaati3PlayerObject(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
    }
#ifndef EU
    gRoomControls.camera_target = this;
#endif
    PositionRelative(&gPlayerEntity.base, this, 0, Q_16_16(-40.0));
}
