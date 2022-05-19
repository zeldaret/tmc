#ifndef HOLEMANAGER_H
#define HOLEMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    s16 unk_20;
    s16 unk_22;
    u16 unk_24;
    u16 unk_26;
    u8 unk_28[8];
    u16 unk_30;
    u16 unk_32;
    u16 unk_34;
    u16 unk_36;
    u8 unk_38[7];
    u8 unk_3f;
} HoleManager;

#endif // HOLEMANAGER_H
