/**
 * @file verticalMinishPathBackgroundManager.c
 * @ingroup Managers
 *
 * @brief Parallax scrolling for MinishPaths vertical.
 */
#include "manager/verticalMinishPathBackgroundManager.h"
#include "common.h"
#include "functions.h"
#include "game.h"
#include "screen.h"
extern void sub_080576A0(void*);
extern void sub_0805754C(VerticalMinishPathBackgroundManager*);

extern u8 gMapDataTopSpecial[];

void VerticalMinishPathBackgroundManager_Main(VerticalMinishPathBackgroundManager* this) {
    if (super->action == 0) {
        super->action = 1;
        gScreen.bg3.updated = 0;
        gScreen.bg1.updated = 0;
        RegisterTransitionManager(this, sub_080576A0, NULL);
    }
    sub_0805754C(this);
}

void sub_0805754C(VerticalMinishPathBackgroundManager* this) {
    s32 bgOffset;

    bgOffset = (gRoomControls.scroll_y - gRoomControls.origin_y);
    bgOffset += bgOffset >> 3;
    gScreen.bg3.yOffset = bgOffset & 0x3f;
    gScreen.bg3.subTileMap = gMapDataTopSpecial + (bgOffset / 0x40) * 0x200;
    if (this->field_0x38 != gScreen.bg3.subTileMap) {
        this->field_0x38 = gScreen.bg3.subTileMap;
        gScreen.bg3.updated = 1;
    }
    bgOffset = (gRoomControls.scroll_y - gRoomControls.origin_y);
    bgOffset += bgOffset >> 2;
    gScreen.bg1.yOffset = bgOffset & 0x3f;
    gScreen.bg1.subTileMap = gMapDataTopSpecial + 0x2000 + (bgOffset / 0x40) * 0x200;
    if (this->field_0x3c != gScreen.bg1.subTileMap) {
        this->field_0x3c = gScreen.bg1.subTileMap;
        gScreen.bg1.updated = 1;
    }
}

void sub_080575C8(u32 param) {
    s32 bgOffset;

    gMapTop.bgSettings = 0;
    REG_DISPCNT = 0;
    LoadGfxGroup(param);
    gRoomVars.graphicsGroups[0] = param;

    bgOffset = (gRoomControls.scroll_y - gRoomControls.origin_y);
    bgOffset += bgOffset >> 3;
    gScreen.bg3.yOffset = bgOffset & 0x3f;
    gScreen.bg3.xOffset = 0;
    gScreen.bg3.subTileMap = &gMapDataTopSpecial[(bgOffset / 0x40) * 0x200];
    gScreen.bg3.control = BGCNT_SCREENBASE(29) | BGCNT_PRIORITY(1) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC;
    gScreen.bg3.updated = 1;

    bgOffset = (gRoomControls.scroll_y - gRoomControls.origin_y);
    bgOffset += bgOffset >> 2;
    gScreen.bg1.yOffset = bgOffset & 0x3f;
    gScreen.bg1.xOffset = 0;
    gScreen.bg1.subTileMap = &gMapDataTopSpecial[0x2000 + (bgOffset / 0x40) * 0x200];
    gScreen.bg1.control = BGCNT_SCREENBASE(30) | BGCNT_PRIORITY(1) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC;
    gScreen.bg1.updated = 1;
    gScreen.controls.layerFXControl =
        BLDCNT_TGT1_BG3 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ | BLDCNT_TGT2_BD;
    gScreen.controls.alphaBlend = BLDALPHA_BLEND(9, 6);
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON | DISPCNT_BG1_ON;
}

void sub_08057688(void) {
    gScreen.bg3.control = BGCNT_SCREENBASE(29) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC;
    gScreen.bg1.control = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC;
}

void sub_080576A0(void* this) {
    LoadGfxGroup(gRoomVars.graphicsGroups[0]);
    ((VerticalMinishPathBackgroundManager*)this)->field_0x38 = NULL;
    ((VerticalMinishPathBackgroundManager*)this)->field_0x3c = NULL;
    sub_0805754C((VerticalMinishPathBackgroundManager*)this);
}
