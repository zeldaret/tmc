/**
 * @file horizontalMinishPathBackgroundManager.c
 * @ingroup Managers
 *
 * @brief Parallax scrolling for horizontal MinishPaths
 */
#include "manager/horizontalMinishPathBackgroundManager.h"
#include "common.h"
#include "functions.h"
#include "screen.h"

void sub_08057F20(HorizontalMinishPathBackgroundManager*);
void sub_08057EFC(void*);
void sub_08058034(void);
void sub_08058084(u16*, u16*);
void sub_08058004(u32, void*, void*);

extern u8 gUnk_02006F00[];
extern u16 gMapDataTopSpecial[];

void HorizontalMinishPathBackgroundManager_Main(HorizontalMinishPathBackgroundManager* this) {
    sub_08057F20(this);
    if (super->action == 0) {
        super->action = 1;
        gScreen.bg1.updated = 0;
        gScreen.bg3.updated = 0;
        RegisterTransitionManager(this, sub_08057EFC, NULL);
    }
}

void sub_08057EFC(void* this) {
    LoadGfxGroup((u32)gRoomVars.graphicsGroups[0]);
    sub_08058034();
    ((HorizontalMinishPathBackgroundManager*)this)->unk_3c = 0;
    ((HorizontalMinishPathBackgroundManager*)this)->unk_38 = 0;
    sub_08057F20(((HorizontalMinishPathBackgroundManager*)this));
}

void sub_08057F20(HorizontalMinishPathBackgroundManager* this) {
    u32 tmp;
    tmp = gRoomControls.scroll_x - gRoomControls.origin_x;
    tmp = tmp + (tmp >> 3) + ((0x400 - gRoomControls.width) / 2);
    gScreen.bg3.xOffset = tmp & 0xF;
    gScreen.bg3.yOffset = 0x30 - ((0x30 - (gRoomControls.scroll_y - gRoomControls.origin_y)) >> 2);
    gScreen.bg3.subTileMap = gBG3Buffer;
    sub_08058004(tmp, gUnk_02006F00, gBG3Buffer);
    tmp = ((tmp >> 4) << 1);
    if (this->unk_38 != tmp) {
        this->unk_38 = tmp;
        gScreen.bg3.updated = 1;
    }
    tmp = (gRoomControls.scroll_x - gRoomControls.origin_x);
    tmp = tmp + (tmp >> 2) + ((0x400 - gRoomControls.width) / 2);
    gScreen.bg1.xOffset = tmp & 0xF;
    gScreen.bg1.yOffset = 0x30 - ((0x30 - (gRoomControls.scroll_y - gRoomControls.origin_y)) >> 1);
    gScreen.bg1.subTileMap = gBG3Buffer + 0x400;
    sub_08058004(tmp, gUnk_02006F00 + 0x2000, gBG3Buffer + 0x400);
    tmp = ((tmp >> 4) << 1);
    if (this->unk_3c != tmp) {
        this->unk_3c = tmp;
        gScreen.bg1.updated = 1;
    }
}

void sub_08058004(u32 unk1, void* src, void* dest) {
    u32 tmp = 0x20;
    src += (unk1 >> 4) << 2;
    for (tmp; tmp != 0; tmp--) {
        DmaCopy16(3, src, dest, 0x20 * 2);
        src += 0x100;
        dest += 0x40;
    }
}

void sub_08058034(void) {
    u32 tmp;
    u16 *tmp2, *tmp3;
    tmp2 = gMapDataTopSpecial;
    tmp3 = gMapDataTopSpecial + 0x2000;
    for (tmp = 0; tmp < 4; tmp++) {
        sub_08058084(tmp2, tmp3);
        tmp2 += 0x400;
        tmp3 += 0x20;
    }
    tmp2 = gMapDataTopSpecial + 0x1000;
    tmp3 = gMapDataTopSpecial + 0x3000;
    for (tmp = 0; tmp < 4; tmp++) {
        sub_08058084(tmp2, tmp3);
        tmp2 += 0x400;
        tmp3 += 0x20;
    }
}

void sub_08058084(u16* unk1, u16* unk2) {
    u32 tmp;
    for (tmp = 0; tmp < 0x20; tmp++, unk1 += 0x20, unk2 += 0x80) {
        DmaCopy16(3, unk1, unk2, 0x20 * 2);
    }
}

void sub_080580B0(u32 unk1) {
    s32 tmp;
    gMapTop.bgSettings = 0;
    REG_DISPCNT = 0;
    LoadGfxGroup(unk1);
    gRoomVars.graphicsGroups[0] = unk1;
    sub_08058034();
    tmp = gRoomControls.scroll_x - gRoomControls.origin_x;
    tmp = tmp + (tmp >> 3) + (0x400 - gRoomControls.width) / 2;
    sub_08058004(tmp, gUnk_02006F00, gBG3Buffer);
    gScreen.bg3.xOffset = tmp & 0xF;
    gScreen.bg3.yOffset = 0x30 - ((0x30 - (gRoomControls.scroll_y - gRoomControls.origin_y)) >> 1); //?
    gScreen.bg3.control = 0x1D09;
    gScreen.bg3.subTileMap = gBG3Buffer;
    gScreen.bg3.updated = 1;
    tmp = gRoomControls.scroll_x - gRoomControls.origin_x;
    tmp = tmp + (tmp >> 2) + (0x400 - gRoomControls.width) / 2;
    sub_08058004(tmp, gUnk_02006F00 + 0x2000, gBG3Buffer + 0x400);
    gScreen.bg1.xOffset = tmp & 0xF;
    gScreen.bg1.yOffset = 0x30 - ((0x30 - (gRoomControls.scroll_y - gRoomControls.origin_y)) >> 1); //?
    gScreen.bg1.control = 0x1E09;
    gScreen.bg1.subTileMap = gBG3Buffer + 0x400;
    gScreen.bg1.updated = 1;
    gScreen.controls.layerFXControl = 0x3C48;
    gScreen.controls.alphaBlend = 0x609;
    gScreen.lcd.displayControl |= 0xa00;
}
