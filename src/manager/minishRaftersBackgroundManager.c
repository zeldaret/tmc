/**
 * @file minishRaftersBackgroundManager.c
 * @ingroup Managers
 *
 * @brief Parallax background for minish rafters
 */
#include "manager/minishRaftersBackgroundManager.h"
#include "common.h"
#include "functions.h"
#include "room.h"

void sub_08058204(MinishRaftersBackgroundManager*);
void sub_08058210(MinishRaftersBackgroundManager*);
u32 sub_08058244(int);
void sub_080582A0(u32, u32*, u16*);
void sub_080582F8(u8*, u8*);

extern u8 gMapDataTopSpecial[];
extern u32 gUnk_02006F00[];

void MinishRaftersBackgroundManager_Main(MinishRaftersBackgroundManager* this) {
    sub_08058210(this);
    if (super->action == 0) {
        super->action = 1;
        gScreen.bg1.updated = 0;
        RegisterTransitionManager(this, sub_08058204, NULL);
    }
}

void sub_08058204(MinishRaftersBackgroundManager* this) {
    sub_08058324(super->type);
}

void sub_08058210(MinishRaftersBackgroundManager* this) {
    u32 tmp = sub_08058244(super->type);
    if (this->unk_3c == tmp)
        return;
    this->unk_3c = tmp;
    sub_080582A0(tmp, gUnk_02006F00, gBG3Buffer);
    gScreen.bg1.updated = 1;
}

u32 sub_08058244(int i) {
    static const u16 gUnk_081081EC[] = { 0x30, 0x30, 0x30, 0x38 };
    u32 tmp;
    s32 tmp2;
    u32 tmp3;
    s32 tmp4;
    tmp = ((gRoomControls.scroll_y - gRoomControls.origin_y) * 0x20) / (gRoomControls.height - DISPLAY_HEIGHT);
    gScreen.bg1.yOffset = gRoomControls.origin_y + tmp;
    tmp = (((gRoomControls.scroll_x - gRoomControls.origin_x) * gUnk_081081EC[i]) /
           (gRoomControls.width - DISPLAY_WIDTH));
    gScreen.bg1.xOffset = tmp & 0xf;
    return tmp;
}

void sub_080582A0(u32 unk, u32* unk2, u16* unk3) {
    int i = 0x20;
    unk2 += unk >> 4;
    for (; i != 0; i--) {
        DmaCopy16(3, unk2, unk3, 0x20 * 2);
        unk2 += 0x40;
        unk3 += 0x20;
    }
}

void sub_080582D0(void) {
    u8* tmp = gMapDataTopSpecial;
    u8* tmp2 = tmp + 0x4000;
    sub_080582F8(tmp, tmp2);
    tmp += 0x800;
    tmp2 += 0x40;
    sub_080582F8(tmp, tmp2);
}

void sub_080582F8(u8* unk, u8* unk2) {
    u32 i;
    for (i = 0; i < 0x20; i++, unk += 0x40, unk2 += 0x100) {
        DmaCopy16(3, unk, unk2, 0x20 * 2);
    }
}

void sub_08058324(u32 unk) {
    gMapTop.bgSettings = 0;
    LoadPaletteGroup(unk + 0x86);
    LoadGfxGroup(unk + 0x36);
    sub_080582D0();
    sub_080582A0(sub_08058244(unk), gUnk_02006F00, gBG3Buffer);
    gScreen.bg1.control = 0x1D47;
    gScreen.bg1.subTileMap = gBG3Buffer;
    gScreen.bg1.updated = 1;
    gScreen.lcd.displayControl |= 0x200;
}
