#ifndef LIGHTLEVELSETMANAGER_H
#define LIGHTLEVELSETMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u16 field_0x20;
    u16 field_0x22;
    u8 field_0x24[0x12];
    u8 field_0x36;
    u8 field_0x37;
    u16 field_0x38;
    u16 field_0x3a;
    u16 field_0x3c;
    u16 field_0x3e;
} LightLevelSetManager;

#endif // LIGHTLEVELSETMANAGER_H
