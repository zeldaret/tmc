#include "global.h"
#include "common.h"
#include "functions.h"

void ClearArmosData(void) {
    MemClear(&gRoomTransition.armos_data, sizeof(gRoomTransition.armos_data));
    gRoomTransition.armos_data.field_0xae = 0xff;
}

void sub_080300C4(void) {
    if (gRoomTransition.armos_data.field_0xae == 0xff) {
        gRoomTransition.armos_data.field_0xac = 0;
        MemClear(&gRoomTransition.armos_data.data, sizeof(gRoomTransition.armos_data.data));
    }
}
