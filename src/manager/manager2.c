#include "global.h"
#include "entity.h"
#include "screen.h"
#include "functions.h"
#include "room.h"

typedef struct {
    Manager manager;
    u32 field_0x20[0x6];
    void* field_0x38;
    void* field_0x3c;
} Manager2;

extern void sub_080576A0();
extern void sub_0805754C(Manager2*);

extern u8 gMapDataTopSpecial[];

extern u32 gUnk_0200B650;

void Manager2_Main(Manager2* this) {
    if (this->manager.action == 0) {
        this->manager.action = 1;
        gScreen.bg3.updated = 0;
        gScreen.bg1.updated = 0;
        sub_08052D74(this, sub_080576A0, 0);
    }
    sub_0805754C(this);
}

void sub_0805754C(Manager2* this) {
    s32 bgOffset;

    bgOffset = (gRoomControls.roomScrollY - gRoomControls.roomOriginY);
    bgOffset += bgOffset >> 3;
    gScreen.bg3.yOffset = bgOffset & 0x3f;
    gScreen.bg3.tilemap = gMapDataTopSpecial + (bgOffset / 0x40) * 0x200;
    if (this->field_0x38 != gScreen.bg3.tilemap) {
        this->field_0x38 = gScreen.bg3.tilemap;
        gScreen.bg3.updated = 1;
    }
    bgOffset = (gRoomControls.roomScrollY - gRoomControls.roomOriginY);
    bgOffset += bgOffset >> 2;
    gScreen.bg1.yOffset = bgOffset & 0x3f;
    gScreen.bg1.tilemap = gMapDataTopSpecial + 0x2000 + (bgOffset / 0x40) * 0x200;
    if (this->field_0x3c != gScreen.bg1.tilemap) {
        this->field_0x3c = gScreen.bg1.tilemap;
        gScreen.bg1.updated = 1;
    }
}

void sub_080575C8(u32 param) {
    s32 bgOffset;

    gUnk_0200B650 = 0;
    *(u16*)0x4000000 = 0;
    LoadGfxGroup(param);
    gRoomVars.unk_10[0] = param;

    bgOffset = (gRoomControls.roomScrollY - gRoomControls.roomOriginY);
    bgOffset += bgOffset >> 3;
    gScreen.bg3.yOffset = bgOffset & 0x3f;
    gScreen.bg3.xOffset = 0;
    gScreen.bg3.tilemap = &gMapDataTopSpecial[(bgOffset / 0x40) * 0x200];
    gScreen.bg3.control = 0x1d49;
    gScreen.bg3.updated = 1;

    bgOffset = (gRoomControls.roomScrollY - gRoomControls.roomOriginY);
    bgOffset += bgOffset >> 2;
    gScreen.bg1.yOffset = bgOffset & 0x3f;
    gScreen.bg1.xOffset = 0;
    gScreen.bg1.tilemap = &gMapDataTopSpecial[0x2000 + (bgOffset / 0x40) * 0x200];
    gScreen.bg1.control = 0x1e49;
    gScreen.bg1.updated = 1;
    gScreen.controls.layerFXControl = 0x3c48;
    gScreen.controls.alphaBlend = 0x609;
    gScreen.lcd.displayControl |= 0xa00;
}

void sub_08057688(void) {
    gScreen.bg3.control = 0x1d48;
    gScreen.bg1.control = 0x1e48;
}

void sub_080576A0(Manager2* this) {
    LoadGfxGroup(gRoomVars.unk_10[0]);
    this->field_0x38 = NULL;
    this->field_0x3c = NULL;
    sub_0805754C(this);
}
