#include "manager.h"
#include "functions.h"
#include "utils.h"

typedef struct {
    struct Manager manager;
    u8 field_0x20[0x16];
    u8 field_0x36;
    u8 field_0x37;
    s16 field_0x38;
    s16 field_0x3a;
    u16 field_0x3c;
    u16 field_0x3e;
} Manager2C;

void Manager2C_Main(Manager2C* manager) {
    if (manager->manager.action == 0) {
        manager->manager.action = 1;
        manager->field_0x3a = 0;
    }
    if (((CheckPlayerInRegion(manager->field_0x38, manager->field_0x3a, 0x14, 0x40) != 0) &&
         (((gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY) + gPlayerEntity.z.HALF.HI) < 0)) &&
        (gRoomControls.roomScrollY == gRoomControls.roomOriginY)) {
        MemClear(&gScreenTransition.areaID, 0x20);
        gScreenTransition.transitioningOut = 1;
        gScreenTransition.transitionType = 0;
        gScreenTransition.field_0xf = 0xb;
        gScreenTransition.areaID = manager->manager.unk_0b;
        gScreenTransition.roomID = manager->manager.unk_0e;
        gScreenTransition.playerState = manager->field_0x37;
        gScreenTransition.playerStartPos.HALF.x = manager->field_0x3c;
        gScreenTransition.playerStartPos.HALF.y = manager->field_0x3e;
        gScreenTransition.playerLayer = manager->field_0x36;
    }
}
