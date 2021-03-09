#ifndef DMA_H
#define DMA_H

void MemFill16(u32 value, void* dest, u32 size);
void MemFill32(u32 value, void* dest, u32 size);
void MemClear(void* dest, u32 size);
void MemCopy(const void* src, void* dest, u32 size);

#endif // DMA_H
