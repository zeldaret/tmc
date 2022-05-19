#ifndef WEATHERCHANGEMANAGER_H
#define WEATHERCHANGEMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u8 unk_20;
    u8 unk_21;
    u8 unk_22;
    u8 unk_23;
    u8 filler_0x24[0x1C];
} WeatherChangeManager;

#endif // WEATHERCHANGEMANAGER_H
