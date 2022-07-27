#ifndef LIGHTRAYMANAGER_H
#define LIGHTRAYMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 gfxGroup;
    u8 unk_21;
    u8 unk_22;
    u8 unk_23;
    u8 unk_24;
    u8 unk_25[15];
    void* unk_34;
} LightRayManager;

#endif // LIGHTRAYMANAGER_H
