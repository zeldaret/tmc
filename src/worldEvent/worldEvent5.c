/**
 * @file worldEvent5.c
 * @ingroup WorldEvents
 *
 * @brief World Event 5
 */
#include "common.h"
#include "fade.h"
#include "flags.h"
#include "menu.h"
#include "room.h"
#include "screen.h"
#include "sound.h"
#include "subtask.h"

const s16 gUnk_080FF1D4[] = { 19, 192, 224, //
                              18, 176, 216, //
                              18, 208, 216, //
                              18, 240, 216, //
                              19, 176, 224, //
                              0 };

void WorldEvent_5_0(void);
void WorldEvent_5_1(void);
void WorldEvent_5_2(void);
void WorldEvent_5_3(void);
void (*const WorldEvent_5_Functions[])(void) = {
    WorldEvent_5_0,
    WorldEvent_5_1,
    WorldEvent_5_2,
    WorldEvent_5_3,
};

const u16 gUnk_080FF204[] = { 0x10,  0x10f, 0x20e, 0x30d, 0x40c, 0x50b, 0x60a, 0x709,  0x808,
                              0x907, 0xa06, 0xb05, 0xc04, 0xd03, 0xe02, 0xf01, 0x1000, 0xffff };

void WorldEvent_5(void) {
    WorldEvent_5_Functions[gMenu.overlayType]();
}

void WorldEvent_5_0(void) {
    // Doesn't work when put into a packed struct?
    const s16* ptr = &gUnk_080FF1D4[(gMenu.field_0xc[1] & 0xf) * 3];
    LoadGfxGroup(ptr[0]);
    gScreen.bg3.xOffset = ptr[1];
    gScreen.bg3.yOffset = ptr[2];
    gScreen.bg3.control = 0x1e05;
    gScreen.controls.layerFXControl = 0x3648;
    gScreen.controls.alphaBlend = 0x10;
    gScreen.lcd.displayControl |= 0x800;
    sub_0801876C(gMenu.field_0x4, 1);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    gMenu.overlayType++;
    gMenu.storyPanelIndex = 0;
    gMenu.transitionTimer = 60;
    gMenu.field_0xa = 0;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
}

void WorldEvent_5_1(void) {
    if ((gFadeControl.active == 0) && CheckRoomFlag(0xff)) {
        gMenu.overlayType++;
    }
}

void WorldEvent_5_2(void) {
    if (gMenu.storyPanelIndex == 0) {
        gMenu.transitionTimer--;
        if (gMenu.transitionTimer == 0) {
            u32 tmp = gMenu.storyPanelIndex;
            gMenu.storyPanelIndex = tmp + 1;
            SoundReq(SFX_EVAPORATE);
        }
    } else if ((gRoomTransition.frameCount & 7U) == 0) {
        if (gUnk_080FF204[gMenu.field_0xa] != 0xffff) {
            gScreen.controls.alphaBlend = gUnk_080FF204[gMenu.field_0xa++];
        } else {
            gScreen.lcd.displayControl &= 0xf7ff;
            gScreen.controls.alphaBlend = 0x1000;
            gMenu.transitionTimer = 120;
            gMenu.overlayType++;
#ifndef EU
            SoundReq(SFX_SECRET_BIG);
#endif
        }
    }
}

void WorldEvent_5_3(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}
