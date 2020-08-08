#ifndef MANAGER_H
#define MANAGER_H

#include "global.h"

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
