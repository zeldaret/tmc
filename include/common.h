#ifndef COMMON_H
#define COMMON_H

#include "global.h"

struct Entity_;

/**
 * Holds input information from system registers.
 */
typedef struct {
    u16 heldKeys; /**< Keys held since last frame. */
    u16 newKeys;  /** Keys newly pressed this frame. */
    u16 menuScrollKeys;
    u8 unk6;
    u8 menuScrollTimer;
} Input;
extern Input gInput; /**< Input instance. */

void LoadPalettes(const u8* src, s32 destPaletteNum, s32 numPalettes);

/**
 * Loads a packed group of palettes.
 *
 * @param group Group number.
 */
void LoadPaletteGroup(u32 group);

/**
 * Loads a packed group of tiles.
 *
 * @param group Group number.
 */
void LoadGfxGroup(u32 group);

/**
 * Set color in the palette.
 *
 * @param colorIndex Color index.
 * @param color Color.
 */
void SetColor(u32 colorIndex, u32 color);

void SetFillColor(u32 color, u32 arg1);

/**
 * Fill memory with 16 bit value.
 *
 * @param value Fill value.
 * @param dest Destination.
 * @param size Byte count.
 */
void MemFill16(u32 value, void* dest, u32 size);

/**
 * Fill memory with 32 bit value.
 *
 * @param value Fill value.
 * @param dest Destination.
 * @param size Byte count.
 */
void MemFill32(u32 value, void* dest, u32 size);

/**
 * Clear memory.
 *
 * @param dest Destination
 * @param size Byte count.
 */
void MemClear(void* dest, u32 size);

/**
 * Copy memory.
 *
 * @param src Source.
 * @param dest Destination.
 * @param size Byte count.
 */
void MemCopy(const void* src, void* dest, u32 size);

/**
 * Refresh #gInput from system registers.
 */
void ReadKeyInput(void);

/**
 * Initialize the heap.
 */
void zMallocInit(void);

/**
 * Allocate memory on heap.
 *
 * The heap size is 0x1000 bytes and should be used sparingly.
 * It is customary for entities store the returned pointer in the Entity.myHeap field.
 *
 * @param size u32 Size to be allocated.
 * @return Pointer to allocated memory.
 */
void* zMalloc(u32 size);

/**
 * Free memory from heap.
 * The Entity system will automatically free the pointer stored in the Entity.myHeap field.
 *
 * @param ptr Pointer to be freed.
 */
void zFree(void* ptr);

/**
 * Reset All display system registers.
 *
 * @param refresh Request refresh of HUD layer (bg 0).
 */
void DispReset(bool32 refresh);

u32 CheckPlayerProximity(u32, u32, u32, u32);
u32 CheckKinstoneFused(u32);
void sub_0801E1EC(u32, u32, u32);
void sub_0801DD58(u32, u32);
void sub_0801E1B8(u32, u32);
void AddKinstoneToBag(u32);
void InitializeFuseInfo(struct Entity_* entity, u32 textIndex, u32 cancelledTextIndex, u32 fusingTextIndex);
u32 PerformFuseAction(void);
bool32 CheckFusionMapMarkerDisabled(u32);
u32 sub_0801DB94(void);
u32 GetRandomSharedFusion(u8*);

typedef struct {
    u8 numFloors;
    u8 highestFloor;
    u8 unk_2;
    // u8 pad;
} DungeonFloorMetadata;

extern const DungeonFloorMetadata gDungeonFloorMetadatas[];

typedef struct {
    u8 area;
    u8 room;
    u8 unk_2; // TODO u16 pad?
    u8 unk_3;
    u32 mapDataOffset;
} DungeonLayout;

#endif // COMMON_H
