#include "global.h"

extern u16 (*gUnk_02036A50)[];
extern u16 gUnk_08DE7D40[];
extern u16 gUnk_08DE7D4C[];

u32 sub_080B1520(u16 unk_1) {
    u32 ret;

    ret = 0;
    if (unk_1 == 4) {
        gUnk_02036A50 = &gUnk_08DE7D40;
    } else {
        if (unk_1 == 0x40) {
            gUnk_02036A50 = &gUnk_08DE7D4C;
        } else {
            gUnk_02036A50 = &gUnk_08DE7D40;
            ret = 1;
        }
    }
    return ret;
}

NONMATCH("asm/non_matching/code_080B1520/sub_080B1568.inc", void sub_080B1568(u32 unk_1, u32 unk_2, u32 unk_3)) {
    u32 temp;

    u16 u1;
    u16 IME_save;
    u16* ptr;

    u1 = unk_3;
    IME_save = REG_IME;
    REG_IME = 0;
    temp = REG_WAITCNT & 0xf8ff;
    ptr = *gUnk_02036A50;
    temp |= ptr[3];
    REG_WAITCNT = temp;
    REG_DMA3SAD = unk_1;
    REG_DMA3DAD = unk_2;
    REG_DMA3CNT = u1 | 0x80000000;
    if ((REG_DMA3CNT_H & 0x8000) != 0) {
        while ((REG_DMA3CNT_H & 0x8000) != 0) {}
    }
    REG_IME = IME_save;
}
END_NONMATCH
