#include "manager.h"
#include "area.h"
#include "room.h"
#include "functions.h"
#include "screen.h"

void sub_0805AFFC(Manager*);

void Manager19_Main(Manager* this) {
    if (this == NULL) {
        if ((void*)gArea.onEnter != sub_0805AFFC) {
            sub_0805AFFC(this);
        }
    } else {
        if (this->action == 0) {
            this->action = 1;
            this->unk_10 |= 0x20;
            SetDefaultPriority((Entity*)this, 6);
            if (gArea.onEnter == NULL) {
                RegisterTransitionManager(this, sub_0805AFFC, NULL);
            } else {
                DeleteThisEntity();
            }
        } else {
            gRoomControls.bg3OffsetX.WORD = gRoomControls.bg3OffsetX.WORD - 0x2000;
            gScreen.bg3.xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.bg3.yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
        }
    }
}

void sub_0805AFFC(Manager* this) {
    gScreen.bg3.control = 0x1e03;
    gScreen.lcd.displayControl |= 0x800;
    gScreen.bg3.xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.bg3.yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
}
