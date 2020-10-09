#include "global.h"
#include "manager.h"
#include "flags.h"
#include "entity.h"
#include "room.h"
#include "screen.h"
#include "functions.h"


typedef struct {
    Manager manager;
    s16 unk_20;
    s16 unk_22;
    u16 unk_24;
    u16 unk_26;
    u8 unk_28[8];
    u16 unk_30;
    u16 unk_32;
    u16 unk_34;
    u16 unk_36;
    u8 unk_38[7];
    u8 unk_3f;
} Manager1A;

extern void (*const gUnk_08108668[])(Manager1A*);

extern u8 gGlobalGfxAndPalettes[];

void sub_0805B030(Manager1A* this) {
	gUnk_08108668[this->manager.action](this);
}

extern void sub_08052D74(void*, void*, void*);
extern u32 sub_0806FBFC(u32, u32, u32, u32);

typedef struct struct_08108764 {
    u8 unk_00;
    u8 unk_01;//area ID
    u8 unk_02;//room ID
    u8 unk_03;//layer
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0a;
    u8 unk_0b;
    void* unk_0c;
    struct {
        u8 unk_00;
        u8 unk_01;
        u8 unk_02[2];
        u16 unk_04;
        u16 unk_06;
    }* unk_10;
} struct_08108764;

extern struct_08108764 gUnk_08108764[];

u32  sub_0805B1CC(Manager1A*);
void sub_0805B210(Manager1A*);
void sub_0805B2B0(Manager1A*);
void sub_0805B328(Manager1A*);
void sub_0805BC4C(void);

void sub_0805B048(Manager1A* this) {
    struct_08108764* tmp;
    Entity* obj;
    sub_0805E3A0(&this->manager, 6);
    _DmaZero(&this->unk_20, 0x20);
    this->manager.action = 1;
    this->unk_3f = gRoomControls.roomID;
    tmp = &gUnk_08108764[this->manager.unk_0a];
    if (!tmp->unk_0a) {
        this->unk_20 = gRoomControls.roomOriginX;
        this->unk_22 = gRoomControls.roomOriginY;
        this->unk_24 = gRoomControls.width;
        this->unk_26 = gRoomControls.height;
    } else {
        this->unk_20 = (tmp->unk_08 << 4) + gRoomControls.roomOriginX;
        this->unk_22 = (tmp->unk_09 << 4) + gRoomControls.roomOriginY;
        this->unk_24 = (tmp->unk_0a << 4);
        this->unk_26 = (tmp->unk_0b << 4);
    }
    this->manager.unk_0b = tmp->unk_0c != 0;
    if (this->manager.unk_0b) {
        this->manager.unk_10 |= 0x20;
        this->unk_34 = ((u16*)tmp->unk_0c)[2];
        this->unk_36 = ((u16*)tmp->unk_0c)[3];
        this->unk_30 = ((u16*)tmp->unk_0c)[4];
        this->unk_32 = ((u16*)tmp->unk_0c)[5];
        sub_0805BC4C();
        sub_0805B2B0(this);
        sub_0805B328(this);
        sub_08052D74(this, sub_0805B328, 0);
    }
    if (!tmp->unk_10) return;
    obj = CreateObject(0x28, tmp->unk_10->unk_00, tmp->unk_10->unk_01);
    if (obj) {
        obj->x.HALF.HI = tmp->unk_10->unk_04 + gRoomControls.roomOriginX;
        obj->y.HALF.HI = tmp->unk_10->unk_06 + gRoomControls.roomOriginY;
    }
    if (this->manager.unk_0a != 0xa
     || CheckLocalFlag(0x4B)) return;
    obj = CreateObject(0x28, 3, 3);
    if (obj) {
        obj->x.HALF.HI = tmp->unk_10->unk_04 + gRoomControls.roomOriginX;
        obj->y.HALF.HI = tmp->unk_10->unk_06 + gRoomControls.roomOriginY;
    }
}

void sub_0805B168(Manager1A* this) {
    if (sub_0805B1CC(this)) {
        sub_0805B210(this);
        DeleteThisEntity();
        return;
    }
    sub_0805B2B0(this);
    if (gRoomControls.unk2 == 1) {
        this->manager.unk_0d = 1;
        return;
    }
    if (!this->manager.unk_0d) return;
    this->manager.unk_0d = 0;
    if (this->unk_3f == gRoomControls.roomID) return;
    if (this->manager.unk_0b) {
        gScreen.lcd.displayControl &= ~0x800;
    }
    DeleteThisEntity();
}

u32 sub_0805B1CC(Manager1A* this) {
    u32 re = 0;
    if (sub_0806FBFC(this->unk_20, this->unk_22, this->unk_24, this->unk_26)) {
        if ((gPlayerState.flags.all & 0x4) && (gPlayerState.flags.all & 0x1)) {
            gPlayerState.flags.all |= 0x8000;
        } else if (gPlayerState.flags.all & 0x8000) {
            re = 1;
        }
    }
    return re;
}

void sub_0805B210(Manager1A* this) {
    struct_08108764 *tmp;
    gScreenTransition.transitioningOut = 1;
    gScreenTransition.transitionType = 1;
    gScreenTransition.playerState = 4;
    tmp = &gUnk_08108764[this->manager.unk_0a];
    gScreenTransition.areaID = tmp->unk_01;
    gScreenTransition.roomID = tmp->unk_02;
    gScreenTransition.playerLayer = tmp->unk_03;
    if (gPlayerState.flags.all & 0x80) {
        gScreenTransition.field_0xf = 6;
    } else {
        gScreenTransition.field_0xf = 2;
    }
    switch (tmp->unk_00) {
        case 0:
            gScreenTransition.playerStartPos.HALF.x = tmp->unk_04;
            gScreenTransition.playerStartPos.HALF.y = tmp->unk_06;
            break;
        case 1:
            gScreenTransition.playerStartPos.HALF.x = gPlayerEntity.x.HALF.HI - gRoomControls.roomOriginX + tmp->unk_04;
            gScreenTransition.playerStartPos.HALF.y = gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY + tmp->unk_06;
            break;
        case 2:
            gScreenTransition.playerStartPos.HALF.x = tmp->unk_04;
            gScreenTransition.playerStartPos.HALF.y = tmp->unk_06;
            gScreenTransition.field_0xf = 6;
            break;
    }
}

void sub_0805B2B0(Manager1A* this) {
    s32 tmp, tmp2;
    if (!this->manager.unk_0b) return;
    tmp = (this->unk_30 - gRoomControls.roomScrollX) / 4;
    tmp2 = (this->unk_32 - gRoomControls.roomScrollY) / 4;
    if (tmp < -12) {
        tmp = -12;
    }
    if (tmp > 12) {
        tmp = 12;
    }
    if (tmp2 < -12) {
        tmp2 = -12;
    }
    if (tmp2 > 12) {
        tmp2 = 12;
    }
    gScreen.lcd.displayControl |= 0x800;
    gRoomControls.bg3OffsetX.HALF.HI = gRoomControls.roomScrollX + this->unk_34 + tmp;
    gScreen.affine.bg3xOffset = gRoomControls.roomScrollX + this->unk_34 + tmp;
    gRoomControls.bg3OffsetY.HALF.HI = gRoomControls.roomScrollY + this->unk_36 + tmp2;
    gScreen.affine.bg3yOffset = gRoomControls.roomScrollY + this->unk_36 + tmp2;
}

void sub_0805B328(Manager1A* this) {
    struct_08108764 *tmp;
    if (!this->manager.unk_0b) return;
    tmp = &gUnk_08108764[this->manager.unk_0a];
    LoadAssetAsync(&gGlobalGfxAndPalettes[*(u32*)tmp->unk_0c], 0x0600F000, 0x800);
    gScreen.affine.bg3Control = 0x1E07;
    gScreen.lcd.displayControl |= 0x800;
    gScreen.affine.bg3xOffset = gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.affine.bg3yOffset = gRoomControls.bg3OffsetY.HALF.HI;
    gScreen.controls.layerFXControl &= ~0x8;
}

void sub_0805B390(u32 unk1) {
    Manager* tmp = GetEmptyManager();
    if (!tmp) return;
    tmp->type = 0x9;
    tmp->subtype = 0x1A;
    tmp->unk_0a = unk1;
    AppendEntityToList(tmp, 6);
}
