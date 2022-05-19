#ifndef ANGRYSTATUEMANAGER_H
#define ANGRYSTATUEMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    Entity* field_0x20[4];
    u8 field_0x30;
    u8 field_0x31;
    u8 field_0x32;
    u8 field_0x33;
    u8 field_0x34;
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    u8 field_0x38;
    u8 field_0x39;
    u8 field_0x3a;
    u8 field_0x3b;
    u8 field_0x3c;
    u8 field_0x3d;
    u16 field_0x3e;
} AngryStatueManager;

#endif // ANGRYSTATUEMANAGER_H
