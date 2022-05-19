#ifndef CLOUDSTAIRCASETRANSITIONMANAGER_H
#define CLOUDSTAIRCASETRANSITIONMANAGER_H

#include "manager.h"

typedef struct {
    struct Manager base;
    u8 field_0x20[0x16];
    u8 field_0x36;
    u8 field_0x37;
    s16 x;
    s16 y;
    u16 field_0x3c;
    u16 field_0x3e;
} CloudStaircaseTransitionManager;

#endif // CLOUDSTAIRCASETRANSITIONMANAGER_H
