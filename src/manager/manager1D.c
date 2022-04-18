#include "manager.h"
#include "room.h"
#include "screen.h"

void sub_0805B5E0(Manager*);
void sub_0805B638(Manager*);

void Manager1D_Main(Manager* this) {
    static void (*const actionFuncs[])(Manager*) = {
        sub_0805B5E0,
        sub_0805B638,
    };
    actionFuncs[this->action](this);
}

void sub_0805B5E0(Manager* this) {
    static const u16 gUnk_08108C88[] = { 0x1e07, 0x1e07 };
    this->action = 1;

    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.bg3.control = gUnk_08108C88[this->unk_0a];
    gRoomControls.bg3OffsetY.WORD = 0;
    gRoomControls.bg3OffsetX.WORD = 0;

    switch (this->unk_0a) {
        case 0:
        default:
            gScreen.bg3.yOffset = 0;
            gScreen.bg3.xOffset = 0;
            break;
        case 1:
            gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
            break;
    }
}

void sub_0805B638(Manager* this) {
    if (this->unk_0a == 1) {
        gRoomControls.bg3OffsetX.WORD = gRoomControls.bg3OffsetX.WORD + 0x2000;
        gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
        gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
    }
}
