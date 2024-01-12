#ifndef TILEMAP_H
#define TILEMAP_H

#include "global.h"

// gMapDataTopSpecial and gMapDataBottomSpecial are tileMaps of 8x8 pixels. But they are also reused for other data in
// other parts of the game.

// Rendered tileMaps https://www.coranac.com/tonc/text/regbg.htm#sec-map
extern u16 gMapDataTopSpecial[0x4000];
extern u16 gMapDataBottomSpecial[0x4000];

#endif // TILEMAP_H
