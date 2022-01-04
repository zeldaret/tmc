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
    gOAMControls.updated = 0;
}

NONMATCH("asm/non_matching/vram/sub_080AD918.inc", void CopyOAM(void)) {
    s32 rem;
    u16* d;

    if (gMain.ticks.HALF.LO == 0) {
        gOAMControls.unk[0x20].unk0 = gMain.ticks.HALF.LO;
        gOAMControls.unk[0x48].unk4 = gMain.ticks.HALF.LO;
        gOAMControls.unk[0x71].unk0 = gMain.ticks.HALF.LO;
        gOAMControls.unk[0x99].unk4 = gMain.ticks.HALF.LO;
    } else {
        gMain.ticks.HALF.LO--;
    }

    rem = 0x80 - gOAMControls.updated;
    for (d = (u16*)&gOAMControls.oam[0x80 + gOAMControls.updated]; rem > 0; rem--) {
        *d = 0x2A0;
        (u8*)d += 6;
    }
    if (gOAMControls.unk[0].unk7) {
        gOAMControls.unk[0].unk7 = 0;
        ObjAffineSet((struct ObjAffineSrcData*)gOAMControls.unk, &gOAMControls.oam[0].affineParam, 32, 8);
    }
    gOAMControls.field_0x0 = 1;
}
END_NONMATCH

void DrawEntities(void) {
    void (*fn)(void);

    gOAMControls._0[6] = gRoomTransition.field_0x2c[3] ? 15 : 0;
    gOAMControls._4 = gRoomControls.aff_x + gRoomControls.scroll_x;
    gOAMControls._6 = gRoomControls.aff_y + gRoomControls.scroll_y;
    gOAMControls.field_0x1++;
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
