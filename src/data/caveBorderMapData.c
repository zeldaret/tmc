#include "assets/map_offsets.h"
#include "map.h"

/*
Tiles for the borders of the cave that are loaded during the transition.
When the player goes inside a cave during the start of the enter transition the border tileMap is loaded and at the
end the tileMap for the cave is loaded. When the player goes out of a cave during the start of the leave transition
the border tileMap is loaded and at the end the tileMap for the outside is loaded.
*/

const MapDataDefinition gCaveBorder_LakeWoods_enter_start[] = {
    { offset_gCaveBorder_LakeWoods_outside, gMapTop.mapData, MAP_COMPRESSED | 7938 },
};
const MapDataDefinition gCaveBorder_LakeWoods_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_LakeWoodsCave_Main_bottom, gMapBottom.mapData, MAP_COMPRESSED | 7938 },
    { offset_gAreaRoomMap_LakeWoodsCave_Main_top, gMapTop.mapData, MAP_COMPRESSED | 7938 },
};
const MapDataDefinition* const gCaveBorder_LakeWoods_enter[] = {
    gCaveBorder_LakeWoods_enter_start,
    gCaveBorder_LakeWoods_enter_end,
};

const MapDataDefinition gCaveBorder_LakeWoods_leave_start[] = {
    { offset_gCaveBorder_LakeWoods_inside, gMapTop.mapData, MAP_COMPRESSED | 7938 },
};
const MapDataDefinition gCaveBorder_LakeWoods_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_MinishWoods_Main_bottom, gMapBottom.mapData, MAP_COMPRESSED | 7938 },
    { offset_gAreaRoomMap_MinishWoods_Main_top, gMapTop.mapData, MAP_COMPRESSED | 7938 },
};
const MapDataDefinition* const gCaveBorder_LakeWoods_leave[] = {
    gCaveBorder_LakeWoods_leave_start,
    gCaveBorder_LakeWoods_leave_end,
};

const MapDataDefinition gCaveBorder_HyruleTown_enter_start[] = {
    { offset_gCaveBorder_HyruleTown_outside, gMapTop.mapData, MAP_COMPRESSED | 7560 },
};
const MapDataDefinition gCaveBorder_HyruleTown_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_HyruleDigCaves_Town_bottom, gMapBottom.mapData, MAP_COMPRESSED | 7560 },
    { offset_gAreaRoomMap_HyruleDigCaves_Town_top, gMapTop.mapData, MAP_COMPRESSED | 7560 },
};
const MapDataDefinition* const gCaveBorder_HyruleTown_enter[] = {
    gCaveBorder_HyruleTown_enter_start,
    gCaveBorder_HyruleTown_enter_end,
};

const MapDataDefinition gCaveBorder_HyruleTown_leave_start[] = {
    { offset_gCaveBorder_HyruleTown_inside, gMapTop.mapData, MAP_COMPRESSED | 7560 },
};
const MapDataDefinition gCaveBorder_HyruleTown_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_HyruleTown_Main_bottom, gMapBottom.mapData, MAP_COMPRESSED | 7560 },
    { offset_gAreaRoomMap_HyruleTown_Main_top, gMapTop.mapData, MAP_COMPRESSED | 7560 },
};
const MapDataDefinition* const gCaveBorder_HyruleTown_leave[] = {
    gCaveBorder_HyruleTown_leave_start,
    gCaveBorder_HyruleTown_leave_end,
};

const MapDataDefinition gCaveBorder_EasternHills_enter_start[] = {
    { offset_gCaveBorder_EasternHills_outside, gMapTop.mapData, MAP_COMPRESSED | 2040 },
};
const MapDataDefinition gCaveBorder_EasternHills_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_DigCaves_EasternHills_bottom, gMapBottom.mapData, MAP_COMPRESSED | 2040 },
    { offset_gAreaRoomMap_DigCaves_EasternHills_top, gMapTop.mapData, MAP_COMPRESSED | 2040 },
};
const MapDataDefinition* const gCaveBorder_EasternHills_enter[] = {
    gCaveBorder_EasternHills_enter_start,
    gCaveBorder_EasternHills_enter_end,
};

const MapDataDefinition gCaveBorder_EasternHills_leave_start[] = {
    { offset_gCaveBorder_EasternHills_inside, gMapTop.mapData, MAP_COMPRESSED | 2040 },
};
const MapDataDefinition gCaveBorder_EasternHills_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_HyruleField_EasternHillsNorth_bottom, gMapBottom.mapData,
      MAP_COMPRESSED | 2040 },
    { offset_gAreaRoomMap_HyruleField_EasternHillsNorth_top, gMapTop.mapData, MAP_COMPRESSED | 2040 },
};
const MapDataDefinition* const gCaveBorder_EasternHills_leave[] = {
    gCaveBorder_EasternHills_leave_start,
    gCaveBorder_EasternHills_leave_end,
};

const MapDataDefinition gCaveBorder_Crenel_enter_start[] = {
    { offset_gCaveBorder_Crenel_outside, gMapTop.mapData, MAP_COMPRESSED | 1824 },
};
const MapDataDefinition gCaveBorder_Crenel_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_CrenelDigCave_0_bottom, gMapBottom.mapData, MAP_COMPRESSED | 1984 },
    { offset_gAreaRoomMap_CrenelDigCave_0_top, gMapTop.mapData, MAP_COMPRESSED | 1984 },
};
const MapDataDefinition* const gCaveBorder_Crenel_enter[] = {
    gCaveBorder_Crenel_enter_start,
    gCaveBorder_Crenel_enter_end,
};

const MapDataDefinition gCaveBorder_Crenel_leave_start[] = {
    { offset_gCaveBorder_Crenel_inside, gMapTop.mapData, MAP_COMPRESSED | 1984 },
};
const MapDataDefinition gCaveBorder_Crenel_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_MtCrenel_WallClimb_bottom, gMapBottom.mapData, MAP_COMPRESSED | 1824 },
    { offset_gAreaRoomMap_MtCrenel_WallClimb_top, gMapTop.mapData, MAP_COMPRESSED | 1824 },
};
const MapDataDefinition* const gCaveBorder_Crenel_leave[] = {
    gCaveBorder_Crenel_leave_start,
    gCaveBorder_Crenel_leave_end,
};

const MapDataDefinition gCaveBorder_VeilFalls_enter_start[] = {
    { offset_gCaveBorder_VeilFalls_outside, gMapTop.mapData, MAP_COMPRESSED | 3780 },
};
const MapDataDefinition gCaveBorder_VeilFalls_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_VeilFallsDigCave_0_bottom, gMapBottom.mapData, MAP_COMPRESSED | 3780 },
    { offset_gAreaRoomMap_VeilFallsDigCave_0_top, gMapTop.mapData, MAP_COMPRESSED | 3780 },
};
const MapDataDefinition* const gCaveBorder_VeilFalls_enter[] = {
    gCaveBorder_VeilFalls_enter_start,
    gCaveBorder_VeilFalls_enter_end,
};

const MapDataDefinition gCaveBorder_VeilFalls_leave_start[] = {
    { offset_gCaveBorder_VeilFalls_inside, gMapTop.mapData, MAP_COMPRESSED | 3780 },
};
const MapDataDefinition gCaveBorder_VeilFalls_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_VeilFalls_Main_bottom, gMapBottom.mapData, MAP_COMPRESSED | 3780 },
    { offset_gAreaRoomMap_VeilFalls_Main_top, gMapTop.mapData, MAP_COMPRESSED | 3780 },
};
const MapDataDefinition* const gCaveBorder_VeilFalls_leave[] = {
    gCaveBorder_VeilFalls_leave_start,
    gCaveBorder_VeilFalls_leave_end,
};

const MapDataDefinition gCaveBorder_TrilbyHighlands_enter_start[] = {
    { offset_gCaveBorder_TrilbyHighlands_outside, gMapTop.mapData, MAP_COMPRESSED | 3600 },
};
const MapDataDefinition gCaveBorder_TrilbyHighlands_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_DigCaves_TrilbyHighlands_bottom, gMapBottom.mapData, MAP_COMPRESSED | 3600 },
    { offset_gAreaRoomMap_DigCaves_TrilbyHighlands_top, gMapTop.mapData, MAP_COMPRESSED | 3600 },
};
const MapDataDefinition* const gCaveBorder_TrilbyHighlands_enter[] = {
    gCaveBorder_TrilbyHighlands_enter_start,
    gCaveBorder_TrilbyHighlands_enter_end,
};

const MapDataDefinition gCaveBorder_TrilbyHighlands_leave_start[] = {
    { offset_gCaveBorder_TrilbyHighlands_inside, gMapTop.mapData, MAP_COMPRESSED | 3600 },
};
const MapDataDefinition gCaveBorder_TrilbyHighlands_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_HyruleField_TrilbyHighlands_bottom, gMapBottom.mapData,
      MAP_COMPRESSED | 3600 },
    { offset_gAreaRoomMap_HyruleField_TrilbyHighlands_top, gMapTop.mapData, MAP_COMPRESSED | 3600 },
};
const MapDataDefinition* const gCaveBorder_TrilbyHighlands_leave[] = {
    gCaveBorder_TrilbyHighlands_leave_start,
    gCaveBorder_TrilbyHighlands_leave_end,
};

const MapDataDefinition gCaveBorder_CastorWilds_enter_start[] = {
    { offset_gCaveBorder_CastorWilds_outside, gMapTop.mapData, MAP_COMPRESSED | 7560 },
};
const MapDataDefinition gCaveBorder_CastorWilds_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_CastorWildsDigCave_0_bottom, gMapBottom.mapData, MAP_COMPRESSED | 7560 },
    { offset_gAreaRoomMap_CastorWildsDigCave_0_top, gMapTop.mapData, MAP_COMPRESSED | 7560 },
};
const MapDataDefinition* const gCaveBorder_CastorWilds_enter[] = {
    gCaveBorder_CastorWilds_enter_start,
    gCaveBorder_CastorWilds_enter_end,
};

const MapDataDefinition gCaveBorder_CastorWilds_leave_start[] = {
    { offset_gCaveBorder_CastorWilds_inside, gMapTop.mapData, MAP_COMPRESSED | 7560 },
};
const MapDataDefinition gCaveBorder_CastorWilds_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_CastorWilds_Main_bottom, gMapBottom.mapData, MAP_COMPRESSED | 7560 },
    { offset_gAreaRoomMap_CastorWilds_Main_top, gMapTop.mapData, MAP_COMPRESSED | 7560 },
};
const MapDataDefinition* const gCaveBorder_CastorWilds_leave[] = {
    gCaveBorder_CastorWilds_leave_start,
    gCaveBorder_CastorWilds_leave_end,
};

const MapDataDefinition gCaveBorder_LakeHyliaNorth_enter_start[] = {
    { offset_gCaveBorder_LakeHyliaNorth_outside, gMapTop.mapData, MAP_COMPRESSED | 5760 },
};
const MapDataDefinition gCaveBorder_LakeHyliaNorth_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_HyliaDigCaves_1_bottom, gMapBottom.mapData, MAP_COMPRESSED | 3402 },
    { offset_gAreaRoomMap_HyliaDigCaves_1_top, gMapTop.mapData, MAP_COMPRESSED | 3402 },
};
const MapDataDefinition* const gCaveBorder_LakeHyliaNorth_enter[] = {
    gCaveBorder_LakeHyliaNorth_enter_start,
    gCaveBorder_LakeHyliaNorth_enter_end,
};

const MapDataDefinition gCaveBorder_LakeHyliaNorth_leave_start[] = {
    { offset_gCaveBorder_LakeHyliaNorth_inside, gMapTop.mapData, MAP_COMPRESSED | 3402 },
};
const MapDataDefinition gCaveBorder_LakeHyliaNorth_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_LakeHylia_Main_bottom, gMapBottom.mapData, MAP_COMPRESSED | 5760 },
    { offset_gAreaRoomMap_LakeHylia_Main_top, gMapTop.mapData, MAP_COMPRESSED | 5760 },
};
const MapDataDefinition* const gCaveBorder_LakeHyliaNorth_leave[] = {
    gCaveBorder_LakeHyliaNorth_leave_start,
    gCaveBorder_LakeHyliaNorth_leave_end,
};

const MapDataDefinition gCaveBorder_LonLonRanch_enter_start[] = {
    { offset_gCaveBorder_LonLonRanch_outside, gMapTop.mapData, MAP_COMPRESSED | 7938 },
};
const MapDataDefinition* const gCaveBorder_LonLonRanch_enter[] = {
    gCaveBorder_LonLonRanch_enter_start,
    gCaveBorder_LakeHyliaNorth_enter_end,
};

const MapDataDefinition gCaveBorder_LonLonRanch_leave_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_HyruleField_LonLonRanch_bottom, gMapBottom.mapData, MAP_COMPRESSED | 5400 },
    { offset_gAreaRoomMap_HyruleField_LonLonRanch_top, gMapTop.mapData, MAP_COMPRESSED | 5400 },
};
const MapDataDefinition* const gCaveBorder_LonLonRanch_leave[] = {
    gCaveBorder_LakeHyliaNorth_leave_start,
    gCaveBorder_LonLonRanch_leave_end,
};

const MapDataDefinition gCaveBorder_LakeHyliaCenter_enter_end[] = {
    { MAP_MULTIPLE | offset_gAreaRoomMap_HyliaDigCaves_0_bottom, gMapBottom.mapData, MAP_COMPRESSED | 544 },
    { offset_gAreaRoomMap_HyliaDigCaves_0_top, gMapTop.mapData, MAP_COMPRESSED | 544 },
};
const MapDataDefinition* const gCaveBorder_LakeHyliaCenter_enter[] = {
    gCaveBorder_LakeHyliaNorth_enter_start,
    gCaveBorder_LakeHyliaCenter_enter_end,
};

const MapDataDefinition gCaveBorder_LakeHyliaCenter_leave_start[] = {
    { offset_gCaveBorder_LakeHyliaCenter_inside, gMapTop.mapData, MAP_COMPRESSED | 544 },
};
const MapDataDefinition* const gCaveBorder_LakeHyliaCenter_leave[] = {
    gCaveBorder_LakeHyliaCenter_leave_start,
    gCaveBorder_LakeHyliaNorth_leave_end,
};

const MapDataDefinition* const* const gCaveBorderMapData[] = {
    gCaveBorder_LakeWoods_enter,       gCaveBorder_LakeWoods_leave,       gCaveBorder_HyruleTown_enter,
    gCaveBorder_HyruleTown_leave,      gCaveBorder_EasternHills_enter,    gCaveBorder_EasternHills_leave,
    gCaveBorder_Crenel_enter,          gCaveBorder_Crenel_leave,          gCaveBorder_VeilFalls_enter,
    gCaveBorder_VeilFalls_leave,       gCaveBorder_TrilbyHighlands_enter, gCaveBorder_TrilbyHighlands_leave,
    gCaveBorder_CastorWilds_enter,     gCaveBorder_CastorWilds_leave,     gCaveBorder_LakeHyliaNorth_enter,
    gCaveBorder_LakeHyliaNorth_leave,  gCaveBorder_LonLonRanch_enter,     gCaveBorder_LonLonRanch_leave,
    gCaveBorder_LakeHyliaCenter_enter, gCaveBorder_LakeHyliaCenter_leave,
};
