#ifndef MAP_H
#define MAP_H

#include "screen.h"

/**
 * @page TileMap TileMap
 * @brief The map consists of tiles to create the world.
 *
 * 16x16 tiles
 * 8x8 subTiles
 *
 * tileIndex index into the tile set
 *  0 to 0x800, special tiles at 0x4000 to 0x4096
 * tilePos index into the current map
 * tileType
 * collisionData
 * 
 */

/**
 * @brief Layer of the TileMap.
 * @ingroup TileMap
 */
typedef struct {
    /*0x0000*/ BgSettings* bgSettings;
    /**
     * tileIndex for each tile on the current layer.
     */
    /*0x0004*/ u16 mapData[0x40 * 0x40];
    /**
     * Collision data for each tile on the current layer.
     * @see CollisionData
     */
    /*0x2004*/ u8 collisionData[0x40 * 0x40];
    /**
     * Copy of the map data.
     * @see mapData
     */
    /*0x3004*/ u16 mapDataOriginal[0x40 * 0x40];
    /**
     * Maps from the tileIndex to the tileType.
     * @see TileType
     */
    /*0x5004*/ u16 tileTypes[0x800];
    /**
     * Maps from a tileType to a tileIndex. Inverse of @see tileTypes.
     * @see TileType
     */
    /*0x6004*/ u16 tileIndices[0x800];
    /**
     * Maps from a tile index to the four sub tiles (with attributes) it consists of.
     * @see https://www.coranac.com/tonc/text/regbg.htm#sec-map
     */
    /*0x7004*/ u16 subTiles[0x800 * 4];
    /**
     * Some sort of special behavior for tiles? Falling into holes or jumping off walls does not work when this is all zero.
     * @see ActTile
     */
    /*0xb004*/ u8 actTiles[0x40*0x40];
} MapLayer;

extern MapLayer gMapTop;
extern MapLayer gMapBottom;

extern MapLayer* GetLayerByIndex(u32 layer);

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

typedef enum {
    LAYER_BOTTOM = 1,
    LAYER_TOP = 2,
} LayerIndex;

#endif // MAP_H
