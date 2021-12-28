#include "asm.h"
#include "room.h"

extern void sub_0807B778(u32, u32);

void sub_0807B7D8(u32 param_1, u32 param_2, u32 param_3) {
    if (param_1 == 53) {
        sub_08000152(53, param_2, param_3);
        sub_0807B778(param_2, param_3);
        sub_0807B778(param_2 + 1, param_3);
        sub_0807B778(param_2 - 1, param_3);
        sub_0807B778(param_2 + 64, param_3);
        sub_0807B778(param_2 - 64, param_3);
    } else {
        SetTileType(param_1, param_2, param_3);
    }
}

void sub_0807B820(u32 param_1) {
    SetTileType(620, param_1 - 65, 1);
    SetTileType(627, param_1 - 65, 2);
    SetTileType(621, param_1 - 64, 1);
    SetTileType(628, param_1 - 64, 2);
    SetTileType(622, param_1 - 63, 1);
    SetTileType(629, param_1 - 63, 2);
    SetTileType(623, param_1 - 1, 1);
    SetTileType(624, param_1, 1);
    SetTileType(626, param_1 + 1, 1);
}

void sub_0807B8A8(u32 param_1) {
    SetTileType(636, param_1 - 65, 1);
    SetTileType(643, param_1 - 65, 2);
    SetTileType(637, param_1 - 64, 1);
    SetTileType(644, param_1 - 64, 2);
    SetTileType(638, param_1 - 63, 1);
    SetTileType(645, param_1 - 63, 2);
    SetTileType(639, param_1 - 1, 1);
    SetTileType(640, param_1, 1);
    SetTileType(642, param_1 + 1, 1);
}

void sub_0807B930(int param_1) {
    SetTileType(652, param_1 - 65, 1);
    SetTileType(659, param_1 - 65, 2);
    SetTileType(653, param_1 - 64, 1);
    SetTileType(660, param_1 - 64, 2);
    SetTileType(654, param_1 - 63, 1);
    SetTileType(661, param_1 - 63, 2);
    SetTileType(655, param_1 - 1, 1);
    SetTileType(656, param_1, 1);
    SetTileType(658, param_1 + 1, 1);
}
