	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gAreaTileset_Unused_0:: @ 08100CE4
	tileset_palette_set 0, 1

gAreaTilesets_Unused:: @ 08100CF0
	.4byte gAreaTileset_Unused_0

gTileset_MinishWoods_0:: @ 08100CF4
	tileset_tiles 0x3D0, 0x6000000, 0x4000, 1
	tileset_tiles 0x3024, 0x6004000, 0x4000, 1
	tileset_tiles 0x5614, 0x6008000, 0x4000, 1
	tileset_palette_set 28, 1

gTileset_MinishWoods_1:: @ 08100D24
	tileset_tiles 0xC3BE4, 0x6000000, 0x2000, 1
	tileset_tiles 0xC4BFC, 0x6008000, 0x2000, 1
	tileset_palette_set 21, 1

gAreaTilesets_MinishWoods:: @ 08100D48
	.4byte gTileset_MinishWoods_0
	.4byte gTileset_MinishWoods_1

gAreaTileset_LakeHylia_0:: @ 08100D50
	tileset_tiles 0xC634, 0x6000000, 0x4000, 1
	tileset_tiles 0xE640, 0x6004000, 0x4000, 1
	tileset_tiles 0x10C70, 0x6008000, 0x4000, 1
	tileset_palette_set 39, 1

gAreaTilesets_LakeHylia:: @ 08100D80
	.4byte gAreaTileset_LakeHylia_0

gAreaTileset_CastorWilds_0:: @ 08100D84
	tileset_tiles 0x16DB8, 0x6000000, 0x4000, 1
	tileset_tiles 0x199CC, 0x6004000, 0x4000, 1
	tileset_tiles 0x1C158, 0x6008000, 0x4000, 1
	tileset_palette_set 19, 1

gAreaTilesets_CastorWilds:: @ 08100DB4
	.4byte gAreaTileset_CastorWilds_0

gAreaTileset_Ruins_0:: @ 08100DB8
	tileset_tiles 0x16DB8, 0x6000000, 0x4000, 1
	tileset_tiles 0x199CC, 0x6004000, 0x4000, 1
	tileset_tiles 0x1C158, 0x6008000, 0x4000, 1
	tileset_palette_set 29, 1

gAreaTilesets_Ruins:: @ 08100DE8
	.4byte gAreaTileset_Ruins_0

gAreaTileset_HyruleTown_0:: @ 08100DEC
	tileset_tiles 0x2DCAC, 0x6000000, 0x4000, 1
	tileset_tiles 0x302CC, 0x6004000, 0x4000, 1
	tileset_tiles 0x32760, 0x6008000, 0x4000, 1
	tileset_palette_set 27, 1

gAreaTilesets_HyruleTown:: @ 08100E1C
	.4byte gAreaTileset_HyruleTown_0

gAreaTileset_FestivalTown_0:: @ 08100E20
	tileset_tiles 0x3467C, 0x6000000, 0x4000, 1
	tileset_tiles 0x36264, 0x6004000, 0x4000, 1
	tileset_tiles 0x386F8, 0x6008000, 0x4000, 1
	tileset_palette_set 170, 1

gAreaTilesets_FestivalTown:: @ 08100E50
	.4byte gAreaTileset_FestivalTown_0

gAreaTileset_MtCrenel_0:: @ 08100E54
	tileset_tiles 0x3D02C, 0x6000000, 0x4000, 1
	tileset_tiles 0x3F944, 0x6004000, 0x4000, 1
	tileset_tiles 0x41E84, 0x6008000, 0x4000, 1
	tileset_palette_set 30, 1

gAreaTilesets_MtCrenel:: @ 08100E84
	.4byte gAreaTileset_MtCrenel_0

gAreaTileset_HyruleField_0:: @ 08100E88
	tileset_tiles 0x49964, 0x6000000, 0x4000, 1
	tileset_tiles 0x4C134, 0x6004000, 0x4000, 1
	tileset_tiles 0x4EA0C, 0x6008000, 0x4000, 1
	tileset_tiles 0x60F68, 0x600F000, 0x800, 1
	tileset_palette_set 16, 1

gAreaTileset_HyruleField_1:: @ 08100EC4
	tileset_tiles 0x569D0, 0x6000000, 0x4000, 1
	tileset_tiles 0x59078, 0x6004000, 0x4000, 1
	tileset_tiles 0x5B950, 0x6008000, 0x4000, 1
	tileset_tiles 0x60F68, 0x600F000, 0x800, 1
	tileset_palette_set 67, 1

gAreaTileset_HyruleField_2:: @ 08100F00
	tileset_tiles 0x50844, 0x6000000, 0x4000, 1
	tileset_tiles 0x52A70, 0x6004000, 0x4000, 1
	tileset_tiles 0x55348, 0x6008000, 0x4000, 1
	tileset_tiles 0x60F68, 0x600F000, 0x800, 1
	tileset_palette_set 46, 1

gAreaTilesets_HyruleField:: @ 08100F3C
	.4byte gAreaTileset_HyruleField_0
	.4byte gAreaTileset_HyruleField_1
	.4byte gAreaTileset_HyruleField_2

gAreaTileset_CastleGarden_0:: @ 08100F48
	tileset_tiles 0x66C28, 0x6000000, 0x4000, 1
	tileset_tiles 0x68AD8, 0x6004000, 0x4000, 1
	tileset_tiles 0x6A7C0, 0x6008000, 0x4000, 1
	tileset_palette_set 31, 1

gAreaTilesets_CastleGarden:: @ 08100F78
	.4byte gAreaTileset_CastleGarden_0

gAreaTileset_CloudTops_0:: @ 08100F7C
	tileset_tiles 0x6EA9C, 0x6000000, 0x4000, 1
	tileset_tiles 0x701BC, 0x6004000, 0x4000, 1
	tileset_tiles 0x71A14, 0x6008000, 0x4000, 1
	tileset_tiles 0x77194, 0x600F000, 0x800, 1
	tileset_palette_set 32, 1

gAreaTilesets_CloudTops:: @ 08100FB8
	.4byte gAreaTileset_CloudTops_0

gAreaTileset_RoyalValley_0:: @ 08100FBC
	tileset_tiles 0x773A8, 0x6000000, 0x4000, 1
	tileset_tiles 0x79588, 0x6004000, 0x4000, 1
	tileset_tiles 0x7B084, 0x6008000, 0x4000, 1
	tileset_palette_set 38, 1

gAreaTilesets_RoyalValley:: @ 08100FEC
	.4byte gAreaTileset_RoyalValley_0

gAreaTileset_VeilFalls_0:: @ 08100FF0
	tileset_tiles 0x7FA54, 0x6000000, 0x4000, 1
	tileset_tiles 0x81D54, 0x6004000, 0x4000, 1
	tileset_tiles 0x842A8, 0x6008000, 0x4000, 1
	tileset_palette_set 44, 1

gAreaTilesets_VeilFalls:: @ 08101020
	.4byte gAreaTileset_VeilFalls_0

gAreaTileset_VeilFallsTop_0:: @ 08101024
	tileset_tiles 0x7FA54, 0x6000000, 0x4000, 1
	tileset_tiles 0x81D54, 0x6004000, 0x4000, 1
	tileset_tiles 0x86984, 0x6008000, 0x4000, 1
	tileset_palette_set 44, 1

gAreaTilesets_VeilFallsTop:: @ 08101054
	.4byte gAreaTileset_VeilFallsTop_0

gAreaTileset_Beanstalks_0:: @ 08101058
	tileset_tiles 0x88188, 0x6000000, 0x4000, 1
	tileset_tiles 0x89218, 0x6004000, 0x4000, 1
	tileset_tiles 0x89E04, 0x6008000, 0x4000, 1
	tileset_tiles 0x8B9A4, 0x600F000, 0x800, 1
	tileset_palette_set 41, 1

gAreaTilesets_Beanstalks:: @ 08101094
	.4byte gAreaTileset_Beanstalks_0

gAreaTileset_CrenelCaves_0:: @ 08101098
	tileset_tiles 0x8D160, 0x6000000, 0x4000, 1
	tileset_tiles 0x8FAF0, 0x6004000, 0x4000, 1
	tileset_tiles 0x92434, 0x6008000, 0x4000, 1
	tileset_palette_set 62, 1

gAreaTilesets_CrenelCaves:: @ 081010C8
	.4byte gAreaTileset_CrenelCaves_0

gAreaTileset_GreatFairies_0:: @ 081010CC
	tileset_tiles 0x9A388, 0x6000000, 0x4000, 1
	tileset_tiles 0x9C1A4, 0x6004000, 0x4000, 1
	tileset_tiles 0x9D704, 0x6008000, 0x4000, 1
	tileset_palette_set 92, 1

gAreaTileset_GreatFairies_1:: @ 081010FC
	tileset_tiles 0x9A388, 0x6000000, 0x4000, 1
	tileset_tiles 0x9C1A4, 0x6004000, 0x4000, 1
	tileset_tiles 0x9D704, 0x6008000, 0x4000, 1
	tileset_palette_set 102, 1

gAreaTileset_GreatFairies_2:: @ 0810112C
	tileset_tiles 0x9A388, 0x6000000, 0x4000, 1
	tileset_tiles 0x9C1A4, 0x6004000, 0x4000, 1
	tileset_tiles 0x9D704, 0x6008000, 0x4000, 1
	tileset_palette_set 103, 1

gAreaTilesets_GreatFairies:: @ 0810115C
	.4byte gAreaTileset_GreatFairies_0
	.4byte gAreaTileset_GreatFairies_1
	.4byte gAreaTileset_GreatFairies_2

gAreaTileset_LakeWoodsCave_0:: @ 08101168
	tileset_tiles 0x3D0, 0x6000000, 0x4000, 1
	tileset_tiles 0x3024, 0x6004000, 0x4000, 1
	tileset_tiles 0x5614, 0x6008000, 0x4000, 1
	tileset_tiles 0xC3BE4, 0x6001000, 0x2000, 1
	tileset_tiles 0xC4BFC, 0x6009000, 0x2000, 1
	tileset_palette_set 21, 1

gAreaTilesets_LakeWoodsCave:: @ 081011B0
	.4byte gAreaTileset_LakeWoodsCave_0

gAreaTileset_HyruleDigCaves_0:: @ 081011B4
	tileset_tiles 0x2DCAC, 0x6000000, 0x4000, 1
	tileset_tiles 0x302CC, 0x6004000, 0x4000, 1
	tileset_tiles 0x32760, 0x6008000, 0x4000, 1
	tileset_tiles 0xC5600, 0x6001000, 0x2000, 1
	tileset_tiles 0xC6420, 0x6009000, 0x2000, 1
	tileset_palette_set 54, 1

gAreaTilesets_HyruleDigCaves:: @ 081011FC
	.4byte gAreaTileset_HyruleDigCaves_0

gAreaTileset_DigCaves1_0:: @ 08101200
	tileset_tiles 0x49964, 0x6000000, 0x4000, 1
	tileset_tiles 0x4C134, 0x6004000, 0x4000, 1
	tileset_tiles 0x4EA0C, 0x6008000, 0x4000, 1
	tileset_tiles 0xC8B0C, 0x6001000, 0x2000, 1
	tileset_tiles 0xC99EC, 0x6009000, 0x2000, 1
	tileset_palette_set 85, 1

gAreaTilesets_DigCaves1:: @ 08101248
	.4byte gAreaTileset_DigCaves1_0

gAreaTileset_CrenelDigCave_0:: @ 0810124C
	tileset_tiles 0x3D02C, 0x6000000, 0x4000, 1
	tileset_tiles 0x3F944, 0x6004000, 0x4000, 1
	tileset_tiles 0x41E84, 0x6008000, 0x4000, 1
	tileset_tiles 0xC6DF8, 0x6001000, 0x2000, 1
	tileset_tiles 0xC7F60, 0x6009000, 0x2000, 1
	tileset_palette_set 33, 1

gAreaTilesets_CrenelDigCave:: @ 08101294
	.4byte gAreaTileset_CrenelDigCave_0

gAreaTileset_VeilFallsDigCave_0:: @ 08101298
	tileset_tiles 0x7FA54, 0x6000000, 0x4000, 1
	tileset_tiles 0x81D54, 0x6004000, 0x4000, 1
	tileset_tiles 0x842A8, 0x6008000, 0x4000, 1
	tileset_tiles 0xC6DF8, 0x6001000, 0x2000, 1
	tileset_tiles 0xC7F60, 0x6009000, 0x2000, 1
	tileset_palette_set 99, 1

gAreaTilesets_VeilFallsDigCave:: @ 081012E0
	.4byte gAreaTileset_VeilFallsDigCave_0

gAreaTileset_CastorWildsDigCave_0:: @ 081012E4
	tileset_tiles 0x16DB8, 0x6000000, 0x4000, 1
	tileset_tiles 0x199CC, 0x6004000, 0x4000, 1
	tileset_tiles 0x1C158, 0x6008000, 0x4000, 1
	tileset_tiles 0xCA4C0, 0x6001000, 0x2000, 1
	tileset_tiles 0xCB858, 0x6009000, 0x2000, 1
	tileset_palette_set 100, 1

gAreaTilesets_CastorWildsDigCave:: @ 0810132C
	.4byte gAreaTileset_CastorWildsDigCave_0

gAreaTileset_OuterFortressOfWinds_0:: @ 08101330
	tileset_tiles 0x16DB8, 0x6000000, 0x4000, 1
	tileset_tiles 0x199CC, 0x6004000, 0x4000, 1
	tileset_tiles 0x1C158, 0x6008000, 0x4000, 1
	tileset_tiles 0xCA4C0, 0x6001000, 0x2000, 1
	tileset_tiles 0xCB858, 0x6009000, 0x2000, 1
	tileset_palette_set 167, 1

gAreaTilesets_OuterFortressOfWinds:: @ 08101378
	.4byte gAreaTileset_OuterFortressOfWinds_0

gAreaTileset_HyliaDigCaves_0:: @ 0810137C
	tileset_tiles 0xC634, 0x6000000, 0x4000, 1
	tileset_tiles 0xE640, 0x6004000, 0x4000, 1
	tileset_tiles 0x10C70, 0x6008000, 0x4000, 1
	tileset_tiles 0xCC334, 0x6001000, 0x2000, 1
	tileset_tiles 0xCCF64, 0x6009000, 0x2000, 1
	tileset_palette_set 20, 1

gAreaTilesets_HyliaDigCaves:: @ 081013C4
	.4byte gAreaTileset_HyliaDigCaves_0

gAreaTileset_MinishVillage_0:: @ 081013C8
	tileset_tiles 0xD39BC, 0x6000000, 0x4000, 1
	tileset_tiles 0xD5434, 0x6004000, 0x4000, 1
	tileset_tiles 0xD76F4, 0x6008000, 0x4000, 1
	tileset_palette_set 14, 1

gAreaTileset_MinishVillage_1:: @ 081013F8
	tileset_tiles 0xDCC34, 0x6000000, 0x4000, 1
	tileset_tiles 0xDDFCC, 0x6004000, 0x4000, 1
	tileset_tiles 0xE028C, 0x6008000, 0x4000, 1
	tileset_palette_set 25, 1

gAreaTilesets_MinishVillage:: @ 08101428
	.4byte gAreaTileset_MinishVillage_0
	.4byte gAreaTileset_MinishVillage_1

gAreaTileset_MelarisMine_0:: @ 08101430
	tileset_tiles 0xE28EC, 0x6000000, 0x4000, 1
	tileset_tiles 0xE4D74, 0x6004000, 0x4000, 1
	tileset_tiles 0xE6994, 0x6008000, 0x4000, 1
	tileset_palette_set 61, 1

gAreaTilesets_MelarisMine:: @ 08101460
	.4byte gAreaTileset_MelarisMine_0

gAreaTileset_MinishPaths1_0:: @ 08101464
	tileset_tiles 0xEB00C, 0x6000000, 0x4000, 1
	tileset_tiles 0xECB90, 0x6004000, 0x4000, 1
	tileset_palette_set 18, 1

gAreaTileset_MinishPaths1_1:: @ 08101488
	tileset_tiles 0xEB00C, 0x6000000, 0x4000, 1
	tileset_tiles 0xECB90, 0x6004000, 0x4000, 1
	tileset_palette_set 63, 1

gAreaTileset_MinishPaths1_2:: @ 081014AC
	tileset_tiles 0xEB00C, 0x6000000, 0x4000, 1
	tileset_tiles 0xECB90, 0x6004000, 0x4000, 1
	tileset_palette_set 64, 1

gAreaTilesets_MinishPaths1:: @ 081014D0
	.4byte gAreaTileset_MinishPaths1_0
	.4byte gAreaTileset_MinishPaths1_1
	.4byte gAreaTileset_MinishPaths1_2

gAreaTileset_CrenelMinishPaths_0:: @ 081014DC
	tileset_tiles 0xEFE04, 0x6000000, 0x4000, 1
	tileset_tiles 0xF1644, 0x6004000, 0x4000, 1
	tileset_palette_set 65, 1

gAreaTileset_CrenelMinishPaths_1:: @ 08101500
	tileset_tiles 0xF2E74, 0x6000000, 0x4000, 1
	tileset_tiles 0xF4160, 0x6004000, 0x4000, 1
	tileset_palette_set 66, 1

gAreaTileset_CrenelMinishPaths_2:: @ 08101524
	tileset_tiles 0xF2E74, 0x6000000, 0x4000, 1
	tileset_tiles 0xF4160, 0x6004000, 0x4000, 1
	tileset_palette_set 93, 1

gAreaTilesets_CrenelMinishPaths:: @ 08101548
	.4byte gAreaTileset_CrenelMinishPaths_0
	.4byte gAreaTileset_CrenelMinishPaths_1
	.4byte gAreaTileset_CrenelMinishPaths_2

gAreaTileset_MinishHouseInteriors_0:: @ 08101554
	tileset_tiles 0x13A218, 0x6000000, 0x8740, 1
	tileset_palette_set 68, 1

gAreaTileset_MinishHouseInteriors_1:: @ 0810156C
	tileset_tiles 0x13F620, 0x6000000, 0x7540, 1
	tileset_palette_set 69, 1

gAreaTileset_MinishHouseInteriors_2:: @ 08101584
	tileset_tiles 0x1427B8, 0x6000000, 0x4B40, 1
	tileset_palette_set 70, 1

gAreaTileset_MinishHouseInteriors_3:: @ 0810159C
	tileset_tiles 0x14506C, 0x6000000, 0x4A40, 1
	tileset_palette_set 71, 1

gAreaTileset_MinishHouseInteriors_4:: @ 081015B4
	tileset_tiles 0x14789C, 0x6000000, 0x4980, 1
	tileset_palette_set 72, 1

gAreaTileset_MinishHouseInteriors_5:: @ 081015CC
	tileset_tiles 0x149FC8, 0x6000000, 0x4D80, 1
	tileset_palette_set 73, 1

gAreaTileset_MinishHouseInteriors_6:: @ 081015E4
	tileset_tiles 0x14CD90, 0x6000000, 0x8E40, 1
	tileset_palette_set 74, 1

gAreaTileset_MinishHouseInteriors_7:: @ 081015FC
	tileset_tiles 0x152324, 0x6000000, 0x7E00, 1
	tileset_palette_set 75, 1

gAreaTileset_MinishHouseInteriors_8:: @ 08101614
	tileset_tiles 0x1562EC, 0x6000000, 0x9F40, 1
	tileset_palette_set 76, 1

gAreaTileset_MinishHouseInteriors_9:: @ 0810162C
	tileset_tiles 0x15A834, 0x6000000, 0x7980, 1
	tileset_palette_set 86, 1

gAreaTileset_MinishHouseInteriors_10:: @ 08101644
	tileset_tiles 0x15DAE0, 0x6000000, 0x7B40, 1
	tileset_palette_set 87, 1

gAreaTileset_MinishHouseInteriors_11:: @ 0810165C
	tileset_tiles 0x16100C, 0x6000000, 0x69C0, 1
	tileset_palette_set 88, 1

gAreaTileset_MinishHouseInteriors_12:: @ 08101674
	tileset_tiles 0x169738, 0x6000000, 0x5D80, 1
	tileset_palette_set 77, 1

gAreaTileset_MinishHouseInteriors_13:: @ 0810168C
	tileset_tiles 0x16CB98, 0x6000000, 0x5CC0, 1
	tileset_palette_set 78, 1

gAreaTileset_MinishHouseInteriors_14:: @ 081016A4
	tileset_tiles 0x16FEE8, 0x6000000, 0x5B00, 1
	tileset_palette_set 79, 1

gAreaTileset_MinishHouseInteriors_15:: @ 081016BC
	tileset_tiles 0x1732E8, 0x6000000, 0x5240, 1
	tileset_palette_set 80, 1

gAreaTileset_MinishHouseInteriors_16:: @ 081016D4
	tileset_tiles 0x175638, 0x6000000, 0x5C40, 1
	tileset_palette_set 81, 1

gAreaTileset_MinishHouseInteriors_17:: @ 081016EC
	tileset_tiles 0x178B08, 0x6000000, 0x5740, 1
	tileset_palette_set 82, 1

gAreaTileset_MinishHouseInteriors_18:: @ 08101704
	tileset_tiles 0x17B854, 0x6000000, 0x6180, 1
	tileset_palette_set 83, 1

gAreaTileset_MinishHouseInteriors_19:: @ 0810171C
	tileset_tiles 0x17EE9C, 0x6000000, 0x5C80, 1
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
	tileset_tiles 0x1823BC, 0x6000000, 0x6100, 1
	tileset_palette_set 115, 1

gAreaTileset_TownMinishHoles_1:: @ 0810179C
	tileset_tiles 0x184B10, 0x6000000, 0x7DC0, 1
	tileset_palette_set 116, 1

gAreaTileset_TownMinishHoles_2:: @ 081017B4
	tileset_tiles 0x187A3C, 0x6000000, 0x70C0, 1
	tileset_palette_set 117, 1

gAreaTileset_TownMinishHoles_3:: @ 081017CC
	tileset_tiles 0x18A5D4, 0x6000000, 0x7E40, 1
	tileset_palette_set 118, 1

gAreaTileset_TownMinishHoles_4:: @ 081017E4
	tileset_tiles 0x18D530, 0x6000000, 0x7240, 1
	tileset_palette_set 119, 1

gAreaTileset_TownMinishHoles_5:: @ 081017FC
	tileset_tiles 0x18FF58, 0x6000000, 0x8900, 1
	tileset_palette_set 129, 1

gAreaTileset_TownMinishHoles_6:: @ 08101814
	tileset_tiles 0x193CD4, 0x6000000, 0xBEC0, 1
	tileset_palette_set 124, 1

gAreaTileset_TownMinishHoles_7:: @ 0810182C
	tileset_tiles 0x197688, 0x6000000, 0xA480, 1
	tileset_palette_set 123, 1

gAreaTileset_TownMinishHoles_8:: @ 08101844
	tileset_tiles 0x19C788, 0x6000000, 0xB0C0, 1
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
	tileset_tiles 0xF8D18, 0x6000000, 0x4000, 1
	tileset_tiles 0xFAD04, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 51, 1

gAreaTilesets_HouseInteriors1:: @ 081018B0
	.4byte gAreaTileset_HouseInteriors1_0

gAreaTileset_HouseInteriors2_0:: @ 081018B4
	tileset_tiles 0xFE38C, 0x6000000, 0x4000, 1
	tileset_tiles 0x100940, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 52, 1

gAreaTileset_HouseInteriors2_1:: @ 081018E4
	tileset_tiles 0xFE38C, 0x6000000, 0x4000, 1
	tileset_tiles 0x100940, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 168, 1

gAreaTileset_HouseInteriors2_2:: @ 08101914
	tileset_tiles 0xFE38C, 0x6000000, 0x4000, 1
	tileset_tiles 0x100940, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 157, 1

gAreaTilesets_HouseInteriors2:: @ 08101944
	.4byte gAreaTileset_HouseInteriors2_0
	.4byte gAreaTileset_HouseInteriors2_1
	.4byte gAreaTileset_HouseInteriors2_2

gAreaTileset_HouseInteriors4_0:: @ 08101950
	tileset_tiles 0x104044, 0x6000000, 0x4000, 1
	tileset_tiles 0x1060C4, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 89, 1

gAreaTilesets_HouseInteriors4:: @ 08101980
	.4byte gAreaTileset_HouseInteriors4_0

gAreaTileset_HouseInteriors3_0:: @ 08101984
	tileset_tiles 0x10984C, 0x6000000, 0x4000, 1
	tileset_tiles 0x10B930, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 53, 1

gAreaTilesets_HouseInteriors3:: @ 081019B4
	.4byte gAreaTileset_HouseInteriors3_0

gAreaTileset_TreeInteriors_0:: @ 081019B8
	tileset_tiles 0x10EC50, 0x6000000, 0x4000, 1
	tileset_tiles 0x110A78, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 13, 1

gAreaTilesets_TreeInteriors:: @ 081019E8
	.4byte gAreaTileset_TreeInteriors_0

gAreaTileset_Dojos_0:: @ 081019EC
	tileset_tiles 0x11919C, 0x6000000, 0x4000, 1
	tileset_tiles 0x11B020, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 150, 1

gAreaTileset_Dojos_1:: @ 08101A1C
	tileset_tiles 0x11919C, 0x6000000, 0x4000, 1
	tileset_tiles 0x11B020, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 149, 1

gAreaTileset_Dojos_2:: @ 08101A4C
	tileset_tiles 0x11919C, 0x6000000, 0x4000, 1
	tileset_tiles 0x11B020, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 148, 1

gAreaTileset_Dojos_3:: @ 08101A7C
	tileset_tiles 0x11919C, 0x6000000, 0x4000, 1
	tileset_tiles 0x11B020, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 146, 1

gAreaTileset_Dojos_4:: @ 08101AAC
	tileset_tiles 0x11919C, 0x6000000, 0x4000, 1
	tileset_tiles 0x11B020, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 147, 1

gAreaTileset_Dojos_5:: @ 08101ADC
	tileset_tiles 0x11919C, 0x6000000, 0x4000, 1
	tileset_tiles 0x11B020, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 45, 1

gAreaTilesets_Dojos:: @ 08101B0C
	.4byte gAreaTileset_Dojos_0
	.4byte gAreaTileset_Dojos_1
	.4byte gAreaTileset_Dojos_2
	.4byte gAreaTileset_Dojos_3
	.4byte gAreaTileset_Dojos_4
	.4byte gAreaTileset_Dojos_5

gAreaTileset_MinishCracks_0:: @ 08101B24
	tileset_tiles 0x113C98, 0x6000000, 0x4000, 1
	tileset_tiles 0x115ECC, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 153, 1

gAreaTileset_MinishCracks_1:: @ 08101B54
	tileset_tiles 0x113C98, 0x6000000, 0x4000, 1
	tileset_tiles 0x115ECC, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 152, 1

gAreaTileset_MinishCracks_2:: @ 08101B84
	tileset_tiles 0x113C98, 0x6000000, 0x4000, 1
	tileset_tiles 0x115ECC, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 154, 1

gAreaTileset_MinishCracks_3:: @ 08101BB4
	tileset_tiles 0x113C98, 0x6000000, 0x4000, 1
	tileset_tiles 0x115ECC, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 34, 1

gAreaTileset_MinishCracks_4:: @ 08101BE4
	tileset_tiles 0x113C98, 0x6000000, 0x4000, 1
	tileset_tiles 0x115ECC, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 151, 1

gAreaTilesets_MinishCracks:: @ 08101C14
	.4byte gAreaTileset_MinishCracks_0
	.4byte gAreaTileset_MinishCracks_1
	.4byte gAreaTileset_MinishCracks_2
	.4byte gAreaTileset_MinishCracks_3
	.4byte gAreaTileset_MinishCracks_4

gAreaTileset_ArmosInteriors_0:: @ 08101C28
	tileset_tiles 0xA0924, 0x6000000, 0x4000, 1
	tileset_tiles 0xA1AC0, 0x6004000, 0x4000, 1
	tileset_tiles 0xA36A4, 0x6008000, 0x4000, 1
	tileset_palette_set 110, 1

gAreaTilesets_ArmosInteriors:: @ 08101C58
	.4byte gAreaTileset_ArmosInteriors_0

gAreaTileset_MinishRafters_0:: @ 08101C5C
	tileset_tiles 0x11E2E4, 0x6000000, 0x4000, 1
	tileset_tiles 0x11FCDC, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 121, 1

gAreaTilesets_MinishRafters:: @ 08101C8C
	.4byte gAreaTileset_MinishRafters_0

gAreaTileset_GoronCave_0:: @ 08101C90
	tileset_tiles 0xA6900, 0x6000000, 0x4000, 1
	tileset_tiles 0xA8578, 0x6004000, 0x4000, 1
	tileset_tiles 0xAAA44, 0x6008000, 0x4000, 1
	tileset_palette_set 125, 1

gAreaTilesets_GoronCave:: @ 08101CC0
	.4byte gAreaTileset_GoronCave_0

gAreaTileset_WindTribeTower_0:: @ 08101CC4
	tileset_tiles 0x121254, 0x6000000, 0x4000, 1
	tileset_tiles 0x122F88, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 126, 1

gAreaTilesets_WindTribeTower:: @ 08101CF4
	.4byte gAreaTileset_WindTribeTower_0

gAreaTileset_WindTribeTowerRoof_0:: @ 08101CF8
	tileset_tiles 0x126224, 0x6000000, 0x4000, 1
	tileset_tiles 0x127B68, 0x6004000, 0x4000, 1
	tileset_tiles 0x129CE0, 0x6008000, 0x4000, 1
	tileset_palette_set 127, 1

gAreaTilesets_WindTribeTowerRoof:: @ 08101D28
	.4byte gAreaTileset_WindTribeTowerRoof_0

gAreaTileset_MinishCaves_0:: @ 08101D2C
	tileset_tiles 0xB39E0, 0x6000000, 0x4000, 1
	tileset_tiles 0xB5B40, 0x6004000, 0x4000, 1
	tileset_tiles 0xB7D48, 0x6008000, 0x4000, 1
	tileset_palette_set 158, 1

gAreaTilesets_MinishCaves:: @ 08101D5C
	.4byte gAreaTileset_MinishCaves_0

gAreaTileset_CastleGardenMinishHoles_0:: @ 08101D60
	tileset_tiles 0xBC8F4, 0x6000000, 0x4000, 1
	tileset_tiles 0xBDCB8, 0x6004000, 0x4000, 1
	tileset_tiles 0xBEE54, 0x6008000, 0x4000, 1
	tileset_palette_set 159, 1

gAreaTilesets_CastleGardenMinishHoles:: @ 08101D90
	.4byte gAreaTileset_CastleGardenMinishHoles_0

gAreaTileset_37_0:: @ 08101D94
	tileset_tiles 0xBC8F4, 0x6000000, 0x4000, 1
	tileset_tiles 0xBDCB8, 0x6004000, 0x4000, 1
	tileset_tiles 0xBEE54, 0x6008000, 0x4000, 1
	tileset_palette_set 160, 1

gAreaTilesets_37:: @ 08101DC4
	.4byte gAreaTileset_37_0

gAreaTileset_EzloCutscene_0:: @ 08101DC8
	tileset_tiles 0x12BB70, 0x6000000, 0x4000, 1
	tileset_tiles 0x12CD44, 0x6004000, 0x4000, 1
	tileset_tiles 0xF7308, 0x6008000, 0x4000, 1
	tileset_palette_set 161, 1

gAreaTilesets_EzloCutscene:: @ 08101DF8
	.4byte gAreaTileset_EzloCutscene_0

gAreaTileset_HyruleTownUnderground_0:: @ 08101DFC
	tileset_tiles 0x19FD10, 0x6000000, 0x4000, 1
	tileset_tiles 0x1A1C8C, 0x6004000, 0x4000, 1
	tileset_tiles 0x1A3BE0, 0x6008000, 0x4000, 1
	tileset_palette_set 109, 1

gAreaTilesets_HyruleTownUnderground:: @ 08101E2C
	.4byte gAreaTileset_HyruleTownUnderground_0

gAreaTileset_SimonsSimulation_0:: @ 08101E30
	tileset_tiles 0x19FD10, 0x6000000, 0x4000, 1
	tileset_tiles 0x1A1C8C, 0x6004000, 0x4000, 1
	tileset_tiles 0x1A3BE0, 0x6008000, 0x4000, 1
	tileset_palette_set 15, 1

gAreaTilesets_SimonsSimulation:: @ 08101E60
	.4byte gAreaTileset_SimonsSimulation_0

gAreaTileset_40_0:: @ 08101E64
	tileset_tiles 0x19FD10, 0x6000000, 0x4000, 1
	tileset_tiles 0x1A1C8C, 0x6004000, 0x4000, 1
	tileset_tiles 0x1A3BE0, 0x6008000, 0x4000, 1
	tileset_palette_set 15, 1

gAreaTilesets_40:: @ 08101E94
	.4byte gAreaTileset_40_0

gAreaTileset_DeepwoodShrine_0:: @ 08101E98
	tileset_tiles 0x1AB5F4, 0x6000000, 0x4000, 1
	tileset_tiles 0x1ADAE0, 0x6004000, 0x4000, 1
	tileset_tiles 0x1B007C, 0x6008000, 0x4000, 1
	tileset_palette_set 17, 1

gAreaTilesets_DeepwoodShrine:: @ 08101EC8
	.4byte gAreaTileset_DeepwoodShrine_0

gAreaTileset_DeepwoodShrineBoss_0:: @ 08101ECC
	tileset_tiles 0x1B68AC, 0x6000000, 0x4000, 1
	tileset_tiles 0x1B7708, 0x6004000, 0x4000, 1
	tileset_tiles 0x1B9668, 0x6008000, 0x4000, 1
	tileset_palette_set 17, 1

gAreaTilesets_DeepwoodShrineBoss:: @ 08101EFC
	.4byte gAreaTileset_DeepwoodShrineBoss_0

gAreaTileset_DeepwoodShrineEntry_0:: @ 08101F00
	tileset_tiles 0x1BB598, 0x6000000, 0x4000, 1
	tileset_tiles 0x1BCACC, 0x6004000, 0x4000, 1
	tileset_tiles 0x1BD320, 0x6008000, 0x4000, 1
	tileset_palette_set 90, 1

gAreaTilesets_DeepwoodShrineEntry:: @ 08101F30
	.4byte gAreaTileset_DeepwoodShrineEntry_0

gAreaTileset_CaveOfFlames_0:: @ 08101F34
	tileset_tiles 0x1C3044, 0x6000000, 0x4000, 1
	tileset_tiles 0x1C56F8, 0x6004000, 0x4000, 1
	tileset_tiles 0x1C7960, 0x6008000, 0x4000, 1
	tileset_tiles 0x1D6168, 0x600F000, 0x800, 1
	tileset_palette_set 36, 1

gAreaTilesets_CaveOfFlames:: @ 08101F70
	.4byte gAreaTileset_CaveOfFlames_0

gAreaTileset_CaveOfFlamesBoss_0:: @ 08101F74
	tileset_tiles 0x1CE024, 0x6000000, 0x4000, 1
	tileset_tiles 0x1CFB40, 0x6004000, 0x4000, 1
	tileset_tiles 0x1D1E98, 0x6008000, 0x4000, 1
	tileset_palette_set 36, 1

gAreaTilesets_CaveOfFlamesBoss:: @ 08101FA4
	.4byte gAreaTileset_CaveOfFlamesBoss_0

gAreaTileset_CastorDarknut_0:: @ 08101FA8
	tileset_tiles 0x1DACA4, 0x6000000, 0x4000, 1
	tileset_tiles 0x1DD2D0, 0x6004000, 0x4000, 1
	tileset_tiles 0x1DF4B4, 0x6008000, 0x4000, 1
	tileset_palette_set 37, 1

gAreaTilesets_CastorDarknut:: @ 08101FD8
	.4byte gAreaTileset_CastorDarknut_0

gAreaTileset_FortressOfWindsTop_0:: @ 08101FDC
	tileset_tiles 0x1EC07C, 0x6000000, 0x4000, 1
	tileset_tiles 0x1ED3E0, 0x6004000, 0x4000, 1
	tileset_tiles 0x1EEE8C, 0x6008000, 0x4000, 1
	tileset_palette_set 94, 1

gAreaTilesets_FortressOfWindsTop:: @ 0810200C
	.4byte gAreaTileset_FortressOfWindsTop_0

gAreaTileset_InnerMazaal_0:: @ 08102010
	tileset_tiles 0x1E5748, 0x6000000, 0x4000, 1
	tileset_tiles 0x1E7484, 0x6004000, 0x4000, 1
	tileset_tiles 0x1E89D0, 0x6008000, 0x4000, 1
	tileset_palette_set 128, 1

gAreaTilesets_InnerMazaal:: @ 08102040
	.4byte gAreaTileset_InnerMazaal_0

gAreaTileset_TempleOfDroplets_0:: @ 08102044
	tileset_tiles 0x1F5A1C, 0x6000000, 0x4000, 1
	tileset_tiles 0x1F7C44, 0x6004000, 0x4000, 1
	tileset_tiles 0x1FA2F0, 0x6008000, 0x4000, 1
	tileset_palette_set 55, 1

gAreaTilesets_TempleOfDroplets:: @ 08102074
	.4byte gAreaTileset_TempleOfDroplets_0

gAreaTileset_61_0:: @ 08102078
	tileset_tiles 0x20143C, 0x6000000, 0x4000, 1
	tileset_tiles 0x2031E8, 0x6004000, 0x4000, 1
	tileset_tiles 0x204370, 0x6008000, 0x4000, 1
	tileset_palette_set 104, 1

gAreaTilesets_61:: @ 081020A8
	.4byte gAreaTileset_61_0

gAreaTileset_HyruleTownMinishCaves_0:: @ 081020AC
	tileset_tiles 0x1F5A1C, 0x6000000, 0x4000, 1
	tileset_tiles 0x1F7C44, 0x6004000, 0x4000, 1
	tileset_tiles 0x1FA2F0, 0x6008000, 0x4000, 1
	tileset_palette_set 130, 1

gAreaTilesets_HyruleTownMinishCaves:: @ 081020DC
	.4byte gAreaTileset_HyruleTownMinishCaves_0

gAreaTileset_RoyalCrypt_0:: @ 081020E0
	tileset_tiles 0x20CFC4, 0x6000000, 0x4000, 1
	tileset_tiles 0x20EF84, 0x6004000, 0x4000, 1
	tileset_tiles 0x210B80, 0x6008000, 0x4000, 1
	tileset_palette_set 60, 1

gAreaTilesets_RoyalCrypt:: @ 08102110
	.4byte gAreaTileset_RoyalCrypt_0

gAreaTileset_PalaceOfWinds_0:: @ 08102114
	tileset_tiles 0x216F68, 0x6000000, 0x4000, 1
	tileset_tiles 0x219350, 0x6004000, 0x4000, 1
	tileset_tiles 0x21B4D8, 0x6008000, 0x4000, 1
	tileset_tiles 0x2210F8, 0x600F000, 0x800, 1
	tileset_palette_set 56, 1

gAreaTilesets_PalaceOfWinds:: @ 08102150
	.4byte gAreaTileset_PalaceOfWinds_0

gAreaTileset_PalaceOfWindsBoss_0:: @ 08102154
	tileset_tiles 0x22131C, 0x6000000, 0x4000, 1
	tileset_tiles 0x222634, 0x6004000, 0x4000, 1
	tileset_tiles 0x22449C, 0x600F000, 0x800, 1
	tileset_palette_set 162, 1

gAreaTilesets_PalaceOfWindsBoss:: @ 08102184
	.4byte gAreaTileset_PalaceOfWindsBoss_0

gAreaTileset_Sanctuary_0:: @ 08102188
	tileset_tiles 0x22E1DC, 0x6000000, 0x4000, 1
	tileset_tiles 0x22FF30, 0x6004000, 0x4000, 1
	tileset_tiles 0x231FB4, 0x6008000, 0x4000, 1
	tileset_palette_set 57, 1

gAreaTilesets_Sanctuary:: @ 081021B8
	.4byte gAreaTileset_Sanctuary_0

gAreaTileset_HyruleCastle_0:: @ 081021BC
	tileset_tiles 0x23794C, 0x6000000, 0x4000, 1
	tileset_tiles 0x239ADC, 0x6004000, 0x4000, 1
	tileset_tiles 0x23B854, 0x6008000, 0x4000, 1
	tileset_palette_set 58, 1

gAreaTilesets_HyruleCastle:: @ 081021EC
	.4byte gAreaTileset_HyruleCastle_0

gAreaTileset_SanctuaryEntrance_0:: @ 081021F0
	tileset_tiles 0x2423BC, 0x6000000, 0x4000, 1
	tileset_tiles 0x243EF8, 0x6004000, 0x4000, 1
	tileset_tiles 0x2454E4, 0x6008000, 0x4000, 1
	tileset_palette_set 145, 1

gAreaTilesets_SanctuaryEntrance:: @ 08102220
	.4byte gAreaTileset_SanctuaryEntrance_0

gAreaTileset_DarkHyruleCastle_0:: @ 08102224
	tileset_tiles 0x2474EC, 0x6000000, 0x4000, 1
	tileset_tiles 0x2496C0, 0x6004000, 0x4000, 1
	tileset_tiles 0x24B928, 0x6008000, 0x4000, 1
	tileset_palette_set 59, 1

gAreaTilesets_DarkHyruleCastle:: @ 08102254
	.4byte gAreaTileset_DarkHyruleCastle_0

gAreaTileset_DarkHyruleCastleOutside_0:: @ 08102258
	tileset_tiles 0x26E3BC, 0x6000000, 0x4000, 1
	tileset_tiles 0x2703AC, 0x6004000, 0x4000, 1
	tileset_tiles 0x272030, 0x6008000, 0x4000, 1
	tileset_palette_set 144, 1

gAreaTilesets_DarkHyruleCastleOutside:: @ 08102288
	.4byte gAreaTileset_DarkHyruleCastleOutside_0

gAreaTileset_DarkHyruleCastleBridge_0:: @ 0810228C
	tileset_tiles 0x252EF8, 0x6000000, 0x4000, 1
	tileset_tiles 0x25401C, 0x6004000, 0x4000, 1
	tileset_tiles 0x255758, 0x6008000, 0x4000, 1
	tileset_palette_set 180, 1

gAreaTilesets_DarkHyruleCastleBridge:: @ 081022BC
	.4byte gAreaTileset_DarkHyruleCastleBridge_0

gAreaTileset_VaatisArms_0:: @ 081022C0
	tileset_tiles 0x260D88, 0x6000000, 0x4000, 1
	tileset_tiles 0x262530, 0x6004000, 0x4000, 1
	tileset_tiles 0x262F04, 0x6008000, 0x4000, 1
	tileset_palette_set 155, 1

gAreaTilesets_VaatisArms:: @ 081022F0
	.4byte gAreaTileset_VaatisArms_0

gAreaTileset_Vaati3_0:: @ 081022F4
	tileset_tiles 0x258190, 0x6000000, 0x4000, 1
	tileset_tiles 0x25929C, 0x6004000, 0x4000, 1
	tileset_tiles 0x25A4B8, 0x6008000, 0x4000, 1
	tileset_palette_set 156, 1

gAreaTilesets_Vaati3:: @ 08102324
	.4byte gAreaTileset_Vaati3_0

gAreaTileset_Vaati2_0:: @ 08102328
	tileset_tiles 0x25D0B4, 0x6000000, 0x4000, 1
	tileset_tiles 0x25DB94, 0x6004000, 0x4000, 1
	tileset_tiles 0x25EDDC, 0x6008000, 0x4000, 1
	tileset_tiles 0x26E0C8, 0x600F000, 0x800, 1
	tileset_palette_set 169, 1

gAreaTilesets_Vaati2:: @ 08102364
	.4byte gAreaTileset_Vaati2_0

gAreaTileset_45_0:: @ 08102368
	tileset_tiles 0x8D160, 0x6000000, 0x4000, 1
	tileset_tiles 0x8FAF0, 0x6004000, 0x4000, 1
	tileset_tiles 0x92434, 0x6008000, 0x4000, 1
	tileset_palette_set 35, 1

gAreaTilesets_45:: @ 08102398
	.4byte gAreaTileset_45_0

gAreaTileset_CastorCaves_0:: @ 0810239C
	tileset_tiles 0x8D160, 0x6000000, 0x4000, 1
	tileset_tiles 0x8FAF0, 0x6004000, 0x4000, 1
	tileset_tiles 0x92434, 0x6008000, 0x4000, 1
	tileset_palette_set 101, 1

gAreaTilesets_CastorCaves:: @ 081023CC
	.4byte gAreaTileset_CastorCaves_0

gAreaTileset_Caves_0:: @ 081023D0
	tileset_tiles 0x8D160, 0x6000000, 0x4000, 1
	tileset_tiles 0x8FAF0, 0x6004000, 0x4000, 1
	tileset_tiles 0x92434, 0x6008000, 0x4000, 1
	tileset_palette_set 131, 1

gAreaTilesets_Caves:: @ 08102400
	.4byte gAreaTileset_Caves_0

gAreaTileset_VeilFallsCaves_0:: @ 08102404
	tileset_tiles 0x8D160, 0x6000000, 0x4000, 1
	tileset_tiles 0x8FAF0, 0x6004000, 0x4000, 1
	tileset_tiles 0x92434, 0x6008000, 0x4000, 1
	tileset_palette_set 132, 1

gAreaTilesets_VeilFallsCaves:: @ 08102434
	.4byte gAreaTileset_VeilFallsCaves_0

gAreaTileset_RoyalValleyGraves_0:: @ 08102438
	tileset_tiles 0x8D160, 0x6000000, 0x4000, 1
	tileset_tiles 0x8FAF0, 0x6004000, 0x4000, 1
	tileset_tiles 0x92434, 0x6008000, 0x4000, 1
	tileset_palette_set 133, 1

gAreaTilesets_RoyalValleyGraves:: @ 08102468
	.4byte gAreaTileset_RoyalValleyGraves_0

gAreaTilesets:: @ 0810246C
	.4byte gAreaTilesets_MinishWoods
	.4byte gAreaTilesets_MinishVillage
	.4byte gAreaTilesets_HyruleTown
	.4byte gAreaTilesets_HyruleField
	.4byte gAreaTilesets_CastorWilds
	.4byte gAreaTilesets_Ruins
	.4byte gAreaTilesets_MtCrenel
	.4byte gAreaTilesets_CastleGarden
	.4byte gAreaTilesets_CloudTops
	.4byte gAreaTilesets_RoyalValley
	.4byte gAreaTilesets_VeilFalls
	.4byte gAreaTilesets_LakeHylia
	.4byte gAreaTilesets_LakeWoodsCave
	.4byte gAreaTilesets_Beanstalks
	.4byte gAreaTilesets_MinishWoods
	.4byte gAreaTilesets_HyruleDigCaves
	.4byte gAreaTilesets_MelarisMine
	.4byte gAreaTilesets_MinishPaths1
	.4byte gAreaTilesets_CrenelMinishPaths
	.4byte gAreaTilesets_DigCaves1
	.4byte gAreaTilesets_CrenelDigCave
	.4byte gAreaTilesets_FestivalTown
	.4byte gAreaTilesets_VeilFallsDigCave
	.4byte gAreaTilesets_CastorWildsDigCave
	.4byte gAreaTilesets_OuterFortressOfWinds
	.4byte gAreaTilesets_HyliaDigCaves
	.4byte gAreaTilesets_VeilFallsTop
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_MinishHouseInteriors
	.4byte gAreaTilesets_HouseInteriors1
	.4byte gAreaTilesets_HouseInteriors2
	.4byte gAreaTilesets_HouseInteriors3
	.4byte gAreaTilesets_TreeInteriors
	.4byte gAreaTilesets_Dojos
	.4byte gAreaTilesets_CrenelCaves
	.4byte gAreaTilesets_MinishCracks
	.4byte gAreaTilesets_HouseInteriors4
	.4byte gAreaTilesets_GreatFairies
	.4byte gAreaTilesets_CastorCaves
	.4byte gAreaTilesets_CastorDarknut
	.4byte gAreaTilesets_ArmosInteriors
	.4byte gAreaTilesets_TownMinishHoles
	.4byte gAreaTilesets_MinishRafters
	.4byte gAreaTilesets_GoronCave
	.4byte gAreaTilesets_WindTribeTower
	.4byte gAreaTilesets_WindTribeTowerRoof
	.4byte gAreaTilesets_Caves
	.4byte gAreaTilesets_VeilFallsCaves
	.4byte gAreaTilesets_RoyalValleyGraves
	.4byte gAreaTilesets_MinishCaves
	.4byte gAreaTilesets_CastleGardenMinishHoles
	.4byte gAreaTilesets_37
	.4byte gAreaTilesets_EzloCutscene
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_40
	.4byte gAreaTilesets_HyruleTownUnderground
	.4byte gAreaTilesets_40
	.4byte gAreaTilesets_40
	.4byte gAreaTilesets_SimonsSimulation
	.4byte gAreaTilesets_45
	.4byte gAreaTilesets_45
	.4byte gAreaTilesets_45
	.4byte gAreaTilesets_DeepwoodShrine
	.4byte gAreaTilesets_DeepwoodShrineBoss
	.4byte gAreaTilesets_DeepwoodShrineEntry
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_DeepwoodShrine
	.4byte gAreaTilesets_DeepwoodShrine
	.4byte gAreaTilesets_DeepwoodShrineBoss
	.4byte gAreaTilesets_CaveOfFlames
	.4byte gAreaTilesets_CaveOfFlamesBoss
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_CaveOfFlames
	.4byte gAreaTilesets_CaveOfFlames
	.4byte gAreaTilesets_CastorDarknut
	.4byte gAreaTilesets_FortressOfWindsTop
	.4byte gAreaTilesets_InnerMazaal
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_CastorDarknut
	.4byte gAreaTilesets_TempleOfDroplets
	.4byte gAreaTilesets_61
	.4byte gAreaTilesets_HyruleTownMinishCaves
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_TempleOfDroplets
	.4byte gAreaTilesets_RoyalCrypt
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_RoyalCrypt
	.4byte gAreaTilesets_PalaceOfWinds
	.4byte gAreaTilesets_PalaceOfWindsBoss
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_PalaceOfWinds
	.4byte gAreaTilesets_Sanctuary
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Sanctuary
	.4byte gAreaTilesets_HyruleCastle
	.4byte gAreaTilesets_SanctuaryEntrance
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_HyruleCastle
	.4byte gAreaTilesets_DarkHyruleCastle
	.4byte gAreaTilesets_DarkHyruleCastleOutside
	.4byte gAreaTilesets_VaatisArms
	.4byte gAreaTilesets_Vaati3
	.4byte gAreaTilesets_Vaati2
	.4byte gAreaTilesets_DarkHyruleCastleBridge
	.4byte gAreaTilesets_Unused
	.4byte gAreaTilesets_DarkHyruleCastle
