#include "manager.h"
#include "screen.h"
#include "room.h"
#include "functions.h"
#include "area.h"
#include "common.h"
#include "game.h"

typedef struct {
    Manager manager;
    u32 field_0x20;
    u32 field_0x24;
    u32 field_0x28;
} Manager32;

extern void (*const gUnk_08108D7C[])(Manager32*);
void sub_0805D9D8(Manager32*);
void sub_0805DA08(u32, u32, u32);

extern u8 gUnk_08108D74[];

extern struct BgAffineDstData gUnk_02017AA0[];
extern u8 gUnk_03003DE4[0xC];
extern void sub_0805622C(struct BgAffineDstData*, u32, u32);

void Manager32_Main(Manager32* this) {
    gUnk_08108D7C[this->manager.action](this);
    this->field_0x24 = gScreenTransition.frameCount << 4;
    sub_0805D9D8(this);
    sub_0805DA08(this->field_0x20, this->field_0x28, this->field_0x24);
}

void sub_0805D7DC(Manager32* this) {
    u32 index;

    this->manager.action = (this->manager.unk_0a == 0) ? 1 : 2;
    this->field_0x20 = 0;
    this->field_0x24 = 0;
    switch (gRoomControls.areaID) {
        case 7:
        default:
            index = 0;
            break;
        case 3:
            index = 1;
            break;
        case 0x81:
            index = 2;
            break;
        case 0x80:
            index = 3;
            break;
        case 0x88:
            index = 4;
            break;
        case 0x78:
            index = 5;
            break;
        case 0x38:
            index = 6;
            break;
    }

    LoadGfxGroup(gUnk_08108D74[index]);
    gScreen.bg3.control = 0x1e04;
}

void sub_0805D860(Manager32* this) {
    switch (this->manager.unk_0d) {
        case 0:
            this->manager.unk_0d = 1;
            this->field_0x20 = 0x80;
            gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
            break;
        case 1:
            if (--this->field_0x20 == 0x10) {
                this->manager.unk_0d = 2;
                this->manager.unk_0e = 0x2d;
            }
            break;
        case 2:
            if (--this->manager.unk_0e == 0) {
                this->manager.unk_0d = 3;
            }
            break;
        case 3:
            if (--this->field_0x20 == 0) {
                this->manager.unk_0d = 4;
                this->manager.unk_0e = 0x3c;
            }
            break;
        default:
            if (--this->manager.unk_0e == 0) {
                sub_0801E104();
                gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
                DeleteThisEntity();
            }
    }
}

void sub_0805D900(Manager32* this) {
    switch (this->manager.unk_0d) {
        case 0:
            this->manager.unk_0d = 1;
            this->manager.unk_0e = 0x2d;
            this->field_0x20 = 1;
            gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
            break;
        case 1:
            if (--this->manager.unk_0e == 0) {
                this->manager.unk_0d = 2;
                this->manager.unk_0e = 0x14;
            }
            break;
        case 2:
            this->field_0x20 += 1;
            if (--this->manager.unk_0e != 0) {
                return;
            }
            this->manager.unk_0d = 3;
            break;
        default:
            this->field_0x20 += 4;
            if (this->field_0x20 > 0x80) {
                sub_0801E104();
                gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
                DeleteThisEntity();
            }
            break;
    }
}

void sub_0805D98C(Manager32* this) {
    if ((gInput.heldKeys & 0x40) != 0) {
        this->field_0x20 -= 1;
    }
    if ((gInput.heldKeys & 0x80) != 0) {
        this->field_0x20 += 1;
    }
    if ((gInput.heldKeys & 0x20) != 0) {
        this->field_0x28 -= 1;
    }
    if ((gInput.heldKeys & 0x10) != 0) {
        this->field_0x28 += 1;
    }
}

void sub_0805D9D8(Manager32* this) {
    // TODO find out the actual type of the parent of this manager.
    Manager* pMVar1 = this->manager.parent;
    if (pMVar1 != NULL) {
        gScreen.bg3.xOffset = 0x80 - (*(s16*)&pMVar1[1].unk_0e - gRoomControls.roomScrollX);
        gScreen.bg3.yOffset = 0x8c - (*(s16*)(pMVar1[1].unk_11 + 1) - gRoomControls.roomScrollY);
    }
}

void sub_0805DA08(u32 x, u32 y, u32 param_3) {
    u32 i;
    struct BgAffineDstData* affineDstData = &gUnk_02017AA0[gUnk_03003DE4[0] * 0xa0];
    for (i = 0; i < 0xa0; ++i, y += 0x17) {
        affineDstData->pa = ((gSineTable[(param_3 + i + y) & 0xff] * x) >> 8) + gScreen.bg3.xOffset;
        affineDstData = (struct BgAffineDstData*)&affineDstData->pb;
    }
    sub_0805622C(&gUnk_02017AA0[gUnk_03003DE4[0] * 0xa0], REG_ADDR_BG3HOFS, 0xa2600001);
}

void sub_0805DA90(Manager32* this, u32 param_2) {
    Manager* manager = GetEmptyManager();
    if (manager != NULL) {
        manager->type = 9;
        manager->subtype = 0x32;
        manager->unk_0a = param_2;
        manager->parent = &this->manager;
        AppendEntityToList((Entity*)manager, 8);
    }
    if (gArea.onEnter != NULL) {
        gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
        RoomExitCallback();
        //! @bug: this always variable points to ROM, not a Manager*
        DeleteManager((Manager*)gArea.onEnter);
    }
}
