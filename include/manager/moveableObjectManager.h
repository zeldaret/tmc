#ifndef MOVEABLEOBJECTMANAGER_H
#define MOVEABLEOBJECTMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 unk_20[0x12];
    u16 unk_32;
    u8 unk_34[2];
    u8 unk_36;
    u8 unk_37;
    u16 unk_38;
    u16 unk_3a;
    u16 unk_3c;
    u16 flags;
} MoveableObjectManager;

#endif // MOVEABLEOBJECTMANAGER_H
