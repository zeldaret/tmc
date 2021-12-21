#include "manager.h"
#include "room.h"
#include "player.h"
#include "audio.h"
#include "object.h"

void Manager33_Main(Manager* this) {
    RoomControls* roomControls = &gRoomControls;
    u32 a = roomControls->roomOriginX + 0x1f8;
    u32 x = (a - gPlayerEntity.x.HALF.HI) + 0x10;
    u32 b = roomControls->roomOriginY + 0x140;
    u32 y = (b - gPlayerEntity.y.HALF.HI) + 0x10;
    if (this->action == 0) {
        if (x < 0x20 && y < 0x20 && gPlayerEntity.z.HALF.HI < -0x18 && gPlayerState.framestate == PL_STATE_CAPE) {
            this->action += 1;
            this->unk_0e = 0x5a;
            SoundReq(SFX_10A);
        }
    } else {
        if (--this->unk_0e == 0) {
            Entity* object = CreateObject(OBJECT_96, 1, 0);
            if (object != NULL) {
                object->x.HALF.HI = roomControls->roomOriginX + 0x1f8;
                object->y.HALF.HI = roomControls->roomOriginY + 0x140;
                object->z.HALF.HI = 0xffe8;
            }
            DeleteThisEntity();
        }
    }
}
