#ifndef BRIDGEMANAGER_H
#define BRIDGEMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 unk_20[0x08];
    u16 unk_28;
    u16 unk_2a;
    u16 unk_2c;
    u16 unk_2e;
    u16 unk_30;
    u16 unk_32;
    u8 unk_34[0x04];
    s16 x;
    s16 y;
    u16 unk_3c;
    u16 flags;
} BridgeManager;

#endif // BRIDGEMANAGER_H
