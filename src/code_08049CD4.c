#include "global.h"

extern u32* gUnk_020354B0;
extern u32 gUnk_02024050;

extern void MemFill32(u32, void*, u32);

void sub_08049CD4() {
    MemFill32(0xFFFFFFFF, &gUnk_02024050, 0x40);
    gUnk_020354B0 = &gUnk_02024050;
}

void sub_08049CF4(u8* arg0) {
    u8 field_0x6c = *(arg0 + 0x6c);
    if (field_0x6c & 0x80) {
        *(gUnk_020354B0 + 1) |= 1 << (field_0x6c & 0x1f);
    }
}

u32 sub_08049D1C(u32 arg0) {
    u32 bitmask = *(gUnk_020354B0 + 1) >> arg0;
    u32 output = 1;
    output &= ~bitmask;
    return output;
}
