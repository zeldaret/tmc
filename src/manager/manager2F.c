
#include "manager.h"
#include "area.h"
#include "room.h"
#include "screen.h"
#include "functions.h"

void sub_0805D470(Manager*);

void Manager2F_Main(Manager* this) {
    if (this == NULL) {
        if ((void*)gArea.unk3 != sub_0805D470) {
            sub_0805D470(NULL);
        }
    } else {
        if (this->action == 0) {
            this->action = 1;
            this->unk_10 |= 0x20;
            sub_0805E3A0(this, 6);
            if (gArea.unk3 == 0) {
                sub_08052D74(this, sub_0805D470, NULL);
            } else {
                DeleteThisEntity();
            }
        } else {
            gRoomControls.bg3OffsetX.WORD -= 0x4000;
            gRoomControls.bg3OffsetY.WORD -= 0x2000;
            gScreen.affine.bg3xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.affine.bg3yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
        }
    }
}

void sub_0805D470(Manager* this) {
    LoadGfxGroup(0x4c);
    gScreen.affine.bg3Control = 0x1e07;
    gScreen.lcd.displayControl |= 0x800;
    gScreen.affine.bg3xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.affine.bg3yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
}
