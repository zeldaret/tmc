/**
 * @file animatedBackgroundManager.c
 * @ingroup Managers
 *
 * @brief Set up bg3 for cloud tops, vaati2 and some beanstalks.
 */
#include "manager/animatedBackgroundManager.h"
#include "room.h"
#include "screen.h"

void AnimatedBackgroundManager_Init(AnimatedBackgroundManager*);
void AnimatedBackgroundManager_Action1(AnimatedBackgroundManager*);

void AnimatedBackgroundManager_Main(AnimatedBackgroundManager* this) {
    static void (*const AnimatedBackgroundManager_Actions[])(AnimatedBackgroundManager*) = {
        AnimatedBackgroundManager_Init,
        AnimatedBackgroundManager_Action1,
    };
    AnimatedBackgroundManager_Actions[super->action](this);
}

void AnimatedBackgroundManager_Init(AnimatedBackgroundManager* this) {
    static const u16 gUnk_08108C88[] = { 0x1e07, 0x1e07 };
    super->action = 1;

    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.bg3.control = gUnk_08108C88[super->type];
    gRoomControls.bg3OffsetY.WORD = 0;
    gRoomControls.bg3OffsetX.WORD = 0;

    switch (super->type) {
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

void AnimatedBackgroundManager_Action1(AnimatedBackgroundManager* this) {
    if (super->type == 1) {
        gRoomControls.bg3OffsetX.WORD = gRoomControls.bg3OffsetX.WORD + 0x2000;
        gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
        gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
    }
}
