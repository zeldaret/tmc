#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "link.h"

typedef struct {
    char header[4];
    u8 saveFile;
    u8 field_0x5;
    u8 brightnessPref;
    u8 gameLanguage;
} struct_02000000;

extern struct_02000000 gUnk_02000000;

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

typedef struct {
    /*0x00*/ u8 unk0;
    /*0x01*/ u8 filler1[0x5];
    /*0x06*/ u8 unk6;
    /*0x07*/ u8 unk7;
    /*0x08*/ s8 unk8[0x10]; // ?? unclear know how large this is
} struct_02019EE0;

extern struct_02019EE0 gUnk_02019EE0;

#endif