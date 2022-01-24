#ifndef COLOR_H
#define COLOR_H

#include "global.h"

typedef struct {
    u8 _0;
    u8 _1;
    u16 _2;
} Palette;
extern Palette gPaletteList[];

void ResetPaletteTable(u32 a1);
void sub_0801D000(u32 a1);
u32 LoadObjPalette(struct Entity_*, u32);
void UnloadOBJPalette(struct Entity_* entity);
void sub_0801D244(u32);
void sub_0801D28C(struct Entity_* entity, u32 palette);
void ChangeObjPalette(struct Entity_* entity, u32 palette);
s32 FindPalette(u32 a1);

#endif // COLOR_H
