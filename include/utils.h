typedef struct {
    u16 heldKeys;
    u16 newKeys;
    u16 unk4;
    u8 unk6;
    u8 unk7;
} Input;

extern Input gInput;

void MemFill16(u32 value, void* dest, u32 size);
void MemFill32(u32 value, void* dest, u32 size);
void MemClear(void* dest, u32 size);
void MemCopy(const void* src, void* dest, u32 size);

void ReadKeyInput(void);

void LoadPalettes(const u8*, int, int);
void LoadPaletteGroup(u32 group);
