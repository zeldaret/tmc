#ifndef MANAGER_H
#define MANAGER_H

#include "global.h"

typedef struct {
    u8 unk_00[0x0a];
    u8 unk_0a;
    u8 unk_0b;
    u8 unk_0c;
    u8 unk_0d;
    u8 unk_0e;
    u8 unk_0f[0x11];
    u16 unk_20;
    u16 unk_22;
    u16 unk_24;
    u16 unk_26;
    u8 unk_28[0x0D];
    u8 unk_35;
    u16 unk_36;
    u8 unk_38;
    u8 unk_39;
    u8 unk_3a;
    u8 unk_3b;
    u16 unk_3c;
    u16 unk_3e;
} Manager;

typedef struct {
    u16 field_0x00;
    u16 field_0x02;
    u8 field_0x04;
    u8 field_0x05;
    u8 field_0x06;
    union {
        u8 all;
        struct {
            u8 layer : 2;
            u8 unk1 : 2;
            u8 unk2 : 1;
            u8 unk3 : 3;
        } PACKED b;
    } PACKED field_0x07;
} UnkManagerHelperStruct;

#endif
