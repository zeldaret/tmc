#ifndef AREA_H
#define AREA_H

#include "global.h"

typedef struct {
    u8 areaMetadata;
    u32 locationIndex;
    u8 unk;
    u16 localFlagOffset;
    u8 filler[19];
    u8 fadeOut;
    u8 filler[14];
} Area;

extern Area gArea;

#endif