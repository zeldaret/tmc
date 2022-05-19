#ifndef ROLLINGBARRELMANAGER_H
#define ROLLINGBARRELMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    s32 unk_20;
    union SplitWord unk_24;
    u32 unk_28;
    u32 unk_2c;
    u8 unk_30[0x10];
} RollingBarrelManager;

typedef struct {
    u16 unk_0;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
} struct_08108228;

#endif // ROLLINGBARRELMANAGER_H
