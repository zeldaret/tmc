#ifndef BEANSTALKSUBTASK_H
#define BEANSTALKSUBTASK_H

#include "global.h"
#include "map.h"

/*
tiles 0x4000 and above create an entry here
*/
#define MAX_SPECIAL_TILES 0x100
typedef struct {
    u16 tilePosAndLayer; // (layer << 12) | position
    u16 tileIndex;
} SpecialTileEntry;
extern SpecialTileEntry gTilesForSpecialTiles[MAX_SPECIAL_TILES];

typedef struct {
    u16 collision;
    u16 tileIndex;
} struct_080B44D0;

void LoadMapData(MapDataDefinition* dataDefinition);

/**
 * Renders a tileMap with 16x16 tiles into a subTileMap with 8x8 tiles.
 *
 * Takes into account the special tile indicess >= 0x4000 using GetTileSetIndexForSpecialTile.
 */
void RenderMapLayerToSubTileMap(u16* tileMap, MapLayer* mapLayer);

#endif // BEANSTALKSUBTASK_H
