#include "global.h"

extern s32 __divsi3(s32, s32);

s16 sub_0806FA04(s16 param_1,s16 param_2)

{
    s16 sVar1;
    s32 iVar2;
    
    if (param_2 != 0) {
        sVar1 = __divsi3( (param_1 << 16) >> 8 ,param_2);
        iVar2 = sVar1;
    }
    else {
        iVar2 = 0;
    }
    return iVar2;
}