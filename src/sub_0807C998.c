#include "global.h"

extern void sub_0807C960();
extern u32 gUnk_0202CEB4;
extern u32 gUnk_02012654;

void sub_0807C998(u32 *a1)
{
    sub_0807C960(&gUnk_0202CEB4, a1[0]);
    sub_0807C960(&gUnk_0202CEB4 - 0x800, a1[1]);
    sub_0807C960(&gUnk_02012654, a1[2]);
    sub_0807C960(&gUnk_02012654 - 0x800, a1[3]);
}
