#ifndef TEMPLEOFDROPLETSMANAGER_H
#define TEMPLEOFDROPLETSMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 unk_20;
    u8 unk_21;
    u8 unk_22;
    u8 unk_23; // used
    u16 unk_24;
    u16 unk_26;
    void* unk_28;
    u16 unk_2c;
    u8 unk_2e[0x6];
    s16 unk_34;
    s16 unk_36;
    s16 unk_38;
    s16 unk_3a;
    u16 unk_3c;
    u16 unk_3e; // used
} TempleOfDropletsManager;

#endif // TEMPLEOFDROPLETSMANAGER_H
