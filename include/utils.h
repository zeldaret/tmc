typedef struct {
    u16 heldKeys;
    u16 newKeys;
    u16 unk4;
    u8 unk6;
    u8 unk7;
} Input;

extern Input gInput;

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

void LoadPalettes(const u8*, int, int);
void LoadPaletteGroup(u32 group);

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
 * @param updateHUD bool32 Request refresh of HUD layer (bg 0)
 */
void DispReset(bool32 updateHUD);
