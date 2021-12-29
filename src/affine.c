#include "global.h"
#include "structures.h"
#include "main.h"
#include "room.h"
#include "screen.h"

extern u32 gFrameObjLists[];

extern void gUnk_03006164(void);
extern void gUnk_0300659C(OAMCommand*, void*);
extern void gUnk_03006580(OAMCommand*, u32, u32);

// regalloc
NONMATCH("asm/non_matching/vram/sub_080AD8F0.inc", void* sub_080AD8F0(u32 sprite, u32 frame)) {
    u32 x = gFrameObjLists[sprite];
    u8* y = (u8*)&gFrameObjLists[frame];
    u32 tmp = *(u32*)&y[x];

    return (u8*)gFrameObjLists + tmp;
}
END_NONMATCH

void FlushSprites(void) {
    gUnk_03000000.updated = 0;
}

NONMATCH("asm/non_matching/vram/sub_080AD918.inc", void sub_080AD918(void)) {
    s32 rem;
    u16* d;

    if (gMain.ticks.HALF.LO == 0) {
        gUnk_03000000.unk[0x20].unk0 = gMain.ticks.HALF.LO;
        gUnk_03000000.unk[0x48].unk4 = gMain.ticks.HALF.LO;
        gUnk_03000000.unk[0x71].unk0 = gMain.ticks.HALF.LO;
        gUnk_03000000.unk[0x99].unk4 = gMain.ticks.HALF.LO;
    } else {
        gMain.ticks.HALF.LO--;
    }

    rem = 0x80 - gUnk_03000000.updated;
    for (d = (u16*)&gUnk_03000000.oam[0x80 + gUnk_03000000.updated]; rem > 0; rem--) {
        *d = 0x2A0;
        (u8*)d += 6;
    }
    if (gUnk_03000000.unk[0].unk7) {
        gUnk_03000000.unk[0].unk7 = 0;
        ObjAffineSet((struct ObjAffineSrcData*)gUnk_03000000.unk, &gUnk_03000000.oam[0].affineParam, 32, 8);
    }
    gUnk_03000000.field_0x0 = 1;
}
END_NONMATCH

void sub_080AD9B0(void) {
    void (*fn)(void);

    gUnk_03000000._0[6] = gScreenTransition.field_0x2c[3] ? 15 : 0;
    gUnk_03000000._4 = gRoomControls.aff_x + gRoomControls.roomScrollX;
    gUnk_03000000._6 = gRoomControls.aff_y + gRoomControls.roomScrollY;
    gUnk_03000000.field_0x1++;
    fn = &gUnk_03006164;
    fn();
}

void sub_080ADA04(OAMCommand* cmd, void* dst) {
    void (*fn)(OAMCommand*, void*) = gUnk_0300659C;
    fn(cmd, dst);
}

void sub_080ADA14(u32 a1, u32 a2) {
    void (*fn)(OAMCommand*, u32, u32) = gUnk_03006580;
    fn(&gOamCmd, a1, a2);
}
