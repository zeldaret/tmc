#include "global.h"

typedef struct struct_08DE7D40 {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 filler[3];
} struct_08DE7D40;

extern struct_08DE7D40* gUnk_02036A50;
extern struct_08DE7D40 gUnk_08DE7D40;
extern struct_08DE7D40 gUnk_08DE7D4C;

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

NONMATCH("asm/non_matching/code_080B1520/sub_080B1568.inc", void sub_080B1568(u16* src, u16* dest, u32 cnt)) {
    u32 temp;

    u16 u1;
    u16 IME_save;

    u1 = cnt;
    IME_save = REG_IME;
    REG_IME = 0;
    temp = REG_WAITCNT & 0xf8ff;
    temp |= gUnk_02036A50->unk_06;
    REG_WAITCNT = temp;
    REG_DMA3SAD = (u32)src;
    REG_DMA3DAD = (u32)dest;
    REG_DMA3CNT = u1 | 0x80000000;
    if ((REG_DMA3CNT_H & 0x8000) != 0) {
        while ((REG_DMA3CNT_H & 0x8000) != 0) {}
    }
    REG_IME = IME_save;
}
END_NONMATCH

u32 sub_080B15E8(u16 unk_1, u16* unk_2) {
    u16 stack[0x44];

    u16* ptr;
    u8 t1, t2;
    u16 value;

    if (unk_1 >= gUnk_02036A50->unk_04) {
        return 0x80ff;
    } else {
        ptr = stack;
        (u8*)ptr += (gUnk_02036A50->unk_08 << 1) + 1;
        ((u8*)ptr)++;
        for (t1 = 0; t1 < gUnk_02036A50->unk_08; t1++) {
            *(ptr--) = unk_1;
            unk_1 >>= 1;
        }
        *(ptr--) = 1;
        *ptr = 1;
        sub_080B1568(stack, (u16*)0xd000000, gUnk_02036A50->unk_08 + 3);
        sub_080B1568((u16*)0xd000000, stack, 0x44);
        ptr = stack + 4;
        unk_2 += 3;
        for (t1 = 0; t1 < 4; t1++) {
            value = 0;
            for (t2 = 0; t2 < 0x10; t2++) {
                value <<= 1;
                value |= (*ptr++) & 1;
            }
            *(unk_2--) = value;
        }
        return 0;
    }
}
