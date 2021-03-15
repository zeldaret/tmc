#include "global.h"

extern void sub_080186EC();
extern u32* GetCurrentRoomProperty(u8);
extern void sub_0804B16C();

void sub_0804AFF4(void) {
    void (*func)();

    sub_080186EC();
    func = (void (*)())GetCurrentRoomProperty(5);
    if (func) {
        func();
    }
    func = (void (*)())GetCurrentRoomProperty(7);
    if (func) {
        func();
    }
    sub_0804B16C();
}
