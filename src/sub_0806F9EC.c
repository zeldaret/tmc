#include "global.h"

s32 sub_0806F9EC(s16 unk_1, s16 unk_2) {
    int temp;

    temp = (s32)unk_1 * (s32)unk_2;
    if (temp < 0) {
        temp = temp + 255;
    }
    return (temp << 8) >> 16;
}
