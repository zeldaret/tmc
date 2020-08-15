#include "global.h"

extern const u8 gUnk_020176E0[];

extern void sub_0807C960();
extern void LoadPalettes(const u8*, int, int);

void sub_0807C9D8(u32* a1) {
    u32* v1; // r5@1

    v1 = a1;
    sub_0807C960(0x6004000, *a1);
    sub_0807C960(0x6000000, v1[1]);
    sub_0807C960(0x6008000, v1[2]);
    sub_0807C960(gUnk_020176E0, v1[3]);
    LoadPalettes(gUnk_020176E0, 2, 13);
}
