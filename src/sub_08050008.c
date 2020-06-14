#include "global.h"

extern u32 gUnk_020354C0;
extern s32 gUnk_03000FD0;
extern void sub_0801D630(u32, u32, u32);

void sub_08050008(u32 param_1, u32 param_2, u32 param_3) {
    s32* unk;

    sub_0801D630((u32)&gUnk_020354C0, 128, param_3);

    unk = &gUnk_03000FD0;
    *(unk + 1) = -1;

    return;
}
