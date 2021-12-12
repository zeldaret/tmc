
#include "manager.h"
#include "functions.h"
#include "screen.h"

typedef struct {
    Manager manager;
    u32 field_0x20;
} Manager1B;

extern u8 gUnk_08108C28[];
extern void (*const gUnk_08108C54[])(Manager1B*);

void sub_0805B4B4(Manager1B*);

void sub_0806D0F8(void); // in bigGoron?

extern u8 gUnk_08108C5C[];
extern u16 gUnk_08108C44[];

void Manager1B_Main(Manager1B* this) {
    s32 iVar3;
    u8* tmp;

    if (EntityHasDuplicateID((Entity*)this) != 0) {
        DeleteThisEntity();
    }
    tmp = gUnk_08108C28 + this->manager.unk_0a * 4;
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->manager.unk_10 |= 0x20;
        SetDefaultPriority((Entity*)this, 6);
        if (this->manager.unk_0a != 0) {
            RegisterTransitionManager(this, sub_0805B4B4, NULL);
        }
        iVar3 = 0x100 - (u32)gRoomControls.height;
        if (iVar3 < 0) {
            iVar3 = 0;
        }
        this->field_0x20 = iVar3 + (s8)tmp[2];
        gUnk_08108C54[tmp[1]](this);
    }
    if (gRoomControls.unk2 == 0) {
        gUnk_08108C54[tmp[1]](this);
    }
}

void sub_0805B448(Manager1B* this) {
    gScreen.bg3.xOffset = (gRoomControls.roomScrollX - gRoomControls.roomOriginX) >> 2;
    gScreen.bg3.yOffset = ((gRoomControls.roomScrollY - gRoomControls.roomOriginY) >> 1) + this->field_0x20;
}

void sub_0805B474(Manager1B* this) {
    s32 tmp = ((gRoomControls.roomScrollY - gRoomControls.roomOriginY) * 0x60) / (gRoomControls.height - 0xa0);
    gScreen.bg3.yOffset = gRoomControls.roomOriginY + tmp;
    gScreen.bg3.xOffset = gRoomControls.roomScrollX - ((gRoomControls.width - 0x100) / 2);
}

void sub_0805B4B4(Manager1B* this) {
    sub_0805B4D0(this->manager.unk_0a);
    if (this->manager.unk_0a == 2) {
        sub_0806D0F8();
    }
    Manager1B_Main(this);
}

void sub_0805B4D0(u32 param_1) {
    s32 iVar1;
    u32 uVar2;

    LoadGfxGroup(gUnk_08108C5C[param_1]);
    gScreen.bg3.control = 0x1e07;
    gScreen.lcd.displayControl |= 0x800;
    gScreen.bg3.xOffset = (gRoomControls.roomScrollX - gRoomControls.roomOriginX) >> 2;

    uVar2 = (gRoomControls.roomScrollY - gRoomControls.roomOriginY) >> 1;
    iVar1 = 0x100 - gRoomControls.height;
    if (iVar1 < 0) {
        iVar1 = 0;
    }
    gScreen.bg3.yOffset = uVar2 + iVar1 + gUnk_08108C44[param_1];
}
