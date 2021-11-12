#include "global.h"
#include "player.h"
#include "manager.h"
#include "functions.h"

void Manager6_Main(Manager6* this) {
    u32 tmp;
    Manager6WarpData* i;
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->warpList = GetCurrentRoomProperty(this->manager.unk_0a);
        if (!this->warpList) {
            DeleteManager(&this->manager);
            return;
        }
    }
    if (this->manager.unk_0e == 0 || gPlayerState.field_0x10[2] == 0x1e) {
        for (i = this->warpList; i->posX != 0xFFFF; i++) {
            tmp = (i->unk_07.all & 0x3);
            if (((tmp & (gPlayerEntity.collisionLayer)) != 0) &&
                (((gPlayerState.flags & 0x80) != 0) || ((i->unk_07.b.unk2) != 0)) &&
                (CheckPlayerInRegion(i->posX, i->posY, i->width, i->height) != 0) && (gPlayerEntity.z.HALF.HI == 0)) {
                DoExitTransition(GetCurrentRoomProperty(i->unk_06));
            }
        }
    }
}
