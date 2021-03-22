#include "global.h"
#include "manager.h"
#include "functions.h"
#include "structures.h"
#include "gba/gba.h"

typedef struct {
    Manager manager;
    u8 unk_20;
    u8 unk_21[0x1F];
} Manager7;

void sub_08057E30();
u32 sub_08057E40();
void sub_08057E7C(u32);

extern u32 sub_08056300(const u16*);

extern const u8 gGlobalGfxAndPalettes[];

const u16 gUnk_08108050[0x2A] = { 0,     0,     0x20, 0xE0,  0xE0,  1,     0,     0x1D0, 0x80,  0x60,  2,
                                  0x170, 0x278, 0xF8, 0xA0,  3,     0x310, 0x178, 0xC0,  0x150, 3,     0x340,
                                  0x2C8, 0x60,  0x90, 4,     0x1D0, 0,     0x200, 0xE0,  1,     0x108, 0x188,
                                  0xD0,  0x80,  2,    0x1E8, 0x338, 0x50,  0xC0,  0xFF,  0 };

const u32 gUnk_081080A4[0x50] = {
    0x001095E0, 0x06000000, 0x0010A5E0, 0x06001000, 0x0010B5E0, 0x06002000, 0x0010C5E0, 0x06003000, 0x0010D5E0,
    0x06008000, 0x0010E5E0, 0x06009000, 0x0010F5E0, 0x0600A000, 0x001105E0, 0x0600B000, 0x001115E0, 0x06000000,
    0x001125E0, 0x06001000, 0x001135E0, 0x06002000, 0x001145E0, 0x06003000, 0x001155E0, 0x06008000, 0x001165E0,
    0x06009000, 0x001175E0, 0x0600A000, 0x001185E0, 0x0600B000, 0x001195E0, 0x06000000, 0x0011A5E0, 0x06001000,
    0x0011B5E0, 0x06002000, 0x0011C5E0, 0x06003000, 0x0011D5E0, 0x06008000, 0x0011E5E0, 0x06009000, 0x0011F5E0,
    0x0600A000, 0x001205E0, 0x0600B000, 0x001215E0, 0x06000000, 0x001225E0, 0x06001000, 0x001235E0, 0x06002000,
    0x001245E0, 0x06003000, 0x001255E0, 0x06008000, 0x001265E0, 0x06009000, 0x001275E0, 0x0600A000, 0x001285E0,
    0x0600B000, 0x001295E0, 0x06000000, 0x0012A5E0, 0x06001000, 0x0012B5E0, 0x06002000, 0x0012C5E0, 0x06003000,
    0x0012D5E0, 0x06008000, 0x0012E5E0, 0x06009000, 0x0012F5E0, 0x0600A000, 0x001305E0, 0x0600B000
};

const u8 gUnk_081081E4[] = { 0x16, 0x17, 0x17, 0x18, 0x18 };

void Manager7_Main(Manager7* this) {
    u32 tmp;
    const u32* tmp2;
    if (!this->manager.action) {
        this->manager.action = 1;
        this->manager.unk_0e = 8;
        this->unk_20 = 0xFF;
        sub_0805E3A0(this, 6);
        sub_08052D74(this, sub_08057E30, 0);
    }
    if (sub_08057E40(this)) {
        tmp = gRoomVars.unk_10;
        if (this->unk_20 != tmp) {
            this->unk_20 = tmp;
            this->manager.unk_0e = 0;
        }
    }
    if (gRoomControls.unk2)
        return;
    tmp = this->unk_20;
    tmp2 = &gUnk_081080A4[tmp << 4];
    switch (this->manager.unk_0e) {
        case 0:
            gUnk_02034490[0] = 1;
            LoadResourceAsync(&gGlobalGfxAndPalettes[tmp2[0]], tmp2[1], 0x1000);
            LoadPaletteGroup(gUnk_081081E4[tmp]);
            this->manager.unk_0e++;
            break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            LoadResourceAsync(&gGlobalGfxAndPalettes[tmp2[(this->manager.unk_0e << 1)]],
                              tmp2[(this->manager.unk_0e << 1) + 1], 0x1000);
            this->manager.unk_0e++;
            break;
        case 8:
            gUnk_02034490[0] = 0;
            this->manager.unk_0e++;
            break;
    }
}

void sub_08057E30(Manager7* this) {
    sub_08057E7C(gRoomVars.unk_10);
}

u32 sub_08057E40(Manager7* this) {
    u32 tmp = sub_08056300(gUnk_08108050);
    if (tmp != 0xFF) {
        gRoomVars.unk_10 = tmp;
        return 1;
    } else {
        return 0;
    }
}

void sub_08057E64() {
    u32 tmp;
    tmp = sub_08056300(gUnk_08108050);
    if (tmp != 0xFF) {
        sub_08057E7C(tmp);
    }
}

void sub_08057E7C(u32 unk1) {
    u32 tmp;
    const u32* tmp2;
    if (unk1 > 4)
        return;
    LoadPaletteGroup(gUnk_081081E4[unk1]);
    tmp2 = &gUnk_081080A4[unk1 << 4];
    for (tmp = 0; tmp < 8; tmp++, tmp2 += 2) {
        DmaSet(3, &gGlobalGfxAndPalettes[tmp2[0]], tmp2[1], 0x84000400);
    }
    gRoomVars.unk_10 = unk1;
}
