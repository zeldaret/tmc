#include "global.h"

s32 sub_0806F9EC(s16 param_1, s16 param_2)

{
    int iVar1;

    iVar1 = (s32)param_1 * (s32)param_2;
    if (iVar1 < 0) {
        iVar1 = iVar1 + 255;
    }
    return (iVar1 << 8) >> 16;
}
