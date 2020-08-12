#include "global.h"

extern void LoadPalettes(const u8*, int, int);

extern u32 gUsedPalettes;
extern u16 gPaletteBuffer[][16];

typedef struct {
    u16 paletteId;
    u8 destPaletteNum;
    u8 numPalettes;
} PaletteGroup;

extern const PaletteGroup* gPaletteGroups[];
extern const u8 gGlobalPalettes[][32];

void LoadPaletteGroup(u32 arg0) {
    const PaletteGroup* paletteGroup = gPaletteGroups[arg0];
    while (1) {
        u32 destPaletteNum = paletteGroup->destPaletteNum;
        u32 numPalettes = paletteGroup->numPalettes & 0xF;
        if (numPalettes == 0) {
            numPalettes = 16;
        }
        LoadPalettes(gGlobalPalettes[paletteGroup->paletteId], destPaletteNum, numPalettes);
        if ((paletteGroup->numPalettes & 0x80) == 0) {
            break;
        }
        paletteGroup++;
    }
}

void LoadPalettes(const u8* src, int destPaletteNum, int numPalettes) {
    u16* dest;
    u32 size = numPalettes * 32;
    u32 usedPalettesMask = 1 << destPaletteNum;
    while (--numPalettes > 0) {
        usedPalettesMask |= (usedPalettesMask << 1);
    }
    gUsedPalettes |= usedPalettesMask;
    dest = gPaletteBuffer[destPaletteNum];
    DmaCopy32(3, src, dest, size);
}
