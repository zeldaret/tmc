#ifndef COMMON_H
#define COMMON_H

#include "global.h"

struct Entity_;

typedef struct {
    u16 heldKeys;
    u16 newKeys;
    u16 unk4;
    u8 unk6;
    u8 unk7;
} Input;
extern Input gInput;

void LoadPalettes(const u8*, s32, s32);
void LoadPaletteGroup(u32 group);
void LoadGfxGroup(u32 group);
void SetColor(u32 colorIndex, u32 color);
void SetFillColor(u32 color, u32 arg1);

/**
 * Fill memory with 16 bit value.
 */
void MemFill16(u32 value, void* dest, u32 size);

/**
 * Fill memory with 32 bit value.
 */
void MemFill32(u32 value, void* dest, u32 size);

/**
 * Clear memory.
 */
void MemClear(void* dest, u32 size);

/**
 * Copy memory.
 */
void MemCopy(const void* src, void* dest, u32 size);

/**
 * Refresh gInput from hardware registers.
 */
void ReadKeyInput(void);

void zMallocInit(void);

/**
 * Allocate memory on heap.
 *
 * The heap size is 0x1000 bytes and should be used sparingly.
 * It is customary for entities store the returned handle in their 'myHeap' field.
 *
 * @param size u32 Size to be allocated
 * @return void* Pointer to allocated memory
 */
void* zMalloc(u32 size);

/**
 * Free memory from heap.
 *
 * The entity system will automatically free the address stored in the 'myHeap' field.
 *
 * @param ptr void* Handle to be freed
 */
void zFree(void* ptr);

/**
 * Reset All display hardware registers.
 *
 * @param refresh bool32 Request refresh of HUD layer (bg 0)
 */
void DispReset(bool32 refresh);

u32 CheckPlayerProximity(u32, u32, u32, u32);
u32 CheckKinstoneFused(u32);
void sub_0801E1EC(u32, u32, u32);
void sub_0801DD58(u32, u32);
void sub_0801E1B8(u32, u32);
void sub_0801E738(u32);
void sub_0801DFB4(struct Entity_*, u32, u32, u32);
u32 sub_0801E00C(void);

#endif // COMMON_H
