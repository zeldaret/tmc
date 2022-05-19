#ifndef ENTITYSPAWNMANAGER_H
#define ENTITYSPAWNMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 unk_20[0x18];
    s16 sound;
    s16 spawnTimer; /**< Timer until the entity list is loaded. */
    u16 unk_3c;
    u16 flag;
} EntitySpawnManager;

#endif // ENTITYSPAWNMANAGER_H
