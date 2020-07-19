#ifndef AREA_H
#define AREA_H

#include "global.h"


typedef struct {
    u8 areaMetadata;
    u8 locationIndex;
    u8 unk;
    u16 localFlagOffset;
    u8 filler[10];
    u16 field_0x10;
    u8 filler3[7];
    u8 fadeOut;
    u8 filler2[14];
    u8 filler4[0x835];
    u32 musicIndex;
    u32 pMusicIndex;
} Area;

extern Area gArea;

#endif