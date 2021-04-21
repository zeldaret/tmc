#include "global.h"
#include "manager.h"
#include "screen.h"
#include "functions.h"
#include "gba/gba.h"

typedef struct {
    Manager manager;
    u8 unk_20;
    u8 unk_21[0x17];
    u32 unk_38;
    u32 unk_3c;
} Manager8;

void sub_08057F20(Manager8*);
void sub_08057EFC();
void sub_08058034(void);
void sub_08058084(u16*, u16*);

extern u16 gMapDataTopSpecial[];

void sub_08057ED0(Manager8* this) {
    sub_08057F20(this);
    if (!this->manager.action) {
        this->manager.action = 1;
        gScreen.bg.bg1Updated = 0;
        gScreen.affine.bg3Updated = 0;
        sub_08052D74(this, sub_08057EFC, 0);
    }
}

void sub_08057EFC(Manager8* this) {
    LoadGfxGroup(gRoomVars.unk_10);
    sub_08058034();
    this->unk_3c = 0;
    this->unk_38 = 0;
    sub_08057F20(this);
}

void sub_08058004(u32, void*, void*);

extern u8 gUnk_02006F00[];

void sub_08057F20(Manager8* this) {
    u32 tmp;
    tmp = gRoomControls.roomScrollX - gRoomControls.roomOriginX;
    tmp = tmp + (tmp >> 3) + ((0x400 - gRoomControls.width) / 2);
    gScreen.affine.bg3xOffset = tmp & 0xF;
    gScreen.affine.bg3yOffset = 0x30 - ((0x30 - (gRoomControls.roomScrollY - gRoomControls.roomOriginY)) >> 2);
    gScreen.affine.bg3Tilemap = gBG3Buffer;
    sub_08058004(tmp, gUnk_02006F00, gBG3Buffer);
    tmp = ((tmp >> 4) << 1);
    if (this->unk_38 != tmp) {
        this->unk_38 = tmp;
        gScreen.affine.bg3Updated = 1;
    }
    tmp = (gRoomControls.roomScrollX - gRoomControls.roomOriginX);
    tmp = tmp + (tmp >> 2) + ((0x400 - gRoomControls.width) / 2);
    gScreen.bg.bg1xOffset = tmp & 0xF;
    gScreen.bg.bg1yOffset = 0x30 - ((0x30 - (gRoomControls.roomScrollY - gRoomControls.roomOriginY)) >> 1);
    gScreen.bg.bg1Tilemap = gBG3Buffer + 0x400;
    sub_08058004(tmp, gUnk_02006F00 + 0x2000, gBG3Buffer + 0x400);
    tmp = ((tmp >> 4) << 1);
    if (this->unk_3c != tmp) {
        this->unk_3c = tmp;
        gScreen.bg.bg1Updated = 1;
    }
}

void sub_08058004(u32 unk1, void* unk2, void* unk3) {
    u32 tmp = 0x20;
    unk2 += (unk1 >> 4) << 2;
    for (tmp; tmp != 0; tmp--) {
        DmaSet(3, unk2, unk3, 0x80000020);
        unk2 += 0x100;
        unk3 += 0x40;
    }
}

void sub_08058034() {
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
        DmaSet(3, unk1, unk2, 0x80000020);
    }
}

extern u32 gUnk_0200B650;

void sub_080580B0(u32 unk1) {
    s32 tmp;
    gUnk_0200B650 = 0;
    REG_DISPCNT = 0;
    LoadGfxGroup(unk1);
    gRoomVars.unk_10 = unk1;
    sub_08058034();
    tmp = gRoomControls.roomScrollX - gRoomControls.roomOriginX; // r7
    tmp = tmp + (tmp >> 3) + (0x400 - gRoomControls.width) / 2;
    sub_08058004(tmp, gUnk_02006F00, gBG3Buffer);
    gScreen.affine.bg3xOffset = tmp & 0xF;
    gScreen.affine.bg3yOffset = 0x30 - ((0x30 - (gRoomControls.roomScrollY - gRoomControls.roomOriginY)) >> 1); //?
    gScreen.affine.bg3Control = 0x1D09;
    gScreen.affine.bg3Tilemap = gBG3Buffer;
    gScreen.affine.bg3Updated = 1;
    tmp = gRoomControls.roomScrollX - gRoomControls.roomOriginX; // r7
    tmp = tmp + (tmp >> 2) + (0x400 - gRoomControls.width) / 2;
    sub_08058004(tmp, gUnk_02006F00 + 0x2000, gBG3Buffer + 0x400);
    gScreen.bg.bg1xOffset = tmp & 0xF;
    gScreen.bg.bg1yOffset = 0x30 - ((0x30 - (gRoomControls.roomScrollY - gRoomControls.roomOriginY)) >> 1); //?
    gScreen.bg.bg1Control = 0x1E09;
    gScreen.bg.bg1Tilemap = gBG3Buffer + 0x400;
    gScreen.bg.bg1Updated = 1;
    gScreen.controls.layerFXControl = 0x3C48;
    gScreen.controls.alphaBlend = 0x609;
    gScreen.lcd.displayControl |= 0xa00;
}
