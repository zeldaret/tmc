#include "manager.h"
#include "asm.h"
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
        MemClear(&gScreenTransition.player_status, 0x20);
        gScreenTransition.transitioningOut = 1;
        gScreenTransition.transitionType = TRANSITION_DEFAULT;
        gScreenTransition.player_status.spawn_type = 0xb;
        gScreenTransition.player_status.area_next = manager->manager.unk_0b;
        gScreenTransition.player_status.room_next = manager->manager.unk_0e;
        gScreenTransition.player_status.start_anim = manager->field_0x37;
        gScreenTransition.player_status.start_pos_x = manager->field_0x3c;
        gScreenTransition.player_status.start_pos_y = manager->field_0x3e;
        gScreenTransition.player_status.layer = manager->field_0x36;
    }
}
