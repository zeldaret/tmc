#include "global.h"

extern s32 sub_080ADA14(u32, u32);
extern u16 gUnk_03001010[4];

void sub_080AD644(void) {

    gUnk_03001010[2] = 0;
    gUnk_03001010[3] = 0;
    gUnk_03001010[4] = 57376;
    gUnk_03001010[0] = 120;
    gUnk_03001010[1] = 152;
    sub_080ADA14(511, 1);
    return;
}
