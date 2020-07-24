#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "link.h"

typedef struct {
    u8 filler[8];
    u8 field_0x8;
    u8 field_0x9[0x34];
    u32 windcrests;
    u8 field_0x44[0x64];
    Stats stats;
} struct_02002A40;

extern struct_02002A40 gUnk_02002A40;

typedef struct {
    u8 field_0x0[8];
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa[6];
    union SplitWord field_0x10;
    u8 field_0x14[0xc];
    u16 field_0x20;
    u16 field_0x22;
    u8 field_0x24[0x14];
    u8 field_0x38;
    u8 field_0x39;
    u16 field_0x3a;
    u8 field_0x3c;
    u8 filler[6];
    u16 field_0x44;
    u16 field_0x46;
    u16 field_0x48;
    u16 field_0x4a;
} struct_030010A0;

extern struct_030010A0 gUnk_030010A0;


#endif