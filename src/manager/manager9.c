#include "global.h"
#include "manager.h"
#include "room.h"
#include "screen.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u8 unk_00[0x1C];
    u32 unk_3c;
} Manager9;

void sub_08058204(Manager9*);
void sub_08058210(Manager9*);
u32 sub_08058244(int);
void sub_080582A0(u32, u32*, u16*);
void sub_080582F8(u8*, u8*);

extern u32 gUnk_02006F00[];

const u16 gUnk_081081EC[] = { 0x30, 0x30, 0x30, 0x38 };

void sub_080581D8(Manager9* this) {
    sub_08058210(this);
    if (!this->manager.action) {
        this->manager.action = 1;
        gScreen.bg.bg1Updated = 0;
        sub_08052D74(this, sub_08058204, NULL);
    }
}

void sub_08058204(Manager9* this) {
    sub_08058324(this->manager.unk_0a);
}

void sub_08058210(Manager9* this) {
    u32 tmp = sub_08058244(this->manager.unk_0a);
    if (this->unk_3c == tmp)
        return;
    this->unk_3c = tmp;
    sub_080582A0(tmp, gUnk_02006F00, gBG3Buffer);
    gScreen.bg.bg1Updated = 1;
}

u32 sub_08058244(int i) {
    u32 tmp;
    s32 tmp2;
    u32 tmp3;
    s32 tmp4;
    tmp = ((gRoomControls.roomScrollY - gRoomControls.roomOriginY) * 0x20) / (gRoomControls.height - 0xa0);
    gScreen.bg.bg1yOffset = gRoomControls.roomOriginY + tmp;
    tmp = (((gRoomControls.roomScrollX - gRoomControls.roomOriginX) * gUnk_081081EC[i]) / (gRoomControls.width - 0xf0));
    gScreen.bg.bg1xOffset = tmp & 0xf;
    return tmp;
}

void sub_080582A0(u32 unk, u32* unk2, u16* unk3) {
    int i = 0x20;
    unk2 += unk >> 4;
    for (; i != 0; i--) {
        DmaSet(3, unk2, unk3, 0x80000020);
        unk2 += 0x40;
        unk3 += 0x20;
    }
}

extern u8 gMapDataTopSpecial[];

void sub_080582D0() {
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
        DmaSet(3, unk, unk2, 0x80000020);
    }
}

extern u32 gUnk_0200B650;

void sub_08058324(u32 unk) {
    gUnk_0200B650 = 0;
    LoadPaletteGroup(unk + 0x86);
    LoadGfxGroup(unk + 0x36);
    sub_080582D0();
    sub_080582A0(sub_08058244(unk), gUnk_02006F00, gBG3Buffer);
    gScreen.bg.bg1Control = 0x1D47;
    gScreen.bg.bg1Tilemap = gBG3Buffer;
    gScreen.bg.bg1Updated = 1;
    gScreen.lcd.displayControl |= 0x200;
}
