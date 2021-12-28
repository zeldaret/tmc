#include "global.h"
#include "manager.h"
#include "screen.h"
#include "room.h"
#include "flags.h"
#include "coord.h"
#include "main.h"

typedef struct {
    Manager manager;
    u16 unk_20;
    u8 unk_22;
    u8 unk_23[1];
    u8 unk_24;
    u8 unk_25[0x1B];
} Manager14;

const u16 gUnk_08108588[] = { 0x1000, 0xF01, 0xE02, 0xD03, 0xC04, 0xB05, 0xA06, 0x907, 0x808 };

const u16 gUnk_0810859A[] = { 0x808, 0x907, 0xA06, 0x907 };

extern void sub_0805622C(u16*, u32, u32);
extern u16 gUnk_02017AA0[];

void sub_08059E80(Manager14*);
void sub_08059EF8(Manager14*);
u32 sub_08059F9C(Manager14*);
void sub_0805A040(Manager14*);
void sub_0805A048(Manager14*);
void sub_0805A098(Manager14*);
void sub_0805A0C0(Manager14*);
void sub_0805A114(u32, u32);
void sub_0805A1D8(Manager14*);
void nullsub_495();
void sub_0805A25C();

void Manager14_Main(Manager14* this) {
    static void (*const gUnk_081085A4[])(Manager14*) = {
        sub_08059E80, sub_0805A040, sub_0805A048, sub_0805A0C0, sub_08059EF8,
    };
    this->unk_20++;
    gUnk_081085A4[this->manager.action](this);
    sub_0805A1D8(this);
}

void sub_08059E80(Manager14* this) {
    if (EntityHasDuplicateID((Entity*)this)) {
        DeleteThisEntity();
    }
    this->unk_22 = 1;
    this->unk_20 = 0;
    this->manager.unk_0e = 0;
    this->manager.unk_0f = 4;
    this->manager.action = 4;
    this->manager.unk_10 |= 0x20;
    gScreen.bg3.control = 0x1E04;
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.controls.layerFXControl = 0x3E48;
    gScreen.controls.alphaBlend = 0x1000;
    gScreen.bg3.xOffset = 0x80;
    gScreen.bg3.yOffset = 0;
    RegisterTransitionManager(this, nullsub_495, sub_0805A25C);
}

void sub_08059EF8(Manager14* this) {
    u32 tmp = --this->manager.unk_0f;
    if (tmp == 0) {
        this->manager.unk_0f = 4;
        if (sub_08059F9C(this)) {
            if (gUnk_08108588[this->manager.unk_0e] != 0x808) {
                this->unk_22 = 1;
                this->unk_24 = tmp;
                gScreen.controls.alphaBlend = gUnk_08108588[++this->manager.unk_0e];
            } else {
                this->unk_22 = tmp;
            }
        } else {
            this->unk_22 = 1;
            if (gUnk_08108588[this->manager.unk_0e] != 0x1000) {
                gScreen.controls.alphaBlend = gUnk_08108588[--this->manager.unk_0e];
            }
        }
    }
}

u32 sub_08059F9C(Manager14* this) {
    switch (gRoomControls.roomID) {
        case 1:
            if (CheckLocalFlag(0x16)) {
                return 0;
            }
            sub_0805A25C(this);
            DeleteThisEntity();
            break;
        case 7:
            sub_0805A25C(this);
            DeleteThisEntity();
            break;
        case 0:
        case 8 ... 9:
        case 23:
            return 1;
        case 2 ... 6:
        case 10 ... 22:
        default:
            return 0;
    }
}

void sub_0805A040(Manager14* this) {
    sub_0805A098(this);
}

void sub_0805A048(Manager14* this) {
    if (--this->manager.unk_0f == 0) {
        this->manager.unk_0f = 4;
        gScreen.controls.alphaBlend = gUnk_08108588[this->manager.unk_0e++];
        if (this->manager.unk_0e == 9) {
            this->manager.action = 1;
            this->unk_22 = 0;
        }
    }
    sub_0805A098(this);
}

void sub_0805A098(Manager14* this) {
    switch (gRoomControls.roomID) {
        case 0:
        case 8:
        case 9:
        case 0x17:
            return;
        default:
            this->manager.action = 3;
    }
}

void sub_0805A0C0(Manager14* this) {
    if (--this->manager.unk_0f == 0) {
        this->manager.unk_0f = 4;
        gScreen.controls.alphaBlend = gUnk_08108588[this->manager.unk_0e--];
        if (this->manager.unk_0e == 0xFF) {
            gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
            sub_08056250();
            DeleteThisEntity();
        }
    }
}

void sub_0805A114(u32 unk0, u32 unk1) {
    s32 i;
    u16* p = &gUnk_02017AA0[gUnk_03003DE4 * 0x500];
    for (i = 0; i < 0xA0; i++) {
        s32 tmp = i + gScreen.bg3.yOffset;
        switch ((tmp >> 3) & 7) {
            case 4:
                tmp -= 8;
                tmp &= 0xF8;
                break;
            case 1:
            case 7:
                tmp &= 0xF0;
                break;
            case 0:
            case 2 ... 3:
            case 5 ... 6:
            default:
                tmp &= 0xF8;
        }
        *p++ = gScreen.bg3.xOffset + ((gSineTable[(unk1 + tmp) & 0xFF] * unk0) >> 8);
    }
    sub_0805622C(&gUnk_02017AA0[gUnk_03003DE4 * 0x500], 0x0400001C, 0xA2600001);
}

void sub_0805A1D8(Manager14* this) {
    gRoomControls.bg3OffsetX.WORD -= 0x1000;
    gScreen.bg3.xOffset = gRoomControls.bg3OffsetX.HALF.HI;
    gRoomControls.bg3OffsetY.WORD -= 0x1000;
    gScreen.bg3.yOffset = gRoomControls.bg3OffsetY.HALF.HI;
    if (gScreen.lcd.displayControl & DISPCNT_BG3_ON) {
        sub_0805A114(6, this->unk_20 >> 1);
        if (this->unk_22 == 0 && (gMain.ticks & 0x1F) == 0) {
            this->unk_24++;
            this->unk_24 &= 3;
            gScreen.controls.alphaBlend = gUnk_0810859A[this->unk_24];
        }
    }
}

void nullsub_495() {
}

void sub_0805A25C() {
    gScreen.controls.layerFXControl = 0;
    gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
    sub_08056250();
}
