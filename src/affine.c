#include "global.h"
#include "structures.h"
#include "main.h"
#include "room.h"
#include "screen.h"

extern u32 gFrameObjLists[];

extern void ram_DrawEntities(void);
extern void ram_sub_080ADA04(OAMCommand*, void*);
extern void ram_DrawDirect(OAMCommand*, u32, u32);

void* sub_080AD8F0(u32 sprite, u32 frame) {
    u32* temp = &gFrameObjLists[0];
    u32 x = gFrameObjLists[sprite];
    temp = (u32*)((uintptr_t)(((u32*)((uintptr_t)temp + x))[frame]) + (uintptr_t)temp);

    return temp;
}

void FlushSprites(void) {
    gOAMControls.updated = 0;
}

void CopyOAM(void) {
    u16* d;
    s32 rem;

    if (gMain.pad == 0) {
        gOAMControls.unk[0x20].unk0 = 0;
        gOAMControls.unk[0x48].unk4 = 0;
        gOAMControls.unk[0x71].unk0 = 0;
        gOAMControls.unk[0x99].unk4 = 0;
    } else {
        gMain.pad--;
    }

    rem = 0x80 - gOAMControls.updated;
    if (rem > 0) {
        d = (u16*)&gOAMControls.oam[gOAMControls.updated];
        for (; rem != 0; rem--) {
            *d = 0x2A0;
            (u8*)d += 8;
        }
    }
    if (gOAMControls.unk[0].unk7) {
        gOAMControls.unk[0].unk7 = 0;
        ObjAffineSet((struct ObjAffineSrcData*)gOAMControls.unk, &gOAMControls.oam[0].affineParam, 32, 8);
    }
    gOAMControls.field_0x0 = 1;
}

void DrawEntities(void) {
    void (*fn)(void);

    gOAMControls._0[6] = gRoomTransition.field2f ? 15 : 0;
    gOAMControls._4 = gRoomControls.aff_x + gRoomControls.scroll_x;
    gOAMControls._6 = gRoomControls.aff_y + gRoomControls.scroll_y;
    gOAMControls.field_0x1++;
    fn = &ram_DrawEntities;
    fn();
}

// TODO second parameter is a frame obj entry from gFrameObjLists
void sub_080ADA04(OAMCommand* cmd, void* dst) {
    void (*fn)(OAMCommand*, void*) = ram_sub_080ADA04;
    fn(cmd, dst);
}

void DrawDirect(u32 spriteIndex, u32 frameIndex) {
    void (*fn)(OAMCommand*, u32, u32) = ram_DrawDirect;
    fn(&gOamCmd, spriteIndex, frameIndex);
}
