#ifndef STEAMOVERLAYMANAGER_H
#define STEAMOVERLAYMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u16 unk_20;
    u8 unk_22;
    u8 unk_23[1];
    u8 unk_24;
    u8 unk_25[0x1b];
} SteamOverlayManager;

#endif // STEAMOVERLAYMANAGER_H
