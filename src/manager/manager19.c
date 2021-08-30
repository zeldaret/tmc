#include "manager.h"
#include "area.h"
#include "room.h"
#include "functions.h"
#include "screen.h"

void sub_0805AFFC(Manager*);

void Manager19_Main(Manager* this) {
    if (this == NULL) {
        if ((void*)gArea.unk3 != sub_0805AFFC) {
            sub_0805AFFC(this);
        }
    } else {
        if (this->action == 0) {
            this->action = 1;
            this->unk_10 |= 0x20;
            sub_0805E3A0(this, 6);
            if (gArea.unk3 == 0) {
                sub_08052D74(this, sub_0805AFFC, NULL);
            } else {
                DeleteThisEntity();
            }
        } else {
            gRoomControls.bg3OffsetX.WORD = gRoomControls.bg3OffsetX.WORD - 0x2000;
            gScreen.affine.bg3xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.affine.bg3yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
        }
    }
}

void sub_0805AFFC(Manager* this) {
    gScreen.affine.bg3Control = 0x1e03;
    gScreen.lcd.displayControl |= 0x800;
    gScreen.affine.bg3xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.affine.bg3yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
}
