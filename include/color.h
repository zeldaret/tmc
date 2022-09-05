#ifndef COLOR_H
#define COLOR_H

#include "global.h"

typedef struct {
    u8 _0_0 : 4;
    u8 _0_4 : 4;
    u8 _1;
    u16 objPaletteId;
} Palette;
extern Palette gPaletteList[0x10];

typedef struct {
    struct {
        u8 unk0 : 1;
        u8 unk1 : 1;
        u8 unk2 : 1;
        u8 unk3 : 1;
        u8 unk4 : 4;
    } PACKED unk_00;
    u8 unk_01;
    u16 unk_02;
    union SplitWord unk_04;
    union SplitWord unk_08;
    u32 unk_0C;
} struct_gUnk_020000C0_1;

typedef struct {
    struct_gUnk_020000C0_1 unk_00[4];
} struct_gUnk_020000C0;

static_assert(sizeof(struct_gUnk_020000C0) == 0x40);

extern struct_gUnk_020000C0 gUnk_020000C0[0x30];

void ResetPaletteTable(u32 a1);
void sub_0801D000(u32 a1);
u32 LoadObjPalette(struct Entity_*, u32);
void UnloadOBJPalette(struct Entity_* entity);
void sub_0801D244(u32);
void sub_0801D28C(struct Entity_* entity, u32 palette);
void ChangeObjPalette(struct Entity_* entity, u32 palette);
s32 FindPalette(u32 a1);

#endif // COLOR_H
