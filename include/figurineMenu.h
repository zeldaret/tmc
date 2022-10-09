#ifndef FIGURINEMENU_H
#define FIGURINEMENU_H

#include "global.h"

typedef struct {
    u8 paletteGroup;
    u8 gfxGroup;
    u16 unk2;
    u16 bg1Control;
    u16 bg2Control;
} struct_08128AD8;

enum enum_080FC3E4 {
    // CheckLocalFlagByBank
    UNK_6_8 = 8,
    UNK_6_40 = 0x40, // 64
    // CheckKinstoneFused
    UNK_6_10 = 0x10, // 16
    // CheckKinstoneFused multiple with unk_4 as index
    UNK_6_20 = 0x20, // 32
};

typedef struct {
    u32 bank;
    u16 flag;
    u8 unk_6; /**< @see enum_080FC3E4 */
    u8 type;  /**< Type of the OBJECT_A2 that is spawned. */
} struct_080FC3E4;
extern const struct_080FC3E4 gUnk_080FC3E4[];

#endif // FIGURINEMENU_H
