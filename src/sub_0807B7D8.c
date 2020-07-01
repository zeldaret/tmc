#include "global.h"

extern void sub_08000152(u32);
extern void sub_0807B778(u32, u32);
extern void SetTileType(u32, u32, u32);

void sub_0807B7D8(u32 param_1, u32 param_2, u32 param_3)

{
    if (param_1 == 53) {
        sub_08000152(53);
        sub_0807B778(param_2, param_3);
        sub_0807B778(param_2 + 1, param_3);
        sub_0807B778(param_2 + -1, param_3);
        sub_0807B778(param_2 + 64, param_3);
        sub_0807B778(param_2 + -64, param_3);
    } else {
        SetTileType(param_1, param_2, param_3);
    }
    return;
}
