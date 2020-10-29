#include "global.h"

extern long (*gUnk_080B3E30[])(u8*);

long sub_08018FCC(u8 *r0)
{
    return gUnk_080B3E30[(r0[0xC])](r0);
}
