#ifndef BOMBABLEWALLMANAGER_H
#define BOMBABLEWALLMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 field_0x20[0x15];
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    s16 x;
    u16 y;
    u16 tile;
    u16 field_0x3e;
} BombableWallManager;

#endif // BOMBABLEWALLMANAGER_H
