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

