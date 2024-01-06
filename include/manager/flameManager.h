#ifndef FLAMEMANAGER_H
#define FLAMEMANAGER_H

#include "manager.h"

typedef struct {
    struct Manager base;
    u8 field_0x20[0x18];
    s16 tilePos; // x
    s16 field_0x3a;  // y
} FlameManager;

#endif // FLAMEMANAGER_H
