#ifndef CAMERATARGETMANAGER_H
#define CAMERATARGETMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 field_0x20[0x15];
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    s16 field_0x38;
    s16 field_0x3a;
    u16 field_0x3c;
    u16 field_0x3e;
} CameraTargetManager;

#endif // CAMERATARGETMANAGER_H
