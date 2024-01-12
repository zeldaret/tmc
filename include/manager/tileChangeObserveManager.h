#ifndef TILECHANGEOBSERVEMANAGER_H
#define TILECHANGEOBSERVEMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 field_0x20;
    u8 field_0x21;
    u8 field_0x22;
    u8 field_0x23;
    u8 field_0x24;
    u8 field_0x25;
    u8 field_0x26;
    u8 field_0x27;
    u16 initialTile;
    u8 field_0x2a;
    u8 field_0x2b;
    u8 field_0x2c;
    u8 field_0x2d;
    u8 field_0x2e;
    u8 field_0x2f;
    u16* observedTile;
    u8 field_0x34;
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    u16 tilePos;
    u16 field_0x3a;
    u8 field_0x3c;
    u8 field_0x3d;
    u16 flag;
} TileChangeObserveManager;

#endif // TILECHANGEOBSERVEMANAGER_H
