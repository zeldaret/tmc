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
        gScreen.affine.bg3Updated = 0;
        gScreen.bg.bg1Updated = 0;
        sub_08052D74(this, sub_080576A0, 0);
    }
    sub_0805754C(this);
}

void sub_0805754C(Manager2* this) {
    s32 bgOffset;

    bgOffset = (gRoomControls.roomScrollY - gRoomControls.roomOriginY);
    bgOffset += bgOffset >> 3;
    gScreen.affine.bg3yOffset = bgOffset & 0x3f;
    gScreen.affine.bg3Tilemap = gMapDataTopSpecial + (bgOffset / 0x40) * 0x200;
    if (this->field_0x38 != gScreen.affine.bg3Tilemap) {
        this->field_0x38 = gScreen.affine.bg3Tilemap;
        gScreen.affine.bg3Updated = 1;
    }
    bgOffset = (gRoomControls.roomScrollY - gRoomControls.roomOriginY);
    bgOffset += bgOffset >> 2;
    gScreen.bg.bg1yOffset = bgOffset & 0x3f;
    gScreen.bg.bg1Tilemap = gMapDataTopSpecial + 0x2000 + (bgOffset / 0x40) * 0x200;
    if (this->field_0x3c != gScreen.bg.bg1Tilemap) {
        this->field_0x3c = gScreen.bg.bg1Tilemap;
        gScreen.bg.bg1Updated = 1;
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
    gScreen.affine.bg3yOffset = bgOffset & 0x3f;
    gScreen.affine.bg3xOffset = 0;
    gScreen.affine.bg3Tilemap = &gMapDataTopSpecial[(bgOffset / 0x40) * 0x200];
    gScreen.affine.bg3Control = 0x1d49;
    gScreen.affine.bg3Updated = 1;

    bgOffset = (gRoomControls.roomScrollY - gRoomControls.roomOriginY);
    bgOffset += bgOffset >> 2;
    gScreen.bg.bg1yOffset = bgOffset & 0x3f;
    gScreen.bg.bg1xOffset = 0;
    gScreen.bg.bg1Tilemap = &gMapDataTopSpecial[0x2000 + (bgOffset / 0x40) * 0x200];
    gScreen.bg.bg1Control = 0x1e49;
    gScreen.bg.bg1Updated = 1;
    gScreen.controls.layerFXControl = 0x3c48;
    gScreen.controls.alphaBlend = 0x609;
    gScreen.lcd.displayControl |= 0xa00;
}

void sub_08057688(void) {
    gScreen.affine.bg3Control = 0x1d48;
    gScreen.bg.bg1Control = 0x1e48;
}

void sub_080576A0(Manager2* this) {
    LoadGfxGroup(gRoomVars.unk_10[0]);
    this->field_0x38 = NULL;
    this->field_0x3c = NULL;
    sub_0805754C(this);
}
