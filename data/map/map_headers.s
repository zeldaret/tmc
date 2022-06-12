	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

	.include "map_offsets.inc"

gAreaRoomMap_MinishWoods_0:: @ 081032DC
	map_bottom offset_gAreaRoomMap_MinishWoods_0_0, 0x1F02, 1
	map_top offset_gAreaRoomMap_MinishWoods_0_1, 0x1F02, 1, 1

gAreaRoomMaps_MinishWoods:: @ 081032F4
	.4byte gAreaRoomMap_MinishWoods_0

gAreaRoomMap_LakeHylia_0:: @ 081032F8
	map_bottom offset_gAreaRoomMap_LakeHylia_0_0, 0x1680, 1
	map_top offset_gAreaRoomMap_LakeHylia_0_1, 0x1680, 1, 1

gAreaRoomMap_LakeHylia_1:: @ 08103310
	map_bottom offset_gAreaRoomMap_LakeHylia_1_0, 0x5E8, 1
	map_top offset_gAreaRoomMap_LakeHylia_1_1, 0x5E8, 1, 1

gAreaRoomMaps_LakeHylia:: @ 08103328
	.4byte gAreaRoomMap_LakeHylia_0
	.4byte gAreaRoomMap_LakeHylia_1

gAreaRoomMap_CastorWilds_0:: @ 08103330
	map_bottom offset_gAreaRoomMap_CastorWilds_0_0, 0x1D88, 1
	map_top offset_gAreaRoomMap_CastorWilds_0_1, 0x1D88, 1, 1

gAreaRoomMaps_CastorWilds:: @ 08103348
	.4byte gAreaRoomMap_CastorWilds_0

gAreaRoomMap_Ruins_0:: @ 0810334C
	map_bottom offset_gAreaRoomMap_Ruins_0_0, 0x3DE, 1
	map_top offset_gAreaRoomMap_Ruins_0_1, 0x3DE, 1, 1

gAreaRoomMap_Ruins_1:: @ 08103364
	map_bottom offset_gAreaRoomMap_Ruins_1_0, 0x186, 1
	map_top offset_gAreaRoomMap_Ruins_1_1, 0x186, 1, 1

gAreaRoomMap_Ruins_2:: @ 0810337C
	map_bottom offset_gAreaRoomMap_Ruins_2_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Ruins_2_1, 0x12C, 1, 1

gAreaRoomMap_Ruins_3:: @ 08103394
	map_bottom offset_gAreaRoomMap_Ruins_3_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Ruins_3_1, 0x12C, 1, 1

gAreaRoomMap_Ruins_4:: @ 081033AC
	map_bottom offset_gAreaRoomMap_Ruins_4_0, 0x420, 1
	map_top offset_gAreaRoomMap_Ruins_4_1, 0x420, 1, 1

gAreaRoomMap_Ruins_5:: @ 081033C4
	map_bottom offset_gAreaRoomMap_Ruins_5_0, 0x462, 1
	map_top offset_gAreaRoomMap_Ruins_5_1, 0x462, 1, 1

gAreaRoomMaps_Ruins:: @ 081033DC
	.4byte gAreaRoomMap_Ruins_0
	.4byte gAreaRoomMap_Ruins_1
	.4byte gAreaRoomMap_Ruins_2
	.4byte gAreaRoomMap_Ruins_3
	.4byte gAreaRoomMap_Ruins_4
	.4byte gAreaRoomMap_Ruins_5

gAreaRoomMap_HyruleTown_0:: @ 081033F4
	map_bottom offset_gAreaRoomMap_HyruleTown_0_0, 0x1D88, 1
	map_top offset_gAreaRoomMap_HyruleTown_0_1, 0x1D88, 1, 1

gAreaRoomMaps_HyruleTown:: @ 0810340C
	.4byte gAreaRoomMap_HyruleTown_0

gAreaRoomMap_FestivalTown_0:: @ 08103410
	map_bottom offset_gAreaRoomMap_FestivalTown_0_0, 0xBB8, 1
	map_top offset_gAreaRoomMap_FestivalTown_0_1, 0xBB8, 1, 1

gAreaRoomMaps_FestivalTown:: @ 08103428
	.4byte gAreaRoomMap_FestivalTown_0

gAreaRoomMap_MtCrenel_0:: @ 0810342C
	map_bottom offset_gAreaRoomMap_MtCrenel_0_0, 0x6E4, 1
	map_top offset_gAreaRoomMap_MtCrenel_0_1, 0x6E4, 1, 1

gAreaRoomMap_MtCrenel_1:: @ 08103444
	map_bottom offset_gAreaRoomMap_MtCrenel_1_0, 0x720, 1
	map_top offset_gAreaRoomMap_MtCrenel_1_1, 0x720, 1, 1

gAreaRoomMap_MtCrenel_2:: @ 0810345C
	map_bottom offset_gAreaRoomMap_MtCrenel_2_0, 0xB94, 1
	map_top offset_gAreaRoomMap_MtCrenel_2_1, 0xB94, 1, 1

gAreaRoomMap_MtCrenel_3:: @ 08103474
	map_bottom offset_gAreaRoomMap_MtCrenel_3_0, 0xB52, 1
	map_top offset_gAreaRoomMap_MtCrenel_3_1, 0xB52, 1, 1

gAreaRoomMap_MtCrenel_4:: @ 0810348C
	map_bottom offset_gAreaRoomMap_MtCrenel_4_0, 0xEC4, 1
	map_top offset_gAreaRoomMap_MtCrenel_4_1, 0xEC4, 1, 1

gAreaRoomMaps_MtCrenel:: @ 081034A4
	.4byte gAreaRoomMap_MtCrenel_0
	.4byte gAreaRoomMap_MtCrenel_1
	.4byte gAreaRoomMap_MtCrenel_2
	.4byte gAreaRoomMap_MtCrenel_3
	.4byte gAreaRoomMap_MtCrenel_4

gAreaRoomMap_HyruleField_0:: @ 081034B8
	map_bottom offset_gAreaRoomMap_HyruleField_0_0, 0x30C, 1
	map_top offset_gAreaRoomMap_HyruleField_0_1, 0x30C, 1, 1

gAreaRoomMap_HyruleField_1:: @ 081034D0
	map_data offset_gAreaRoomMap_HyruleField_7_0, 0x6000000, 0x4000, 1
	map_data offset_gAreaRoomMap_HyruleField_7_1, 0x6008000, 0x4000, 1
	.4byte 0x80000010, 0x0, 0x0
	map_bottom offset_gAreaRoomMap_HyruleField_1_3, 0x152A, 1
	map_top offset_gAreaRoomMap_HyruleField_1_4, 0x152A, 1, 1

gAreaRoomMap_HyruleField_2:: @ 0810350C
	map_bottom offset_gAreaRoomMap_HyruleField_2_0, 0x30C, 1
	map_top offset_gAreaRoomMap_HyruleField_2_1, 0x30C, 1, 1

gAreaRoomMap_HyruleField_3:: @ 08103524
	map_data offset_gAreaRoomMap_HyruleField_7_0, 0x6000000, 0x4000, 1
	map_data offset_gAreaRoomMap_HyruleField_7_1, 0x6008000, 0x4000, 1
	.4byte 0x80000010, 0x0, 0x0
	map_bottom offset_gAreaRoomMap_HyruleField_3_3, 0x3C0, 1
	map_top offset_gAreaRoomMap_HyruleField_3_4, 0x3C0, 1, 1

gAreaRoomMap_HyruleField_4:: @ 08103560
	map_data offset_gAreaRoomMap_HyruleField_5_0, 0x6000000, 0x4000, 1
	map_data offset_gAreaRoomMap_HyruleField_5_1, 0x6008000, 0x4000, 1
	.4byte 0x80000043, 0x0, 0x0
	map_bottom offset_gAreaRoomMap_HyruleField_4_3, 0x7F8, 1
	map_top offset_gAreaRoomMap_HyruleField_4_4, 0x7F8, 1, 1

gAreaRoomMap_HyruleField_5:: @ 0810359C
	map_data offset_gAreaRoomMap_HyruleField_5_0, 0x6000000, 0x4000, 1
	map_data offset_gAreaRoomMap_HyruleField_5_1, 0x6008000, 0x4000, 1
	.4byte 0x80000043, 0x0, 0x0
	map_bottom offset_gAreaRoomMap_HyruleField_5_3, 0x1518, 1
	map_top offset_gAreaRoomMap_HyruleField_5_4, 0x1518, 1, 1

gAreaRoomMap_HyruleField_6:: @ 081035D8
	map_data offset_gAreaRoomMap_HyruleField_6_0, 0x6000000, 0x4000, 1
	map_data offset_gAreaRoomMap_HyruleField_6_1, 0x6008000, 0x4000, 1
	.4byte 0x8000002E, 0x0, 0x0
	map_bottom offset_gAreaRoomMap_HyruleField_6_3, 0x189C, 1
	map_top offset_gAreaRoomMap_HyruleField_6_4, 0x189C, 1, 1

gAreaRoomMap_HyruleField_7:: @ 08103614
	map_data offset_gAreaRoomMap_HyruleField_7_0, 0x6000000, 0x4000, 1
	map_data offset_gAreaRoomMap_HyruleField_7_1, 0x6008000, 0x4000, 1
	.4byte 0x80000010, 0x0, 0x0
	map_bottom offset_gAreaRoomMap_HyruleField_7_3, 0xE10, 1
	map_top offset_gAreaRoomMap_HyruleField_7_4, 0xE10, 1, 1

gAreaRoomMap_HyruleField_8:: @ 08103650
	map_bottom offset_gAreaRoomMap_HyruleField_8_0, 0x960, 1
	map_top offset_gAreaRoomMap_HyruleField_8_1, 0x960, 1, 1

gAreaRoomMap_HyruleField_9:: @ 08103668
	map_bottom offset_gAreaRoomMap_HyruleField_9_0, 0x258, 1
	map_top offset_gAreaRoomMap_HyruleField_9_1, 0x258, 1, 1

gAreaRoomMaps_HyruleField:: @ 08103680
	.4byte gAreaRoomMap_HyruleField_0
	.4byte gAreaRoomMap_HyruleField_1
	.4byte gAreaRoomMap_HyruleField_2
	.4byte gAreaRoomMap_HyruleField_3
	.4byte gAreaRoomMap_HyruleField_4
	.4byte gAreaRoomMap_HyruleField_5
	.4byte gAreaRoomMap_HyruleField_6
	.4byte gAreaRoomMap_HyruleField_7
	.4byte gAreaRoomMap_HyruleField_8
	.4byte gAreaRoomMap_HyruleField_9

gAreaRoomMap_CastleGarden_0:: @ 081036A8
	map_bottom offset_gAreaRoomMap_CastleGarden_0_0, 0x103E, 1
	map_top offset_gAreaRoomMap_CastleGarden_0_1, 0x103E, 1, 1

gAreaRoomMaps_CastleGarden:: @ 081036C0
	.4byte gAreaRoomMap_CastleGarden_0

gAreaRoomMap_CloudTops_0:: @ 081036C4
	map_bottom offset_gAreaRoomMap_CloudTops_0_0, 0x1F02, 1
	map_top offset_gAreaRoomMap_CloudTops_0_1, 0x1F02, 1, 1

gAreaRoomMap_CloudTops_1:: @ 081036DC
	map_bottom offset_gAreaRoomMap_CloudTops_1_0, 0x1F02, 1
	map_top offset_gAreaRoomMap_CloudTops_1_1, 0x1F02, 1, 1

gAreaRoomMap_CloudTops_2:: @ 081036F4
	map_bottom offset_gAreaRoomMap_CloudTops_2_0, 0x1F02, 1
	map_top offset_gAreaRoomMap_CloudTops_2_1, 0x1F02, 1, 1

gAreaRoomMaps_CloudTops:: @ 0810370C
	.4byte gAreaRoomMap_CloudTops_0
	.4byte gAreaRoomMap_CloudTops_1
	.4byte gAreaRoomMap_CloudTops_2

gAreaRoomMap_RoyalValley_0:: @ 08103718
	map_bottom offset_gAreaRoomMap_RoyalValley_0_0, 0xEC4, 1
	map_top offset_gAreaRoomMap_RoyalValley_0_1, 0xEC4, 1, 1

gAreaRoomMap_RoyalValley_1:: @ 08103730
	map_bottom offset_gAreaRoomMap_RoyalValley_1_0, 0x12C, 1
	map_top offset_gAreaRoomMap_RoyalValley_1_1, 0x12C, 1, 1

gAreaRoomMaps_RoyalValley:: @ 08103748
	.4byte gAreaRoomMap_RoyalValley_0
	.4byte gAreaRoomMap_RoyalValley_1

gAreaRoomMap_VeilFalls_0:: @ 08103750
	map_bottom offset_gAreaRoomMap_VeilFalls_0_0, 0xEC4, 1
	map_top offset_gAreaRoomMap_VeilFalls_0_1, 0xEC4, 1, 1

gAreaRoomMaps_VeilFalls:: @ 08103768
	.4byte gAreaRoomMap_VeilFalls_0

gAreaRoomMap_VeilFallsTop_0:: @ 0810376C
	map_bottom offset_gAreaRoomMap_VeilFallsTop_0_0, 0x2D0, 1
	map_top offset_gAreaRoomMap_VeilFallsTop_0_1, 0x2D0, 1, 1

gAreaRoomMaps_VeilFallsTop:: @ 08103784
	.4byte gAreaRoomMap_VeilFallsTop_0

gAreaRoomMap_Beanstalks_0:: @ 08103788
	map_bottom offset_gAreaRoomMap_Beanstalks_0_0, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_1:: @ 08103794
	map_bottom offset_gAreaRoomMap_Beanstalks_1_0, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_2:: @ 081037A0
	map_bottom offset_gAreaRoomMap_Beanstalks_2_0, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_3:: @ 081037AC
	map_bottom offset_gAreaRoomMap_Beanstalks_3_0, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_4:: @ 081037B8
	map_bottom offset_gAreaRoomMap_Beanstalks_4_0, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_5:: @ 081037C4
	.4byte 0x80000000, gMapBottom+0x0004, 0x80002000
	map_top_special offset_gAreaRoomMap_Beanstalks_5_1, 0x800, 1, 1

gAreaRoomMaps_Beanstalks:: @ 081037DC
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_1
	.4byte gAreaRoomMap_Beanstalks_2
	.4byte gAreaRoomMap_Beanstalks_3
	.4byte gAreaRoomMap_Beanstalks_4
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_0
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5
	.4byte gAreaRoomMap_Beanstalks_5

gAreaRoomMap_CrenelCaves_0:: @ 0810385C
	map_bottom offset_gAreaRoomMap_CrenelCaves_0_0, 0xA8C, 1
	map_top offset_gAreaRoomMap_CrenelCaves_0_1, 0xA8C, 1, 1

gAreaRoomMap_CrenelCaves_1:: @ 08103874
	map_bottom offset_gAreaRoomMap_CrenelCaves_1_0, 0x14A, 1
	map_top offset_gAreaRoomMap_CrenelCaves_1_1, 0x14A, 1, 1

gAreaRoomMap_CrenelCaves_2:: @ 0810388C
	map_bottom offset_gAreaRoomMap_CrenelCaves_2_0, 0x3A2, 1
	map_top offset_gAreaRoomMap_CrenelCaves_2_1, 0x3A2, 1, 1

gAreaRoomMap_CrenelCaves_3:: @ 081038A4
	map_bottom offset_gAreaRoomMap_CrenelCaves_3_0, 0x168, 1
	map_top offset_gAreaRoomMap_CrenelCaves_3_1, 0x168, 1, 1

gAreaRoomMap_CrenelCaves_4:: @ 081038BC
	map_bottom offset_gAreaRoomMap_CrenelCaves_4_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CrenelCaves_4_1, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_5:: @ 081038D4
	map_bottom offset_gAreaRoomMap_CrenelCaves_5_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CrenelCaves_5_1, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_6:: @ 081038EC
	map_bottom offset_gAreaRoomMap_CrenelCaves_6_0, 0x168, 1
	map_top offset_gAreaRoomMap_CrenelCaves_6_1, 0x168, 1, 1

gAreaRoomMap_CrenelCaves_7:: @ 08103904
	map_bottom offset_gAreaRoomMap_CrenelCaves_7_0, 0x14A, 1
	map_top offset_gAreaRoomMap_CrenelCaves_7_1, 0x14A, 1, 1

gAreaRoomMap_CrenelCaves_8:: @ 0810391C
	map_bottom offset_gAreaRoomMap_CrenelCaves_8_0, 0x258, 1
	map_top offset_gAreaRoomMap_CrenelCaves_8_1, 0x258, 1, 1

gAreaRoomMap_CrenelCaves_9:: @ 08103934
	map_bottom offset_gAreaRoomMap_CrenelCaves_9_0, 0x12C, 0
	map_top offset_gAreaRoomMap_CrenelCaves_9_1, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_10:: @ 0810394C
	map_bottom offset_gAreaRoomMap_CrenelCaves_10_0, 0x2BC, 1
	map_top offset_gAreaRoomMap_CrenelCaves_10_1, 0x2BC, 1, 1

gAreaRoomMap_CrenelCaves_11:: @ 08103964
	map_bottom offset_gAreaRoomMap_CrenelCaves_11_0, 0x294, 1
	map_top offset_gAreaRoomMap_CrenelCaves_11_1, 0x294, 1, 1

gAreaRoomMap_CrenelCaves_12:: @ 0810397C
	map_bottom offset_gAreaRoomMap_CrenelCaves_12_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CrenelCaves_12_1, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_13:: @ 08103994
	map_bottom offset_gAreaRoomMap_CrenelCaves_13_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CrenelCaves_13_1, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_14:: @ 081039AC
	map_bottom offset_gAreaRoomMap_CrenelCaves_14_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CrenelCaves_14_1, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_15:: @ 081039C4
	map_bottom offset_gAreaRoomMap_CrenelCaves_15_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CrenelCaves_15_1, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_16:: @ 081039DC
	map_bottom offset_gAreaRoomMap_CrenelCaves_16_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_CrenelCaves_16_1, 0x1FE, 1, 1

gAreaRoomMaps_CrenelCaves:: @ 081039F4
	.4byte gAreaRoomMap_CrenelCaves_0
	.4byte gAreaRoomMap_CrenelCaves_1
	.4byte gAreaRoomMap_CrenelCaves_2
	.4byte gAreaRoomMap_CrenelCaves_3
	.4byte gAreaRoomMap_CrenelCaves_4
	.4byte gAreaRoomMap_CrenelCaves_5
	.4byte gAreaRoomMap_CrenelCaves_6
	.4byte gAreaRoomMap_CrenelCaves_7
	.4byte gAreaRoomMap_CrenelCaves_8
	.4byte gAreaRoomMap_CrenelCaves_9
	.4byte gAreaRoomMap_CrenelCaves_10
	.4byte gAreaRoomMap_CrenelCaves_11
	.4byte gAreaRoomMap_CrenelCaves_12
	.4byte gAreaRoomMap_CrenelCaves_13
	.4byte gAreaRoomMap_CrenelCaves_14
	.4byte gAreaRoomMap_CrenelCaves_15
	.4byte gAreaRoomMap_CrenelCaves_16

gAreaRoomMap_GreatFairies_0:: @ 08103A38
	map_bottom offset_gAreaRoomMap_GreatFairies_0_0, 0x21C, 1
	map_top offset_gAreaRoomMap_GreatFairies_0_1, 0x21C, 1, 1

gAreaRoomMap_GreatFairies_1:: @ 08103A50
	map_bottom offset_gAreaRoomMap_GreatFairies_1_0, 0x21C, 1
	map_top offset_gAreaRoomMap_GreatFairies_1_1, 0x21C, 1, 1

gAreaRoomMap_GreatFairies_2:: @ 08103A68
	map_bottom offset_gAreaRoomMap_GreatFairies_2_0, 0x21C, 1
	map_top offset_gAreaRoomMap_GreatFairies_2_1, 0x21C, 1, 1

gAreaRoomMaps_GreatFairies:: @ 08103A80
	.4byte gAreaRoomMap_GreatFairies_0
	.4byte gAreaRoomMap_GreatFairies_1
	.4byte gAreaRoomMap_GreatFairies_2
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused

gAreaRoomMap_LakeWoodsCave_0:: @ 08103AA0
	map_bottom offset_gAreaRoomMap_LakeWoodsCave_0_0, 0x1F02, 1
	map_top offset_gAreaRoomMap_LakeWoodsCave_0_1, 0x1F02, 1, 1

gAreaRoomMaps_LakeWoodsCave:: @ 08103AB8
	.4byte gAreaRoomMap_LakeWoodsCave_0

gAreaRoomMap_HyruleDigCaves_0:: @ 08103ABC
	map_bottom offset_gAreaRoomMap_HyruleDigCaves_0_0, 0x1D88, 1
	map_top offset_gAreaRoomMap_HyruleDigCaves_0_1, 0x1D88, 1, 1

gAreaRoomMaps_HyruleDigCaves:: @ 08103AD4
	.4byte gAreaRoomMap_HyruleDigCaves_0

gAreaRoomMap_DigCaves_0:: @ 08103AD8
	map_bottom offset_gAreaRoomMap_DigCaves_0_0, 0x7F8, 1
	map_top offset_gAreaRoomMap_DigCaves_0_1, 0x7F8, 1, 1

gAreaRoomMap_DigCaves_1:: @ 08103AF0
	map_bottom offset_gAreaRoomMap_DigCaves_1_0, 0xE10, 1
	map_top offset_gAreaRoomMap_DigCaves_1_1, 0xE10, 1, 1

gAreaRoomMaps_DigCaves1:: @ 08103B08
	.4byte gAreaRoomMap_DigCaves_0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_DigCaves_1

gAreaRoomMap_CrenelDigCave_0:: @ 08103B18
	map_bottom offset_gAreaRoomMap_CrenelDigCave_0_0, 0x7C0, 1
	map_top offset_gAreaRoomMap_CrenelDigCave_0_1, 0x7C0, 1, 1

gAreaRoomMaps_CrenelDigCave:: @ 08103B30
	.4byte gAreaRoomMap_CrenelDigCave_0

gAreaRoomMap_VeilFallsDigCave_0:: @ 08103B34
	map_bottom offset_gAreaRoomMap_VeilFallsDigCave_0_0, 0xEC4, 1
	map_top offset_gAreaRoomMap_VeilFallsDigCave_0_1, 0xEC4, 1, 1

gAreaRoomMaps_VeilFallsDigCave:: @ 08103B4C
	.4byte gAreaRoomMap_VeilFallsDigCave_0

gAreaRoomMap_CastorWildsDigCave_0:: @ 08103B50
	map_bottom offset_gAreaRoomMap_CastorWildsDigCave_0_0, 0x1D88, 1
	map_top offset_gAreaRoomMap_CastorWildsDigCave_0_1, 0x1D88, 1, 1

gAreaRoomMaps_CastorWildsDigCave:: @ 08103B68
	.4byte gAreaRoomMap_CastorWildsDigCave_0

gAreaRoomMap_OuterFortressOfWinds_0:: @ 08103B6C
	map_bottom offset_gAreaRoomMap_OuterFortressOfWinds_0_0, 0x5FE, 1
	map_top offset_gAreaRoomMap_OuterFortressOfWinds_0_1, 0x5FE, 1, 1

gAreaRoomMap_OuterFortressOfWinds_1:: @ 08103B84
	map_bottom offset_gAreaRoomMap_OuterFortressOfWinds_1_0, 0x938, 1
	map_top offset_gAreaRoomMap_OuterFortressOfWinds_1_1, 0x938, 1, 1

gAreaRoomMap_OuterFortressOfWinds_2:: @ 08103B9C
	map_bottom offset_gAreaRoomMap_OuterFortressOfWinds_2_0, 0x5FE, 1
	map_top offset_gAreaRoomMap_OuterFortressOfWinds_2_1, 0x5FE, 1, 1

gAreaRoomMap_OuterFortressOfWinds_3:: @ 08103BB4
	map_bottom offset_gAreaRoomMap_OuterFortressOfWinds_3_0, 0x1EE, 1
	map_top offset_gAreaRoomMap_OuterFortressOfWinds_3_1, 0x1EE, 1, 1

gAreaRoomMap_OuterFortressOfWinds_4:: @ 08103BCC
	map_bottom offset_gAreaRoomMap_OuterFortressOfWinds_4_0, 0x186, 1
	map_top offset_gAreaRoomMap_OuterFortressOfWinds_4_1, 0x186, 1, 1

gAreaRoomMaps_OuterFortressOfWinds:: @ 08103BE4
	.4byte gAreaRoomMap_OuterFortressOfWinds_0
	.4byte gAreaRoomMap_OuterFortressOfWinds_1
	.4byte gAreaRoomMap_OuterFortressOfWinds_2
	.4byte gAreaRoomMap_OuterFortressOfWinds_3
	.4byte gAreaRoomMap_OuterFortressOfWinds_4

gAreaRoomMap_HyliaDigCaves_0:: @ 08103BF8
	map_bottom offset_gAreaRoomMap_HyliaDigCaves_0_0, 0x220, 1
	map_top offset_gAreaRoomMap_HyliaDigCaves_0_1, 0x220, 1, 1

gAreaRoomMap_HyliaDigCaves_1:: @ 08103C10
	map_bottom offset_gAreaRoomMap_HyliaDigCaves_1_0, 0xD4A, 1
	map_top offset_gAreaRoomMap_HyliaDigCaves_1_1, 0xD4A, 1, 1

gAreaRoomMaps_HyliaDigCaves:: @ 08103C28
	.4byte gAreaRoomMap_HyliaDigCaves_0
	.4byte gAreaRoomMap_HyliaDigCaves_1

gAreaRoomMap_Empty_0:: @ 08103C30
	map_bottom offset_gAreaRoomMap_Empty_0_0, 0x1F02, 1
	map_top offset_gAreaRoomMap_Empty_0_1, 0x1F02, 1, 1

gAreaRoomMaps_Empty:: @ 08103C48
	.4byte gAreaRoomMap_Empty_0
	.4byte gAreaRoomMap_Empty_0

gAreaRoomMap_MinishVillage_0:: @ 08103C50
	map_bottom offset_gAreaRoomMap_MinishVillage_0_0, 0x1F02, 1
	map_top offset_gAreaRoomMap_MinishVillage_0_1, 0x1F02, 1, 1

gAreaRoomMap_MinishVillage_1:: @ 08103C68
	map_bottom offset_gAreaRoomMap_MinishVillage_1_0, 0x618, 1
	map_top offset_gAreaRoomMap_MinishVillage_1_1, 0x618, 1, 1

gAreaRoomMaps_MinishVillage:: @ 08103C80
	.4byte gAreaRoomMap_MinishVillage_0
	.4byte gAreaRoomMap_MinishVillage_1

gAreaRoomMap_MelarisMine_0:: @ 08103C88
	map_bottom offset_gAreaRoomMap_MelarisMine_0_0, 0xDB6, 1
	map_top offset_gAreaRoomMap_MelarisMine_0_1, 0xDB6, 1, 1

gAreaRoomMaps_MelarisMine:: @ 08103CA0
	.4byte gAreaRoomMap_MelarisMine_0

gAreaRoomMap_MinishPaths_0:: @ 08103CA4
	map_bottom offset_gAreaRoomMap_MinishPaths_0_0, 0x5DC, 1, 1

gAreaRoomMap_MinishPaths_1:: @ 08103CB0
	map_bottom offset_gAreaRoomMap_MinishPaths_1_0, 0x5DC, 1, 1

gAreaRoomMap_MinishPaths_2:: @ 08103CBC
	map_bottom offset_gAreaRoomMap_MinishPaths_2_0, 0x5DC, 1, 1

gAreaRoomMap_MinishPaths_3:: @ 08103CC8
	map_bottom offset_gAreaRoomMap_MinishPaths_3_0, 0x5DC, 1, 1

gAreaRoomMap_MinishPaths_4:: @ 08103CD4
	map_bottom offset_gAreaRoomMap_MinishPaths_4_0, 0x5DC, 1, 1

gAreaRoomMaps_MinishPaths:: @ 08103CE0
	.4byte gAreaRoomMap_MinishPaths_0
	.4byte gAreaRoomMap_MinishPaths_1
	.4byte gAreaRoomMap_MinishPaths_2
	.4byte gAreaRoomMap_MinishPaths_3
	.4byte gAreaRoomMap_MinishPaths_4

gAreaRoomMap_CrenelMinishPaths_0:: @ 08103CF4
	map_bottom offset_gAreaRoomMap_CrenelMinishPaths_0_0, 0x5DC, 1, 1

gAreaRoomMap_CrenelMinishPaths_1:: @ 08103D00
	map_bottom offset_gAreaRoomMap_CrenelMinishPaths_1_0, 0x5DC, 1, 1

gAreaRoomMap_CrenelMinishPaths_2:: @ 08103D0C
	map_bottom offset_gAreaRoomMap_CrenelMinishPaths_2_0, 0x4B0, 1, 1

gAreaRoomMap_CrenelMinishPaths_3:: @ 08103D18
	map_bottom offset_gAreaRoomMap_CrenelMinishPaths_3_0, 0x4B0, 1, 1

gAreaRoomMaps_CrenelMinishPaths:: @ 08103D24
	.4byte gAreaRoomMap_CrenelMinishPaths_0
	.4byte gAreaRoomMap_CrenelMinishPaths_1
	.4byte gAreaRoomMap_CrenelMinishPaths_2
	.4byte gAreaRoomMap_CrenelMinishPaths_3

gAreaRoomMap_MinishHouseInteriors_0:: @ 08103D34
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_0_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_0_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_1:: @ 08103D58
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_1_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_1_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_2:: @ 08103D7C
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_2_1, 0x1D0, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_2_2, 0x1000, 1, 1

gAreaRoomMap_MinishHouseInteriors_3:: @ 08103DA0
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_3_1, 0xA0, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_3_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_4:: @ 08103DC4
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_4_1, 0xA0, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_4_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_5:: @ 08103DE8
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_5_1, 0xA0, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_5_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_6:: @ 08103E0C
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_6_1, 0xA0, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_6_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_8:: @ 08103E30
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_8_1, 0xE1, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_8_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_7:: @ 08103E54
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_7_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_7_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_9:: @ 08103E78
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_9_1, 0x159, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_9_2, 0x1000, 1, 1

gAreaRoomMap_MinishHouseInteriors_10:: @ 08103E9C
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_10_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_10_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_11:: @ 08103EC0
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_11_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_11_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_12:: @ 08103EE4
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_12_1, 0xDC, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_12_2, 0x1000, 1, 1

gAreaRoomMap_MinishHouseInteriors_13:: @ 08103F08
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_13_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_13_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_14:: @ 08103F2C
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_14_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_14_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_15:: @ 08103F50
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_15_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_15_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_16:: @ 08103F74
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_16_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_16_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_17:: @ 08103F98
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_17_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_17_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_18:: @ 08103FBC
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_18_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_18_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_19:: @ 08103FE0
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_19_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_19_2, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_20:: @ 08104004
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_MinishHouseInteriors_20_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_MinishHouseInteriors_20_2, 0x800, 1, 1

gAreaRoomMaps_MinishHouseInteriors:: @ 08104028
	.4byte gAreaRoomMap_MinishHouseInteriors_0
	.4byte gAreaRoomMap_MinishHouseInteriors_1
	.4byte gAreaRoomMap_MinishHouseInteriors_2
	.4byte gAreaRoomMap_MinishHouseInteriors_3
	.4byte gAreaRoomMap_MinishHouseInteriors_4
	.4byte gAreaRoomMap_MinishHouseInteriors_5
	.4byte gAreaRoomMap_MinishHouseInteriors_6
	.4byte gAreaRoomMap_MinishHouseInteriors_7
	.4byte gAreaRoomMap_MinishHouseInteriors_8
	.4byte gAreaRoomMap_MinishHouseInteriors_9
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_MinishHouseInteriors_10
	.4byte gAreaRoomMap_MinishHouseInteriors_11
	.4byte gAreaRoomMap_MinishHouseInteriors_12
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_MinishHouseInteriors_13
	.4byte gAreaRoomMap_MinishHouseInteriors_14
	.4byte gAreaRoomMap_MinishHouseInteriors_15
	.4byte gAreaRoomMap_MinishHouseInteriors_16
	.4byte gAreaRoomMap_MinishHouseInteriors_17
	.4byte gAreaRoomMap_MinishHouseInteriors_18
	.4byte gAreaRoomMap_MinishHouseInteriors_19
	.4byte gAreaRoomMap_MinishHouseInteriors_20

gAreaRoomMap_TownMinishHoles_0:: @ 081040C8
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_0_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_0_2, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_1:: @ 081040EC
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_1_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_1_2, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_2:: @ 08104110
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_2_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_2_2, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_3:: @ 08104134
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_3_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_3_2, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_4:: @ 08104158
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_4_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_4_2, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_5:: @ 0810417C
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_5_1, 0x96, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_5_2, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_6:: @ 081041A0
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_6_1, 0x24C, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_6_2, 0x2000, 1, 1

gAreaRoomMap_TownMinishHoles_7:: @ 081041C4
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_7_1, 0xE1, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_7_2, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_8:: @ 081041E8
	map_bottom offset_gAreaRoomMap_TownMinishHoles_8_0, 0x2000, 1
	collision_bottom offset_gAreaRoomMap_TownMinishHoles_8_1, 0x190, 1
	map_bottom_special offset_gAreaRoomMap_TownMinishHoles_8_2, 0x2000, 1, 1

gAreaRoomMaps_TownMinishHoles:: @ 0810420C
	.4byte gAreaRoomMap_TownMinishHoles_0
	.4byte gAreaRoomMap_TownMinishHoles_1
	.4byte gAreaRoomMap_TownMinishHoles_2
	.4byte gAreaRoomMap_TownMinishHoles_3
	.4byte gAreaRoomMap_TownMinishHoles_4
	.4byte gAreaRoomMap_TownMinishHoles_5
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_TownMinishHoles_6
	.4byte gAreaRoomMap_TownMinishHoles_7
	.4byte gAreaRoomMap_TownMinishHoles_8
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

gAreaRoomMap_HouseInteriors1_0:: @ 081042CC
	map_bottom offset_gAreaRoomMap_HouseInteriors1_0_0, 0x198, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_0_1, 0x198, 1, 1

gAreaRoomMap_HouseInteriors1_1:: @ 081042E4
	map_bottom offset_gAreaRoomMap_HouseInteriors1_1_0, 0x14A, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_1_1, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors1_2:: @ 081042FC
	map_bottom offset_gAreaRoomMap_HouseInteriors1_2_0, 0x14A, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_2_1, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors1_3:: @ 08104314
	map_bottom offset_gAreaRoomMap_HouseInteriors1_3_0, 0x2C0, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_3_1, 0x2C0, 1, 1

gAreaRoomMap_HouseInteriors1_4:: @ 0810432C
	map_bottom offset_gAreaRoomMap_HouseInteriors1_4_0, 0x1A4, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_4_1, 0x1A4, 1, 1

gAreaRoomMap_HouseInteriors1_5:: @ 08104344
	map_bottom offset_gAreaRoomMap_HouseInteriors1_5_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_5_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_6:: @ 0810435C
	map_bottom offset_gAreaRoomMap_HouseInteriors1_6_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_6_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_7:: @ 08104374
	map_bottom offset_gAreaRoomMap_HouseInteriors1_7_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_7_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_8:: @ 0810438C
	map_bottom offset_gAreaRoomMap_HouseInteriors1_8_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_8_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_9:: @ 081043A4
	map_bottom offset_gAreaRoomMap_HouseInteriors1_9_0, 0x348, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_9_1, 0x348, 1, 1

gAreaRoomMap_HouseInteriors1_10:: @ 081043BC
	map_bottom offset_gAreaRoomMap_HouseInteriors1_10_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_10_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_11:: @ 081043D4
	map_bottom offset_gAreaRoomMap_HouseInteriors1_11_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_11_1, 0x1C2, 1, 1

gAreaRoomMap_HouseInteriors1_12:: @ 081043EC
	map_bottom offset_gAreaRoomMap_HouseInteriors1_12_0, 0x1B8, 1
	map_top offset_gAreaRoomMap_HouseInteriors1_12_1, 0x1B8, 1, 1

gAreaRoomMaps_HouseInteriors1:: @ 08104404
	.4byte gAreaRoomMap_HouseInteriors1_0
	.4byte gAreaRoomMap_HouseInteriors1_1
	.4byte gAreaRoomMap_HouseInteriors1_2
	.4byte gAreaRoomMap_HouseInteriors1_3
	.4byte gAreaRoomMap_HouseInteriors1_4
	.4byte gAreaRoomMap_HouseInteriors1_5
	.4byte gAreaRoomMap_HouseInteriors1_6
	.4byte gAreaRoomMap_HouseInteriors1_7
	.4byte gAreaRoomMap_HouseInteriors1_8
	.4byte gAreaRoomMap_HouseInteriors1_9
	.4byte gAreaRoomMap_HouseInteriors1_10
	.4byte gAreaRoomMap_HouseInteriors1_11
	.4byte gAreaRoomMap_HouseInteriors1_12
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

gAreaRoomMap_HouseInteriors2_0:: @ 08104444
	map_bottom offset_gAreaRoomMap_HouseInteriors2_0_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_0_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_1:: @ 0810445C
	map_bottom offset_gAreaRoomMap_HouseInteriors2_1_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_1_1, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_2:: @ 08104474
	map_bottom offset_gAreaRoomMap_HouseInteriors2_2_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_2_1, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_3:: @ 0810448C
	map_bottom offset_gAreaRoomMap_HouseInteriors2_3_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_3_1, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_4:: @ 081044A4
	map_bottom offset_gAreaRoomMap_HouseInteriors2_4_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_4_1, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_5:: @ 081044BC
	map_bottom offset_gAreaRoomMap_HouseInteriors2_5_0, 0x14A, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_5_1, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors2_6:: @ 081044D4
	map_bottom offset_gAreaRoomMap_HouseInteriors2_6_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_6_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_7:: @ 081044EC
	map_bottom offset_gAreaRoomMap_HouseInteriors2_7_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_7_1, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_8:: @ 08104504
	map_bottom offset_gAreaRoomMap_HouseInteriors2_8_0, 0x14A, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_8_1, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors2_9:: @ 0810451C
	map_bottom offset_gAreaRoomMap_HouseInteriors2_9_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_9_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_10:: @ 08104534
	map_bottom offset_gAreaRoomMap_HouseInteriors2_10_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_10_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_11:: @ 0810454C
	map_bottom offset_gAreaRoomMap_HouseInteriors2_11_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_11_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_12:: @ 08104564
	map_bottom offset_gAreaRoomMap_HouseInteriors2_12_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_12_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_13:: @ 0810457C
	map_bottom offset_gAreaRoomMap_HouseInteriors2_13_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_13_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_14:: @ 08104594
	map_bottom offset_gAreaRoomMap_HouseInteriors2_14_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_14_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_15:: @ 081045AC
	map_bottom offset_gAreaRoomMap_HouseInteriors2_15_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_15_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_16:: @ 081045C4
	map_bottom offset_gAreaRoomMap_HouseInteriors2_16_0, 0x14A, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_16_1, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors2_17:: @ 081045DC
	map_bottom offset_gAreaRoomMap_HouseInteriors2_17_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_17_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_18:: @ 081045F4
	map_bottom offset_gAreaRoomMap_HouseInteriors2_18_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors2_18_1, 0x12C, 1, 1

gAreaRoomMaps_HouseInteriors2:: @ 0810460C
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_1
	.4byte gAreaRoomMap_HouseInteriors2_2
	.4byte gAreaRoomMap_HouseInteriors2_3
	.4byte gAreaRoomMap_HouseInteriors2_4
	.4byte gAreaRoomMap_HouseInteriors2_5
	.4byte gAreaRoomMap_HouseInteriors2_6
	.4byte gAreaRoomMap_HouseInteriors2_7
	.4byte gAreaRoomMap_HouseInteriors2_8
	.4byte gAreaRoomMap_HouseInteriors2_9
	.4byte gAreaRoomMap_HouseInteriors2_10
	.4byte gAreaRoomMap_HouseInteriors2_11
	.4byte gAreaRoomMap_HouseInteriors2_12
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_13
	.4byte gAreaRoomMap_HouseInteriors2_14
	.4byte gAreaRoomMap_HouseInteriors2_15
	.4byte gAreaRoomMap_HouseInteriors2_16
	.4byte gAreaRoomMap_HouseInteriors2_17
	.4byte gAreaRoomMap_HouseInteriors2_18
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0
	.4byte gAreaRoomMap_HouseInteriors2_0

gAreaRoomMap_HouseInteriors4_0:: @ 081046CC
	map_bottom offset_gAreaRoomMap_HouseInteriors4_0_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors4_0_1, 0x168, 1, 1

gAreaRoomMap_HouseInteriors4_1:: @ 081046E4
	map_bottom offset_gAreaRoomMap_HouseInteriors4_1_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors4_1_1, 0x168, 1, 1

gAreaRoomMap_HouseInteriors4_2:: @ 081046FC
	map_bottom offset_gAreaRoomMap_HouseInteriors4_2_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors4_2_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors4_3:: @ 08104714
	map_bottom offset_gAreaRoomMap_HouseInteriors4_3_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors4_3_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors4_4:: @ 0810472C
	map_bottom offset_gAreaRoomMap_HouseInteriors4_4_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors4_4_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors4_5:: @ 08104744
	map_bottom offset_gAreaRoomMap_HouseInteriors4_5_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors4_5_1, 0x168, 1, 1

gAreaRoomMaps_HouseInteriors4:: @ 0810475C
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_1
	.4byte gAreaRoomMap_HouseInteriors4_2
	.4byte gAreaRoomMap_HouseInteriors4_3
	.4byte gAreaRoomMap_HouseInteriors4_4
	.4byte gAreaRoomMap_HouseInteriors4_5
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0
	.4byte gAreaRoomMap_HouseInteriors4_0

gAreaRoomMap_HouseInteriors3_0:: @ 0810479C
	map_bottom offset_gAreaRoomMap_HouseInteriors3_0_0, 0x186, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_0_1, 0x186, 1, 1

gAreaRoomMap_HouseInteriors3_1:: @ 081047B4
	map_bottom offset_gAreaRoomMap_HouseInteriors3_1_0, 0x186, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_1_1, 0x186, 1, 1

gAreaRoomMap_HouseInteriors3_2:: @ 081047CC
	map_bottom offset_gAreaRoomMap_HouseInteriors3_2_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_2_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors3_3:: @ 081047E4
	map_bottom offset_gAreaRoomMap_HouseInteriors3_3_0, 0x168, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_3_1, 0x168, 1, 1

gAreaRoomMap_HouseInteriors3_4:: @ 081047FC
	map_bottom offset_gAreaRoomMap_HouseInteriors3_4_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_4_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors3_5:: @ 08104814
	map_bottom offset_gAreaRoomMap_HouseInteriors3_5_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_5_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors3_6:: @ 0810482C
	map_bottom offset_gAreaRoomMap_HouseInteriors3_6_0, 0x14A, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_6_1, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors3_7:: @ 08104844
	map_bottom offset_gAreaRoomMap_HouseInteriors3_7_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_7_1, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors3_8:: @ 0810485C
	map_bottom offset_gAreaRoomMap_HouseInteriors3_8_0, 0x140, 1
	map_top offset_gAreaRoomMap_HouseInteriors3_8_1, 0x140, 1, 1

gAreaRoomMaps_HouseInteriors3:: @ 08104874
	.4byte gAreaRoomMap_HouseInteriors3_0
	.4byte gAreaRoomMap_HouseInteriors3_1
	.4byte gAreaRoomMap_HouseInteriors3_2
	.4byte gAreaRoomMap_HouseInteriors3_3
	.4byte gAreaRoomMap_HouseInteriors3_4
	.4byte gAreaRoomMap_HouseInteriors3_5
	.4byte gAreaRoomMap_HouseInteriors3_6
	.4byte gAreaRoomMap_HouseInteriors3_7
	.4byte gAreaRoomMap_HouseInteriors3_8

gAreaRoomMap_TreeInteriors_0:: @ 08104898
	map_bottom offset_gAreaRoomMap_TreeInteriors_0_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_0_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_1:: @ 081048B0
	map_bottom offset_gAreaRoomMap_TreeInteriors_1_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_1_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_2:: @ 081048C8
	map_bottom offset_gAreaRoomMap_TreeInteriors_2_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_2_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_3:: @ 081048E0
	map_bottom offset_gAreaRoomMap_TreeInteriors_3_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_3_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_4:: @ 081048F8
	map_bottom offset_gAreaRoomMap_TreeInteriors_4_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_4_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_5:: @ 08104910
	map_bottom offset_gAreaRoomMap_TreeInteriors_5_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_5_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_6:: @ 08104928
	map_bottom offset_gAreaRoomMap_TreeInteriors_6_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_6_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_7:: @ 08104940
	map_bottom offset_gAreaRoomMap_TreeInteriors_7_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_7_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_8:: @ 08104958
	map_bottom offset_gAreaRoomMap_TreeInteriors_8_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_8_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_9:: @ 08104970
	map_bottom offset_gAreaRoomMap_TreeInteriors_9_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_9_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_10:: @ 08104988
	map_bottom offset_gAreaRoomMap_TreeInteriors_10_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_10_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_11:: @ 081049A0
	map_bottom offset_gAreaRoomMap_TreeInteriors_11_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_11_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_12:: @ 081049B8
	map_bottom offset_gAreaRoomMap_TreeInteriors_12_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_12_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_13:: @ 081049D0
	map_bottom offset_gAreaRoomMap_TreeInteriors_13_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_13_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_14:: @ 081049E8
	map_bottom offset_gAreaRoomMap_TreeInteriors_14_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_14_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_15:: @ 08104A00
	map_bottom offset_gAreaRoomMap_TreeInteriors_15_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_15_1, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_16:: @ 08104A18
	map_bottom offset_gAreaRoomMap_TreeInteriors_16_0, 0x12C, 0
	map_top offset_gAreaRoomMap_TreeInteriors_16_1, 0x12C, 1, 1

gAreaRoomMaps_TreeInteriors:: @ 08104A30
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_0
	.4byte gAreaRoomMap_TreeInteriors_1
	.4byte gAreaRoomMap_TreeInteriors_2
	.4byte gAreaRoomMap_TreeInteriors_3
	.4byte gAreaRoomMap_TreeInteriors_4
	.4byte gAreaRoomMap_TreeInteriors_5
	.4byte gAreaRoomMap_TreeInteriors_6
	.4byte gAreaRoomMap_TreeInteriors_7
	.4byte gAreaRoomMap_TreeInteriors_8
	.4byte gAreaRoomMap_TreeInteriors_9
	.4byte gAreaRoomMap_TreeInteriors_10
	.4byte gAreaRoomMap_TreeInteriors_11
	.4byte gAreaRoomMap_TreeInteriors_12
	.4byte gAreaRoomMap_TreeInteriors_13
	.4byte gAreaRoomMap_TreeInteriors_14
	.4byte gAreaRoomMap_TreeInteriors_15
	.4byte gAreaRoomMap_TreeInteriors_16

gAreaRoomMap_Dojos_0:: @ 08104AB0
	map_bottom offset_gAreaRoomMap_Dojos_0_0, 0x168, 1
	map_top offset_gAreaRoomMap_Dojos_0_1, 0x168, 1, 1

gAreaRoomMap_Dojos_1:: @ 08104AC8
	map_bottom offset_gAreaRoomMap_Dojos_1_0, 0x168, 1
	map_top offset_gAreaRoomMap_Dojos_1_1, 0x168, 1, 1

gAreaRoomMap_Dojos_2:: @ 08104AE0
	map_bottom offset_gAreaRoomMap_Dojos_2_0, 0x168, 1
	map_top offset_gAreaRoomMap_Dojos_2_1, 0x168, 1, 1

gAreaRoomMap_Dojos_3:: @ 08104AF8
	map_bottom offset_gAreaRoomMap_Dojos_3_0, 0x168, 1
	map_top offset_gAreaRoomMap_Dojos_3_1, 0x168, 1, 1

gAreaRoomMap_Dojos_4:: @ 08104B10
	map_bottom offset_gAreaRoomMap_Dojos_4_0, 0x168, 1
	map_top offset_gAreaRoomMap_Dojos_4_1, 0x168, 1, 1

gAreaRoomMap_Dojos_5:: @ 08104B28
	map_bottom offset_gAreaRoomMap_Dojos_5_0, 0x168, 1
	map_top offset_gAreaRoomMap_Dojos_5_1, 0x168, 1, 1

gAreaRoomMap_Dojos_6:: @ 08104B40
	map_bottom offset_gAreaRoomMap_Dojos_6_0, 0x168, 1
	map_top offset_gAreaRoomMap_Dojos_6_1, 0x168, 1, 1

gAreaRoomMap_Dojos_7:: @ 08104B58
	map_bottom offset_gAreaRoomMap_Dojos_7_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Dojos_7_1, 0x12C, 1, 1

gAreaRoomMap_Dojos_8:: @ 08104B70
	map_bottom offset_gAreaRoomMap_Dojos_8_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Dojos_8_1, 0x12C, 1, 1

gAreaRoomMap_Dojos_9:: @ 08104B88
	map_bottom offset_gAreaRoomMap_Dojos_9_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Dojos_9_1, 0x12C, 1, 1

gAreaRoomMap_Dojos_10:: @ 08104BA0
	map_bottom offset_gAreaRoomMap_Dojos_10_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Dojos_10_1, 0x12C, 1, 1

gAreaRoomMap_Dojos_11:: @ 08104BB8
	map_bottom offset_gAreaRoomMap_Dojos_11_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Dojos_11_1, 0x12C, 1, 1

gAreaRoomMap_Dojos_12:: @ 08104BD0
	map_bottom offset_gAreaRoomMap_Dojos_12_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Dojos_12_1, 0x12C, 1, 1

gAreaRoomMap_Dojos_13:: @ 08104BE8
	map_bottom offset_gAreaRoomMap_Dojos_13_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Dojos_13_1, 0x12C, 1, 1

gAreaRoomMaps_Dojos:: @ 08104C00
	.4byte gAreaRoomMap_Dojos_0
	.4byte gAreaRoomMap_Dojos_1
	.4byte gAreaRoomMap_Dojos_2
	.4byte gAreaRoomMap_Dojos_3
	.4byte gAreaRoomMap_Dojos_4
	.4byte gAreaRoomMap_Dojos_5
	.4byte gAreaRoomMap_Dojos_6
	.4byte gAreaRoomMap_Dojos_7
	.4byte gAreaRoomMap_Dojos_8
	.4byte gAreaRoomMap_Dojos_9
	.4byte gAreaRoomMap_Dojos_10
	.4byte gAreaRoomMap_Dojos_11
	.4byte gAreaRoomMap_Dojos_12
	.4byte gAreaRoomMap_Dojos_13
	.4byte gAreaRoomMap_Dojos_0
	.4byte gAreaRoomMap_Dojos_0

gAreaRoomMap_MinishCracks_0:: @ 08104C40
	map_bottom offset_gAreaRoomMap_MinishCracks_0_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_0_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_1:: @ 08104C58
	map_bottom offset_gAreaRoomMap_MinishCracks_1_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_1_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_2:: @ 08104C70
	map_bottom offset_gAreaRoomMap_MinishCracks_2_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_2_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_3:: @ 08104C88
	map_bottom offset_gAreaRoomMap_MinishCracks_3_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_3_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_4:: @ 08104CA0
	map_bottom offset_gAreaRoomMap_MinishCracks_4_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_4_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_5:: @ 08104CB8
	map_bottom offset_gAreaRoomMap_MinishCracks_5_0, 0x12C, 1
	map_top offset_gAreaRoomMap_MinishCracks_5_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_6:: @ 08104CD0
	map_bottom offset_gAreaRoomMap_MinishCracks_6_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_6_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_7:: @ 08104CE8
	map_bottom offset_gAreaRoomMap_MinishCracks_7_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_7_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_8:: @ 08104D00
	map_bottom offset_gAreaRoomMap_MinishCracks_8_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_8_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_9:: @ 08104D18
	map_bottom offset_gAreaRoomMap_MinishCracks_9_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_9_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_10:: @ 08104D30
	map_bottom offset_gAreaRoomMap_MinishCracks_10_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_10_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_11:: @ 08104D48
	map_bottom offset_gAreaRoomMap_MinishCracks_11_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_11_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_12:: @ 08104D60
	map_bottom offset_gAreaRoomMap_MinishCracks_12_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_12_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_13:: @ 08104D78
	map_bottom offset_gAreaRoomMap_MinishCracks_13_0, 0x12C, 0
	map_top offset_gAreaRoomMap_MinishCracks_13_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_14:: @ 08104D90
	map_bottom offset_gAreaRoomMap_MinishCracks_14_0, 0x12C, 1
	map_top offset_gAreaRoomMap_MinishCracks_14_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_15:: @ 08104DA8
	map_bottom offset_gAreaRoomMap_MinishCracks_15_0, 0x12C, 1
	map_top offset_gAreaRoomMap_MinishCracks_15_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_16:: @ 08104DC0
	map_bottom offset_gAreaRoomMap_MinishCracks_16_0, 0x12C, 1
	map_top offset_gAreaRoomMap_MinishCracks_16_1, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_17:: @ 08104DD8
	map_bottom offset_gAreaRoomMap_MinishCracks_17_0, 0x12C, 1
	map_top offset_gAreaRoomMap_MinishCracks_17_1, 0x12C, 1, 1

gAreaRoomMaps_MinishCracks:: @ 08104DF0
	.4byte gAreaRoomMap_MinishCracks_0
	.4byte gAreaRoomMap_MinishCracks_1
	.4byte gAreaRoomMap_MinishCracks_2
	.4byte gAreaRoomMap_MinishCracks_3
	.4byte gAreaRoomMap_MinishCracks_4
	.4byte gAreaRoomMap_MinishCracks_5
	.4byte gAreaRoomMap_MinishCracks_6
	.4byte gAreaRoomMap_MinishCracks_7
	.4byte gAreaRoomMap_MinishCracks_8
	.4byte gAreaRoomMap_MinishCracks_9
	.4byte gAreaRoomMap_MinishCracks_10
	.4byte gAreaRoomMap_MinishCracks_11
	.4byte gAreaRoomMap_MinishCracks_12
	.4byte gAreaRoomMap_MinishCracks_13
	.4byte gAreaRoomMap_MinishCracks_14
	.4byte gAreaRoomMap_MinishCracks_15
	.4byte gAreaRoomMap_MinishCracks_16
	.4byte gAreaRoomMap_MinishCracks_17

gAreaRoomMap_ArmosInteriors_0:: @ 08104E38
	map_bottom offset_gAreaRoomMap_ArmosInteriors_0_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_0_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_1:: @ 08104E50
	map_bottom offset_gAreaRoomMap_ArmosInteriors_1_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_1_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_2:: @ 08104E68
	map_bottom offset_gAreaRoomMap_ArmosInteriors_2_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_2_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_3:: @ 08104E80
	map_bottom offset_gAreaRoomMap_ArmosInteriors_3_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_3_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_4:: @ 08104E98
	map_bottom offset_gAreaRoomMap_ArmosInteriors_4_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_4_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_5:: @ 08104EB0
	map_bottom offset_gAreaRoomMap_ArmosInteriors_5_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_5_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_6:: @ 08104EC8
	map_bottom offset_gAreaRoomMap_ArmosInteriors_6_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_6_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_7:: @ 08104EE0
	map_bottom offset_gAreaRoomMap_ArmosInteriors_7_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_7_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_8:: @ 08104EF8
	map_bottom offset_gAreaRoomMap_ArmosInteriors_8_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_8_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_9:: @ 08104F10
	map_bottom offset_gAreaRoomMap_ArmosInteriors_9_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_9_1, 0x12C, 1, 1

gAreaRoomMap_ArmosInteriors_10:: @ 08104F28
	map_bottom offset_gAreaRoomMap_ArmosInteriors_10_0, 0x12C, 0
	map_top offset_gAreaRoomMap_ArmosInteriors_10_1, 0x12C, 1, 1

gAreaRoomMaps_ArmosInteriors:: @ 08104F40
	.4byte gAreaRoomMap_ArmosInteriors_0
	.4byte gAreaRoomMap_ArmosInteriors_1
	.4byte gAreaRoomMap_ArmosInteriors_2
	.4byte gAreaRoomMap_ArmosInteriors_3
	.4byte gAreaRoomMap_ArmosInteriors_4
	.4byte gAreaRoomMap_ArmosInteriors_5
	.4byte gAreaRoomMap_ArmosInteriors_6
	.4byte gAreaRoomMap_ArmosInteriors_7
	.4byte gAreaRoomMap_ArmosInteriors_8
	.4byte gAreaRoomMap_ArmosInteriors_9
	.4byte gAreaRoomMap_ArmosInteriors_10

gAreaRoomMap_MinishRafters_0:: @ 08104F6C
	map_bottom offset_gAreaRoomMap_MinishRafters_0_0, 0x3E0, 1, 1

gAreaRoomMap_MinishRafters_1:: @ 08104F78
	map_bottom offset_gAreaRoomMap_MinishRafters_1_0, 0x3E0, 1, 1

gAreaRoomMap_MinishRafters_2:: @ 08104F84
	map_bottom offset_gAreaRoomMap_MinishRafters_2_0, 0x3E0, 1, 1

gAreaRoomMap_MinishRafters_3:: @ 08104F90
	map_bottom offset_gAreaRoomMap_MinishRafters_3_0, 0x3E0, 1, 1

gAreaRoomMaps_MinishRafters:: @ 08104F9C
	.4byte gAreaRoomMap_MinishRafters_0
	.4byte gAreaRoomMap_MinishRafters_1
	.4byte gAreaRoomMap_MinishRafters_2
	.4byte gAreaRoomMap_MinishRafters_3

gAreaRoomMap_GoronCave_0:: @ 08104FAC
	map_bottom offset_gAreaRoomMap_GoronCave_0_0, 0x12C, 1
	map_top offset_gAreaRoomMap_GoronCave_0_1, 0x12C, 1, 1

gAreaRoomMap_GoronCave_1:: @ 08104FC4
	map_bottom offset_gAreaRoomMap_GoronCave_1_0, 0x546, 1
	map_top offset_gAreaRoomMap_GoronCave_1_1, 0x546, 1, 1

gAreaRoomMaps_GoronCave:: @ 08104FDC
	.4byte gAreaRoomMap_GoronCave_0
	.4byte gAreaRoomMap_GoronCave_1

gAreaRoomMap_WindTribeTower_0:: @ 08104FE4
	map_bottom offset_gAreaRoomMap_WindTribeTower_0_0, 0x276, 1
	map_top offset_gAreaRoomMap_WindTribeTower_0_1, 0x276, 1, 1

gAreaRoomMap_WindTribeTower_1:: @ 08104FFC
	map_bottom offset_gAreaRoomMap_WindTribeTower_1_0, 0x276, 1
	map_top offset_gAreaRoomMap_WindTribeTower_1_1, 0x276, 1, 1

gAreaRoomMap_WindTribeTower_2:: @ 08105014
	map_bottom offset_gAreaRoomMap_WindTribeTower_2_0, 0x276, 1
	map_top offset_gAreaRoomMap_WindTribeTower_2_1, 0x276, 1, 1

gAreaRoomMap_WindTribeTower_3:: @ 0810502C
	map_bottom offset_gAreaRoomMap_WindTribeTower_3_0, 0x276, 1
	map_top offset_gAreaRoomMap_WindTribeTower_3_1, 0x276, 1, 1

gAreaRoomMaps_WindTribeTower:: @ 08105044
	.4byte gAreaRoomMap_WindTribeTower_0
	.4byte gAreaRoomMap_WindTribeTower_1
	.4byte gAreaRoomMap_WindTribeTower_2
	.4byte gAreaRoomMap_WindTribeTower_3

gAreaRoomMap_WindTribeTowerRoof_0:: @ 08105054
	map_bottom offset_gAreaRoomMap_WindTribeTowerRoof_0_0, 0x30C, 1
	map_top offset_gAreaRoomMap_WindTribeTowerRoof_0_1, 0x30C, 1, 1

gAreaRoomMaps_WindTribeTowerRoof:: @ 0810506C
	.4byte gAreaRoomMap_WindTribeTowerRoof_0

gAreaRoomMap_MinishCaves_0:: @ 08105070
	map_bottom offset_gAreaRoomMap_MinishCaves_0_0, 0x474, 1
	map_top offset_gAreaRoomMap_MinishCaves_0_1, 0x474, 1, 1

gAreaRoomMap_MinishCaves_1:: @ 08105088
	map_bottom offset_gAreaRoomMap_MinishCaves_1_0, 0x41A, 1
	map_top offset_gAreaRoomMap_MinishCaves_1_1, 0x41A, 1, 1

gAreaRoomMap_MinishCaves_2:: @ 081050A0
	map_bottom offset_gAreaRoomMap_MinishCaves_2_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_MinishCaves_2_1, 0x1FE, 1, 1

gAreaRoomMap_MinishCaves_3:: @ 081050B8
	map_bottom offset_gAreaRoomMap_MinishCaves_3_0, 0x4CE, 1
	map_top offset_gAreaRoomMap_MinishCaves_3_1, 0x4CE, 1, 1

gAreaRoomMap_MinishCaves_4:: @ 081050D0
	map_bottom offset_gAreaRoomMap_MinishCaves_4_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_MinishCaves_4_1, 0x1C2, 1, 1

gAreaRoomMap_MinishCaves_5:: @ 081050E8
	map_bottom offset_gAreaRoomMap_MinishCaves_5_0, 0x258, 1
	map_top offset_gAreaRoomMap_MinishCaves_5_1, 0x258, 1, 1

gAreaRoomMap_MinishCaves_6:: @ 08105100
	map_bottom offset_gAreaRoomMap_MinishCaves_6_0, 0x258, 1
	map_top offset_gAreaRoomMap_MinishCaves_6_1, 0x258, 1, 1

gAreaRoomMap_MinishCaves_7:: @ 08105118
	map_bottom offset_gAreaRoomMap_MinishCaves_7_0, 0x744, 1
	map_top offset_gAreaRoomMap_MinishCaves_7_1, 0x744, 1, 1

gAreaRoomMap_MinishCaves_8:: @ 08105130
	map_bottom offset_gAreaRoomMap_MinishCaves_8_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_MinishCaves_8_1, 0x4B0, 1, 1

gAreaRoomMap_MinishCaves_9:: @ 08105148
	map_bottom offset_gAreaRoomMap_MinishCaves_9_0, 0x618, 1
	map_top offset_gAreaRoomMap_MinishCaves_9_1, 0x618, 1, 1

gAreaRoomMaps_MinishCaves:: @ 08105160
	.4byte gAreaRoomMap_MinishCaves_0
	.4byte gAreaRoomMap_MinishCaves_1
	.4byte gAreaRoomMap_MinishCaves_2
	.4byte gAreaRoomMap_MinishCaves_3
	.4byte gAreaRoomMap_MinishCaves_4
	.4byte gAreaRoomMap_MinishCaves_5
	.4byte gAreaRoomMap_MinishCaves_6
	.4byte gAreaRoomMap_MinishCaves_7
	.4byte gAreaRoomMap_MinishCaves_8
	.4byte gAreaRoomMap_MinishCaves_9

gAreaRoomMap_CastleGardenMinishHoles_0:: @ 08105188
	map_bottom offset_gAreaRoomMap_CastleGardenMinishHoles_0_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_CastleGardenMinishHoles_0_1, 0x1C2, 1, 1

gAreaRoomMap_CastleGardenMinishHoles_1:: @ 081051A0
	map_bottom offset_gAreaRoomMap_CastleGardenMinishHoles_1_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_CastleGardenMinishHoles_1_1, 0x1C2, 1, 1

gAreaRoomMaps_CastleGardenMinishHoles:: @ 081051B8
	.4byte gAreaRoomMap_CastleGardenMinishHoles_0
	.4byte gAreaRoomMap_CastleGardenMinishHoles_1

gAreaRoomMap_37_0:: @ 081051C0
	map_bottom offset_gAreaRoomMap_37_0_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_37_0_1, 0x1C2, 1, 1

gAreaRoomMap_37_1:: @ 081051D8
	map_bottom offset_gAreaRoomMap_37_1_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_37_1_1, 0x1C2, 1, 1

gAreaRoomMaps_37:: @ 081051F0
	.4byte gAreaRoomMap_37_0
	.4byte gAreaRoomMap_37_1

gAreaRoomMap_EzloCutscene_0:: @ 081051F8
	map_bottom offset_gAreaRoomMap_EzloCutscene_0_0, 0x258, 1
	map_top offset_gAreaRoomMap_EzloCutscene_0_1, 0x258, 1, 1

gAreaRoomMaps_EzloCutscene:: @ 08105210
	.4byte gAreaRoomMap_EzloCutscene_0

gAreaRoomMap_HyruleTownUnderground_0:: @ 08105214
	map_bottom offset_gAreaRoomMap_HyruleTownUnderground_0_0, 0xE10, 1
	map_top offset_gAreaRoomMap_HyruleTownUnderground_0_1, 0xE10, 1, 1

gAreaRoomMap_HyruleTownUnderground_1:: @ 0810522C
	map_bottom offset_gAreaRoomMap_HyruleTownUnderground_1_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HyruleTownUnderground_1_1, 0x12C, 1, 1

gAreaRoomMaps_HyruleTownUnderground:: @ 08105244
	.4byte gAreaRoomMap_HyruleTownUnderground_0
	.4byte gAreaRoomMap_HyruleTownUnderground_1

gAreaRoomMap_GardenFountains_0:: @ 0810524C
	map_bottom offset_gAreaRoomMap_GardenFountains_0_0, 0x12C, 1
	map_top offset_gAreaRoomMap_GardenFountains_0_1, 0x12C, 1, 1

gAreaRoomMap_GardenFountains_1:: @ 08105264
	map_bottom offset_gAreaRoomMap_GardenFountains_1_0, 0x12C, 1
	map_top offset_gAreaRoomMap_GardenFountains_1_1, 0x12C, 1, 1

gAreaRoomMaps_GardenFountains:: @ 0810527C
	.4byte gAreaRoomMap_GardenFountains_0
	.4byte gAreaRoomMap_GardenFountains_1

gAreaRoomMap_HyruleCastleCellar_0:: @ 08105284
	map_bottom offset_gAreaRoomMap_HyruleCastleCellar_0_0, 0x3C0, 1
	map_top offset_gAreaRoomMap_HyruleCastleCellar_0_1, 0x3C0, 1, 1

gAreaRoomMap_HyruleCastleCellar_1:: @ 0810529C
	map_bottom offset_gAreaRoomMap_HyruleCastleCellar_1_0, 0x1E0, 1
	map_top offset_gAreaRoomMap_HyruleCastleCellar_1_1, 0x1E0, 1, 1

gAreaRoomMaps_HyruleCastleCellar:: @ 081052B4
	.4byte gAreaRoomMap_HyruleCastleCellar_0
	.4byte gAreaRoomMap_HyruleCastleCellar_1

gAreaRoomMap_SimonsSimulation_0:: @ 081052BC
	map_bottom offset_gAreaRoomMap_SimonsSimulation_0_0, 0x23A, 1
	map_top offset_gAreaRoomMap_SimonsSimulation_0_1, 0x23A, 1, 1

gAreaRoomMaps_SimonsSimulation:: @ 081052D4
	.4byte gAreaRoomMap_SimonsSimulation_0

gAreaRoomMap_40_0:: @ 081052D8
	map_bottom offset_gAreaRoomMap_40_0_0, 0x286, 1
	map_top offset_gAreaRoomMap_40_0_1, 0x286, 1, 1

gAreaRoomMap_40_1:: @ 081052F0
	map_bottom offset_gAreaRoomMap_40_1_0, 0x30E, 1
	map_top offset_gAreaRoomMap_40_1_1, 0x30E, 1, 1

gAreaRoomMap_40_2:: @ 08105308
	map_bottom offset_gAreaRoomMap_40_2_0, 0x286, 1
	map_top offset_gAreaRoomMap_40_2_1, 0x286, 1, 1

gAreaRoomMap_40_3:: @ 08105320
	map_bottom offset_gAreaRoomMap_40_3_0, 0x286, 1
	map_top offset_gAreaRoomMap_40_3_1, 0x286, 1, 1

gAreaRoomMap_40_4:: @ 08105338
	map_bottom offset_gAreaRoomMap_40_4_0, 0x30E, 1
	map_top offset_gAreaRoomMap_40_4_1, 0x30E, 1, 1

gAreaRoomMap_40_5:: @ 08105350
	map_bottom offset_gAreaRoomMap_40_5_0, 0x286, 1
	map_top offset_gAreaRoomMap_40_5_1, 0x286, 1, 1

gAreaRoomMap_40_6:: @ 08105368
	map_bottom offset_gAreaRoomMap_40_6_0, 0x520, 1
	map_top offset_gAreaRoomMap_40_6_1, 0x520, 1, 1

gAreaRoomMap_40_7:: @ 08105380
	map_bottom offset_gAreaRoomMap_40_7_0, 0x28A, 1
	map_top offset_gAreaRoomMap_40_7_1, 0x28A, 1, 1

gAreaRoomMap_40_8:: @ 08105398
	map_bottom offset_gAreaRoomMap_40_8_0, 0x200, 1
	map_top offset_gAreaRoomMap_40_8_1, 0x200, 1, 1

gAreaRoomMaps_40:: @ 081053B0
	.4byte gAreaRoomMap_40_0
	.4byte gAreaRoomMap_40_1
	.4byte gAreaRoomMap_40_2
	.4byte gAreaRoomMap_40_3
	.4byte gAreaRoomMap_40_4
	.4byte gAreaRoomMap_40_5
	.4byte gAreaRoomMap_40_6
	.4byte gAreaRoomMap_40_7
	.4byte gAreaRoomMap_40_8

gAreaRoomMap_DeepwoodShrine_0:: @ 081053D4
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_0_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_0_1, 0x1FE, 1, 1

gAreaRoomMap_DeepwoodShrine_1:: @ 081053EC
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_1_0, 0x2EE, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_1_1, 0x2EE, 1, 1

gAreaRoomMap_DeepwoodShrine_2:: @ 08105404
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_2_0, 0x276, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_2_1, 0x276, 1, 1

gAreaRoomMap_DeepwoodShrine_3:: @ 0810541C
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_3_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_3_1, 0x1FE, 1, 1

gAreaRoomMap_DeepwoodShrine_4:: @ 08105434
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_4_0, 0x154, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_4_1, 0x154, 1, 1

gAreaRoomMap_DeepwoodShrine_5:: @ 0810544C
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_5_0, 0x352, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_5_1, 0x352, 1, 1

gAreaRoomMap_DeepwoodShrine_6:: @ 08105464
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_6_0, 0x5AA, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_6_1, 0x5AA, 1, 1

gAreaRoomMap_DeepwoodShrine_7:: @ 0810547C
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_7_0, 0x352, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_7_1, 0x352, 1, 1

gAreaRoomMap_DeepwoodShrine_8:: @ 08105494
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_8_0, 0x198, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_8_1, 0x198, 1, 1

gAreaRoomMap_DeepwoodShrine_9:: @ 081054AC
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_9_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_9_1, 0x1BA, 1, 1

gAreaRoomMap_DeepwoodShrine_10:: @ 081054C4
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_10_0, 0x2CA, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_10_1, 0x2CA, 1, 1

gAreaRoomMap_DeepwoodShrine_11:: @ 081054DC
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_11_0, 0x2CA, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_11_1, 0x2CA, 1, 1

gAreaRoomMap_DeepwoodShrine_12:: @ 081054F4
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_12_0, 0x2CA, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_12_1, 0x2CA, 1, 1

gAreaRoomMap_DeepwoodShrine_13:: @ 0810550C
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_13_0, 0x2EE, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_13_1, 0x2EE, 1, 1

gAreaRoomMap_DeepwoodShrine_14:: @ 08105524
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_14_0, 0x276, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_14_1, 0x276, 1, 1

gAreaRoomMap_DeepwoodShrine_15:: @ 0810553C
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_15_0, 0x198, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_15_1, 0x198, 1, 1

gAreaRoomMap_DeepwoodShrine_16:: @ 08105554
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_16_0, 0x5AA, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_16_1, 0x5AA, 1, 1

gAreaRoomMap_DeepwoodShrine_17:: @ 0810556C
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_17_0, 0x264, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_17_1, 0x264, 1, 1

gAreaRoomMap_DeepwoodShrineBoss_0:: @ 08105584
	map_bottom offset_gAreaRoomMap_DeepwoodShrineBoss_0_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_DeepwoodShrineBoss_0_1, 0x1FE, 1, 1

gAreaRoomMap_DeepwoodShrine_18:: @ 0810559C
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_18_0, 0x2CA, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_18_1, 0x2CA, 1, 1

gAreaRoomMap_DeepwoodShrine_19:: @ 081055B4
	map_bottom offset_gAreaRoomMap_DeepwoodShrine_19_0, 0x12C, 1
	map_top offset_gAreaRoomMap_DeepwoodShrine_19_1, 0x12C, 1, 1

gAreaRoomMap_DeepwoodShrineEntry_0:: @ 081055CC
	map_bottom offset_gAreaRoomMap_DeepwoodShrineEntry_0_0, 0x1C2, 0
	map_top offset_gAreaRoomMap_DeepwoodShrineEntry_0_1, 0x1C2, 1, 1

gAreaRoomMaps_DeepwoodShrine:: @ 081055E4
	.4byte gAreaRoomMap_DeepwoodShrine_0
	.4byte gAreaRoomMap_DeepwoodShrine_1
	.4byte gAreaRoomMap_DeepwoodShrine_2
	.4byte gAreaRoomMap_DeepwoodShrine_3
	.4byte gAreaRoomMap_DeepwoodShrine_4
	.4byte gAreaRoomMap_DeepwoodShrine_5
	.4byte gAreaRoomMap_DeepwoodShrine_6
	.4byte gAreaRoomMap_DeepwoodShrine_7
	.4byte gAreaRoomMap_DeepwoodShrine_8
	.4byte gAreaRoomMap_DeepwoodShrine_9
	.4byte gAreaRoomMap_DeepwoodShrine_10
	.4byte gAreaRoomMap_DeepwoodShrine_11
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_DeepwoodShrine_12
	.4byte gAreaRoomMap_DeepwoodShrine_13
	.4byte gAreaRoomMap_DeepwoodShrine_14
	.4byte gAreaRoomMap_DeepwoodShrine_15
	.4byte gAreaRoomMap_DeepwoodShrine_16
	.4byte gAreaRoomMap_DeepwoodShrine_17
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_DeepwoodShrine_18
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_Unused
	.4byte gAreaRoomMap_DeepwoodShrine_19

gAreaRoomMaps_DeepwoodShrineBoss:: @ 08105668
	.4byte gAreaRoomMap_DeepwoodShrineBoss_0

gAreaRoomMaps_DeepwoodShrineEntry:: @ 0810566C
	.4byte gAreaRoomMap_DeepwoodShrineEntry_0

gAreaRoomMap_CaveOfFlames_0:: @ 08105670
	map_bottom offset_gAreaRoomMap_CaveOfFlames_0_0, 0x30E, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_0_1, 0x30E, 1, 1

gAreaRoomMap_CaveOfFlames_1:: @ 08105688
	map_bottom offset_gAreaRoomMap_CaveOfFlames_1_0, 0x30E, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_1_1, 0x30E, 1, 1

gAreaRoomMap_CaveOfFlames_2:: @ 081056A0
	map_bottom offset_gAreaRoomMap_CaveOfFlames_2_0, 0x4AC, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_2_1, 0x4AC, 1, 1

gAreaRoomMap_CaveOfFlames_3:: @ 081056B8
	map_bottom offset_gAreaRoomMap_CaveOfFlames_3_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_3_1, 0x1BA, 1, 1

gAreaRoomMap_CaveOfFlames_4:: @ 081056D0
	map_bottom offset_gAreaRoomMap_CaveOfFlames_4_0, 0x74E, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_4_1, 0x74E, 1, 1

gAreaRoomMap_CaveOfFlames_5:: @ 081056E8
	map_bottom offset_gAreaRoomMap_CaveOfFlames_5_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_5_1, 0x1BA, 1, 1

gAreaRoomMap_CaveOfFlames_6:: @ 08105700
	map_bottom offset_gAreaRoomMap_CaveOfFlames_6_0, 0x5B6, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_6_1, 0x5B6, 1, 1

gAreaRoomMap_CaveOfFlames_7:: @ 08105718
	map_bottom offset_gAreaRoomMap_CaveOfFlames_7_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_7_1, 0x1FE, 1, 1

gAreaRoomMap_CaveOfFlames_8:: @ 08105730
	map_bottom offset_gAreaRoomMap_CaveOfFlames_8_0, 0x508, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_8_1, 0x508, 1, 1

gAreaRoomMap_CaveOfFlames_9:: @ 08105748
	map_bottom offset_gAreaRoomMap_CaveOfFlames_9_0, 0x508, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_9_1, 0x508, 1, 1

gAreaRoomMap_CaveOfFlames_10:: @ 08105760
	map_bottom offset_gAreaRoomMap_CaveOfFlames_10_0, 0x9D8, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_10_1, 0x9D8, 1, 1

gAreaRoomMap_CaveOfFlames_11:: @ 08105778
	map_bottom offset_gAreaRoomMap_CaveOfFlames_11_0, 0x4EC, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_11_1, 0x4EC, 1, 1

gAreaRoomMap_CaveOfFlames_12:: @ 08105790
	map_bottom offset_gAreaRoomMap_CaveOfFlames_12_0, 0x276, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_12_1, 0x276, 1, 1

gAreaRoomMap_CaveOfFlames_13:: @ 081057A8
	map_bottom offset_gAreaRoomMap_CaveOfFlames_13_0, 0x276, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_13_1, 0x276, 1, 1

gAreaRoomMap_CaveOfFlames_14:: @ 081057C0
	map_bottom offset_gAreaRoomMap_CaveOfFlames_14_0, 0x276, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_14_1, 0x276, 1, 1

gAreaRoomMap_CaveOfFlames_15:: @ 081057D8
	map_bottom offset_gAreaRoomMap_CaveOfFlames_15_0, 0x186, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_15_1, 0x186, 1, 1

gAreaRoomMap_CaveOfFlames_16:: @ 081057F0
	map_bottom offset_gAreaRoomMap_CaveOfFlames_16_0, 0x186, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_16_1, 0x186, 1, 1

gAreaRoomMap_CaveOfFlames_17:: @ 08105808
	map_bottom offset_gAreaRoomMap_CaveOfFlames_17_0, 0x9D8, 1
	map_top offset_gAreaRoomMap_CaveOfFlames_17_1, 0x9D8, 1, 1

gAreaRoomMaps_CaveOfFlames:: @ 08105820
	.4byte gAreaRoomMap_CaveOfFlames_0
	.4byte gAreaRoomMap_CaveOfFlames_1
	.4byte gAreaRoomMap_CaveOfFlames_2
	.4byte gAreaRoomMap_CaveOfFlames_3
	.4byte gAreaRoomMap_CaveOfFlames_4
	.4byte gAreaRoomMap_CaveOfFlames_5
	.4byte gAreaRoomMap_CaveOfFlames_6
	.4byte gAreaRoomMap_CaveOfFlames_7
	.4byte gAreaRoomMap_CaveOfFlames_8
	.4byte gAreaRoomMap_CaveOfFlames_9
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_CaveOfFlames_10
	.4byte gAreaRoomMap_CaveOfFlames_11
	.4byte gAreaRoomMap_CaveOfFlames_12
	.4byte gAreaRoomMap_CaveOfFlames_13
	.4byte gAreaRoomMap_CaveOfFlames_14
	.4byte gAreaRoomMap_CaveOfFlames_15
	.4byte gAreaRoomMap_CaveOfFlames_16
	.4byte gAreaRoomMap_CaveOfFlames_17

gAreaRoomMap_CaveOfFlamesBoss_0:: @ 08105880
	map_bottom offset_gAreaRoomMap_CaveOfFlamesBoss_0_0, 0x360, 1
	map_top offset_gAreaRoomMap_CaveOfFlamesBoss_0_1, 0x360, 1, 1

gAreaRoomMaps_CaveOfFlamesBoss:: @ 08105898
	.4byte gAreaRoomMap_CaveOfFlamesBoss_0

gAreaRoomMap_FortressOfWinds_0:: @ 0810589C
	map_bottom offset_gAreaRoomMap_FortressOfWinds_0_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_0_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_1:: @ 081058B4
	map_bottom offset_gAreaRoomMap_FortressOfWinds_1_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_1_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_2:: @ 081058CC
	map_bottom offset_gAreaRoomMap_FortressOfWinds_2_0, 0x804, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_2_1, 0x804, 1, 1

gAreaRoomMap_FortressOfWinds_3:: @ 081058E4
	map_bottom offset_gAreaRoomMap_FortressOfWinds_3_0, 0x1DC, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_3_1, 0x1DC, 1, 1

gAreaRoomMap_FortressOfWinds_4:: @ 081058FC
	map_bottom offset_gAreaRoomMap_FortressOfWinds_4_0, 0x364, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_4_1, 0x364, 1, 1

gAreaRoomMap_FortressOfWinds_5:: @ 08105914
	map_bottom offset_gAreaRoomMap_FortressOfWinds_5_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_5_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_6:: @ 0810592C
	map_bottom offset_gAreaRoomMap_FortressOfWinds_6_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_6_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_7:: @ 08105944
	map_bottom offset_gAreaRoomMap_FortressOfWinds_7_0, 0x374, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_7_1, 0x374, 1, 1

gAreaRoomMap_FortressOfWinds_8:: @ 0810595C
	map_bottom offset_gAreaRoomMap_FortressOfWinds_8_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_8_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_9:: @ 08105974
	map_bottom offset_gAreaRoomMap_FortressOfWinds_9_0, 0x374, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_9_1, 0x374, 1, 1

gAreaRoomMap_FortressOfWinds_10:: @ 0810598C
	map_bottom offset_gAreaRoomMap_FortressOfWinds_10_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_10_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_11:: @ 081059A4
	map_bottom offset_gAreaRoomMap_FortressOfWinds_11_0, 0x256, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_11_1, 0x256, 1, 1

gAreaRoomMap_FortressOfWinds_12:: @ 081059BC
	map_bottom offset_gAreaRoomMap_FortressOfWinds_12_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_12_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_13:: @ 081059D4
	map_bottom offset_gAreaRoomMap_FortressOfWinds_13_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_13_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_14:: @ 081059EC
	map_bottom offset_gAreaRoomMap_FortressOfWinds_14_0, 0x374, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_14_1, 0x374, 1, 1

gAreaRoomMap_FortressOfWinds_15:: @ 08105A04
	map_bottom offset_gAreaRoomMap_FortressOfWinds_15_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_15_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_16:: @ 08105A1C
	map_bottom offset_gAreaRoomMap_FortressOfWinds_16_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_16_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_17:: @ 08105A34
	map_bottom offset_gAreaRoomMap_FortressOfWinds_17_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_17_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_18:: @ 08105A4C
	map_bottom offset_gAreaRoomMap_FortressOfWinds_18_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_18_1, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_19:: @ 08105A64
	map_bottom offset_gAreaRoomMap_FortressOfWinds_19_0, 0x186, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_19_1, 0x186, 1, 1

gAreaRoomMap_FortressOfWinds_20:: @ 08105A7C
	map_bottom offset_gAreaRoomMap_FortressOfWinds_20_0, 0x186, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_20_1, 0x186, 1, 1

gAreaRoomMap_FortressOfWinds_21:: @ 08105A94
	map_bottom offset_gAreaRoomMap_FortressOfWinds_21_0, 0x186, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_21_1, 0x186, 1, 1

gAreaRoomMap_FortressOfWinds_22:: @ 08105AAC
	map_bottom offset_gAreaRoomMap_FortressOfWinds_22_0, 0x186, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_22_1, 0x186, 1, 1

gAreaRoomMap_FortressOfWinds_23:: @ 08105AC4
	map_bottom offset_gAreaRoomMap_FortressOfWinds_23_0, 0x1A0, 1
	map_top offset_gAreaRoomMap_FortressOfWinds_23_1, 0x1A0, 1, 1

gAreaRoomMaps_FortressOfWinds:: @ 08105ADC
	.4byte gAreaRoomMap_FortressOfWinds_0
	.4byte gAreaRoomMap_FortressOfWinds_1
	.4byte gAreaRoomMap_FortressOfWinds_2
	.4byte gAreaRoomMap_FortressOfWinds_3
	.4byte gAreaRoomMap_FortressOfWinds_4
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_FortressOfWinds_5
	.4byte gAreaRoomMap_FortressOfWinds_6
	.4byte gAreaRoomMap_FortressOfWinds_7
	.4byte gAreaRoomMap_FortressOfWinds_8
	.4byte gAreaRoomMap_FortressOfWinds_9
	.4byte gAreaRoomMap_FortressOfWinds_10
	.4byte gAreaRoomMap_FortressOfWinds_11
	.4byte gAreaRoomMap_FortressOfWinds_12
	.4byte gAreaRoomMap_FortressOfWinds_13
	.4byte gAreaRoomMap_FortressOfWinds_14
	.4byte gAreaRoomMap_FortressOfWinds_15
	.4byte gAreaRoomMap_FortressOfWinds_16
	.4byte gAreaRoomMap_FortressOfWinds_17
	.4byte gAreaRoomMap_FortressOfWinds_18
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_FortressOfWinds_19
	.4byte gAreaRoomMap_FortressOfWinds_20
	.4byte gAreaRoomMap_FortressOfWinds_21
	.4byte gAreaRoomMap_FortressOfWinds_22
	.4byte gAreaRoomMap_FortressOfWinds_23

gAreaRoomMap_FortressOfWindsTop_0:: @ 08105B70
	map_bottom offset_gAreaRoomMap_FortressOfWindsTop_0_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_FortressOfWindsTop_0_1, 0x4B0, 1, 1

gAreaRoomMaps_FortressOfWindsTop:: @ 08105B88
	.4byte gAreaRoomMap_FortressOfWindsTop_0

gAreaRoomMap_InnerMazaal_0:: @ 08105B8C
	map_bottom offset_gAreaRoomMap_InnerMazaal_0_0, 0x286, 1
	map_top offset_gAreaRoomMap_InnerMazaal_0_1, 0x286, 1, 1

gAreaRoomMap_InnerMazaal_1:: @ 08105BA4
	map_bottom offset_gAreaRoomMap_InnerMazaal_1_0, 0x286, 1
	map_top offset_gAreaRoomMap_InnerMazaal_1_1, 0x286, 1, 1

gAreaRoomMaps_InnerMazaal:: @ 08105BBC
	.4byte gAreaRoomMap_InnerMazaal_0
	.4byte gAreaRoomMap_InnerMazaal_1

gAreaRoomMap_TempleOfDroplets_0:: @ 08105BC4
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_0_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_0_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_1:: @ 08105BDC
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_1_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_1_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_2:: @ 08105BF4
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_2_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_2_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_3:: @ 08105C0C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_3_0, 0x6B4, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_3_1, 0x6B4, 1, 1

gAreaRoomMap_TempleOfDroplets_4:: @ 08105C24
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_4_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_4_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_5:: @ 08105C3C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_5_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_5_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_6:: @ 08105C54
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_6_0, 0x30C, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_6_1, 0x30C, 1, 1

gAreaRoomMap_TempleOfDroplets_7:: @ 08105C6C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_7_0, 0x374, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_7_1, 0x374, 1, 1

gAreaRoomMap_TempleOfDroplets_8:: @ 08105C84
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_8_0, 0x948, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_8_1, 0x948, 1, 1

gAreaRoomMap_TempleOfDroplets_9:: @ 08105C9C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_9_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_9_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_10:: @ 08105CB4
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_10_0, 0x492, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_10_1, 0x492, 1, 1

gAreaRoomMap_TempleOfDroplets_11:: @ 08105CCC
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_11_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_11_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_12:: @ 08105CE4
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_12_0, 0x186, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_12_1, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_13:: @ 08105CFC
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_13_0, 0x374, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_13_1, 0x374, 1, 1

gAreaRoomMap_TempleOfDroplets_14:: @ 08105D14
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_14_0, 0x420, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_14_1, 0x420, 1, 1

gAreaRoomMap_TempleOfDroplets_15:: @ 08105D2C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_15_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_15_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_16:: @ 08105D44
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_16_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_16_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_17:: @ 08105D5C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_17_0, 0x186, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_17_1, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_18:: @ 08105D74
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_18_0, 0x374, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_18_1, 0x374, 1, 1

gAreaRoomMap_TempleOfDroplets_19:: @ 08105D8C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_19_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_19_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_20:: @ 08105DA4
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_20_0, 0x35A, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_20_1, 0x35A, 1, 1

gAreaRoomMap_TempleOfDroplets_21:: @ 08105DBC
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_21_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_21_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_22:: @ 08105DD4
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_22_0, 0x374, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_22_1, 0x374, 1, 1

gAreaRoomMap_TempleOfDroplets_23:: @ 08105DEC
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_23_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_23_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_24:: @ 08105E04
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_24_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_24_1, 0x4B0, 1, 1

gAreaRoomMap_TempleOfDroplets_25:: @ 08105E1C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_25_0, 0x1A4, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_25_1, 0x1A4, 1, 1

gAreaRoomMap_TempleOfDroplets_26:: @ 08105E34
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_26_0, 0xA0E, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_26_1, 0xA0E, 1, 1

gAreaRoomMap_TempleOfDroplets_27:: @ 08105E4C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_27_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_27_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_28:: @ 08105E64
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_28_0, 0x186, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_28_1, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_29:: @ 08105E7C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_29_0, 0x492, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_29_1, 0x492, 1, 1

gAreaRoomMap_TempleOfDroplets_30:: @ 08105E94
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_30_0, 0x186, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_30_1, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_31:: @ 08105EAC
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_31_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_31_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_32:: @ 08105EC4
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_32_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_32_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_33:: @ 08105EDC
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_33_0, 0x186, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_33_1, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_34:: @ 08105EF4
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_34_0, 0x186, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_34_1, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_35:: @ 08105F0C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_35_0, 0x396, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_35_1, 0x396, 1, 1

gAreaRoomMap_TempleOfDroplets_36:: @ 08105F24
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_36_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_36_1, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_37:: @ 08105F3C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_37_0, 0x186, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_37_1, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_38:: @ 08105F54
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_38_0, 0x39C, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_38_1, 0x39C, 1, 1

gAreaRoomMap_TempleOfDroplets_39:: @ 08105F6C
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_39_0, 0x1DC, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_39_1, 0x1DC, 1, 1

gAreaRoomMap_TempleOfDroplets_40:: @ 08105F84
	map_bottom offset_gAreaRoomMap_TempleOfDroplets_40_0, 0x1A0, 1
	map_top offset_gAreaRoomMap_TempleOfDroplets_40_1, 0x1A0, 1, 1

gAreaRoomMaps_TempleOfDroplets:: @ 08105F9C
	.4byte gAreaRoomMap_TempleOfDroplets_0
	.4byte gAreaRoomMap_TempleOfDroplets_1
	.4byte gAreaRoomMap_TempleOfDroplets_2
	.4byte gAreaRoomMap_TempleOfDroplets_3
	.4byte gAreaRoomMap_TempleOfDroplets_4
	.4byte gAreaRoomMap_TempleOfDroplets_5
	.4byte gAreaRoomMap_TempleOfDroplets_6
	.4byte gAreaRoomMap_TempleOfDroplets_7
	.4byte gAreaRoomMap_TempleOfDroplets_8
	.4byte gAreaRoomMap_TempleOfDroplets_9
	.4byte gAreaRoomMap_TempleOfDroplets_10
	.4byte gAreaRoomMap_TempleOfDroplets_11
	.4byte gAreaRoomMap_TempleOfDroplets_12
	.4byte gAreaRoomMap_TempleOfDroplets_13
	.4byte gAreaRoomMap_TempleOfDroplets_14
	.4byte gAreaRoomMap_TempleOfDroplets_15
	.4byte gAreaRoomMap_TempleOfDroplets_16
	.4byte gAreaRoomMap_TempleOfDroplets_17
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_TempleOfDroplets_18
	.4byte gAreaRoomMap_TempleOfDroplets_19
	.4byte gAreaRoomMap_TempleOfDroplets_20
	.4byte gAreaRoomMap_TempleOfDroplets_21
	.4byte gAreaRoomMap_TempleOfDroplets_22
	.4byte gAreaRoomMap_TempleOfDroplets_23
	.4byte gAreaRoomMap_TempleOfDroplets_24
	.4byte gAreaRoomMap_TempleOfDroplets_25
	.4byte gAreaRoomMap_TempleOfDroplets_26
	.4byte gAreaRoomMap_TempleOfDroplets_27
	.4byte gAreaRoomMap_TempleOfDroplets_28
	.4byte gAreaRoomMap_TempleOfDroplets_29
	.4byte gAreaRoomMap_TempleOfDroplets_30
	.4byte gAreaRoomMap_TempleOfDroplets_31
	.4byte gAreaRoomMap_TempleOfDroplets_32
	.4byte gAreaRoomMap_TempleOfDroplets_33
	.4byte gAreaRoomMap_TempleOfDroplets_34
	.4byte gAreaRoomMap_TempleOfDroplets_35
	.4byte gAreaRoomMap_TempleOfDroplets_36
	.4byte gAreaRoomMap_TempleOfDroplets_37
	.4byte gAreaRoomMap_TempleOfDroplets_38
	.4byte gAreaRoomMap_TempleOfDroplets_39
	.4byte gAreaRoomMap_TempleOfDroplets_40

gAreaRoomMap_61_0:: @ 08106078
	map_bottom offset_gAreaRoomMap_61_0_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_61_0_1, 0x1C2, 1, 1

gAreaRoomMaps_61:: @ 08106090
	.4byte gAreaRoomMap_61_0

gAreaRoomMap_HyruleTownMinishCaves_0:: @ 08106094
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_0_0, 0x330, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_0_1, 0x330, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_1:: @ 081060AC
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_1_0, 0x2D0, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_1_1, 0x2D0, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_2:: @ 081060C4
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_2_0, 0x242, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_2_1, 0x242, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_3:: @ 081060DC
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_3_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_3_1, 0x1FE, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_4:: @ 081060F4
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_4_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_4_1, 0x1C2, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_5:: @ 0810610C
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_5_0, 0x222, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_5_1, 0x222, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_6:: @ 08106124
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_6_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_6_1, 0x1BA, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_7:: @ 0810613C
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_7_0, 0x186, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_7_1, 0x186, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_8:: @ 08106154
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_8_0, 0x24C, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_8_1, 0x24C, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_9:: @ 0810616C
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_9_0, 0x1DC, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_9_1, 0x1DC, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_10:: @ 08106184
	map_bottom offset_gAreaRoomMap_HyruleTownMinishCaves_10_0, 0x348, 1
	map_top offset_gAreaRoomMap_HyruleTownMinishCaves_10_1, 0x348, 1, 1

gAreaRoomMaps_HyruleTownMinishCaves:: @ 0810619C
	.4byte gAreaRoomMap_HyruleTownMinishCaves_0
	.4byte gAreaRoomMap_HyruleTownMinishCaves_1
	.4byte gAreaRoomMap_HyruleTownMinishCaves_2
	.4byte gAreaRoomMap_HyruleTownMinishCaves_3
	.4byte gAreaRoomMap_HyruleTownMinishCaves_4
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_HyruleTownMinishCaves_5
	.4byte gAreaRoomMap_HyruleTownMinishCaves_6
	.4byte gAreaRoomMap_HyruleTownMinishCaves_7
	.4byte gAreaRoomMap_HyruleTownMinishCaves_8
	.4byte gAreaRoomMap_HyruleTownMinishCaves_9
	.4byte gAreaRoomMap_HyruleTownMinishCaves_10

gAreaRoomMap_RoyalCrypt_0:: @ 081061F4
	map_bottom offset_gAreaRoomMap_RoyalCrypt_0_0, 0x532, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_0_1, 0x532, 1, 1

gAreaRoomMap_RoyalCrypt_1:: @ 0810620C
	map_bottom offset_gAreaRoomMap_RoyalCrypt_1_0, 0x1DC, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_1_1, 0x1DC, 1, 1

gAreaRoomMap_RoyalCrypt_2:: @ 08106224
	map_bottom offset_gAreaRoomMap_RoyalCrypt_2_0, 0x348, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_2_1, 0x348, 1, 1

gAreaRoomMap_RoyalCrypt_3:: @ 0810623C
	map_bottom offset_gAreaRoomMap_RoyalCrypt_3_0, 0x2F4, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_3_1, 0x2F4, 1, 1

gAreaRoomMap_RoyalCrypt_4:: @ 08106254
	map_bottom offset_gAreaRoomMap_RoyalCrypt_4_0, 0x6F0, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_4_1, 0x6F0, 1, 1

gAreaRoomMap_RoyalCrypt_5:: @ 0810626C
	map_bottom offset_gAreaRoomMap_RoyalCrypt_5_0, 0x2E4, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_5_1, 0x2E4, 1, 1

gAreaRoomMap_RoyalCrypt_6:: @ 08106284
	map_bottom offset_gAreaRoomMap_RoyalCrypt_6_0, 0x2E4, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_6_1, 0x2E4, 1, 1

gAreaRoomMap_RoyalCrypt_7:: @ 0810629C
	map_bottom offset_gAreaRoomMap_RoyalCrypt_7_0, 0x2EC, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_7_1, 0x2EC, 1, 1

gAreaRoomMap_RoyalCrypt_8:: @ 081062B4
	map_bottom offset_gAreaRoomMap_RoyalCrypt_8_0, 0x154, 1
	map_top offset_gAreaRoomMap_RoyalCrypt_8_1, 0x154, 1, 1

gAreaRoomMaps_RoyalCrypt:: @ 081062CC
	.4byte gAreaRoomMap_RoyalCrypt_0
	.4byte gAreaRoomMap_RoyalCrypt_1
	.4byte gAreaRoomMap_RoyalCrypt_2
	.4byte gAreaRoomMap_RoyalCrypt_3
	.4byte gAreaRoomMap_RoyalCrypt_4
	.4byte gAreaRoomMap_RoyalCrypt_5
	.4byte gAreaRoomMap_RoyalCrypt_6
	.4byte gAreaRoomMap_RoyalCrypt_7
	.4byte gAreaRoomMap_RoyalCrypt_8
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

gAreaRoomMap_PalaceOfWinds_GyorgTornado:: @ 0810630C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_GyorgTornado_0, 0xA8C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_GyorgTornado_1, 0xA8C, 1, 1

gAreaRoomMap_PalaceOfWinds_BossKey:: @ 08106324
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BossKey_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BossKey_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers:: @ 0810633C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_0, 0x1A4, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_1, 0x1A4, 1, 1

gAreaRoomMap_PalaceOfWinds_GyorgBossDoor:: @ 08106354
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_0, 0x384, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_1, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor:: @ 0810636C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight:: @ 08106384
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_0, 0x384, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_1, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_FourButtonStalfos:: @ 0810639C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_0, 0x384, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_1, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey:: @ 081063B4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_0, 0x384, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_1, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers:: @ 081063CC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_0, 0x258, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_1, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_BombarossaPath:: @ 081063E4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BombarossaPath_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BombarossaPath_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_HoleToDarknut:: @ 081063FC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_HoleToDarknut_0, 0x186, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_HoleToDarknut_1, 0x186, 1, 1

gAreaRoomMap_PalaceOfWinds_ToBombarossaPath:: @ 08106414
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_DarknutMiniboss:: @ 0810642C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_0, 0x1E0, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_1, 0x1E0, 1, 1

gAreaRoomMap_PalaceOfWinds_BombWallInside:: @ 08106444
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BombWallInside_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BombWallInside_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_BombWallOutside:: @ 0810645C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BombWallOutside_0, 0x258, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BombWallOutside_1, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_CloudJumps:: @ 08106474
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_CloudJumps_0, 0x708, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_CloudJumps_1, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor:: @ 0810648C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_0, 0xA8C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_1, 0xA8C, 1, 1

gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu:: @ 081064A4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_0, 0x384, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_1, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_HeartPieceBridge:: @ 081064BC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_0, 0x258, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_1, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_FanBridge:: @ 081064D4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_FanBridge_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_FanBridge_1, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_ToFanBridge:: @ 081064EC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_ToFanBridge_0, 0x258, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_ToFanBridge_1, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_RedWarpHall:: @ 08106504
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_RedWarpHall_0, 0x708, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_RedWarpHall_1, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_PlatformCloneRide:: @ 0810651C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_1, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey:: @ 08106534
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_0, 0x258, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_1, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_CrowRide:: @ 0810654C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_CrowRide_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_CrowRide_1, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_GratePlatformRide:: @ 08106564
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_GratePlatformRide_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_GratePlatformRide_1, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_PotPush:: @ 0810657C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_PotPush_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_PotPush_1, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_FloormasterLever:: @ 08106594
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_FloormasterLever_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_FloormasterLever_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_Map:: @ 081065AC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_Map_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_Map_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_CornerToMap:: @ 081065C4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_CornerToMap_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_CornerToMap_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster:: @ 081065DC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe:: @ 081065F4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_KeyArrowButton:: @ 0810660C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_KeyArrowButton_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_KeyArrowButton_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_GratesTo3F:: @ 08106624
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_GratesTo3F_0, 0xA8C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_GratesTo3F_1, 0xA8C, 1, 1

gAreaRoomMap_PalaceOfWinds_SpinyFight:: @ 0810663C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_SpinyFight_0, 0x708, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_SpinyFight_1, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_PeahatSwitch:: @ 08106654
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_PeahatSwitch_0, 0x258, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_PeahatSwitch_1, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa:: @ 0810666C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_0, 0x4B0, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_1, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar:: @ 08106684
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_StalfosFireborHole:: @ 0810669C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_StalfosFireborHole_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_StalfosFireborHole_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons:: @ 081066B4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch:: @ 081066CC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight:: @ 081066E4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_GibdoStairs:: @ 081066FC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_GibdoStairs_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_GibdoStairs_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey:: @ 08106714
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_0, 0x258, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_1, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_RocCape:: @ 0810672C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_RocCape_0, 0x708, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_RocCape_1, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_FireBarGrates:: @ 08106744
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_FireBarGrates_0, 0x708, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_FireBarGrates_1, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas:: @ 0810675C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_0, 0x550, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_1, 0x550, 1, 1

gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut:: @ 08106774
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_0, 0x12C, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_1, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock:: @ 0810678C
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_0, 0x500, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_1, 0x500, 1, 1

gAreaRoomMap_PalaceOfWinds_EntranceRoom:: @ 081067A4
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_EntranceRoom_0, 0x3DE, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_EntranceRoom_1, 0x3DE, 1, 1

gAreaRoomMap_PalaceOfWinds_DarkCompassHall:: @ 081067BC
	map_bottom offset_gAreaRoomMap_PalaceOfWinds_DarkCompassHall_0, 0x708, 1
	map_top offset_gAreaRoomMap_PalaceOfWinds_DarkCompassHall_1, 0x708, 1, 1

gAreaRoomMaps_PalaceOfWinds:: @ 081067D4
	.4byte gAreaRoomMap_PalaceOfWinds_GyorgTornado
	.4byte gAreaRoomMap_PalaceOfWinds_BossKey
	.4byte gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers
	.4byte gAreaRoomMap_PalaceOfWinds_GyorgBossDoor
	.4byte gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor
	.4byte gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight
	.4byte gAreaRoomMap_PalaceOfWinds_FourButtonStalfos
	.4byte gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey
	.4byte gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers
	.4byte gAreaRoomMap_PalaceOfWinds_BombarossaPath
	.4byte gAreaRoomMap_PalaceOfWinds_HoleToDarknut
	.4byte gAreaRoomMap_PalaceOfWinds_ToBombarossaPath
	.4byte gAreaRoomMap_PalaceOfWinds_DarknutMiniboss
	.4byte gAreaRoomMap_PalaceOfWinds_BombWallInside
	.4byte gAreaRoomMap_PalaceOfWinds_BombWallOutside
	.4byte gAreaRoomMap_PalaceOfWinds_CloudJumps
	.4byte gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor
	.4byte gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu
	.4byte gAreaRoomMap_PalaceOfWinds_HeartPieceBridge
	.4byte gAreaRoomMap_PalaceOfWinds_FanBridge
	.4byte gAreaRoomMap_PalaceOfWinds_ToFanBridge
	.4byte gAreaRoomMap_PalaceOfWinds_RedWarpHall
	.4byte gAreaRoomMap_PalaceOfWinds_PlatformCloneRide
	.4byte gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey
	.4byte gAreaRoomMap_PalaceOfWinds_CrowRide
	.4byte gAreaRoomMap_PalaceOfWinds_GratePlatformRide
	.4byte gAreaRoomMap_PalaceOfWinds_PotPush
	.4byte gAreaRoomMap_PalaceOfWinds_FloormasterLever
	.4byte gAreaRoomMap_PalaceOfWinds_Map
	.4byte gAreaRoomMap_PalaceOfWinds_CornerToMap
	.4byte gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster
	.4byte gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe
	.4byte gAreaRoomMap_PalaceOfWinds_KeyArrowButton
	.4byte gAreaRoomMap_PalaceOfWinds_GratesTo3F
	.4byte gAreaRoomMap_PalaceOfWinds_SpinyFight
	.4byte gAreaRoomMap_PalaceOfWinds_PeahatSwitch
	.4byte gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa
	.4byte gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar
	.4byte gAreaRoomMap_PalaceOfWinds_StalfosFireborHole
	.4byte gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons
	.4byte gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch
	.4byte gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight
	.4byte gAreaRoomMap_PalaceOfWinds_GibdoStairs
	.4byte gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey
	.4byte gAreaRoomMap_PalaceOfWinds_RocCape
	.4byte gAreaRoomMap_PalaceOfWinds_FireBarGrates
	.4byte gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas
	.4byte gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut
	.4byte gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock
	.4byte gAreaRoomMap_PalaceOfWinds_EntranceRoom
	.4byte gAreaRoomMap_PalaceOfWinds_DarkCompassHall

gAreaRoomMap_PalaceOfWindsBoss_0:: @ 081068A0
	map_top offset_gAreaRoomMap_PalaceOfWindsBoss_0_0, 0x1F80, 1, 1
gAreaRoomMaps_PalaceOfWindsBoss:: @ 081068AC
	.4byte gAreaRoomMap_PalaceOfWindsBoss_0

gAreaRoomMap_Sanctuary_0:: @ 081068B0
	map_bottom offset_gAreaRoomMap_Sanctuary_0_0, 0x6D6, 1
	map_top offset_gAreaRoomMap_Sanctuary_0_1, 0x6D6, 1, 1

gAreaRoomMap_Sanctuary_1:: @ 081068C8
	map_bottom offset_gAreaRoomMap_Sanctuary_1_0, 0x910, 1
	map_top offset_gAreaRoomMap_Sanctuary_1_1, 0x910, 1, 1

gAreaRoomMap_Sanctuary_2:: @ 081068E0
	map_bottom offset_gAreaRoomMap_Sanctuary_2_0, 0x344, 1
	map_top offset_gAreaRoomMap_Sanctuary_2_1, 0x344, 1, 1

gAreaRoomMaps_Sanctuary:: @ 081068F8
	.4byte gAreaRoomMap_Sanctuary_0
	.4byte gAreaRoomMap_Sanctuary_1
	.4byte gAreaRoomMap_Sanctuary_2
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

gAreaRoomMap_HyruleCastle_0:: @ 08106918
	map_bottom offset_gAreaRoomMap_HyruleCastle_0_0, 0x7CE, 1
	map_top offset_gAreaRoomMap_HyruleCastle_0_1, 0x7CE, 1, 1

gAreaRoomMap_HyruleCastle_1:: @ 08106930
	map_bottom offset_gAreaRoomMap_HyruleCastle_1_0, 0x7FE, 1
	map_top offset_gAreaRoomMap_HyruleCastle_1_1, 0x7FE, 1, 1

gAreaRoomMap_HyruleCastle_2:: @ 08106948
	map_bottom offset_gAreaRoomMap_HyruleCastle_2_0, 0x2EC, 1
	map_top offset_gAreaRoomMap_HyruleCastle_2_1, 0x2EC, 1, 1

gAreaRoomMap_HyruleCastle_3:: @ 08106960
	map_bottom offset_gAreaRoomMap_HyruleCastle_3_0, 0xC94, 1
	map_top offset_gAreaRoomMap_HyruleCastle_3_1, 0xC94, 1, 1

gAreaRoomMap_HyruleCastle_4:: @ 08106978
	map_bottom offset_gAreaRoomMap_HyruleCastle_4_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_HyruleCastle_4_1, 0x1FE, 1, 1

gAreaRoomMap_HyruleCastle_5:: @ 08106990
	map_bottom offset_gAreaRoomMap_HyruleCastle_5_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HyruleCastle_5_1, 0x12C, 1, 1

gAreaRoomMap_HyruleCastle_6:: @ 081069A8
	map_bottom offset_gAreaRoomMap_HyruleCastle_6_0, 0x12C, 1
	map_top offset_gAreaRoomMap_HyruleCastle_6_1, 0x12C, 1, 1

gAreaRoomMaps_HyruleCastle:: @ 081069C0
	.4byte gAreaRoomMap_HyruleCastle_0
	.4byte gAreaRoomMap_HyruleCastle_1
	.4byte gAreaRoomMap_HyruleCastle_2
	.4byte gAreaRoomMap_HyruleCastle_3
	.4byte gAreaRoomMap_HyruleCastle_4
	.4byte gAreaRoomMap_HyruleCastle_5
	.4byte gAreaRoomMap_HyruleCastle_6
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

gAreaRoomMap_SanctuaryEntrance_0:: @ 08106A00
	map_bottom offset_gAreaRoomMap_SanctuaryEntrance_0_0, 0x396, 1
	map_top offset_gAreaRoomMap_SanctuaryEntrance_0_1, 0x396, 1, 1

gAreaRoomMaps_SanctuaryEntrance:: @ 08106A18
	.4byte gAreaRoomMap_SanctuaryEntrance_0

gAreaRoomMap_DarkHyruleCastle_1FEntrance:: @ 08106A1C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FEntrance_0, 0xE58, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FEntrance_1, 0xE58, 1, 1

gAreaRoomMap_DarkHyruleCastle_3FTopLeftTower:: @ 08106A34
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_3FTopLeftTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_3FTopLeftTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_3FTopRightTower:: @ 08106A4C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_3FTopRightTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_3FTopRightTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_3FBottomLeftTower:: @ 08106A64
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_3FBottomLeftTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_3FBottomLeftTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_3FBottomRightTower:: @ 08106A7C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_3FBottomRightTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_3FBottomRightTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati:: @ 08106A94
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati_0, 0x444, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati_1, 0x444, 1, 1

gAreaRoomMap_DarkHyruleCastle_3FTripleDarknut:: @ 08106AAC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_3FTripleDarknut_0, 0x2A0, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_3FTripleDarknut_1, 0x2A0, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FTopLeftTower:: @ 08106AC4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FTopLeftTower_0, 0x374, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FTopLeftTower_1, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FTopLeftCorner:: @ 08106ADC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FTopLeftCorner_0, 0x374, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FTopLeftCorner_1, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBossKey:: @ 08106AF4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBossKey_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBossKey_1, 0x1FE, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBlueWarp:: @ 08106B0C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBlueWarp_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBlueWarp_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerGhini:: @ 08106B24
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerGhini_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerGhini_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerTorches:: @ 08106B3C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerTorches_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerTorches_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FTopRightTower:: @ 08106B54
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FTopRightTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FTopRightTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FTopLeftDarknut:: @ 08106B6C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FTopLeftDarknut_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FTopLeftDarknut_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FSparks:: @ 08106B84
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FSparks_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FSparks_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FTopRightDarknuts:: @ 08106B9C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FTopRightDarknuts_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FTopRightDarknuts_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FLeft:: @ 08106BB4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FLeft_0, 0x2A8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FLeft_1, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FRight:: @ 08106BCC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FRight_0, 0x2A8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FRight_1, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBottomLeftDarknuts:: @ 08106BE4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftDarknuts_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftDarknuts_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBossDoor:: @ 08106BFC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBossDoor_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBossDoor_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBottomRightDarknut:: @ 08106C14
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBottomRightDarknut_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBottomRightDarknut_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCornerPuzzle:: @ 08106C2C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCornerPuzzle_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCornerPuzzle_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FEntrance:: @ 08106C44
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FEntrance_0, 0x374, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FEntrance_1, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCorner:: @ 08106C5C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCorner_0, 0x374, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCorner_1, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBottomLeftTower:: @ 08106C74
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBottomLeftGhini:: @ 08106C8C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftGhini_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBottomLeftGhini_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_3FTopRightTower7:: @ 08106CA4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_3FTopRightTower7_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_3FTopRightTower7_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1Entrance:: @ 08106CBC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1Entrance_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1Entrance_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2FBottomRightTower:: @ 08106CD4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_2FBottomRightTower_0, 0x374, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_2FBottomRightTower_1, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FTopLeftTower:: @ 08106CEC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FTopLeftTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FTopLeftTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FThroneRoom:: @ 08106D04
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FThroneRoom_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FThroneRoom_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FCompass:: @ 08106D1C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FCompass_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FCompass_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FTopRightTower:: @ 08106D34
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FTopRightTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FTopRightTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FBeforeThrone:: @ 08106D4C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FBeforeThrone_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FBeforeThrone_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FLoopTopLeft:: @ 08106D64
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FLoopTopLeft_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FLoopTopLeft_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FLoopTop:: @ 08106D7C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FLoopTop_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FLoopTop_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FLoopTopRight:: @ 08106D94
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FLoopTopRight_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FLoopTopRight_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FLoopLeft:: @ 08106DAC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FLoopLeft_0, 0x2A8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FLoopLeft_1, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FLoopRight:: @ 08106DC4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FLoopRight_0, 0x2A8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FLoopRight_1, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FLoopBottomLeft:: @ 08106DDC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FLoopBottomLeft_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FLoopBottomLeft_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FLoopBottom:: @ 08106DF4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FLoopBottom_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FLoopBottom_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FLoopBottomRight:: @ 08106E0C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FLoopBottomRight_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FLoopBottomRight_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FBottomLeftTower:: @ 08106E24
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FBottomLeftTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FBottomLeftTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_1FBottomRightTower:: @ 08106E3C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_1FBottomRightTower_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_1FBottomRightTower_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1BelowThrone:: @ 08106E54
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1BelowCompass:: @ 08106E6C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone:: @ 08106E84
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1ToPrison:: @ 08106E9C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1ToPrison_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1ToPrison_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1BombWall:: @ 08106EB4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1BombWall_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1BombWall_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1Keatons:: @ 08106ECC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1Keatons_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1Keatons_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar:: @ 08106EE4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_0, 0x2A8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_1, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1Cannons:: @ 08106EFC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1Cannons_0, 0x2A8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1Cannons_1, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1Left:: @ 08106F14
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1Left_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1Left_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1Right:: @ 08106F2C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1Right_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1Right_1, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_B1Map:: @ 08106F44
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B1Map_0, 0xA5C, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B1Map_1, 0xA5C, 1, 1

gAreaRoomMap_DarkHyruleCastle_B2ToPrison:: @ 08106F5C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B2ToPrison_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B2ToPrison_1, 0x1FE, 1, 1

gAreaRoomMap_DarkHyruleCastle_B2Prison:: @ 08106F74
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B2Prison_0, 0x3FC, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B2Prison_1, 0x3FC, 1, 1

gAreaRoomMap_DarkHyruleCastle_B2Dropdown:: @ 08106F8C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_B2Dropdown_0, 0x264, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_B2Dropdown_1, 0x264, 1, 1

gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati9:: @ 08106FA4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati9_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati9_1, 0x1BA, 1, 1

gAreaRoomMaps_DarkHyruleCastle:: @ 08106FBC
	.4byte gAreaRoomMap_DarkHyruleCastle_1FEntrance
	.4byte gAreaRoomMap_DarkHyruleCastle_3FTopLeftTower
	.4byte gAreaRoomMap_DarkHyruleCastle_3FTopRightTower
	.4byte gAreaRoomMap_DarkHyruleCastle_3FBottomLeftTower
	.4byte gAreaRoomMap_DarkHyruleCastle_3FBottomRightTower
	.4byte gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati
	.4byte gAreaRoomMap_DarkHyruleCastle_3FTripleDarknut
	.4byte gAreaRoomMap_DarkHyruleCastle_2FTopLeftTower
	.4byte gAreaRoomMap_DarkHyruleCastle_2FTopLeftCorner
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBossKey
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBlueWarp
	.4byte gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerGhini
	.4byte gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerTorches
	.4byte gAreaRoomMap_DarkHyruleCastle_2FTopRightTower
	.4byte gAreaRoomMap_DarkHyruleCastle_2FTopLeftDarknut
	.4byte gAreaRoomMap_DarkHyruleCastle_2FSparks
	.4byte gAreaRoomMap_DarkHyruleCastle_2FTopRightDarknuts
	.4byte gAreaRoomMap_DarkHyruleCastle_2FLeft
	.4byte gAreaRoomMap_DarkHyruleCastle_2FRight
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBottomLeftDarknuts
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBossDoor
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBottomRightDarknut
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCornerPuzzle
	.4byte gAreaRoomMap_DarkHyruleCastle_2FEntrance
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCorner
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBottomLeftTower
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBottomLeftGhini
	.4byte gAreaRoomMap_DarkHyruleCastle_3FTopRightTower7
	.4byte gAreaRoomMap_DarkHyruleCastle_B1Entrance
	.4byte gAreaRoomMap_DarkHyruleCastle_2FBottomRightTower
	.4byte gAreaRoomMap_DarkHyruleCastle_1FTopLeftTower
	.4byte gAreaRoomMap_DarkHyruleCastle_1FThroneRoom
	.4byte gAreaRoomMap_DarkHyruleCastle_1FCompass
	.4byte gAreaRoomMap_DarkHyruleCastle_1FTopRightTower
	.4byte gAreaRoomMap_DarkHyruleCastle_1FBeforeThrone
	.4byte gAreaRoomMap_DarkHyruleCastle_1FLoopTopLeft
	.4byte gAreaRoomMap_DarkHyruleCastle_1FLoopTop
	.4byte gAreaRoomMap_DarkHyruleCastle_1FLoopTopRight
	.4byte gAreaRoomMap_DarkHyruleCastle_1FLoopLeft
	.4byte gAreaRoomMap_DarkHyruleCastle_1FLoopRight
	.4byte gAreaRoomMap_DarkHyruleCastle_1FLoopBottomLeft
	.4byte gAreaRoomMap_DarkHyruleCastle_1FLoopBottom
	.4byte gAreaRoomMap_DarkHyruleCastle_1FLoopBottomRight
	.4byte gAreaRoomMap_DarkHyruleCastle_1FBottomLeftTower
	.4byte gAreaRoomMap_DarkHyruleCastle_1FBottomRightTower
	.4byte gAreaRoomMap_DarkHyruleCastle_B1BelowThrone
	.4byte gAreaRoomMap_DarkHyruleCastle_B1BelowCompass
	.4byte gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone
	.4byte gAreaRoomMap_DarkHyruleCastle_B1ToPrison
	.4byte gAreaRoomMap_DarkHyruleCastle_B1BombWall
	.4byte gAreaRoomMap_DarkHyruleCastle_B1Keatons
	.4byte gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar
	.4byte gAreaRoomMap_DarkHyruleCastle_B1Cannons
	.4byte gAreaRoomMap_DarkHyruleCastle_B1Left
	.4byte gAreaRoomMap_DarkHyruleCastle_B1Right
	.4byte gAreaRoomMap_DarkHyruleCastle_B1Map
	.4byte gAreaRoomMap_DarkHyruleCastle_B2ToPrison
	.4byte gAreaRoomMap_DarkHyruleCastle_B2Prison
	.4byte gAreaRoomMap_DarkHyruleCastle_B2Dropdown
	.4byte gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati9

gAreaRoomMap_DarkHyruleCastleOutside_0:: @ 081070AC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_0_0, 0x2EE, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_0_1, 0x2EE, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_1:: @ 081070C4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_1_0, 0x396, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_1_1, 0x396, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_2:: @ 081070DC
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_2_0, 0x374, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_2_1, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_3:: @ 081070F4
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_3_0, 0x52E, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_3_1, 0x52E, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_4:: @ 0810710C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_4_0, 0x2A8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_4_1, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_5:: @ 08107124
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_5_0, 0x374, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_5_1, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_6:: @ 0810713C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_6_0, 0xA5C, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_6_1, 0xA5C, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_7:: @ 08107154
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_7_0, 0x6E8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_7_1, 0x6E8, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_8:: @ 0810716C
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleOutside_8_0, 0x630, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleOutside_8_1, 0x630, 1, 1

gAreaRoomMaps_DarkHyruleCastleOutside:: @ 08107184
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_0
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_1
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_2
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_3
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_4
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_5
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_6
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_7
	.4byte gAreaRoomMap_DarkHyruleCastleOutside_8

gAreaRoomMap_DarkHyruleCastleBridge_0:: @ 081071A8
	map_bottom offset_gAreaRoomMap_DarkHyruleCastleBridge_0_0, 0x2A8, 1
	map_top offset_gAreaRoomMap_DarkHyruleCastleBridge_0_1, 0x2A8, 1, 1

gAreaRoomMaps_DarkHyruleCastleBridge:: @ 081071C0
	.4byte gAreaRoomMap_DarkHyruleCastleBridge_0

gAreaRoomMap_VaatisArms_0:: @ 081071C4
	map_bottom offset_gAreaRoomMap_VaatisArms_0_0, 0x214, 1
	map_top offset_gAreaRoomMap_VaatisArms_0_1, 0x214, 1, 1

gAreaRoomMap_VaatisArms_1:: @ 081071DC
	map_bottom offset_gAreaRoomMap_VaatisArms_1_0, 0x214, 1
	map_top offset_gAreaRoomMap_VaatisArms_1_1, 0x214, 1, 1

gAreaRoomMap_VaatisArms_2:: @ 081071F4
	map_bottom offset_gAreaRoomMap_VaatisArms_2_0, 0x214, 1
	map_top offset_gAreaRoomMap_VaatisArms_2_1, 0x214, 1, 1

gAreaRoomMaps_VaatisArms:: @ 0810720C
	.4byte gAreaRoomMap_VaatisArms_0
	.4byte gAreaRoomMap_VaatisArms_1
	.4byte gAreaRoomMap_VaatisArms_2

gAreaRoomMap_Vaati3_0:: @ 08107218
	map_bottom offset_gAreaRoomMap_Vaati3_0_0, 0x294, 1
	map_top offset_gAreaRoomMap_Vaati3_0_1, 0x294, 1, 1

gAreaRoomMap_Vaati3_1:: @ 08107230
	map_bottom offset_gAreaRoomMap_Vaati3_1_0, 0x210, 1
	map_top offset_gAreaRoomMap_Vaati3_1_1, 0x210, 1, 1

gAreaRoomMaps_Vaati3:: @ 08107248
	.4byte gAreaRoomMap_Vaati3_0
	.4byte gAreaRoomMap_Vaati3_1

gAreaRoomMap_Vaati2_0:: @ 08107250
	map_bottom offset_gAreaRoomMap_Vaati2_0_0, 0x294, 1
	map_top offset_gAreaRoomMap_Vaati2_0_1, 0x294, 1, 1

gAreaRoomMaps_Vaati2:: @ 08107268
	.4byte gAreaRoomMap_Vaati2_0

gAreaRoomMap_47_0:: @ 0810726C
	map_bottom offset_gAreaRoomMap_47_0_0, 0x256, 1
	map_top offset_gAreaRoomMap_47_0_1, 0x256, 1, 1

gAreaRoomMap_47_1:: @ 08107284
	map_bottom offset_gAreaRoomMap_47_1_0, 0x2B2, 1
	map_top offset_gAreaRoomMap_47_1_1, 0x2B2, 1, 1

gAreaRoomMap_47_2:: @ 0810729C
	map_bottom offset_gAreaRoomMap_47_2_0, 0x47E, 1
	map_top offset_gAreaRoomMap_47_2_1, 0x47E, 1, 1

gAreaRoomMaps_47:: @ 081072B4
	.4byte gAreaRoomMap_47_0
	.4byte gAreaRoomMap_47_1
	.4byte gAreaRoomMap_47_2

gAreaRoomMap_CastorCaves_0:: @ 081072C0
	map_bottom offset_gAreaRoomMap_CastorCaves_0_0, 0x168, 1
	map_top offset_gAreaRoomMap_CastorCaves_0_1, 0x168, 1, 1

gAreaRoomMap_CastorCaves_1:: @ 081072D8
	map_bottom offset_gAreaRoomMap_CastorCaves_1_0, 0x1B8, 1
	map_top offset_gAreaRoomMap_CastorCaves_1_1, 0x1B8, 1, 1

gAreaRoomMap_CastorCaves_2:: @ 081072F0
	map_bottom offset_gAreaRoomMap_CastorCaves_2_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CastorCaves_2_1, 0x12C, 1, 1

gAreaRoomMap_CastorCaves_3:: @ 08107308
	map_bottom offset_gAreaRoomMap_CastorCaves_3_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CastorCaves_3_1, 0x12C, 1, 1

gAreaRoomMap_CastorCaves_4:: @ 08107320
	map_bottom offset_gAreaRoomMap_CastorCaves_4_0, 0x12C, 1
	map_top offset_gAreaRoomMap_CastorCaves_4_1, 0x12C, 1, 1

gAreaRoomMaps_CastorCaves:: @ 08107338
	.4byte gAreaRoomMap_CastorCaves_0
	.4byte gAreaRoomMap_CastorCaves_1
	.4byte gAreaRoomMap_CastorCaves_2
	.4byte gAreaRoomMap_CastorCaves_3
	.4byte gAreaRoomMap_CastorCaves_4

gAreaRoomMap_CastorDarknut_0:: @ 0810734C
	map_bottom offset_gAreaRoomMap_CastorDarknut_0_0, 0x1BA, 1
	map_top offset_gAreaRoomMap_CastorDarknut_0_1, 0x1BA, 1, 1

gAreaRoomMap_CastorDarknut_1:: @ 08107364
	map_bottom offset_gAreaRoomMap_CastorDarknut_1_0, 0x280, 1
	map_top offset_gAreaRoomMap_CastorDarknut_1_1, 0x280, 1, 1

gAreaRoomMaps_CastorDarknut:: @ 0810737C
	.4byte gAreaRoomMap_CastorDarknut_0
	.4byte gAreaRoomMap_CastorDarknut_1

gAreaRoomMap_Caves_0:: @ 08107384
	map_bottom offset_gAreaRoomMap_Caves_0_0, 0x372, 1
	map_top offset_gAreaRoomMap_Caves_0_1, 0x372, 1, 1

gAreaRoomMap_Caves_1:: @ 0810739C
	map_bottom offset_gAreaRoomMap_Caves_1_0, 0x2B2, 1
	map_top offset_gAreaRoomMap_Caves_1_1, 0x2B2, 1, 1

gAreaRoomMap_Caves_2:: @ 081073B4
	map_bottom offset_gAreaRoomMap_Caves_2_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_2_1, 0x12C, 1, 1

gAreaRoomMap_Caves_3:: @ 081073CC
	map_bottom offset_gAreaRoomMap_Caves_3_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_3_1, 0x12C, 1, 1

gAreaRoomMap_Caves_4:: @ 081073E4
	map_bottom offset_gAreaRoomMap_Caves_4_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_4_1, 0x12C, 1, 1

gAreaRoomMap_Caves_5:: @ 081073FC
	map_bottom offset_gAreaRoomMap_Caves_5_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_5_1, 0x12C, 1, 1

gAreaRoomMap_Caves_6:: @ 08107414
	map_bottom offset_gAreaRoomMap_Caves_6_0, 0x1A4, 1
	map_top offset_gAreaRoomMap_Caves_6_1, 0x1A4, 1, 1

gAreaRoomMap_Caves_7:: @ 0810742C
	map_bottom offset_gAreaRoomMap_Caves_7_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_7_1, 0x12C, 1, 1

gAreaRoomMap_Caves_8:: @ 08107444
	map_bottom offset_gAreaRoomMap_Caves_8_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_8_1, 0x12C, 1, 1

gAreaRoomMap_Caves_9:: @ 0810745C
	map_bottom offset_gAreaRoomMap_Caves_9_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_9_1, 0x12C, 1, 1

gAreaRoomMap_Caves_10:: @ 08107474
	map_bottom offset_gAreaRoomMap_Caves_10_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_10_1, 0x12C, 1, 1

gAreaRoomMap_Caves_11:: @ 0810748C
	map_bottom offset_gAreaRoomMap_Caves_11_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_11_1, 0x12C, 1, 1

gAreaRoomMap_Caves_12:: @ 081074A4
	map_bottom offset_gAreaRoomMap_Caves_12_0, 0x1E0, 1
	map_top offset_gAreaRoomMap_Caves_12_1, 0x1E0, 1, 1

gAreaRoomMap_Caves_13:: @ 081074BC
	map_bottom offset_gAreaRoomMap_Caves_13_0, 0x1E0, 1
	map_top offset_gAreaRoomMap_Caves_13_1, 0x1E0, 1, 1

gAreaRoomMap_Caves_14:: @ 081074D4
	map_bottom offset_gAreaRoomMap_Caves_14_0, 0x208, 1
	map_top offset_gAreaRoomMap_Caves_14_1, 0x208, 1, 1

gAreaRoomMap_Caves_15:: @ 081074EC
	map_bottom offset_gAreaRoomMap_Caves_15_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_15_1, 0x12C, 1, 1

gAreaRoomMap_Caves_16:: @ 08107504
	map_bottom offset_gAreaRoomMap_Caves_16_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_16_1, 0x12C, 1, 1

gAreaRoomMap_Caves_17:: @ 0810751C
	map_bottom offset_gAreaRoomMap_Caves_17_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_17_1, 0x12C, 1, 1

gAreaRoomMap_Caves_18:: @ 08107534
	map_bottom offset_gAreaRoomMap_Caves_18_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_18_1, 0x12C, 1, 1

gAreaRoomMap_Caves_19:: @ 0810754C
	map_bottom offset_gAreaRoomMap_Caves_19_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_19_1, 0x12C, 1, 1

gAreaRoomMap_Caves_20:: @ 08107564
	map_bottom offset_gAreaRoomMap_Caves_20_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_20_1, 0x12C, 1, 1

gAreaRoomMap_Caves_21:: @ 0810757C
	map_bottom offset_gAreaRoomMap_Caves_21_0, 0x1C2, 1
	map_top offset_gAreaRoomMap_Caves_21_1, 0x1C2, 1, 1

gAreaRoomMap_Caves_22:: @ 08107594
	map_bottom offset_gAreaRoomMap_Caves_22_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_22_1, 0x12C, 1, 1

gAreaRoomMap_Caves_23:: @ 081075AC
	map_bottom offset_gAreaRoomMap_Caves_23_0, 0x12C, 1
	map_top offset_gAreaRoomMap_Caves_23_1, 0x12C, 1, 1

gAreaRoomMaps_Caves:: @ 081075C4
	.4byte gAreaRoomMap_Caves_0
	.4byte gAreaRoomMap_Caves_1
	.4byte gAreaRoomMap_Caves_2
	.4byte gAreaRoomMap_Caves_3
	.4byte gAreaRoomMap_Caves_4
	.4byte gAreaRoomMap_Caves_5
	.4byte gAreaRoomMap_Caves_6
	.4byte gAreaRoomMap_Caves_7
	.4byte gAreaRoomMap_Caves_8
	.4byte gAreaRoomMap_Caves_9
	.4byte gAreaRoomMap_Caves_10
	.4byte gAreaRoomMap_Caves_11
	.4byte gAreaRoomMap_Caves_12
	.4byte gAreaRoomMap_Caves_13
	.4byte gAreaRoomMap_Caves_14
	.4byte gAreaRoomMap_Caves_15
	.4byte gAreaRoomMap_Caves_16
	.4byte gAreaRoomMap_Caves_17
	.4byte gAreaRoomMap_Caves_18
	.4byte gAreaRoomMap_Caves_19
	.4byte gAreaRoomMap_Caves_20
	.4byte gAreaRoomMap_Caves_21
	.4byte gAreaRoomMap_Caves_22
	.4byte gAreaRoomMap_Caves_23

gAreaRoomMap_VeilFallsCaves_0:: @ 08107624
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_0_0, 0x1A4, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_0_1, 0x1A4, 1, 1

gAreaRoomMap_VeilFallsCaves_1:: @ 0810763C
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_1_0, 0x2D0, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_1_1, 0x2D0, 1, 1

gAreaRoomMap_VeilFallsCaves_2:: @ 08107654
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_2_0, 0x186, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_2_1, 0x186, 1, 1

gAreaRoomMap_VeilFallsCaves_3:: @ 0810766C
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_3_0, 0x1E0, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_3_1, 0x1E0, 1, 1

gAreaRoomMap_VeilFallsCaves_4:: @ 08107684
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_4_0, 0x12C, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_4_1, 0x12C, 1, 1

gAreaRoomMap_VeilFallsCaves_5:: @ 0810769C
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_5_0, 0x12C, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_5_1, 0x12C, 1, 1

gAreaRoomMap_VeilFallsCaves_6:: @ 081076B4
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_6_0, 0x12C, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_6_1, 0x12C, 1, 1

gAreaRoomMap_VeilFallsCaves_7:: @ 081076CC
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_7_0, 0x258, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_7_1, 0x258, 1, 1

gAreaRoomMap_VeilFallsCaves_8:: @ 081076E4
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_8_0, 0x258, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_8_1, 0x258, 1, 1

gAreaRoomMap_VeilFallsCaves_9:: @ 081076FC
	map_bottom offset_gAreaRoomMap_VeilFallsCaves_9_0, 0x12C, 1
	map_top offset_gAreaRoomMap_VeilFallsCaves_9_1, 0x12C, 1, 1

gAreaRoomMaps_VeilFallsCaves:: @ 08107714
	.4byte gAreaRoomMap_VeilFallsCaves_0
	.4byte gAreaRoomMap_VeilFallsCaves_1
	.4byte gAreaRoomMap_VeilFallsCaves_2
	.4byte gAreaRoomMap_VeilFallsCaves_3
	.4byte gAreaRoomMap_VeilFallsCaves_4
	.4byte gAreaRoomMap_VeilFallsCaves_5
	.4byte gAreaRoomMap_VeilFallsCaves_6
	.4byte gAreaRoomMap_VeilFallsCaves_7
	.4byte gAreaRoomMap_VeilFallsCaves_8
	.4byte gAreaRoomMap_VeilFallsCaves_9

gAreaRoomMap_RoyalValleyGraves_0:: @ 0810773C
	map_bottom offset_gAreaRoomMap_RoyalValleyGraves_0_0, 0x12C, 1
	map_top offset_gAreaRoomMap_RoyalValleyGraves_0_1, 0x12C, 1, 1

gAreaRoomMap_RoyalValleyGraves_1:: @ 08107754
	map_bottom offset_gAreaRoomMap_RoyalValleyGraves_1_0, 0x258, 1
	map_top offset_gAreaRoomMap_RoyalValleyGraves_1_1, 0x258, 1, 1

gAreaRoomMaps_RoyalValleyGraves:: @ 0810776C
	.4byte gAreaRoomMap_RoyalValleyGraves_0
	.4byte gAreaRoomMap_RoyalValleyGraves_1

gAreaRoomMap_45_0:: @ 08107774
	map_bottom offset_gAreaRoomMap_45_0_0, 0x1FE, 1
	map_top offset_gAreaRoomMap_45_0_1, 0x1FE, 1, 1

gAreaRoomMaps_45:: @ 0810778C
	.4byte gAreaRoomMap_45_0

gAreaRoomMap_46_0:: @ 08107790
	map_bottom offset_gAreaRoomMap_46_0_0, 0x286, 1
	map_top offset_gAreaRoomMap_46_0_1, 0x286, 1, 1

gAreaRoomMap_46_1:: @ 081077A8
	map_bottom offset_gAreaRoomMap_46_1_0, 0x30E, 1
	map_top offset_gAreaRoomMap_46_1_1, 0x30E, 1, 1

gAreaRoomMap_46_2:: @ 081077C0
	map_bottom offset_gAreaRoomMap_46_2_0, 0x286, 1
	map_top offset_gAreaRoomMap_46_2_1, 0x286, 1, 1

gAreaRoomMap_46_3:: @ 081077D8
	map_bottom offset_gAreaRoomMap_46_3_0, 0x286, 1
	map_top offset_gAreaRoomMap_46_3_1, 0x286, 1, 1

gAreaRoomMap_46_4:: @ 081077F0
	map_bottom offset_gAreaRoomMap_46_4_0, 0x30E, 1
	map_top offset_gAreaRoomMap_46_4_1, 0x30E, 1, 1

gAreaRoomMap_46_5:: @ 08107808
	map_bottom offset_gAreaRoomMap_46_5_0, 0x286, 1
	map_top offset_gAreaRoomMap_46_5_1, 0x286, 1, 1

gAreaRoomMap_46_6:: @ 08107820
	map_bottom offset_gAreaRoomMap_46_6_0, 0x720, 1
	map_top offset_gAreaRoomMap_46_6_1, 0x720, 1, 1

gAreaRoomMap_46_7:: @ 08107838
	map_bottom offset_gAreaRoomMap_46_7_0, 0x2F2, 1
	map_top offset_gAreaRoomMap_46_7_1, 0x2F2, 1, 1

gAreaRoomMaps_46:: @ 08107850
	.4byte gAreaRoomMap_46_0
	.4byte gAreaRoomMap_46_1
	.4byte gAreaRoomMap_46_2
	.4byte gAreaRoomMap_46_3
	.4byte gAreaRoomMap_46_4
	.4byte gAreaRoomMap_46_5
	.4byte gAreaRoomMap_46_6
	.4byte gAreaRoomMap_46_7

gAreaRoomMap_08107870:: @ 08107870
	map_bottom offset_gAreaRoomMap_08107870_0, 0xC80, 1
	map_top offset_gAreaRoomMap_08107870_1, 0xC80, 1, 1

@ Unused
	.4byte gAreaRoomMap_08107870

gAreaRoomMap_4D_0:: @ 0810788C
	map_bottom offset_gAreaRoomMap_4D_0_0, 0xCD0, 1
	map_top offset_gAreaRoomMap_4D_0_1, 0xCD0, 1, 1

gAreaRoomMaps_4D:: @ 081078A4
	.4byte gAreaRoomMap_4D_0

gAreaRoomMap_57_0:: @ 081078A8
	map_bottom offset_gAreaRoomMap_57_0_0, 0xC80, 1
	map_top offset_gAreaRoomMap_57_0_1, 0xC80, 1, 1

gAreaRoomMaps_57:: @ 081078C0
	.4byte gAreaRoomMap_57_0

gAreaRoomMap_5F_0:: @ 081078C4
	map_bottom offset_gAreaRoomMap_5F_0_0, 0xC80, 1
	map_top offset_gAreaRoomMap_5F_0_1, 0xC80, 1, 1

gAreaRoomMaps_5F:: @ 081078DC
	.4byte gAreaRoomMap_5F_0

gAreaRoomMap_67_0:: @ 081078E0
	map_bottom offset_gAreaRoomMap_67_0_0, 0x12C, 1
	map_top offset_gAreaRoomMap_67_0_1, 0x12C, 1, 1

gAreaRoomMaps_67:: @ 081078F8
	.4byte gAreaRoomMap_67_0

gAreaRoomMap_6F_0:: @ 081078FC
	map_bottom offset_gAreaRoomMap_6F_0_0, 0xC80, 1
	map_top offset_gAreaRoomMap_6F_0_1, 0xC80, 1, 1

gAreaRoomMaps_6F:: @ 08107914
	.4byte gAreaRoomMap_6F_0

gAreaRoomMap_77_0:: @ 08107918
	map_bottom offset_gAreaRoomMap_77_0_0, 0x1040, 1
	map_top offset_gAreaRoomMap_77_0_1, 0x1040, 1, 1

gAreaRoomMaps_77:: @ 08107930
	.4byte gAreaRoomMap_77_0

gAreaRoomMap_7F_0:: @ 08107934
	map_bottom offset_gAreaRoomMap_7F_0_0, 0xC80, 1
	map_top offset_gAreaRoomMap_7F_0_1, 0xC80, 1, 1

gAreaRoomMaps_7F:: @ 0810794C
	.4byte gAreaRoomMap_7F_0

gAreaRoomMap_87_0:: @ 08107950
	map_bottom offset_gAreaRoomMap_87_0_0, 0xF3C, 1
	map_top offset_gAreaRoomMap_87_0_1, 0xF3C, 1, 1

gAreaRoomMaps_87:: @ 08107968
	.4byte gAreaRoomMap_87_0

gAreaRoomMap_8F_0:: @ 0810796C
	map_bottom offset_gAreaRoomMap_8F_0_0, 0xFA0, 1
	map_top offset_gAreaRoomMap_8F_0_1, 0xFA0, 1, 1

gAreaRoomMaps_8F:: @ 08107984
	.4byte gAreaRoomMap_8F_0

gAreaRoomMaps:: @ 08107988
	.4byte gAreaRoomMaps_MinishWoods             @ 0x0
	.4byte gAreaRoomMaps_MinishVillage           @ 0x1
	.4byte gAreaRoomMaps_HyruleTown              @ 0x2
	.4byte gAreaRoomMaps_HyruleField             @ 0x3
	.4byte gAreaRoomMaps_CastorWilds             @ 0x4
	.4byte gAreaRoomMaps_Ruins                   @ 0x5
	.4byte gAreaRoomMaps_MtCrenel                @ 0x6
	.4byte gAreaRoomMaps_CastleGarden            @ 0x7
	.4byte gAreaRoomMaps_CloudTops               @ 0x8
	.4byte gAreaRoomMaps_RoyalValley             @ 0x9
	.4byte gAreaRoomMaps_VeilFalls               @ 0xA
	.4byte gAreaRoomMaps_LakeHylia               @ 0xB
	.4byte gAreaRoomMaps_LakeWoodsCave           @ 0xC
	.4byte gAreaRoomMaps_Beanstalks              @ 0xD
	.4byte gAreaRoomMaps_Empty                   @ 0xE
	.4byte gAreaRoomMaps_HyruleDigCaves          @ 0xF
	.4byte gAreaRoomMaps_MelarisMine             @ 0x10
	.4byte gAreaRoomMaps_MinishPaths            @ 0x11
	.4byte gAreaRoomMaps_CrenelMinishPaths       @ 0x12
	.4byte gAreaRoomMaps_DigCaves1               @ 0x13
	.4byte gAreaRoomMaps_CrenelDigCave           @ 0x14
	.4byte gAreaRoomMaps_FestivalTown            @ 0x15
	.4byte gAreaRoomMaps_VeilFallsDigCave        @ 0x16
	.4byte gAreaRoomMaps_CastorWildsDigCave      @ 0x17
	.4byte gAreaRoomMaps_OuterFortressOfWinds    @ 0x18
	.4byte gAreaRoomMaps_HyliaDigCaves           @ 0x19
	.4byte gAreaRoomMaps_VeilFallsTop            @ 0x1A
	.4byte gAreaRoomMaps_Unused                  @ 0x1B
	.4byte gAreaRoomMaps_Unused                  @ 0x1C
	.4byte gAreaRoomMaps_Unused                  @ 0x1D
	.4byte gAreaRoomMaps_Unused                  @ 0x1E
	.4byte gAreaRoomMaps_Unused                  @ 0x1F
	.4byte gAreaRoomMaps_MinishHouseInteriors    @ 0x20
	.4byte gAreaRoomMaps_HouseInteriors1         @ 0x21
	.4byte gAreaRoomMaps_HouseInteriors2         @ 0x22
	.4byte gAreaRoomMaps_HouseInteriors3         @ 0x23
	.4byte gAreaRoomMaps_TreeInteriors           @ 0x24
	.4byte gAreaRoomMaps_Dojos                   @ 0x25
	.4byte gAreaRoomMaps_CrenelCaves             @ 0x26
	.4byte gAreaRoomMaps_MinishCracks            @ 0x27
	.4byte gAreaRoomMaps_HouseInteriors4         @ 0x28
	.4byte gAreaRoomMaps_GreatFairies            @ 0x29
	.4byte gAreaRoomMaps_CastorCaves             @ 0x2A
	.4byte gAreaRoomMaps_CastorDarknut           @ 0x2B
	.4byte gAreaRoomMaps_ArmosInteriors          @ 0x2C
	.4byte gAreaRoomMaps_TownMinishHoles         @ 0x2D
	.4byte gAreaRoomMaps_MinishRafters           @ 0x2E
	.4byte gAreaRoomMaps_GoronCave               @ 0x2F
	.4byte gAreaRoomMaps_WindTribeTower          @ 0x30
	.4byte gAreaRoomMaps_WindTribeTowerRoof      @ 0x31
	.4byte gAreaRoomMaps_Caves                   @ 0x32
	.4byte gAreaRoomMaps_VeilFallsCaves          @ 0x33
	.4byte gAreaRoomMaps_RoyalValleyGraves       @ 0x34
	.4byte gAreaRoomMaps_MinishCaves             @ 0x35
	.4byte gAreaRoomMaps_CastleGardenMinishHoles @ 0x36
	.4byte gAreaRoomMaps_37                      @ 0x37
	.4byte gAreaRoomMaps_EzloCutscene            @ 0x38
	.4byte gAreaRoomMaps_Unused                  @ 0x39
	.4byte gAreaRoomMaps_Unused                  @ 0x3A
	.4byte gAreaRoomMaps_Unused                  @ 0x3B
	.4byte gAreaRoomMaps_Unused                  @ 0x3C
	.4byte gAreaRoomMaps_Unused                  @ 0x3D
	.4byte gAreaRoomMaps_Unused                  @ 0x3E
	.4byte gAreaRoomMaps_Unused                  @ 0x3F
	.4byte gAreaRoomMaps_40                      @ 0x40
	.4byte gAreaRoomMaps_HyruleTownUnderground   @ 0x41
	.4byte gAreaRoomMaps_GardenFountains         @ 0x42
	.4byte gAreaRoomMaps_HyruleCastleCellar      @ 0x43
	.4byte gAreaRoomMaps_SimonsSimulation        @ 0x44
	.4byte gAreaRoomMaps_45                      @ 0x45
	.4byte gAreaRoomMaps_46                      @ 0x46
	.4byte gAreaRoomMaps_47                      @ 0x47
	.4byte gAreaRoomMaps_DeepwoodShrine          @ 0x48
	.4byte gAreaRoomMaps_DeepwoodShrineBoss      @ 0x49
	.4byte gAreaRoomMaps_DeepwoodShrineEntry     @ 0x4A
	.4byte gAreaRoomMaps_Unused                  @ 0x4B
	.4byte gAreaRoomMaps_Unused                  @ 0x4C
	.4byte gAreaRoomMaps_4D                      @ 0x4D
	.4byte gAreaRoomMaps_Unused                  @ 0x4E
	.4byte gAreaRoomMaps_Unused                  @ 0x4F
	.4byte gAreaRoomMaps_CaveOfFlames            @ 0x50
	.4byte gAreaRoomMaps_CaveOfFlamesBoss        @ 0x51
	.4byte gAreaRoomMaps_Unused                  @ 0x52
	.4byte gAreaRoomMaps_Unused                  @ 0x53
	.4byte gAreaRoomMaps_Unused                  @ 0x54
	.4byte gAreaRoomMaps_Unused                  @ 0x55
	.4byte gAreaRoomMaps_Unused                  @ 0x56
	.4byte gAreaRoomMaps_57                      @ 0x57
	.4byte gAreaRoomMaps_FortressOfWinds         @ 0x58
	.4byte gAreaRoomMaps_FortressOfWindsTop      @ 0x59
	.4byte gAreaRoomMaps_InnerMazaal             @ 0x5A
	.4byte gAreaRoomMaps_Unused                  @ 0x5B
	.4byte gAreaRoomMaps_Unused                  @ 0x5C
	.4byte gAreaRoomMaps_Unused                  @ 0x5D
	.4byte gAreaRoomMaps_Unused                  @ 0x5E
	.4byte gAreaRoomMaps_5F                      @ 0x5F
	.4byte gAreaRoomMaps_TempleOfDroplets        @ 0x60
	.4byte gAreaRoomMaps_61                      @ 0x61
	.4byte gAreaRoomMaps_HyruleTownMinishCaves   @ 0x62
	.4byte gAreaRoomMaps_Unused                  @ 0x63
	.4byte gAreaRoomMaps_Unused                  @ 0x64
	.4byte gAreaRoomMaps_Unused                  @ 0x65
	.4byte gAreaRoomMaps_Unused                  @ 0x66
	.4byte gAreaRoomMaps_67                      @ 0x67
	.4byte gAreaRoomMaps_RoyalCrypt              @ 0x68
	.4byte gAreaRoomMaps_Unused                  @ 0x69
	.4byte gAreaRoomMaps_Unused                  @ 0x6A
	.4byte gAreaRoomMaps_Unused                  @ 0x6B
	.4byte gAreaRoomMaps_Unused                  @ 0x6C
	.4byte gAreaRoomMaps_Unused                  @ 0x6D
	.4byte gAreaRoomMaps_Unused                  @ 0x6E
	.4byte gAreaRoomMaps_6F                      @ 0x6F
	.4byte gAreaRoomMaps_PalaceOfWinds           @ 0x70
	.4byte gAreaRoomMaps_PalaceOfWindsBoss       @ 0x71
	.4byte gAreaRoomMaps_Unused                  @ 0x72
	.4byte gAreaRoomMaps_Unused                  @ 0x73
	.4byte gAreaRoomMaps_Unused                  @ 0x74
	.4byte gAreaRoomMaps_Unused                  @ 0x75
	.4byte gAreaRoomMaps_Unused                  @ 0x76
	.4byte gAreaRoomMaps_77                      @ 0x77
	.4byte gAreaRoomMaps_Sanctuary               @ 0x78
	.4byte gAreaRoomMaps_Unused                  @ 0x79
	.4byte gAreaRoomMaps_Unused                  @ 0x7A
	.4byte gAreaRoomMaps_Unused                  @ 0x7B
	.4byte gAreaRoomMaps_Unused                  @ 0x7C
	.4byte gAreaRoomMaps_Unused                  @ 0x7D
	.4byte gAreaRoomMaps_Unused                  @ 0x7E
	.4byte gAreaRoomMaps_7F                      @ 0x7F
	.4byte gAreaRoomMaps_HyruleCastle            @ 0x80
	.4byte gAreaRoomMaps_SanctuaryEntrance       @ 0x81
	.4byte gAreaRoomMaps_Unused                  @ 0x82
	.4byte gAreaRoomMaps_Unused                  @ 0x83
	.4byte gAreaRoomMaps_Unused                  @ 0x84
	.4byte gAreaRoomMaps_Unused                  @ 0x85
	.4byte gAreaRoomMaps_Unused                  @ 0x86
	.4byte gAreaRoomMaps_87                      @ 0x87
	.4byte gAreaRoomMaps_DarkHyruleCastle        @ 0x88
	.4byte gAreaRoomMaps_DarkHyruleCastleOutside @ 0x89
	.4byte gAreaRoomMaps_VaatisArms              @ 0x8A
	.4byte gAreaRoomMaps_Vaati3                  @ 0x8B
	.4byte gAreaRoomMaps_Vaati2                  @ 0x8C
	.4byte gAreaRoomMaps_DarkHyruleCastleBridge  @ 0x8D
	.4byte gAreaRoomMaps_Unused                  @ 0x8E
	.4byte gAreaRoomMaps_8F                      @ 0x8F
