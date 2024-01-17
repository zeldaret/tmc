#ifndef FLAMEMANAGER_H
#define FLAMEMANAGER_H

#include "manager.h"

typedef struct {
    struct Manager base;
    u8 field_0x20[0x18];
    s16 x; // After loading this stores the tilePos.
    s16 y;
} FlameManager;

#endif // FLAMEMANAGER_H
