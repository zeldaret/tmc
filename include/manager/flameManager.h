#ifndef FLAMEMANAGER_H
#define FLAMEMANAGER_H

#include "manager.h"

typedef struct {
    struct Manager base;
    u8 field_0x20[0x18];
    s16 field_0x38;
    s16 field_0x3a;
} FlameManager;

#endif // FLAMEMANAGER_H
