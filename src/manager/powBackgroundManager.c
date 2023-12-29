/**
 * @file powBackgroundManager.c
 * @ingroup Managers
 *
 * @brief Palace of Wind background animation.
 */
#include "manager/powBackgroundManager.h"
#include "area.h"
#include "room.h"
#include "screen.h"

void sub_0805AFFC(PowBackgroundManager*);

void PowBackgroundManager_Main(PowBackgroundManager* this) {
    if (this == NULL) {
        if ((void*)gArea.onEnter != sub_0805AFFC) {
            sub_0805AFFC(this);
        }
    } else {
        if (super->action == 0) {
            super->action = 1;
            super->flags |= ENT_PERSIST;
            SetEntityPriority((Entity*)this, PRIO_PLAYER_EVENT);
            if (gArea.onEnter == NULL) {
                RegisterTransitionManager(this, sub_0805AFFC, NULL);
            } else {
                DeleteThisEntity();
            }
        } else {
            gRoomControls.bg3OffsetX.WORD = gRoomControls.bg3OffsetX.WORD - 0x2000;
            gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
        }
    }
}

void sub_0805AFFC(PowBackgroundManager* this) {
    gScreen.bg3.control = BGCNT_PRIORITY(3) | BGCNT_SCREENBASE(30);
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
}
