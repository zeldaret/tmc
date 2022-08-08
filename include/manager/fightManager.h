#ifndef FIGHTMANAGER_H
#define FIGHTMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 prevBgm;
    u8 unk_21[0x14];
    u8 unk_35;
    u8 unk_36[0x4];
    u16 unk_3a;
    u16 fightStartFlag;
    u16 fightCompletedFlag;
} FightManager;

typedef struct {
    Manager base;
    Entity* enemies[8];
} FightManagerHelper;

#endif // FIGHTMANAGER_H
