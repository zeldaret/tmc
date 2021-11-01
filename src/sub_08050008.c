#include "global.h"
#include "utils.h"
#include "structures.h"

extern u32 gUnk_020354C0;

void sub_08050008() {
    MemClear(&gUnk_020354C0, 128);
    gFadeControl.mask = 0xFFFFFFFF;
}
