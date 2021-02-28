#include "global.h"
#include "entity.h"

void MemFill32(u32, u8*, u32);
void MemFill16(u32, u8*, u32);

void MemFill16(u32 value, u8* dest, u32 size) {
    DmaFill16(3, value, dest, size);
}

void MemFill32(u32 value, u8* dest, u32 size) {
    DmaFill32(3, value, dest, size);
}

void MemClear32(u8* src, u32 size) {
    u32 zero = 0;

    switch (((u32)src | size) & 3) {
        case 0:
            MemFill32(0, src, size);
            break;
        case 2:
            MemFill16(0, src, size);
            break;
        default:
            do {
                *src = zero;
                src++;
                size--;
            } while (size != 0);
    }
}

void MemCopy(const u8* src, u8* dst, u32 size) {
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
