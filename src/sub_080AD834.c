#include "global.h"

extern void sub_08056010(u32);
extern u8 gUnk_03000FD0;

void sub_080AD834(void)

{
    if (gUnk_03000FD0 == '\0') {
        sub_08056010(1);
    }
    return;
}