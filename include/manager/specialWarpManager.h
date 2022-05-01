#ifndef SPECIALWARPMANAGER_H
#define SPECIALWARPMANAGER_H

#include "manager.h"

typedef struct {
    u16 posX;
    u16 posY;
    u8 width;
    u8 height;
    u8 roomProperty;
    union {
        u8 all;
        struct {
            u8 layer : 2;
            u8 unk1 : 2;
            u8 unk2 : 1;
            u8 unk3 : 3;
        } PACKED b;
    } PACKED unk_07;
} SpecialWarpManagerWarpData;

typedef struct {
    Manager base;
    SpecialWarpManagerWarpData* warpList;
} SpecialWarpManager;

#endif // SPECIALWARPMANAGER_H
