#include "entity.h"
#include "room.h"
#include "player.h"
#include "coord.h"

void ObjectB5(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
    }
    gRoomControls.cameraTarget = this;
    PositionRelative(&gPlayerEntity, this, 0, -0x280000);
}
