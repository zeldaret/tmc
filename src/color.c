#include "global.h"
#include "entity.h"
#include "common.h"
#include "color.h"

void LoadObjPaletteAtIndex(u32 a1, u32 a2);

static void sub_0801CFD0(u32 a1);

void ResetPaletteTable(u32 a1) {
    u32 i;

    MemClear(gPaletteList, 0x40);
    for (i = 0; i < 6; ++i) {
        sub_0801CFD0(i);
    }
    sub_0801D000(a1);
}

void sub_0801CFD0(u32 a1) {
    Palette* p = &gPaletteList[a1];
    p->_0 = ((s8)p->_0 & ~0xf) | 4;
    p->_0 = (p->_0 & 0xf) | 0x10;
    p->_1 = 0x80;
    p->_2 = 0xFFFF;
}

ASM_FUNC("asm/non_matching/color/sub_0801D000.inc", void sub_0801D000(u32 a1));

ASM_FUNC("asm/non_matching/color/LoadObjPalette.inc", void LoadObjPalette(Entity* entity, u32 a2));

ASM_FUNC("asm/non_matching/color/FindPalette.inc", s32 FindPalette(u32 a1));

ASM_FUNC("asm/non_matching/color/FindFreeObjPalette.inc", u32 FindFreeObjPalette(u32 a1));

ASM_FUNC("asm/non_matching/color/SetEntityObjPalette.inc", void SetEntityObjPalette(Entity* entity, u32 palette));

void UnloadOBJPalette(Entity* entity) {
    u8* p = &entity->spriteAnimation[1];
    u32 idx = *p;
    *p = 0;
    sub_0801D244(idx);
}

ASM_FUNC("asm/non_matching/color/sub_0801D244.inc", void sub_0801D244(u32 a1));

void sub_0801D28C(Entity* entity, u32 palette) {
    u32 c = entity->spriteAnimation[1];
    Palette* list = gPaletteList;
    Palette* p = &list[c];
    u32 lo = (u32)(p->_0 << 0x1C) >> 0x1C;

    if (lo == 3) {
        p->_2 = palette;
        LoadObjPaletteAtIndex(palette, c);
    }
}

void ChangeObjPalette(Entity* entity, u32 a2) {
    UnloadOBJPalette(entity);
    LoadObjPalette(entity, a2);
}

ASM_FUNC("asm/non_matching/color/LoadObjPaletteAtIndex.inc", void LoadObjPaletteAtIndex(u32 a1, u32 a2));

ASM_FUNC("asm/non_matching/color/CleanUpObjPalettes.inc", void CleanUpObjPalettes(void));

u32 sub_0801D458(u32 a1) {
    u32 i;
    for (i = a1; i < 16; i++) {
        s32 tmp = ((u32)gPaletteList[i]._0 << 28) >> 28;
        switch (tmp) {
            case 0:
            case 1:
            case 4:
                continue;
            default:
                return i;
        }
    }
    return 0;
}

ASM_FUNC("asm/non_matching/color/sub_0801D48C.inc", void sub_0801D48C(u32 a1, u32 a2));
