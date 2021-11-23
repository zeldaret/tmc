#include "global.h"

extern void sub_0807C960();
extern void LoadPalettes(const u8*, s32, s32);

extern u16 gMetatilesBottom[];
extern u16 gMetatilesTop[];
extern u8 gMapData;

extern const u8 gUnk_020176E0[];

void sub_0807C960(void* dest, u32 offset) {
    void* src;

    if (offset != -1) {
        src = &gMapData + (offset & 0x7fffffff);
        if ((u32)dest >> 0x18 == 6) {
            LZ77UnCompVram(src, (void*)dest);
        } else {
            LZ77UnCompWram(src, (void*)dest);
        }
    }
}

void sub_0807C998(u32* a1) {
    sub_0807C960(gMetatilesBottom, a1[0]);
    sub_0807C960(gMetatilesBottom - 0x1000, a1[1]);
    sub_0807C960(gMetatilesTop, a1[2]);
    sub_0807C960(gMetatilesTop - 0x1000, a1[3]);
}

void sub_0807C9D8(u32* a1) {
    u32* v1; // r5@1

    v1 = a1;
    sub_0807C960((u8*)0x6004000, *a1);
    sub_0807C960((u8*)0x6000000, v1[1]);
    sub_0807C960((u8*)0x6008000, v1[2]);
    sub_0807C960((u8*)gUnk_020176E0, v1[3]);
    LoadPalettes(gUnk_020176E0, 2, 13);
}
