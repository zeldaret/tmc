#include "area.h"
#include "room.h"
#include "roomid.h"

// clang-format off

const ScreenTransitionData gUnk_0813AA54 = { 1, { 0, 0, 0, 0 }, 0x98, 0xa8, 0, AREA_CAVE_OF_FLAMES, ROOM_CAVE_OF_FLAMES_MAIN_CART, 1, 2, 0, 0 };
const ScreenTransitionData gUnk_0813AA68 = { 1, { 0, 0, 0, 0 }, 0xa8, 0xb8, 0, AREA_DEEPWOOD_SHRINE, ROOM_DEEPWOOD_SHRINE_ENTRANCE, 1, 2, 0, 0 };
const ScreenTransitionData gUnk_0813AA7C = { 1, { 0, 0, 0, 0 }, 0x98, 0xa8, 0, AREA_CAVE_OF_FLAMES, ROOM_CAVE_OF_FLAMES_MAIN_CART, 1, 2, 0, 0 };
const ScreenTransitionData gUnk_0813AA90 = { 1, { 0, 0, 0, 0 }, 0x78, 0xa8, 0, AREA_FORTRESS_OF_WINDS, ROOM_FORTRESS_OF_WINDS_CENTER_STAIRS_1F, 1, 2, 0, 0 };
const ScreenTransitionData gUnk_0813AAA4 = { 1, { 0, 0, 0, 0 }, 0x108, 0xf8, 0, AREA_TEMPLE_OF_DROPLETS, ROOM_TEMPLE_OF_DROPLETS_ENTRANCE, 1, 2, 0, 0 };
const ScreenTransitionData gUnk_0813AAB8 = { 1, { 0, 0, 0, 0 }, 0x238, 0x58, 0, AREA_PALACE_OF_WINDS, ROOM_PALACE_OF_WINDS_ENTRANCE_ROOM, 1, 2, 6, 0 };
const ScreenTransitionData gUnk_0813AACC = { 1, { 0, 0, 0, 0 }, 0x198, 0x1d8, 0, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_1F_ENTRANCE, 1, 2, 0, 0 };
const ScreenTransitionData gUnk_0813AAE0 = { 1, { 0, 0, 0, 0 }, 0x88, 0x78, 0, AREA_ROYAL_CRYPT, ROOM_ROYAL_CRYPT_ENTRANCE, 1, 2, 0, 0 };
const ScreenTransitionData gUnk_0813AB08 = { 1, { 0, 0, 0, 0 }, 0x98, 0xa8, 0, AREA_CAVE_OF_FLAMES, ROOM_CAVE_OF_FLAMES_MAIN_CART, 1, 2, 0, 0 };
const ScreenTransitionData gUnk_0813AAF4 = { 1, { 0, 0, 0, 0 }, 0x98, 0xa8, 0, AREA_CAVE_OF_FLAMES, ROOM_CAVE_OF_FLAMES_MAIN_CART, 1, 2, 0, 0 };

const ScreenTransitionData* const gWallMasterScreenTransitions[] = {
    &gUnk_0813AA54, &gUnk_0813AA68, &gUnk_0813AA7C, &gUnk_0813AA90, &gUnk_0813AAA4,
    &gUnk_0813AAB8, &gUnk_0813AACC, &gUnk_0813AAE0, &gUnk_0813AB08, &gUnk_0813AAF4,
};

const ScreenTransitionData unusedScreenTransition = { 1, { 0, 0, 0, 0 }, 0x48, 0x68, 0, AREA_CASTLE_GARDEN, ROOM_CASTLE_GARDEN_MAIN, 1, 0, 2, 0 };

const ScreenTransitionData gUnk_0813AB58 = { 1, { 0, 0, 0, 0 }, 0x108, 0xc8, 0, AREA_TEMPLE_OF_DROPLETS, ROOM_TEMPLE_OF_DROPLETS_ENTRANCE, 2, 2, 4, 0 };
const ScreenTransitionData gUnk_0813AB6C = { 1, { 0, 0, 0, 0 }, 0x198, 0x68, 0, AREA_RUINS, ROOM_RUINS_FORTRESS_ENTRANCE, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813AB80 = { 1, { 0, 0, 0, 0 }, 0xc8, 0x48, 0, AREA_HYRULE_CASTLE, ROOM_HYRULE_CASTLE_4, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813AB94 = { 1, { 0, 0, 0, 0 }, 0xb8, 0x5c, 0, AREA_FORTRESS_OF_WINDS, ROOM_FORTRESS_OF_WINDS_MAZAAL, 1, 1, 4, 0 };
const ScreenTransitionData gUnk_0813ABA8 = { 1, { 0, 0, 0, 0 }, 0xb8, 0x78, 0, AREA_FORTRESS_OF_WINDS, ROOM_FORTRESS_OF_WINDS_MAZAAL, 1, 0, 0, 0 };
const ScreenTransitionData gUnk_0813ABBC = { 1, { 0, 0, 0, 0 }, 0xf0, 0xbc, 0, AREA_ROYAL_VALLEY, ROOM_ROYAL_VALLEY_MAIN, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813ABD0 = { 1, { 0, 0, 0, 0 }, 0x1d8, 0xd8, 0, AREA_PALACE_OF_WINDS, ROOM_PALACE_OF_WINDS_GYORG_TORNADO, 2, 2, 4, 0 };
const ScreenTransitionData gUnk_0813ABE4 = { 1, { 0, 0, 0, 0 }, 0x198, 0x168, 0, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_1F_ENTRANCE, 1, 0, 4, 0 };
#if defined(EU) || defined(JP)
const ScreenTransitionData gUnk_0813ABF8 = { 1, { 0, 0, 0, 0 }, 0x128, 0x1a8, 0, AREA_CASTLE_GARDEN, ROOM_CASTLE_GARDEN_MAIN, 1, 0, 0, 0 };
#else
const ScreenTransitionData gUnk_0813ABF8 = { 1, { 0, 0, 0, 0 }, 0x128, 0x1b0, 0, AREA_CASTLE_GARDEN, ROOM_CASTLE_GARDEN_MAIN, 1, 0, 0, 0 };
#endif
const ScreenTransitionData gUnk_0813AC0C = { 1, { 0, 0, 0, 0 }, 0xb0, 0xd8, 0, AREA_VAATI_2, ROOM_VAATI_2_0, 2, 0, 0, 0 };
const ScreenTransitionData gUnk_0813AC20 = { 1, { 0, 0, 0, 0 }, 0xa8, 0x78, 0, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_3F_TRIPLE_DARKNUT, 1, 0, 0, 0 };
const ScreenTransitionData gUnk_0813AC34 = { 1, { 0, 0, 0, 0 }, 0xb0, 0x88, 0, AREA_VAATI_3, ROOM_VAATI_3_0, 1, 0, 0, 0 };
const ScreenTransitionData gUnk_0813AC48 = { 1, { 0, 0, 0, 0 }, 0xb0, 0x88, 0, AREA_VAATI_3, ROOM_VAATI_3_0, 1, 1, 4, 0 };
const ScreenTransitionData gUnk_0813AC5C = { 1, { 0, 0, 0, 0 }, 0xa8, 0x88, 0, AREA_DARK_HYRULE_CASTLE_OUTSIDE, ROOM_DARK_HYRULE_CASTLE_OUTSIDE_GARDEN, 1, 0, 6, 0 };
const ScreenTransitionData gUnk_0813AC70 = { 1, { 0, 0, 0, 0 }, 0x0, 0x0, 0, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_1F_THRONE_ROOM, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813AC84 = { 1, { 0, 0, 0, 0 }, 0x0, 0x0, 0, AREA_HYRULE_CASTLE, ROOM_HYRULE_CASTLE_2, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813AC98 = { 1, { 0, 0, 0, 0 }, 0x0, 0x0, 0, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_1F_ENTRANCE, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813ACAC = { 1, { 0, 0, 0, 0 }, 0x0, 0x0, 0, AREA_HYRULE_CASTLE, ROOM_HYRULE_CASTLE_0, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813ACC0 = { 1, { 0, 0, 0, 0 }, 0x0, 0x0, 0, AREA_HYRULE_CASTLE, ROOM_HYRULE_CASTLE_1, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813ACD4 = { 1, { 0, 0, 0, 0 }, 0x0, 0x0, 0, AREA_MINISH_WOODS, ROOM_MINISH_WOODS_MAIN, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813ACE8 = { 1, { 0, 0, 0, 0 }, 0x0, 0x0, 0, AREA_MT_CRENEL, ROOM_MT_CRENEL_TOP, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813ACFC = { 1, { 0, 0, 0, 0 }, 0xa8, 0x88, 0, AREA_SANCTUARY_ENTRANCE, ROOM_SANCTUARY_ENTRANCE_MAIN, 1, 0, 6, 0 };
const ScreenTransitionData gUnk_0813AD10 = { 1, { 0, 0, 0, 0 }, 0x50, 0x38, 0, AREA_HOUSE_INTERIORS_1, ROOM_HOUSE_INTERIORS_1_INN_WEST_ROOM, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813AD24 = { 1, { 0, 0, 0, 0 }, 0x50, 0x38, 0, AREA_HOUSE_INTERIORS_1, ROOM_HOUSE_INTERIORS_1_INN_MIDDLE_ROOM, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813AD38 = { 1, { 0, 0, 0, 0 }, 0x60, 0x38, 0, AREA_HOUSE_INTERIORS_1, ROOM_HOUSE_INTERIORS_1_INN_EAST_ROOM, 1, 0, 4, 0 };
const ScreenTransitionData gUnk_0813AD4C = { 1, { 0, 0, 0, 0 }, 0x78, 0x68, 0, AREA_HOUSE_INTERIORS_3, ROOM_HOUSE_INTERIORS_3_BORLOV_ENTRANCE, 1, 0, 0, 0 };
const ScreenTransitionData gUnk_0813AD60 = { 1, { 0, 0, 0, 0 }, 0x98, 0x88, 0, AREA_SIMONS_SIMULATION, ROOM_SIMONS_SIMULATION_0, 1, 2, 4, 0 };
const ScreenTransitionData gUnk_0813AD74 = { 1, { 0, 0, 0, 0 }, 0x50, 0x48, 0, AREA_HOUSE_INTERIORS_3, ROOM_HOUSE_INTERIORS_3_SIMON, 1, 0, 4, 0 };

const ScreenTransitionData gUnk_0813AD88[] = {
    { 1, { 0, 0, 0, 0 }, 0x128, 0x188, 0, AREA_LAKE_HYLIA, ROOM_LAKE_HYLIA_MAIN, 1, 9, 4, 0},
    { 1, { 0, 0, 0, 0 }, 0x190, 0x1c0, 0, AREA_CLOUD_TOPS, ROOM_CLOUD_TOPS_CLOUD_BOTTOMS, 1, 10, 4, 0},
    { 1, { 0, 0, 0, 0 }, 0x1e8, 0x1f0, 0, AREA_CLOUD_TOPS, ROOM_CLOUD_TOPS_CLOUD_TOPS, 1, 10, 4, 0},
    { 1, { 0, 0, 0, 0 }, 0x268, 0x58, 0, AREA_PALACE_OF_WINDS, ROOM_PALACE_OF_WINDS_ENTRANCE_ROOM, 1, 10, 6, 0},
#if defined(EU)
    { 1, { 0, 0, 0, 0 }, 0x200, 0x350, 0, AREA_PALACE_OF_WINDS_BOSS, ROOM_PALACE_OF_WINDS_BOSS_0, 2, 10, 4, 0},
#else
    { 1, { 0, 0, 0, 0 }, 0x200, 0x300, 0, AREA_PALACE_OF_WINDS_BOSS, ROOM_PALACE_OF_WINDS_BOSS_0, 2, 10, 4, 0},
#endif
};

const ScreenTransitionData gUnk_0813ADEC[] = {
    { 1, { 0, 0, 0, 0 }, 0xb8, 0x58, 0, AREA_WIND_TRIBE_TOWER, ROOM_WIND_TRIBE_TOWER_ENTRANCE, 1, 0, 4, 0},
    { 1, { 0, 0, 0, 0 }, 0x248, 0x108, 0, AREA_HYRULE_FIELD, ROOM_HYRULE_FIELD_SOUTH_HYRULE_FIELD, 1, 0, 4, 0},
};

// clang-format on
