
#include "global.h"

extern u32* _call_via_r0(u32* func);
extern u8 gMenu;
extern u32* gUnk_080FF420;

void sub_08055E08() {
    u32** arr = &gUnk_080FF420;
    u8 i = gMenu;
    i = *(&gMenu + 6);
    _call_via_r0(arr[i]);
}
