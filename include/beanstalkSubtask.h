#ifndef BEANSTALKSUBTASK_H
#define BEANSTALKSUBTASK_H

#include "global.h"
#include "map.h"

/*
tiles 0x4000 and above create an entry here
*/
#define MAX_SPECIAL_TILES 0x100
typedef struct {
    u16 metaTilePosAndLayer; // (layer << 12) | position
    u16 metaTileIndex;
} SpecialTileEntry;
extern SpecialTileEntry gMetaTilesForSpecialTiles[MAX_SPECIAL_TILES];

typedef struct {
    u16 collision;
    u16 tileIndex;
} struct_080B44D0;

void LoadMapData(MapDataDefinition* dataDefinition);

/**
 * Renders a metaTleMap with 16x16 meta tiles into a tilemap with 8x8 tiles.
 *
 * Takes into account the special meta tiles >= 0x4000 using GetMetaTileSetIndexForSpecialTile.
 */
void RenderMapLayerToTileMap(u16* tileMap, MapLayer* mapLayer);

#endif // BEANSTALKSUBTASK_H
