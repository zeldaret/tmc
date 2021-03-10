#include "global.h"

extern u32 gUnk_020354C0;
extern s32 gFadeControl;
extern void MemClear32(u32, u32, u32);

void sub_08050008(u32 param_1, u32 param_2, u32 param_3) {
    s32* unk;

    MemClear32((u32)&gUnk_020354C0, 128, param_3);

    unk = &gFadeControl;
    *(unk + 1) = -1;
}
