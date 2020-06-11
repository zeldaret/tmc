#include "global.h"

extern void SetTileType(u32, u32, u32);

void sub_0807B820(u32 param_1)

{
    SetTileType(620,param_1 + -65,1);
    SetTileType(627,param_1 + -65,2);
    SetTileType(621,param_1 + -64,1);
    SetTileType(628,param_1 + -64,2);
    SetTileType(622,param_1 + -63,1);
    SetTileType(629,param_1 + -63,2);
    SetTileType(623,param_1 + -1,1);
    SetTileType(624,param_1,1);
    SetTileType(626,param_1 + 1,1);
    return;
}