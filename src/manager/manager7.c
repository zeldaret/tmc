#include "global.h"
#include "manager.h"
#include "functions.h"
#include "gba/gba.h"


typedef struct {
    Manager manager;
    u8 unk_20;
    u8 unk_21[0x1F];
} Manager7;

void sub_08057E30();
u32 sub_08057E40();
void sub_08057E64();
void sub_08057E7C(u32);

extern void sub_08052D74();
extern u32 sub_08056300(const u16*);
extern void sub_0805E3A0();

extern u8 gUnk_02034490;
extern const u8 gUnk_081081E4[];
extern const u8 gGlobalGfxAndPalettes[];

extern const u16 gUnk_08108050[0xF];
extern const u32 gUnk_081080A4[0x50];

void Manager7_Main(Manager7* this) {
    u32 tmp;
    const u32 * tmp2;
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
    if (gRoomControls.unk2) return;
    tmp = this->unk_20;
    tmp2 = &gUnk_081080A4[tmp<<4];
    switch (this->manager.unk_0e) {
        case 0:
            gUnk_02034490 = 1;
            LoadAssetAsync(&gGlobalGfxAndPalettes[tmp2[0]], tmp2[1], 0x1000);
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
            LoadAssetAsync(&gGlobalGfxAndPalettes[tmp2[(this->manager.unk_0e << 1)]], tmp2[(this->manager.unk_0e << 1)+1], 0x1000);
            this->manager.unk_0e++;
            break;
        case 8:
            gUnk_02034490 = 0;
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
    if (unk1 > 4) return;
    LoadPaletteGroup(gUnk_081081E4[unk1]);
    tmp2 = &gUnk_081080A4[unk1<<4];
    for (tmp = 0; tmp < 8; tmp++, tmp2 += 2) {
        DmaSet(3,&gGlobalGfxAndPalettes[tmp2[0]],tmp2[1],0x84000400);
    }
    gRoomVars.unk_10 = unk1;
}
