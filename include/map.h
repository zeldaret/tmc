#ifndef MAP_H
#define MAP_H

#include "global.h"
#include "screen.h"

typedef struct {
    /*0x0000*/ BgSettings* bgSettings;
    /*0x0004*/ u16 mapData[0x1000];         // tilemap data? <-- gMapDataTop / gMapDataBottom
    /*0x2004*/ u8 collisionData[0x1000];    // more tilemap data? <-- gUnk_0200D654 / gUnk_02027EB4
    /*0x3004*/ u16 mapDataOriginal[0x1000]; // more tilemap data? <-- gUnk_0200E654 / gUnk_02028EB4
    /*0x5004*/ u16 metatileTypes[0x800];    // gMetatileTypesTop, gMetatileTypesBottom
    /*0x6004*/ u16 unkData2[0x800];         // gUnk_02011654,gUnk_0202BEB4
    /*0x7004*/ u16 metatiles[0x2000];       // gMetatilesTop, gMetatilesBottom
    /*0xb004*/ u8 unkData3[0x1000];         // gUnk_02016654, gUnk_02030EB4
} LayerStruct;

extern LayerStruct gMapTop;
extern LayerStruct gMapBottom;

LayerStruct* GetTileBuffer(u32);

#endif // MAP_H
