
#include "manager.h"
#include "area.h"
#include "room.h"
#include "screen.h"
#include "functions.h"
#include "common.h"

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
            SetDefaultPriority((Entity*)this, PRIO_PLAYER_EVENT);
            if (gArea.onEnter == NULL) {
                RegisterTransitionManager(this, sub_0805D470, NULL);
            } else {
                DeleteThisEntity();
            }
        } else {
            gRoomControls.bg3OffsetX.WORD -= 0x4000;
            gRoomControls.bg3OffsetY.WORD -= 0x2000;
            gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
        }
    }
}

void sub_0805D470(Manager* this) {
    LoadGfxGroup(0x4c);
    gScreen.bg3.control = 0x1e07;
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
}
