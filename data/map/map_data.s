	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2


gMapData:: @ 08324AE4
@ Contains purely 0xff to indicate that no metatiles are used, but the mapping for the tiles is supplied directly.
gAreaRoomMap_None::
	.incbin "assets/gAreaRoomMap_None.bin.lz"
gAreaTileset_MinishWoods_0_0::
	.incbin "tilesets/gAreaTileset_MinishWoods_0_0.4bpp.lz"
gAreaTileset_MinishWoods_0_1::
	.incbin "tilesets/gAreaTileset_MinishWoods_0_1.4bpp.lz"
gAreaTileset_MinishWoods_0_2::
	.incbin "tilesets/gAreaTileset_MinishWoods_0_2.4bpp.lz"
gAreaMetatiles_MinishWoods_0::
	.incbin "assets/gAreaMetatiles_MinishWoods_0.bin.lz"
gAreaMetatiles_MinishWoods_1::
	.incbin "assets/gAreaMetatiles_MinishWoods_1.bin.lz"
gAreaMetatiles_MinishWoods_2::
	.incbin "assets/gAreaMetatiles_MinishWoods_2.bin.lz"
gAreaMetatiles_MinishWoods_3::
	.incbin "assets/gAreaMetatiles_MinishWoods_3.bin.lz"
gAreaRoomMap_MinishWoods_0_0::
	.incbin "assets/gAreaRoomMap_MinishWoods_0_0.bin.lz"
gAreaRoomMap_MinishWoods_0_1::
	.incbin "assets/gAreaRoomMap_MinishWoods_0_1.bin.lz"
unknown_0::
	.incbin "assets/unknown_0.bin"
gAreaTileset_HyliaDigCaves_0_0::
	.incbin "tilesets/gAreaTileset_HyliaDigCaves_0_0.4bpp.lz"
gAreaTileset_HyliaDigCaves_0_1::
	.incbin "tilesets/gAreaTileset_HyliaDigCaves_0_1.4bpp.lz"
gAreaTileset_HyliaDigCaves_0_2::
	.incbin "tilesets/gAreaTileset_HyliaDigCaves_0_2.4bpp.lz"
gAreaMetatiles_LakeHylia_0::
	.incbin "assets/gAreaMetatiles_LakeHylia_0.bin.lz"
gAreaMetatiles_LakeHylia_1::
	.incbin "assets/gAreaMetatiles_LakeHylia_1.bin.lz"
gAreaMetatiles_LakeHylia_2::
	.incbin "assets/gAreaMetatiles_LakeHylia_2.bin.lz"
gAreaMetatiles_LakeHylia_3::
	.incbin "assets/gAreaMetatiles_LakeHylia_3.bin.lz"
gAreaRoomMap_LakeHylia_0_0::
	.incbin "assets/gAreaRoomMap_LakeHylia_0_0.bin.lz"
gAreaRoomMap_LakeHylia_0_1::
	.incbin "assets/gAreaRoomMap_LakeHylia_0_1.bin.lz"
unknown_1::
	.incbin "assets/unknown_1.bin"
gAreaRoomMap_LakeHylia_1_0::
	.incbin "assets/gAreaRoomMap_LakeHylia_1_0.bin.lz"
gAreaRoomMap_LakeHylia_1_1::
	.incbin "assets/gAreaRoomMap_LakeHylia_1_1.bin.lz"
gAreaTileset_OuterFortressOfWinds_0_0::
	.incbin "tilesets/gAreaTileset_OuterFortressOfWinds_0_0.4bpp.lz"
gAreaTileset_OuterFortressOfWinds_0_1::
	.incbin "tilesets/gAreaTileset_OuterFortressOfWinds_0_1.4bpp.lz"
gAreaTileset_OuterFortressOfWinds_0_2::
	.incbin "tilesets/gAreaTileset_OuterFortressOfWinds_0_2.4bpp.lz"
gAreaMetatiles_CastorWilds_0::
	.incbin "assets/gAreaMetatiles_CastorWilds_0.bin.lz"
gAreaMetatiles_CastorWilds_1::
	.incbin "assets/gAreaMetatiles_CastorWilds_1.bin.lz"
gAreaMetatiles_CastorWilds_2::
	.incbin "assets/gAreaMetatiles_CastorWilds_2.bin.lz"
gAreaMetatiles_CastorWilds_3::
	.incbin "assets/gAreaMetatiles_CastorWilds_3.bin.lz"
gAreaRoomMap_CastorWilds_0_0::
	.incbin "assets/gAreaRoomMap_CastorWilds_0_0.bin.lz"
gAreaRoomMap_CastorWilds_0_1::
	.incbin "assets/gAreaRoomMap_CastorWilds_0_1.bin.lz"
unknown_2::
	.incbin "assets/unknown_2.bin"
gAreaRoomMap_Ruins_0_0::
	.incbin "assets/gAreaRoomMap_Ruins_0_0.bin.lz"
gAreaRoomMap_Ruins_0_1::
	.incbin "assets/gAreaRoomMap_Ruins_0_1.bin.lz"
gAreaRoomMap_Ruins_1_0::
	.incbin "assets/gAreaRoomMap_Ruins_1_0.bin.lz"
gAreaRoomMap_Ruins_1_1::
	.incbin "assets/gAreaRoomMap_Ruins_1_1.bin.lz"
gAreaRoomMap_Ruins_2_0::
	.incbin "assets/gAreaRoomMap_Ruins_2_0.bin.lz"
gAreaRoomMap_Ruins_2_1::
	.incbin "assets/gAreaRoomMap_Ruins_2_1.bin.lz"
gAreaRoomMap_Ruins_3_0::
	.incbin "assets/gAreaRoomMap_Ruins_3_0.bin.lz"
gAreaRoomMap_Ruins_3_1::
	.incbin "assets/gAreaRoomMap_Ruins_3_1.bin.lz"
gAreaRoomMap_Ruins_4_0::
	.incbin "assets/gAreaRoomMap_Ruins_4_0.bin.lz"
gAreaRoomMap_Ruins_4_1::
	.incbin "assets/gAreaRoomMap_Ruins_4_1.bin.lz"
gAreaRoomMap_Ruins_5_0::
	.incbin "assets/gAreaRoomMap_Ruins_5_0.bin.lz"
gAreaRoomMap_Ruins_5_1::
	.incbin "assets/gAreaRoomMap_Ruins_5_1.bin.lz"
unknown_3::
	.incbin "assets/unknown_3.bin"
gAreaMetatiles_HyruleTown_0::
	.incbin "assets/gAreaMetatiles_HyruleTown_0.bin.lz"
gAreaMetatiles_HyruleTown_1::
	.incbin "assets/gAreaMetatiles_HyruleTown_1.bin.lz"
gAreaMetatiles_HyruleTown_2::
	.incbin "assets/gAreaMetatiles_HyruleTown_2.bin.lz"
gAreaMetatiles_HyruleTown_3::
	.incbin "assets/gAreaMetatiles_HyruleTown_3.bin.lz"
gAreaTileset_HyruleDigCaves_0_0::
	.incbin "tilesets/gAreaTileset_HyruleDigCaves_0_0.4bpp.lz"
gAreaTileset_HyruleDigCaves_0_1::
	.incbin "tilesets/gAreaTileset_HyruleDigCaves_0_1.4bpp.lz"
gAreaTileset_HyruleDigCaves_0_2::
	.incbin "tilesets/gAreaTileset_HyruleDigCaves_0_2.4bpp.lz"
gAreaTileset_FestivalTown_0_0::
	.incbin "tilesets/gAreaTileset_FestivalTown_0_0.4bpp.lz"
gAreaTileset_FestivalTown_0_1::
	.incbin "tilesets/gAreaTileset_FestivalTown_0_1.4bpp.lz"
gAreaTileset_FestivalTown_0_2::
	.incbin "tilesets/gAreaTileset_FestivalTown_0_2.4bpp.lz"
gAreaRoomMap_HyruleTown_0_0::
	.incbin "assets/gAreaRoomMap_HyruleTown_0_0.bin.lz"
gAreaRoomMap_HyruleTown_0_1::
	.incbin "assets/gAreaRoomMap_HyruleTown_0_1.bin.lz"
unknown_4::
	.incbin "assets/unknown_4.bin"
gAreaRoomMap_FestivalTown_0_0::
	.incbin "assets/gAreaRoomMap_FestivalTown_0_0.bin.lz"
gAreaRoomMap_FestivalTown_0_1::
	.incbin "assets/gAreaRoomMap_FestivalTown_0_1.bin.lz"
gAreaTileset_CrenelDigCave_0_0::
	.incbin "tilesets/gAreaTileset_CrenelDigCave_0_0.4bpp.lz"
gAreaTileset_CrenelDigCave_0_1::
	.incbin "tilesets/gAreaTileset_CrenelDigCave_0_1.4bpp.lz"
gAreaTileset_CrenelDigCave_0_2::
	.incbin "tilesets/gAreaTileset_CrenelDigCave_0_2.4bpp.lz"
gAreaMetatiles_MtCrenel_0::
	.incbin "assets/gAreaMetatiles_MtCrenel_0.bin.lz"
gAreaMetatiles_MtCrenel_1::
	.incbin "assets/gAreaMetatiles_MtCrenel_1.bin.lz"
gAreaMetatiles_MtCrenel_2::
	.incbin "assets/gAreaMetatiles_MtCrenel_2.bin.lz"
gAreaMetatiles_MtCrenel_3::
	.incbin "assets/gAreaMetatiles_MtCrenel_3.bin.lz"
gAreaRoomMap_MtCrenel_0_0::
	.incbin "assets/gAreaRoomMap_MtCrenel_0_0.bin.lz"
gAreaRoomMap_MtCrenel_0_1::
	.incbin "assets/gAreaRoomMap_MtCrenel_0_1.bin.lz"
gAreaRoomMap_MtCrenel_1_0::
	.incbin "assets/gAreaRoomMap_MtCrenel_1_0.bin.lz"
gAreaRoomMap_MtCrenel_1_1::
	.incbin "assets/gAreaRoomMap_MtCrenel_1_1.bin.lz"
unknown_5::
	.incbin "assets/unknown_5.bin"
gAreaRoomMap_MtCrenel_2_0::
	.incbin "assets/gAreaRoomMap_MtCrenel_2_0.bin.lz"
gAreaRoomMap_MtCrenel_2_1::
	.incbin "assets/gAreaRoomMap_MtCrenel_2_1.bin.lz"
gAreaRoomMap_MtCrenel_3_0::
	.incbin "assets/gAreaRoomMap_MtCrenel_3_0.bin.lz"
gAreaRoomMap_MtCrenel_3_1::
	.incbin "assets/gAreaRoomMap_MtCrenel_3_1.bin.lz"
gAreaRoomMap_MtCrenel_4_0::
	.incbin "assets/gAreaRoomMap_MtCrenel_4_0.bin.lz"
gAreaRoomMap_MtCrenel_4_1::
	.incbin "assets/gAreaRoomMap_MtCrenel_4_1.bin.lz"
gAreaTileset_HyruleField_7_0::
	.incbin "tilesets/gAreaTileset_HyruleField_7_0.4bpp.lz"
gAreaTileset_DigCaves1_0_1::
	.incbin "tilesets/gAreaTileset_DigCaves1_0_1.4bpp.lz"
gAreaTileset_HyruleField_7_1::
	.incbin "tilesets/gAreaTileset_HyruleField_7_1.4bpp.lz"
gAreaTileset_HyruleField_6_0::
	.incbin "tilesets/gAreaTileset_HyruleField_6_0.4bpp.lz"
gAreaTileset_HyruleField_2_1::
	.incbin "tilesets/gAreaTileset_HyruleField_2_1.4bpp.lz"
gAreaTileset_HyruleField_6_1::
	.incbin "tilesets/gAreaTileset_HyruleField_6_1.4bpp.lz"
gAreaTileset_HyruleField_5_0::
	.incbin "tilesets/gAreaTileset_HyruleField_5_0.4bpp.lz"
gAreaTileset_HyruleField_1_1::
	.incbin "tilesets/gAreaTileset_HyruleField_1_1.4bpp.lz"
gAreaTileset_HyruleField_5_1::
	.incbin "tilesets/gAreaTileset_HyruleField_5_1.4bpp.lz"
gAreaMetatiles_HyruleField_0::
	.incbin "assets/gAreaMetatiles_HyruleField_0.bin.lz"
gAreaMetatiles_HyruleField_1::
	.incbin "assets/gAreaMetatiles_HyruleField_1.bin.lz"
gAreaMetatiles_HyruleField_2::
	.incbin "assets/gAreaMetatiles_HyruleField_2.bin.lz"
gAreaMetatiles_HyruleField_3::
	.incbin "assets/gAreaMetatiles_HyruleField_3.bin.lz"
gAreaTileset_HyruleField_2_3::
	.incbin "tilesets/gAreaTileset_HyruleField_2_3.bin.lz"
gAreaRoomMap_HyruleField_0_0::
	.incbin "assets/gAreaRoomMap_HyruleField_0_0.bin.lz"
gAreaRoomMap_HyruleField_0_1::
	.incbin "assets/gAreaRoomMap_HyruleField_0_1.bin.lz"
gAreaRoomMap_HyruleField_1_3::
	.incbin "assets/gAreaRoomMap_HyruleField_1_3.bin.lz"
gAreaRoomMap_HyruleField_1_4::
	.incbin "assets/gAreaRoomMap_HyruleField_1_4.bin.lz"
gAreaRoomMap_HyruleField_2_0::
	.incbin "assets/gAreaRoomMap_HyruleField_2_0.bin.lz"
gAreaRoomMap_HyruleField_2_1::
	.incbin "assets/gAreaRoomMap_HyruleField_2_1.bin.lz"
gAreaRoomMap_HyruleField_3_3::
	.incbin "assets/gAreaRoomMap_HyruleField_3_3.bin.lz"
gAreaRoomMap_HyruleField_3_4::
	.incbin "assets/gAreaRoomMap_HyruleField_3_4.bin.lz"
gAreaRoomMap_HyruleField_4_3::
	.incbin "assets/gAreaRoomMap_HyruleField_4_3.bin.lz"
gAreaRoomMap_HyruleField_4_4::
	.incbin "assets/gAreaRoomMap_HyruleField_4_4.bin.lz"
unknown_6::
	.incbin "assets/unknown_6.bin"
gAreaRoomMap_HyruleField_5_3::
	.incbin "assets/gAreaRoomMap_HyruleField_5_3.bin.lz"
gAreaRoomMap_HyruleField_5_4::
	.incbin "assets/gAreaRoomMap_HyruleField_5_4.bin.lz"
unknown_7::
	.incbin "assets/unknown_7.bin"
gAreaRoomMap_HyruleField_6_3::
	.incbin "assets/gAreaRoomMap_HyruleField_6_3.bin.lz"
gAreaRoomMap_HyruleField_6_4::
	.incbin "assets/gAreaRoomMap_HyruleField_6_4.bin.lz"
gAreaRoomMap_HyruleField_7_3::
	.incbin "assets/gAreaRoomMap_HyruleField_7_3.bin.lz"
gAreaRoomMap_HyruleField_7_4::
	.incbin "assets/gAreaRoomMap_HyruleField_7_4.bin.lz"
unknown_8::
	.incbin "assets/unknown_8.bin"
gAreaRoomMap_HyruleField_8_0::
	.incbin "assets/gAreaRoomMap_HyruleField_8_0.bin.lz"
gAreaRoomMap_HyruleField_8_1::
	.incbin "assets/gAreaRoomMap_HyruleField_8_1.bin.lz"
gAreaRoomMap_HyruleField_9_0::
	.incbin "assets/gAreaRoomMap_HyruleField_9_0.bin.lz"
gAreaRoomMap_HyruleField_9_1::
	.incbin "assets/gAreaRoomMap_HyruleField_9_1.bin.lz"
gAreaTileset_CastleGarden_0_0::
	.incbin "tilesets/gAreaTileset_CastleGarden_0_0.4bpp.lz"
gAreaTileset_CastleGarden_0_1::
	.incbin "tilesets/gAreaTileset_CastleGarden_0_1.4bpp.lz"
gAreaTileset_CastleGarden_0_2::
	.incbin "tilesets/gAreaTileset_CastleGarden_0_2.4bpp.lz"
gAreaMetatiles_CastleGarden_0::
	.incbin "assets/gAreaMetatiles_CastleGarden_0.bin.lz"
gAreaMetatiles_CastleGarden_1::
	.incbin "assets/gAreaMetatiles_CastleGarden_1.bin.lz"
gAreaMetatiles_CastleGarden_2::
	.incbin "assets/gAreaMetatiles_CastleGarden_2.bin.lz"
gAreaMetatiles_CastleGarden_3::
	.incbin "assets/gAreaMetatiles_CastleGarden_3.bin.lz"
gAreaRoomMap_CastleGarden_0_0::
	.incbin "assets/gAreaRoomMap_CastleGarden_0_0.bin.lz"
gAreaRoomMap_CastleGarden_0_1::
	.incbin "assets/gAreaRoomMap_CastleGarden_0_1.bin.lz"
gAreaTileset_CloudTops_0_0::
	.incbin "tilesets/gAreaTileset_CloudTops_0_0.4bpp.lz"
gAreaTileset_CloudTops_0_1::
	.incbin "tilesets/gAreaTileset_CloudTops_0_1.4bpp.lz"
gAreaTileset_CloudTops_0_2::
	.incbin "tilesets/gAreaTileset_CloudTops_0_2.4bpp.lz"
gAreaMetatiles_CloudTops_0::
	.incbin "assets/gAreaMetatiles_CloudTops_0.bin.lz"
gAreaMetatiles_CloudTops_1::
	.incbin "assets/gAreaMetatiles_CloudTops_1.bin.lz"
gAreaMetatiles_CloudTops_2::
	.incbin "assets/gAreaMetatiles_CloudTops_2.bin.lz"
gAreaMetatiles_CloudTops_3::
	.incbin "assets/gAreaMetatiles_CloudTops_3.bin.lz"
gAreaRoomMap_CloudTops_0_0::
	.incbin "assets/gAreaRoomMap_CloudTops_0_0.bin.lz"
gAreaRoomMap_CloudTops_0_1::
	.incbin "assets/gAreaRoomMap_CloudTops_0_1.bin.lz"
gAreaRoomMap_CloudTops_1_0::
	.incbin "assets/gAreaRoomMap_CloudTops_1_0.bin.lz"
gAreaRoomMap_CloudTops_1_1::
	.incbin "assets/gAreaRoomMap_CloudTops_1_1.bin.lz"
gAreaRoomMap_CloudTops_2_0::
	.incbin "assets/gAreaRoomMap_CloudTops_2_0.bin.lz"
gAreaRoomMap_CloudTops_2_1::
	.incbin "assets/gAreaRoomMap_CloudTops_2_1.bin.lz"
gAreaTileset_CloudTops_0_3::
	.incbin "tilesets/gAreaTileset_CloudTops_0_3.bin.lz"
gAreaTileset_RoyalValley_0_0::
	.incbin "tilesets/gAreaTileset_RoyalValley_0_0.4bpp.lz"
gAreaTileset_RoyalValley_0_1::
	.incbin "tilesets/gAreaTileset_RoyalValley_0_1.4bpp.lz"
gAreaTileset_RoyalValley_0_2::
	.incbin "tilesets/gAreaTileset_RoyalValley_0_2.4bpp.lz"
gAreaMetatiles_RoyalValley_0::
	.incbin "assets/gAreaMetatiles_RoyalValley_0.bin.lz"
gAreaMetatiles_RoyalValley_1::
	.incbin "assets/gAreaMetatiles_RoyalValley_1.bin.lz"
gAreaMetatiles_RoyalValley_2::
	.incbin "assets/gAreaMetatiles_RoyalValley_2.bin.lz"
gAreaMetatiles_RoyalValley_3::
	.incbin "assets/gAreaMetatiles_RoyalValley_3.bin.lz"
gAreaRoomMap_RoyalValley_0_0::
	.incbin "assets/gAreaRoomMap_RoyalValley_0_0.bin.lz"
gAreaRoomMap_RoyalValley_0_1::
	.incbin "assets/gAreaRoomMap_RoyalValley_0_1.bin.lz"
unknown_9::
	.incbin "assets/unknown_9.bin"
gAreaRoomMap_RoyalValley_1_0::
	.incbin "assets/gAreaRoomMap_RoyalValley_1_0.bin.lz"
gAreaRoomMap_RoyalValley_1_1::
	.incbin "assets/gAreaRoomMap_RoyalValley_1_1.bin.lz"
gAreaTileset_VeilFallsTop_0_0::
	.incbin "tilesets/gAreaTileset_VeilFallsTop_0_0.4bpp.lz"
gAreaTileset_VeilFallsTop_0_1::
	.incbin "tilesets/gAreaTileset_VeilFallsTop_0_1.4bpp.lz"
gAreaTileset_VeilFallsDigCave_0_2::
	.incbin "tilesets/gAreaTileset_VeilFallsDigCave_0_2.4bpp.lz"
gAreaRoomMap_VeilFalls_0_0::
	.incbin "assets/gAreaRoomMap_VeilFalls_0_0.bin.lz"
gAreaRoomMap_VeilFalls_0_1::
	.incbin "assets/gAreaRoomMap_VeilFalls_0_1.bin.lz"
unknown_10::
	.incbin "assets/unknown_10.bin"
gAreaTileset_VeilFallsTop_0_2::
	.incbin "tilesets/gAreaTileset_VeilFallsTop_0_2.4bpp.lz"
gAreaRoomMap_VeilFallsTop_0_0::
	.incbin "assets/gAreaRoomMap_VeilFallsTop_0_0.bin.lz"
gAreaRoomMap_VeilFallsTop_0_1::
	.incbin "assets/gAreaRoomMap_VeilFallsTop_0_1.bin.lz"
gAreaTileset_Beanstalks_0_0::
	.incbin "tilesets/gAreaTileset_Beanstalks_0_0.4bpp.lz"
gAreaTileset_Beanstalks_0_1::
	.incbin "tilesets/gAreaTileset_Beanstalks_0_1.4bpp.lz"
gAreaTileset_Beanstalks_0_2::
	.incbin "tilesets/gAreaTileset_Beanstalks_0_2.4bpp.lz"
gAreaMetatiles_Beanstalks_0::
	.incbin "assets/gAreaMetatiles_Beanstalks_0.bin.lz"
gAreaMetatiles_Beanstalks_1::
	.incbin "assets/gAreaMetatiles_Beanstalks_1.bin.lz"
gAreaTileset_Beanstalks_0_3::
	.incbin "tilesets/gAreaTileset_Beanstalks_0_3.bin.lz"
gAreaRoomMap_Beanstalks_5_1::
	.incbin "assets/gAreaRoomMap_Beanstalks_5_1.bin.lz"
gAreaRoomMap_Beanstalks_0_0::
	.incbin "assets/gAreaRoomMap_Beanstalks_0_0.bin"
gAreaRoomMap_Beanstalks_1_0::
	.incbin "assets/gAreaRoomMap_Beanstalks_1_0.bin"
gAreaRoomMap_Beanstalks_2_0::
	.incbin "assets/gAreaRoomMap_Beanstalks_2_0.bin"
gAreaRoomMap_Beanstalks_3_0::
	.incbin "assets/gAreaRoomMap_Beanstalks_3_0.bin"
gAreaRoomMap_Beanstalks_4_0::
	.incbin "assets/gAreaRoomMap_Beanstalks_4_0.bin"
unknown_11::
	.incbin "assets/unknown_11.bin"
gAreaRoomMap_Empty_0_0::
	.incbin "assets/gAreaRoomMap_Empty_0_0.bin.lz"
gAreaRoomMap_Empty_0_1::
	.incbin "assets/gAreaRoomMap_Empty_0_1.bin.lz"
gAreaTileset_45_0_0::
	.incbin "tilesets/gAreaTileset_45_0_0.4bpp.lz"
gAreaTileset_45_0_1::
	.incbin "tilesets/gAreaTileset_45_0_1.4bpp.lz"
gAreaTileset_45_0_2::
	.incbin "tilesets/gAreaTileset_45_0_2.4bpp.lz"
gAreaMetatiles_CrenelCaves_0::
	.incbin "assets/gAreaMetatiles_CrenelCaves_0.bin.lz"
gAreaMetatiles_CrenelCaves_1::
	.incbin "assets/gAreaMetatiles_CrenelCaves_1.bin.lz"
gAreaMetatiles_CrenelCaves_2::
	.incbin "assets/gAreaMetatiles_CrenelCaves_2.bin.lz"
gAreaMetatiles_CrenelCaves_3::
	.incbin "assets/gAreaMetatiles_CrenelCaves_3.bin.lz"
gAreaRoomMap_CrenelCaves_0_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_0_0.bin.lz"
gAreaRoomMap_CrenelCaves_0_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_0_1.bin.lz"
gAreaRoomMap_CrenelCaves_1_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_1_0.bin.lz"
gAreaRoomMap_CrenelCaves_1_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_1_1.bin.lz"
gAreaRoomMap_CrenelCaves_2_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_2_0.bin.lz"
gAreaRoomMap_CrenelCaves_2_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_2_1.bin.lz"
gAreaRoomMap_CrenelCaves_3_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_3_0.bin.lz"
gAreaRoomMap_CrenelCaves_3_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_3_1.bin.lz"
gAreaRoomMap_CrenelCaves_4_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_4_0.bin.lz"
gAreaRoomMap_CrenelCaves_4_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_4_1.bin.lz"
gAreaRoomMap_CrenelCaves_5_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_5_0.bin.lz"
gAreaRoomMap_CrenelCaves_5_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_5_1.bin.lz"
gAreaRoomMap_CrenelCaves_6_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_6_0.bin.lz"
gAreaRoomMap_CrenelCaves_6_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_6_1.bin.lz"
gAreaRoomMap_CrenelCaves_7_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_7_0.bin.lz"
gAreaRoomMap_CrenelCaves_7_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_7_1.bin.lz"
gAreaRoomMap_CrenelCaves_8_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_8_0.bin.lz"
gAreaRoomMap_CrenelCaves_8_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_8_1.bin.lz"
gAreaRoomMap_CrenelCaves_9_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_9_0.bin"
gAreaRoomMap_CrenelCaves_9_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_9_1.bin.lz"
gAreaRoomMap_CrenelCaves_10_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_10_0.bin.lz"
gAreaRoomMap_CrenelCaves_10_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_10_1.bin.lz"
gAreaRoomMap_CrenelCaves_11_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_11_0.bin.lz"
gAreaRoomMap_CrenelCaves_11_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_11_1.bin.lz"
gAreaRoomMap_CrenelCaves_12_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_12_0.bin.lz"
gAreaRoomMap_CrenelCaves_12_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_12_1.bin.lz"
gAreaRoomMap_CrenelCaves_13_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_13_0.bin.lz"
gAreaRoomMap_CrenelCaves_13_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_13_1.bin.lz"
gAreaRoomMap_CrenelCaves_14_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_14_0.bin.lz"
gAreaRoomMap_CrenelCaves_14_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_14_1.bin.lz"
gAreaRoomMap_CrenelCaves_15_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_15_0.bin.lz"
gAreaRoomMap_CrenelCaves_15_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_15_1.bin.lz"
gAreaRoomMap_CrenelCaves_16_0::
	.incbin "assets/gAreaRoomMap_CrenelCaves_16_0.bin.lz"
gAreaRoomMap_CrenelCaves_16_1::
	.incbin "assets/gAreaRoomMap_CrenelCaves_16_1.bin.lz"
gAreaTileset_GreatFairies_2_0::
	.incbin "tilesets/gAreaTileset_GreatFairies_2_0.4bpp.lz"
gAreaTileset_GreatFairies_2_1::
	.incbin "tilesets/gAreaTileset_GreatFairies_2_1.4bpp.lz"
gAreaTileset_GreatFairies_2_2::
	.incbin "tilesets/gAreaTileset_GreatFairies_2_2.4bpp.lz"
gAreaMetatiles_GreatFairies_0::
	.incbin "assets/gAreaMetatiles_GreatFairies_0.bin.lz"
gAreaMetatiles_GreatFairies_1::
	.incbin "assets/gAreaMetatiles_GreatFairies_1.bin.lz"
gAreaMetatiles_GreatFairies_2::
	.incbin "assets/gAreaMetatiles_GreatFairies_2.bin.lz"
gAreaMetatiles_GreatFairies_3::
	.incbin "assets/gAreaMetatiles_GreatFairies_3.bin.lz"
gAreaRoomMap_GreatFairies_0_0::
	.incbin "assets/gAreaRoomMap_GreatFairies_0_0.bin.lz"
gAreaRoomMap_GreatFairies_0_1::
	.incbin "assets/gAreaRoomMap_GreatFairies_0_1.bin.lz"
gAreaRoomMap_GreatFairies_1_0::
	.incbin "assets/gAreaRoomMap_GreatFairies_1_0.bin.lz"
gAreaRoomMap_GreatFairies_1_1::
	.incbin "assets/gAreaRoomMap_GreatFairies_1_1.bin.lz"
gAreaRoomMap_GreatFairies_2_0::
	.incbin "assets/gAreaRoomMap_GreatFairies_2_0.bin.lz"
gAreaRoomMap_GreatFairies_2_1::
	.incbin "assets/gAreaRoomMap_GreatFairies_2_1.bin.lz"
gAreaRoomMap_CastorCaves_0_0::
	.incbin "assets/gAreaRoomMap_CastorCaves_0_0.bin.lz"
gAreaRoomMap_CastorCaves_0_1::
	.incbin "assets/gAreaRoomMap_CastorCaves_0_1.bin.lz"
gAreaRoomMap_CastorCaves_1_0::
	.incbin "assets/gAreaRoomMap_CastorCaves_1_0.bin.lz"
gAreaRoomMap_CastorCaves_1_1::
	.incbin "assets/gAreaRoomMap_CastorCaves_1_1.bin.lz"
gAreaRoomMap_CastorCaves_2_0::
	.incbin "assets/gAreaRoomMap_CastorCaves_2_0.bin.lz"
gAreaRoomMap_CastorCaves_2_1::
	.incbin "assets/gAreaRoomMap_CastorCaves_2_1.bin.lz"
gAreaRoomMap_CastorCaves_3_0::
	.incbin "assets/gAreaRoomMap_CastorCaves_3_0.bin.lz"
gAreaRoomMap_CastorCaves_3_1::
	.incbin "assets/gAreaRoomMap_CastorCaves_3_1.bin.lz"
gAreaRoomMap_CastorCaves_4_0::
	.incbin "assets/gAreaRoomMap_CastorCaves_4_0.bin.lz"
gAreaRoomMap_CastorCaves_4_1::
	.incbin "assets/gAreaRoomMap_CastorCaves_4_1.bin.lz"
gAreaRoomMap_CastorDarknut_0_0::
	.incbin "assets/gAreaRoomMap_CastorDarknut_0_0.bin.lz"
gAreaRoomMap_CastorDarknut_0_1::
	.incbin "assets/gAreaRoomMap_CastorDarknut_0_1.bin.lz"
gAreaRoomMap_CastorDarknut_1_0::
	.incbin "assets/gAreaRoomMap_CastorDarknut_1_0.bin.lz"
gAreaRoomMap_CastorDarknut_1_1::
	.incbin "assets/gAreaRoomMap_CastorDarknut_1_1.bin.lz"
gAreaTileset_ArmosInteriors_0_0::
	.incbin "tilesets/gAreaTileset_ArmosInteriors_0_0.4bpp.lz"
gAreaTileset_ArmosInteriors_0_1::
	.incbin "tilesets/gAreaTileset_ArmosInteriors_0_1.4bpp.lz"
gAreaTileset_ArmosInteriors_0_2::
	.incbin "tilesets/gAreaTileset_ArmosInteriors_0_2.4bpp.lz"
gAreaMetatiles_ArmosInteriors_0::
	.incbin "assets/gAreaMetatiles_ArmosInteriors_0.bin.lz"
gAreaMetatiles_ArmosInteriors_1::
	.incbin "assets/gAreaMetatiles_ArmosInteriors_1.bin.lz"
gAreaMetatiles_ArmosInteriors_2::
	.incbin "assets/gAreaMetatiles_ArmosInteriors_2.bin.lz"
gAreaMetatiles_ArmosInteriors_3::
	.incbin "assets/gAreaMetatiles_ArmosInteriors_3.bin.lz"
gAreaRoomMap_ArmosInteriors_0_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_0_0.bin"
gAreaRoomMap_ArmosInteriors_0_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_0_1.bin.lz"
gAreaRoomMap_ArmosInteriors_1_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_1_0.bin"
gAreaRoomMap_ArmosInteriors_1_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_1_1.bin.lz"
gAreaRoomMap_ArmosInteriors_2_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_2_0.bin"
gAreaRoomMap_ArmosInteriors_2_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_2_1.bin.lz"
gAreaRoomMap_ArmosInteriors_3_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_3_0.bin"
gAreaRoomMap_ArmosInteriors_3_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_3_1.bin.lz"
gAreaRoomMap_ArmosInteriors_4_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_4_0.bin"
gAreaRoomMap_ArmosInteriors_4_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_4_1.bin.lz"
gAreaRoomMap_ArmosInteriors_5_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_5_0.bin"
gAreaRoomMap_ArmosInteriors_5_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_5_1.bin.lz"
gAreaRoomMap_ArmosInteriors_6_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_6_0.bin"
gAreaRoomMap_ArmosInteriors_6_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_6_1.bin.lz"
gAreaRoomMap_ArmosInteriors_7_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_7_0.bin"
gAreaRoomMap_ArmosInteriors_7_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_7_1.bin.lz"
gAreaRoomMap_ArmosInteriors_8_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_8_0.bin"
gAreaRoomMap_ArmosInteriors_8_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_8_1.bin.lz"
gAreaRoomMap_ArmosInteriors_9_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_9_0.bin"
gAreaRoomMap_ArmosInteriors_9_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_9_1.bin.lz"
gAreaRoomMap_ArmosInteriors_10_0::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_10_0.bin"
gAreaRoomMap_ArmosInteriors_10_1::
	.incbin "assets/gAreaRoomMap_ArmosInteriors_10_1.bin.lz"
gAreaTileset_GoronCave_0_0::
	.incbin "tilesets/gAreaTileset_GoronCave_0_0.4bpp.lz"
gAreaTileset_GoronCave_0_1::
	.incbin "tilesets/gAreaTileset_GoronCave_0_1.4bpp.lz"
gAreaTileset_GoronCave_0_2::
	.incbin "tilesets/gAreaTileset_GoronCave_0_2.4bpp.lz"
gAreaMetatiles_GoronCave_0::
	.incbin "assets/gAreaMetatiles_GoronCave_0.bin.lz"
gAreaMetatiles_GoronCave_1::
	.incbin "assets/gAreaMetatiles_GoronCave_1.bin.lz"
gAreaMetatiles_GoronCave_2::
	.incbin "assets/gAreaMetatiles_GoronCave_2.bin.lz"
gAreaMetatiles_GoronCave_3::
	.incbin "assets/gAreaMetatiles_GoronCave_3.bin.lz"
gAreaRoomMap_GoronCave_0_0::
	.incbin "assets/gAreaRoomMap_GoronCave_0_0.bin.lz"
gAreaRoomMap_GoronCave_0_1::
	.incbin "assets/gAreaRoomMap_GoronCave_0_1.bin.lz"
gAreaRoomMap_GoronCave_1_0::
	.incbin "assets/gAreaRoomMap_GoronCave_1_0.bin.lz"
gAreaRoomMap_GoronCave_1_1::
	.incbin "assets/gAreaRoomMap_GoronCave_1_1.bin.lz"
gAreaRoomMap_Caves_0_0::
	.incbin "assets/gAreaRoomMap_Caves_0_0.bin.lz"
gAreaRoomMap_Caves_0_1::
	.incbin "assets/gAreaRoomMap_Caves_0_1.bin.lz"
gAreaRoomMap_Caves_1_0::
	.incbin "assets/gAreaRoomMap_Caves_1_0.bin.lz"
gAreaRoomMap_Caves_1_1::
	.incbin "assets/gAreaRoomMap_Caves_1_1.bin.lz"
gAreaRoomMap_Caves_2_0::
	.incbin "assets/gAreaRoomMap_Caves_2_0.bin.lz"
gAreaRoomMap_Caves_2_1::
	.incbin "assets/gAreaRoomMap_Caves_2_1.bin.lz"
gAreaRoomMap_Caves_3_0::
	.incbin "assets/gAreaRoomMap_Caves_3_0.bin.lz"
gAreaRoomMap_Caves_3_1::
	.incbin "assets/gAreaRoomMap_Caves_3_1.bin.lz"
gAreaRoomMap_Caves_4_0::
	.incbin "assets/gAreaRoomMap_Caves_4_0.bin.lz"
gAreaRoomMap_Caves_4_1::
	.incbin "assets/gAreaRoomMap_Caves_4_1.bin.lz"
gAreaRoomMap_Caves_5_0::
	.incbin "assets/gAreaRoomMap_Caves_5_0.bin.lz"
gAreaRoomMap_Caves_5_1::
	.incbin "assets/gAreaRoomMap_Caves_5_1.bin.lz"
gAreaRoomMap_Caves_6_0::
	.incbin "assets/gAreaRoomMap_Caves_6_0.bin.lz"
gAreaRoomMap_Caves_6_1::
	.incbin "assets/gAreaRoomMap_Caves_6_1.bin.lz"
gAreaRoomMap_Caves_7_0::
	.incbin "assets/gAreaRoomMap_Caves_7_0.bin.lz"
gAreaRoomMap_Caves_7_1::
	.incbin "assets/gAreaRoomMap_Caves_7_1.bin.lz"
gAreaRoomMap_Caves_8_0::
	.incbin "assets/gAreaRoomMap_Caves_8_0.bin.lz"
gAreaRoomMap_Caves_8_1::
	.incbin "assets/gAreaRoomMap_Caves_8_1.bin.lz"
gAreaRoomMap_Caves_9_0::
	.incbin "assets/gAreaRoomMap_Caves_9_0.bin.lz"
gAreaRoomMap_Caves_9_1::
	.incbin "assets/gAreaRoomMap_Caves_9_1.bin.lz"
gAreaRoomMap_Caves_10_0::
	.incbin "assets/gAreaRoomMap_Caves_10_0.bin.lz"
gAreaRoomMap_Caves_10_1::
	.incbin "assets/gAreaRoomMap_Caves_10_1.bin.lz"
gAreaRoomMap_Caves_11_0::
	.incbin "assets/gAreaRoomMap_Caves_11_0.bin.lz"
gAreaRoomMap_Caves_11_1::
	.incbin "assets/gAreaRoomMap_Caves_11_1.bin.lz"
gAreaRoomMap_Caves_12_0::
	.incbin "assets/gAreaRoomMap_Caves_12_0.bin.lz"
gAreaRoomMap_Caves_12_1::
	.incbin "assets/gAreaRoomMap_Caves_12_1.bin.lz"
gAreaRoomMap_Caves_13_0::
	.incbin "assets/gAreaRoomMap_Caves_13_0.bin.lz"
gAreaRoomMap_Caves_13_1::
	.incbin "assets/gAreaRoomMap_Caves_13_1.bin.lz"
gAreaRoomMap_Caves_14_0::
	.incbin "assets/gAreaRoomMap_Caves_14_0.bin.lz"
gAreaRoomMap_Caves_14_1::
	.incbin "assets/gAreaRoomMap_Caves_14_1.bin.lz"
gAreaRoomMap_Caves_15_0::
	.incbin "assets/gAreaRoomMap_Caves_15_0.bin.lz"
gAreaRoomMap_Caves_15_1::
	.incbin "assets/gAreaRoomMap_Caves_15_1.bin.lz"
gAreaRoomMap_Caves_16_0::
	.incbin "assets/gAreaRoomMap_Caves_16_0.bin.lz"
gAreaRoomMap_Caves_16_1::
	.incbin "assets/gAreaRoomMap_Caves_16_1.bin.lz"
gAreaRoomMap_Caves_17_0::
	.incbin "assets/gAreaRoomMap_Caves_17_0.bin.lz"
gAreaRoomMap_Caves_17_1::
	.incbin "assets/gAreaRoomMap_Caves_17_1.bin.lz"
gAreaRoomMap_Caves_18_0::
	.incbin "assets/gAreaRoomMap_Caves_18_0.bin.lz"
gAreaRoomMap_Caves_18_1::
	.incbin "assets/gAreaRoomMap_Caves_18_1.bin.lz"
gAreaRoomMap_Caves_19_0::
	.incbin "assets/gAreaRoomMap_Caves_19_0.bin.lz"
gAreaRoomMap_Caves_19_1::
	.incbin "assets/gAreaRoomMap_Caves_19_1.bin.lz"
gAreaRoomMap_Caves_20_0::
	.incbin "assets/gAreaRoomMap_Caves_20_0.bin.lz"
gAreaRoomMap_Caves_20_1::
	.incbin "assets/gAreaRoomMap_Caves_20_1.bin.lz"
gAreaRoomMap_Caves_21_0::
	.incbin "assets/gAreaRoomMap_Caves_21_0.bin.lz"
gAreaRoomMap_Caves_21_1::
	.incbin "assets/gAreaRoomMap_Caves_21_1.bin.lz"
gAreaRoomMap_Caves_22_0::
	.incbin "assets/gAreaRoomMap_Caves_22_0.bin.lz"
gAreaRoomMap_Caves_22_1::
	.incbin "assets/gAreaRoomMap_Caves_22_1.bin.lz"
gAreaRoomMap_Caves_23_0::
	.incbin "assets/gAreaRoomMap_Caves_23_0.bin.lz"
gAreaRoomMap_Caves_23_1::
	.incbin "assets/gAreaRoomMap_Caves_23_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_0_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_0_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_0_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_0_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_1_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_1_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_1_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_1_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_2_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_2_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_2_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_2_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_3_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_3_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_3_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_3_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_4_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_4_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_4_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_4_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_5_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_5_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_5_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_5_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_6_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_6_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_6_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_6_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_7_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_7_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_7_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_7_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_8_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_8_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_8_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_8_1.bin.lz"
gAreaRoomMap_VeilFallsCaves_9_0::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_9_0.bin.lz"
gAreaRoomMap_VeilFallsCaves_9_1::
	.incbin "assets/gAreaRoomMap_VeilFallsCaves_9_1.bin.lz"
gAreaRoomMap_RoyalValleyGraves_0_0::
	.incbin "assets/gAreaRoomMap_RoyalValleyGraves_0_0.bin.lz"
gAreaRoomMap_RoyalValleyGraves_0_1::
	.incbin "assets/gAreaRoomMap_RoyalValleyGraves_0_1.bin.lz"
gAreaRoomMap_RoyalValleyGraves_1_0::
	.incbin "assets/gAreaRoomMap_RoyalValleyGraves_1_0.bin.lz"
gAreaRoomMap_RoyalValleyGraves_1_1::
	.incbin "assets/gAreaRoomMap_RoyalValleyGraves_1_1.bin.lz"
gAreaTileset_MinishCaves_0_0::
	.incbin "tilesets/gAreaTileset_MinishCaves_0_0.4bpp.lz"
gAreaTileset_MinishCaves_0_1::
	.incbin "tilesets/gAreaTileset_MinishCaves_0_1.4bpp.lz"
gAreaTileset_MinishCaves_0_2::
	.incbin "tilesets/gAreaTileset_MinishCaves_0_2.4bpp.lz"
gAreaMetatiles_MinishCaves_0::
	.incbin "assets/gAreaMetatiles_MinishCaves_0.bin.lz"
gAreaMetatiles_MinishCaves_1::
	.incbin "assets/gAreaMetatiles_MinishCaves_1.bin.lz"
gAreaMetatiles_MinishCaves_2::
	.incbin "assets/gAreaMetatiles_MinishCaves_2.bin.lz"
gAreaMetatiles_MinishCaves_3::
	.incbin "assets/gAreaMetatiles_MinishCaves_3.bin.lz"
gAreaTileset_37_0_0::
	.incbin "tilesets/gAreaTileset_37_0_0.4bpp.lz"
gAreaTileset_37_0_1::
	.incbin "tilesets/gAreaTileset_37_0_1.4bpp.lz"
gAreaTileset_37_0_2::
	.incbin "tilesets/gAreaTileset_37_0_2.4bpp.lz"
gAreaMetatiles_CastleGardenMinishHoles_0::
	.incbin "assets/gAreaMetatiles_CastleGardenMinishHoles_0.bin.lz"
gAreaMetatiles_CastleGardenMinishHoles_1::
	.incbin "assets/gAreaMetatiles_CastleGardenMinishHoles_1.bin.lz"
gAreaMetatiles_CastleGardenMinishHoles_2::
	.incbin "assets/gAreaMetatiles_CastleGardenMinishHoles_2.bin.lz"
gAreaMetatiles_CastleGardenMinishHoles_3::
	.incbin "assets/gAreaMetatiles_CastleGardenMinishHoles_3.bin.lz"
gAreaRoomMap_MinishCaves_0_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_0_0.bin.lz"
gAreaRoomMap_MinishCaves_0_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_0_1.bin.lz"
gAreaRoomMap_MinishCaves_1_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_1_0.bin.lz"
gAreaRoomMap_MinishCaves_1_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_1_1.bin.lz"
gAreaRoomMap_MinishCaves_2_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_2_0.bin.lz"
gAreaRoomMap_MinishCaves_2_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_2_1.bin.lz"
gAreaRoomMap_MinishCaves_3_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_3_0.bin.lz"
gAreaRoomMap_MinishCaves_3_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_3_1.bin.lz"
gAreaRoomMap_MinishCaves_4_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_4_0.bin.lz"
gAreaRoomMap_MinishCaves_4_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_4_1.bin.lz"
gAreaRoomMap_MinishCaves_5_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_5_0.bin.lz"
gAreaRoomMap_MinishCaves_5_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_5_1.bin.lz"
gAreaRoomMap_MinishCaves_6_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_6_0.bin.lz"
gAreaRoomMap_MinishCaves_6_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_6_1.bin.lz"
gAreaRoomMap_MinishCaves_7_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_7_0.bin.lz"
gAreaRoomMap_MinishCaves_7_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_7_1.bin.lz"
gAreaRoomMap_MinishCaves_8_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_8_0.bin.lz"
gAreaRoomMap_MinishCaves_8_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_8_1.bin.lz"
gAreaRoomMap_MinishCaves_9_0::
	.incbin "assets/gAreaRoomMap_MinishCaves_9_0.bin.lz"
gAreaRoomMap_MinishCaves_9_1::
	.incbin "assets/gAreaRoomMap_MinishCaves_9_1.bin.lz"
gAreaRoomMap_CastleGardenMinishHoles_0_0::
	.incbin "assets/gAreaRoomMap_CastleGardenMinishHoles_0_0.bin.lz"
gAreaRoomMap_CastleGardenMinishHoles_0_1::
	.incbin "assets/gAreaRoomMap_CastleGardenMinishHoles_0_1.bin.lz"
gAreaRoomMap_CastleGardenMinishHoles_1_0::
	.incbin "assets/gAreaRoomMap_CastleGardenMinishHoles_1_0.bin.lz"
gAreaRoomMap_CastleGardenMinishHoles_1_1::
	.incbin "assets/gAreaRoomMap_CastleGardenMinishHoles_1_1.bin.lz"
gAreaRoomMap_37_0_0::
	.incbin "assets/gAreaRoomMap_37_0_0.bin.lz"
gAreaRoomMap_37_0_1::
	.incbin "assets/gAreaRoomMap_37_0_1.bin.lz"
gAreaRoomMap_37_1_0::
	.incbin "assets/gAreaRoomMap_37_1_0.bin.lz"
gAreaRoomMap_37_1_1::
	.incbin "assets/gAreaRoomMap_37_1_1.bin.lz"
gAreaTileset_LakeWoodsCave_0_3::
	.incbin "tilesets/gAreaTileset_LakeWoodsCave_0_3.4bpp.lz"
gAreaTileset_LakeWoodsCave_0_4::
	.incbin "tilesets/gAreaTileset_LakeWoodsCave_0_4.4bpp.lz"
gAreaTileset_HyruleDigCaves_0_3::
	.incbin "tilesets/gAreaTileset_HyruleDigCaves_0_3.4bpp.lz"
gAreaTileset_HyruleDigCaves_0_4::
	.incbin "tilesets/gAreaTileset_HyruleDigCaves_0_4.4bpp.lz"
gAreaTileset_VeilFallsDigCave_0_3::
	.incbin "tilesets/gAreaTileset_VeilFallsDigCave_0_3.4bpp.lz"
gAreaTileset_VeilFallsDigCave_0_4::
	.incbin "tilesets/gAreaTileset_VeilFallsDigCave_0_4.4bpp.lz"
gAreaTileset_DigCaves1_0_3::
	.incbin "tilesets/gAreaTileset_DigCaves1_0_3.4bpp.lz"
gAreaTileset_DigCaves1_0_4::
	.incbin "tilesets/gAreaTileset_DigCaves1_0_4.4bpp.lz"
gAreaTileset_OuterFortressOfWinds_0_3::
	.incbin "tilesets/gAreaTileset_OuterFortressOfWinds_0_3.4bpp.lz"
gAreaTileset_OuterFortressOfWinds_0_4::
	.incbin "tilesets/gAreaTileset_OuterFortressOfWinds_0_4.4bpp.lz"
gAreaTileset_HyliaDigCaves_0_3::
	.incbin "tilesets/gAreaTileset_HyliaDigCaves_0_3.4bpp.lz"
gAreaTileset_HyliaDigCaves_0_4::
	.incbin "tilesets/gAreaTileset_HyliaDigCaves_0_4.4bpp.lz"
gAreaRoomMap_LakeWoodsCave_0_0::
	.incbin "assets/gAreaRoomMap_LakeWoodsCave_0_0.bin.lz"
unknown_12::
	.incbin "assets/unknown_12.bin"
gAreaRoomMap_LakeWoodsCave_0_1::
	.incbin "assets/gAreaRoomMap_LakeWoodsCave_0_1.bin.lz"
gAreaRoomMap_HyliaDigCaves_0_0::
	.incbin "assets/gAreaRoomMap_HyliaDigCaves_0_0.bin.lz"
unknown_13::
	.incbin "assets/unknown_13.bin"
gAreaRoomMap_HyliaDigCaves_0_1::
	.incbin "assets/gAreaRoomMap_HyliaDigCaves_0_1.bin.lz"
gAreaRoomMap_HyliaDigCaves_1_0::
	.incbin "assets/gAreaRoomMap_HyliaDigCaves_1_0.bin.lz"
unknown_14::
	.incbin "assets/unknown_14.bin"
gAreaRoomMap_HyliaDigCaves_1_1::
	.incbin "assets/gAreaRoomMap_HyliaDigCaves_1_1.bin.lz"
gAreaRoomMap_CastorWildsDigCave_0_0::
	.incbin "assets/gAreaRoomMap_CastorWildsDigCave_0_0.bin.lz"
unknown_15::
	.incbin "assets/unknown_15.bin"
gAreaRoomMap_CastorWildsDigCave_0_1::
	.incbin "assets/gAreaRoomMap_CastorWildsDigCave_0_1.bin.lz"
gAreaRoomMap_HyruleDigCaves_0_0::
	.incbin "assets/gAreaRoomMap_HyruleDigCaves_0_0.bin.lz"
unknown_16::
	.incbin "assets/unknown_16.bin"
gAreaRoomMap_HyruleDigCaves_0_1::
	.incbin "assets/gAreaRoomMap_HyruleDigCaves_0_1.bin.lz"
gAreaRoomMap_CrenelDigCave_0_0::
	.incbin "assets/gAreaRoomMap_CrenelDigCave_0_0.bin.lz"
unknown_17::
	.incbin "assets/unknown_17.bin"
gAreaRoomMap_CrenelDigCave_0_1::
	.incbin "assets/gAreaRoomMap_CrenelDigCave_0_1.bin.lz"
gAreaRoomMap_DigCaves_0_0::
	.incbin "assets/gAreaRoomMap_DigCaves_0_0.bin.lz"
unknown_18::
	.incbin "assets/unknown_18.bin"
gAreaRoomMap_DigCaves_0_1::
	.incbin "assets/gAreaRoomMap_DigCaves_0_1.bin.lz"
gAreaRoomMap_DigCaves_1_0::
	.incbin "assets/gAreaRoomMap_DigCaves_1_0.bin.lz"
unknown_19::
	.incbin "assets/unknown_19.bin"
gAreaRoomMap_DigCaves_1_1::
	.incbin "assets/gAreaRoomMap_DigCaves_1_1.bin.lz"
gAreaRoomMap_VeilFallsDigCave_0_0::
	.incbin "assets/gAreaRoomMap_VeilFallsDigCave_0_0.bin.lz"
unknown_20::
	.incbin "assets/unknown_20.bin"
gAreaRoomMap_VeilFallsDigCave_0_1::
	.incbin "assets/gAreaRoomMap_VeilFallsDigCave_0_1.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_0_0::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_0_0.bin.lz"
unknown_21::
	.incbin "assets/unknown_21.bin"
gAreaRoomMap_OuterFortressOfWinds_0_1::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_0_1.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_1_0::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_1_0.bin.lz"
unknown_22::
	.incbin "assets/unknown_22.bin"
gAreaRoomMap_OuterFortressOfWinds_1_1::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_1_1.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_2_0::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_2_0.bin.lz"
unknown_23::
	.incbin "assets/unknown_23.bin"
gAreaRoomMap_OuterFortressOfWinds_2_1::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_2_1.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_3_0::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_3_0.bin.lz"
unknown_24::
	.incbin "assets/unknown_24.bin"
gAreaRoomMap_OuterFortressOfWinds_3_1::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_3_1.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_4_0::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_4_0.bin.lz"
unknown_25::
	.incbin "assets/unknown_25.bin"
gAreaRoomMap_OuterFortressOfWinds_4_1::
	.incbin "assets/gAreaRoomMap_OuterFortressOfWinds_4_1.bin.lz"
gAreaTileset_MinishVillage_0_0::
	.incbin "tilesets/gAreaTileset_MinishVillage_0_0.4bpp.lz"
gAreaTileset_MinishVillage_0_1::
	.incbin "tilesets/gAreaTileset_MinishVillage_0_1.4bpp.lz"
gAreaTileset_MinishVillage_0_2::
	.incbin "tilesets/gAreaTileset_MinishVillage_0_2.4bpp.lz"
gAreaMetatiles_MinishVillage_0::
	.incbin "assets/gAreaMetatiles_MinishVillage_0.bin.lz"
gAreaMetatiles_MinishVillage_1::
	.incbin "assets/gAreaMetatiles_MinishVillage_1.bin.lz"
gAreaMetatiles_MinishVillage_2::
	.incbin "assets/gAreaMetatiles_MinishVillage_2.bin.lz"
gAreaMetatiles_MinishVillage_3::
	.incbin "assets/gAreaMetatiles_MinishVillage_3.bin.lz"
gAreaTileset_MinishVillage_1_0::
	.incbin "tilesets/gAreaTileset_MinishVillage_1_0.4bpp.lz"
gAreaTileset_MinishVillage_1_1::
	.incbin "tilesets/gAreaTileset_MinishVillage_1_1.4bpp.lz"
gAreaTileset_MinishVillage_1_2::
	.incbin "tilesets/gAreaTileset_MinishVillage_1_2.4bpp.lz"
gAreaRoomMap_MinishVillage_0_0::
	.incbin "assets/gAreaRoomMap_MinishVillage_0_0.bin.lz"
gAreaRoomMap_MinishVillage_0_1::
	.incbin "assets/gAreaRoomMap_MinishVillage_0_1.bin.lz"
gAreaRoomMap_MinishVillage_1_0::
	.incbin "assets/gAreaRoomMap_MinishVillage_1_0.bin.lz"
gAreaRoomMap_MinishVillage_1_1::
	.incbin "assets/gAreaRoomMap_MinishVillage_1_1.bin.lz"
gAreaTileset_MelarisMine_0_0::
	.incbin "tilesets/gAreaTileset_MelarisMine_0_0.4bpp.lz"
gAreaTileset_MelarisMine_0_1::
	.incbin "tilesets/gAreaTileset_MelarisMine_0_1.4bpp.lz"
gAreaTileset_MelarisMine_0_2::
	.incbin "tilesets/gAreaTileset_MelarisMine_0_2.4bpp.lz"
gAreaMetatiles_MelarisMine_0::
	.incbin "assets/gAreaMetatiles_MelarisMine_0.bin.lz"
gAreaMetatiles_MelarisMine_1::
	.incbin "assets/gAreaMetatiles_MelarisMine_1.bin.lz"
gAreaMetatiles_MelarisMine_2::
	.incbin "assets/gAreaMetatiles_MelarisMine_2.bin.lz"
gAreaMetatiles_MelarisMine_3::
	.incbin "assets/gAreaMetatiles_MelarisMine_3.bin.lz"
gAreaRoomMap_MelarisMine_0_0::
	.incbin "assets/gAreaRoomMap_MelarisMine_0_0.bin.lz"
gAreaRoomMap_MelarisMine_0_1::
	.incbin "assets/gAreaRoomMap_MelarisMine_0_1.bin.lz"
gAreaTileset_MinishPaths_2_0::
	.incbin "tilesets/gAreaTileset_MinishPaths_2_0.4bpp.lz"
gAreaTileset_MinishPaths_2_1::
	.incbin "tilesets/gAreaTileset_MinishPaths_2_1.4bpp.lz"
gAreaMetatiles_MnishPaths1_0::
	.incbin "assets/gAreaMetatiles_MnishPaths1_0.bin.lz"
gAreaMetatiles_MnishPaths1_1::
	.incbin "assets/gAreaMetatiles_MnishPaths1_1.bin.lz"
gAreaRoomMap_MinishPaths_0_0::
	.incbin "assets/gAreaRoomMap_MinishPaths_0_0.bin.lz"
gAreaRoomMap_MinishPaths_1_0::
	.incbin "assets/gAreaRoomMap_MinishPaths_1_0.bin.lz"
gAreaRoomMap_MinishPaths_2_0::
	.incbin "assets/gAreaRoomMap_MinishPaths_2_0.bin.lz"
gAreaRoomMap_MinishPaths_3_0::
	.incbin "assets/gAreaRoomMap_MinishPaths_3_0.bin.lz"
gAreaRoomMap_MinishPaths_4_0::
	.incbin "assets/gAreaRoomMap_MinishPaths_4_0.bin.lz"
gAreaTileset_CrenelMinishPaths_0_0::
	.incbin "tilesets/gAreaTileset_CrenelMinishPaths_0_0.4bpp.lz"
gAreaTileset_CrenelMinishPaths_0_1::
	.incbin "tilesets/gAreaTileset_CrenelMinishPaths_0_1.4bpp.lz"
gAreaTileset_CrenelMinishPaths_2_0::
	.incbin "tilesets/gAreaTileset_CrenelMinishPaths_2_0.4bpp.lz"
gAreaTileset_CrenelMinishPaths_2_1::
	.incbin "tilesets/gAreaTileset_CrenelMinishPaths_2_1.4bpp.lz"
gAreaMetatiles_CrenelMinishPaths_0::
	.incbin "assets/gAreaMetatiles_CrenelMinishPaths_0.bin.lz"
gAreaMetatiles_CrenelMinishPaths_1::
	.incbin "assets/gAreaMetatiles_CrenelMinishPaths_1.bin.lz"
gAreaRoomMap_CrenelMinishPaths_0_0::
	.incbin "assets/gAreaRoomMap_CrenelMinishPaths_0_0.bin.lz"
gAreaRoomMap_CrenelMinishPaths_1_0::
	.incbin "assets/gAreaRoomMap_CrenelMinishPaths_1_0.bin.lz"
gAreaRoomMap_CrenelMinishPaths_2_0::
	.incbin "assets/gAreaRoomMap_CrenelMinishPaths_2_0.bin.lz"
gAreaRoomMap_CrenelMinishPaths_3_0::
	.incbin "assets/gAreaRoomMap_CrenelMinishPaths_3_0.bin.lz"
gAreaTileset_EzloCutscene_0_2::
	.incbin "tilesets/gAreaTileset_EzloCutscene_0_2.4bpp.lz"
gAreaMetatiles_EzloCutscene_1::
	.incbin "assets/gAreaMetatiles_EzloCutscene_1.bin.lz"
gAreaMetatiles_EzloCutscene_3::
	.incbin "assets/gAreaMetatiles_EzloCutscene_3.bin.lz"
gAreaTileset_HouseInteriors1_0_0::
	.incbin "tilesets/gAreaTileset_HouseInteriors1_0_0.4bpp.lz"
gAreaTileset_HouseInteriors1_0_1::
	.incbin "tilesets/gAreaTileset_HouseInteriors1_0_1.4bpp.lz"
gAreaMetatiles_HouseInteriors1_0::
	.incbin "assets/gAreaMetatiles_HouseInteriors1_0.bin.lz"
gAreaMetatiles_HouseInteriors1_2::
	.incbin "assets/gAreaMetatiles_HouseInteriors1_2.bin.lz"
gAreaTileset_HouseInteriors2_2_0::
	.incbin "tilesets/gAreaTileset_HouseInteriors2_2_0.4bpp.lz"
gAreaTileset_HouseInteriors2_2_1::
	.incbin "tilesets/gAreaTileset_HouseInteriors2_2_1.4bpp.lz"
gAreaMetatiles_HouseInteriors2_0::
	.incbin "assets/gAreaMetatiles_HouseInteriors2_0.bin.lz"
gAreaMetatiles_HouseInteriors2_2::
	.incbin "assets/gAreaMetatiles_HouseInteriors2_2.bin.lz"
gAreaTileset_HouseInteriors4_0_0::
	.incbin "tilesets/gAreaTileset_HouseInteriors4_0_0.4bpp.lz"
gAreaTileset_HouseInteriors4_0_1::
	.incbin "tilesets/gAreaTileset_HouseInteriors4_0_1.4bpp.lz"
gAreaMetatiles_HouseInteriors4_0::
	.incbin "assets/gAreaMetatiles_HouseInteriors4_0.bin.lz"
gAreaMetatiles_HouseInteriors4_2::
	.incbin "assets/gAreaMetatiles_HouseInteriors4_2.bin.lz"
gAreaTileset_HouseInteriors3_0_0::
	.incbin "tilesets/gAreaTileset_HouseInteriors3_0_0.4bpp.lz"
gAreaTileset_HouseInteriors3_0_1::
	.incbin "tilesets/gAreaTileset_HouseInteriors3_0_1.4bpp.lz"
gAreaMetatiles_HouseInteriors3_0::
	.incbin "assets/gAreaMetatiles_HouseInteriors3_0.bin.lz"
gAreaMetatiles_HouseInteriors3_2::
	.incbin "assets/gAreaMetatiles_HouseInteriors3_2.bin.lz"
gAreaTileset_TreeInteriors_0_0::
	.incbin "tilesets/gAreaTileset_TreeInteriors_0_0.4bpp.lz"
gAreaTileset_TreeInteriors_0_1::
	.incbin "tilesets/gAreaTileset_TreeInteriors_0_1.4bpp.lz"
gAreaMetatiles_TreeInteriors_0::
	.incbin "assets/gAreaMetatiles_TreeInteriors_0.bin.lz"
gAreaMetatiles_TreeInteriors_2::
	.incbin "assets/gAreaMetatiles_TreeInteriors_2.bin.lz"
gAreaTileset_MinishCracks_4_0::
	.incbin "tilesets/gAreaTileset_MinishCracks_4_0.4bpp.lz"
gAreaTileset_MinishCracks_4_1::
	.incbin "tilesets/gAreaTileset_MinishCracks_4_1.4bpp.lz"
gAreaMetatiles_MinishCracks_0::
	.incbin "assets/gAreaMetatiles_MinishCracks_0.bin.lz"
gAreaMetatiles_MinishCracks_2::
	.incbin "assets/gAreaMetatiles_MinishCracks_2.bin.lz"
gAreaTileset_Dojos_5_0::
	.incbin "tilesets/gAreaTileset_Dojos_5_0.4bpp.lz"
gAreaTileset_Dojos_5_1::
	.incbin "tilesets/gAreaTileset_Dojos_5_1.4bpp.lz"
gAreaMetatiles_Dojos_0::
	.incbin "assets/gAreaMetatiles_Dojos_0.bin.lz"
gAreaMetatiles_Dojos_2::
	.incbin "assets/gAreaMetatiles_Dojos_2.bin.lz"
gAreaTileset_MinishRafters_0_0::
	.incbin "tilesets/gAreaTileset_MinishRafters_0_0.4bpp.lz"
gAreaTileset_MinishRafters_0_1::
	.incbin "tilesets/gAreaTileset_MinishRafters_0_1.4bpp.lz"
gAreaMetatiles_MinishRafters_0::
	.incbin "assets/gAreaMetatiles_MinishRafters_0.bin.lz"
gAreaMetatiles_MinishRafters_2::
	.incbin "assets/gAreaMetatiles_MinishRafters_2.bin.lz"
gAreaTileset_WindTribeTower_0_0::
	.incbin "tilesets/gAreaTileset_WindTribeTower_0_0.4bpp.lz"
gAreaTileset_WindTribeTower_0_1::
	.incbin "tilesets/gAreaTileset_WindTribeTower_0_1.4bpp.lz"
gAreaMetatiles_WindTribeTower_0::
	.incbin "assets/gAreaMetatiles_WindTribeTower_0.bin.lz"
gAreaMetatiles_WindTribeTower_2::
	.incbin "assets/gAreaMetatiles_WindTribeTower_2.bin.lz"
gAreaTileset_WindTribeTowerRoof_0_0::
	.incbin "tilesets/gAreaTileset_WindTribeTowerRoof_0_0.4bpp.lz"
gAreaTileset_WindTribeTowerRoof_0_1::
	.incbin "tilesets/gAreaTileset_WindTribeTowerRoof_0_1.4bpp.lz"
gAreaTileset_WindTribeTowerRoof_0_2::
	.incbin "tilesets/gAreaTileset_WindTribeTowerRoof_0_2.4bpp.lz"
gAreaMetatiles_WindTribeTowerRoof_0::
	.incbin "assets/gAreaMetatiles_WindTribeTowerRoof_0.bin.lz"
gAreaMetatiles_WindTribeTowerRoof_1::
	.incbin "assets/gAreaMetatiles_WindTribeTowerRoof_1.bin.lz"
gAreaMetatiles_WindTribeTowerRoof_2::
	.incbin "assets/gAreaMetatiles_WindTribeTowerRoof_2.bin.lz"
gAreaMetatiles_WindTribeTowerRoof_3::
	.incbin "assets/gAreaMetatiles_WindTribeTowerRoof_3.bin.lz"
unknown_26::
	.incbin "assets/unknown_26.bin"
gAreaTileset_EzloCutscene_0_0::
	.incbin "tilesets/gAreaTileset_EzloCutscene_0_0.4bpp.lz"
gAreaTileset_EzloCutscene_0_1::
	.incbin "tilesets/gAreaTileset_EzloCutscene_0_1.4bpp.lz"
gAreaMetatiles_EzloCutscene_0::
	.incbin "assets/gAreaMetatiles_EzloCutscene_0.bin.lz"
gAreaMetatiles_EzloCutscene_2::
	.incbin "assets/gAreaMetatiles_EzloCutscene_2.bin.lz"
unknown_27::
	.incbin "assets/unknown_27.bin"
gAreaRoomMap_HouseInteriors2_0_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_0_0.bin.lz"
gAreaRoomMap_HouseInteriors2_0_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_0_1.bin.lz"
gAreaRoomMap_HouseInteriors2_1_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_1_0.bin.lz"
gAreaRoomMap_HouseInteriors2_1_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_1_1.bin.lz"
gAreaRoomMap_HouseInteriors2_2_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_2_0.bin.lz"
gAreaRoomMap_HouseInteriors2_2_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_2_1.bin.lz"
gAreaRoomMap_HouseInteriors2_3_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_3_0.bin.lz"
gAreaRoomMap_HouseInteriors2_3_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_3_1.bin.lz"
gAreaRoomMap_HouseInteriors2_4_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_4_0.bin.lz"
gAreaRoomMap_HouseInteriors2_4_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_4_1.bin.lz"
gAreaRoomMap_HouseInteriors2_5_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_5_0.bin.lz"
gAreaRoomMap_HouseInteriors2_5_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_5_1.bin.lz"
gAreaRoomMap_HouseInteriors2_6_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_6_0.bin.lz"
gAreaRoomMap_HouseInteriors2_6_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_6_1.bin.lz"
gAreaRoomMap_HouseInteriors2_7_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_7_0.bin.lz"
gAreaRoomMap_HouseInteriors2_7_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_7_1.bin.lz"
gAreaRoomMap_HouseInteriors2_8_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_8_0.bin.lz"
gAreaRoomMap_HouseInteriors2_8_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_8_1.bin.lz"
gAreaRoomMap_HouseInteriors2_9_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_9_0.bin.lz"
gAreaRoomMap_HouseInteriors2_9_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_9_1.bin.lz"
gAreaRoomMap_HouseInteriors2_10_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_10_0.bin.lz"
gAreaRoomMap_HouseInteriors2_10_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_10_1.bin.lz"
gAreaRoomMap_HouseInteriors2_11_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_11_0.bin.lz"
gAreaRoomMap_HouseInteriors2_11_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_11_1.bin.lz"
gAreaRoomMap_HouseInteriors2_12_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_12_0.bin.lz"
gAreaRoomMap_HouseInteriors2_12_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_12_1.bin.lz"
gAreaRoomMap_HouseInteriors2_13_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_13_0.bin.lz"
gAreaRoomMap_HouseInteriors2_13_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_13_1.bin.lz"
gAreaRoomMap_HouseInteriors2_14_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_14_0.bin.lz"
gAreaRoomMap_HouseInteriors2_14_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_14_1.bin.lz"
gAreaRoomMap_HouseInteriors2_15_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_15_0.bin.lz"
gAreaRoomMap_HouseInteriors2_15_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_15_1.bin.lz"
gAreaRoomMap_HouseInteriors2_16_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_16_0.bin.lz"
gAreaRoomMap_HouseInteriors2_16_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_16_1.bin.lz"
gAreaRoomMap_HouseInteriors2_17_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_17_0.bin.lz"
gAreaRoomMap_HouseInteriors2_17_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_17_1.bin.lz"
gAreaRoomMap_HouseInteriors2_18_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_18_0.bin.lz"
gAreaRoomMap_HouseInteriors2_18_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors2_18_1.bin.lz"
gAreaRoomMap_HouseInteriors4_0_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_0_0.bin.lz"
gAreaRoomMap_HouseInteriors4_0_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_0_1.bin.lz"
gAreaRoomMap_HouseInteriors4_1_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_1_0.bin.lz"
gAreaRoomMap_HouseInteriors4_1_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_1_1.bin.lz"
gAreaRoomMap_HouseInteriors4_2_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_2_0.bin.lz"
gAreaRoomMap_HouseInteriors4_2_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_2_1.bin.lz"
gAreaRoomMap_HouseInteriors4_3_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_3_0.bin.lz"
gAreaRoomMap_HouseInteriors4_3_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_3_1.bin.lz"
gAreaRoomMap_HouseInteriors4_4_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_4_0.bin.lz"
gAreaRoomMap_HouseInteriors4_4_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_4_1.bin.lz"
gAreaRoomMap_HouseInteriors4_5_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_5_0.bin.lz"
gAreaRoomMap_HouseInteriors4_5_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors4_5_1.bin.lz"
gAreaRoomMap_HouseInteriors3_0_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_0_0.bin.lz"
gAreaRoomMap_HouseInteriors3_0_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_0_1.bin.lz"
gAreaRoomMap_HouseInteriors3_1_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_1_0.bin.lz"
gAreaRoomMap_HouseInteriors3_1_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_1_1.bin.lz"
gAreaRoomMap_HouseInteriors3_2_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_2_0.bin.lz"
gAreaRoomMap_HouseInteriors3_2_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_2_1.bin.lz"
gAreaRoomMap_HouseInteriors3_3_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_3_0.bin.lz"
gAreaRoomMap_HouseInteriors3_3_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_3_1.bin.lz"
gAreaRoomMap_HouseInteriors3_4_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_4_0.bin.lz"
gAreaRoomMap_HouseInteriors3_4_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_4_1.bin.lz"
gAreaRoomMap_HouseInteriors3_5_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_5_0.bin.lz"
gAreaRoomMap_HouseInteriors3_5_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_5_1.bin.lz"
gAreaRoomMap_HouseInteriors3_6_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_6_0.bin.lz"
gAreaRoomMap_HouseInteriors3_6_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_6_1.bin.lz"
gAreaRoomMap_HouseInteriors3_7_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_7_0.bin.lz"
gAreaRoomMap_HouseInteriors3_7_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_7_1.bin.lz"
gAreaRoomMap_HouseInteriors3_8_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_8_0.bin.lz"
gAreaRoomMap_HouseInteriors3_8_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors3_8_1.bin.lz"
gAreaRoomMap_HouseInteriors1_0_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_0_0.bin.lz"
gAreaRoomMap_HouseInteriors1_0_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_0_1.bin.lz"
gAreaRoomMap_HouseInteriors1_1_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_1_0.bin.lz"
gAreaRoomMap_HouseInteriors1_1_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_1_1.bin.lz"
gAreaRoomMap_HouseInteriors1_2_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_2_0.bin.lz"
gAreaRoomMap_HouseInteriors1_2_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_2_1.bin.lz"
gAreaRoomMap_HouseInteriors1_3_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_3_0.bin.lz"
gAreaRoomMap_HouseInteriors1_3_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_3_1.bin.lz"
gAreaRoomMap_HouseInteriors1_4_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_4_0.bin.lz"
gAreaRoomMap_HouseInteriors1_4_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_4_1.bin.lz"
gAreaRoomMap_HouseInteriors1_5_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_5_0.bin.lz"
gAreaRoomMap_HouseInteriors1_5_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_5_1.bin.lz"
gAreaRoomMap_HouseInteriors1_6_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_6_0.bin.lz"
gAreaRoomMap_HouseInteriors1_6_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_6_1.bin.lz"
gAreaRoomMap_HouseInteriors1_7_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_7_0.bin.lz"
gAreaRoomMap_HouseInteriors1_7_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_7_1.bin.lz"
gAreaRoomMap_HouseInteriors1_8_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_8_0.bin.lz"
gAreaRoomMap_HouseInteriors1_8_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_8_1.bin.lz"
gAreaRoomMap_HouseInteriors1_9_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_9_0.bin.lz"
gAreaRoomMap_HouseInteriors1_9_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_9_1.bin.lz"
gAreaRoomMap_HouseInteriors1_10_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_10_0.bin.lz"
gAreaRoomMap_HouseInteriors1_10_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_10_1.bin.lz"
gAreaRoomMap_HouseInteriors1_11_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_11_0.bin.lz"
gAreaRoomMap_HouseInteriors1_11_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_11_1.bin.lz"
gAreaRoomMap_HouseInteriors1_12_0::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_12_0.bin.lz"
gAreaRoomMap_HouseInteriors1_12_1::
	.incbin "assets/gAreaRoomMap_HouseInteriors1_12_1.bin.lz"
gAreaRoomMap_Dojos_0_0::
	.incbin "assets/gAreaRoomMap_Dojos_0_0.bin.lz"
gAreaRoomMap_Dojos_0_1::
	.incbin "assets/gAreaRoomMap_Dojos_0_1.bin.lz"
gAreaRoomMap_Dojos_1_0::
	.incbin "assets/gAreaRoomMap_Dojos_1_0.bin.lz"
gAreaRoomMap_Dojos_1_1::
	.incbin "assets/gAreaRoomMap_Dojos_1_1.bin.lz"
gAreaRoomMap_Dojos_2_0::
	.incbin "assets/gAreaRoomMap_Dojos_2_0.bin.lz"
gAreaRoomMap_Dojos_2_1::
	.incbin "assets/gAreaRoomMap_Dojos_2_1.bin.lz"
gAreaRoomMap_Dojos_3_0::
	.incbin "assets/gAreaRoomMap_Dojos_3_0.bin.lz"
gAreaRoomMap_Dojos_3_1::
	.incbin "assets/gAreaRoomMap_Dojos_3_1.bin.lz"
gAreaRoomMap_Dojos_4_0::
	.incbin "assets/gAreaRoomMap_Dojos_4_0.bin.lz"
gAreaRoomMap_Dojos_4_1::
	.incbin "assets/gAreaRoomMap_Dojos_4_1.bin.lz"
gAreaRoomMap_Dojos_5_0::
	.incbin "assets/gAreaRoomMap_Dojos_5_0.bin.lz"
gAreaRoomMap_Dojos_5_1::
	.incbin "assets/gAreaRoomMap_Dojos_5_1.bin.lz"
gAreaRoomMap_Dojos_6_0::
	.incbin "assets/gAreaRoomMap_Dojos_6_0.bin.lz"
gAreaRoomMap_Dojos_6_1::
	.incbin "assets/gAreaRoomMap_Dojos_6_1.bin.lz"
gAreaRoomMap_Dojos_7_0::
	.incbin "assets/gAreaRoomMap_Dojos_7_0.bin.lz"
gAreaRoomMap_Dojos_7_1::
	.incbin "assets/gAreaRoomMap_Dojos_7_1.bin.lz"
gAreaRoomMap_Dojos_8_0::
	.incbin "assets/gAreaRoomMap_Dojos_8_0.bin.lz"
gAreaRoomMap_Dojos_8_1::
	.incbin "assets/gAreaRoomMap_Dojos_8_1.bin.lz"
gAreaRoomMap_Dojos_9_0::
	.incbin "assets/gAreaRoomMap_Dojos_9_0.bin.lz"
gAreaRoomMap_Dojos_9_1::
	.incbin "assets/gAreaRoomMap_Dojos_9_1.bin.lz"
gAreaRoomMap_Dojos_10_0::
	.incbin "assets/gAreaRoomMap_Dojos_10_0.bin.lz"
gAreaRoomMap_Dojos_10_1::
	.incbin "assets/gAreaRoomMap_Dojos_10_1.bin.lz"
gAreaRoomMap_Dojos_11_0::
	.incbin "assets/gAreaRoomMap_Dojos_11_0.bin.lz"
gAreaRoomMap_Dojos_11_1::
	.incbin "assets/gAreaRoomMap_Dojos_11_1.bin.lz"
gAreaRoomMap_Dojos_12_0::
	.incbin "assets/gAreaRoomMap_Dojos_12_0.bin.lz"
gAreaRoomMap_Dojos_12_1::
	.incbin "assets/gAreaRoomMap_Dojos_12_1.bin.lz"
gAreaRoomMap_Dojos_13_0::
	.incbin "assets/gAreaRoomMap_Dojos_13_0.bin.lz"
gAreaRoomMap_Dojos_13_1::
	.incbin "assets/gAreaRoomMap_Dojos_13_1.bin.lz"
gAreaRoomMap_TreeInteriors_0_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_0_0.bin"
gAreaRoomMap_TreeInteriors_0_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_0_1.bin.lz"
gAreaRoomMap_TreeInteriors_1_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_1_0.bin"
gAreaRoomMap_TreeInteriors_1_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_1_1.bin.lz"
gAreaRoomMap_TreeInteriors_2_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_2_0.bin"
gAreaRoomMap_TreeInteriors_2_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_2_1.bin.lz"
gAreaRoomMap_TreeInteriors_3_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_3_0.bin"
gAreaRoomMap_TreeInteriors_3_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_3_1.bin.lz"
gAreaRoomMap_TreeInteriors_4_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_4_0.bin"
gAreaRoomMap_TreeInteriors_4_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_4_1.bin.lz"
gAreaRoomMap_TreeInteriors_5_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_5_0.bin"
gAreaRoomMap_TreeInteriors_5_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_5_1.bin.lz"
gAreaRoomMap_TreeInteriors_6_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_6_0.bin"
gAreaRoomMap_TreeInteriors_6_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_6_1.bin.lz"
gAreaRoomMap_TreeInteriors_7_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_7_0.bin"
gAreaRoomMap_TreeInteriors_7_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_7_1.bin.lz"
gAreaRoomMap_TreeInteriors_8_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_8_0.bin"
gAreaRoomMap_TreeInteriors_8_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_8_1.bin.lz"
gAreaRoomMap_TreeInteriors_9_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_9_0.bin"
gAreaRoomMap_TreeInteriors_9_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_9_1.bin.lz"
gAreaRoomMap_TreeInteriors_10_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_10_0.bin"
gAreaRoomMap_TreeInteriors_10_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_10_1.bin.lz"
gAreaRoomMap_TreeInteriors_11_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_11_0.bin"
gAreaRoomMap_TreeInteriors_11_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_11_1.bin.lz"
gAreaRoomMap_TreeInteriors_12_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_12_0.bin"
gAreaRoomMap_TreeInteriors_12_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_12_1.bin.lz"
gAreaRoomMap_TreeInteriors_13_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_13_0.bin"
gAreaRoomMap_TreeInteriors_13_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_13_1.bin.lz"
gAreaRoomMap_TreeInteriors_14_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_14_0.bin"
gAreaRoomMap_TreeInteriors_14_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_14_1.bin.lz"
gAreaRoomMap_TreeInteriors_15_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_15_0.bin"
gAreaRoomMap_TreeInteriors_15_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_15_1.bin.lz"
gAreaRoomMap_TreeInteriors_16_0::
	.incbin "assets/gAreaRoomMap_TreeInteriors_16_0.bin"
gAreaRoomMap_TreeInteriors_16_1::
	.incbin "assets/gAreaRoomMap_TreeInteriors_16_1.bin.lz"
gAreaRoomMap_MinishCracks_0_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_0_0.bin"
gAreaRoomMap_MinishCracks_0_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_0_1.bin.lz"
gAreaRoomMap_MinishCracks_1_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_1_0.bin"
gAreaRoomMap_MinishCracks_1_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_1_1.bin.lz"
gAreaRoomMap_MinishCracks_2_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_2_0.bin"
gAreaRoomMap_MinishCracks_2_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_2_1.bin.lz"
gAreaRoomMap_MinishCracks_3_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_3_0.bin"
gAreaRoomMap_MinishCracks_3_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_3_1.bin.lz"
gAreaRoomMap_MinishCracks_4_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_4_0.bin"
gAreaRoomMap_MinishCracks_4_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_4_1.bin.lz"
gAreaRoomMap_MinishCracks_5_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_5_0.bin.lz"
gAreaRoomMap_MinishCracks_5_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_5_1.bin.lz"
gAreaRoomMap_MinishCracks_6_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_6_0.bin"
gAreaRoomMap_MinishCracks_6_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_6_1.bin.lz"
gAreaRoomMap_MinishCracks_7_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_7_0.bin"
gAreaRoomMap_MinishCracks_7_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_7_1.bin.lz"
gAreaRoomMap_MinishCracks_8_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_8_0.bin"
gAreaRoomMap_MinishCracks_8_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_8_1.bin.lz"
gAreaRoomMap_MinishCracks_9_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_9_0.bin"
gAreaRoomMap_MinishCracks_9_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_9_1.bin.lz"
gAreaRoomMap_MinishCracks_10_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_10_0.bin"
gAreaRoomMap_MinishCracks_10_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_10_1.bin.lz"
gAreaRoomMap_MinishCracks_11_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_11_0.bin"
gAreaRoomMap_MinishCracks_11_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_11_1.bin.lz"
gAreaRoomMap_MinishCracks_12_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_12_0.bin"
gAreaRoomMap_MinishCracks_12_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_12_1.bin.lz"
gAreaRoomMap_MinishCracks_13_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_13_0.bin"
gAreaRoomMap_MinishCracks_13_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_13_1.bin.lz"
gAreaRoomMap_MinishCracks_14_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_14_0.bin.lz"
gAreaRoomMap_MinishCracks_14_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_14_1.bin.lz"
gAreaRoomMap_MinishCracks_15_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_15_0.bin.lz"
gAreaRoomMap_MinishCracks_15_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_15_1.bin.lz"
gAreaRoomMap_MinishCracks_16_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_16_0.bin.lz"
gAreaRoomMap_MinishCracks_16_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_16_1.bin.lz"
gAreaRoomMap_MinishCracks_17_0::
	.incbin "assets/gAreaRoomMap_MinishCracks_17_0.bin.lz"
gAreaRoomMap_MinishCracks_17_1::
	.incbin "assets/gAreaRoomMap_MinishCracks_17_1.bin.lz"
gAreaRoomMap_MinishRafters_0_0::
	.incbin "assets/gAreaRoomMap_MinishRafters_0_0.bin.lz"
gAreaRoomMap_MinishRafters_1_0::
	.incbin "assets/gAreaRoomMap_MinishRafters_1_0.bin.lz"
gAreaRoomMap_MinishRafters_2_0::
	.incbin "assets/gAreaRoomMap_MinishRafters_2_0.bin.lz"
gAreaRoomMap_MinishRafters_3_0::
	.incbin "assets/gAreaRoomMap_MinishRafters_3_0.bin.lz"
gAreaRoomMap_EzloCutscene_0_0::
	.incbin "assets/gAreaRoomMap_EzloCutscene_0_0.bin.lz"
gAreaRoomMap_EzloCutscene_0_1::
	.incbin "assets/gAreaRoomMap_EzloCutscene_0_1.bin.lz"
gAreaRoomMap_WindTribeTower_0_0::
	.incbin "assets/gAreaRoomMap_WindTribeTower_0_0.bin.lz"
gAreaRoomMap_WindTribeTower_0_1::
	.incbin "assets/gAreaRoomMap_WindTribeTower_0_1.bin.lz"
gAreaRoomMap_WindTribeTower_1_0::
	.incbin "assets/gAreaRoomMap_WindTribeTower_1_0.bin.lz"
gAreaRoomMap_WindTribeTower_1_1::
	.incbin "assets/gAreaRoomMap_WindTribeTower_1_1.bin.lz"
gAreaRoomMap_WindTribeTower_2_0::
	.incbin "assets/gAreaRoomMap_WindTribeTower_2_0.bin.lz"
gAreaRoomMap_WindTribeTower_2_1::
	.incbin "assets/gAreaRoomMap_WindTribeTower_2_1.bin.lz"
gAreaRoomMap_WindTribeTower_3_0::
	.incbin "assets/gAreaRoomMap_WindTribeTower_3_0.bin.lz"
gAreaRoomMap_WindTribeTower_3_1::
	.incbin "assets/gAreaRoomMap_WindTribeTower_3_1.bin.lz"
gAreaRoomMap_WindTribeTowerRoof_0_0::
	.incbin "assets/gAreaRoomMap_WindTribeTowerRoof_0_0.bin.lz"
gAreaRoomMap_WindTribeTowerRoof_0_1::
	.incbin "assets/gAreaRoomMap_WindTribeTowerRoof_0_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_0_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_0_2.bin.lz"
gAreaRoomMap_MinishHouseInteriors_0_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_0_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_1_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_1_2.bin.lz"
gAreaTileset_MinishHouseInteriors_0_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_0_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_1_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_1_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_2_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_2_2.bin.lz"
gAreaTileset_MinishHouseInteriors_1_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_1_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_2_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_2_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_3_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_3_2.bin.lz"
gAreaTileset_MinishHouseInteriors_2_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_2_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_3_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_3_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_4_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_4_2.bin.lz"
gAreaTileset_MinishHouseInteriors_3_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_3_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_4_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_4_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_5_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_5_2.bin.lz"
gAreaTileset_MinishHouseInteriors_4_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_4_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_5_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_5_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_6_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_6_2.bin.lz"
gAreaTileset_MinishHouseInteriors_5_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_5_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_6_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_6_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_7_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_7_2.bin.lz"
gAreaTileset_MinishHouseInteriors_6_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_6_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_7_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_7_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_8_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_8_2.bin.lz"
gAreaTileset_MinishHouseInteriors_7_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_7_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_8_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_8_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_9_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_9_2.bin.lz"
gAreaTileset_MinishHouseInteriors_8_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_8_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_9_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_9_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_10_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_10_2.bin.lz"
gAreaTileset_MinishHouseInteriors_9_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_9_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_10_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_10_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_11_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_11_2.bin.lz"
gAreaTileset_MinishHouseInteriors_10_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_10_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_11_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_11_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_12_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_12_2.bin.lz"
gAreaTileset_MinishHouseInteriors_11_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_11_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_12_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_12_1.bin.lz"
unknown_28::
	.incbin "assets/unknown_28.bin"
gAreaRoomMap_MinishHouseInteriors_13_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_13_2.bin.lz"
gAreaTileset_MinishHouseInteriors_12_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_12_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_13_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_13_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_14_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_14_2.bin.lz"
gAreaTileset_MinishHouseInteriors_13_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_13_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_14_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_14_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_15_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_15_2.bin.lz"
gAreaTileset_MinishHouseInteriors_14_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_14_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_15_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_15_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_16_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_16_2.bin.lz"
gAreaTileset_MinishHouseInteriors_15_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_15_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_16_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_16_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_17_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_17_2.bin.lz"
gAreaTileset_MinishHouseInteriors_16_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_16_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_17_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_17_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_18_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_18_2.bin.lz"
gAreaTileset_MinishHouseInteriors_17_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_17_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_18_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_18_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_19_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_19_2.bin.lz"
gAreaTileset_MinishHouseInteriors_18_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_18_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_19_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_19_1.bin.lz"
gAreaRoomMap_MinishHouseInteriors_20_2::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_20_2.bin.lz"
gAreaTileset_MinishHouseInteriors_19_0::
	.incbin "tilesets/gAreaTileset_MinishHouseInteriors_19_0.8bpp.lz"
gAreaRoomMap_MinishHouseInteriors_20_1::
	.incbin "assets/gAreaRoomMap_MinishHouseInteriors_20_1.bin.lz"
gAreaRoomMap_TownMinishHoles_0_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_0_2.bin.lz"
gAreaTileset_TownMinishHoles_0_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_0_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_0_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_0_1.bin.lz"
gAreaRoomMap_TownMinishHoles_1_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_1_2.bin.lz"
gAreaTileset_TownMinishHoles_1_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_1_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_1_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_1_1.bin.lz"
gAreaRoomMap_TownMinishHoles_2_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_2_2.bin.lz"
gAreaTileset_TownMinishHoles_2_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_2_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_2_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_2_1.bin.lz"
gAreaRoomMap_TownMinishHoles_3_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_3_2.bin.lz"
gAreaTileset_TownMinishHoles_3_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_3_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_3_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_3_1.bin.lz"
gAreaRoomMap_TownMinishHoles_4_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_4_2.bin.lz"
gAreaTileset_TownMinishHoles_4_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_4_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_4_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_4_1.bin.lz"
gAreaRoomMap_TownMinishHoles_5_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_5_2.bin.lz"
gAreaTileset_TownMinishHoles_5_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_5_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_5_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_5_1.bin.lz"
gAreaRoomMap_TownMinishHoles_6_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_6_2.bin.lz"
gAreaTileset_TownMinishHoles_6_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_6_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_6_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_6_1.bin.lz"
gAreaRoomMap_TownMinishHoles_7_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_7_2.bin.lz"
gAreaTileset_TownMinishHoles_7_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_7_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_7_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_7_1.bin.lz"
gAreaRoomMap_TownMinishHoles_8_2::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_8_2.bin.lz"
gAreaTileset_TownMinishHoles_8_0::
	.incbin "tilesets/gAreaTileset_TownMinishHoles_8_0.8bpp.lz"
gAreaRoomMap_TownMinishHoles_8_1::
	.incbin "assets/gAreaRoomMap_TownMinishHoles_8_1.bin.lz"
gAreaTileset_SimonsSimulation_0_0::
	.incbin "tilesets/gAreaTileset_SimonsSimulation_0_0.4bpp.lz"
gAreaTileset_SimonsSimulation_0_1::
	.incbin "tilesets/gAreaTileset_SimonsSimulation_0_1.4bpp.lz"
gAreaTileset_SimonsSimulation_0_2::
	.incbin "tilesets/gAreaTileset_SimonsSimulation_0_2.4bpp.lz"
gAreaMetatiles_HyruleTownUnderground_0::
	.incbin "assets/gAreaMetatiles_HyruleTownUnderground_0.bin.lz"
gAreaMetatiles_HyruleTownUnderground_1::
	.incbin "assets/gAreaMetatiles_HyruleTownUnderground_1.bin.lz"
gAreaMetatiles_HyruleTownUnderground_2::
	.incbin "assets/gAreaMetatiles_HyruleTownUnderground_2.bin.lz"
gAreaMetatiles_HyruleTownUnderground_3::
	.incbin "assets/gAreaMetatiles_HyruleTownUnderground_3.bin.lz"
gAreaRoomMap_40_0_0::
	.incbin "assets/gAreaRoomMap_40_0_0.bin.lz"
gAreaRoomMap_40_0_1::
	.incbin "assets/gAreaRoomMap_40_0_1.bin.lz"
gAreaRoomMap_40_1_0::
	.incbin "assets/gAreaRoomMap_40_1_0.bin.lz"
gAreaRoomMap_40_1_1::
	.incbin "assets/gAreaRoomMap_40_1_1.bin.lz"
gAreaRoomMap_40_2_0::
	.incbin "assets/gAreaRoomMap_40_2_0.bin.lz"
gAreaRoomMap_40_2_1::
	.incbin "assets/gAreaRoomMap_40_2_1.bin.lz"
gAreaRoomMap_40_3_0::
	.incbin "assets/gAreaRoomMap_40_3_0.bin.lz"
gAreaRoomMap_40_3_1::
	.incbin "assets/gAreaRoomMap_40_3_1.bin.lz"
gAreaRoomMap_40_4_0::
	.incbin "assets/gAreaRoomMap_40_4_0.bin.lz"
gAreaRoomMap_40_4_1::
	.incbin "assets/gAreaRoomMap_40_4_1.bin.lz"
gAreaRoomMap_40_5_0::
	.incbin "assets/gAreaRoomMap_40_5_0.bin.lz"
gAreaRoomMap_40_5_1::
	.incbin "assets/gAreaRoomMap_40_5_1.bin.lz"
gAreaRoomMap_40_6_0::
	.incbin "assets/gAreaRoomMap_40_6_0.bin.lz"
gAreaRoomMap_40_6_1::
	.incbin "assets/gAreaRoomMap_40_6_1.bin.lz"
gAreaRoomMap_40_7_0::
	.incbin "assets/gAreaRoomMap_40_7_0.bin.lz"
gAreaRoomMap_40_7_1::
	.incbin "assets/gAreaRoomMap_40_7_1.bin.lz"
gAreaRoomMap_40_8_0::
	.incbin "assets/gAreaRoomMap_40_8_0.bin.lz"
gAreaRoomMap_40_8_1::
	.incbin "assets/gAreaRoomMap_40_8_1.bin.lz"
gAreaRoomMap_HyruleTownUnderground_0_0::
	.incbin "assets/gAreaRoomMap_HyruleTownUnderground_0_0.bin.lz"
gAreaRoomMap_HyruleTownUnderground_0_1::
	.incbin "assets/gAreaRoomMap_HyruleTownUnderground_0_1.bin.lz"
gAreaRoomMap_HyruleTownUnderground_1_0::
	.incbin "assets/gAreaRoomMap_HyruleTownUnderground_1_0.bin.lz"
gAreaRoomMap_HyruleTownUnderground_1_1::
	.incbin "assets/gAreaRoomMap_HyruleTownUnderground_1_1.bin.lz"
gAreaRoomMap_GardenFountains_0_0::
	.incbin "assets/gAreaRoomMap_GardenFountains_0_0.bin.lz"
gAreaRoomMap_GardenFountains_0_1::
	.incbin "assets/gAreaRoomMap_GardenFountains_0_1.bin.lz"
gAreaRoomMap_GardenFountains_1_0::
	.incbin "assets/gAreaRoomMap_GardenFountains_1_0.bin.lz"
gAreaRoomMap_GardenFountains_1_1::
	.incbin "assets/gAreaRoomMap_GardenFountains_1_1.bin.lz"
gAreaRoomMap_HyruleCastleCellar_0_0::
	.incbin "assets/gAreaRoomMap_HyruleCastleCellar_0_0.bin.lz"
gAreaRoomMap_HyruleCastleCellar_0_1::
	.incbin "assets/gAreaRoomMap_HyruleCastleCellar_0_1.bin.lz"
gAreaRoomMap_HyruleCastleCellar_1_0::
	.incbin "assets/gAreaRoomMap_HyruleCastleCellar_1_0.bin.lz"
gAreaRoomMap_HyruleCastleCellar_1_1::
	.incbin "assets/gAreaRoomMap_HyruleCastleCellar_1_1.bin.lz"
gAreaRoomMap_SimonsSimulation_0_0::
	.incbin "assets/gAreaRoomMap_SimonsSimulation_0_0.bin.lz"
gAreaRoomMap_SimonsSimulation_0_1::
	.incbin "assets/gAreaRoomMap_SimonsSimulation_0_1.bin.lz"
gAreaTileset_DeepwoodShrine_0_0::
	.incbin "tilesets/gAreaTileset_DeepwoodShrine_0_0.4bpp.lz"
gAreaTileset_DeepwoodShrine_0_1::
	.incbin "tilesets/gAreaTileset_DeepwoodShrine_0_1.4bpp.lz"
gAreaTileset_DeepwoodShrine_0_2::
	.incbin "tilesets/gAreaTileset_DeepwoodShrine_0_2.4bpp.lz"
gAreaMetatiles_DeepwoodShrine_0::
	.incbin "assets/gAreaMetatiles_DeepwoodShrine_0.bin.lz"
gAreaMetatiles_DeepwoodShrine_1::
	.incbin "assets/gAreaMetatiles_DeepwoodShrine_1.bin.lz"
gAreaMetatiles_DeepwoodShrine_2::
	.incbin "assets/gAreaMetatiles_DeepwoodShrine_2.bin.lz"
gAreaMetatiles_DeepwoodShrine_3::
	.incbin "assets/gAreaMetatiles_DeepwoodShrine_3.bin.lz"
gAreaTileset_DeepwoodShrineBoss_0_0::
	.incbin "tilesets/gAreaTileset_DeepwoodShrineBoss_0_0.4bpp.lz"
gAreaTileset_DeepwoodShrineBoss_0_1::
	.incbin "tilesets/gAreaTileset_DeepwoodShrineBoss_0_1.4bpp.lz"
gAreaTileset_DeepwoodShrineBoss_0_2::
	.incbin "tilesets/gAreaTileset_DeepwoodShrineBoss_0_2.4bpp.lz"
gAreaMetatiles_DeepwoodShrineBoss_0::
	.incbin "assets/gAreaMetatiles_DeepwoodShrineBoss_0.bin.lz"
gAreaMetatiles_DeepwoodShrineBoss_1::
	.incbin "assets/gAreaMetatiles_DeepwoodShrineBoss_1.bin.lz"
gAreaMetatiles_DeepwoodShrineBoss_2::
	.incbin "assets/gAreaMetatiles_DeepwoodShrineBoss_2.bin.lz"
gAreaMetatiles_DeepwoodShrineBoss_3::
	.incbin "assets/gAreaMetatiles_DeepwoodShrineBoss_3.bin.lz"
gAreaTileset_DeepwoodShrineEntry_0_0::
	.incbin "tilesets/gAreaTileset_DeepwoodShrineEntry_0_0.4bpp.lz"
gAreaTileset_DeepwoodShrineEntry_0_1::
	.incbin "tilesets/gAreaTileset_DeepwoodShrineEntry_0_1.4bpp.lz"
gAreaTileset_DeepwoodShrineEntry_0_2::
	.incbin "tilesets/gAreaTileset_DeepwoodShrineEntry_0_2.4bpp.lz"
gAreaMetatiles_DeepwoodShrineEntry_0::
	.incbin "assets/gAreaMetatiles_DeepwoodShrineEntry_0.bin.lz"
gAreaMetatiles_DeepwoodShrineEntry_1::
	.incbin "assets/gAreaMetatiles_DeepwoodShrineEntry_1.bin.lz"
gAreaMetatiles_DeepwoodShrineEntry_2::
	.incbin "assets/gAreaMetatiles_DeepwoodShrineEntry_2.bin.lz"
gAreaMetatiles_DeepwoodShrineEntry_3::
	.incbin "assets/gAreaMetatiles_DeepwoodShrineEntry_3.bin.lz"
gAreaRoomMap_DeepwoodShrine_0_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_0_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_0_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_0_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Madderpillar::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/00_Madderpillar/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_1_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_1_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_1_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_1_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_BluePortal::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/01_BluePortal/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_2_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_2_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_2_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_2_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_StairsToB1::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/02_StairsToB1/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_3_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_3_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_3_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_3_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_PotBridge::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/03_PotBridge/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_4_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_4_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_4_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_4_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_DoubleStatue::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/04_DoubleStatue/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_5_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_5_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_5_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_5_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Map::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/05_Map/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_6_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_6_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_6_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_6_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Barrel::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/06_Barrel/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_7_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_7_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_7_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_7_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Button::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/07_Button/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_8_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_8_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_8_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_8_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Mulldozer::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/08_Mulldozer/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_9_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_9_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_9_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_9_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Pillars::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/09_Pillars/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_10_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_10_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_10_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_10_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Lever::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/10_Lever/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_11_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_11_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_11_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_11_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Entrance::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/11_Entrance/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_12_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_12_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_12_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_12_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Torches::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/16_Torches/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_13_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_13_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_13_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_13_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_BossKey::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/17_BossKey/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_14_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_14_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_14_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_14_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_Compass::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/18_Compass/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_15_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_15_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_15_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_15_1.bin.lz"
unknown_44::
	.incbin "assets/unknown_44.bin"
gAreaRoomMap_DeepwoodShrine_16_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_16_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_16_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_16_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_LilyPadWest::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/20_LilyPadWest/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_17_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_17_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_17_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_17_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_LilyPadEast::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/21_LilyPadEast/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrineBoss_0_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrineBoss_0_0.bin.lz"
gAreaRoomMap_DeepwoodShrineBoss_0_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrineBoss_0_1.bin.lz"
 gDungeonMaps_DeepwoodShrineBoss_Main::
	.incbin "maps/areas/073_DeepwoodShrineBoss/rooms/00_Main/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_18_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_18_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_18_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_18_1.bin.lz"
 gDungeonMaps_DeepwoodShrine_BossDoor::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/23_BossDoor/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_19_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_19_0.bin.lz"
gAreaRoomMap_DeepwoodShrine_19_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrine_19_1.bin.lz"
unknown_49::
	.incbin "assets/unknown_49.bin"
gAreaRoomMap_DeepwoodShrineEntry_0_0::
	.incbin "assets/gAreaRoomMap_DeepwoodShrineEntry_0_0.bin"
gAreaRoomMap_DeepwoodShrineEntry_0_1::
	.incbin "assets/gAreaRoomMap_DeepwoodShrineEntry_0_1.bin.lz"
gAreaTileset_CaveOfFlames_0_0::
	.incbin "tilesets/gAreaTileset_CaveOfFlames_0_0.4bpp.lz"
gAreaTileset_CaveOfFlames_0_1::
	.incbin "tilesets/gAreaTileset_CaveOfFlames_0_1.4bpp.lz"
gAreaTileset_CaveOfFlames_0_2::
	.incbin "tilesets/gAreaTileset_CaveOfFlames_0_2.4bpp.lz"
gAreaMetatiles_CaveOfFlames_0::
	.incbin "assets/gAreaMetatiles_CaveOfFlames_0.bin.lz"
gAreaMetatiles_CaveOfFlames_1::
	.incbin "assets/gAreaMetatiles_CaveOfFlames_1.bin.lz"
gAreaMetatiles_CaveOfFlames_2::
	.incbin "assets/gAreaMetatiles_CaveOfFlames_2.bin.lz"
gAreaMetatiles_CaveOfFlames_3::
	.incbin "assets/gAreaMetatiles_CaveOfFlames_3.bin.lz"
gAreaTileset_CaveOfFlamesBoss_0_0::
	.incbin "tilesets/gAreaTileset_CaveOfFlamesBoss_0_0.4bpp.lz"
gAreaTileset_CaveOfFlamesBoss_0_1::
	.incbin "tilesets/gAreaTileset_CaveOfFlamesBoss_0_1.4bpp.lz"
gAreaTileset_CaveOfFlamesBoss_0_2::
	.incbin "tilesets/gAreaTileset_CaveOfFlamesBoss_0_2.4bpp.lz"
gAreaMetatiles_CaveOfFlamesBoss_0::
	.incbin "assets/gAreaMetatiles_CaveOfFlamesBoss_0.bin.lz"
gAreaMetatiles_CaveOfFlamesBoss_1::
	.incbin "assets/gAreaMetatiles_CaveOfFlamesBoss_1.bin.lz"
gAreaMetatiles_CaveOfFlamesBoss_2::
	.incbin "assets/gAreaMetatiles_CaveOfFlamesBoss_2.bin.lz"
gAreaMetatiles_CaveOfFlamesBoss_3::
	.incbin "assets/gAreaMetatiles_CaveOfFlamesBoss_3.bin.lz"
gAreaTileset_CaveOfFlames_0_3::
	.incbin "tilesets/gAreaTileset_CaveOfFlames_0_3.bin.lz"
gAreaRoomMap_CaveOfFlames_0_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_0_0.bin.lz"
gAreaRoomMap_CaveOfFlames_0_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_0_1.bin.lz"
 gDungeonMaps_CaveOfFlames_AfterCane::
	.incbin "maps/areas/080_CaveOfFlames/rooms/00_AfterCane/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_1_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_1_0.bin.lz"
gAreaRoomMap_CaveOfFlames_1_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_1_1.bin.lz"
 gDungeonMaps_CaveOfFlames_SpinyChu::
	.incbin "maps/areas/080_CaveOfFlames/rooms/01_SpinyChu/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_2_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_2_0.bin.lz"
gAreaRoomMap_CaveOfFlames_2_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_2_1.bin.lz"
 gDungeonMaps_CaveOfFlames_CartToSpinyChu::
	.incbin "maps/areas/080_CaveOfFlames/rooms/02_CartToSpinyChu/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_3_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_3_0.bin.lz"
gAreaRoomMap_CaveOfFlames_3_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_3_1.bin.lz"
 gDungeonMaps_CaveOfFlames_Entrance::
	.incbin "maps/areas/080_CaveOfFlames/rooms/03_Entrance/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_4_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_4_0.bin.lz"
gAreaRoomMap_CaveOfFlames_4_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_4_1.bin.lz"
 gDungeonMaps_CaveOfFlames_MainCart::
	.incbin "maps/areas/080_CaveOfFlames/rooms/04_MainCart/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_5_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_5_0.bin.lz"
gAreaRoomMap_CaveOfFlames_5_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_5_1.bin.lz"
 gDungeonMaps_CaveOfFlames_NorthEntrance::
	.incbin "maps/areas/080_CaveOfFlames/rooms/05_NorthEntrance/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_6_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_6_0.bin.lz"
gAreaRoomMap_CaveOfFlames_6_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_6_1.bin.lz"
 gDungeonMaps_CaveOfFlames_CartWest::
	.incbin "maps/areas/080_CaveOfFlames/rooms/06_CartWest/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_7_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_7_0.bin.lz"
gAreaRoomMap_CaveOfFlames_7_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_7_1.bin.lz"
 gDungeonMaps_CaveOfFlames_HelmasaurFight::
	.incbin "maps/areas/080_CaveOfFlames/rooms/07_HelmasaurFight/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_8_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_8_0.bin.lz"
gAreaRoomMap_CaveOfFlames_8_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_8_1.bin.lz"
 gDungeonMaps_CaveOfFlames_RollobiteLavaRoom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/08_RollobiteLavaRoom/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_9_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_9_0.bin.lz"
gAreaRoomMap_CaveOfFlames_9_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_9_1.bin.lz"
 gDungeonMaps_CaveOfFlames_MinishLavaRoom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/09_MinishLavaRoom/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_10_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_10_0.bin.lz"
gAreaRoomMap_CaveOfFlames_10_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_10_1.bin.lz"
 gDungeonMaps_CaveOfFlames_MinishSpikes::
	.incbin "maps/areas/080_CaveOfFlames/rooms/16_MinishSpikes/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_11_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_11_0.bin.lz"
gAreaRoomMap_CaveOfFlames_11_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_11_1.bin.lz"
 gDungeonMaps_CaveOfFlames_TompasDoom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/17_TompasDoom/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_12_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_12_0.bin.lz"
gAreaRoomMap_CaveOfFlames_12_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_12_1.bin.lz"
 gDungeonMaps_CaveOfFlames_BeforeGleerok::
	.incbin "maps/areas/080_CaveOfFlames/rooms/18_BeforeGleerok/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_13_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_13_0.bin.lz"
gAreaRoomMap_CaveOfFlames_13_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_13_1.bin.lz"
 gDungeonMaps_CaveOfFlames_BosskeyPath1::
	.incbin "maps/areas/080_CaveOfFlames/rooms/19_BosskeyPath1/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_14_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_14_0.bin.lz"
gAreaRoomMap_CaveOfFlames_14_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_14_1.bin.lz"
 gDungeonMaps_CaveOfFlames_BosskeyPath2::
	.incbin "maps/areas/080_CaveOfFlames/rooms/20_BosskeyPath2/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_15_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_15_0.bin.lz"
gAreaRoomMap_CaveOfFlames_15_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_15_1.bin.lz"
 gDungeonMaps_CaveOfFlames_Compass::
	.incbin "maps/areas/080_CaveOfFlames/rooms/21_Compass/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_16_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_16_0.bin.lz"
gAreaRoomMap_CaveOfFlames_16_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_16_1.bin.lz"
 gDungeonMaps_CaveOfFlames_BobOmbWall::
	.incbin "maps/areas/080_CaveOfFlames/rooms/22_BobOmbWall/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_17_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_17_0.bin.lz"
gAreaRoomMap_CaveOfFlames_17_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlames_17_1.bin.lz"
 gDungeonMaps_CaveOfFlames_BossDoor::
	.incbin "maps/areas/080_CaveOfFlames/rooms/23_BossDoor/dungeon_map.bin"
gAreaRoomMap_CaveOfFlamesBoss_0_0::
	.incbin "assets/gAreaRoomMap_CaveOfFlamesBoss_0_0.bin.lz"
gAreaRoomMap_CaveOfFlamesBoss_0_1::
	.incbin "assets/gAreaRoomMap_CaveOfFlamesBoss_0_1.bin.lz"
 gDungeonMaps_CaveOfFlamesBoss_0::
	.incbin "maps/areas/081_CaveOfFlamesBoss/rooms/00_0/dungeon_map.bin"
gAreaTileset_CastorDarknut_0_0::
	.incbin "tilesets/gAreaTileset_CastorDarknut_0_0.4bpp.lz"
gAreaTileset_CastorDarknut_0_1::
	.incbin "tilesets/gAreaTileset_CastorDarknut_0_1.4bpp.lz"
gAreaTileset_CastorDarknut_0_2::
	.incbin "tilesets/gAreaTileset_CastorDarknut_0_2.4bpp.lz"
gAreaMetatiles_FortressOfWinds_0::
	.incbin "assets/gAreaMetatiles_FortressOfWinds_0.bin.lz"
gAreaMetatiles_FortressOfWinds_1::
	.incbin "assets/gAreaMetatiles_FortressOfWinds_1.bin.lz"
gAreaMetatiles_FortressOfWinds_2::
	.incbin "assets/gAreaMetatiles_FortressOfWinds_2.bin.lz"
gAreaMetatiles_FortressOfWinds_3::
	.incbin "assets/gAreaMetatiles_FortressOfWinds_3.bin.lz"
gAreaTileset_InnerMazaal_0_0::
	.incbin "tilesets/gAreaTileset_InnerMazaal_0_0.4bpp.lz"
gAreaTileset_InnerMazaal_0_1::
	.incbin "tilesets/gAreaTileset_InnerMazaal_0_1.4bpp.lz"
gAreaTileset_InnerMazaal_0_2::
	.incbin "tilesets/gAreaTileset_InnerMazaal_0_2.4bpp.lz"
gAreaMetatiles_InnerMazaal_0::
	.incbin "assets/gAreaMetatiles_InnerMazaal_0.bin.lz"
gAreaMetatiles_InnerMazaal_1::
	.incbin "assets/gAreaMetatiles_InnerMazaal_1.bin.lz"
gAreaMetatiles_InnerMazaal_2::
	.incbin "assets/gAreaMetatiles_InnerMazaal_2.bin.lz"
gAreaMetatiles_InnerMazaal_3::
	.incbin "assets/gAreaMetatiles_InnerMazaal_3.bin.lz"
gAreaTileset_FortressOfWindsTop_0_0::
	.incbin "tilesets/gAreaTileset_FortressOfWindsTop_0_0.4bpp.lz"
gAreaTileset_FortressOfWindsTop_0_1::
	.incbin "tilesets/gAreaTileset_FortressOfWindsTop_0_1.4bpp.lz"
gAreaTileset_FortressOfWindsTop_0_2::
	.incbin "tilesets/gAreaTileset_FortressOfWindsTop_0_2.4bpp.lz"
gAreaMetatiles_FortressOfWindsTop_0::
	.incbin "assets/gAreaMetatiles_FortressOfWindsTop_0.bin.lz"
gAreaMetatiles_FortressOfWindsTop_1::
	.incbin "assets/gAreaMetatiles_FortressOfWindsTop_1.bin.lz"
gAreaMetatiles_FortressOfWindsTop_2::
	.incbin "assets/gAreaMetatiles_FortressOfWindsTop_2.bin.lz"
gAreaMetatiles_FortressOfWindsTop_3::
	.incbin "assets/gAreaMetatiles_FortressOfWindsTop_3.bin.lz"
gAreaRoomMap_FortressOfWinds_0_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_0_0.bin.lz"
gAreaRoomMap_FortressOfWinds_0_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_0_1.bin.lz"
 gDungeonMaps_FortressOfWinds_DoubleEyegore::
	.incbin "maps/areas/088_FortressOfWinds/rooms/00_DoubleEyegore/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_1_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_1_0.bin.lz"
gAreaRoomMap_FortressOfWinds_1_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_1_1.bin.lz"
 gDungeonMaps_FortressOfWinds_BeforeMazaal::
	.incbin "maps/areas/088_FortressOfWinds/rooms/01_BeforeMazaal/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_2_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_2_0.bin.lz"
gAreaRoomMap_FortressOfWinds_2_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_2_1.bin.lz"
 gDungeonMaps_FortressOfWinds_EastKeyLever::
	.incbin "maps/areas/088_FortressOfWinds/rooms/02_EastKeyLever/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_3_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_3_0.bin.lz"
gAreaRoomMap_FortressOfWinds_3_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_3_1.bin.lz"
 gDungeonMaps_FortressOfWinds_PitPlatforms::
	.incbin "maps/areas/088_FortressOfWinds/rooms/03_PitPlatforms/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_4_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_4_0.bin.lz"
gAreaRoomMap_FortressOfWinds_4_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_4_1.bin.lz"
 gDungeonMaps_FortressOfWinds_WestKeyLever::
	.incbin "maps/areas/088_FortressOfWinds/rooms/04_WestKeyLever/dungeon_map.bin"
 gDungeonMaps_FortressOfWinds_5::
	.incbin "maps/areas/088_FortressOfWinds/rooms/05_5/dungeon_map.bin"
 gDungeonMaps_FortressOfWinds_6::
	.incbin "maps/areas/088_FortressOfWinds/rooms/06_6/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_5_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_5_0.bin.lz"
gAreaRoomMap_FortressOfWinds_5_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_5_1.bin.lz"
 gDungeonMaps_FortressOfWinds_DarknutRoom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/16_DarknutRoom/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_6_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_6_0.bin.lz"
gAreaRoomMap_FortressOfWinds_6_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_6_1.bin.lz"
 gDungeonMaps_FortressOfWinds_ArrowEyeBridge::
	.incbin "maps/areas/088_FortressOfWinds/rooms/17_ArrowEyeBridge/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_7_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_7_0.bin.lz"
gAreaRoomMap_FortressOfWinds_7_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_7_1.bin.lz"
 gDungeonMaps_FortressOfWinds_NorthSplitPathPit::
	.incbin "maps/areas/088_FortressOfWinds/rooms/18_NorthSplitPathPit/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_8_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_8_0.bin.lz"
gAreaRoomMap_FortressOfWinds_8_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_8_1.bin.lz"
 gDungeonMaps_FortressOfWinds_WallmasterMinishPortal::
	.incbin "maps/areas/088_FortressOfWinds/rooms/19_WallmasterMinishPortal/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_9_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_9_0.bin.lz"
gAreaRoomMap_FortressOfWinds_9_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_9_1.bin.lz"
 gDungeonMaps_FortressOfWinds_PillarCloneButtons::
	.incbin "maps/areas/088_FortressOfWinds/rooms/20_PillarCloneButtons/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_10_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_10_0.bin.lz"
gAreaRoomMap_FortressOfWinds_10_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_10_1.bin.lz"
 gDungeonMaps_FortressOfWinds_RotatingSpikeTraps::
	.incbin "maps/areas/088_FortressOfWinds/rooms/21_RotatingSpikeTraps/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_11_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_11_0.bin.lz"
gAreaRoomMap_FortressOfWinds_11_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_11_1.bin.lz"
 gDungeonMaps_FortressOfWinds_Mazaal::
	.incbin "maps/areas/088_FortressOfWinds/rooms/22_Mazaal/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_12_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_12_0.bin.lz"
gAreaRoomMap_FortressOfWinds_12_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_12_1.bin.lz"
 gDungeonMaps_FortressOfWinds_Stalfos::
	.incbin "maps/areas/088_FortressOfWinds/rooms/23_Stalfos/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_13_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_13_0.bin.lz"
gAreaRoomMap_FortressOfWinds_13_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_13_1.bin.lz"
 gDungeonMaps_FortressOfWinds_EntranceMoleMitts::
	.incbin "maps/areas/088_FortressOfWinds/rooms/24_EntranceMoleMitts/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_14_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_14_0.bin.lz"
gAreaRoomMap_FortressOfWinds_14_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_14_1.bin.lz"
 gDungeonMaps_FortressOfWinds_Main2f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/25_Main2f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_15_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_15_0.bin.lz"
gAreaRoomMap_FortressOfWinds_15_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_15_1.bin.lz"
 gDungeonMaps_FortressOfWinds_MinishHole::
	.incbin "maps/areas/088_FortressOfWinds/rooms/26_MinishHole/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_16_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_16_0.bin.lz"
gAreaRoomMap_FortressOfWinds_16_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_16_1.bin.lz"
 gDungeonMaps_FortressOfWinds_BossKey::
	.incbin "maps/areas/088_FortressOfWinds/rooms/27_BossKey/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_17_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_17_0.bin.lz"
gAreaRoomMap_FortressOfWinds_17_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_17_1.bin.lz"
 gDungeonMaps_FortressOfWinds_WestStairs2f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/28_WestStairs2f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_18_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_18_0.bin.lz"
gAreaRoomMap_FortressOfWinds_18_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_18_1.bin.lz"
 gDungeonMaps_FortressOfWinds_EastStairs2f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/29_EastStairs2f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_19_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_19_0.bin.lz"
gAreaRoomMap_FortressOfWinds_19_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_19_1.bin.lz"
 gDungeonMaps_FortressOfWinds_WestStairs1f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/32_WestStairs1f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_20_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_20_0.bin.lz"
gAreaRoomMap_FortressOfWinds_20_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_20_1.bin.lz"
 gDungeonMaps_FortressOfWinds_CenterStairs1f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/33_CenterStairs1f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_21_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_21_0.bin.lz"
gAreaRoomMap_FortressOfWinds_21_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_21_1.bin.lz"
 gDungeonMaps_FortressOfWinds_EastStairs1f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/34_EastStairs1f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_22_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_22_0.bin.lz"
gAreaRoomMap_FortressOfWinds_22_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_22_1.bin.lz"
 gDungeonMaps_FortressOfWinds_Wizzrobe::
	.incbin "maps/areas/088_FortressOfWinds/rooms/35_Wizzrobe/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_23_0::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_23_0.bin.lz"
gAreaRoomMap_FortressOfWinds_23_1::
	.incbin "assets/gAreaRoomMap_FortressOfWinds_23_1.bin.lz"
 gDungeonMaps_FortressOfWinds_HeartPiece::
	.incbin "maps/areas/088_FortressOfWinds/rooms/36_HeartPiece/dungeon_map.bin"
gAreaRoomMap_InnerMazaal_0_0::
	.incbin "assets/gAreaRoomMap_InnerMazaal_0_0.bin.lz"
gAreaRoomMap_InnerMazaal_0_1::
	.incbin "assets/gAreaRoomMap_InnerMazaal_0_1.bin.lz"
gAreaRoomMap_InnerMazaal_1_0::
	.incbin "assets/gAreaRoomMap_InnerMazaal_1_0.bin.lz"
gAreaRoomMap_InnerMazaal_1_1::
	.incbin "assets/gAreaRoomMap_InnerMazaal_1_1.bin.lz"
gAreaRoomMap_FortressOfWindsTop_0_0::
	.incbin "assets/gAreaRoomMap_FortressOfWindsTop_0_0.bin.lz"
gAreaRoomMap_FortressOfWindsTop_0_1::
	.incbin "assets/gAreaRoomMap_FortressOfWindsTop_0_1.bin.lz"
gAreaTileset_TempleOfDroplets_0_0::
	.incbin "tilesets/gAreaTileset_TempleOfDroplets_0_0.4bpp.lz"
gAreaTileset_TempleOfDroplets_0_1::
	.incbin "tilesets/gAreaTileset_TempleOfDroplets_0_1.4bpp.lz"
gAreaTileset_TempleOfDroplets_0_2::
	.incbin "tilesets/gAreaTileset_TempleOfDroplets_0_2.4bpp.lz"
gAreaMetatiles_TempleOfDroplets_0::
	.incbin "assets/gAreaMetatiles_TempleOfDroplets_0.bin.lz"
gAreaMetatiles_TempleOfDroplets_1::
	.incbin "assets/gAreaMetatiles_TempleOfDroplets_1.bin.lz"
gAreaMetatiles_TempleOfDroplets_2::
	.incbin "assets/gAreaMetatiles_TempleOfDroplets_2.bin.lz"
gAreaMetatiles_TempleOfDroplets_3::
	.incbin "assets/gAreaMetatiles_TempleOfDroplets_3.bin.lz"
gAreaTileset_61_0_0::
	.incbin "tilesets/gAreaTileset_61_0_0.4bpp.lz"
gAreaTileset_61_0_1::
	.incbin "tilesets/gAreaTileset_61_0_1.4bpp.lz"
gAreaTileset_61_0_2::
	.incbin "tilesets/gAreaTileset_61_0_2.4bpp.lz"
gAreaMetatiles_61_0::
	.incbin "assets/gAreaMetatiles_61_0.bin.lz"
gAreaMetatiles_61_1::
	.incbin "assets/gAreaMetatiles_61_1.bin.lz"
gAreaMetatiles_61_2::
	.incbin "assets/gAreaMetatiles_61_2.bin.lz"
gAreaMetatiles_61_3::
	.incbin "assets/gAreaMetatiles_61_3.bin.lz"
gAreaRoomMap_TempleOfDroplets_0_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_0_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_0_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_0_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_WestHole::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/00_WestHole/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_1_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_1_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_1_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_1_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_NorthSplitRoom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/01_NorthSplitRoom/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_2_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_2_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_2_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_2_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_EastHole::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/02_EastHole/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_3_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_3_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_3_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_3_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_Entrance::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/03_Entrance/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_4_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_4_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_4_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_4_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_NorthwestStairs::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/04_NorthwestStairs/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_5_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_5_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_5_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_5_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_ScissorsMiniboss::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/05_ScissorsMiniboss/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_6_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_6_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_6_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_6_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_WaterfallNorthwest::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/06_WaterfallNorthwest/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_7_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_7_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_7_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_7_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_WaterfallNortheast::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/07_WaterfallNortheast/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_8_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_8_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_8_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_8_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_Element::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/08_Element/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_9_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_9_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_9_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_9_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_IceCorner::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/09_IceCorner/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_10_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_10_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_10_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_10_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_IcePitMaze::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/10_IcePitMaze/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_11_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_11_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_11_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_11_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_HoleToBlueChuKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/11_HoleToBlueChuKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_12_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_12_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_12_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_12_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_WestWaterfallSoutheast::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/12_WestWaterfallSoutheast/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_13_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_13_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_13_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_13_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_WestWaterfallSouthwest::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/13_WestWaterfallSouthwest/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_14_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_14_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_14_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_14_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BigOcto::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/14_BigOcto/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_15_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_15_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_15_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_15_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_ToBlueChu::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/15_ToBlueChu/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_16_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_16_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_16_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_16_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlueChu::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/16_BlueChu/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_17_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_17_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_17_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_17_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlueChuKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/17_BlueChuKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_18_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_18_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_18_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_18_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BossKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/32_BossKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_19_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_19_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_19_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_19_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_NorthSmallKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/33_NorthSmallKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_20_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_20_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_20_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_20_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlockCloneButtonPuzzle::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/34_BlockCloneButtonPuzzle/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_21_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_21_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_21_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_21_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlockClonePuzzle::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/35_BlockClonePuzzle/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_22_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_22_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_22_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_22_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlockCloneIceBridge::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/36_BlockCloneIceBridge/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_23_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_23_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_23_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_23_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_StairsToScissorsMiniboss::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/37_StairsToScissorsMiniboss/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_24_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_24_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_24_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_24_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_SpikeBarFlipperRoom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/38_SpikeBarFlipperRoom/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_25_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_25_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_25_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_25_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_9Lanterns::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/39_9Lanterns/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_26_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_26_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_26_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_26_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_LilypadIceBlocks::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/40_LilypadIceBlocks/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_27_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_27_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_27_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_27_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_29::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/41_29/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_28_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_28_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_28_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_28_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_MulldozersFireBars::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/42_MulldozersFireBars/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_29_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_29_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_29_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_29_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_DarkMaze::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/43_DarkMaze/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_30_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_30_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_30_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_30_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_TwinMadderpillars::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/44_TwinMadderpillars/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_31_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_31_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_31_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_31_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_AfterTwinMadderpillars::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/45_AfterTwinMadderpillars/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_32_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_32_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_32_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_32_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlueChuKeyLever::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/46_BlueChuKeyLever/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_33_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_33_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_33_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_33_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_MulldozerKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/47_MulldozerKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_34_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_34_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_34_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_34_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_BeforeTwinMadderpillars::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/48_BeforeTwinMadderpillars/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_35_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_35_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_35_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_35_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_LilypadB2West::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/49_LilypadB2West/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_36_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_36_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_36_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_36_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_Compass::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/50_Compass/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_37_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_37_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_37_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_37_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_DarkScissorBeetles::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/51_DarkScissorBeetles/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_38_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_38_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_38_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_38_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_LilypadB2Middle::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/52_LilypadB2Middle/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_39_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_39_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_39_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_39_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_IceMadderpillar::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/53_IceMadderpillar/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_40_0::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_40_0.bin.lz"
gAreaRoomMap_TempleOfDroplets_40_1::
	.incbin "assets/gAreaRoomMap_TempleOfDroplets_40_1.bin.lz"
 gDungeonMaps_TempleOfDroplets_FlamebarBlockPuzzle::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/54_FlamebarBlockPuzzle/dungeon_map.bin"
gAreaRoomMap_61_0_0::
	.incbin "assets/gAreaRoomMap_61_0_0.bin.lz"
gAreaRoomMap_61_0_1::
	.incbin "assets/gAreaRoomMap_61_0_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_0_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_0_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_0_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_0_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_1_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_1_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_1_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_1_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_2_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_2_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_2_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_2_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_3_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_3_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_3_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_3_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_4_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_4_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_4_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_4_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_5_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_5_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_5_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_5_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_6_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_6_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_6_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_6_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_7_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_7_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_7_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_7_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_8_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_8_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_8_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_8_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_9_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_9_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_9_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_9_1.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_10_0::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_10_0.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_10_1::
	.incbin "assets/gAreaRoomMap_HyruleTownMinishCaves_10_1.bin.lz"
gAreaTileset_RoyalCrypt_0_0::
	.incbin "tilesets/gAreaTileset_RoyalCrypt_0_0.4bpp.lz"
gAreaTileset_RoyalCrypt_0_1::
	.incbin "tilesets/gAreaTileset_RoyalCrypt_0_1.4bpp.lz"
gAreaTileset_RoyalCrypt_0_2::
	.incbin "tilesets/gAreaTileset_RoyalCrypt_0_2.4bpp.lz"
gAreaMetatiles_RoyalCrypt_0::
	.incbin "assets/gAreaMetatiles_RoyalCrypt_0.bin.lz"
gAreaMetatiles_RoyalCrypt_1::
	.incbin "assets/gAreaMetatiles_RoyalCrypt_1.bin.lz"
gAreaMetatiles_RoyalCrypt_2::
	.incbin "assets/gAreaMetatiles_RoyalCrypt_2.bin.lz"
gAreaMetatiles_RoyalCrypt_3::
	.incbin "assets/gAreaMetatiles_RoyalCrypt_3.bin.lz"
gAreaRoomMap_RoyalCrypt_0_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_0_0.bin.lz"
gAreaRoomMap_RoyalCrypt_0_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_0_1.bin.lz"
gAreaRoomMap_RoyalCrypt_1_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_1_0.bin.lz"
gAreaRoomMap_RoyalCrypt_1_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_1_1.bin.lz"
gAreaRoomMap_RoyalCrypt_2_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_2_0.bin.lz"
gAreaRoomMap_RoyalCrypt_2_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_2_1.bin.lz"
gAreaRoomMap_RoyalCrypt_3_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_3_0.bin.lz"
gAreaRoomMap_RoyalCrypt_3_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_3_1.bin.lz"
gAreaRoomMap_RoyalCrypt_4_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_4_0.bin.lz"
gAreaRoomMap_RoyalCrypt_4_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_4_1.bin.lz"
gAreaRoomMap_RoyalCrypt_5_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_5_0.bin.lz"
gAreaRoomMap_RoyalCrypt_5_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_5_1.bin.lz"
gAreaRoomMap_RoyalCrypt_6_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_6_0.bin.lz"
gAreaRoomMap_RoyalCrypt_6_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_6_1.bin.lz"
gAreaRoomMap_RoyalCrypt_7_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_7_0.bin.lz"
gAreaRoomMap_RoyalCrypt_7_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_7_1.bin.lz"
gAreaRoomMap_RoyalCrypt_8_0::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_8_0.bin.lz"
gAreaRoomMap_RoyalCrypt_8_1::
	.incbin "assets/gAreaRoomMap_RoyalCrypt_8_1.bin.lz"
gAreaTileset_PalaceOfWinds_GyorgTornado_0::
	.incbin "tilesets/gAreaTileset_PalaceOfWinds_GyorgTornado_0.4bpp.lz"
gAreaTileset_PalaceOfWinds_GyorgTornado_1::
	.incbin "tilesets/gAreaTileset_PalaceOfWinds_GyorgTornado_1.4bpp.lz"
gAreaTileset_PalaceOfWinds_GyorgTornado_2::
	.incbin "tilesets/gAreaTileset_PalaceOfWinds_GyorgTornado_2.4bpp.lz"
gAreaMetatiles_PalaceOfWinds_GyorgTornado::
	.incbin "assets/gAreaMetatiles_PalaceOfWinds_GyorgTornado.bin.lz"
gAreaMetatiles_PalaceOfWinds_BossKey::
	.incbin "assets/gAreaMetatiles_PalaceOfWinds_BossKey.bin.lz"
gAreaMetatiles_PalaceOfWinds_BeforeBallAndChainSoldiers::
	.incbin "assets/gAreaMetatiles_PalaceOfWinds_BeforeBallAndChainSoldiers.bin.lz"
gAreaMetatiles_PalaceOfWinds_GyorgBossDoor::
	.incbin "assets/gAreaMetatiles_PalaceOfWinds_GyorgBossDoor.bin.lz"
gAreaTileset_PalaceOfWinds_GyorgTornado_3::
	.incbin "tilesets/gAreaTileset_PalaceOfWinds_GyorgTornado_3.bin.lz"
gAreaTileset_PalaceOfWindsBoss_0_0::
	.incbin "tilesets/gAreaTileset_PalaceOfWindsBoss_0_0.4bpp.lz"
gAreaTileset_PalaceOfWindsBoss_0_1::
	.incbin "tilesets/gAreaTileset_PalaceOfWindsBoss_0_1.4bpp.lz"
gAreaMetatiles_PalaceOfWindsBoss_0::
	.incbin "assets/gAreaMetatiles_PalaceOfWindsBoss_0.bin.lz"
gAreaMetatiles_PalaceOfWindsBoss_1::
	.incbin "assets/gAreaMetatiles_PalaceOfWindsBoss_1.bin.lz"
unknown_134::
	.incbin "assets/unknown_134.bin"
gAreaTileset_PalaceOfWindsBoss_0_2::
	.incbin "tilesets/gAreaTileset_PalaceOfWindsBoss_0_2.bin.lz"
gAreaRoomMap_PalaceOfWinds_GyorgTornado_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GyorgTornado_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_GyorgTornado_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GyorgTornado_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_GyorgTornado::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/00_GyorgTornado/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BossKey_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BossKey_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BossKey_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BossKey_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BossKey::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/01_BossKey/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BeforeBallAndChainSoldiers::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/02_BeforeBallAndChainSoldiers/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_GyorgBossDoor::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/03_GyorgBossDoor/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_EastChestFromGyorgBossDoor::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/04_EastChestFromGyorgBossDoor/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_MoblinAndWizzrobeFight::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/05_MoblinAndWizzrobeFight/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_FourButtonStalfos::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/06_FourButtonStalfos/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_FanAndKeyToBossKey::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/07_FanAndKeyToBossKey/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BallAndChainSoldiers::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/08_BallAndChainSoldiers/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BombarossaPath_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BombarossaPath_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BombarossaPath_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BombarossaPath_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BombarossaPath::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/09_BombarossaPath/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_HoleToDarknut_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_HoleToDarknut_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_HoleToDarknut_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_HoleToDarknut_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_HoleToDarknut::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/10_HoleToDarknut/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_ToBombarossaPath::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/11_ToBombarossaPath/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_DarknutMiniboss::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/12_DarknutMiniboss/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BombWallInside_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BombWallInside_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BombWallInside_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BombWallInside_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BombWallInside::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/13_BombWallInside/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BombWallOutside_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BombWallOutside_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BombWallOutside_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BombWallOutside_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BombWallOutside::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/14_BombWallOutside/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_CloudJumps_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_CloudJumps_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_CloudJumps_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_CloudJumps_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_CloudJumps::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/15_CloudJumps/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BlockMazeToBossDoor::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/16_BlockMazeToBossDoor/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_CrackedFloorLakitu::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/17_CrackedFloorLakitu/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_HeartPieceBridge::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/18_HeartPieceBridge/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FanBridge_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FanBridge_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_FanBridge_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FanBridge_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_FanBridge::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/19_FanBridge/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_ToFanBridge_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_ToFanBridge_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_ToFanBridge_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_ToFanBridge_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_ToFanBridge::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/20_ToFanBridge/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_RedWarpHall_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_RedWarpHall_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_RedWarpHall_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_RedWarpHall_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_RedWarpHall::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/21_RedWarpHall/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_PlatformCloneRide::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/22_PlatformCloneRide/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_PitCornerAfterKey::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/23_PitCornerAfterKey/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_CrowRide_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_CrowRide_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_CrowRide_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_CrowRide_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_PlatformCrowRide::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/24_PlatformCrowRide/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_GratePlatformRide_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GratePlatformRide_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_GratePlatformRide_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GratePlatformRide_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_GratePlatformRide::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/25_GratePlatformRide/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PotPush_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PotPush_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_PotPush_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PotPush_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_PotPush::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/26_PotPush/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FloormasterLever_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FloormasterLever_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_FloormasterLever_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FloormasterLever_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_FloormasterLever::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/27_FloormasterLever/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_Map_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_Map_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_Map_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_Map_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_Map::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/28_Map/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_CornerToMap_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_CornerToMap_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_CornerToMap_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_CornerToMap_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_CornerToMap::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/29_CornerToMap/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_StairsAfterFloormaster::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/30_StairsAfterFloormaster/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_HoleToKinstoneWizzrobe::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/31_HoleToKinstoneWizzrobe/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_KeyArrowButton_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_KeyArrowButton_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_KeyArrowButton_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_KeyArrowButton_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_KeyArrowButton::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/32_KeyArrowButton/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_GratesTo3F_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GratesTo3F_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_GratesTo3F_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GratesTo3F_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_GratesTo3f::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/33_GratesTo3f/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_SpinyFight_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_SpinyFight_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_SpinyFight_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_SpinyFight_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_SpinyFight::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/34_SpinyFight/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PeahatSwitch_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PeahatSwitch_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_PeahatSwitch_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PeahatSwitch_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_PeahatSwitch::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/35_PeahatSwitch/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_WhirlwindBombarossa::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/36_WhirlwindBombarossa/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_DoorToStalfosFirebar::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/37_DoorToStalfosFirebar/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_StalfosFireborHole_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_StalfosFireborHole_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_StalfosFireborHole_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_StalfosFireborHole_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_StalfosFirebarHole::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/38_StalfosFirebarHole/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_ShortcutDoorButtons::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/39_ShortcutDoorButtons/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_ToPeahatSwitch::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/40_ToPeahatSwitch/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_KinstoneWizzrobeFight::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/41_KinstoneWizzrobeFight/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_GibdoStairs_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GibdoStairs_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_GibdoStairs_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_GibdoStairs_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_GibdoStairs::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/42_GibdoStairs/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_SpikeBarSmallKey::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/43_SpikeBarSmallKey/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_RocCape_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_RocCape_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_RocCape_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_RocCape_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_RocCape::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/44_RocCape/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FireBarGrates_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FireBarGrates_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_FireBarGrates_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_FireBarGrates_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_FireBarGrates::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/45_FireBarGrates/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_PlatformRideBombarossas::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/46_PlatformRideBombarossas/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BridgeAfterDarknut::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/47_BridgeAfterDarknut/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_BridgeSwitchesCloneBlock::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/48_BridgeSwitchesCloneBlock/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_EntranceRoom_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_EntranceRoom_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_EntranceRoom_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_EntranceRoom_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_EntranceRoom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/49_EntranceRoom/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_DarkCompassHall_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_DarkCompassHall_0.bin.lz"
gAreaRoomMap_PalaceOfWinds_DarkCompassHall_1::
	.incbin "assets/gAreaRoomMap_PalaceOfWinds_DarkCompassHall_1.bin.lz"
 gDungeonMaps_PalaceOfWinds_DarkCompassHall::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/50_DarkCompassHall/dungeon_map.bin"
gAreaRoomMap_PalaceOfWindsBoss_0_0::
	.incbin "assets/gAreaRoomMap_PalaceOfWindsBoss_0_0.bin.lz"
unknown_186::
	.incbin "assets/unknown_186.bin"
gAreaTileset_Sanctuary_0_0::
	.incbin "tilesets/gAreaTileset_Sanctuary_0_0.4bpp.lz"
gAreaTileset_Sanctuary_0_1::
	.incbin "tilesets/gAreaTileset_Sanctuary_0_1.4bpp.lz"
gAreaTileset_Sanctuary_0_2::
	.incbin "tilesets/gAreaTileset_Sanctuary_0_2.4bpp.lz"
gAreaMetatiles_Sanctuary_0::
	.incbin "assets/gAreaMetatiles_Sanctuary_0.bin.lz"
gAreaMetatiles_Sanctuary_1::
	.incbin "assets/gAreaMetatiles_Sanctuary_1.bin.lz"
gAreaMetatiles_Sanctuary_2::
	.incbin "assets/gAreaMetatiles_Sanctuary_2.bin.lz"
gAreaMetatiles_Sanctuary_3::
	.incbin "assets/gAreaMetatiles_Sanctuary_3.bin.lz"
gAreaRoomMap_Sanctuary_0_0::
	.incbin "assets/gAreaRoomMap_Sanctuary_0_0.bin.lz"
gAreaRoomMap_Sanctuary_0_1::
	.incbin "assets/gAreaRoomMap_Sanctuary_0_1.bin.lz"
gAreaRoomMap_Sanctuary_1_0::
	.incbin "assets/gAreaRoomMap_Sanctuary_1_0.bin.lz"
gAreaRoomMap_Sanctuary_1_1::
	.incbin "assets/gAreaRoomMap_Sanctuary_1_1.bin.lz"
gAreaRoomMap_Sanctuary_2_0::
	.incbin "assets/gAreaRoomMap_Sanctuary_2_0.bin.lz"
gAreaRoomMap_Sanctuary_2_1::
	.incbin "assets/gAreaRoomMap_Sanctuary_2_1.bin.lz"
gAreaTileset_HyruleCastle_0_0::
	.incbin "tilesets/gAreaTileset_HyruleCastle_0_0.4bpp.lz"
gAreaTileset_HyruleCastle_0_1::
	.incbin "tilesets/gAreaTileset_HyruleCastle_0_1.4bpp.lz"
gAreaTileset_HyruleCastle_0_2::
	.incbin "tilesets/gAreaTileset_HyruleCastle_0_2.4bpp.lz"
gAreaMetatiles_HyruleCastle_0::
	.incbin "assets/gAreaMetatiles_HyruleCastle_0.bin.lz"
gAreaMetatiles_HyruleCastle_1::
	.incbin "assets/gAreaMetatiles_HyruleCastle_1.bin.lz"
gAreaMetatiles_HyruleCastle_2::
	.incbin "assets/gAreaMetatiles_HyruleCastle_2.bin.lz"
gAreaMetatiles_HyruleCastle_3::
	.incbin "assets/gAreaMetatiles_HyruleCastle_3.bin.lz"
gAreaRoomMap_HyruleCastle_0_0::
	.incbin "assets/gAreaRoomMap_HyruleCastle_0_0.bin.lz"
gAreaRoomMap_HyruleCastle_0_1::
	.incbin "assets/gAreaRoomMap_HyruleCastle_0_1.bin.lz"
gAreaRoomMap_HyruleCastle_1_0::
	.incbin "assets/gAreaRoomMap_HyruleCastle_1_0.bin.lz"
gAreaRoomMap_HyruleCastle_1_1::
	.incbin "assets/gAreaRoomMap_HyruleCastle_1_1.bin.lz"
gAreaRoomMap_HyruleCastle_2_0::
	.incbin "assets/gAreaRoomMap_HyruleCastle_2_0.bin.lz"
gAreaRoomMap_HyruleCastle_2_1::
	.incbin "assets/gAreaRoomMap_HyruleCastle_2_1.bin.lz"
gAreaRoomMap_HyruleCastle_3_0::
	.incbin "assets/gAreaRoomMap_HyruleCastle_3_0.bin.lz"
gAreaRoomMap_HyruleCastle_3_1::
	.incbin "assets/gAreaRoomMap_HyruleCastle_3_1.bin.lz"
gAreaRoomMap_HyruleCastle_4_0::
	.incbin "assets/gAreaRoomMap_HyruleCastle_4_0.bin.lz"
gAreaRoomMap_HyruleCastle_4_1::
	.incbin "assets/gAreaRoomMap_HyruleCastle_4_1.bin.lz"
gAreaRoomMap_HyruleCastle_5_0::
	.incbin "assets/gAreaRoomMap_HyruleCastle_5_0.bin.lz"
gAreaRoomMap_HyruleCastle_5_1::
	.incbin "assets/gAreaRoomMap_HyruleCastle_5_1.bin.lz"
gAreaRoomMap_HyruleCastle_6_0::
	.incbin "assets/gAreaRoomMap_HyruleCastle_6_0.bin.lz"
gAreaRoomMap_HyruleCastle_6_1::
	.incbin "assets/gAreaRoomMap_HyruleCastle_6_1.bin.lz"
unknown_187::
	.incbin "assets/unknown_187.bin"
gAreaTileset_SanctuaryEntrance_0_0::
	.incbin "tilesets/gAreaTileset_SanctuaryEntrance_0_0.4bpp.lz"
gAreaTileset_SanctuaryEntrance_0_1::
	.incbin "tilesets/gAreaTileset_SanctuaryEntrance_0_1.4bpp.lz"
gAreaTileset_SanctuaryEntrance_0_2::
	.incbin "tilesets/gAreaTileset_SanctuaryEntrance_0_2.4bpp.lz"
gAreaMetatiles_SanctuaryEntrance_0::
	.incbin "assets/gAreaMetatiles_SanctuaryEntrance_0.bin.lz"
gAreaMetatiles_SanctuaryEntrance_1::
	.incbin "assets/gAreaMetatiles_SanctuaryEntrance_1.bin.lz"
gAreaMetatiles_SanctuaryEntrance_2::
	.incbin "assets/gAreaMetatiles_SanctuaryEntrance_2.bin.lz"
gAreaMetatiles_SanctuaryEntrance_3::
	.incbin "assets/gAreaMetatiles_SanctuaryEntrance_3.bin.lz"
gAreaRoomMap_SanctuaryEntrance_0_0::
	.incbin "assets/gAreaRoomMap_SanctuaryEntrance_0_0.bin.lz"
gAreaRoomMap_SanctuaryEntrance_0_1::
	.incbin "assets/gAreaRoomMap_SanctuaryEntrance_0_1.bin.lz"
gAreaTileset_DarkHyruleCastle_1FEntrance_0::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastle_1FEntrance_0.4bpp.lz"
gAreaTileset_DarkHyruleCastle_1FEntrance_1::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastle_1FEntrance_1.4bpp.lz"
gAreaTileset_DarkHyruleCastle_1FEntrance_2::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastle_1FEntrance_2.4bpp.lz"
gAreaMetatiles_DarkHyruleCastle_1FEntrance::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastle_1FEntrance.bin.lz"
gAreaMetatiles_DarkHyruleCastle_3FTopLeftTower::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastle_3FTopLeftTower.bin.lz"
gAreaMetatiles_DarkHyruleCastle_3FTopRightTower::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastle_3FTopRightTower.bin.lz"
gAreaMetatiles_DarkHyruleCastle_3FBottomLeftTower::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastle_3FBottomLeftTower.bin.lz"
gAreaTileset_DarkHyruleCastleBridge_0_0::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastleBridge_0_0.4bpp.lz"
gAreaTileset_DarkHyruleCastleBridge_0_1::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastleBridge_0_1.4bpp.lz"
gAreaTileset_DarkHyruleCastleBridge_0_2::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastleBridge_0_2.4bpp.lz"
gAreaMetatiles_DarkHyruleCastleBridge_0::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastleBridge_0.bin.lz"
gAreaMetatiles_DarkHyruleCastleBridge_1::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastleBridge_1.bin.lz"
gAreaMetatiles_DarkHyruleCastleBridge_2::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastleBridge_2.bin.lz"
gAreaMetatiles_DarkHyruleCastleBridge_3::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastleBridge_3.bin.lz"
gAreaTileset_Vaati3_0_0::
	.incbin "tilesets/gAreaTileset_Vaati3_0_0.4bpp.lz"
gAreaTileset_Vaati3_0_1::
	.incbin "tilesets/gAreaTileset_Vaati3_0_1.4bpp.lz"
gAreaTileset_Vaati3_0_2::
	.incbin "tilesets/gAreaTileset_Vaati3_0_2.4bpp.lz"
gAreaMetatiles_Vaati3_0::
	.incbin "assets/gAreaMetatiles_Vaati3_0.bin.lz"
gAreaMetatiles_Vaati3_1::
	.incbin "assets/gAreaMetatiles_Vaati3_1.bin.lz"
gAreaMetatiles_Vaati3_2::
	.incbin "assets/gAreaMetatiles_Vaati3_2.bin.lz"
gAreaMetatiles_Vaati3_3::
	.incbin "assets/gAreaMetatiles_Vaati3_3.bin.lz"
gAreaTileset_Vaati2_0_0::
	.incbin "tilesets/gAreaTileset_Vaati2_0_0.4bpp.lz"
gAreaTileset_Vaati2_0_1::
	.incbin "tilesets/gAreaTileset_Vaati2_0_1.4bpp.lz"
gAreaTileset_Vaati2_0_2::
	.incbin "tilesets/gAreaTileset_Vaati2_0_2.4bpp.lz"
gAreaMetatiles_Vaati2_0::
	.incbin "assets/gAreaMetatiles_Vaati2_0.bin.lz"
gAreaMetatiles_Vaati2_1::
	.incbin "assets/gAreaMetatiles_Vaati2_1.bin.lz"
gAreaMetatiles_Vaati2_2::
	.incbin "assets/gAreaMetatiles_Vaati2_2.bin.lz"
gAreaMetatiles_Vaati2_3::
	.incbin "assets/gAreaMetatiles_Vaati2_3.bin.lz"
gAreaTileset_VaatisArms_0_0::
	.incbin "tilesets/gAreaTileset_VaatisArms_0_0.4bpp.lz"
gAreaTileset_VaatisArms_0_1::
	.incbin "tilesets/gAreaTileset_VaatisArms_0_1.4bpp.lz"
gAreaTileset_VaatisArms_0_2::
	.incbin "tilesets/gAreaTileset_VaatisArms_0_2.4bpp.lz"
gAreaMetatiles_VaatisArms_0::
	.incbin "assets/gAreaMetatiles_VaatisArms_0.bin.lz"
gAreaMetatiles_VaatisArms_1::
	.incbin "assets/gAreaMetatiles_VaatisArms_1.bin.lz"
gAreaMetatiles_VaatisArms_2::
	.incbin "assets/gAreaMetatiles_VaatisArms_2.bin.lz"
gAreaMetatiles_VaatisArms_3::
	.incbin "assets/gAreaMetatiles_VaatisArms_3.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FEntrance_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FEntrance_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FEntrance_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FEntrance_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fEntrance::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/00_1fEntrance/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3FTopLeftTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FTopLeftTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3FTopLeftTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FTopLeftTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fTopLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/01_3fTopLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3FTopRightTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FTopRightTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3FTopRightTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FTopRightTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fTopRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/02_3fTopRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3FBottomLeftTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FBottomLeftTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3FBottomLeftTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FBottomLeftTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fBottomLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/03_3fBottomLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3FBottomRightTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FBottomRightTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3FBottomRightTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FBottomRightTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fBottomRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/04_3fBottomRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fKeatonHallToVaati::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/05_3fKeatonHallToVaati/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3FTripleDarknut_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FTripleDarknut_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3FTripleDarknut_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FTripleDarknut_1.bin.lz"

 gDungeonMaps_DarkHyruleCastle_3fTripleDarknut::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/06_3fTripleDarknut/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FTopLeftTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopLeftTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FTopLeftTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopLeftTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/07_2fTopLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FTopLeftCorner_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopLeftCorner_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FTopLeftCorner_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopLeftCorner_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopLeftCorner::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/08_2fTopLeftCorner/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBossKey_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBossKey_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBossKey_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBossKey_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBossKey::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/09_2fBossKey/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBlueWarp_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBlueWarp_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBlueWarp_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBlueWarp_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBlueWarp::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/10_2fBlueWarp/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerGhini_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerGhini_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerGhini_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerGhini_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopRightCornerGhini::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/11_2fTopRightCornerGhini/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerTorches_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerTorches_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerTorches_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopRightCornerTorches_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopRightCornerTorches::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/12_2fTopRightCornerTorches/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FTopRightTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopRightTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FTopRightTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopRightTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/13_2fTopRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FTopLeftDarknut_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopLeftDarknut_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FTopLeftDarknut_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopLeftDarknut_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopLeftDarknut::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/14_2fTopLeftDarknut/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FSparks_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FSparks_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FSparks_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FSparks_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fSparks::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/15_2fSparks/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FTopRightDarknuts_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopRightDarknuts_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FTopRightDarknuts_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FTopRightDarknuts_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopRightDarknuts::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/16_2fTopRightDarknuts/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FLeft_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FLeft_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FLeft_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FLeft_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fLeft::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/17_2fLeft/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FRight_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FRight_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FRight_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FRight_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fRight::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/18_2fRight/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftDarknuts_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftDarknuts_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftDarknuts_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftDarknuts_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomLeftDarknuts::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/19_2fBottomLeftDarknuts/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBossDoor_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBossDoor_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBossDoor_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBossDoor_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBossDoor::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/20_2fBossDoor/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBottomRightDarknut_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomRightDarknut_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBottomRightDarknut_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomRightDarknut_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomRightDarknut::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/21_2fBottomRightDarknut/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCornerPuzzle_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCornerPuzzle_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCornerPuzzle_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCornerPuzzle_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomLeftCornerPuzzle::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/22_2fBottomLeftCornerPuzzle/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FEntrance_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FEntrance_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FEntrance_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FEntrance_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fEntrance::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/23_2fEntrance/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCorner_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCorner_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCorner_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftCorner_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomRightCorner::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/24_2fBottomRightCorner/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/25_2fBottomLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftGhini_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftGhini_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBottomLeftGhini_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomLeftGhini_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomLeftGhini::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/26_2fBottomLeftGhini/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3FTopRightTower7_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FTopRightTower7_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3FTopRightTower7_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FTopRightTower7_1.bin.lz"
unknown_215::
	.incbin "assets/unknown_215.bin"
gAreaRoomMap_DarkHyruleCastle_B1Entrance_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Entrance_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Entrance_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Entrance_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Entrance::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/28_B1Entrance/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2FBottomRightTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomRightTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2FBottomRightTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_2FBottomRightTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/29_2fBottomRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FTopLeftTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FTopLeftTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FTopLeftTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FTopLeftTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fTopLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/30_1fTopLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FThroneRoom_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FThroneRoom_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FThroneRoom_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FThroneRoom_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fThroneRoom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/31_1fThroneRoom/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FCompass_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FCompass_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FCompass_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FCompass_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fCompass::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/32_1fCompass/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FTopRightTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FTopRightTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FTopRightTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FTopRightTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fTopRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/33_1fTopRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FBeforeThrone_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FBeforeThrone_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FBeforeThrone_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FBeforeThrone_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fBeforeThrone::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/34_1fBeforeThrone/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FLoopTopLeft_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopTopLeft_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FLoopTopLeft_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopTopLeft_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopTopLeft::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/35_1fLoopTopLeft/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FLoopTop_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopTop_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FLoopTop_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopTop_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopTop::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/36_1fLoopTop/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FLoopTopRight_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopTopRight_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FLoopTopRight_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopTopRight_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopTopRight::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/37_1fLoopTopRight/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FLoopLeft_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopLeft_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FLoopLeft_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopLeft_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopLeft::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/38_1fLoopLeft/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FLoopRight_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopRight_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FLoopRight_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopRight_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopRight::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/39_1fLoopRight/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FLoopBottomLeft_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopBottomLeft_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FLoopBottomLeft_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopBottomLeft_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopBottomLeft::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/40_1fLoopBottomLeft/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FLoopBottom_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopBottom_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FLoopBottom_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopBottom_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopBottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/41_1fLoopBottom/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FLoopBottomRight_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopBottomRight_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FLoopBottomRight_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FLoopBottomRight_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopBottomRight::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/42_1fLoopBottomRight/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FBottomLeftTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FBottomLeftTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FBottomLeftTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FBottomLeftTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fBottomLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/43_1fBottomLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1FBottomRightTower_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FBottomRightTower_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1FBottomRightTower_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_1FBottomRightTower_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fBottomRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/44_1fBottomRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1BelowThrone::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/45_B1BelowThrone/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1BelowCompass::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/46_B1BelowCompass/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1BeforeThrone::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/47_B1BeforeThrone/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1ToPrison_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1ToPrison_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1ToPrison_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1ToPrison_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1ToPrison::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/48_B1ToPrison/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1BombWall_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1BombWall_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1BombWall_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1BombWall_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1BombWall::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/49_B1BombWall/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Keatons_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Keatons_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Keatons_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Keatons_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Keatons::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/50_B1Keatons/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1ToPrisonFirebar::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/51_B1ToPrisonFirebar/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Cannons_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Cannons_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Cannons_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Cannons_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Cannons::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/52_B1Cannons/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Left_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Left_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Left_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Left_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Left::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/53_B1Left/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Right_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Right_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Right_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Right_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Right::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/54_B1Right/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Map_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Map_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Map_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B1Map_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Map::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/55_B1Map/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B2ToPrison_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B2ToPrison_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B2ToPrison_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B2ToPrison_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B2ToPrison::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/56_B2ToPrison/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B2Prison_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B2Prison_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B2Prison_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B2Prison_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B2Prison::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/57_B2Prison/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B2Dropdown_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B2Dropdown_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B2Dropdown_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_B2Dropdown_1.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B2Dropdown::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/58_B2Dropdown/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati9_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati9_0.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati9_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastle_3FKeatonHallToVaati9_1.bin.lz"
unknown_247::
	.incbin "assets/unknown_247.bin"
gAreaRoomMap_DarkHyruleCastleBridge_0_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleBridge_0_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleBridge_0_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleBridge_0_1.bin.lz"
unknown_248::
	.incbin "assets/unknown_248.bin"
gAreaRoomMap_Vaati3_0_0::
	.incbin "assets/gAreaRoomMap_Vaati3_0_0.bin.lz"
gAreaRoomMap_Vaati3_0_1::
	.incbin "assets/gAreaRoomMap_Vaati3_0_1.bin.lz"
gAreaRoomMap_Vaati3_1_0::
	.incbin "assets/gAreaRoomMap_Vaati3_1_0.bin.lz"
gAreaRoomMap_Vaati3_1_1::
	.incbin "assets/gAreaRoomMap_Vaati3_1_1.bin.lz"
gAreaRoomMap_Vaati2_0_0::
	.incbin "assets/gAreaRoomMap_Vaati2_0_0.bin.lz"
gAreaRoomMap_Vaati2_0_1::
	.incbin "assets/gAreaRoomMap_Vaati2_0_1.bin.lz"
gAreaRoomMap_VaatisArms_0_0::
	.incbin "assets/gAreaRoomMap_VaatisArms_0_0.bin.lz"
gAreaRoomMap_VaatisArms_0_1::
	.incbin "assets/gAreaRoomMap_VaatisArms_0_1.bin.lz"
gAreaRoomMap_VaatisArms_1_0::
	.incbin "assets/gAreaRoomMap_VaatisArms_1_0.bin.lz"
gAreaRoomMap_VaatisArms_1_1::
	.incbin "assets/gAreaRoomMap_VaatisArms_1_1.bin.lz"
gAreaRoomMap_VaatisArms_2_0::
	.incbin "assets/gAreaRoomMap_VaatisArms_2_0.bin.lz"
gAreaRoomMap_VaatisArms_2_1::
	.incbin "assets/gAreaRoomMap_VaatisArms_2_1.bin.lz"
gAreaTileset_Vaati2_0_3::
	.incbin "tilesets/gAreaTileset_Vaati2_0_3.bin.lz"
gAreaTileset_DarkHyruleCastleOutside_0_0::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastleOutside_0_0.4bpp.lz"
gAreaTileset_DarkHyruleCastleOutside_0_1::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastleOutside_0_1.4bpp.lz"
gAreaTileset_DarkHyruleCastleOutside_0_2::
	.incbin "tilesets/gAreaTileset_DarkHyruleCastleOutside_0_2.4bpp.lz"
gAreaMetatiles_DarkHyruleCastleOutside_0::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastleOutside_0.bin.lz"
gAreaMetatiles_DarkHyruleCastleOutside_1::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastleOutside_1.bin.lz"
gAreaMetatiles_DarkHyruleCastleOutside_2::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastleOutside_2.bin.lz"
gAreaMetatiles_DarkHyruleCastleOutside_3::
	.incbin "assets/gAreaMetatiles_DarkHyruleCastleOutside_3.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_0_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_0_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_0_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_0_1.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_1_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_1_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_1_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_1_1.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_2_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_2_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_2_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_2_1.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_3_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_3_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_3_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_3_1.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_4_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_4_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_4_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_4_1.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_5_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_5_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_5_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_5_1.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_6_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_6_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_6_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_6_1.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_7_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_7_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_7_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_7_1.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_8_0::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_8_0.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_8_1::
	.incbin "assets/gAreaRoomMap_DarkHyruleCastleOutside_8_1.bin.lz"
gAreaRoomMap_47_0_0::
	.incbin "assets/gAreaRoomMap_47_0_0.bin.lz"
gAreaRoomMap_47_0_1::
	.incbin "assets/gAreaRoomMap_47_0_1.bin.lz"
gAreaRoomMap_47_1_0::
	.incbin "assets/gAreaRoomMap_47_1_0.bin.lz"
gAreaRoomMap_47_1_1::
	.incbin "assets/gAreaRoomMap_47_1_1.bin.lz"
gAreaRoomMap_47_2_0::
	.incbin "assets/gAreaRoomMap_47_2_0.bin.lz"
gAreaRoomMap_47_2_1::
	.incbin "assets/gAreaRoomMap_47_2_1.bin.lz"
gAreaRoomMap_45_0_0::
	.incbin "assets/gAreaRoomMap_45_0_0.bin.lz"
gAreaRoomMap_45_0_1::
	.incbin "assets/gAreaRoomMap_45_0_1.bin.lz"
gAreaRoomMap_46_0_0::
	.incbin "assets/gAreaRoomMap_46_0_0.bin.lz"
gAreaRoomMap_46_0_1::
	.incbin "assets/gAreaRoomMap_46_0_1.bin.lz"
gAreaRoomMap_46_1_0::
	.incbin "assets/gAreaRoomMap_46_1_0.bin.lz"
gAreaRoomMap_46_1_1::
	.incbin "assets/gAreaRoomMap_46_1_1.bin.lz"
gAreaRoomMap_46_2_0::
	.incbin "assets/gAreaRoomMap_46_2_0.bin.lz"
gAreaRoomMap_46_2_1::
	.incbin "assets/gAreaRoomMap_46_2_1.bin.lz"
gAreaRoomMap_46_3_0::
	.incbin "assets/gAreaRoomMap_46_3_0.bin.lz"
gAreaRoomMap_46_3_1::
	.incbin "assets/gAreaRoomMap_46_3_1.bin.lz"
gAreaRoomMap_46_4_0::
	.incbin "assets/gAreaRoomMap_46_4_0.bin.lz"
gAreaRoomMap_46_4_1::
	.incbin "assets/gAreaRoomMap_46_4_1.bin.lz"
gAreaRoomMap_46_5_0::
	.incbin "assets/gAreaRoomMap_46_5_0.bin.lz"
gAreaRoomMap_46_5_1::
	.incbin "assets/gAreaRoomMap_46_5_1.bin.lz"
gAreaRoomMap_46_6_0::
	.incbin "assets/gAreaRoomMap_46_6_0.bin.lz"
gAreaRoomMap_46_6_1::
	.incbin "assets/gAreaRoomMap_46_6_1.bin.lz"
gAreaRoomMap_46_7_0::
	.incbin "assets/gAreaRoomMap_46_7_0.bin.lz"
gAreaRoomMap_46_7_1::
	.incbin "assets/gAreaRoomMap_46_7_1.bin.lz"
gAreaRoomMap_08107870_0::
	.incbin "assets/gAreaRoomMap_08107870_0.bin.lz"
gAreaRoomMap_08107870_1::
	.incbin "assets/gAreaRoomMap_08107870_1.bin.lz"
gAreaRoomMap_4D_0_0::
	.incbin "assets/gAreaRoomMap_4D_0_0.bin.lz"
gAreaRoomMap_4D_0_1::
	.incbin "assets/gAreaRoomMap_4D_0_1.bin.lz"
gAreaRoomMap_57_0_0::
	.incbin "assets/gAreaRoomMap_57_0_0.bin.lz"
gAreaRoomMap_57_0_1::
	.incbin "assets/gAreaRoomMap_57_0_1.bin.lz"
gAreaRoomMap_5F_0_0::
	.incbin "assets/gAreaRoomMap_5F_0_0.bin.lz"
gAreaRoomMap_5F_0_1::
	.incbin "assets/gAreaRoomMap_5F_0_1.bin.lz"
gAreaRoomMap_67_0_0::
	.incbin "assets/gAreaRoomMap_67_0_0.bin.lz"
gAreaRoomMap_67_0_1::
	.incbin "assets/gAreaRoomMap_67_0_1.bin.lz"
gAreaRoomMap_6F_0_0::
	.incbin "assets/gAreaRoomMap_6F_0_0.bin.lz"
gAreaRoomMap_6F_0_1::
	.incbin "assets/gAreaRoomMap_6F_0_1.bin.lz"
gAreaRoomMap_77_0_0::
	.incbin "assets/gAreaRoomMap_77_0_0.bin.lz"
gAreaRoomMap_77_0_1::
	.incbin "assets/gAreaRoomMap_77_0_1.bin.lz"
gAreaRoomMap_7F_0_0::
	.incbin "assets/gAreaRoomMap_7F_0_0.bin.lz"
gAreaRoomMap_7F_0_1::
	.incbin "assets/gAreaRoomMap_7F_0_1.bin.lz"
gAreaRoomMap_87_0_0::
	.incbin "assets/gAreaRoomMap_87_0_0.bin.lz"
gAreaRoomMap_87_0_1::
	.incbin "assets/gAreaRoomMap_87_0_1.bin.lz"
gAreaRoomMap_8F_0_0::
	.incbin "assets/gAreaRoomMap_8F_0_0.bin.lz"
gAreaRoomMap_8F_0_1::
	.incbin "assets/gAreaRoomMap_8F_0_1.bin.lz"
