#include "global.h"

extern u8 gUnk_08127D30[69];

u32 sub_08052654(u32 r0) {
    return gUnk_08127D30[r0 * 4] == 129;
}
