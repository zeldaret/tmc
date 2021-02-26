#include "global.h"

typedef struct struct_08DE7D40 {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    // u8 filler[3];
} struct_08DE7D40;

extern struct_08DE7D40* gUnk_02036A50;
extern struct_08DE7D40 gUnk_08DE7D40;
extern struct_08DE7D40 gUnk_08DE7D4C;

u16 sub_080B16AC(u16, u16*, u8);

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

u16 sub_080B1698(u16 unk_1, u16* unk_2) {
    return sub_080B16AC(unk_1, unk_2, 1);
}

// this is the furthest I could get
NONMATCH("asm/non_matching/code_080B1520/sub_080B16AC.inc", u16 sub_080B16AC(u16 unk_1, u16* unk_2, u8 unk_3)) {
    u16 stack[0x52];
    vu16 stack_a4;
    vu16 stack_a6;
    vu16 stack_a8;
    vu32 stack_ac;

    u32 r0, r1, r2;

    u8 i, j;
    u16* ptr;

    r1 = unk_1;
    if (unk_1 < gUnk_02036A50->unk_04)
        return 0x80ff;

    ptr = stack + gUnk_02036A50->unk_08 + 0x42;
    *ptr = 0;
    ptr--;
    for (i = 0; i <= 3; i++) {
        r2 = *unk_2;
        unk_2++;
        for (j = 0; j <= 0xf; j++) {
            *ptr = r2;
            ptr--;
            r2 = r2 >> 1;
        }
    }
    for (i = 0; i < gUnk_02036A50->unk_08; i++) {
        *ptr = r1;
        ptr--;
        r1 = r1 >> 1;
    }
    *ptr = 0;
    ptr--;
    *ptr = 1;
    sub_080B1568(stack, (u16*)0xd000000, gUnk_02036A50->unk_08 + 0x43);
    stack_a4 = 0;
    stack_a6 = REG_VCOUNT;
    stack_ac = 0;
    if (stack_a4 == 0) {
        r0 = *(u16*)0xd000000;
        r0 &= 1;
        if (r0 != 0)
            goto bad;
    }
    do {
        do {
            do {
                stack_a8 = REG_VCOUNT;
                if (stack_a8 != stack_a6) {
                    if (stack_a8 > stack_a6) {
                        r1 = stack_a8;
                        r0 = stack_a6;
                        r1 = r1 - r0;
                        r0 = stack_ac;
                        r1 = r1 + r0;
                        stack_ac = r1;
                    } else {
                        r0 = stack_a8 + 0xe4;
                        r1 = stack_a6;
                        r0 = r0 - r1;
                        r1 = stack_ac;
                        r0 = r0 + r1;
                        stack_ac = r0;
                    }
                    if (stack_ac > 0x88) {
                        if (stack_a4 != 0)
                            return 0;
                        r0 = *(u16*)0xd000000;
                        r0 &= 1;
                        if (r0 != 0)
                            return 0;
                        return 0xc001;
                    }
                    stack_a6 = stack_a8;
                }
            } while (stack_a4 != 0);
            r1 = 1;
            r0 = *(u16*)0xd000000;
            r1 &= r0;
        } while (r1 != 0);
    bad:
        stack_a4++;
    } while (unk_3 != 0);
    return 0;
}
END_NONMATCH

u16 sub_080B180C(u16 unk_1, u16* unk_2) {
    u16 ret;

    u16 stack[4];
    u16* ptr;

    u8 i;

    ret = 0;
    if (unk_1 >= gUnk_02036A50->unk_04) {
        return 0x80ff;
    }
    sub_080B15E8(unk_1, stack);
    ptr = stack;
    for (i = 0; i < ARRAY_COUNT(stack); i++) {
        if (*unk_2++ != *ptr++) {
            ret = 0x8000;
            break;
        }
    }
    return ret;
}

u32 sub_080B1864(u16 unk_1, u16* unk_2) {
    u8 i;
    u32 ret;

    for (i = 0; i < 3; i++) {
        ret = sub_080B1698(unk_1, unk_2);
        if (ret == 0) {
            ret = sub_080B180C(unk_1, unk_2);
            if (ret == 0)
                break;
        }
    }
    return ret;
}

u16 sub_080B18A4(u16 unk_1, u16* unk_2) {
    u16 ret;

    if (gUnk_02036A50->unk_00 != 0x200) {
        ret = sub_080B16AC(unk_1, unk_2, 0);
    } else {
        ret = 0x8080;
    }
    return ret;
}

u32 sub_080B18DC(u16 unk_1, u16* unk_2) {
    u8 i;
    u32 ret;

    for (i = 0; i < 3; i++) {
        ret = sub_080B18A4(unk_1, unk_2);
        if (ret == 0) {
            ret = sub_080B180C(unk_1, unk_2);
            if (ret == 0) {
                break;
            }
        }
    }
    return ret;
}
