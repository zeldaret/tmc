#include "global.h"
#include "utils.h"
#include "structures.h"

void sub_08050008() {
    MemClear(&gUnk_020354C0, sizeof(gUnk_020354C0));
    gFadeControl.mask = 0xFFFFFFFF;
}
