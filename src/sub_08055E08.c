#include "global.h"
#include "menu.h"
#include "room.h"
#include "functions.h"

extern u32* _call_via_r0(u32* func);
extern void (*const gUnk_080FF420[])();
extern void sub_0804B0B0(u32, u32);
extern void sub_08055B70(u32, u32, u32, u32);

struct {
    /*0x00*/ u8 unk0;
    /*0x10*/ u8 filler1[0x1B];
    /*0x1c*/ u8 unk1C;
    /*0x1d*/ u8 unk1D;
    /*0x1e*/ u8 unk1E;
    /*0x1f*/ u8 unk1F;
} gUnk_02000070 = {};

extern EntityData gUnk_080FF400;

void sub_08055E08(void) {
    gUnk_080FF420[gMenu.overlayType]();
}

void sub_08055E24(void) {
    gMenu.overlayType++;
    gUnk_02000070.unk0 = 1;
    sub_0804B0B0(gMenu.field_0xc[2], gMenu.field_0xc[3]);
    LoadRoomEntityList(&gUnk_080FF400);
    sub_08055B70(gMenu.field_0x4, 0, 0, 0);
    DoFade(4, 0x10);
}

void nullsub_493(void) {
}
