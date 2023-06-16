#ifndef MAP_H
#define MAP_H

#include "global.h"
#include "screen.h"

typedef struct {
    /*0x0000*/ BgSettings* bgSettings;
    /*0x0004*/ u16 mapData[0x40 * 0x40];
    /**< MetaTileIndex for each tile on the current layer. */ // tilemap data? <-- gMapDataTop / gMapDataBottom
    /*0x2004*/ u8 collisionData[0x40 * 0x40];                 // more tilemap data? <-- gUnk_0200D654 / gUnk_02027EB4
    /*0x3004*/ u16 mapDataClone[0x40 * 0x40];                 // more tilemap data? <-- gUnk_0200E654 / gUnk_02028EB4
                                                              // Tileset
    /*0x5004*/ u16 metatileTypes[0x800];
    /**< Maps from the MetaTileIndex to the MetaTileType. */ // gMetatileTypesTop, gMetatileTypesBottom
    /*0x6004*/ u16 unkData2[0x800];
    /**< Maps from a MetaTileType to a MetaTileIndex. */ // gUnk_02011654,gUnk_0202BEB4 // TODO metatile index for
                                                         // the metatile type??
    /*0x7004*/ u16 metatiles[0x800 * 4];
    /**< Mapping from a metatile to the four tile_attrs it consists of.*/ // gMetatilesTop, gMetatilesBottom

    /*
    Temporarily call this vvv
    VVV
    vvv
    Vvv

    */
    /*0xb004*/ u8 vvv[0x40*0x40]; /**< Some sort of special behavior for tiles? Falling into holes or jumping off walls does not work when this is all zero.*/     // gUnk_02016654, gUnk_02030EB4
    // TODO check with debugger what accesses this
    // 0x637
    // 0x2030eb4 + 0x637
    // 0x20314eb
    // e.g. GetVvvAtMetaTilePos accesses this
    // TODO check whether this also affects sound played when walking?
    /*
    0x10: water
    0x12: ice
    0x57: cloning pad
    */
} LayerStruct;

extern LayerStruct gMapTop;
extern LayerStruct gMapBottom;

// Rendered tilemaps https://www.coranac.com/tonc/text/regbg.htm#sec-map
// extern u16 gMapDataTopSpecial[0x4000];
// extern u16 gMapDataBottomSpecial[0x4000];

LayerStruct* GetLayerByIndex(u32);

/*
Definition where some map data is found and where it should be copied to.
Defined using the map_data asm macro, e.g. in map_headers.s
*/
typedef struct {
    u32 src;
    void* dest;
    u32 size;
} MapDataDefinition;

// There is another map data definition following.
#define MAP_MULTIPLE 0x80000000
// The src is compressed.
#define MAP_COMPRESSED 0x80000000

#endif // MAP_H
