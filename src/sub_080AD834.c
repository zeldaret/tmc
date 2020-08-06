#include "global.h"
#include "main.h"

extern u8 gUnk_03000FD0;

void sub_080AD834(void) {
    if (gUnk_03000FD0 == 0) {
        InitScreen(SCREEN_CHOOSE_FILE);
    }
}
