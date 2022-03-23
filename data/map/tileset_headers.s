	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

	.include "map_offsets.inc"

gAreaTileset_Unused_0:: @ 08100CE4
gAreaMetatiles_Unused::
gAreaRoomMap_Unused::
	tileset_palette_set 0, 1

gAreaTilesets_Unused:: @ 08100CF0
gAreaRoomMaps_Unused::
	.4byte gAreaTileset_Unused_0

gTileset_MinishWoods_0:: @ 08100CF4
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 28, 1

gTileset_MinishWoods_1:: @ 08100D24
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_3, 0x6000000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_4, 0x6008000, 0x2000, 1
	tileset_palette_set 21, 1

gAreaTilesets_MinishWoods:: @ 08100D48
	.4byte gTileset_MinishWoods_0
	.4byte gTileset_MinishWoods_1

gAreaTileset_LakeHylia_0:: @ 08100D50
	tileset_tiles offset_gAreaTileset_HyliaDigCaves_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyliaDigCaves_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyliaDigCaves_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 39, 1

gAreaTilesets_LakeHylia:: @ 08100D80
	.4byte gAreaTileset_LakeHylia_0

gAreaTileset_CastorWilds_0:: @ 08100D84
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 19, 1

gAreaTilesets_CastorWilds:: @ 08100DB4
	.4byte gAreaTileset_CastorWilds_0

gAreaTileset_Ruins_0:: @ 08100DB8
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 29, 1

gAreaTilesets_Ruins:: @ 08100DE8
	.4byte gAreaTileset_Ruins_0

gAreaTileset_HyruleTown_0:: @ 08100DEC
	tileset_tiles offset_gAreaTileset_HyruleDigCaves_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleDigCaves_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleDigCaves_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 27, 1

gAreaTilesets_HyruleTown:: @ 08100E1C
	.4byte gAreaTileset_HyruleTown_0

gAreaTileset_FestivalTown_0:: @ 08100E20
	tileset_tiles offset_gAreaTileset_FestivalTown_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_FestivalTown_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_FestivalTown_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 170, 1

gAreaTilesets_FestivalTown:: @ 08100E50
	.4byte gAreaTileset_FestivalTown_0

gAreaTileset_MtCrenel_0:: @ 08100E54
	tileset_tiles offset_gAreaTileset_CrenelDigCave_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CrenelDigCave_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CrenelDigCave_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 30, 1

gAreaTilesets_MtCrenel:: @ 08100E84
	.4byte gAreaTileset_MtCrenel_0

gAreaTileset_HyruleField_0:: @ 08100E88
	tileset_tiles offset_gAreaRoomMap_HyruleField_7_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DigCaves1_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaRoomMap_HyruleField_7_1, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleField_2_3, 0x600F000, 0x800, 1
	tileset_palette_set 16, 1

gAreaTileset_HyruleField_1:: @ 08100EC4
	tileset_tiles offset_gAreaRoomMap_HyruleField_5_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleField_1_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaRoomMap_HyruleField_5_1, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleField_2_3, 0x600F000, 0x800, 1
	tileset_palette_set 67, 1

gAreaTileset_HyruleField_2:: @ 08100F00
	tileset_tiles offset_gAreaRoomMap_HyruleField_6_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleField_2_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaRoomMap_HyruleField_6_1, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleField_2_3, 0x600F000, 0x800, 1
	tileset_palette_set 46, 1

gAreaTilesets_HyruleField:: @ 08100F3C
	.4byte gAreaTileset_HyruleField_0
	.4byte gAreaTileset_HyruleField_1
	.4byte gAreaTileset_HyruleField_2

gAreaTileset_CastleGarden_0:: @ 08100F48
	tileset_tiles offset_gAreaTileset_CastleGarden_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CastleGarden_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CastleGarden_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 31, 1

gAreaTilesets_CastleGarden:: @ 08100F78
	.4byte gAreaTileset_CastleGarden_0

gAreaTileset_CloudTops_0:: @ 08100F7C
	tileset_tiles offset_gAreaTileset_CloudTops_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CloudTops_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CloudTops_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CloudTops_0_3, 0x600F000, 0x800, 1
	tileset_palette_set 32, 1

gAreaTilesets_CloudTops:: @ 08100FB8
	.4byte gAreaTileset_CloudTops_0

gAreaTileset_RoyalValley_0:: @ 08100FBC
	tileset_tiles offset_gAreaTileset_RoyalValley_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_RoyalValley_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_RoyalValley_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 38, 1

gAreaTilesets_RoyalValley:: @ 08100FEC
	.4byte gAreaTileset_RoyalValley_0

gAreaTileset_VeilFalls_0:: @ 08100FF0
	tileset_tiles offset_gAreaTileset_VeilFallsTop_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsTop_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsDigCave_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 44, 1

gAreaTilesets_VeilFalls:: @ 08101020
	.4byte gAreaTileset_VeilFalls_0

gAreaTileset_VeilFallsTop_0:: @ 08101024
	tileset_tiles offset_gAreaTileset_VeilFallsTop_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsTop_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsTop_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 44, 1

gAreaTilesets_VeilFallsTop:: @ 08101054
	.4byte gAreaTileset_VeilFallsTop_0

gAreaTileset_Beanstalks_0:: @ 08101058
	tileset_tiles offset_gAreaTileset_Beanstalks_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Beanstalks_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Beanstalks_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Beanstalks_0_3, 0x600F000, 0x800, 1
	tileset_palette_set 41, 1

gAreaTilesets_Beanstalks:: @ 08101094
	.4byte gAreaTileset_Beanstalks_0

gAreaTileset_CrenelCaves_0:: @ 08101098
	tileset_tiles offset_gAreaTileset_45_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 62, 1

gAreaTilesets_CrenelCaves:: @ 081010C8
	.4byte gAreaTileset_CrenelCaves_0

gAreaTileset_GreatFairies_0:: @ 081010CC
	tileset_tiles offset_gAreaTileset_GreatFairies_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_GreatFairies_2_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_GreatFairies_2_2, 0x6008000, 0x4000, 1
	tileset_palette_set 92, 1

gAreaTileset_GreatFairies_1:: @ 081010FC
	tileset_tiles offset_gAreaTileset_GreatFairies_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_GreatFairies_2_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_GreatFairies_2_2, 0x6008000, 0x4000, 1
	tileset_palette_set 102, 1

gAreaTileset_GreatFairies_2:: @ 0810112C
	tileset_tiles offset_gAreaTileset_GreatFairies_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_GreatFairies_2_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_GreatFairies_2_2, 0x6008000, 0x4000, 1
	tileset_palette_set 103, 1

gAreaTilesets_GreatFairies:: @ 0810115C
	.4byte gAreaTileset_GreatFairies_0
	.4byte gAreaTileset_GreatFairies_1
	.4byte gAreaTileset_GreatFairies_2

gAreaTileset_LakeWoodsCave_0:: @ 08101168
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_3, 0x6001000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_LakeWoodsCave_0_4, 0x6009000, 0x2000, 1
	tileset_palette_set 21, 1

gAreaTilesets_LakeWoodsCave:: @ 081011B0
	.4byte gAreaTileset_LakeWoodsCave_0

gAreaTileset_HyruleDigCaves_0:: @ 081011B4
	tileset_tiles offset_gAreaTileset_HyruleDigCaves_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleDigCaves_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleDigCaves_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleDigCaves_0_3, 0x6001000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_HyruleDigCaves_0_4, 0x6009000, 0x2000, 1
	tileset_palette_set 54, 1

gAreaTilesets_HyruleDigCaves:: @ 081011FC
	.4byte gAreaTileset_HyruleDigCaves_0

gAreaTileset_DigCaves1_0:: @ 08101200
	tileset_tiles offset_gAreaRoomMap_HyruleField_7_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DigCaves1_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaRoomMap_HyruleField_7_1, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DigCaves1_0_3, 0x6001000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_DigCaves1_0_4, 0x6009000, 0x2000, 1
	tileset_palette_set 85, 1

gAreaTilesets_DigCaves1:: @ 08101248
	.4byte gAreaTileset_DigCaves1_0

gAreaTileset_CrenelDigCave_0:: @ 0810124C
	tileset_tiles offset_gAreaTileset_CrenelDigCave_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CrenelDigCave_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CrenelDigCave_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsDigCave_0_3, 0x6001000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsDigCave_0_4, 0x6009000, 0x2000, 1
	tileset_palette_set 33, 1

gAreaTilesets_CrenelDigCave:: @ 08101294
	.4byte gAreaTileset_CrenelDigCave_0

gAreaTileset_VeilFallsDigCave_0:: @ 08101298
	tileset_tiles offset_gAreaTileset_VeilFallsTop_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsTop_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsDigCave_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsDigCave_0_3, 0x6001000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_VeilFallsDigCave_0_4, 0x6009000, 0x2000, 1
	tileset_palette_set 99, 1

gAreaTilesets_VeilFallsDigCave:: @ 081012E0
	.4byte gAreaTileset_VeilFallsDigCave_0

gAreaTileset_CastorWildsDigCave_0:: @ 081012E4
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_3, 0x6001000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_4, 0x6009000, 0x2000, 1
	tileset_palette_set 100, 1

gAreaTilesets_CastorWildsDigCave:: @ 0810132C
	.4byte gAreaTileset_CastorWildsDigCave_0

gAreaTileset_OuterFortressOfWinds_0:: @ 08101330
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_3, 0x6001000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_OuterFortressOfWinds_0_4, 0x6009000, 0x2000, 1
	tileset_palette_set 167, 1

gAreaTilesets_OuterFortressOfWinds:: @ 08101378
	.4byte gAreaTileset_OuterFortressOfWinds_0

gAreaTileset_HyliaDigCaves_0:: @ 0810137C
	tileset_tiles offset_gAreaTileset_HyliaDigCaves_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyliaDigCaves_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyliaDigCaves_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyliaDigCaves_0_3, 0x6001000, 0x2000, 1
	tileset_tiles offset_gAreaTileset_HyliaDigCaves_0_4, 0x6009000, 0x2000, 1
	tileset_palette_set 20, 1

gAreaTilesets_HyliaDigCaves:: @ 081013C4
	.4byte gAreaTileset_HyliaDigCaves_0

gAreaTileset_MinishVillage_0:: @ 081013C8
	tileset_tiles offset_gAreaTileset_MinishVillage_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishVillage_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishVillage_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 14, 1

gAreaTileset_MinishVillage_1:: @ 081013F8
	tileset_tiles offset_gAreaTileset_MinishVillage_1_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishVillage_1_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishVillage_1_2, 0x6008000, 0x4000, 1
	tileset_palette_set 25, 1

gAreaTilesets_MinishVillage:: @ 08101428
	.4byte gAreaTileset_MinishVillage_0
	.4byte gAreaTileset_MinishVillage_1

gAreaTileset_MelarisMine_0:: @ 08101430
	tileset_tiles offset_gAreaTileset_MelarisMine_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MelarisMine_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MelarisMine_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 61, 1

gAreaTilesets_MelarisMine:: @ 08101460
	.4byte gAreaTileset_MelarisMine_0

gAreaTileset_MinishPaths_0:: @ 08101464
	tileset_tiles offset_gAreaTileset_MinishPaths_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishPaths_2_1, 0x6004000, 0x4000, 1
	tileset_palette_set 18, 1

gAreaTileset_MinishPaths_1:: @ 08101488
	tileset_tiles offset_gAreaTileset_MinishPaths_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishPaths_2_1, 0x6004000, 0x4000, 1
	tileset_palette_set 63, 1

gAreaTileset_MinishPaths_2:: @ 081014AC
	tileset_tiles offset_gAreaTileset_MinishPaths_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishPaths_2_1, 0x6004000, 0x4000, 1
	tileset_palette_set 64, 1

gAreaTilesets_MinishPaths:: @ 081014D0
	.4byte gAreaTileset_MinishPaths_0
	.4byte gAreaTileset_MinishPaths_1
	.4byte gAreaTileset_MinishPaths_2

gAreaTileset_CrenelMinishPaths_0:: @ 081014DC
	tileset_tiles offset_gAreaTileset_CrenelMinishPaths_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CrenelMinishPaths_0_1, 0x6004000, 0x4000, 1
	tileset_palette_set 65, 1

gAreaTileset_CrenelMinishPaths_1:: @ 08101500
	tileset_tiles offset_gAreaTileset_CrenelMinishPaths_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CrenelMinishPaths_2_1, 0x6004000, 0x4000, 1
	tileset_palette_set 66, 1

gAreaTileset_CrenelMinishPaths_2:: @ 08101524
	tileset_tiles offset_gAreaTileset_CrenelMinishPaths_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CrenelMinishPaths_2_1, 0x6004000, 0x4000, 1
	tileset_palette_set 93, 1

gAreaTilesets_CrenelMinishPaths:: @ 08101548
	.4byte gAreaTileset_CrenelMinishPaths_0
	.4byte gAreaTileset_CrenelMinishPaths_1
	.4byte gAreaTileset_CrenelMinishPaths_2

gAreaTileset_MinishHouseInteriors_0:: @ 08101554
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_0_0, 0x6000000, 0x8740, 1
	tileset_palette_set 68, 1

gAreaTileset_MinishHouseInteriors_1:: @ 0810156C
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_1_0, 0x6000000, 0x7540, 1
	tileset_palette_set 69, 1

gAreaTileset_MinishHouseInteriors_2:: @ 08101584
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_2_0, 0x6000000, 0x4B40, 1
	tileset_palette_set 70, 1

gAreaTileset_MinishHouseInteriors_3:: @ 0810159C
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_3_0, 0x6000000, 0x4A40, 1
	tileset_palette_set 71, 1

gAreaTileset_MinishHouseInteriors_4:: @ 081015B4
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_4_0, 0x6000000, 0x4980, 1
	tileset_palette_set 72, 1

gAreaTileset_MinishHouseInteriors_5:: @ 081015CC
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_5_0, 0x6000000, 0x4D80, 1
	tileset_palette_set 73, 1

gAreaTileset_MinishHouseInteriors_6:: @ 081015E4
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_6_0, 0x6000000, 0x8E40, 1
	tileset_palette_set 74, 1

gAreaTileset_MinishHouseInteriors_7:: @ 081015FC
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_7_0, 0x6000000, 0x7E00, 1
	tileset_palette_set 75, 1

gAreaTileset_MinishHouseInteriors_8:: @ 08101614
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_8_0, 0x6000000, 0x9F40, 1
	tileset_palette_set 76, 1

gAreaTileset_MinishHouseInteriors_9:: @ 0810162C
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_9_0, 0x6000000, 0x7980, 1
	tileset_palette_set 86, 1

gAreaTileset_MinishHouseInteriors_10:: @ 08101644
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_10_0, 0x6000000, 0x7B40, 1
	tileset_palette_set 87, 1

gAreaTileset_MinishHouseInteriors_11:: @ 0810165C
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_11_0, 0x6000000, 0x69C0, 1
	tileset_palette_set 88, 1

gAreaTileset_MinishHouseInteriors_12:: @ 08101674
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_12_0, 0x6000000, 0x5D80, 1
	tileset_palette_set 77, 1

gAreaTileset_MinishHouseInteriors_13:: @ 0810168C
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_13_0, 0x6000000, 0x5CC0, 1
	tileset_palette_set 78, 1

gAreaTileset_MinishHouseInteriors_14:: @ 081016A4
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_14_0, 0x6000000, 0x5B00, 1
	tileset_palette_set 79, 1

gAreaTileset_MinishHouseInteriors_15:: @ 081016BC
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_15_0, 0x6000000, 0x5240, 1
	tileset_palette_set 80, 1

gAreaTileset_MinishHouseInteriors_16:: @ 081016D4
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_16_0, 0x6000000, 0x5C40, 1
	tileset_palette_set 81, 1

gAreaTileset_MinishHouseInteriors_17:: @ 081016EC
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_17_0, 0x6000000, 0x5740, 1
	tileset_palette_set 82, 1

gAreaTileset_MinishHouseInteriors_18:: @ 08101704
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_18_0, 0x6000000, 0x6180, 1
	tileset_palette_set 83, 1

gAreaTileset_MinishHouseInteriors_19:: @ 0810171C
	tileset_tiles offset_gAreaTileset_MinishHouseInteriors_19_0, 0x6000000, 0x5C80, 1
	tileset_palette_set 84, 1

gAreaTilesets_MinishHouseInteriors:: @ 08101734
	.4byte gAreaTileset_MinishHouseInteriors_0
	.4byte gAreaTileset_MinishHouseInteriors_1
	.4byte gAreaTileset_MinishHouseInteriors_2
	.4byte gAreaTileset_MinishHouseInteriors_3
	.4byte gAreaTileset_MinishHouseInteriors_4
	.4byte gAreaTileset_MinishHouseInteriors_5
	.4byte gAreaTileset_MinishHouseInteriors_6
	.4byte gAreaTileset_MinishHouseInteriors_7
	.4byte gAreaTileset_MinishHouseInteriors_8
	.4byte gAreaTileset_MinishHouseInteriors_9
	.4byte gAreaTileset_MinishHouseInteriors_10
	.4byte gAreaTileset_MinishHouseInteriors_11
	.4byte gAreaTileset_MinishHouseInteriors_12
	.4byte gAreaTileset_MinishHouseInteriors_13
	.4byte gAreaTileset_MinishHouseInteriors_14
	.4byte gAreaTileset_MinishHouseInteriors_15
	.4byte gAreaTileset_MinishHouseInteriors_16
	.4byte gAreaTileset_MinishHouseInteriors_17
	.4byte gAreaTileset_MinishHouseInteriors_18
	.4byte gAreaTileset_MinishHouseInteriors_19

gAreaTileset_TownMinishHoles_0:: @ 08101784
	tileset_tiles offset_gAreaTileset_TownMinishHoles_0_0, 0x6000000, 0x6100, 1
	tileset_palette_set 115, 1

gAreaTileset_TownMinishHoles_1:: @ 0810179C
	tileset_tiles offset_gAreaTileset_TownMinishHoles_1_0, 0x6000000, 0x7DC0, 1
	tileset_palette_set 116, 1

gAreaTileset_TownMinishHoles_2:: @ 081017B4
	tileset_tiles offset_gAreaTileset_TownMinishHoles_2_0, 0x6000000, 0x70C0, 1
	tileset_palette_set 117, 1

gAreaTileset_TownMinishHoles_3:: @ 081017CC
	tileset_tiles offset_gAreaTileset_TownMinishHoles_3_0, 0x6000000, 0x7E40, 1
	tileset_palette_set 118, 1

gAreaTileset_TownMinishHoles_4:: @ 081017E4
	tileset_tiles offset_gAreaTileset_TownMinishHoles_4_0, 0x6000000, 0x7240, 1
	tileset_palette_set 119, 1

gAreaTileset_TownMinishHoles_5:: @ 081017FC
	tileset_tiles offset_gAreaTileset_TownMinishHoles_5_0, 0x6000000, 0x8900, 1
	tileset_palette_set 129, 1

gAreaTileset_TownMinishHoles_6:: @ 08101814
	tileset_tiles offset_gAreaTileset_TownMinishHoles_6_0, 0x6000000, 0xBEC0, 1
	tileset_palette_set 124, 1

gAreaTileset_TownMinishHoles_7:: @ 0810182C
	tileset_tiles offset_gAreaTileset_TownMinishHoles_7_0, 0x6000000, 0xA480, 1
	tileset_palette_set 123, 1

gAreaTileset_TownMinishHoles_8:: @ 08101844
	tileset_tiles offset_gAreaTileset_TownMinishHoles_8_0, 0x6000000, 0xB0C0, 1
	tileset_palette_set 122, 1

gAreaTilesets_TownMinishHoles:: @ 0810185C
	.4byte gAreaTileset_TownMinishHoles_0
	.4byte gAreaTileset_TownMinishHoles_1
	.4byte gAreaTileset_TownMinishHoles_2
	.4byte gAreaTileset_TownMinishHoles_3
	.4byte gAreaTileset_TownMinishHoles_4
	.4byte gAreaTileset_TownMinishHoles_5
	.4byte gAreaTileset_TownMinishHoles_6
	.4byte gAreaTileset_TownMinishHoles_7
	.4byte gAreaTileset_TownMinishHoles_8

gAreaTileset_HouseInteriors1_0:: @ 08101880
	tileset_tiles offset_gAreaTileset_HouseInteriors1_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HouseInteriors1_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 51, 1

gAreaTilesets_HouseInteriors1:: @ 081018B0
	.4byte gAreaTileset_HouseInteriors1_0

gAreaTileset_HouseInteriors2_0:: @ 081018B4
	tileset_tiles offset_gAreaTileset_HouseInteriors2_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HouseInteriors2_2_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 52, 1

gAreaTileset_HouseInteriors2_1:: @ 081018E4
	tileset_tiles offset_gAreaTileset_HouseInteriors2_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HouseInteriors2_2_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 168, 1

gAreaTileset_HouseInteriors2_2:: @ 08101914
	tileset_tiles offset_gAreaTileset_HouseInteriors2_2_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HouseInteriors2_2_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 157, 1

gAreaTilesets_HouseInteriors2:: @ 08101944
	.4byte gAreaTileset_HouseInteriors2_0
	.4byte gAreaTileset_HouseInteriors2_1
	.4byte gAreaTileset_HouseInteriors2_2

gAreaTileset_HouseInteriors4_0:: @ 08101950
	tileset_tiles offset_gAreaTileset_HouseInteriors4_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HouseInteriors4_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 89, 1

gAreaTilesets_HouseInteriors4:: @ 08101980
	.4byte gAreaTileset_HouseInteriors4_0

gAreaTileset_HouseInteriors3_0:: @ 08101984
	tileset_tiles offset_gAreaTileset_HouseInteriors3_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HouseInteriors3_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 53, 1

gAreaTilesets_HouseInteriors3:: @ 081019B4
	.4byte gAreaTileset_HouseInteriors3_0

gAreaTileset_TreeInteriors_0:: @ 081019B8
	tileset_tiles offset_gAreaTileset_TreeInteriors_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_TreeInteriors_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 13, 1

gAreaTilesets_TreeInteriors:: @ 081019E8
	.4byte gAreaTileset_TreeInteriors_0

gAreaTileset_Dojos_0:: @ 081019EC
	tileset_tiles offset_gAreaTileset_Dojos_5_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Dojos_5_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 150, 1

gAreaTileset_Dojos_1:: @ 08101A1C
	tileset_tiles offset_gAreaTileset_Dojos_5_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Dojos_5_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 149, 1

gAreaTileset_Dojos_2:: @ 08101A4C
	tileset_tiles offset_gAreaTileset_Dojos_5_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Dojos_5_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 148, 1

gAreaTileset_Dojos_3:: @ 08101A7C
	tileset_tiles offset_gAreaTileset_Dojos_5_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Dojos_5_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 146, 1

gAreaTileset_Dojos_4:: @ 08101AAC
	tileset_tiles offset_gAreaTileset_Dojos_5_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Dojos_5_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 147, 1

gAreaTileset_Dojos_5:: @ 08101ADC
	tileset_tiles offset_gAreaTileset_Dojos_5_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Dojos_5_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 45, 1

gAreaTilesets_Dojos:: @ 08101B0C
	.4byte gAreaTileset_Dojos_0
	.4byte gAreaTileset_Dojos_1
	.4byte gAreaTileset_Dojos_2
	.4byte gAreaTileset_Dojos_3
	.4byte gAreaTileset_Dojos_4
	.4byte gAreaTileset_Dojos_5

gAreaTileset_MinishCracks_0:: @ 08101B24
	tileset_tiles offset_gAreaTileset_MinishCracks_4_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishCracks_4_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 153, 1

gAreaTileset_MinishCracks_1:: @ 08101B54
	tileset_tiles offset_gAreaTileset_MinishCracks_4_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishCracks_4_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 152, 1

gAreaTileset_MinishCracks_2:: @ 08101B84
	tileset_tiles offset_gAreaTileset_MinishCracks_4_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishCracks_4_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 154, 1

gAreaTileset_MinishCracks_3:: @ 08101BB4
	tileset_tiles offset_gAreaTileset_MinishCracks_4_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishCracks_4_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 34, 1

gAreaTileset_MinishCracks_4:: @ 08101BE4
	tileset_tiles offset_gAreaTileset_MinishCracks_4_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishCracks_4_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 151, 1

gAreaTilesets_MinishCracks:: @ 08101C14
	.4byte gAreaTileset_MinishCracks_0
	.4byte gAreaTileset_MinishCracks_1
	.4byte gAreaTileset_MinishCracks_2
	.4byte gAreaTileset_MinishCracks_3
	.4byte gAreaTileset_MinishCracks_4

gAreaTileset_ArmosInteriors_0:: @ 08101C28
	tileset_tiles offset_gAreaTileset_ArmosInteriors_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_ArmosInteriors_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_ArmosInteriors_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 110, 1

gAreaTilesets_ArmosInteriors:: @ 08101C58
	.4byte gAreaTileset_ArmosInteriors_0

gAreaTileset_MinishRafters_0:: @ 08101C5C
	tileset_tiles offset_gAreaTileset_MinishRafters_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishRafters_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 121, 1

gAreaTilesets_MinishRafters:: @ 08101C8C
	.4byte gAreaTileset_MinishRafters_0

gAreaTileset_GoronCave_0:: @ 08101C90
	tileset_tiles offset_gAreaTileset_GoronCave_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_GoronCave_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_GoronCave_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 125, 1

gAreaTilesets_GoronCave:: @ 08101CC0
	.4byte gAreaTileset_GoronCave_0

gAreaTileset_WindTribeTower_0:: @ 08101CC4
	tileset_tiles offset_gAreaTileset_WindTribeTower_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_WindTribeTower_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 126, 1

gAreaTilesets_WindTribeTower:: @ 08101CF4
	.4byte gAreaTileset_WindTribeTower_0

gAreaTileset_WindTribeTowerRoof_0:: @ 08101CF8
	tileset_tiles offset_gAreaTileset_WindTribeTowerRoof_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_WindTribeTowerRoof_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_WindTribeTowerRoof_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 127, 1

gAreaTilesets_WindTribeTowerRoof:: @ 08101D28
	.4byte gAreaTileset_WindTribeTowerRoof_0

gAreaTileset_MinishCaves_0:: @ 08101D2C
	tileset_tiles offset_gAreaTileset_MinishCaves_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishCaves_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_MinishCaves_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 158, 1

gAreaTilesets_MinishCaves:: @ 08101D5C
	.4byte gAreaTileset_MinishCaves_0

gAreaTileset_CastleGardenMinishHoles_0:: @ 08101D60
	tileset_tiles offset_gAreaTileset_37_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_37_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_37_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 159, 1

gAreaTilesets_CastleGardenMinishHoles:: @ 08101D90
	.4byte gAreaTileset_CastleGardenMinishHoles_0

gAreaTileset_37_0:: @ 08101D94
	tileset_tiles offset_gAreaTileset_37_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_37_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_37_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 160, 1

gAreaTilesets_37:: @ 08101DC4
	.4byte gAreaTileset_37_0

gAreaTileset_EzloCutscene_0:: @ 08101DC8
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_EzloCutscene_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 161, 1

gAreaTilesets_EzloCutscene:: @ 08101DF8
	.4byte gAreaTileset_EzloCutscene_0

gAreaTileset_HyruleTownUnderground_0:: @ 08101DFC
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 109, 1

gAreaTilesets_HyruleTownUnderground:: @ 08101E2C
	.4byte gAreaTileset_HyruleTownUnderground_0

gAreaTileset_SimonsSimulation_0:: @ 08101E30
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 15, 1

gAreaTilesets_SimonsSimulation:: @ 08101E60
	.4byte gAreaTileset_SimonsSimulation_0

gAreaTileset_40_0:: @ 08101E64
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_SimonsSimulation_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 15, 1

gAreaTilesets_40:: @ 08101E94
	.4byte gAreaTileset_40_0

gAreaTileset_DeepwoodShrine_0:: @ 08101E98
	tileset_tiles offset_gAreaTileset_DeepwoodShrine_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DeepwoodShrine_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DeepwoodShrine_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 17, 1

gAreaTilesets_DeepwoodShrine:: @ 08101EC8
	.4byte gAreaTileset_DeepwoodShrine_0

gAreaTileset_DeepwoodShrineBoss_0:: @ 08101ECC
	tileset_tiles offset_gAreaTileset_DeepwoodShrineBoss_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DeepwoodShrineBoss_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DeepwoodShrineBoss_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 17, 1

gAreaTilesets_DeepwoodShrineBoss:: @ 08101EFC
	.4byte gAreaTileset_DeepwoodShrineBoss_0

gAreaTileset_DeepwoodShrineEntry_0:: @ 08101F00
	tileset_tiles offset_gAreaTileset_DeepwoodShrineEntry_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DeepwoodShrineEntry_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DeepwoodShrineEntry_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 90, 1

gAreaTilesets_DeepwoodShrineEntry:: @ 08101F30
	.4byte gAreaTileset_DeepwoodShrineEntry_0

gAreaTileset_CaveOfFlames_0:: @ 08101F34
	tileset_tiles offset_gAreaTileset_CaveOfFlames_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CaveOfFlames_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CaveOfFlames_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CaveOfFlames_0_3, 0x600F000, 0x800, 1
	tileset_palette_set 36, 1

gAreaTilesets_CaveOfFlames:: @ 08101F70
	.4byte gAreaTileset_CaveOfFlames_0

gAreaTileset_CaveOfFlamesBoss_0:: @ 08101F74
	tileset_tiles offset_gAreaTileset_CaveOfFlamesBoss_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CaveOfFlamesBoss_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CaveOfFlamesBoss_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 36, 1

gAreaTilesets_CaveOfFlamesBoss:: @ 08101FA4
	.4byte gAreaTileset_CaveOfFlamesBoss_0

gAreaTileset_CastorDarknut_0:: @ 08101FA8
	tileset_tiles offset_gAreaTileset_CastorDarknut_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CastorDarknut_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_CastorDarknut_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 37, 1

gAreaTilesets_FortressOfWinds:: @ 08101FD8
	.4byte gAreaTileset_CastorDarknut_0

gAreaTileset_FortressOfWindsTop_0:: @ 08101FDC
	tileset_tiles offset_gAreaTileset_FortressOfWindsTop_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_FortressOfWindsTop_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_FortressOfWindsTop_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 94, 1

gAreaTilesets_FortressOfWindsTop:: @ 0810200C
	.4byte gAreaTileset_FortressOfWindsTop_0

gAreaTileset_InnerMazaal_0:: @ 08102010
	tileset_tiles offset_gAreaTileset_InnerMazaal_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_InnerMazaal_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_InnerMazaal_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 128, 1

gAreaTilesets_InnerMazaal:: @ 08102040
	.4byte gAreaTileset_InnerMazaal_0

gAreaTileset_TempleOfDroplets_0:: @ 08102044
	tileset_tiles offset_gAreaTileset_HyruleTownMinishCaves_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleTownMinishCaves_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleTownMinishCaves_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 55, 1

gAreaTilesets_TempleOfDroplets:: @ 08102074
	.4byte gAreaTileset_TempleOfDroplets_0

gAreaTileset_61_0:: @ 08102078
	tileset_tiles offset_gAreaTileset_61_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_61_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_61_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 104, 1

gAreaTilesets_61:: @ 081020A8
	.4byte gAreaTileset_61_0

gAreaTileset_HyruleTownMinishCaves_0:: @ 081020AC
	tileset_tiles offset_gAreaTileset_HyruleTownMinishCaves_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleTownMinishCaves_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleTownMinishCaves_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 130, 1

gAreaTilesets_HyruleTownMinishCaves:: @ 081020DC
	.4byte gAreaTileset_HyruleTownMinishCaves_0

gAreaTileset_RoyalCrypt_0:: @ 081020E0
	tileset_tiles offset_gAreaTileset_RoyalCrypt_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_RoyalCrypt_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_RoyalCrypt_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 60, 1

gAreaTilesets_RoyalCrypt:: @ 08102110
	.4byte gAreaTileset_RoyalCrypt_0

gAreaTileset_PalaceOfWinds_GyorgTornado:: @ 08102114
	tileset_tiles offset_gAreaTileset_PalaceOfWinds_GyorgTornado_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_PalaceOfWinds_GyorgTornado_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_PalaceOfWinds_GyorgTornado_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_PalaceOfWinds_GyorgTornado_3, 0x600F000, 0x800, 1
	tileset_palette_set 56, 1

gAreaTilesets_PalaceOfWinds:: @ 08102150
	.4byte gAreaTileset_PalaceOfWinds_GyorgTornado

gAreaTileset_PalaceOfWindsBoss_0:: @ 08102154
	tileset_tiles offset_gAreaTileset_PalaceOfWindsBoss_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_PalaceOfWindsBoss_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_PalaceOfWindsBoss_0_2, 0x600F000, 0x800, 1
	tileset_palette_set 162, 1

gAreaTilesets_PalaceOfWindsBoss:: @ 08102184
	.4byte gAreaTileset_PalaceOfWindsBoss_0

gAreaTileset_Sanctuary_0:: @ 08102188
	tileset_tiles offset_gAreaTileset_Sanctuary_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Sanctuary_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Sanctuary_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 57, 1

gAreaTilesets_Sanctuary:: @ 081021B8
	.4byte gAreaTileset_Sanctuary_0

gAreaTileset_HyruleCastle_0:: @ 081021BC
	tileset_tiles offset_gAreaTileset_HyruleCastle_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleCastle_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_HyruleCastle_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 58, 1

gAreaTilesets_HyruleCastle:: @ 081021EC
	.4byte gAreaTileset_HyruleCastle_0

gAreaTileset_SanctuaryEntrance_0:: @ 081021F0
	tileset_tiles offset_gAreaTileset_SanctuaryEntrance_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_SanctuaryEntrance_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_SanctuaryEntrance_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 145, 1

gAreaTilesets_SanctuaryEntrance:: @ 08102220
	.4byte gAreaTileset_SanctuaryEntrance_0

gAreaTileset_DarkHyruleCastle_1FEntrance:: @ 08102224
	tileset_tiles offset_gAreaTileset_DarkHyruleCastle_1FEntrance_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DarkHyruleCastle_1FEntrance_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DarkHyruleCastle_1FEntrance_2, 0x6008000, 0x4000, 1
	tileset_palette_set 59, 1

gAreaTilesets_DarkHyruleCastle:: @ 08102254
	.4byte gAreaTileset_DarkHyruleCastle_1FEntrance

gAreaTileset_DarkHyruleCastleOutside_0:: @ 08102258
	tileset_tiles offset_gAreaTileset_DarkHyruleCastleOutside_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DarkHyruleCastleOutside_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DarkHyruleCastleOutside_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 144, 1

gAreaTilesets_DarkHyruleCastleOutside:: @ 08102288
	.4byte gAreaTileset_DarkHyruleCastleOutside_0

gAreaTileset_DarkHyruleCastleBridge_0:: @ 0810228C
	tileset_tiles offset_gAreaTileset_DarkHyruleCastleBridge_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DarkHyruleCastleBridge_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_DarkHyruleCastleBridge_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 180, 1

gAreaTilesets_DarkHyruleCastleBridge:: @ 081022BC
	.4byte gAreaTileset_DarkHyruleCastleBridge_0

gAreaTileset_VaatisArms_0:: @ 081022C0
	tileset_tiles offset_gAreaTileset_VaatisArms_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VaatisArms_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_VaatisArms_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 155, 1

gAreaTilesets_VaatisArms:: @ 081022F0
	.4byte gAreaTileset_VaatisArms_0

gAreaTileset_Vaati3_0:: @ 081022F4
	tileset_tiles offset_gAreaTileset_Vaati3_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Vaati3_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Vaati3_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 156, 1

gAreaTilesets_Vaati3:: @ 08102324
	.4byte gAreaTileset_Vaati3_0

gAreaTileset_Vaati2_0:: @ 08102328
	tileset_tiles offset_gAreaTileset_Vaati2_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Vaati2_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Vaati2_0_2, 0x6008000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_Vaati2_0_3, 0x600F000, 0x800, 1
	tileset_palette_set 169, 1

gAreaTilesets_Vaati2:: @ 08102364
	.4byte gAreaTileset_Vaati2_0

gAreaTileset_45_0:: @ 08102368
	tileset_tiles offset_gAreaTileset_45_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 35, 1

gAreaTilesets_45:: @ 08102398
	.4byte gAreaTileset_45_0

gAreaTileset_CastorCaves_0:: @ 0810239C
	tileset_tiles offset_gAreaTileset_45_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 101, 1

gAreaTilesets_CastorCaves:: @ 081023CC
	.4byte gAreaTileset_CastorCaves_0

gAreaTileset_Caves_0:: @ 081023D0
	tileset_tiles offset_gAreaTileset_45_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 131, 1

gAreaTilesets_Caves:: @ 08102400
	.4byte gAreaTileset_Caves_0

gAreaTileset_VeilFallsCaves_0:: @ 08102404
	tileset_tiles offset_gAreaTileset_45_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 132, 1

gAreaTilesets_VeilFallsCaves:: @ 08102434
	.4byte gAreaTileset_VeilFallsCaves_0

gAreaTileset_RoyalValleyGraves_0:: @ 08102438
	tileset_tiles offset_gAreaTileset_45_0_0, 0x6000000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_1, 0x6004000, 0x4000, 1
	tileset_tiles offset_gAreaTileset_45_0_2, 0x6008000, 0x4000, 1
	tileset_palette_set 133, 1

gAreaTilesets_RoyalValleyGraves:: @ 08102468
	.4byte gAreaTileset_RoyalValleyGraves_0

gAreaTilesets:: @ 0810246C
	.4byte gAreaTilesets_MinishWoods             @ 0x0
	.4byte gAreaTilesets_MinishVillage           @ 0x1
	.4byte gAreaTilesets_HyruleTown              @ 0x2
	.4byte gAreaTilesets_HyruleField             @ 0x3
	.4byte gAreaTilesets_CastorWilds             @ 0x4
	.4byte gAreaTilesets_Ruins                   @ 0x5
	.4byte gAreaTilesets_MtCrenel                @ 0x6
	.4byte gAreaTilesets_CastleGarden            @ 0x7
	.4byte gAreaTilesets_CloudTops               @ 0x8
	.4byte gAreaTilesets_RoyalValley             @ 0x9
	.4byte gAreaTilesets_VeilFalls               @ 0xA
	.4byte gAreaTilesets_LakeHylia               @ 0xB
	.4byte gAreaTilesets_LakeWoodsCave           @ 0xC
	.4byte gAreaTilesets_Beanstalks              @ 0xD
	.4byte gAreaTilesets_MinishWoods             @ 0xE
	.4byte gAreaTilesets_HyruleDigCaves          @ 0xF
	.4byte gAreaTilesets_MelarisMine             @ 0x10
	.4byte gAreaTilesets_MinishPaths            @ 0x11
	.4byte gAreaTilesets_CrenelMinishPaths       @ 0x12
	.4byte gAreaTilesets_DigCaves1               @ 0x13
	.4byte gAreaTilesets_CrenelDigCave           @ 0x14
	.4byte gAreaTilesets_FestivalTown            @ 0x15
	.4byte gAreaTilesets_VeilFallsDigCave        @ 0x16
	.4byte gAreaTilesets_CastorWildsDigCave      @ 0x17
	.4byte gAreaTilesets_OuterFortressOfWinds    @ 0x18
	.4byte gAreaTilesets_HyliaDigCaves           @ 0x19
	.4byte gAreaTilesets_VeilFallsTop            @ 0x1A
	.4byte gAreaTilesets_Unused                  @ 0x1B
	.4byte gAreaTilesets_Unused                  @ 0x1C
	.4byte gAreaTilesets_Unused                  @ 0x1D
	.4byte gAreaTilesets_Unused                  @ 0x1E
	.4byte gAreaTilesets_Unused                  @ 0x1F
	.4byte gAreaTilesets_MinishHouseInteriors    @ 0x20
	.4byte gAreaTilesets_HouseInteriors1         @ 0x21
	.4byte gAreaTilesets_HouseInteriors2         @ 0x22
	.4byte gAreaTilesets_HouseInteriors3         @ 0x23
	.4byte gAreaTilesets_TreeInteriors           @ 0x24
	.4byte gAreaTilesets_Dojos                   @ 0x25
	.4byte gAreaTilesets_CrenelCaves             @ 0x26
	.4byte gAreaTilesets_MinishCracks            @ 0x27
	.4byte gAreaTilesets_HouseInteriors4         @ 0x28
	.4byte gAreaTilesets_GreatFairies            @ 0x29
	.4byte gAreaTilesets_CastorCaves             @ 0x2A
	.4byte gAreaTilesets_FortressOfWinds         @ 0x2B
	.4byte gAreaTilesets_ArmosInteriors          @ 0x2C
	.4byte gAreaTilesets_TownMinishHoles         @ 0x2D
	.4byte gAreaTilesets_MinishRafters           @ 0x2E
	.4byte gAreaTilesets_GoronCave               @ 0x2F
	.4byte gAreaTilesets_WindTribeTower          @ 0x30
	.4byte gAreaTilesets_WindTribeTowerRoof      @ 0x31
	.4byte gAreaTilesets_Caves                   @ 0x32
	.4byte gAreaTilesets_VeilFallsCaves          @ 0x33
	.4byte gAreaTilesets_RoyalValleyGraves       @ 0x34
	.4byte gAreaTilesets_MinishCaves             @ 0x35
	.4byte gAreaTilesets_CastleGardenMinishHoles @ 0x36
	.4byte gAreaTilesets_37                      @ 0x37
	.4byte gAreaTilesets_EzloCutscene            @ 0x38
	.4byte gAreaTilesets_Unused                  @ 0x39
	.4byte gAreaTilesets_Unused                  @ 0x3A
	.4byte gAreaTilesets_Unused                  @ 0x3B
	.4byte gAreaTilesets_Unused                  @ 0x3C
	.4byte gAreaTilesets_Unused                  @ 0x3D
	.4byte gAreaTilesets_Unused                  @ 0x3E
	.4byte gAreaTilesets_Unused                  @ 0x3F
	.4byte gAreaTilesets_40                      @ 0x40
	.4byte gAreaTilesets_HyruleTownUnderground   @ 0x41
	.4byte gAreaTilesets_40                      @ 0x42
	.4byte gAreaTilesets_40                      @ 0x43
	.4byte gAreaTilesets_SimonsSimulation        @ 0x44
	.4byte gAreaTilesets_45                      @ 0x45
	.4byte gAreaTilesets_45                      @ 0x46
	.4byte gAreaTilesets_45                      @ 0x47
	.4byte gAreaTilesets_DeepwoodShrine          @ 0x48
	.4byte gAreaTilesets_DeepwoodShrineBoss      @ 0x49
	.4byte gAreaTilesets_DeepwoodShrineEntry     @ 0x4A
	.4byte gAreaTilesets_Unused                  @ 0x4B
	.4byte gAreaTilesets_Unused                  @ 0x4C
	.4byte gAreaTilesets_DeepwoodShrine          @ 0x4D
	.4byte gAreaTilesets_DeepwoodShrine          @ 0x4E
	.4byte gAreaTilesets_DeepwoodShrineBoss      @ 0x4F
	.4byte gAreaTilesets_CaveOfFlames            @ 0x50
	.4byte gAreaTilesets_CaveOfFlamesBoss        @ 0x51
	.4byte gAreaTilesets_Unused                  @ 0x52
	.4byte gAreaTilesets_Unused                  @ 0x53
	.4byte gAreaTilesets_Unused                  @ 0x54
	.4byte gAreaTilesets_Unused                  @ 0x55
	.4byte gAreaTilesets_CaveOfFlames            @ 0x56
	.4byte gAreaTilesets_CaveOfFlames            @ 0x57
	.4byte gAreaTilesets_FortressOfWinds         @ 0x58
	.4byte gAreaTilesets_FortressOfWindsTop      @ 0x59
	.4byte gAreaTilesets_InnerMazaal             @ 0x5A
	.4byte gAreaTilesets_Unused                  @ 0x5B
	.4byte gAreaTilesets_Unused                  @ 0x5C
	.4byte gAreaTilesets_Unused                  @ 0x5D
	.4byte gAreaTilesets_Unused                  @ 0x5E
	.4byte gAreaTilesets_FortressOfWinds         @ 0x5F
	.4byte gAreaTilesets_TempleOfDroplets        @ 0x60
	.4byte gAreaTilesets_61                      @ 0x61
	.4byte gAreaTilesets_HyruleTownMinishCaves   @ 0x62
	.4byte gAreaTilesets_Unused                  @ 0x63
	.4byte gAreaTilesets_Unused                  @ 0x64
	.4byte gAreaTilesets_Unused                  @ 0x65
	.4byte gAreaTilesets_Unused                  @ 0x66
	.4byte gAreaTilesets_TempleOfDroplets        @ 0x67
	.4byte gAreaTilesets_RoyalCrypt              @ 0x68
	.4byte gAreaTilesets_Unused                  @ 0x69
	.4byte gAreaTilesets_Unused                  @ 0x6A
	.4byte gAreaTilesets_Unused                  @ 0x6B
	.4byte gAreaTilesets_Unused                  @ 0x6C
	.4byte gAreaTilesets_Unused                  @ 0x6D
	.4byte gAreaTilesets_Unused                  @ 0x6E
	.4byte gAreaTilesets_RoyalCrypt              @ 0x6F
	.4byte gAreaTilesets_PalaceOfWinds           @ 0x70
	.4byte gAreaTilesets_PalaceOfWindsBoss       @ 0x71
	.4byte gAreaTilesets_Unused                  @ 0x72
	.4byte gAreaTilesets_Unused                  @ 0x73
	.4byte gAreaTilesets_Unused                  @ 0x74
	.4byte gAreaTilesets_Unused                  @ 0x75
	.4byte gAreaTilesets_Unused                  @ 0x76
	.4byte gAreaTilesets_PalaceOfWinds           @ 0x77
	.4byte gAreaTilesets_Sanctuary               @ 0x78
	.4byte gAreaTilesets_Unused                  @ 0x79
	.4byte gAreaTilesets_Unused                  @ 0x7A
	.4byte gAreaTilesets_Unused                  @ 0x7B
	.4byte gAreaTilesets_Unused                  @ 0x7C
	.4byte gAreaTilesets_Unused                  @ 0x7D
	.4byte gAreaTilesets_Unused                  @ 0x7E
	.4byte gAreaTilesets_Sanctuary               @ 0x7F
	.4byte gAreaTilesets_HyruleCastle            @ 0x80
	.4byte gAreaTilesets_SanctuaryEntrance       @ 0x81
	.4byte gAreaTilesets_Unused                  @ 0x82
	.4byte gAreaTilesets_Unused                  @ 0x83
	.4byte gAreaTilesets_Unused                  @ 0x84
	.4byte gAreaTilesets_Unused                  @ 0x85
	.4byte gAreaTilesets_Unused                  @ 0x86
	.4byte gAreaTilesets_HyruleCastle            @ 0x87
	.4byte gAreaTilesets_DarkHyruleCastle        @ 0x88
	.4byte gAreaTilesets_DarkHyruleCastleOutside @ 0x89
	.4byte gAreaTilesets_VaatisArms              @ 0x8A
	.4byte gAreaTilesets_Vaati3                  @ 0x8B
	.4byte gAreaTilesets_Vaati2                  @ 0x8C
	.4byte gAreaTilesets_DarkHyruleCastleBridge  @ 0x8D
	.4byte gAreaTilesets_Unused                  @ 0x8E
	.4byte gAreaTilesets_DarkHyruleCastle        @ 0x8F
