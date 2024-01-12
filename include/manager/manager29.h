#ifndef MANAGER29_H
#define MANAGER29_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 unk_20[0x8];
    u16* unk_28;
    u16* unk_2c;
    u8 filler[0x4];
    u8 layer;
    u8 unk_35;
    u8 unk_36;
    u8 unk_37;
    s16 unk_38;
    u16 unk_3a;
    u16 unk_3c;
    u16 unk_3e;
} Manager29;

#endif // MANAGER29_H
