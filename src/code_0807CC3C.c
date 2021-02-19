#include "global.h"
#include "structures.h"
#include "functions.h"
#include "script.h"
#include "entity.h"
#include "save.h"

typedef struct Thing {
    u16 unk_1;
    u16 unk_2;
    u32 unk_3;
} Thing;

extern struct_0807D1C4 gUnk_0811E4BC[];
extern const char gUnk_0811E4B4[8];

extern u32 sub_080B180C(u32, const char*);
extern u16 sub_080B18DC(u16, const char*);

u32 sub_0807D1D8(u32 unk_1, const char* unk_2, u32 unk_3);
u32 sub_0807D128(const Thing* thing);
u16 sub_0807D1A4(u16* unk_1, u32 unk_2);
u32 sub_0807D0A0(u16* unk_1, u16* unk_2, u32 unk_3);
u32 sub_0807D0EC(u32 unk_1, const char* unk_2);

u32 sub_0807CF88(u32 arg0, u8* arg1) {
    Thing thing;

    u32 retval;
    struct_0807D1C4* ptr;
    u32 e0, e1;
    u16 l1prep;

    ptr = sub_0807D1C4(arg0);

    thing.unk_3 = 'MCZ3';
    l1prep = sub_0807D1A4((u16*)&thing.unk_3, 4);
    l1prep += sub_0807D1A4((u16*)arg1, ptr->field_0x0);
    thing.unk_1 = l1prep;
    thing.unk_2 = -(u32)l1prep;
    e0 = sub_0807D20C(ptr->field_0x6, (const char*)arg1, ptr->field_0x0);
    if (e0) {
        e0 = sub_0807D184(ptr->field_0x2, (const char*)&thing.unk_1);
    }
    e1 = sub_0807D20C(ptr->field_0x8, (const char*)arg1, ptr->field_0x0);
    if (e1) {
        e1 = sub_0807D184(ptr->field_0x4, (const char*)&thing.unk_1);
    }

    retval = 0;
    if (e0 || e1) {
        retval = 1;
    }
    return retval;
}

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D008.inc", u32 sub_0807D008(u32 param_1, SaveFile* saveFile)) {
    u32 set_0;
    char auStack32[8];

    struct_0807D1C4* unk_s;
    u32 t1;
    u32 t2;
    u32 ret;
    u32 temp;

    unk_s = sub_0807D1C4(param_1);
    t1 = sub_0807D0EC(unk_s->field_0x2, auStack32);
    if (t1 == 2) {
        if ((sub_0807D1D8(unk_s->field_0x6, (char*)saveFile, unk_s->field_0x0) == 0) ||
            (sub_0807D0A0((u16*)auStack32, (u16*)saveFile, (u32)unk_s->field_0x0) == 0)) {
            t1 = 0;
        } else {
            return 1;
        }
    }
    t2 = sub_0807D0EC(unk_s->field_0x4, auStack32);
    if (t2 == 2) {
        if ((sub_0807D1D8(unk_s->field_0x8, (char*)saveFile, unk_s->field_0x0) != 0) &&
            (sub_0807D0A0((u16*)auStack32, (u16*)saveFile, (u32)unk_s->field_0x0) != 0)) {
            return 1;
        }
        t2 = 0;
    }
    set_0 = 0;
    CpuSet(&set_0, saveFile, unk_s->field_0x0 >> 2 | CPU_SET_SRC_FIXED | CPU_SET_32BIT);
    temp = t1 | t2;
    ret = 0;
    if (temp == 0) {
        ret = -1;
    }
    return ret;
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D0A0.inc", u32 sub_0807D0A0(u16* unk_1, u16* unk_2, u32 unk_3)) {
    u32 r0;

    u32* u32_1 = (u32*)unk_1;

    u16 u0;
    u32 u1;

    u0 = sub_0807D1A4(unk_1 + 2, 4);
    u0 = u0 + sub_0807D1A4(unk_2, unk_3);

    u1 = unk_1[0];
    if (u1 != u0) {
        r0 = 0;
    } else {
        if (unk_1[1] == (-(u1 << 0x10) >> 0x10)) {
            if (*(u32_1 + 1) != 'MCZ3') {
                r0 = 0;
            } else {
                r0 = 1;
            }
        } else {
            r0 = 0;
        }
    }
    return r0;
}
END_NONMATCH

u32 sub_0807D0EC(u32 unk_1, const char* unk_2) {
    u32 ret;

    if (!sub_0807D1D8(unk_1, unk_2, 8)) {
        ret = 0;
    } else {
        ret = sub_0807D128((Thing*)unk_2);
    }
    if (!ret && sub_0807D1D8(unk_1 + 8, unk_2, 8)) {
        ret = sub_0807D128((Thing*)unk_2);
    }
    return ret;
}

u32 sub_0807D128(const Thing* thing) {
    u32 ret;
    switch (thing->unk_3) {
        case 'MCZ3':
            if (thing->unk_1 + thing->unk_2 == 0x10000) {
                ret = 2;
            } else {
                ret = 0;
            }
            break;
        case 'FleD':
        case 'TINI':
            ret = 0;
            if ((thing->unk_1 & thing->unk_2) == 0xffff) {
                ret = 1;
            }
            break;
        default:
            ret = 0;
            break;
    }
    return ret;
}

u32 sub_0807D184(u32 param_1, const char* param_2) {
    u32 uVar1;

    uVar1 = sub_0807D20C(param_1, param_2, 8);
    if (uVar1 == 0) {
        uVar1 = sub_0807D20C(param_1 + 8, param_2, 8);
    }
    return uVar1;
}

u16 sub_0807D1A4(u16* unk_1, u32 unk_2) {
    u32 uVar1;

    uVar1 = 0;
    while (unk_2 != 0) {
        uVar1 = uVar1 + (*unk_1 ^ unk_2);
        unk_1 = unk_1 + 1;
        unk_2 = unk_2 - 2;
    }
    return uVar1;
}

struct_0807D1C4* sub_0807D1C4(u32 unk_1) {
    return &gUnk_0811E4BC[unk_1];
}

// these three are basically the same and wrong by basically one instruction in the wrong place
NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D1D8.inc", u32 sub_0807D1D8(u32 unk_1, const char* unk_2, u32 unk_3)) {
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D20C.inc", u32 sub_0807D20C(u32 unk_1, const char* unk_2, u32 unk_3)) {
    unk_3 >>= 3;
    unk_1 >>= 3;
    while (unk_3-- > 0) {
        if (sub_080B18DC(unk_1, unk_2)) {
            sub_080B18DC(unk_1, gUnk_0811E4B4);
            return 0;
        }
        unk_1++;
        unk_2 += 8;
    }
    return 1;
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D24C.inc", u32 sub_0807D24C(u32 unk_1, const char* unk_2, u32 unk_3)) {
    unk_3 >>= 3;
    unk_1 >>= 3;
    while (unk_3-- > 0) {
        if (sub_080B180C(unk_1, unk_2))
            return 0;
        unk_1++;
        unk_2 += 8;
    }
    return 1;
}
END_NONMATCH

// these three functions use gRoomControls, maybe once that is understood better, these can be decompiled easier
NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D280.inc", void sub_0807D280(u32 unk_1, u32 unk_2)) {
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D46C.inc", void sub_0807D46C(u32 unk_1, u32 unk_2)) {
}
END_NONMATCH

NONMATCH("asm/non_matching/code_0807CC3C/sub_0807D6D8.inc", void sub_0807D6D8(u32 unk_1, u32 unk_2)) {
}
END_NONMATCH
