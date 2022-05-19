#ifndef DESTRUCTIBLETILEOBSERVEMANAGER_H
#define DESTRUCTIBLETILEOBSERVEMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
} DestructibleTileObserveManager;

typedef struct {
    u8 field_0x0;
    u8 tileLayer;
    u16 flag;
    u16 tilePos;
    u16 tileType;                     // If the tile type at tilePos, tileLayer is tileType, set the local flag.
} DestructibleTileObserveManager_unk; // TODO result of GetCurrentRoomProperty(3)?

#endif // DESTRUCTIBLETILEOBSERVEMANAGER_H
