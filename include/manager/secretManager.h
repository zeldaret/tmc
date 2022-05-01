#ifndef SECRETMANAGER_H
#define SECRETMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 field_0x20[0x18];
    s16 field_0x38;
    u8 field_0x3a;
    u8 field_0x3b;
    u16 field_0x3c;
    u16 field_0x3e;
} SecretManager;

#endif // SECRETMANAGER_H
