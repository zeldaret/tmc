	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gAreaRoomMap_MinishWoods_0:: @ 081032DC
	map_bottom 0xA700, 0x1F02, 1
	map_top 0xB7AC, 0x1F02, 1, 1

gAreaRoomMaps_MinishWoods:: @ 081032F4
	.4byte gAreaRoomMap_MinishWoods_0

gAreaRoomMap_LakeHylia_0:: @ 081032F8
	map_bottom 0x1575C, 0x1680, 1
	map_top 0x163D0, 0x1680, 1, 1

gAreaRoomMap_LakeHylia_1:: @ 08103310
	map_bottom 0x16B04, 0x5E8, 1
	map_top 0x16C74, 0x5E8, 1, 1

gAreaRoomMaps_LakeHylia:: @ 08103328
	.4byte gAreaRoomMap_LakeHylia_0
	.4byte gAreaRoomMap_LakeHylia_1

gAreaRoomMap_CastorWilds_0:: @ 08103330
	map_bottom 0x20914, 0x1D88, 1
	map_top 0x21990, 0x1D88, 1, 1

gAreaRoomMaps_CastorWilds:: @ 08103348
	.4byte gAreaRoomMap_CastorWilds_0

gAreaRoomMap_Ruins_0:: @ 0810334C
	map_bottom 0x22150, 0x3DE, 1
	map_top 0x22430, 0x3DE, 1, 1

gAreaRoomMap_Ruins_1:: @ 08103364
	map_bottom 0x22500, 0x186, 1
	map_top 0x2261C, 0x186, 1, 1

gAreaRoomMap_Ruins_2:: @ 0810337C
	map_bottom 0x22688, 0x12C, 1
	map_top 0x22780, 0x12C, 1, 1

gAreaRoomMap_Ruins_3:: @ 08103394
	map_bottom 0x227E4, 0x12C, 1
	map_top 0x228E4, 0x12C, 1, 1

gAreaRoomMap_Ruins_4:: @ 081033AC
	map_bottom 0x22940, 0x420, 1
	map_top 0x22C44, 0x420, 1, 1

gAreaRoomMap_Ruins_5:: @ 081033C4
	map_bottom 0x22D30, 0x462, 1
	map_top 0x22FBC, 0x462, 1, 1

gAreaRoomMaps_Ruins:: @ 081033DC
	.4byte gAreaRoomMap_Ruins_0
	.4byte gAreaRoomMap_Ruins_1
	.4byte gAreaRoomMap_Ruins_2
	.4byte gAreaRoomMap_Ruins_3
	.4byte gAreaRoomMap_Ruins_4
	.4byte gAreaRoomMap_Ruins_5

gAreaRoomMap_HyruleTown_0:: @ 081033F4
	map_bottom 0x3A454, 0x1D88, 1
	map_top 0x3B5F4, 0x1D88, 1, 1

gAreaRoomMaps_HyruleTown:: @ 0810340C
	.4byte gAreaRoomMap_HyruleTown_0

gAreaRoomMap_FestivalTown_0:: @ 08103410
	map_bottom 0x3C290, 0xBB8, 1
	map_top 0x3CAD0, 0xBB8, 1, 1

gAreaRoomMaps_FestivalTown:: @ 08103428
	.4byte gAreaRoomMap_FestivalTown_0

gAreaRoomMap_MtCrenel_0:: @ 0810342C
	map_bottom 0x47410, 0x6E4, 1
	map_top 0x47760, 0x6E4, 1, 1

gAreaRoomMap_MtCrenel_1:: @ 08103444
	map_bottom 0x47838, 0x720, 1
	map_top 0x47B70, 0x720, 1, 1

gAreaRoomMap_MtCrenel_2:: @ 0810345C
	map_bottom 0x47D64, 0xB94, 1
	map_top 0x483C8, 0xB94, 1, 1

gAreaRoomMap_MtCrenel_3:: @ 08103474
	map_bottom 0x48588, 0xB52, 1
	map_top 0x48BFC, 0xB52, 1, 1

gAreaRoomMap_MtCrenel_4:: @ 0810348C
	map_bottom 0x48D94, 0xEC4, 1
	map_top 0x496D8, 0xEC4, 1, 1

gAreaRoomMaps_MtCrenel:: @ 081034A4
	.4byte gAreaRoomMap_MtCrenel_0
	.4byte gAreaRoomMap_MtCrenel_1
	.4byte gAreaRoomMap_MtCrenel_2
	.4byte gAreaRoomMap_MtCrenel_3
	.4byte gAreaRoomMap_MtCrenel_4

gAreaRoomMap_HyruleField_0:: @ 081034B8
	map_bottom 0x610CC, 0x30C, 1
	map_top 0x612B8, 0x30C, 1, 1

gAreaRoomMap_HyruleField_1:: @ 081034D0
	map_data 0x49964, 0x6000000, 0x4000, 1
	map_data 0x4EA0C, 0x6008000, 0x4000, 1
	map_data 0x10, 0x0, 0x0, 0
	map_bottom 0x61384, 0x152A, 1
	map_top 0x61FC4, 0x152A, 1, 1

gAreaRoomMap_HyruleField_2:: @ 0810350C
	map_bottom 0x62384, 0x30C, 1
	map_top 0x625B8, 0x30C, 1, 1

gAreaRoomMap_HyruleField_3:: @ 08103524
	map_data 0x49964, 0x6000000, 0x4000, 1
	map_data 0x4EA0C, 0x6008000, 0x4000, 1
	map_data 0x10, 0x0, 0x0, 0
	map_bottom 0x62688, 0x3C0, 1
	map_top 0x628D0, 0x3C0, 1, 1

gAreaRoomMap_HyruleField_4:: @ 08103560
	map_data 0x569D0, 0x6000000, 0x4000, 1
	map_data 0x5B950, 0x6008000, 0x4000, 1
	map_data 0x43, 0x0, 0x0, 0
	map_bottom 0x629A8, 0x7F8, 1
	map_top 0x62E74, 0x7F8, 1, 1

gAreaRoomMap_HyruleField_5:: @ 0810359C
	map_data 0x569D0, 0x6000000, 0x4000, 1
	map_data 0x5B950, 0x6008000, 0x4000, 1
	map_data 0x43, 0x0, 0x0, 0
	map_bottom 0x63144, 0x1518, 1
	map_top 0x63E04, 0x1518, 1, 1

gAreaRoomMap_HyruleField_6:: @ 081035D8
	map_data 0x50844, 0x6000000, 0x4000, 1
	map_data 0x55348, 0x6008000, 0x4000, 1
	map_data 0x2E, 0x0, 0x0, 0
	map_bottom 0x64440, 0x189C, 1
	map_top 0x6513C, 0x189C, 1, 1

gAreaRoomMap_HyruleField_7:: @ 08103614
	map_data 0x49964, 0x6000000, 0x4000, 1
	map_data 0x4EA0C, 0x6008000, 0x4000, 1
	map_data 0x10, 0x0, 0x0, 0
	map_bottom 0x65560, 0xE10, 1
	map_top 0x65DBC, 0xE10, 1, 1

gAreaRoomMap_HyruleField_8:: @ 08103650
	map_bottom 0x6620C, 0x960, 1
	map_top 0x6678C, 0x960, 1, 1

gAreaRoomMap_HyruleField_9:: @ 08103668
	map_bottom 0x6699C, 0x258, 1
	map_top 0x66B60, 0x258, 1, 1

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
	map_bottom 0x6DD10, 0x103E, 1
	map_top 0x6E684, 0x103E, 1, 1

gAreaRoomMaps_CastleGarden:: @ 081036C0
	.4byte gAreaRoomMap_CastleGarden_0

gAreaRoomMap_CloudTops_0:: @ 081036C4
	map_bottom 0x74AD0, 0x1F02, 1
	map_top 0x751F0, 0x1F02, 1, 1

gAreaRoomMap_CloudTops_1:: @ 081036DC
	map_bottom 0x755F0, 0x1F02, 1
	map_top 0x7602C, 0x1F02, 1, 1

gAreaRoomMap_CloudTops_2:: @ 081036F4
	map_bottom 0x76498, 0x1F02, 1
	map_top 0x76DBC, 0x1F02, 1, 1

gAreaRoomMaps_CloudTops:: @ 0810370C
	.4byte gAreaRoomMap_CloudTops_0
	.4byte gAreaRoomMap_CloudTops_1
	.4byte gAreaRoomMap_CloudTops_2

gAreaRoomMap_RoyalValley_0:: @ 08103718
	map_bottom 0x7EC78, 0xEC4, 1
	map_top 0x7F3EC, 0xEC4, 1, 1

gAreaRoomMap_RoyalValley_1:: @ 08103730
	map_bottom 0x7F8F8, 0x12C, 1
	map_top 0x7F9E8, 0x12C, 1, 1

gAreaRoomMaps_RoyalValley:: @ 08103748
	.4byte gAreaRoomMap_RoyalValley_0
	.4byte gAreaRoomMap_RoyalValley_1

gAreaRoomMap_VeilFalls_0:: @ 08103750
	map_bottom 0x85C24, 0xEC4, 1
	map_top 0x86560, 0xEC4, 1, 1

gAreaRoomMaps_VeilFalls:: @ 08103768
	.4byte gAreaRoomMap_VeilFalls_0

gAreaRoomMap_VeilFallsTop_0:: @ 0810376C
	map_bottom 0x87FB4, 0x2D0, 1
	map_top 0x8812C, 0x2D0, 1, 1

gAreaRoomMaps_VeilFallsTop:: @ 08103784
	.4byte gAreaRoomMap_VeilFallsTop_0

gAreaRoomMap_Beanstalks_0:: @ 08103788
	map_bottom 0x8C11C, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_1:: @ 08103794
	map_bottom 0x8C248, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_2:: @ 081037A0
	map_bottom 0x8C374, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_3:: @ 081037AC
	map_bottom 0x8C4A0, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_4:: @ 081037B8
	map_bottom 0x8C5CC, 0x12C, 0, 1

gAreaRoomMap_Beanstalks_5:: @ 081037C4
	map_bottom 0x0, 0x2000, 1
	map_top_special 0x8BB5C, 0x800, 1, 1

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
	map_bottom 0x98278, 0xA8C, 1
	map_top 0x98694, 0xA8C, 1, 1

gAreaRoomMap_CrenelCaves_1:: @ 08103874
	map_bottom 0x9887C, 0x14A, 1
	map_top 0x9897C, 0x14A, 1, 1

gAreaRoomMap_CrenelCaves_2:: @ 0810388C
	map_bottom 0x989D0, 0x3A2, 1
	map_top 0x98C14, 0x3A2, 1, 1

gAreaRoomMap_CrenelCaves_3:: @ 081038A4
	map_bottom 0x98CB8, 0x168, 1
	map_top 0x98DCC, 0x168, 1, 1

gAreaRoomMap_CrenelCaves_4:: @ 081038BC
	map_bottom 0x98E18, 0x12C, 1
	map_top 0x98F10, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_5:: @ 081038D4
	map_bottom 0x98F64, 0x12C, 1
	map_top 0x99080, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_6:: @ 081038EC
	map_bottom 0x990D4, 0x168, 1
	map_top 0x99200, 0x168, 1, 1

gAreaRoomMap_CrenelCaves_7:: @ 08103904
	map_bottom 0x99250, 0x14A, 1
	map_top 0x99350, 0x14A, 1, 1

gAreaRoomMap_CrenelCaves_8:: @ 0810391C
	map_bottom 0x993A8, 0x258, 1
	map_top 0x99558, 0x258, 1, 1

gAreaRoomMap_CrenelCaves_9:: @ 08103934
	map_bottom 0x995F4, 0x12C, 0
	map_top 0x99720, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_10:: @ 0810394C
	map_bottom 0x99760, 0x2BC, 1
	map_top 0x99944, 0x2BC, 1, 1

gAreaRoomMap_CrenelCaves_11:: @ 08103964
	map_bottom 0x999F4, 0x294, 1
	map_top 0x99BD0, 0x294, 1, 1

gAreaRoomMap_CrenelCaves_12:: @ 0810397C
	map_bottom 0x99C60, 0x12C, 1
	map_top 0x99D7C, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_13:: @ 08103994
	map_bottom 0x99DB0, 0x12C, 1
	map_top 0x99EB4, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_14:: @ 081039AC
	map_bottom 0x99F0C, 0x12C, 1
	map_top 0x9A010, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_15:: @ 081039C4
	map_bottom 0x9A050, 0x12C, 1
	map_top 0x9A148, 0x12C, 1, 1

gAreaRoomMap_CrenelCaves_16:: @ 081039DC
	map_bottom 0x9A18C, 0x1FE, 1
	map_top 0x9A308, 0x1FE, 1, 1

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
	map_bottom 0x9F744, 0x21C, 1
	map_top 0x9F924, 0x21C, 1, 1

gAreaRoomMap_GreatFairies_1:: @ 08103A50
	map_bottom 0x9F9C4, 0x21C, 1
	map_top 0x9FB98, 0x21C, 1, 1

gAreaRoomMap_GreatFairies_2:: @ 08103A68
	map_bottom 0x9FC38, 0x21C, 1
	map_top 0x9FE14, 0x21C, 1, 1

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
	map_bottom 0xCD968, 0x1F02, 1
	map_top 0xCE2AC, 0x1F02, 1, 1

gAreaRoomMaps_LakeWoodsCave:: @ 08103AB8
	.4byte gAreaRoomMap_LakeWoodsCave_0

gAreaRoomMap_HyruleDigCaves_0:: @ 08103ABC
	map_bottom 0xCFEE4, 0x1D88, 1
	map_top 0xD07C0, 0x1D88, 1, 1

gAreaRoomMaps_HyruleDigCaves:: @ 08103AD4
	.4byte gAreaRoomMap_HyruleDigCaves_0

gAreaRoomMap_DigCaves_0:: @ 08103AD8
	map_bottom 0xD1410, 0x7F8, 1
	map_top 0xD16C8, 0x7F8, 1, 1

gAreaRoomMap_DigCaves_1:: @ 08103AF0
	map_bottom 0xD187C, 0xE10, 1
	map_top 0xD1D2C, 0xE10, 1, 1

gAreaRoomMaps_DigCaves1:: @ 08103B08
	.4byte gAreaRoomMap_DigCaves_0
	.4byte 0x0
	.4byte 0x0
	.4byte gAreaRoomMap_DigCaves_1

gAreaRoomMap_CrenelDigCave_0:: @ 08103B18
	map_bottom 0xD0D00, 0x7C0, 1
	map_top 0xD1140, 0x7C0, 1, 1

gAreaRoomMaps_CrenelDigCave:: @ 08103B30
	.4byte gAreaRoomMap_CrenelDigCave_0

gAreaRoomMap_VeilFallsDigCave_0:: @ 08103B34
	map_bottom 0xD2000, 0xEC4, 1
	map_top 0xD24FC, 0xEC4, 1, 1

gAreaRoomMaps_VeilFallsDigCave:: @ 08103B4C
	.4byte gAreaRoomMap_VeilFallsDigCave_0

gAreaRoomMap_CastorWildsDigCave_0:: @ 08103B50
	map_bottom 0xCF2D0, 0x1D88, 1
	map_top 0xCFACC, 0x1D88, 1, 1

gAreaRoomMaps_CastorWildsDigCave:: @ 08103B68
	.4byte gAreaRoomMap_CastorWildsDigCave_0

gAreaRoomMap_OuterFortressOfWinds_0:: @ 08103B6C
	map_bottom 0xD27E0, 0x5FE, 1
	map_top 0xD2A10, 0x5FE, 1, 1

gAreaRoomMap_OuterFortressOfWinds_1:: @ 08103B84
	map_bottom 0xD2BAC, 0x938, 1
	map_top 0xD2F0C, 0x938, 1, 1

gAreaRoomMap_OuterFortressOfWinds_2:: @ 08103B9C
	map_bottom 0xD31B4, 0x5FE, 1
	map_top 0xD3434, 0x5FE, 1, 1

gAreaRoomMap_OuterFortressOfWinds_3:: @ 08103BB4
	map_bottom 0xD3618, 0x1EE, 1
	map_top 0xD3708, 0x1EE, 1, 1

gAreaRoomMap_OuterFortressOfWinds_4:: @ 08103BCC
	map_bottom 0xD3814, 0x186, 1
	map_top 0xD3900, 0x186, 1, 1

gAreaRoomMaps_OuterFortressOfWinds:: @ 08103BE4
	.4byte gAreaRoomMap_OuterFortressOfWinds_0
	.4byte gAreaRoomMap_OuterFortressOfWinds_1
	.4byte gAreaRoomMap_OuterFortressOfWinds_2
	.4byte gAreaRoomMap_OuterFortressOfWinds_3
	.4byte gAreaRoomMap_OuterFortressOfWinds_4

gAreaRoomMap_HyliaDigCaves_0:: @ 08103BF8
	map_bottom 0xCE79C, 0x220, 1
	map_top 0xCE8CC, 0x220, 1, 1

gAreaRoomMap_HyliaDigCaves_1:: @ 08103C10
	map_bottom 0xCE978, 0xD4A, 1
	map_top 0xCEEF8, 0xD4A, 1, 1

gAreaRoomMaps_HyliaDigCaves:: @ 08103C28
	.4byte gAreaRoomMap_HyliaDigCaves_0
	.4byte gAreaRoomMap_HyliaDigCaves_1

gAreaRoomMap_Empty_0:: @ 08103C30
	map_bottom 0x8C7D4, 0x1F02, 1
	map_top 0x8CD7C, 0x1F02, 1, 1

gAreaRoomMaps_Empty:: @ 08103C48
	.4byte gAreaRoomMap_Empty_0
	.4byte gAreaRoomMap_Empty_0

gAreaRoomMap_MinishVillage_0:: @ 08103C50
	map_bottom 0xE0F04, 0x1F02, 1
	map_top 0xE1ACC, 0x1F02, 1, 1

gAreaRoomMap_MinishVillage_1:: @ 08103C68
	map_bottom 0xE2584, 0x618, 1
	map_top 0xE2728, 0x618, 1, 1

gAreaRoomMaps_MinishVillage:: @ 08103C80
	.4byte gAreaRoomMap_MinishVillage_0
	.4byte gAreaRoomMap_MinishVillage_1

gAreaRoomMap_MelarisMine_0:: @ 08103C88
	map_bottom 0xEA6B4, 0xDB6, 1
	map_top 0xEAE44, 0xDB6, 1, 1

gAreaRoomMaps_MelarisMine:: @ 08103CA0
	.4byte gAreaRoomMap_MelarisMine_0

gAreaRoomMap_MinishPaths1_0:: @ 08103CA4
	map_bottom 0xEF458, 0x5DC, 1, 1

gAreaRoomMap_MinishPaths1_1:: @ 08103CB0
	map_bottom 0xEF618, 0x5DC, 1, 1

gAreaRoomMap_MinishPaths1_2:: @ 08103CBC
	map_bottom 0xEF830, 0x5DC, 1, 1

gAreaRoomMap_MinishPaths1_3:: @ 08103CC8
	map_bottom 0xEFA5C, 0x5DC, 1, 1

gAreaRoomMap_MinishPaths1_4:: @ 08103CD4
	map_bottom 0xEFC64, 0x5DC, 1, 1

gAreaRoomMaps_MinishPaths1:: @ 08103CE0
	.4byte gAreaRoomMap_MinishPaths1_0
	.4byte gAreaRoomMap_MinishPaths1_1
	.4byte gAreaRoomMap_MinishPaths1_2
	.4byte gAreaRoomMap_MinishPaths1_3
	.4byte gAreaRoomMap_MinishPaths1_4

gAreaRoomMap_CrenelMinishPaths_0:: @ 08103CF4
	map_bottom 0xF6B30, 0x5DC, 1, 1

gAreaRoomMap_CrenelMinishPaths_1:: @ 08103D00
	map_bottom 0xF6D24, 0x5DC, 1, 1

gAreaRoomMap_CrenelMinishPaths_2:: @ 08103D0C
	map_bottom 0xF6FCC, 0x4B0, 1, 1

gAreaRoomMap_CrenelMinishPaths_3:: @ 08103D18
	map_bottom 0xF714C, 0x4B0, 1, 1

gAreaRoomMaps_CrenelMinishPaths:: @ 08103D24
	.4byte gAreaRoomMap_CrenelMinishPaths_0
	.4byte gAreaRoomMap_CrenelMinishPaths_1
	.4byte gAreaRoomMap_CrenelMinishPaths_2
	.4byte gAreaRoomMap_CrenelMinishPaths_3

gAreaRoomMap_MinishHouseInteriors_0:: @ 08103D34
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x139D8C, 0x96, 1
	map_unknown_2 0x139804, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_1:: @ 08103D58
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x13E770, 0x96, 1
	map_unknown_2 0x139DCC, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_2:: @ 08103D7C
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x142334, 0x1D0, 1
	map_unknown_2 0x13E7AC, 0x1000, 1, 1

gAreaRoomMap_MinishHouseInteriors_3:: @ 08103DA0
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x144C24, 0xA0, 1
	map_unknown_2 0x1423A4, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_4:: @ 08103DC4
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x147460, 0xA0, 1
	map_unknown_2 0x144C58, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_5:: @ 08103DE8
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x149B84, 0xA0, 1
	map_unknown_2 0x14748C, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_6:: @ 08103E0C
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x14C7B0, 0xA0, 1
	map_unknown_2 0x149BB4, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_8:: @ 08103E30
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x15583C, 0xE1, 1
	map_unknown_2 0x151BF4, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_7:: @ 08103E54
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x151BC0, 0x96, 1
	map_unknown_2 0x14C7EC, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_9:: @ 08103E78
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x15A290, 0x159, 1
	map_unknown_2 0x15588C, 0x1000, 1, 1

gAreaRoomMap_MinishHouseInteriors_10:: @ 08103E9C
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x15D544, 0x96, 1
	map_unknown_2 0x15A2E4, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_11:: @ 08103EC0
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x160898, 0x96, 1
	map_unknown_2 0x15D57C, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_12:: @ 08103EE4
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x163698, 0xDC, 1
	map_unknown_2 0x1608DC, 0x1000, 1, 1

gAreaRoomMap_MinishHouseInteriors_13:: @ 08103F08
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x16C6F8, 0x96, 1
	map_unknown_2 0x1692D8, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_14:: @ 08103F2C
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x16FA58, 0x96, 1
	map_unknown_2 0x16C730, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_15:: @ 08103F50
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x172E58, 0x96, 1
	map_unknown_2 0x16FA8C, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_16:: @ 08103F74
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x17519C, 0x96, 1
	map_unknown_2 0x172E8C, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_17:: @ 08103F98
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x178664, 0x96, 1
	map_unknown_2 0x1751D0, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_18:: @ 08103FBC
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x17B3B8, 0x96, 1
	map_unknown_2 0x1786A0, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_19:: @ 08103FE0
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x17EA00, 0x96, 1
	map_unknown_2 0x17B3F0, 0x800, 1, 1

gAreaRoomMap_MinishHouseInteriors_20:: @ 08104004
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x181E7C, 0x96, 1
	map_unknown_2 0x17EA34, 0x800, 1, 1

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
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x184554, 0x96, 1
	map_unknown_2 0x181EB4, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_1:: @ 081040EC
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x1874D0, 0x96, 1
	map_unknown_2 0x184588, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_2:: @ 08104110
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x18A01C, 0x96, 1
	map_unknown_2 0x187514, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_3:: @ 08104134
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x18CFB8, 0x96, 1
	map_unknown_2 0x18A04C, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_4:: @ 08104158
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x18F98C, 0x96, 1
	map_unknown_2 0x18CFF4, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_5:: @ 0810417C
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x192FC0, 0x96, 1
	map_unknown_2 0x18F9C8, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_6:: @ 081041A0
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x196F84, 0x24C, 1
	map_unknown_2 0x192FF4, 0x2000, 1, 1

gAreaRoomMap_TownMinishHoles_7:: @ 081041C4
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x19BBAC, 0xE1, 1
	map_unknown_2 0x196FFC, 0x800, 1, 1

gAreaRoomMap_TownMinishHoles_8:: @ 081041E8
	map_bottom 0x0, 0x2000, 1
	map_unknown 0x19FCC0, 0x190, 1
	map_unknown_2 0x19BBE4, 0x2000, 1, 1

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
	map_bottom 0x132A1C, 0x198, 1
	map_top 0x132B6C, 0x198, 1, 1

gAreaRoomMap_HouseInteriors1_1:: @ 081042E4
	map_bottom 0x132BB4, 0x14A, 1
	map_top 0x132CD8, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors1_2:: @ 081042FC
	map_bottom 0x132D38, 0x14A, 1
	map_top 0x132E50, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors1_3:: @ 08104314
	map_bottom 0x132E80, 0x2C0, 1
	map_top 0x13305C, 0x2C0, 1, 1

gAreaRoomMap_HouseInteriors1_4:: @ 0810432C
	map_bottom 0x1330E8, 0x1A4, 1
	map_top 0x13322C, 0x1A4, 1, 1

gAreaRoomMap_HouseInteriors1_5:: @ 08104344
	map_bottom 0x133280, 0x12C, 1
	map_top 0x133384, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_6:: @ 0810435C
	map_bottom 0x1333F0, 0x12C, 1
	map_top 0x1334F4, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_7:: @ 08104374
	map_bottom 0x133544, 0x12C, 1
	map_top 0x133640, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_8:: @ 0810438C
	map_bottom 0x133694, 0x12C, 1
	map_top 0x133790, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_9:: @ 081043A4
	map_bottom 0x1337C0, 0x348, 1
	map_top 0x133A3C, 0x348, 1, 1

gAreaRoomMap_HouseInteriors1_10:: @ 081043BC
	map_bottom 0x133ACC, 0x12C, 1
	map_top 0x133BDC, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors1_11:: @ 081043D4
	map_bottom 0x133C08, 0x1C2, 1
	map_top 0x133D90, 0x1C2, 1, 1

gAreaRoomMap_HouseInteriors1_12:: @ 081043EC
	map_bottom 0x133DD0, 0x1B8, 1
	map_top 0x133F48, 0x1B8, 1, 1

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
	map_bottom 0x12F9C8, 0x12C, 1
	map_top 0x12FAE8, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_1:: @ 0810445C
	map_bottom 0x12FB40, 0x168, 1
	map_top 0x12FC5C, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_2:: @ 08104474
	map_bottom 0x12FCD4, 0x168, 1
	map_top 0x12FDF4, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_3:: @ 0810448C
	map_bottom 0x12FE64, 0x168, 1
	map_top 0x12FF88, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_4:: @ 081044A4
	map_bottom 0x12FFF4, 0x168, 1
	map_top 0x130118, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_5:: @ 081044BC
	map_bottom 0x130164, 0x14A, 1
	map_top 0x130254, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors2_6:: @ 081044D4
	map_bottom 0x1302A8, 0x12C, 1
	map_top 0x1303C8, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_7:: @ 081044EC
	map_bottom 0x130428, 0x168, 1
	map_top 0x130540, 0x168, 1, 1

gAreaRoomMap_HouseInteriors2_8:: @ 08104504
	map_bottom 0x130598, 0x14A, 1
	map_top 0x1306C4, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors2_9:: @ 0810451C
	map_bottom 0x130718, 0x12C, 1
	map_top 0x130824, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_10:: @ 08104534
	map_bottom 0x13087C, 0x12C, 1
	map_top 0x13098C, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_11:: @ 0810454C
	map_bottom 0x1309E0, 0x12C, 1
	map_top 0x130AF8, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_12:: @ 08104564
	map_bottom 0x130B54, 0x12C, 1
	map_top 0x130C6C, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_13:: @ 0810457C
	map_bottom 0x130CB4, 0x12C, 1
	map_top 0x130DD8, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_14:: @ 08104594
	map_bottom 0x130E28, 0x12C, 1
	map_top 0x130F48, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_15:: @ 081045AC
	map_bottom 0x130F8C, 0x12C, 1
	map_top 0x1310A0, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_16:: @ 081045C4
	map_bottom 0x1310FC, 0x14A, 1
	map_top 0x1311D0, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors2_17:: @ 081045DC
	map_bottom 0x131234, 0x12C, 1
	map_top 0x131340, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors2_18:: @ 081045F4
	map_bottom 0x13138C, 0x12C, 1
	map_top 0x13149C, 0x12C, 1, 1

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
	map_bottom 0x1314F4, 0x168, 1
	map_top 0x131600, 0x168, 1, 1

gAreaRoomMap_HouseInteriors4_1:: @ 081046E4
	map_bottom 0x131644, 0x168, 1
	map_top 0x131798, 0x168, 1, 1

gAreaRoomMap_HouseInteriors4_2:: @ 081046FC
	map_bottom 0x1317D8, 0x12C, 1
	map_top 0x1318EC, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors4_3:: @ 08104714
	map_bottom 0x13192C, 0x12C, 1
	map_top 0x131A44, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors4_4:: @ 0810472C
	map_bottom 0x131A70, 0x12C, 1
	map_top 0x131B80, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors4_5:: @ 08104744
	map_bottom 0x131BDC, 0x168, 1
	map_top 0x131D10, 0x168, 1, 1

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
	map_bottom 0x131D48, 0x186, 1
	map_top 0x131E7C, 0x186, 1, 1

gAreaRoomMap_HouseInteriors3_1:: @ 081047B4
	map_bottom 0x131EF8, 0x186, 1
	map_top 0x13202C, 0x186, 1, 1

gAreaRoomMap_HouseInteriors3_2:: @ 081047CC
	map_bottom 0x13208C, 0x12C, 1
	map_top 0x1321A4, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors3_3:: @ 081047E4
	map_bottom 0x1321F4, 0x168, 1
	map_top 0x132304, 0x168, 1, 1

gAreaRoomMap_HouseInteriors3_4:: @ 081047FC
	map_bottom 0x132354, 0x12C, 1
	map_top 0x132468, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors3_5:: @ 08104814
	map_bottom 0x1324B4, 0x12C, 1
	map_top 0x1325AC, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors3_6:: @ 0810482C
	map_bottom 0x1325F4, 0x14A, 1
	map_top 0x13272C, 0x14A, 1, 1

gAreaRoomMap_HouseInteriors3_7:: @ 08104844
	map_bottom 0x132778, 0x12C, 1
	map_top 0x132878, 0x12C, 1, 1

gAreaRoomMap_HouseInteriors3_8:: @ 0810485C
	map_bottom 0x1328BC, 0x140, 1
	map_top 0x1329D4, 0x140, 1, 1

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
	map_bottom 0x1350AC, 0x12C, 0
	map_top 0x1351D8, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_1:: @ 081048B0
	map_bottom 0x135208, 0x12C, 0
	map_top 0x135334, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_2:: @ 081048C8
	map_bottom 0x135360, 0x12C, 0
	map_top 0x13548C, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_3:: @ 081048E0
	map_bottom 0x1354D0, 0x12C, 0
	map_top 0x1355FC, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_4:: @ 081048F8
	map_bottom 0x135628, 0x12C, 0
	map_top 0x135754, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_5:: @ 08104910
	map_bottom 0x135780, 0x12C, 0
	map_top 0x1358AC, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_6:: @ 08104928
	map_bottom 0x1358D8, 0x12C, 0
	map_top 0x135A04, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_7:: @ 08104940
	map_bottom 0x135A30, 0x12C, 0
	map_top 0x135B5C, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_8:: @ 08104958
	map_bottom 0x135B88, 0x12C, 0
	map_top 0x135CB4, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_9:: @ 08104970
	map_bottom 0x135CE0, 0x12C, 0
	map_top 0x135E0C, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_10:: @ 08104988
	map_bottom 0x135E38, 0x12C, 0
	map_top 0x135F64, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_11:: @ 081049A0
	map_bottom 0x135F90, 0x12C, 0
	map_top 0x1360BC, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_12:: @ 081049B8
	map_bottom 0x1360EC, 0x12C, 0
	map_top 0x136218, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_13:: @ 081049D0
	map_bottom 0x136248, 0x12C, 0
	map_top 0x136374, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_14:: @ 081049E8
	map_bottom 0x1363CC, 0x12C, 0
	map_top 0x1364F8, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_15:: @ 08104A00
	map_bottom 0x136528, 0x12C, 0
	map_top 0x136654, 0x12C, 1, 1

gAreaRoomMap_TreeInteriors_16:: @ 08104A18
	map_bottom 0x136694, 0x12C, 0
	map_top 0x1367C0, 0x12C, 1, 1

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
	map_bottom 0x133F88, 0x168, 1
	map_top 0x1340B0, 0x168, 1, 1

gAreaRoomMap_Dojos_1:: @ 08104AC8
	map_bottom 0x1340EC, 0x168, 1
	map_top 0x13421C, 0x168, 1, 1

gAreaRoomMap_Dojos_2:: @ 08104AE0
	map_bottom 0x134254, 0x168, 1
	map_top 0x134384, 0x168, 1, 1

gAreaRoomMap_Dojos_3:: @ 08104AF8
	map_bottom 0x1343BC, 0x168, 1
	map_top 0x1344E0, 0x168, 1, 1

gAreaRoomMap_Dojos_4:: @ 08104B10
	map_bottom 0x134518, 0x168, 1
	map_top 0x13463C, 0x168, 1, 1

gAreaRoomMap_Dojos_5:: @ 08104B28
	map_bottom 0x134674, 0x168, 1
	map_top 0x1347A8, 0x168, 1, 1

gAreaRoomMap_Dojos_6:: @ 08104B40
	map_bottom 0x1347E0, 0x168, 1
	map_top 0x13490C, 0x168, 1, 1

gAreaRoomMap_Dojos_7:: @ 08104B58
	map_bottom 0x134944, 0x12C, 1
	map_top 0x1349E4, 0x12C, 1, 1

gAreaRoomMap_Dojos_8:: @ 08104B70
	map_bottom 0x134A28, 0x12C, 1
	map_top 0x134ACC, 0x12C, 1, 1

gAreaRoomMap_Dojos_9:: @ 08104B88
	map_bottom 0x134B1C, 0x12C, 1
	map_top 0x134BC0, 0x12C, 1, 1

gAreaRoomMap_Dojos_10:: @ 08104BA0
	map_bottom 0x134C34, 0x12C, 1
	map_top 0x134CF8, 0x12C, 1, 1

gAreaRoomMap_Dojos_11:: @ 08104BB8
	map_bottom 0x134D28, 0x12C, 1
	map_top 0x134E28, 0x12C, 1, 1

gAreaRoomMap_Dojos_12:: @ 08104BD0
	map_bottom 0x134E58, 0x12C, 1
	map_top 0x134F54, 0x12C, 1, 1

gAreaRoomMap_Dojos_13:: @ 08104BE8
	map_bottom 0x134F84, 0x12C, 1
	map_top 0x13507C, 0x12C, 1, 1

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
	map_bottom 0x1367EC, 0x12C, 0
	map_top 0x136918, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_1:: @ 08104C58
	map_bottom 0x136948, 0x12C, 0
	map_top 0x136A74, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_2:: @ 08104C70
	map_bottom 0x136AC4, 0x12C, 0
	map_top 0x136BF0, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_3:: @ 08104C88
	map_bottom 0x136C44, 0x12C, 0
	map_top 0x136D70, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_4:: @ 08104CA0
	map_bottom 0x136DC4, 0x12C, 0
	map_top 0x136EF0, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_5:: @ 08104CB8
	map_bottom 0x136F40, 0x12C, 1
	map_top 0x137058, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_6:: @ 08104CD0
	map_bottom 0x13709C, 0x12C, 0
	map_top 0x1371C8, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_7:: @ 08104CE8
	map_bottom 0x1371F4, 0x12C, 0
	map_top 0x137320, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_8:: @ 08104D00
	map_bottom 0x137374, 0x12C, 0
	map_top 0x1374A0, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_9:: @ 08104D18
	map_bottom 0x1374D0, 0x12C, 0
	map_top 0x1375FC, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_10:: @ 08104D30
	map_bottom 0x13762C, 0x12C, 0
	map_top 0x137758, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_11:: @ 08104D48
	map_bottom 0x137788, 0x12C, 0
	map_top 0x1378B4, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_12:: @ 08104D60
	map_bottom 0x1378E4, 0x12C, 0
	map_top 0x137A10, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_13:: @ 08104D78
	map_bottom 0x137A40, 0x12C, 0
	map_top 0x137B6C, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_14:: @ 08104D90
	map_bottom 0x137B9C, 0x12C, 1
	map_top 0x137CAC, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_15:: @ 08104DA8
	map_bottom 0x137CDC, 0x12C, 1
	map_top 0x137DEC, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_16:: @ 08104DC0
	map_bottom 0x137E1C, 0x12C, 1
	map_top 0x137F2C, 0x12C, 1, 1

gAreaRoomMap_MinishCracks_17:: @ 08104DD8
	map_bottom 0x137F64, 0x12C, 1
	map_top 0x138078, 0x12C, 1, 1

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

gAreaRoomMap_ArmosInterios_0:: @ 08104E38
	map_bottom 0xA595C, 0x12C, 0
	map_top 0xA5A88, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_1:: @ 08104E50
	map_bottom 0xA5AC8, 0x12C, 0
	map_top 0xA5BF4, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_2:: @ 08104E68
	map_bottom 0xA5C34, 0x12C, 0
	map_top 0xA5D60, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_3:: @ 08104E80
	map_bottom 0xA5DA0, 0x12C, 0
	map_top 0xA5ECC, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_4:: @ 08104E98
	map_bottom 0xA5F0C, 0x12C, 0
	map_top 0xA6038, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_5:: @ 08104EB0
	map_bottom 0xA6078, 0x12C, 0
	map_top 0xA61A4, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_6:: @ 08104EC8
	map_bottom 0xA61E4, 0x12C, 0
	map_top 0xA6310, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_7:: @ 08104EE0
	map_bottom 0xA6350, 0x12C, 0
	map_top 0xA647C, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_8:: @ 08104EF8
	map_bottom 0xA64BC, 0x12C, 0
	map_top 0xA65E8, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_9:: @ 08104F10
	map_bottom 0xA6628, 0x12C, 0
	map_top 0xA6754, 0x12C, 1, 1

gAreaRoomMap_ArmosInterios_10:: @ 08104F28
	map_bottom 0xA6794, 0x12C, 0
	map_top 0xA68C0, 0x12C, 1, 1

gAreaRoomMaps_ArmosInteriors:: @ 08104F40
	.4byte gAreaRoomMap_ArmosInterios_0
	.4byte gAreaRoomMap_ArmosInterios_1
	.4byte gAreaRoomMap_ArmosInterios_2
	.4byte gAreaRoomMap_ArmosInterios_3
	.4byte gAreaRoomMap_ArmosInterios_4
	.4byte gAreaRoomMap_ArmosInterios_5
	.4byte gAreaRoomMap_ArmosInterios_6
	.4byte gAreaRoomMap_ArmosInterios_7
	.4byte gAreaRoomMap_ArmosInterios_8
	.4byte gAreaRoomMap_ArmosInterios_9
	.4byte gAreaRoomMap_ArmosInterios_10

gAreaRoomMap_MinishRafters_0:: @ 08104F6C
	map_bottom 0x1380A8, 0x3E0, 1, 1

gAreaRoomMap_MinishRafters_1:: @ 08104F78
	map_bottom 0x1382F4, 0x3E0, 1, 1

gAreaRoomMap_MinishRafters_2:: @ 08104F84
	map_bottom 0x138510, 0x3E0, 1, 1

gAreaRoomMap_MinishRafters_3:: @ 08104F90
	map_bottom 0x1387B4, 0x3E0, 1, 1

gAreaRoomMaps_MinishRafters:: @ 08104F9C
	.4byte gAreaRoomMap_MinishRafters_0
	.4byte gAreaRoomMap_MinishRafters_1
	.4byte gAreaRoomMap_MinishRafters_2
	.4byte gAreaRoomMap_MinishRafters_3

gAreaRoomMap_GoronCave_0:: @ 08104FAC
	map_bottom 0xB0054, 0x12C, 1
	map_top 0xB0118, 0x12C, 1, 1

gAreaRoomMap_GoronCave_1:: @ 08104FC4
	map_bottom 0xB015C, 0x546, 1
	map_top 0xB03E0, 0x546, 1, 1

gAreaRoomMaps_GoronCave:: @ 08104FDC
	.4byte gAreaRoomMap_GoronCave_0
	.4byte gAreaRoomMap_GoronCave_1

gAreaRoomMap_WindTribeTower_0:: @ 08104FE4
	map_bottom 0x138BD8, 0x276, 1
	map_top 0x138DB8, 0x276, 1, 1

gAreaRoomMap_WindTribeTower_1:: @ 08104FFC
	map_bottom 0x138E3C, 0x276, 1
	map_top 0x139028, 0x276, 1, 1

gAreaRoomMap_WindTribeTower_2:: @ 08105014
	map_bottom 0x1390A4, 0x276, 1
	map_top 0x13927C, 0x276, 1, 1

gAreaRoomMap_WindTribeTower_3:: @ 0810502C
	map_bottom 0x1392FC, 0x276, 1
	map_top 0x1394EC, 0x276, 1, 1

gAreaRoomMaps_WindTribeTower:: @ 08105044
	.4byte gAreaRoomMap_WindTribeTower_0
	.4byte gAreaRoomMap_WindTribeTower_1
	.4byte gAreaRoomMap_WindTribeTower_2
	.4byte gAreaRoomMap_WindTribeTower_3

gAreaRoomMap_WindTribeTowerRoof_0:: @ 08105054
	map_bottom 0x13954C, 0x30C, 1
	map_top 0x1397A0, 0x30C, 1, 1

gAreaRoomMaps_WindTribeTowerRoof:: @ 0810506C
	.4byte gAreaRoomMap_WindTribeTowerRoof_0

gAreaRoomMap_MinishCaves_0:: @ 08105070
	map_bottom 0xC12D4, 0x474, 1
	map_top 0xC15F4, 0x474, 1, 1

gAreaRoomMap_MinishCaves_1:: @ 08105088
	map_bottom 0xC16AC, 0x41A, 1
	map_top 0xC198C, 0x41A, 1, 1

gAreaRoomMap_MinishCaves_2:: @ 081050A0
	map_bottom 0xC1A30, 0x1FE, 1
	map_top 0xC1B90, 0x1FE, 1, 1

gAreaRoomMap_MinishCaves_3:: @ 081050B8
	map_bottom 0xC1BEC, 0x4CE, 1
	map_top 0xC1EDC, 0x4CE, 1, 1

gAreaRoomMap_MinishCaves_4:: @ 081050D0
	map_bottom 0xC1FA0, 0x1C2, 1
	map_top 0xC2124, 0x1C2, 1, 1

gAreaRoomMap_MinishCaves_5:: @ 081050E8
	map_bottom 0xC2174, 0x258, 1
	map_top 0xC2368, 0x258, 1, 1

gAreaRoomMap_MinishCaves_6:: @ 08105100
	map_bottom 0xC23D8, 0x258, 1
	map_top 0xC25C4, 0x258, 1, 1

gAreaRoomMap_MinishCaves_7:: @ 08105118
	map_bottom 0xC262C, 0x744, 1
	map_top 0xC2A54, 0x744, 1, 1

gAreaRoomMap_MinishCaves_8:: @ 08105130
	map_bottom 0xC2B64, 0x4B0, 1
	map_top 0xC2DFC, 0x4B0, 1, 1

gAreaRoomMap_MinishCaves_9:: @ 08105148
	map_bottom 0xC2E94, 0x618, 1
	map_top 0xC3294, 0x618, 1, 1

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
	map_bottom 0xC3368, 0x1C2, 1
	map_top 0xC3508, 0x1C2, 1, 1

gAreaRoomMap_CastleGardenMinishHoles_1:: @ 081051A0
	map_bottom 0xC3554, 0x1C2, 1
	map_top 0xC36F0, 0x1C2, 1, 1

gAreaRoomMaps_CastleGardenMinishHoles:: @ 081051B8
	.4byte gAreaRoomMap_CastleGardenMinishHoles_0
	.4byte gAreaRoomMap_CastleGardenMinishHoles_1

gAreaRoomMap_37_0:: @ 081051C0
	map_bottom 0xC373C, 0x1C2, 1
	map_top 0xC38F0, 0x1C2, 1, 1

gAreaRoomMap_37_1:: @ 081051D8
	map_bottom 0xC3988, 0x1C2, 1
	map_top 0xC3B38, 0x1C2, 1, 1

gAreaRoomMaps_37:: @ 081051F0
	.4byte gAreaRoomMap_37_0
	.4byte gAreaRoomMap_37_1

gAreaRoomMap_EzloCutscene_0:: @ 081051F8
	map_bottom 0x1389B8, 0x258, 1
	map_top 0x138B50, 0x258, 1, 1

gAreaRoomMaps_EzloCutscene:: @ 08105210
	.4byte gAreaRoomMap_EzloCutscene_0

gAreaRoomMap_HyruleTownUnderground_0:: @ 08105214
	map_bottom 0x1AA7A4, 0xE10, 1
	map_top 0x1AAC74, 0xE10, 1, 1

gAreaRoomMap_HyruleTownUnderground_1:: @ 0810522C
	map_bottom 0x1AAE34, 0x12C, 1
	map_top 0x1AAF18, 0x12C, 1, 1

gAreaRoomMaps_HyruleTownUnderground:: @ 08105244
	.4byte gAreaRoomMap_HyruleTownUnderground_0
	.4byte gAreaRoomMap_HyruleTownUnderground_1

gAreaRoomMap_GardenFountains_0:: @ 0810524C
	map_bottom 0x1AAF44, 0x12C, 1
	map_top 0x1AB024, 0x12C, 1, 1

gAreaRoomMap_GardenFountains_1:: @ 08105264
	map_bottom 0x1AB058, 0x12C, 1
	map_top 0x1AB150, 0x12C, 1, 1

gAreaRoomMaps_GardenFountains:: @ 0810527C
	.4byte gAreaRoomMap_GardenFountains_0
	.4byte gAreaRoomMap_GardenFountains_1

gAreaRoomMap_HyruleCastleCellar_0:: @ 08105284
	map_bottom 0x1AB184, 0x3C0, 1
	map_top 0x1AB2D4, 0x3C0, 1, 1

gAreaRoomMap_HyruleCastleCellar_1:: @ 0810529C
	map_bottom 0x1AB354, 0x1E0, 1
	map_top 0x1AB428, 0x1E0, 1, 1

gAreaRoomMaps_HyruleCastleCellar:: @ 081052B4
	.4byte gAreaRoomMap_HyruleCastleCellar_0
	.4byte gAreaRoomMap_HyruleCastleCellar_1

gAreaRoomMap_SimonsSimulation_0:: @ 081052BC
	map_bottom 0x1AB474, 0x23A, 1
	map_top 0x1AB5A8, 0x23A, 1, 1

gAreaRoomMaps_SimonsSimulation:: @ 081052D4
	.4byte gAreaRoomMap_SimonsSimulation_0

gAreaRoomMap_40_0:: @ 081052D8
	map_bottom 0x1A93EC, 0x286, 1
	map_top 0x1A958C, 0x286, 1, 1

gAreaRoomMap_40_1:: @ 081052F0
	map_bottom 0x1A95F8, 0x30E, 1
	map_top 0x1A982C, 0x30E, 1, 1

gAreaRoomMap_40_2:: @ 08105308
	map_bottom 0x1A98CC, 0x286, 1
	map_top 0x1A9A30, 0x286, 1, 1

gAreaRoomMap_40_3:: @ 08105320
	map_bottom 0x1A9AD0, 0x286, 1
	map_top 0x1A9C28, 0x286, 1, 1

gAreaRoomMap_40_4:: @ 08105338
	map_bottom 0x1A9CC8, 0x30E, 1
	map_top 0x1A9E68, 0x30E, 1, 1

gAreaRoomMap_40_5:: @ 08105350
	map_bottom 0x1A9EF4, 0x286, 1
	map_top 0x1AA084, 0x286, 1, 1

gAreaRoomMap_40_6:: @ 08105368
	map_bottom 0x1AA114, 0x520, 1
	map_top 0x1AA384, 0x520, 1, 1

gAreaRoomMap_40_7:: @ 08105380
	map_bottom 0x1AA468, 0x28A, 1
	map_top 0x1AA5AC, 0x28A, 1, 1

gAreaRoomMap_40_8:: @ 08105398
	map_bottom 0x1AA628, 0x200, 1
	map_top 0x1AA72C, 0x200, 1, 1

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
	map_bottom 0x1BF038, 0x1FE, 1
	map_top 0x1BF14C, 0x1FE, 1, 1

gAreaRoomMap_DeepwoodShrine_1:: @ 081053EC
	map_bottom 0x1BF274, 0x2EE, 1
	map_top 0x1BF444, 0x2EE, 1, 1

gAreaRoomMap_DeepwoodShrine_2:: @ 08105404
	map_bottom 0x1BF5AC, 0x276, 1
	map_top 0x1BF758, 0x276, 1, 1

gAreaRoomMap_DeepwoodShrine_3:: @ 0810541C
	map_bottom 0x1BF89C, 0x1FE, 1
	map_top 0x1BFA34, 0x1FE, 1, 1

gAreaRoomMap_DeepwoodShrine_4:: @ 08105434
	map_bottom 0x1BFB34, 0x154, 1
	map_top 0x1BFC58, 0x154, 1, 1

gAreaRoomMap_DeepwoodShrine_5:: @ 0810544C
	map_bottom 0x1BFD30, 0x352, 1
	map_top 0x1BFFA0, 0x352, 1, 1

gAreaRoomMap_DeepwoodShrine_6:: @ 08105464
	map_bottom 0x1C00F8, 0x5AA, 1
	map_top 0x1C0470, 0x5AA, 1, 1

gAreaRoomMap_DeepwoodShrine_7:: @ 0810547C
	map_bottom 0x1C063C, 0x352, 1
	map_top 0x1C088C, 0x352, 1, 1

gAreaRoomMap_DeepwoodShrine_8:: @ 08105494
	map_bottom 0x1C09C0, 0x198, 1
	map_top 0x1C0AF4, 0x198, 1, 1

gAreaRoomMap_DeepwoodShrine_9:: @ 081054AC
	map_bottom 0x1C0BEC, 0x1BA, 1
	map_top 0x1C0D48, 0x1BA, 1, 1

gAreaRoomMap_DeepwoodShrine_10:: @ 081054C4
	map_bottom 0x1C0E30, 0x2CA, 1
	map_top 0x1C1008, 0x2CA, 1, 1

gAreaRoomMap_DeepwoodShrine_11:: @ 081054DC
	map_bottom 0x1C1154, 0x2CA, 1
	map_top 0x1C132C, 0x2CA, 1, 1

gAreaRoomMap_DeepwoodShrine_12:: @ 081054F4
	map_bottom 0x1C14E4, 0x2CA, 1
	map_top 0x1C1690, 0x2CA, 1, 1

gAreaRoomMap_DeepwoodShrine_13:: @ 0810550C
	map_bottom 0x1C1800, 0x2EE, 1
	map_top 0x1C1A34, 0x2EE, 1, 1

gAreaRoomMap_DeepwoodShrine_14:: @ 08105524
	map_bottom 0x1C1B10, 0x276, 1
	map_top 0x1C1D08, 0x276, 1, 1

gAreaRoomMap_DeepwoodShrine_15:: @ 0810553C
	map_bottom 0x1C1DDC, 0x198, 1
	map_top 0x1C1F14, 0x198, 1, 1

gAreaRoomMap_DeepwoodShrine_16:: @ 08105554
	map_bottom 0x1C1FB4, 0x5AA, 1
	map_top 0x1C2264, 0x5AA, 1, 1

gAreaRoomMap_DeepwoodShrine_17:: @ 0810556C
	map_bottom 0x1C2490, 0x264, 1
	map_top 0x1C25D4, 0x264, 1, 1

gAreaRoomMap_DeepwoodShrineBoss_0:: @ 08105584
	map_bottom 0x1C26EC, 0x1FE, 1
	map_top 0x1C28C4, 0x1FE, 1, 1

gAreaRoomMap_DeepwoodShrine_18:: @ 0810559C
	map_bottom 0x1C296C, 0x2CA, 1
	map_top 0x1C2B40, 0x2CA, 1, 1

gAreaRoomMap_DeepwoodShrine_19:: @ 081055B4
	map_bottom 0x1C2CF4, 0x12C, 1
	map_top 0x1C2D2C, 0x12C, 1, 1

gAreaRoomMap_DeepwoodShrineEntry_0:: @ 081055CC
	map_bottom 0x1C2D80, 0x1C2, 0
	map_top 0x1C2F44, 0x1C2, 1, 1

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
	map_bottom 0x1D6458, 0x30E, 1
	map_top 0x1D65CC, 0x30E, 1, 1

gAreaRoomMap_CaveOfFlames_1:: @ 08105688
	map_bottom 0x1D67A8, 0x30E, 1
	map_top 0x1D6908, 0x30E, 1, 1

gAreaRoomMap_CaveOfFlames_2:: @ 081056A0
	map_bottom 0x1D6AE0, 0x4AC, 1
	map_top 0x1D6C00, 0x4AC, 1, 1

gAreaRoomMap_CaveOfFlames_3:: @ 081056B8
	map_bottom 0x1D6F10, 0x1BA, 1
	map_top 0x1D6F4C, 0x1BA, 1, 1

gAreaRoomMap_CaveOfFlames_4:: @ 081056D0
	map_bottom 0x1D70D4, 0x74E, 1
	map_top 0x1D72BC, 0x74E, 1, 1

gAreaRoomMap_CaveOfFlames_5:: @ 081056E8
	map_bottom 0x1D76E8, 0x1BA, 1
	map_top 0x1D7724, 0x1BA, 1, 1

gAreaRoomMap_CaveOfFlames_6:: @ 08105700
	map_bottom 0x1D78CC, 0x5B6, 1
	map_top 0x1D7984, 0x5B6, 1, 1

gAreaRoomMap_CaveOfFlames_7:: @ 08105718
	map_bottom 0x1D7CF8, 0x1FE, 1
	map_top 0x1D7D3C, 0x1FE, 1, 1

gAreaRoomMap_CaveOfFlames_8:: @ 08105730
	map_bottom 0x1D7F00, 0x508, 1
	map_top 0x1D8158, 0x508, 1, 1

gAreaRoomMap_CaveOfFlames_9:: @ 08105748
	map_bottom 0x1D8420, 0x508, 1
	map_top 0x1D869C, 0x508, 1, 1

gAreaRoomMap_CaveOfFlames_10:: @ 08105760
	map_bottom 0x1D8940, 0x9D8, 1
	map_top 0x1D8CAC, 0x9D8, 1, 1

gAreaRoomMap_CaveOfFlames_11:: @ 08105778
	map_bottom 0x1D9094, 0x4EC, 1
	map_top 0x1D9264, 0x4EC, 1, 1

gAreaRoomMap_CaveOfFlames_12:: @ 08105790
	map_bottom 0x1D940C, 0x276, 1
	map_top 0x1D956C, 0x276, 1, 1

gAreaRoomMap_CaveOfFlames_13:: @ 081057A8
	map_bottom 0x1D9688, 0x276, 1
	map_top 0x1D97E0, 0x276, 1, 1

gAreaRoomMap_CaveOfFlames_14:: @ 081057C0
	map_bottom 0x1D992C, 0x276, 1
	map_top 0x1D9A28, 0x276, 1, 1

gAreaRoomMap_CaveOfFlames_15:: @ 081057D8
	map_bottom 0x1D9BA8, 0x186, 1
	map_top 0x1D9BE0, 0x186, 1, 1

gAreaRoomMap_CaveOfFlames_16:: @ 081057F0
	map_bottom 0x1D9D48, 0x186, 1
	map_top 0x1D9D80, 0x186, 1, 1

gAreaRoomMap_CaveOfFlames_17:: @ 08105808
	map_bottom 0x1D9EC8, 0x9D8, 1
	map_top 0x1DA3B4, 0x9D8, 1, 1

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
	map_bottom 0x1DA6E8, 0x360, 1
	map_top 0x1DA990, 0x360, 1, 1

gAreaRoomMaps_CaveOfFlamesBoss:: @ 08105898
	.4byte gAreaRoomMap_CaveOfFlamesBoss_0

gAreaRoomMap_FortressOfWinds_0:: @ 0810589C
	map_bottom 0x1F19E8, 0x1BA, 1
	map_top 0x1F1B1C, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_1:: @ 081058B4
	map_bottom 0x1F1BCC, 0x1BA, 1
	map_top 0x1F1CF0, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_2:: @ 081058CC
	map_bottom 0x1F1DCC, 0x804, 1
	map_top 0x1F213C, 0x804, 1, 1

gAreaRoomMap_FortressOfWinds_3:: @ 081058E4
	map_bottom 0x1F23E0, 0x1DC, 1
	map_top 0x1F253C, 0x1DC, 1, 1

gAreaRoomMap_FortressOfWinds_4:: @ 081058FC
	map_bottom 0x1F2600, 0x364, 1
	map_top 0x1F2834, 0x364, 1, 1

gAreaRoomMap_FortressOfWinds_5:: @ 08105914
	map_bottom 0x1F2A14, 0x1BA, 1
	map_top 0x1F2A50, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_6:: @ 0810592C
	map_bottom 0x1F2C14, 0x1BA, 1
	map_top 0x1F2C9C, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_7:: @ 08105944
	map_bottom 0x1F2E0C, 0x374, 1
	map_top 0x1F2FBC, 0x374, 1, 1

gAreaRoomMap_FortressOfWinds_8:: @ 0810595C
	map_bottom 0x1F3174, 0x1BA, 1
	map_top 0x1F31B0, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_9:: @ 08105974
	map_bottom 0x1F3320, 0x374, 1
	map_top 0x1F3390, 0x374, 1, 1

gAreaRoomMap_FortressOfWinds_10:: @ 0810598C
	map_bottom 0x1F3640, 0x1BA, 1
	map_top 0x1F367C, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_11:: @ 081059A4
	map_bottom 0x1F382C, 0x256, 1
	map_top 0x1F3998, 0x256, 1, 1

gAreaRoomMap_FortressOfWinds_12:: @ 081059BC
	map_bottom 0x1F3A40, 0x1BA, 1
	map_top 0x1F3B3C, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_13:: @ 081059D4
	map_bottom 0x1F3C38, 0x1BA, 1
	map_top 0x1F3D10, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_14:: @ 081059EC
	map_bottom 0x1F3DF0, 0x374, 1
	map_top 0x1F4054, 0x374, 1, 1

gAreaRoomMap_FortressOfWinds_15:: @ 08105A04
	map_bottom 0x1F41C4, 0x1BA, 1
	map_top 0x1F42A4, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_16:: @ 08105A1C
	map_bottom 0x1F4398, 0x1BA, 1
	map_top 0x1F443C, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_17:: @ 08105A34
	map_bottom 0x1F458C, 0x1BA, 1
	map_top 0x1F46A4, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_18:: @ 08105A4C
	map_bottom 0x1F475C, 0x1BA, 1
	map_top 0x1F48A0, 0x1BA, 1, 1

gAreaRoomMap_FortressOfWinds_19:: @ 08105A64
	map_bottom 0x1F494C, 0x186, 1
	map_top 0x1F4A34, 0x186, 1, 1

gAreaRoomMap_FortressOfWinds_20:: @ 08105A7C
	map_bottom 0x1F4AE4, 0x186, 1
	map_top 0x1F4BE8, 0x186, 1, 1

gAreaRoomMap_FortressOfWinds_21:: @ 08105A94
	map_bottom 0x1F4C8C, 0x186, 1
	map_top 0x1F4D90, 0x186, 1, 1

gAreaRoomMap_FortressOfWinds_22:: @ 08105AAC
	map_bottom 0x1F4E3C, 0x186, 1
	map_top 0x1F4F18, 0x186, 1, 1

gAreaRoomMap_FortressOfWinds_23:: @ 08105AC4
	map_bottom 0x1F4FB4, 0x1A0, 1
	map_top 0x1F50AC, 0x1A0, 1, 1

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
	map_bottom 0x1F55E0, 0x4B0, 1
	map_top 0x1F58B8, 0x4B0, 1, 1

gAreaRoomMaps_FortressOfWindsTop:: @ 08105B88
	.4byte gAreaRoomMap_FortressOfWindsTop_0

gAreaRoomMap_InnerMazaal_0:: @ 08105B8C
	map_bottom 0x1F514C, 0x286, 1
	map_top 0x1F5214, 0x286, 1, 1

gAreaRoomMap_InnerMazaal_1:: @ 08105BA4
	map_bottom 0x1F538C, 0x286, 1
	map_top 0x1F5460, 0x286, 1, 1

gAreaRoomMaps_InnerMazaal:: @ 08105BBC
	.4byte gAreaRoomMap_InnerMazaal_0
	.4byte gAreaRoomMap_InnerMazaal_1

gAreaRoomMap_TempleOfDroplets_0:: @ 08105BC4
	map_bottom 0x2052BC, 0x1BA, 1
	map_top 0x2053CC, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_1:: @ 08105BDC
	map_bottom 0x205494, 0x1BA, 1
	map_top 0x2055B0, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_2:: @ 08105BF4
	map_bottom 0x205678, 0x1BA, 1
	map_top 0x2057A4, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_3:: @ 08105C0C
	map_bottom 0x205858, 0x6B4, 1
	map_top 0x205AA0, 0x6B4, 1, 1

gAreaRoomMap_TempleOfDroplets_4:: @ 08105C24
	map_bottom 0x205DA0, 0x1BA, 1
	map_top 0x205E5C, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_5:: @ 08105C3C
	map_bottom 0x205FA4, 0x1BA, 1
	map_top 0x205FE0, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_6:: @ 08105C54
	map_bottom 0x206150, 0x30C, 1
	map_top 0x206270, 0x30C, 1, 1

gAreaRoomMap_TempleOfDroplets_7:: @ 08105C6C
	map_bottom 0x206470, 0x374, 1
	map_top 0x2065BC, 0x374, 1, 1

gAreaRoomMap_TempleOfDroplets_8:: @ 08105C84
	map_bottom 0x206798, 0x948, 1
	map_top 0x206AA4, 0x948, 1, 1

gAreaRoomMap_TempleOfDroplets_9:: @ 08105C9C
	map_bottom 0x206EE4, 0x1BA, 1
	map_top 0x206FBC, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_10:: @ 08105CB4
	map_bottom 0x2070C0, 0x492, 1
	map_top 0x20735C, 0x492, 1, 1

gAreaRoomMap_TempleOfDroplets_11:: @ 08105CCC
	map_bottom 0x2074E8, 0x1BA, 1
	map_top 0x207620, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_12:: @ 08105CE4
	map_bottom 0x207710, 0x186, 1
	map_top 0x207748, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_13:: @ 08105CFC
	map_bottom 0x20787C, 0x374, 1
	map_top 0x2079F0, 0x374, 1, 1

gAreaRoomMap_TempleOfDroplets_14:: @ 08105D14
	map_bottom 0x207BDC, 0x420, 1
	map_top 0x207CFC, 0x420, 1, 1

gAreaRoomMap_TempleOfDroplets_15:: @ 08105D2C
	map_bottom 0x207E10, 0x1BA, 1
	map_top 0x207F30, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_16:: @ 08105D44
	map_bottom 0x20800C, 0x1BA, 1
	map_top 0x20810C, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_17:: @ 08105D5C
	map_bottom 0x20818C, 0x186, 1
	map_top 0x208254, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_18:: @ 08105D74
	map_bottom 0x208310, 0x374, 1
	map_top 0x20846C, 0x374, 1, 1

gAreaRoomMap_TempleOfDroplets_19:: @ 08105D8C
	map_bottom 0x2085BC, 0x1BA, 1
	map_top 0x2086EC, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_20:: @ 08105DA4
	map_bottom 0x2087B4, 0x35A, 1
	map_top 0x2088D0, 0x35A, 1, 1

gAreaRoomMap_TempleOfDroplets_21:: @ 08105DBC
	map_bottom 0x208A3C, 0x1BA, 1
	map_top 0x208B48, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_22:: @ 08105DD4
	map_bottom 0x208BFC, 0x374, 1
	map_top 0x208D38, 0x374, 1, 1

gAreaRoomMap_TempleOfDroplets_23:: @ 08105DEC
	map_bottom 0x208FF8, 0x1BA, 1
	map_top 0x209110, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_24:: @ 08105E04
	map_bottom 0x20921C, 0x4B0, 1
	map_top 0x2092B4, 0x4B0, 1, 1

gAreaRoomMap_TempleOfDroplets_25:: @ 08105E1C
	map_bottom 0x20961C, 0x1A4, 1
	map_top 0x209658, 0x1A4, 1, 1

gAreaRoomMap_TempleOfDroplets_26:: @ 08105E34
	map_bottom 0x2097C4, 0xA0E, 1
	map_top 0x209BC8, 0xA0E, 1, 1

gAreaRoomMap_TempleOfDroplets_27:: @ 08105E4C
	map_bottom 0x209F4C, 0x1BA, 1
	map_top 0x20A098, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_28:: @ 08105E64
	map_bottom 0x20A144, 0x186, 1
	map_top 0x20A234, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_29:: @ 08105E7C
	map_bottom 0x20A2CC, 0x492, 1
	map_top 0x20A4CC, 0x492, 1, 1

gAreaRoomMap_TempleOfDroplets_30:: @ 08105E94
	map_bottom 0x20A614, 0x186, 1
	map_top 0x20A64C, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_31:: @ 08105EAC
	map_bottom 0x20A784, 0x1BA, 1
	map_top 0x20A834, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_32:: @ 08105EC4
	map_bottom 0x20A980, 0x1BA, 1
	map_top 0x20AA74, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_33:: @ 08105EDC
	map_bottom 0x20AB54, 0x186, 1
	map_top 0x20AC10, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_34:: @ 08105EF4
	map_bottom 0x20ACB4, 0x186, 1
	map_top 0x20ACEC, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_35:: @ 08105F0C
	map_bottom 0x20AE3C, 0x396, 1
	map_top 0x20B03C, 0x396, 1, 1

gAreaRoomMap_TempleOfDroplets_36:: @ 08105F24
	map_bottom 0x20B188, 0x1BA, 1
	map_top 0x20B2C0, 0x1BA, 1, 1

gAreaRoomMap_TempleOfDroplets_37:: @ 08105F3C
	map_bottom 0x20B394, 0x186, 1
	map_top 0x20B4C0, 0x186, 1, 1

gAreaRoomMap_TempleOfDroplets_38:: @ 08105F54
	map_bottom 0x20B558, 0x39C, 1
	map_top 0x20B724, 0x39C, 1, 1

gAreaRoomMap_TempleOfDroplets_39:: @ 08105F6C
	map_bottom 0x20B82C, 0x1DC, 1
	map_top 0x20B950, 0x1DC, 1, 1

gAreaRoomMap_TempleOfDroplets_40:: @ 08105F84
	map_bottom 0x20BA0C, 0x1A0, 1
	map_top 0x20BADC, 0x1A0, 1, 1

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
	map_bottom 0x20BBC4, 0x1C2, 1
	map_top 0x20BCF8, 0x1C2, 1, 1

gAreaRoomMaps_61:: @ 08106090
	.4byte gAreaRoomMap_61_0

gAreaRoomMap_HyruleTownMinishCaves_0:: @ 08106094
	map_bottom 0x20BD3C, 0x330, 1
	map_top 0x20BF18, 0x330, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_1:: @ 081060AC
	map_bottom 0x20BFC0, 0x2D0, 1
	map_top 0x20C138, 0x2D0, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_2:: @ 081060C4
	map_bottom 0x20C1E0, 0x242, 1
	map_top 0x20C2F0, 0x242, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_3:: @ 081060DC
	map_bottom 0x20C3C4, 0x1FE, 1
	map_top 0x20C408, 0x1FE, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_4:: @ 081060F4
	map_bottom 0x20C538, 0x1C2, 1
	map_top 0x20C624, 0x1C2, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_5:: @ 0810610C
	map_bottom 0x20C6AC, 0x222, 1
	map_top 0x20C7E0, 0x222, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_6:: @ 08106124
	map_bottom 0x20C848, 0x1BA, 1
	map_top 0x20C95C, 0x1BA, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_7:: @ 0810613C
	map_bottom 0x20C998, 0x186, 1
	map_top 0x20CAA4, 0x186, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_8:: @ 08106154
	map_bottom 0x20CAFC, 0x24C, 1
	map_top 0x20CC48, 0x24C, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_9:: @ 0810616C
	map_bottom 0x20CCB8, 0x1DC, 1
	map_top 0x20CDD0, 0x1DC, 1, 1

gAreaRoomMap_HyruleTownMinishCaves_10:: @ 08106184
	map_bottom 0x20CE18, 0x348, 1
	map_top 0x20CEF4, 0x348, 1, 1

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
	map_bottom 0x2159A4, 0x532, 1
	map_top 0x215BCC, 0x532, 1, 1

gAreaRoomMap_RoyalCrypt_1:: @ 0810620C
	map_bottom 0x215D68, 0x1DC, 1
	map_top 0x215E8C, 0x1DC, 1, 1

gAreaRoomMap_RoyalCrypt_2:: @ 08106224
	map_bottom 0x215F08, 0x348, 1
	map_top 0x21602C, 0x348, 1, 1

gAreaRoomMap_RoyalCrypt_3:: @ 0810623C
	map_bottom 0x216104, 0x2F4, 1
	map_top 0x216278, 0x2F4, 1, 1

gAreaRoomMap_RoyalCrypt_4:: @ 08106254
	map_bottom 0x216344, 0x6F0, 1
	map_top 0x216678, 0x6F0, 1, 1

gAreaRoomMap_RoyalCrypt_5:: @ 0810626C
	map_bottom 0x2167CC, 0x2E4, 1
	map_top 0x216954, 0x2E4, 1, 1

gAreaRoomMap_RoyalCrypt_6:: @ 08106284
	map_bottom 0x2169F4, 0x2E4, 1
	map_top 0x216B58, 0x2E4, 1, 1

gAreaRoomMap_RoyalCrypt_7:: @ 0810629C
	map_bottom 0x216BF0, 0x2EC, 1
	map_top 0x216D48, 0x2EC, 1, 1

gAreaRoomMap_RoyalCrypt_8:: @ 081062B4
	map_bottom 0x216E00, 0x154, 1
	map_top 0x216EF0, 0x154, 1, 1

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

gAreaRoomMap_PalaceOfWinds_0:: @ 0810630C
	map_bottom 0x2246C0, 0xA8C, 1
	map_top 0x224A00, 0xA8C, 1, 1

gAreaRoomMap_PalaceOfWinds_1:: @ 08106324
	map_bottom 0x224D14, 0x12C, 1
	map_top 0x224E04, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_2:: @ 0810633C
	map_bottom 0x224E64, 0x1A4, 1
	map_top 0x224FBC, 0x1A4, 1, 1

gAreaRoomMap_PalaceOfWinds_3:: @ 08106354
	map_bottom 0x22505C, 0x384, 1
	map_top 0x2252A4, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_4:: @ 0810636C
	map_bottom 0x2253FC, 0x12C, 1
	map_top 0x2254C8, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_5:: @ 08106384
	map_bottom 0x225524, 0x384, 1
	map_top 0x22572C, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_6:: @ 0810639C
	map_bottom 0x225850, 0x384, 1
	map_top 0x225A40, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_7:: @ 081063B4
	map_bottom 0x225B60, 0x384, 1
	map_top 0x225D68, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_8:: @ 081063CC
	map_bottom 0x225E98, 0x258, 1
	map_top 0x22601C, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_9:: @ 081063E4
	map_bottom 0x226128, 0x12C, 1
	map_top 0x226200, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_10:: @ 081063FC
	map_bottom 0x226264, 0x186, 1
	map_top 0x226364, 0x186, 1, 1

gAreaRoomMap_PalaceOfWinds_11:: @ 08106414
	map_bottom 0x226418, 0x12C, 1
	map_top 0x2264FC, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_12:: @ 0810642C
	map_bottom 0x226578, 0x1E0, 1
	map_top 0x22663C, 0x1E0, 1, 1

gAreaRoomMap_PalaceOfWinds_13:: @ 08106444
	map_bottom 0x2266BC, 0x12C, 1
	map_top 0x22679C, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_14:: @ 0810645C
	map_bottom 0x226818, 0x258, 1
	map_top 0x226948, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_15:: @ 08106474
	map_bottom 0x2269F4, 0x708, 1
	map_top 0x226C3C, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_16:: @ 0810648C
	map_bottom 0x226E70, 0xA8C, 1
	map_top 0x2271A4, 0xA8C, 1, 1

gAreaRoomMap_PalaceOfWinds_17:: @ 081064A4
	map_bottom 0x22745C, 0x384, 1
	map_top 0x227668, 0x384, 1, 1

gAreaRoomMap_PalaceOfWinds_18:: @ 081064BC
	map_bottom 0x227774, 0x258, 1
	map_top 0x227860, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_19:: @ 081064D4
	map_bottom 0x227924, 0x4B0, 1
	map_top 0x227B6C, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_20:: @ 081064EC
	map_bottom 0x227D34, 0x258, 1
	map_top 0x227EA8, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_21:: @ 08106504
	map_bottom 0x227F48, 0x708, 1
	map_top 0x228330, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_22:: @ 0810651C
	map_bottom 0x22856C, 0x4B0, 1
	map_top 0x2287B8, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_23:: @ 08106534
	map_bottom 0x228988, 0x258, 1
	map_top 0x228A58, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_24:: @ 0810654C
	map_bottom 0x228AFC, 0x4B0, 1
	map_top 0x228C7C, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_25:: @ 08106564
	map_bottom 0x228DE4, 0x4B0, 1
	map_top 0x228F90, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_26:: @ 0810657C
	map_bottom 0x229138, 0x4B0, 1
	map_top 0x2293A4, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_27:: @ 08106594
	map_bottom 0x229574, 0x12C, 1
	map_top 0x22964C, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_28:: @ 081065AC
	map_bottom 0x2296D8, 0x12C, 1
	map_top 0x2297C0, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_29:: @ 081065C4
	map_bottom 0x229820, 0x12C, 1
	map_top 0x2298F8, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_30:: @ 081065DC
	map_bottom 0x229978, 0x12C, 1
	map_top 0x229A58, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_31:: @ 081065F4
	map_bottom 0x229AD4, 0x12C, 1
	map_top 0x229BA4, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_32:: @ 0810660C
	map_bottom 0x229C14, 0x12C, 1
	map_top 0x229CE8, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_33:: @ 08106624
	map_bottom 0x229D5C, 0xA8C, 1
	map_top 0x22A0F0, 0xA8C, 1, 1

gAreaRoomMap_PalaceOfWinds_34:: @ 0810663C
	map_bottom 0x22A454, 0x708, 1
	map_top 0x22A760, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_35:: @ 08106654
	map_bottom 0x22A99C, 0x258, 1
	map_top 0x22AB10, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_36:: @ 0810666C
	map_bottom 0x22ABF0, 0x4B0, 1
	map_top 0x22AD78, 0x4B0, 1, 1

gAreaRoomMap_PalaceOfWinds_37:: @ 08106684
	map_bottom 0x22AEC4, 0x12C, 1
	map_top 0x22AFC4, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_38:: @ 0810669C
	map_bottom 0x22B03C, 0x12C, 1
	map_top 0x22B150, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_39:: @ 081066B4
	map_bottom 0x22B1B0, 0x12C, 1
	map_top 0x22B2A8, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_40:: @ 081066CC
	map_bottom 0x22B324, 0x12C, 1
	map_top 0x22B414, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_41:: @ 081066E4
	map_bottom 0x22B498, 0x12C, 1
	map_top 0x22B56C, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_42:: @ 081066FC
	map_bottom 0x22B5EC, 0x12C, 1
	map_top 0x22B6D8, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_43:: @ 08106714
	map_bottom 0x22B758, 0x258, 1
	map_top 0x22B8B4, 0x258, 1, 1

gAreaRoomMap_PalaceOfWinds_44:: @ 0810672C
	map_bottom 0x22B994, 0x708, 1
	map_top 0x22BC78, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_45:: @ 08106744
	map_bottom 0x22BE68, 0x708, 1
	map_top 0x22C07C, 0x708, 1, 1

gAreaRoomMap_PalaceOfWinds_46:: @ 0810675C
	map_bottom 0x22C304, 0x550, 1
	map_top 0x22C4B0, 0x550, 1, 1

gAreaRoomMap_PalaceOfWinds_47:: @ 08106774
	map_bottom 0x22C648, 0x12C, 1
	map_top 0x22C6C8, 0x12C, 1, 1

gAreaRoomMap_PalaceOfWinds_48:: @ 0810678C
	map_bottom 0x22C71C, 0x500, 1
	map_top 0x22C9C0, 0x500, 1, 1

gAreaRoomMap_PalaceOfWinds_49:: @ 081067A4
	map_bottom 0x22CB00, 0x3DE, 1
	map_top 0x22CC68, 0x3DE, 1, 1

gAreaRoomMap_PalaceOfWinds_50:: @ 081067BC
	map_bottom 0x22CD70, 0x708, 1
	map_top 0x22D070, 0x708, 1, 1

gAreaRoomMaps_PalaceOfWinds:: @ 081067D4
	.4byte gAreaRoomMap_PalaceOfWinds_0
	.4byte gAreaRoomMap_PalaceOfWinds_1
	.4byte gAreaRoomMap_PalaceOfWinds_2
	.4byte gAreaRoomMap_PalaceOfWinds_3
	.4byte gAreaRoomMap_PalaceOfWinds_4
	.4byte gAreaRoomMap_PalaceOfWinds_5
	.4byte gAreaRoomMap_PalaceOfWinds_6
	.4byte gAreaRoomMap_PalaceOfWinds_7
	.4byte gAreaRoomMap_PalaceOfWinds_8
	.4byte gAreaRoomMap_PalaceOfWinds_9
	.4byte gAreaRoomMap_PalaceOfWinds_10
	.4byte gAreaRoomMap_PalaceOfWinds_11
	.4byte gAreaRoomMap_PalaceOfWinds_12
	.4byte gAreaRoomMap_PalaceOfWinds_13
	.4byte gAreaRoomMap_PalaceOfWinds_14
	.4byte gAreaRoomMap_PalaceOfWinds_15
	.4byte gAreaRoomMap_PalaceOfWinds_16
	.4byte gAreaRoomMap_PalaceOfWinds_17
	.4byte gAreaRoomMap_PalaceOfWinds_18
	.4byte gAreaRoomMap_PalaceOfWinds_19
	.4byte gAreaRoomMap_PalaceOfWinds_20
	.4byte gAreaRoomMap_PalaceOfWinds_21
	.4byte gAreaRoomMap_PalaceOfWinds_22
	.4byte gAreaRoomMap_PalaceOfWinds_23
	.4byte gAreaRoomMap_PalaceOfWinds_24
	.4byte gAreaRoomMap_PalaceOfWinds_25
	.4byte gAreaRoomMap_PalaceOfWinds_26
	.4byte gAreaRoomMap_PalaceOfWinds_27
	.4byte gAreaRoomMap_PalaceOfWinds_28
	.4byte gAreaRoomMap_PalaceOfWinds_29
	.4byte gAreaRoomMap_PalaceOfWinds_30
	.4byte gAreaRoomMap_PalaceOfWinds_31
	.4byte gAreaRoomMap_PalaceOfWinds_32
	.4byte gAreaRoomMap_PalaceOfWinds_33
	.4byte gAreaRoomMap_PalaceOfWinds_34
	.4byte gAreaRoomMap_PalaceOfWinds_35
	.4byte gAreaRoomMap_PalaceOfWinds_36
	.4byte gAreaRoomMap_PalaceOfWinds_37
	.4byte gAreaRoomMap_PalaceOfWinds_38
	.4byte gAreaRoomMap_PalaceOfWinds_39
	.4byte gAreaRoomMap_PalaceOfWinds_40
	.4byte gAreaRoomMap_PalaceOfWinds_41
	.4byte gAreaRoomMap_PalaceOfWinds_42
	.4byte gAreaRoomMap_PalaceOfWinds_43
	.4byte gAreaRoomMap_PalaceOfWinds_44
	.4byte gAreaRoomMap_PalaceOfWinds_45
	.4byte gAreaRoomMap_PalaceOfWinds_46
	.4byte gAreaRoomMap_PalaceOfWinds_47
	.4byte gAreaRoomMap_PalaceOfWinds_48
	.4byte gAreaRoomMap_PalaceOfWinds_49
	.4byte gAreaRoomMap_PalaceOfWinds_50

gAreaRoomMap_PalaceOfWindsBoss_0:: @ 081068A0
	map_top 0x22D2B8, 0x1F80, 1, 1

gAreaRoomMaps_PalaceOfWindsBoss:: @ 081068AC
	.4byte gAreaRoomMap_PalaceOfWindsBoss_0

gAreaRoomMap_Sanctuary_0:: @ 081068B0
	map_bottom 0x236A08, 0x6D6, 1
	map_top 0x236D1C, 0x6D6, 1, 1

gAreaRoomMap_Sanctuary_1:: @ 081068C8
	map_bottom 0x236E14, 0x910, 1
	map_top 0x237320, 0x910, 1, 1

gAreaRoomMap_Sanctuary_2:: @ 081068E0
	map_bottom 0x2375D8, 0x344, 1
	map_top 0x23788C, 0x344, 1, 1

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
	map_bottom 0x240B44, 0x7CE, 1
	map_top 0x240F30, 0x7CE, 1, 1

gAreaRoomMap_HyruleCastle_1:: @ 08106930
	map_bottom 0x241118, 0x7FE, 1
	map_top 0x241424, 0x7FE, 1, 1

gAreaRoomMap_HyruleCastle_2:: @ 08106948
	map_bottom 0x2415B0, 0x2EC, 1
	map_top 0x2417B8, 0x2EC, 1, 1

gAreaRoomMap_HyruleCastle_3:: @ 08106960
	map_bottom 0x24186C, 0xC94, 1
	map_top 0x241D18, 0xC94, 1, 1

gAreaRoomMap_HyruleCastle_4:: @ 08106978
	map_bottom 0x241EF0, 0x1FE, 1
	map_top 0x242044, 0x1FE, 1, 1

gAreaRoomMap_HyruleCastle_5:: @ 08106990
	map_bottom 0x2420A4, 0x12C, 1
	map_top 0x24217C, 0x12C, 1, 1

gAreaRoomMap_HyruleCastle_6:: @ 081069A8
	map_bottom 0x2421A8, 0x12C, 1
	map_top 0x242274, 0x12C, 1, 1

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
	map_bottom 0x247218, 0x396, 1
	map_top 0x24745C, 0x396, 1, 1

gAreaRoomMaps_SanctuaryEntrance:: @ 08106A18
	.4byte gAreaRoomMap_SanctuaryEntrance_0

gAreaRoomMap_DarkHyruleCastle_0:: @ 08106A1C
	map_bottom 0x264EF4, 0xE58, 1
	map_top 0x265378, 0xE58, 1, 1

gAreaRoomMap_DarkHyruleCastle_1:: @ 08106A34
	map_bottom 0x2657C8, 0x1BA, 1
	map_top 0x2658A4, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_2:: @ 08106A4C
	map_bottom 0x265964, 0x1BA, 1
	map_top 0x265A44, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_3:: @ 08106A64
	map_bottom 0x265B18, 0x1BA, 1
	map_top 0x265C08, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_4:: @ 08106A7C
	map_bottom 0x265CD4, 0x1BA, 1
	map_top 0x265DC8, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_5:: @ 08106A94
	map_bottom 0x265E98, 0x444, 1
	map_top 0x2660BC, 0x444, 1, 1

gAreaRoomMap_DarkHyruleCastle_6:: @ 08106AAC
	map_bottom 0x26620C, 0x2A0, 1
	map_top 0x2663A0, 0x2A0, 1, 1

gAreaRoomMap_DarkHyruleCastle_7:: @ 08106AC4
	map_bottom 0x2664A0, 0x374, 1
	map_top 0x2665EC, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_8:: @ 08106ADC
	map_bottom 0x266730, 0x374, 1
	map_top 0x266910, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_9:: @ 08106AF4
	map_bottom 0x266A44, 0x1FE, 1
	map_top 0x266B98, 0x1FE, 1, 1

gAreaRoomMap_DarkHyruleCastle_10:: @ 08106B0C
	map_bottom 0x266C78, 0x1BA, 1
	map_top 0x266DA4, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_11:: @ 08106B24
	map_bottom 0x266E70, 0x1BA, 1
	map_top 0x266F7C, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_12:: @ 08106B3C
	map_bottom 0x26701C, 0x1BA, 1
	map_top 0x26712C, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_13:: @ 08106B54
	map_bottom 0x2671DC, 0x1BA, 1
	map_top 0x2672E8, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_14:: @ 08106B6C
	map_bottom 0x2673B4, 0x1BA, 1
	map_top 0x2674F0, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_15:: @ 08106B84
	map_bottom 0x2675D4, 0x1BA, 1
	map_top 0x2676F8, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_16:: @ 08106B9C
	map_bottom 0x2677BC, 0x1BA, 1
	map_top 0x2678F0, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_17:: @ 08106BB4
	map_bottom 0x2679D0, 0x2A8, 1
	map_top 0x267B70, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_18:: @ 08106BCC
	map_bottom 0x267C98, 0x2A8, 1
	map_top 0x267E00, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_19:: @ 08106BE4
	map_bottom 0x267F48, 0x1BA, 1
	map_top 0x268080, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_20:: @ 08106BFC
	map_bottom 0x268168, 0x1BA, 1
	map_top 0x2682C8, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_21:: @ 08106C14
	map_bottom 0x2683A4, 0x1BA, 1
	map_top 0x2684CC, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_22:: @ 08106C2C
	map_bottom 0x2685A8, 0x1BA, 1
	map_top 0x2686B0, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_23:: @ 08106C44
	map_bottom 0x26876C, 0x374, 1
	map_top 0x268930, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_24:: @ 08106C5C
	map_bottom 0x268A98, 0x374, 1
	map_top 0x268C2C, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_25:: @ 08106C74
	map_bottom 0x268D54, 0x1BA, 1
	map_top 0x268E3C, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_26:: @ 08106C8C
	map_bottom 0x268F0C, 0x1BA, 1
	map_top 0x269010, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_27:: @ 08106CA4
	map_bottom 0x2690AC, 0x1BA, 1
	map_top 0x2690E8, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_28:: @ 08106CBC
	map_bottom 0x269168, 0x1BA, 1
	map_top 0x269290, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_29:: @ 08106CD4
	map_bottom 0x26936C, 0x374, 1
	map_top 0x2694B0, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastle_30:: @ 08106CEC
	map_bottom 0x2695F0, 0x1BA, 1
	map_top 0x2696D4, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_31:: @ 08106D04
	map_bottom 0x269794, 0x1BA, 1
	map_top 0x2698E4, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_32:: @ 08106D1C
	map_bottom 0x2699BC, 0x1BA, 1
	map_top 0x269AF0, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_33:: @ 08106D34
	map_bottom 0x269BD8, 0x1BA, 1
	map_top 0x269CE0, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_34:: @ 08106D4C
	map_bottom 0x269DB4, 0x1BA, 1
	map_top 0x269ED0, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_35:: @ 08106D64
	map_bottom 0x269FAC, 0x1BA, 1
	map_top 0x269FE8, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_36:: @ 08106D7C
	map_bottom 0x26A168, 0x1BA, 1
	map_top 0x26A1A4, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_37:: @ 08106D94
	map_bottom 0x26A2F8, 0x1BA, 1
	map_top 0x26A334, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_38:: @ 08106DAC
	map_bottom 0x26A4A0, 0x2A8, 1
	map_top 0x26A5CC, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_39:: @ 08106DC4
	map_bottom 0x26A70C, 0x2A8, 1
	map_top 0x26A7BC, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_40:: @ 08106DDC
	map_bottom 0x26A940, 0x1BA, 1
	map_top 0x26AA24, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_41:: @ 08106DF4
	map_bottom 0x26AAF8, 0x1BA, 1
	map_top 0x26ABB4, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_42:: @ 08106E0C
	map_bottom 0x26AC78, 0x1BA, 1
	map_top 0x26AD44, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_43:: @ 08106E24
	map_bottom 0x26AE18, 0x1BA, 1
	map_top 0x26AEF8, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_44:: @ 08106E3C
	map_bottom 0x26AFBC, 0x1BA, 1
	map_top 0x26B094, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_45:: @ 08106E54
	map_bottom 0x26B15C, 0x1BA, 1
	map_top 0x26B250, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_46:: @ 08106E6C
	map_bottom 0x26B2F4, 0x1BA, 1
	map_top 0x26B408, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_47:: @ 08106E84
	map_bottom 0x26B4BC, 0x1BA, 1
	map_top 0x26B4F8, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_48:: @ 08106E9C
	map_bottom 0x26B658, 0x1BA, 1
	map_top 0x26B694, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_49:: @ 08106EB4
	map_bottom 0x26B7EC, 0x1BA, 1
	map_top 0x26B828, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_50:: @ 08106ECC
	map_bottom 0x26B984, 0x1BA, 1
	map_top 0x26B9C0, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_51:: @ 08106EE4
	map_bottom 0x26BB34, 0x2A8, 1
	map_top 0x26BB8C, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_52:: @ 08106EFC
	map_bottom 0x26BD88, 0x2A8, 1
	map_top 0x26BDE0, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastle_53:: @ 08106F14
	map_bottom 0x26BFB4, 0x1BA, 1
	map_top 0x26C060, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_54:: @ 08106F2C
	map_bottom 0x26C190, 0x1BA, 1
	map_top 0x26C23C, 0x1BA, 1, 1

gAreaRoomMap_DarkHyruleCastle_55:: @ 08106F44
	map_bottom 0x26C36C, 0xA5C, 1
	map_top 0x26C578, 0xA5C, 1, 1

gAreaRoomMap_DarkHyruleCastle_56:: @ 08106F5C
	map_bottom 0x26CB1C, 0x1FE, 1
	map_top 0x26CC54, 0x1FE, 1, 1

gAreaRoomMap_DarkHyruleCastle_57:: @ 08106F74
	map_bottom 0x26CD14, 0x3FC, 1
	map_top 0x26CE94, 0x3FC, 1, 1

gAreaRoomMap_DarkHyruleCastle_58:: @ 08106F8C
	map_bottom 0x26CFD0, 0x264, 1
	map_top 0x26D0C4, 0x264, 1, 1

gAreaRoomMap_DarkHyruleCastle_59:: @ 08106FA4
	map_bottom 0x26D194, 0x1BA, 1
	map_top 0x26D1D0, 0x1BA, 1, 1

gAreaRoomMaps_DarkHyruleCastle:: @ 08106FBC
	.4byte gAreaRoomMap_DarkHyruleCastle_0
	.4byte gAreaRoomMap_DarkHyruleCastle_1
	.4byte gAreaRoomMap_DarkHyruleCastle_2
	.4byte gAreaRoomMap_DarkHyruleCastle_3
	.4byte gAreaRoomMap_DarkHyruleCastle_4
	.4byte gAreaRoomMap_DarkHyruleCastle_5
	.4byte gAreaRoomMap_DarkHyruleCastle_6
	.4byte gAreaRoomMap_DarkHyruleCastle_7
	.4byte gAreaRoomMap_DarkHyruleCastle_8
	.4byte gAreaRoomMap_DarkHyruleCastle_9
	.4byte gAreaRoomMap_DarkHyruleCastle_10
	.4byte gAreaRoomMap_DarkHyruleCastle_11
	.4byte gAreaRoomMap_DarkHyruleCastle_12
	.4byte gAreaRoomMap_DarkHyruleCastle_13
	.4byte gAreaRoomMap_DarkHyruleCastle_14
	.4byte gAreaRoomMap_DarkHyruleCastle_15
	.4byte gAreaRoomMap_DarkHyruleCastle_16
	.4byte gAreaRoomMap_DarkHyruleCastle_17
	.4byte gAreaRoomMap_DarkHyruleCastle_18
	.4byte gAreaRoomMap_DarkHyruleCastle_19
	.4byte gAreaRoomMap_DarkHyruleCastle_20
	.4byte gAreaRoomMap_DarkHyruleCastle_21
	.4byte gAreaRoomMap_DarkHyruleCastle_22
	.4byte gAreaRoomMap_DarkHyruleCastle_23
	.4byte gAreaRoomMap_DarkHyruleCastle_24
	.4byte gAreaRoomMap_DarkHyruleCastle_25
	.4byte gAreaRoomMap_DarkHyruleCastle_26
	.4byte gAreaRoomMap_DarkHyruleCastle_27
	.4byte gAreaRoomMap_DarkHyruleCastle_28
	.4byte gAreaRoomMap_DarkHyruleCastle_29
	.4byte gAreaRoomMap_DarkHyruleCastle_30
	.4byte gAreaRoomMap_DarkHyruleCastle_31
	.4byte gAreaRoomMap_DarkHyruleCastle_32
	.4byte gAreaRoomMap_DarkHyruleCastle_33
	.4byte gAreaRoomMap_DarkHyruleCastle_34
	.4byte gAreaRoomMap_DarkHyruleCastle_35
	.4byte gAreaRoomMap_DarkHyruleCastle_36
	.4byte gAreaRoomMap_DarkHyruleCastle_37
	.4byte gAreaRoomMap_DarkHyruleCastle_38
	.4byte gAreaRoomMap_DarkHyruleCastle_39
	.4byte gAreaRoomMap_DarkHyruleCastle_40
	.4byte gAreaRoomMap_DarkHyruleCastle_41
	.4byte gAreaRoomMap_DarkHyruleCastle_42
	.4byte gAreaRoomMap_DarkHyruleCastle_43
	.4byte gAreaRoomMap_DarkHyruleCastle_44
	.4byte gAreaRoomMap_DarkHyruleCastle_45
	.4byte gAreaRoomMap_DarkHyruleCastle_46
	.4byte gAreaRoomMap_DarkHyruleCastle_47
	.4byte gAreaRoomMap_DarkHyruleCastle_48
	.4byte gAreaRoomMap_DarkHyruleCastle_49
	.4byte gAreaRoomMap_DarkHyruleCastle_50
	.4byte gAreaRoomMap_DarkHyruleCastle_51
	.4byte gAreaRoomMap_DarkHyruleCastle_52
	.4byte gAreaRoomMap_DarkHyruleCastle_53
	.4byte gAreaRoomMap_DarkHyruleCastle_54
	.4byte gAreaRoomMap_DarkHyruleCastle_55
	.4byte gAreaRoomMap_DarkHyruleCastle_56
	.4byte gAreaRoomMap_DarkHyruleCastle_57
	.4byte gAreaRoomMap_DarkHyruleCastle_58
	.4byte gAreaRoomMap_DarkHyruleCastle_59

gAreaRoomMap_DarkHyruleCastleOutside_0:: @ 081070AC
	map_bottom 0x27647C, 0x2EE, 1
	map_top 0x276694, 0x2EE, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_1:: @ 081070C4
	map_bottom 0x276704, 0x396, 1
	map_top 0x276924, 0x396, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_2:: @ 081070DC
	map_bottom 0x2769A0, 0x374, 1
	map_top 0x276A8C, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_3:: @ 081070F4
	map_bottom 0x276BE8, 0x52E, 1
	map_top 0x276D2C, 0x52E, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_4:: @ 0810710C
	map_bottom 0x276EEC, 0x2A8, 1
	map_top 0x276F78, 0x2A8, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_5:: @ 08107124
	map_bottom 0x27705C, 0x374, 1
	map_top 0x277164, 0x374, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_6:: @ 0810713C
	map_bottom 0x2772D0, 0xA5C, 1
	map_top 0x277480, 0xA5C, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_7:: @ 08107154
	map_bottom 0x2776C8, 0x6E8, 1
	map_top 0x277848, 0x6E8, 1, 1

gAreaRoomMap_DarkHyruleCastleOutside_8:: @ 0810716C
	map_bottom 0x277A28, 0x630, 1
	map_top 0x277AEC, 0x630, 1, 1

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
	map_bottom 0x26D27C, 0x2A8, 1
	map_top 0x26D470, 0x2A8, 1, 1

gAreaRoomMaps_DarkHyruleCastleBridge:: @ 081071C0
	.4byte gAreaRoomMap_DarkHyruleCastleBridge_0

gAreaRoomMap_VaatisArms_0:: @ 081071C4
	map_bottom 0x26DA80, 0x214, 1
	map_top 0x26DC40, 0x214, 1, 1

gAreaRoomMap_VaatisArms_1:: @ 081071DC
	map_bottom 0x26DC98, 0x214, 1
	map_top 0x26DE58, 0x214, 1, 1

gAreaRoomMap_VaatisArms_2:: @ 081071F4
	map_bottom 0x26DEB0, 0x214, 1
	map_top 0x26E070, 0x214, 1, 1

gAreaRoomMaps_VaatisArms:: @ 0810720C
	.4byte gAreaRoomMap_VaatisArms_0
	.4byte gAreaRoomMap_VaatisArms_1
	.4byte gAreaRoomMap_VaatisArms_2

gAreaRoomMap_Vaati3_0:: @ 08107218
	map_bottom 0x26D564, 0x294, 1
	map_top 0x26D704, 0x294, 1, 1

gAreaRoomMap_Vaati3_1:: @ 08107230
	map_bottom 0x26D75C, 0x210, 1
	map_top 0x26D89C, 0x210, 1, 1

gAreaRoomMaps_Vaati3:: @ 08107248
	.4byte gAreaRoomMap_Vaati3_0
	.4byte gAreaRoomMap_Vaati3_1

gAreaRoomMap_Vaati2_0:: @ 08107250
	map_bottom 0x26D8E4, 0x294, 1
	map_top 0x26DA24, 0x294, 1, 1

gAreaRoomMaps_Vaati2:: @ 08107268
	.4byte gAreaRoomMap_Vaati2_0

gAreaRoomMap_47_0:: @ 0810726C
	map_bottom 0x277BB0, 0x256, 1
	map_top 0x277CD8, 0x256, 1, 1

gAreaRoomMap_47_1:: @ 08107284
	map_bottom 0x277D38, 0x2B2, 1
	map_top 0x277E5C, 0x2B2, 1, 1

gAreaRoomMap_47_2:: @ 0810729C
	map_bottom 0x277ECC, 0x47E, 1
	map_top 0x2780BC, 0x47E, 1, 1

gAreaRoomMaps_47:: @ 081072B4
	.4byte gAreaRoomMap_47_0
	.4byte gAreaRoomMap_47_1
	.4byte gAreaRoomMap_47_2

gAreaRoomMap_CastorCaves_0:: @ 081072C0
	map_bottom 0x9FEB4, 0x168, 1
	map_top 0x9FFE4, 0x168, 1, 1

gAreaRoomMap_CastorCaves_1:: @ 081072D8
	map_bottom 0xA0030, 0x1B8, 1
	map_top 0xA0194, 0x1B8, 1, 1

gAreaRoomMap_CastorCaves_2:: @ 081072F0
	map_bottom 0xA01DC, 0x12C, 1
	map_top 0xA02B4, 0x12C, 1, 1

gAreaRoomMap_CastorCaves_3:: @ 08107308
	map_bottom 0xA0328, 0x12C, 1
	map_top 0xA0414, 0x12C, 1, 1

gAreaRoomMap_CastorCaves_4:: @ 08107320
	map_bottom 0xA0488, 0x12C, 1
	map_top 0xA058C, 0x12C, 1, 1

gAreaRoomMaps_CastorCaves:: @ 08107338
	.4byte gAreaRoomMap_CastorCaves_0
	.4byte gAreaRoomMap_CastorCaves_1
	.4byte gAreaRoomMap_CastorCaves_2
	.4byte gAreaRoomMap_CastorCaves_3
	.4byte gAreaRoomMap_CastorCaves_4

gAreaRoomMap_CastorDarknut_0:: @ 0810734C
	map_bottom 0xA05C0, 0x1BA, 1
	map_top 0xA0724, 0x1BA, 1, 1

gAreaRoomMap_CastorDarknut_1:: @ 08107364
	map_bottom 0xA0768, 0x280, 1
	map_top 0xA08BC, 0x280, 1, 1

gAreaRoomMaps_CastorDarknut:: @ 0810737C
	.4byte gAreaRoomMap_CastorDarknut_0
	.4byte gAreaRoomMap_CastorDarknut_1

gAreaRoomMap_Caves_0:: @ 08107384
	map_bottom 0xB04AC, 0x372, 1
	map_top 0xB06C8, 0x372, 1, 1

gAreaRoomMap_Caves_1:: @ 0810739C
	map_bottom 0xB0738, 0x2B2, 1
	map_top 0xB090C, 0x2B2, 1, 1

gAreaRoomMap_Caves_2:: @ 081073B4
	map_bottom 0xB09B8, 0x12C, 1
	map_top 0xB0ABC, 0x12C, 1, 1

gAreaRoomMap_Caves_3:: @ 081073CC
	map_bottom 0xB0AE8, 0x12C, 1
	map_top 0xB0BF4, 0x12C, 1, 1

gAreaRoomMap_Caves_4:: @ 081073E4
	map_bottom 0xB0C20, 0x12C, 1
	map_top 0xB0D10, 0x12C, 1, 1

gAreaRoomMap_Caves_5:: @ 081073FC
	map_bottom 0xB0D3C, 0x12C, 1
	map_top 0xB0E08, 0x12C, 1, 1

gAreaRoomMap_Caves_6:: @ 08107414
	map_bottom 0xB0E34, 0x1A4, 1
	map_top 0xB0F48, 0x1A4, 1, 1

gAreaRoomMap_Caves_7:: @ 0810742C
	map_bottom 0xB0FE0, 0x12C, 1
	map_top 0xB10E8, 0x12C, 1, 1

gAreaRoomMap_Caves_8:: @ 08107444
	map_bottom 0xB113C, 0x12C, 1
	map_top 0xB1250, 0x12C, 1, 1

gAreaRoomMap_Caves_9:: @ 0810745C
	map_bottom 0xB1290, 0x12C, 1
	map_top 0xB1390, 0x12C, 1, 1

gAreaRoomMap_Caves_10:: @ 08107474
	map_bottom 0xB13F0, 0x12C, 1
	map_top 0xB14EC, 0x12C, 1, 1

gAreaRoomMap_Caves_11:: @ 0810748C
	map_bottom 0xB1520, 0x12C, 1
	map_top 0xB1624, 0x12C, 1, 1

gAreaRoomMap_Caves_12:: @ 081074A4
	map_bottom 0xB1658, 0x1E0, 1
	map_top 0xB17C0, 0x1E0, 1, 1

gAreaRoomMap_Caves_13:: @ 081074BC
	map_bottom 0xB183C, 0x1E0, 1
	map_top 0xB1940, 0x1E0, 1, 1

gAreaRoomMap_Caves_14:: @ 081074D4
	map_bottom 0xB19D0, 0x208, 1
	map_top 0xB1B00, 0x208, 1, 1

gAreaRoomMap_Caves_15:: @ 081074EC
	map_bottom 0xB1B7C, 0x12C, 1
	map_top 0xB1C88, 0x12C, 1, 1

gAreaRoomMap_Caves_16:: @ 08107504
	map_bottom 0xB1CBC, 0x12C, 1
	map_top 0xB1DAC, 0x12C, 1, 1

gAreaRoomMap_Caves_17:: @ 0810751C
	map_bottom 0xB1DE0, 0x12C, 1
	map_top 0xB1EDC, 0x12C, 1, 1

gAreaRoomMap_Caves_18:: @ 08107534
	map_bottom 0xB1F10, 0x12C, 1
	map_top 0xB200C, 0x12C, 1, 1

gAreaRoomMap_Caves_19:: @ 0810754C
	map_bottom 0xB2038, 0x12C, 1
	map_top 0xB2124, 0x12C, 1, 1

gAreaRoomMap_Caves_20:: @ 08107564
	map_bottom 0xB2174, 0x12C, 1
	map_top 0xB225C, 0x12C, 1, 1

gAreaRoomMap_Caves_21:: @ 0810757C
	map_bottom 0xB2294, 0x1C2, 1
	map_top 0xB2374, 0x1C2, 1, 1

gAreaRoomMap_Caves_22:: @ 08107594
	map_bottom 0xB2410, 0x12C, 1
	map_top 0xB2524, 0x12C, 1, 1

gAreaRoomMap_Caves_23:: @ 081075AC
	map_bottom 0xB2560, 0x12C, 1
	map_top 0xB2624, 0x12C, 1, 1

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
	map_bottom 0xB2658, 0x1A4, 1
	map_top 0xB277C, 0x1A4, 1, 1

gAreaRoomMap_VeilFallsCaves_1:: @ 0810763C
	map_bottom 0xB27E8, 0x2D0, 1
	map_top 0xB297C, 0x2D0, 1, 1

gAreaRoomMap_VeilFallsCaves_2:: @ 08107654
	map_bottom 0xB2A3C, 0x186, 1
	map_top 0xB2B18, 0x186, 1, 1

gAreaRoomMap_VeilFallsCaves_3:: @ 0810766C
	map_bottom 0xB2BAC, 0x1E0, 1
	map_top 0xB2CE8, 0x1E0, 1, 1

gAreaRoomMap_VeilFallsCaves_4:: @ 08107684
	map_bottom 0xB2D34, 0x12C, 1
	map_top 0xB2E14, 0x12C, 1, 1

gAreaRoomMap_VeilFallsCaves_5:: @ 0810769C
	map_bottom 0xB2E88, 0x12C, 1
	map_top 0xB2F50, 0x12C, 1, 1

gAreaRoomMap_VeilFallsCaves_6:: @ 081076B4
	map_bottom 0xB2FD8, 0x12C, 1
	map_top 0xB309C, 0x12C, 1, 1

gAreaRoomMap_VeilFallsCaves_7:: @ 081076CC
	map_bottom 0xB310C, 0x258, 1
	map_top 0xB328C, 0x258, 1, 1

gAreaRoomMap_VeilFallsCaves_8:: @ 081076E4
	map_bottom 0xB3318, 0x258, 1
	map_top 0xB34E8, 0x258, 1, 1

gAreaRoomMap_VeilFallsCaves_9:: @ 081076FC
	map_bottom 0xB3578, 0x12C, 1
	map_top 0xB3694, 0x12C, 1, 1

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
	map_bottom 0xB36C8, 0x12C, 1
	map_top 0xB37E4, 0x12C, 1, 1

gAreaRoomMap_RoyalValleyGraves_1:: @ 08107754
	map_bottom 0xB3818, 0x258, 1
	map_top 0xB3984, 0x258, 1, 1

gAreaRoomMaps_RoyalValleyGraves:: @ 0810776C
	.4byte gAreaRoomMap_RoyalValleyGraves_0
	.4byte gAreaRoomMap_RoyalValleyGraves_1

gAreaRoomMap_45_0:: @ 08107774
	map_bottom 0x278158, 0x1FE, 1
	map_top 0x27828C, 0x1FE, 1, 1

gAreaRoomMaps_45:: @ 0810778C
	.4byte gAreaRoomMap_45_0

gAreaRoomMap_46_0:: @ 08107790
	map_bottom 0x2782D0, 0x286, 1
	map_top 0x278454, 0x286, 1, 1

gAreaRoomMap_46_1:: @ 081077A8
	map_bottom 0x2784C4, 0x30E, 1
	map_top 0x2786E0, 0x30E, 1, 1

gAreaRoomMap_46_2:: @ 081077C0
	map_bottom 0x278790, 0x286, 1
	map_top 0x278908, 0x286, 1, 1

gAreaRoomMap_46_3:: @ 081077D8
	map_bottom 0x2789A0, 0x286, 1
	map_top 0x278AEC, 0x286, 1, 1

gAreaRoomMap_46_4:: @ 081077F0
	map_bottom 0x278B88, 0x30E, 1
	map_top 0x278D38, 0x30E, 1, 1

gAreaRoomMap_46_5:: @ 08107808
	map_bottom 0x278DDC, 0x286, 1
	map_top 0x278F2C, 0x286, 1, 1

gAreaRoomMap_46_6:: @ 08107820
	map_bottom 0x278FA8, 0x720, 1
	map_top 0x27921C, 0x720, 1, 1

gAreaRoomMap_46_7:: @ 08107838
	map_bottom 0x27932C, 0x2F2, 1
	map_top 0x2794A4, 0x2F2, 1, 1

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
	map_bottom 0x279520, 0xC80, 1
	map_top 0x2799B0, 0xC80, 1, 1

@ Unused
gAreaRoomMaps_08107888:: @ 08107888
	.4byte gAreaRoomMap_08107870

gAreaRoomMap_4D_0:: @ 0810788C
	map_bottom 0x279D28, 0xCD0, 1
	map_top 0x27A2F4, 0xCD0, 1, 1

gAreaRoomMaps_4D:: @ 081078A4
	.4byte gAreaRoomMap_4D_0

gAreaRoomMap_57_0:: @ 081078A8
	map_bottom 0x27A574, 0xC80, 1
	map_top 0x27AAE4, 0xC80, 1, 1

gAreaRoomMaps_57:: @ 081078C0
	.4byte gAreaRoomMap_57_0

gAreaRoomMap_5F_0:: @ 081078C4
	map_bottom 0x27AD50, 0xC80, 1
	map_top 0x27B118, 0xC80, 1, 1

gAreaRoomMaps_5F:: @ 081078DC
	.4byte gAreaRoomMap_5F_0

gAreaRoomMap_67_0:: @ 081078E0
	map_bottom 0x27B3A0, 0x12C, 1
	map_top 0x27B470, 0x12C, 1, 1

gAreaRoomMaps_67:: @ 081078F8
	.4byte gAreaRoomMap_67_0

gAreaRoomMap_6F_0:: @ 081078FC
	map_bottom 0x27B4AC, 0xC80, 1
	map_top 0x27B974, 0xC80, 1, 1

gAreaRoomMaps_6F:: @ 08107914
	.4byte gAreaRoomMap_6F_0

gAreaRoomMap_77_0:: @ 08107918
	map_bottom 0x27BCCC, 0x1040, 1
	map_top 0x27C2C8, 0x1040, 1, 1

gAreaRoomMaps_77:: @ 08107930
	.4byte gAreaRoomMap_77_0

gAreaRoomMap_7F_0:: @ 08107934
	map_bottom 0x27C720, 0xC80, 1
	map_top 0x27CC28, 0xC80, 1, 1

gAreaRoomMaps_7F:: @ 0810794C
	.4byte gAreaRoomMap_7F_0

gAreaRoomMap_87_0:: @ 08107950
	map_bottom 0x27CF58, 0xF3C, 1
	map_top 0x27D71C, 0xF3C, 1, 1

gAreaRoomMaps_87:: @ 08107968
	.4byte gAreaRoomMap_87_0

gAreaRoomMap_8F_0:: @ 0810796C
	map_bottom 0x27DA00, 0xFA0, 1
	map_top 0x27DFF4, 0xFA0, 1, 1

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
	.4byte gAreaRoomMaps_MinishPaths1            @ 0x11
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
