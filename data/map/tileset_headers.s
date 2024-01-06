	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

	.include "map_offsets.inc"

gAreaTileSet_Unused_0:: @ 08100CE4
gAreaTiles_Unused::
gAreaRoomMap_Unused::
	tileSet_palette_set 0, 1

gAreaTileSets_Unused:: @ 08100CF0
gAreaRoomMaps_Unused::
	.4byte gAreaTileSet_Unused_0

gAreaTileSet_MinishWoods_0:: @ 08100CF4
	tileSet_tiles offset_gAreaTileSet_MinishWoods_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishWoods_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishWoods_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 28, 1

gAreaTileSet_MinishWoods_1:: @ 08100D24
	tileSet_tiles offset_gAreaTileSet_MinishWoods_1_0, 0x6000000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_MinishWoods_1_1, 0x6008000, 0x2000, 1
	tileSet_palette_set 21, 1

gAreaTileSets_MinishWoods:: @ 08100D48
	.4byte gAreaTileSet_MinishWoods_0
	.4byte gAreaTileSet_MinishWoods_1

gAreaTileSet_LakeHylia_0:: @ 08100D50
	tileSet_tiles offset_gAreaTileSet_LakeHylia_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_LakeHylia_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_LakeHylia_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 39, 1

gAreaTileSets_LakeHylia:: @ 08100D80
	.4byte gAreaTileSet_LakeHylia_0

gAreaTileSet_CastorWilds_0:: @ 08100D84
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 19, 1

gAreaTileSets_CastorWilds:: @ 08100DB4
	.4byte gAreaTileSet_CastorWilds_0

gAreaTileSet_Ruins_0:: @ 08100DB8
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 29, 1

gAreaTileSets_Ruins:: @ 08100DE8
	.4byte gAreaTileSet_Ruins_0

gAreaTileSet_HyruleTown_0:: @ 08100DEC
	tileSet_tiles offset_gAreaTileSet_HyruleTown_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleTown_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleTown_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 27, 1

gAreaTileSets_HyruleTown:: @ 08100E1C
	.4byte gAreaTileSet_HyruleTown_0

gAreaTileSet_FestivalTown_0:: @ 08100E20
	tileSet_tiles offset_gAreaTileSet_FestivalTown_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_FestivalTown_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_FestivalTown_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 170, 1

gAreaTileSets_FestivalTown:: @ 08100E50
	.4byte gAreaTileSet_FestivalTown_0

gAreaTileSet_MtCrenel_0:: @ 08100E54
	tileSet_tiles offset_gAreaTileSet_MtCrenel_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MtCrenel_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MtCrenel_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 30, 1

gAreaTileSets_MtCrenel:: @ 08100E84
	.4byte gAreaTileSet_MtCrenel_0

gAreaTileSet_HyruleField_0:: @ 08100E88
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_3, 0x600F000, 0x800, 1
	tileSet_palette_set 16, 1

gAreaTileSet_HyruleField_1:: @ 08100EC4
	tileSet_tiles offset_gAreaTileSet_HyruleField_1_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_1_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_1_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_3, 0x600F000, 0x800, 1
	tileSet_palette_set 67, 1

gAreaTileSet_HyruleField_2:: @ 08100F00
	tileSet_tiles offset_gAreaTileSet_HyruleField_2_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_2_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_2_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_3, 0x600F000, 0x800, 1
	tileSet_palette_set 46, 1

gAreaTileSets_HyruleField:: @ 08100F3C
	.4byte gAreaTileSet_HyruleField_0
	.4byte gAreaTileSet_HyruleField_1
	.4byte gAreaTileSet_HyruleField_2

gAreaTileSet_CastleGarden_0:: @ 08100F48
	tileSet_tiles offset_gAreaTileSet_CastleGarden_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastleGarden_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastleGarden_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 31, 1

gAreaTileSets_CastleGarden:: @ 08100F78
	.4byte gAreaTileSet_CastleGarden_0

gAreaTileSet_CloudTops_0:: @ 08100F7C
	tileSet_tiles offset_gAreaTileSet_CloudTops_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CloudTops_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CloudTops_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CloudTops_0_3, 0x600F000, 0x800, 1
	tileSet_palette_set 32, 1

gAreaTileSets_CloudTops:: @ 08100FB8
	.4byte gAreaTileSet_CloudTops_0

gAreaTileSet_RoyalValley_0:: @ 08100FBC
	tileSet_tiles offset_gAreaTileSet_RoyalValley_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_RoyalValley_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_RoyalValley_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 38, 1

gAreaTileSets_RoyalValley:: @ 08100FEC
	.4byte gAreaTileSet_RoyalValley_0

gAreaTileSet_VeilFalls_0:: @ 08100FF0
	tileSet_tiles offset_gAreaTileSet_VeilFalls_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_VeilFalls_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_VeilFalls_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 44, 1

gAreaTileSets_VeilFalls:: @ 08101020
	.4byte gAreaTileSet_VeilFalls_0

gAreaTileSet_VeilFallsTop_0:: @ 08101024
	tileSet_tiles offset_gAreaTileSet_VeilFalls_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_VeilFalls_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_VeilFallsTop_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 44, 1

gAreaTileSets_VeilFallsTop:: @ 08101054
	.4byte gAreaTileSet_VeilFallsTop_0

gAreaTileSet_Beanstalks_0:: @ 08101058
	tileSet_tiles offset_gAreaTileSet_Beanstalks_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Beanstalks_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Beanstalks_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Beanstalks_0_3, 0x600F000, 0x800, 1
	tileSet_palette_set 41, 1

gAreaTileSets_Beanstalks:: @ 08101094
	.4byte gAreaTileSet_Beanstalks_0

gAreaTileSet_CrenelCaves_0:: @ 08101098
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 62, 1

gAreaTileSets_CrenelCaves:: @ 081010C8
	.4byte gAreaTileSet_CrenelCaves_0

gAreaTileSet_GreatFairies_0:: @ 081010CC
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 92, 1

gAreaTileSet_GreatFairies_1:: @ 081010FC
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 102, 1

gAreaTileSet_GreatFairies_2:: @ 0810112C
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_GreatFairies_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 103, 1

gAreaTileSets_GreatFairies:: @ 0810115C
	.4byte gAreaTileSet_GreatFairies_0
	.4byte gAreaTileSet_GreatFairies_1
	.4byte gAreaTileSet_GreatFairies_2

gAreaTileSet_LakeWoodsCave_0:: @ 08101168
	tileSet_tiles offset_gAreaTileSet_MinishWoods_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishWoods_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishWoods_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishWoods_1_0, 0x6001000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_MinishWoods_1_1, 0x6009000, 0x2000, 1
	tileSet_palette_set 21, 1

gAreaTileSets_LakeWoodsCave:: @ 081011B0
	.4byte gAreaTileSet_LakeWoodsCave_0

gAreaTileSet_HyruleDigCaves_0:: @ 081011B4
	tileSet_tiles offset_gAreaTileSet_HyruleTown_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleTown_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleTown_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleDigCaves_0_3, 0x6001000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleDigCaves_0_4, 0x6009000, 0x2000, 1
	tileSet_palette_set 54, 1

gAreaTileSets_HyruleDigCaves:: @ 081011FC
	.4byte gAreaTileSet_HyruleDigCaves_0

gAreaTileSet_DigCaves1_0:: @ 08101200
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleField_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DigCaves_0_3, 0x6001000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_DigCaves_0_4, 0x6009000, 0x2000, 1
	tileSet_palette_set 85, 1

gAreaTileSets_DigCaves1:: @ 08101248
	.4byte gAreaTileSet_DigCaves1_0

gAreaTileSet_CrenelDigCave_0:: @ 0810124C
	tileSet_tiles offset_gAreaTileSet_MtCrenel_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MtCrenel_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MtCrenel_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelDigCave_0_3, 0x6001000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelDigCave_0_4, 0x6009000, 0x2000, 1
	tileSet_palette_set 33, 1

gAreaTileSets_CrenelDigCave:: @ 08101294
	.4byte gAreaTileSet_CrenelDigCave_0

gAreaTileSet_VeilFallsDigCave_0:: @ 08101298
	tileSet_tiles offset_gAreaTileSet_VeilFalls_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_VeilFalls_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_VeilFalls_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelDigCave_0_3, 0x6001000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelDigCave_0_4, 0x6009000, 0x2000, 1
	tileSet_palette_set 99, 1

gAreaTileSets_VeilFallsDigCave:: @ 081012E0
	.4byte gAreaTileSet_VeilFallsDigCave_0

gAreaTileSet_CastorWildsDigCave_0:: @ 081012E4
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWildsDigCave_0_3, 0x6001000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWildsDigCave_0_4, 0x6009000, 0x2000, 1
	tileSet_palette_set 100, 1

gAreaTileSets_CastorWildsDigCave:: @ 0810132C
	.4byte gAreaTileSet_CastorWildsDigCave_0

gAreaTileSet_OuterFortressOfWinds_0:: @ 08101330
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWilds_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWildsDigCave_0_3, 0x6001000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_CastorWildsDigCave_0_4, 0x6009000, 0x2000, 1
	tileSet_palette_set 167, 1

gAreaTileSets_OuterFortressOfWinds:: @ 08101378
	.4byte gAreaTileSet_OuterFortressOfWinds_0

gAreaTileSet_HyliaDigCaves_0:: @ 0810137C
	tileSet_tiles offset_gAreaTileSet_LakeHylia_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_LakeHylia_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_LakeHylia_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyliaDigCaves_0_3, 0x6001000, 0x2000, 1
	tileSet_tiles offset_gAreaTileSet_HyliaDigCaves_0_4, 0x6009000, 0x2000, 1
	tileSet_palette_set 20, 1

gAreaTileSets_HyliaDigCaves:: @ 081013C4
	.4byte gAreaTileSet_HyliaDigCaves_0

gAreaTileSet_MinishVillage_0:: @ 081013C8
	tileSet_tiles offset_gAreaTileSet_MinishVillage_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishVillage_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishVillage_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 14, 1

gAreaTileSet_MinishVillage_1:: @ 081013F8
	tileSet_tiles offset_gAreaTileSet_MinishVillage_1_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishVillage_1_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishVillage_1_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 25, 1

gAreaTileSets_MinishVillage:: @ 08101428
	.4byte gAreaTileSet_MinishVillage_0
	.4byte gAreaTileSet_MinishVillage_1

gAreaTileSet_MelarisMine_0:: @ 08101430
	tileSet_tiles offset_gAreaTileSet_MelarisMine_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MelarisMine_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MelarisMine_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 61, 1

gAreaTileSets_MelarisMine:: @ 08101460
	.4byte gAreaTileSet_MelarisMine_0

gAreaTileSet_MinishPaths_0:: @ 08101464
	tileSet_tiles offset_gAreaTileSet_MinishPaths_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishPaths_0_1, 0x6004000, 0x4000, 1
	tileSet_palette_set 18, 1

gAreaTileSet_MinishPaths_1:: @ 08101488
	tileSet_tiles offset_gAreaTileSet_MinishPaths_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishPaths_0_1, 0x6004000, 0x4000, 1
	tileSet_palette_set 63, 1

gAreaTileSet_MinishPaths_2:: @ 081014AC
	tileSet_tiles offset_gAreaTileSet_MinishPaths_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishPaths_0_1, 0x6004000, 0x4000, 1
	tileSet_palette_set 64, 1

gAreaTileSets_MinishPaths:: @ 081014D0
	.4byte gAreaTileSet_MinishPaths_0
	.4byte gAreaTileSet_MinishPaths_1
	.4byte gAreaTileSet_MinishPaths_2

gAreaTileSet_CrenelMinishPaths_0:: @ 081014DC
	tileSet_tiles offset_gAreaTileSet_CrenelMinishPaths_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelMinishPaths_0_1, 0x6004000, 0x4000, 1
	tileSet_palette_set 65, 1

gAreaTileSet_CrenelMinishPaths_1:: @ 08101500
	tileSet_tiles offset_gAreaTileSet_CrenelMinishPaths_1_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelMinishPaths_1_1, 0x6004000, 0x4000, 1
	tileSet_palette_set 66, 1

gAreaTileSet_CrenelMinishPaths_2:: @ 08101524
	tileSet_tiles offset_gAreaTileSet_CrenelMinishPaths_1_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelMinishPaths_1_1, 0x6004000, 0x4000, 1
	tileSet_palette_set 93, 1

gAreaTileSets_CrenelMinishPaths:: @ 08101548
	.4byte gAreaTileSet_CrenelMinishPaths_0
	.4byte gAreaTileSet_CrenelMinishPaths_1
	.4byte gAreaTileSet_CrenelMinishPaths_2

gAreaTileSet_MinishHouseInteriors_0:: @ 08101554
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_0_0, 0x6000000, 0x8740, 1
	tileSet_palette_set 68, 1

gAreaTileSet_MinishHouseInteriors_1:: @ 0810156C
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_1_0, 0x6000000, 0x7540, 1
	tileSet_palette_set 69, 1

gAreaTileSet_MinishHouseInteriors_2:: @ 08101584
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_2_0, 0x6000000, 0x4B40, 1
	tileSet_palette_set 70, 1

gAreaTileSet_MinishHouseInteriors_3:: @ 0810159C
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_3_0, 0x6000000, 0x4A40, 1
	tileSet_palette_set 71, 1

gAreaTileSet_MinishHouseInteriors_4:: @ 081015B4
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_4_0, 0x6000000, 0x4980, 1
	tileSet_palette_set 72, 1

gAreaTileSet_MinishHouseInteriors_5:: @ 081015CC
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_5_0, 0x6000000, 0x4D80, 1
	tileSet_palette_set 73, 1

gAreaTileSet_MinishHouseInteriors_6:: @ 081015E4
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_6_0, 0x6000000, 0x8E40, 1
	tileSet_palette_set 74, 1

gAreaTileSet_MinishHouseInteriors_7:: @ 081015FC
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_7_0, 0x6000000, 0x7E00, 1
	tileSet_palette_set 75, 1

gAreaTileSet_MinishHouseInteriors_8:: @ 08101614
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_8_0, 0x6000000, 0x9F40, 1
	tileSet_palette_set 76, 1

gAreaTileSet_MinishHouseInteriors_9:: @ 0810162C
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_9_0, 0x6000000, 0x7980, 1
	tileSet_palette_set 86, 1

gAreaTileSet_MinishHouseInteriors_10:: @ 08101644
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_10_0, 0x6000000, 0x7B40, 1
	tileSet_palette_set 87, 1

gAreaTileSet_MinishHouseInteriors_11:: @ 0810165C
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_11_0, 0x6000000, 0x69C0, 1
	tileSet_palette_set 88, 1

gAreaTileSet_MinishHouseInteriors_12:: @ 08101674
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_12_0, 0x6000000, 0x5D80, 1
	tileSet_palette_set 77, 1

gAreaTileSet_MinishHouseInteriors_13:: @ 0810168C
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_13_0, 0x6000000, 0x5CC0, 1
	tileSet_palette_set 78, 1

gAreaTileSet_MinishHouseInteriors_14:: @ 081016A4
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_14_0, 0x6000000, 0x5B00, 1
	tileSet_palette_set 79, 1

gAreaTileSet_MinishHouseInteriors_15:: @ 081016BC
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_15_0, 0x6000000, 0x5240, 1
	tileSet_palette_set 80, 1

gAreaTileSet_MinishHouseInteriors_16:: @ 081016D4
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_16_0, 0x6000000, 0x5C40, 1
	tileSet_palette_set 81, 1

gAreaTileSet_MinishHouseInteriors_17:: @ 081016EC
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_17_0, 0x6000000, 0x5740, 1
	tileSet_palette_set 82, 1

gAreaTileSet_MinishHouseInteriors_18:: @ 08101704
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_18_0, 0x6000000, 0x6180, 1
	tileSet_palette_set 83, 1

gAreaTileSet_MinishHouseInteriors_19:: @ 0810171C
	tileSet_tiles offset_gAreaTileSet_MinishHouseInteriors_19_0, 0x6000000, 0x5C80, 1
	tileSet_palette_set 84, 1

gAreaTileSets_MinishHouseInteriors:: @ 08101734
	.4byte gAreaTileSet_MinishHouseInteriors_0
	.4byte gAreaTileSet_MinishHouseInteriors_1
	.4byte gAreaTileSet_MinishHouseInteriors_2
	.4byte gAreaTileSet_MinishHouseInteriors_3
	.4byte gAreaTileSet_MinishHouseInteriors_4
	.4byte gAreaTileSet_MinishHouseInteriors_5
	.4byte gAreaTileSet_MinishHouseInteriors_6
	.4byte gAreaTileSet_MinishHouseInteriors_7
	.4byte gAreaTileSet_MinishHouseInteriors_8
	.4byte gAreaTileSet_MinishHouseInteriors_9
	.4byte gAreaTileSet_MinishHouseInteriors_10
	.4byte gAreaTileSet_MinishHouseInteriors_11
	.4byte gAreaTileSet_MinishHouseInteriors_12
	.4byte gAreaTileSet_MinishHouseInteriors_13
	.4byte gAreaTileSet_MinishHouseInteriors_14
	.4byte gAreaTileSet_MinishHouseInteriors_15
	.4byte gAreaTileSet_MinishHouseInteriors_16
	.4byte gAreaTileSet_MinishHouseInteriors_17
	.4byte gAreaTileSet_MinishHouseInteriors_18
	.4byte gAreaTileSet_MinishHouseInteriors_19

gAreaTileSet_TownMinishHoles_0:: @ 08101784
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_0_0, 0x6000000, 0x6100, 1
	tileSet_palette_set 115, 1

gAreaTileSet_TownMinishHoles_1:: @ 0810179C
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_1_0, 0x6000000, 0x7DC0, 1
	tileSet_palette_set 116, 1

gAreaTileSet_TownMinishHoles_2:: @ 081017B4
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_2_0, 0x6000000, 0x70C0, 1
	tileSet_palette_set 117, 1

gAreaTileSet_TownMinishHoles_3:: @ 081017CC
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_3_0, 0x6000000, 0x7E40, 1
	tileSet_palette_set 118, 1

gAreaTileSet_TownMinishHoles_4:: @ 081017E4
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_4_0, 0x6000000, 0x7240, 1
	tileSet_palette_set 119, 1

gAreaTileSet_TownMinishHoles_5:: @ 081017FC
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_5_0, 0x6000000, 0x8900, 1
	tileSet_palette_set 129, 1

gAreaTileSet_TownMinishHoles_6:: @ 08101814
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_6_0, 0x6000000, 0xBEC0, 1
	tileSet_palette_set 124, 1

gAreaTileSet_TownMinishHoles_7:: @ 0810182C
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_7_0, 0x6000000, 0xA480, 1
	tileSet_palette_set 123, 1

gAreaTileSet_TownMinishHoles_8:: @ 08101844
	tileSet_tiles offset_gAreaTileSet_TownMinishHoles_8_0, 0x6000000, 0xB0C0, 1
	tileSet_palette_set 122, 1

gAreaTileSets_TownMinishHoles:: @ 0810185C
	.4byte gAreaTileSet_TownMinishHoles_0
	.4byte gAreaTileSet_TownMinishHoles_1
	.4byte gAreaTileSet_TownMinishHoles_2
	.4byte gAreaTileSet_TownMinishHoles_3
	.4byte gAreaTileSet_TownMinishHoles_4
	.4byte gAreaTileSet_TownMinishHoles_5
	.4byte gAreaTileSet_TownMinishHoles_6
	.4byte gAreaTileSet_TownMinishHoles_7
	.4byte gAreaTileSet_TownMinishHoles_8

gAreaTileSet_HouseInteriors1_0:: @ 08101880
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 51, 1

gAreaTileSets_HouseInteriors1:: @ 081018B0
	.4byte gAreaTileSet_HouseInteriors1_0

gAreaTileSet_HouseInteriors2_0:: @ 081018B4
	tileSet_tiles offset_gAreaTileSet_HouseInteriors2_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors2_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 52, 1

gAreaTileSet_HouseInteriors2_1:: @ 081018E4
	tileSet_tiles offset_gAreaTileSet_HouseInteriors2_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors2_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 168, 1

gAreaTileSet_HouseInteriors2_2:: @ 08101914
	tileSet_tiles offset_gAreaTileSet_HouseInteriors2_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors2_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 157, 1

gAreaTileSets_HouseInteriors2:: @ 08101944
	.4byte gAreaTileSet_HouseInteriors2_0
	.4byte gAreaTileSet_HouseInteriors2_1
	.4byte gAreaTileSet_HouseInteriors2_2

gAreaTileSet_HouseInteriors4_0:: @ 08101950
	tileSet_tiles offset_gAreaTileSet_HouseInteriors4_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors4_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 89, 1

gAreaTileSets_HouseInteriors4:: @ 08101980
	.4byte gAreaTileSet_HouseInteriors4_0

gAreaTileSet_HouseInteriors3_0:: @ 08101984
	tileSet_tiles offset_gAreaTileSet_HouseInteriors3_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors3_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 53, 1

gAreaTileSets_HouseInteriors3:: @ 081019B4
	.4byte gAreaTileSet_HouseInteriors3_0

gAreaTileSet_TreeInteriors_0:: @ 081019B8
	tileSet_tiles offset_gAreaTileSet_TreeInteriors_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_TreeInteriors_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 13, 1

gAreaTileSets_TreeInteriors:: @ 081019E8
	.4byte gAreaTileSet_TreeInteriors_0

gAreaTileSet_Dojos_0:: @ 081019EC
	tileSet_tiles offset_gAreaTileSet_Dojos_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Dojos_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 150, 1

gAreaTileSet_Dojos_1:: @ 08101A1C
	tileSet_tiles offset_gAreaTileSet_Dojos_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Dojos_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 149, 1

gAreaTileSet_Dojos_2:: @ 08101A4C
	tileSet_tiles offset_gAreaTileSet_Dojos_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Dojos_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 148, 1

gAreaTileSet_Dojos_3:: @ 08101A7C
	tileSet_tiles offset_gAreaTileSet_Dojos_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Dojos_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 146, 1

gAreaTileSet_Dojos_4:: @ 08101AAC
	tileSet_tiles offset_gAreaTileSet_Dojos_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Dojos_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 147, 1

gAreaTileSet_Dojos_5:: @ 08101ADC
	tileSet_tiles offset_gAreaTileSet_Dojos_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Dojos_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 45, 1

gAreaTileSets_Dojos:: @ 08101B0C
	.4byte gAreaTileSet_Dojos_0
	.4byte gAreaTileSet_Dojos_1
	.4byte gAreaTileSet_Dojos_2
	.4byte gAreaTileSet_Dojos_3
	.4byte gAreaTileSet_Dojos_4
	.4byte gAreaTileSet_Dojos_5

gAreaTileSet_MinishCracks_0:: @ 08101B24
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 153, 1

gAreaTileSet_MinishCracks_1:: @ 08101B54
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 152, 1

gAreaTileSet_MinishCracks_2:: @ 08101B84
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 154, 1

gAreaTileSet_MinishCracks_3:: @ 08101BB4
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 34, 1

gAreaTileSet_MinishCracks_4:: @ 08101BE4
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishCracks_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 151, 1

gAreaTileSets_MinishCracks:: @ 08101C14
	.4byte gAreaTileSet_MinishCracks_0
	.4byte gAreaTileSet_MinishCracks_1
	.4byte gAreaTileSet_MinishCracks_2
	.4byte gAreaTileSet_MinishCracks_3
	.4byte gAreaTileSet_MinishCracks_4

gAreaTileSet_ArmosInteriors_0:: @ 08101C28
	tileSet_tiles offset_gAreaTileSet_ArmosInteriors_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_ArmosInteriors_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_ArmosInteriors_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 110, 1

gAreaTileSets_ArmosInteriors:: @ 08101C58
	.4byte gAreaTileSet_ArmosInteriors_0

gAreaTileSet_MinishRafters_0:: @ 08101C5C
	tileSet_tiles offset_gAreaTileSet_MinishRafters_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishRafters_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 121, 1

gAreaTileSets_MinishRafters:: @ 08101C8C
	.4byte gAreaTileSet_MinishRafters_0

gAreaTileSet_GoronCave_0:: @ 08101C90
	tileSet_tiles offset_gAreaTileSet_GoronCave_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_GoronCave_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_GoronCave_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 125, 1

gAreaTileSets_GoronCave:: @ 08101CC0
	.4byte gAreaTileSet_GoronCave_0

gAreaTileSet_WindTribeTower_0:: @ 08101CC4
	tileSet_tiles offset_gAreaTileSet_WindTribeTower_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_WindTribeTower_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 126, 1

gAreaTileSets_WindTribeTower:: @ 08101CF4
	.4byte gAreaTileSet_WindTribeTower_0

gAreaTileSet_WindTribeTowerRoof_0:: @ 08101CF8
	tileSet_tiles offset_gAreaTileSet_WindTribeTowerRoof_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_WindTribeTowerRoof_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_WindTribeTowerRoof_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 127, 1

gAreaTileSets_WindTribeTowerRoof:: @ 08101D28
	.4byte gAreaTileSet_WindTribeTowerRoof_0

gAreaTileSet_MinishCaves_0:: @ 08101D2C
	tileSet_tiles offset_gAreaTileSet_MinishCaves_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishCaves_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_MinishCaves_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 158, 1

gAreaTileSets_MinishCaves:: @ 08101D5C
	.4byte gAreaTileSet_MinishCaves_0

gAreaTileSet_CastleGardenMinishHoles_0:: @ 08101D60
	tileSet_tiles offset_gAreaTileSet_CastleGardenMinishHoles_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastleGardenMinishHoles_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastleGardenMinishHoles_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 159, 1

gAreaTileSets_CastleGardenMinishHoles:: @ 08101D90
	.4byte gAreaTileSet_CastleGardenMinishHoles_0

gAreaTileSet_37_0:: @ 08101D94
	tileSet_tiles offset_gAreaTileSet_CastleGardenMinishHoles_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastleGardenMinishHoles_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastleGardenMinishHoles_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 160, 1

gAreaTileSets_37:: @ 08101DC4
	.4byte gAreaTileSet_37_0

gAreaTileSet_EzloCutscene_0:: @ 08101DC8
	tileSet_tiles offset_gAreaTileSet_EzloCutscene_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_EzloCutscene_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HouseInteriors1_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 161, 1

gAreaTileSets_EzloCutscene:: @ 08101DF8
	.4byte gAreaTileSet_EzloCutscene_0

gAreaTileSet_HyruleTownUnderground_0:: @ 08101DFC
	tileSet_tiles offset_gAreaTileSet_40_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_40_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_40_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 109, 1

gAreaTileSets_HyruleTownUnderground:: @ 08101E2C
	.4byte gAreaTileSet_HyruleTownUnderground_0

gAreaTileSet_SimonsSimulation_0:: @ 08101E30
	tileSet_tiles offset_gAreaTileSet_40_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_40_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_40_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 15, 1

gAreaTileSets_SimonsSimulation:: @ 08101E60
	.4byte gAreaTileSet_SimonsSimulation_0

gAreaTileSet_40_0:: @ 08101E64
	tileSet_tiles offset_gAreaTileSet_40_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_40_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_40_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 15, 1

gAreaTileSets_40:: @ 08101E94
	.4byte gAreaTileSet_40_0

gAreaTileSet_DeepwoodShrine_0:: @ 08101E98
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrine_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrine_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrine_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 17, 1

gAreaTileSets_DeepwoodShrine:: @ 08101EC8
	.4byte gAreaTileSet_DeepwoodShrine_0

gAreaTileSet_DeepwoodShrineBoss_0:: @ 08101ECC
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrineBoss_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrineBoss_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrineBoss_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 17, 1

gAreaTileSets_DeepwoodShrineBoss:: @ 08101EFC
	.4byte gAreaTileSet_DeepwoodShrineBoss_0

gAreaTileSet_DeepwoodShrineEntry_0:: @ 08101F00
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrineEntry_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrineEntry_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DeepwoodShrineEntry_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 90, 1

gAreaTileSets_DeepwoodShrineEntry:: @ 08101F30
	.4byte gAreaTileSet_DeepwoodShrineEntry_0

gAreaTileSet_CaveOfFlames_0:: @ 08101F34
	tileSet_tiles offset_gAreaTileSet_CaveOfFlames_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CaveOfFlames_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CaveOfFlames_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CaveOfFlames_0_3, 0x600F000, 0x800, 1
	tileSet_palette_set 36, 1

gAreaTileSets_CaveOfFlames:: @ 08101F70
	.4byte gAreaTileSet_CaveOfFlames_0

gAreaTileSet_CaveOfFlamesBoss_0:: @ 08101F74
	tileSet_tiles offset_gAreaTileSet_CaveOfFlamesBoss_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CaveOfFlamesBoss_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CaveOfFlamesBoss_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 36, 1

gAreaTileSets_CaveOfFlamesBoss:: @ 08101FA4
	.4byte gAreaTileSet_CaveOfFlamesBoss_0

gAreaTileSet_CastorDarknut_0:: @ 08101FA8
	tileSet_tiles offset_gAreaTileSet_CastorDarknut_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorDarknut_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CastorDarknut_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 37, 1

gAreaTileSets_FortressOfWinds:: @ 08101FD8
	.4byte gAreaTileSet_CastorDarknut_0

gAreaTileSet_FortressOfWindsTop_0:: @ 08101FDC
	tileSet_tiles offset_gAreaTileSet_FortressOfWindsTop_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_FortressOfWindsTop_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_FortressOfWindsTop_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 94, 1

gAreaTileSets_FortressOfWindsTop:: @ 0810200C
	.4byte gAreaTileSet_FortressOfWindsTop_0

gAreaTileSet_InnerMazaal_0:: @ 08102010
	tileSet_tiles offset_gAreaTileSet_InnerMazaal_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_InnerMazaal_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_InnerMazaal_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 128, 1

gAreaTileSets_InnerMazaal:: @ 08102040
	.4byte gAreaTileSet_InnerMazaal_0

gAreaTileSet_TempleOfDroplets_0:: @ 08102044
	tileSet_tiles offset_gAreaTileSet_TempleOfDroplets_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_TempleOfDroplets_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_TempleOfDroplets_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 55, 1

gAreaTileSets_TempleOfDroplets:: @ 08102074
	.4byte gAreaTileSet_TempleOfDroplets_0

gAreaTileSet_61_0:: @ 08102078
	tileSet_tiles offset_gAreaTileSet_Null61_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Null61_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Null61_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 104, 1

gAreaTileSets_61:: @ 081020A8
	.4byte gAreaTileSet_61_0

gAreaTileSet_HyruleTownMinishCaves_0:: @ 081020AC
	tileSet_tiles offset_gAreaTileSet_TempleOfDroplets_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_TempleOfDroplets_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_TempleOfDroplets_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 130, 1

gAreaTileSets_HyruleTownMinishCaves:: @ 081020DC
	.4byte gAreaTileSet_HyruleTownMinishCaves_0

gAreaTileSet_RoyalCrypt_0:: @ 081020E0
	tileSet_tiles offset_gAreaTileSet_RoyalCrypt_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_RoyalCrypt_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_RoyalCrypt_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 60, 1

gAreaTileSets_RoyalCrypt:: @ 08102110
	.4byte gAreaTileSet_RoyalCrypt_0

gAreaTileSet_PalaceOfWinds_GyorgTornado:: @ 08102114
	tileSet_tiles offset_gAreaTileSet_PalaceOfWinds_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_PalaceOfWinds_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_PalaceOfWinds_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_PalaceOfWinds_0_3, 0x600F000, 0x800, 1
	tileSet_palette_set 56, 1

gAreaTileSets_PalaceOfWinds:: @ 08102150
	.4byte gAreaTileSet_PalaceOfWinds_GyorgTornado

gAreaTileSet_PalaceOfWindsBoss_0:: @ 08102154
	tileSet_tiles offset_gAreaTileSet_PalaceOfWindsBoss_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_PalaceOfWindsBoss_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_PalaceOfWindsBoss_0_2, 0x600F000, 0x800, 1
	tileSet_palette_set 162, 1

gAreaTileSets_PalaceOfWindsBoss:: @ 08102184
	.4byte gAreaTileSet_PalaceOfWindsBoss_0

gAreaTileSet_Sanctuary_0:: @ 08102188
	tileSet_tiles offset_gAreaTileSet_Sanctuary_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Sanctuary_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Sanctuary_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 57, 1

gAreaTileSets_Sanctuary:: @ 081021B8
	.4byte gAreaTileSet_Sanctuary_0

gAreaTileSet_HyruleCastle_0:: @ 081021BC
	tileSet_tiles offset_gAreaTileSet_HyruleCastle_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleCastle_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_HyruleCastle_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 58, 1

gAreaTileSets_HyruleCastle:: @ 081021EC
	.4byte gAreaTileSet_HyruleCastle_0

gAreaTileSet_SanctuaryEntrance_0:: @ 081021F0
	tileSet_tiles offset_gAreaTileSet_SanctuaryEntrance_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_SanctuaryEntrance_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_SanctuaryEntrance_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 145, 1

gAreaTileSets_SanctuaryEntrance:: @ 08102220
	.4byte gAreaTileSet_SanctuaryEntrance_0

gAreaTileSet_DarkHyruleCastle_1FEntrance:: @ 08102224
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastle_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastle_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastle_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 59, 1

gAreaTileSets_DarkHyruleCastle:: @ 08102254
	.4byte gAreaTileSet_DarkHyruleCastle_1FEntrance

gAreaTileSet_DarkHyruleCastleOutside_0:: @ 08102258
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastleOutside_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastleOutside_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastleOutside_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 144, 1

gAreaTileSets_DarkHyruleCastleOutside:: @ 08102288
	.4byte gAreaTileSet_DarkHyruleCastleOutside_0

gAreaTileSet_DarkHyruleCastleBridge_0:: @ 0810228C
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastleBridge_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastleBridge_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_DarkHyruleCastleBridge_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 180, 1

gAreaTileSets_DarkHyruleCastleBridge:: @ 081022BC
	.4byte gAreaTileSet_DarkHyruleCastleBridge_0

gAreaTileSet_VaatisArms_0:: @ 081022C0
	tileSet_tiles offset_gAreaTileSet_VaatisArms_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_VaatisArms_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_VaatisArms_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 155, 1

gAreaTileSets_VaatisArms:: @ 081022F0
	.4byte gAreaTileSet_VaatisArms_0

gAreaTileSet_Vaati3_0:: @ 081022F4
	tileSet_tiles offset_gAreaTileSet_Vaati3_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Vaati3_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Vaati3_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 156, 1

gAreaTileSets_Vaati3:: @ 08102324
	.4byte gAreaTileSet_Vaati3_0

gAreaTileSet_Vaati2_0:: @ 08102328
	tileSet_tiles offset_gAreaTileSet_Vaati2_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Vaati2_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Vaati2_0_2, 0x6008000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_Vaati2_0_3, 0x600F000, 0x800, 1
	tileSet_palette_set 169, 1

gAreaTileSets_Vaati2:: @ 08102364
	.4byte gAreaTileSet_Vaati2_0

gAreaTileSet_45_0:: @ 08102368
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 35, 1

gAreaTileSets_45:: @ 08102398
	.4byte gAreaTileSet_45_0

gAreaTileSet_CastorCaves_0:: @ 0810239C
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 101, 1

gAreaTileSets_CastorCaves:: @ 081023CC
	.4byte gAreaTileSet_CastorCaves_0

gAreaTileSet_Caves_0:: @ 081023D0
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 131, 1

gAreaTileSets_Caves:: @ 08102400
	.4byte gAreaTileSet_Caves_0

gAreaTileSet_VeilFallsCaves_0:: @ 08102404
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 132, 1

gAreaTileSets_VeilFallsCaves:: @ 08102434
	.4byte gAreaTileSet_VeilFallsCaves_0

gAreaTileSet_RoyalValleyGraves_0:: @ 08102438
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_0, 0x6000000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_1, 0x6004000, 0x4000, 1
	tileSet_tiles offset_gAreaTileSet_CrenelCaves_0_2, 0x6008000, 0x4000, 1
	tileSet_palette_set 133, 1

gAreaTileSets_RoyalValleyGraves:: @ 08102468
	.4byte gAreaTileSet_RoyalValleyGraves_0

gAreaTileSets:: @ 0810246C
	.4byte gAreaTileSets_MinishWoods             @ 0x0
	.4byte gAreaTileSets_MinishVillage           @ 0x1
	.4byte gAreaTileSets_HyruleTown              @ 0x2
	.4byte gAreaTileSets_HyruleField             @ 0x3
	.4byte gAreaTileSets_CastorWilds             @ 0x4
	.4byte gAreaTileSets_Ruins                   @ 0x5
	.4byte gAreaTileSets_MtCrenel                @ 0x6
	.4byte gAreaTileSets_CastleGarden            @ 0x7
	.4byte gAreaTileSets_CloudTops               @ 0x8
	.4byte gAreaTileSets_RoyalValley             @ 0x9
	.4byte gAreaTileSets_VeilFalls               @ 0xA
	.4byte gAreaTileSets_LakeHylia               @ 0xB
	.4byte gAreaTileSets_LakeWoodsCave           @ 0xC
	.4byte gAreaTileSets_Beanstalks              @ 0xD
	.4byte gAreaTileSets_MinishWoods             @ 0xE
	.4byte gAreaTileSets_HyruleDigCaves          @ 0xF
	.4byte gAreaTileSets_MelarisMine             @ 0x10
	.4byte gAreaTileSets_MinishPaths            @ 0x11
	.4byte gAreaTileSets_CrenelMinishPaths       @ 0x12
	.4byte gAreaTileSets_DigCaves1               @ 0x13
	.4byte gAreaTileSets_CrenelDigCave           @ 0x14
	.4byte gAreaTileSets_FestivalTown            @ 0x15
	.4byte gAreaTileSets_VeilFallsDigCave        @ 0x16
	.4byte gAreaTileSets_CastorWildsDigCave      @ 0x17
	.4byte gAreaTileSets_OuterFortressOfWinds    @ 0x18
	.4byte gAreaTileSets_HyliaDigCaves           @ 0x19
	.4byte gAreaTileSets_VeilFallsTop            @ 0x1A
	.4byte gAreaTileSets_Unused                  @ 0x1B
	.4byte gAreaTileSets_Unused                  @ 0x1C
	.4byte gAreaTileSets_Unused                  @ 0x1D
	.4byte gAreaTileSets_Unused                  @ 0x1E
	.4byte gAreaTileSets_Unused                  @ 0x1F
	.4byte gAreaTileSets_MinishHouseInteriors    @ 0x20
	.4byte gAreaTileSets_HouseInteriors1         @ 0x21
	.4byte gAreaTileSets_HouseInteriors2         @ 0x22
	.4byte gAreaTileSets_HouseInteriors3         @ 0x23
	.4byte gAreaTileSets_TreeInteriors           @ 0x24
	.4byte gAreaTileSets_Dojos                   @ 0x25
	.4byte gAreaTileSets_CrenelCaves             @ 0x26
	.4byte gAreaTileSets_MinishCracks            @ 0x27
	.4byte gAreaTileSets_HouseInteriors4         @ 0x28
	.4byte gAreaTileSets_GreatFairies            @ 0x29
	.4byte gAreaTileSets_CastorCaves             @ 0x2A
	.4byte gAreaTileSets_FortressOfWinds         @ 0x2B
	.4byte gAreaTileSets_ArmosInteriors          @ 0x2C
	.4byte gAreaTileSets_TownMinishHoles         @ 0x2D
	.4byte gAreaTileSets_MinishRafters           @ 0x2E
	.4byte gAreaTileSets_GoronCave               @ 0x2F
	.4byte gAreaTileSets_WindTribeTower          @ 0x30
	.4byte gAreaTileSets_WindTribeTowerRoof      @ 0x31
	.4byte gAreaTileSets_Caves                   @ 0x32
	.4byte gAreaTileSets_VeilFallsCaves          @ 0x33
	.4byte gAreaTileSets_RoyalValleyGraves       @ 0x34
	.4byte gAreaTileSets_MinishCaves             @ 0x35
	.4byte gAreaTileSets_CastleGardenMinishHoles @ 0x36
	.4byte gAreaTileSets_37                      @ 0x37
	.4byte gAreaTileSets_EzloCutscene            @ 0x38
	.4byte gAreaTileSets_Unused                  @ 0x39
	.4byte gAreaTileSets_Unused                  @ 0x3A
	.4byte gAreaTileSets_Unused                  @ 0x3B
	.4byte gAreaTileSets_Unused                  @ 0x3C
	.4byte gAreaTileSets_Unused                  @ 0x3D
	.4byte gAreaTileSets_Unused                  @ 0x3E
	.4byte gAreaTileSets_Unused                  @ 0x3F
	.4byte gAreaTileSets_40                      @ 0x40
	.4byte gAreaTileSets_HyruleTownUnderground   @ 0x41
	.4byte gAreaTileSets_40                      @ 0x42
	.4byte gAreaTileSets_40                      @ 0x43
	.4byte gAreaTileSets_SimonsSimulation        @ 0x44
	.4byte gAreaTileSets_45                      @ 0x45
	.4byte gAreaTileSets_45                      @ 0x46
	.4byte gAreaTileSets_45                      @ 0x47
	.4byte gAreaTileSets_DeepwoodShrine          @ 0x48
	.4byte gAreaTileSets_DeepwoodShrineBoss      @ 0x49
	.4byte gAreaTileSets_DeepwoodShrineEntry     @ 0x4A
	.4byte gAreaTileSets_Unused                  @ 0x4B
	.4byte gAreaTileSets_Unused                  @ 0x4C
	.4byte gAreaTileSets_DeepwoodShrine          @ 0x4D
	.4byte gAreaTileSets_DeepwoodShrine          @ 0x4E
	.4byte gAreaTileSets_DeepwoodShrineBoss      @ 0x4F
	.4byte gAreaTileSets_CaveOfFlames            @ 0x50
	.4byte gAreaTileSets_CaveOfFlamesBoss        @ 0x51
	.4byte gAreaTileSets_Unused                  @ 0x52
	.4byte gAreaTileSets_Unused                  @ 0x53
	.4byte gAreaTileSets_Unused                  @ 0x54
	.4byte gAreaTileSets_Unused                  @ 0x55
	.4byte gAreaTileSets_CaveOfFlames            @ 0x56
	.4byte gAreaTileSets_CaveOfFlames            @ 0x57
	.4byte gAreaTileSets_FortressOfWinds         @ 0x58
	.4byte gAreaTileSets_FortressOfWindsTop      @ 0x59
	.4byte gAreaTileSets_InnerMazaal             @ 0x5A
	.4byte gAreaTileSets_Unused                  @ 0x5B
	.4byte gAreaTileSets_Unused                  @ 0x5C
	.4byte gAreaTileSets_Unused                  @ 0x5D
	.4byte gAreaTileSets_Unused                  @ 0x5E
	.4byte gAreaTileSets_FortressOfWinds         @ 0x5F
	.4byte gAreaTileSets_TempleOfDroplets        @ 0x60
	.4byte gAreaTileSets_61                      @ 0x61
	.4byte gAreaTileSets_HyruleTownMinishCaves   @ 0x62
	.4byte gAreaTileSets_Unused                  @ 0x63
	.4byte gAreaTileSets_Unused                  @ 0x64
	.4byte gAreaTileSets_Unused                  @ 0x65
	.4byte gAreaTileSets_Unused                  @ 0x66
	.4byte gAreaTileSets_TempleOfDroplets        @ 0x67
	.4byte gAreaTileSets_RoyalCrypt              @ 0x68
	.4byte gAreaTileSets_Unused                  @ 0x69
	.4byte gAreaTileSets_Unused                  @ 0x6A
	.4byte gAreaTileSets_Unused                  @ 0x6B
	.4byte gAreaTileSets_Unused                  @ 0x6C
	.4byte gAreaTileSets_Unused                  @ 0x6D
	.4byte gAreaTileSets_Unused                  @ 0x6E
	.4byte gAreaTileSets_RoyalCrypt              @ 0x6F
	.4byte gAreaTileSets_PalaceOfWinds           @ 0x70
	.4byte gAreaTileSets_PalaceOfWindsBoss       @ 0x71
	.4byte gAreaTileSets_Unused                  @ 0x72
	.4byte gAreaTileSets_Unused                  @ 0x73
	.4byte gAreaTileSets_Unused                  @ 0x74
	.4byte gAreaTileSets_Unused                  @ 0x75
	.4byte gAreaTileSets_Unused                  @ 0x76
	.4byte gAreaTileSets_PalaceOfWinds           @ 0x77
	.4byte gAreaTileSets_Sanctuary               @ 0x78
	.4byte gAreaTileSets_Unused                  @ 0x79
	.4byte gAreaTileSets_Unused                  @ 0x7A
	.4byte gAreaTileSets_Unused                  @ 0x7B
	.4byte gAreaTileSets_Unused                  @ 0x7C
	.4byte gAreaTileSets_Unused                  @ 0x7D
	.4byte gAreaTileSets_Unused                  @ 0x7E
	.4byte gAreaTileSets_Sanctuary               @ 0x7F
	.4byte gAreaTileSets_HyruleCastle            @ 0x80
	.4byte gAreaTileSets_SanctuaryEntrance       @ 0x81
	.4byte gAreaTileSets_Unused                  @ 0x82
	.4byte gAreaTileSets_Unused                  @ 0x83
	.4byte gAreaTileSets_Unused                  @ 0x84
	.4byte gAreaTileSets_Unused                  @ 0x85
	.4byte gAreaTileSets_Unused                  @ 0x86
	.4byte gAreaTileSets_HyruleCastle            @ 0x87
	.4byte gAreaTileSets_DarkHyruleCastle        @ 0x88
	.4byte gAreaTileSets_DarkHyruleCastleOutside @ 0x89
	.4byte gAreaTileSets_VaatisArms              @ 0x8A
	.4byte gAreaTileSets_Vaati3                  @ 0x8B
	.4byte gAreaTileSets_Vaati2                  @ 0x8C
	.4byte gAreaTileSets_DarkHyruleCastleBridge  @ 0x8D
	.4byte gAreaTileSets_Unused                  @ 0x8E
	.4byte gAreaTileSets_DarkHyruleCastle        @ 0x8F
