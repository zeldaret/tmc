#include "global.h"
#include "entity.h"

void _DmaFill32(u32, u8*, u32);
void _DmaFill16(u32, u8*, u32);

void _DmaFill16(u32 value, u8* dest, u32 size) {
    DmaFill16(3, value, dest, size);
}

void _DmaFill32(u32 value, u8* dest, u32 size) {
    DmaFill32(3, value, dest, size);
}

void _DmaZero(u8* src, u32 size) {
    u32 zero = 0;

    switch (((u32)src | size) & 3) {
        case 0:
            _DmaFill32(0, src, size);
            break;
        case 2:
            _DmaFill16(0, src, size);
            break;
        default:
            do {
                *src = zero;
                src++;
                size--;
            } while (size != 0);
    }
}

void _DmaCopy(const u8* src, u8* dst, u32 size) {
    switch (((u32)src | (u32)dst | size) & 3) {
        case 0:
            DmaCopy32(3, src, dst, size);
            break;
        case 2:
            DmaCopy16(3, src, dst, size);
            break;
        default:
            do {
                *dst = *src;
                src++;
                dst++;
            } while (--size);
    }
}
