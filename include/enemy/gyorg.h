#ifndef ENEMY_GYORG_H
#define ENEMY_GYORG_H

#include "enemy.h"

typedef struct {
    Entity base;
    u8 unk_68[0x8];
    u16 unk_70;
    u8 unk_72[0x6];
    u8 unk_78;
    u8 unk_79;
    u16 unk_7a;
    u8 unk_7c;
    u8 unk_7d;
    u8 unk_7e[1];
    u8 unk_7f;
    u8 unk_80;
    u8 unk_81[1];
    u8 unk_82;
    u8 unk_83[5];
} GyorgFemaleEntity;

typedef struct {
    GenericEntity* unk_00;
    u8 unk_04[0x4];
    Entity* unk_08;
    Entity* unk_0c;
    void* unk_10;
    void* unk_14;
    void* unk_18[0x8];
    u16 unk_38;
    u16 unk_3a;
    u8 unk_3c;
} GyorgFemaleHeap;

#endif
