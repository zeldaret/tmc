#include "global.h"
#include "menu.h"
#include "functions.h"

extern void (*const gUnk_08128BF8[])(void);

extern u8 gUnk_02000090;

u32 sub_080A554C(u32 arg0) {
    u32 i;

    if (arg0 != 0) {
        for (i = 0; i < 17; i++) {
            if (arg0 == (&gUnk_02000090)[i])
                return i;
        }
    }
    return 17;
}

void sub_080A5574(void) {
    gUnk_08128BF8[gMenu.menuType]();
    sub_080A57F4();
}
