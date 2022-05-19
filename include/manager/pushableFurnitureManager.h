#ifndef PUSHABLEFURNITUREMANAGER_H
#define PUSHABLEFURNITUREMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 unk_20[0x8];
    u8 unk_28;
    u8 unk_29;
    u16 unk_2a;
} PushableFurnitureManager;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
} UnkPushableFurnitureManagerHelperStruct;

#endif // PUSHABLEFURNITUREMANAGER_H
