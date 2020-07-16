#include "global.h"

void _DmaFill32(u32, void*, u32);
void _DmaFill16(u32, void*, u32);

void _DmaZero(u8 *src, u32 count)
{
    u32 zero = 0;

    switch (((u32)src | count) & 3) {
        case 0:
            _DmaFill32(0,src, count);
            break;
        case 2:
            _DmaFill16(0, src, count);
            break;
        default:
            do {
                *src = zero;
                src++;
                count--;
        } while (count != 0);
    }
}