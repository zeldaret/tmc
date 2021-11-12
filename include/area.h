#ifndef AREA_H
#define AREA_H

#include "global.h"

typedef struct {
    u8 areaMetadata;
    u8 locationIndex;
    u8 unk;
    u8 regret;
    u16 localFlagOffset;
    u8 filler[4];
    u16 unk_0a;
    u8 filler3[4];
    u16 field_0x10;
    u16 curPortalX;
    u16 curPortalY;
    u8 curPortalExitDirection;
    u8 curPortalType;
    u8 field_0x18;
    // u8 filler3[7];
    bool8 playShrinkSeq;
    u8 unk1A;
    u8 filler2[13];
    u8 field_0x28;
    u8 filler4[0x833];
    void*** field_0x85c;
    u32 musicIndex;
    u32 pMusicIndex;
    u8 filler5[0x20];
    u32 unk2;
    u32 unk3;
    u32 unk4;
} Area;
static_assert(sizeof(Area) == 0x894);

extern Area gArea;

#endif
