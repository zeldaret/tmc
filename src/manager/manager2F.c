
#include "manager.h"
#include "area.h"
#include "room.h"
#include "screen.h"
#include "functions.h"

void sub_0805D470(Manager*);

void Manager2F_Main(Manager* this) {
    if (this == NULL) {
        if (gArea.onEnter != sub_0805D470) {
            sub_0805D470(NULL);
        }
    } else {
        if (this->action == 0) {
            this->action = 1;
            this->unk_10 |= 0x20;
            SetDefaultPriority((Entity*)this, 6);
            if (gArea.onEnter == NULL) {
                RegisterTransitionManager(this, sub_0805D470, NULL);
            } else {
                DeleteThisEntity();
            }
        } else {
            gRoomControls.bg3OffsetX.WORD -= 0x4000;
            gRoomControls.bg3OffsetY.WORD -= 0x2000;
            gScreen.bg3.xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.bg3.yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
        }
    }
}

void sub_0805D470(Manager* this) {
    LoadGfxGroup(0x4c);
    gScreen.bg3.control = 0x1e07;
    gScreen.lcd.displayControl |= 0x800;
    gScreen.bg3.xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.bg3.yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
}
