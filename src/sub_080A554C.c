#include "global.h"

extern u8 gUnk_02000090;

u32 sub_080A554C(u32 param_1)

{
    u32 uVar1;

    if (param_1 != 0) {
        uVar1 = 0;
        do {
            if (param_1 == (&gUnk_02000090)[uVar1]) {
                return uVar1;
            }
            uVar1 = uVar1 + 1;
        } while (uVar1 < 17);
    }
    return 17;
}
