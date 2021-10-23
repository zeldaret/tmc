#include "entity.h"
#include "room.h"
#include "player.h"
#include "coord.h"

void ObjectB5(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
    }
#ifndef EU
    gRoomControls.cameraTarget = this;
#endif
    PositionRelative(&gPlayerEntity, this, 0, -0x280000);
}
