#include "global.h"

extern void SetTileType(u32, u32, u32);

void sub_0807B930(int param_1)

{
    SetTileType(652, param_1 + -65, 1);
    SetTileType(659, param_1 + -65, 2);
    SetTileType(653, param_1 + -64, 1);
    SetTileType(660, param_1 + -64, 2);
    SetTileType(654, param_1 + -63, 1);
    SetTileType(661, param_1 + -63, 2);
    SetTileType(655, param_1 + -1, 1);
    SetTileType(656, param_1, 1);
    SetTileType(658, param_1 + 1, 1);
    return;
}
