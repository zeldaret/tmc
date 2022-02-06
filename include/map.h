#ifndef MAP_H
#define MAP_H

#include "global.h"

typedef struct {
    u16* bgControlPtr; // Points to the BgSettings.control field for the bg belonging to this layer?
    u16 _4[0x1000];    // tilemap data? <-- gMapDataTop / gMapDataBottom
    u8 _2004[0x1000];  // more tilemap data? <-- gUnk_0200D654 / gUnk_02027EB4
    u8 _3004[0x1000];  // more tilemap data? <-- gUnk_0200E654 / gUnk_02028EB4
    u8 _4004[0x1000];  // gMetatileTypesTop, gMetatileTypesBottom
    s16 _5004[0x500];  // gUnk_02011654,gUnk_0202BEB4
    // Maybe even include here gMetatilesTop, gUnk_02016654 ?
    //                         gMetatilesBottom, gUnk_02030EB4
} LayerStruct;

extern LayerStruct gMapTop;
extern LayerStruct gMapBottom;

#endif // MAP_H