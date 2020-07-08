#include "global.h"

extern void sub_080186EC();
extern u32* GetCurrentRoomProperty(u8);
extern u32 _call_via_r0(u32*);
extern void sub_0804B16C();

void sub_0804AFF4(void) {
    u32* func;

    sub_080186EC();
    func = GetCurrentRoomProperty(5);
    if (func != NULL) {
        _call_via_r0(func);
    }
    func = GetCurrentRoomProperty(7);
    if (func != NULL) {
        _call_via_r0(func);
    }
    sub_0804B16C();
    return;
}

/*
        thumb_func_start sub_0804AFF4
sub_0804AFF4: @ 0x0804AFF4
        push {lr}
        bl sub_080186EC
        movs r0, #5
        bl GetCurrentRoomProperty
        cmp r0, #0
        beq _0804B008
        bl _call_via_r0
_0804B008:
        movs r0, #7
        bl GetCurrentRoomProperty
        cmp r0, #0
        beq _0804B016
        bl _call_via_r0
_0804B016:
        bl sub_0804B16C
        pop {pc}
        */
