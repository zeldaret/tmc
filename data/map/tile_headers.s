	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

	.include "map_offsets.inc"

gAreaTiles_MinishWoods:: @ 081026AC
	tiles_bottom offset_gAreaTileSet_MinishWoods_bottom, 0x4000, 1
	tiles_top offset_gAreaTileSet_MinishWoods_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_MinishWoods_bottom, 0x1000, 1
	tile_types_top offset_gAreaTileSetTypes_MinishWoods_top, 0xFFC, 1, 1

gAreaTiles_LakeHylia:: @ 081026DC
	tiles_bottom offset_gAreaTileSet_LakeHylia_bottom, 0x4000, 1
	tiles_top offset_gAreaTileSet_LakeHylia_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_LakeHylia_bottom, 0x1000, 1
	tile_types_top offset_gAreaTileSetTypes_LakeHylia_top, 0xFFC, 1, 1

gAreaTiles_CastorWilds:: @ 0810270C
	tiles_bottom offset_gAreaTileSet_CastorWilds_bottom, 0x4000, 1
	tiles_top offset_gAreaTileSet_CastorWilds_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_CastorWilds_bottom, 0x1000, 1
	tile_types_top offset_gAreaTileSetTypes_CastorWilds_top, 0xFFC, 1, 1

gAreaTiles_HyruleTown:: @ 0810273C
	tiles_bottom offset_gAreaTileSet_HyruleTown_bottom, 0x4000, 1
	tiles_top offset_gAreaTileSet_HyruleTown_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_HyruleTown_bottom, 0x1000, 1
	tile_types_top offset_gAreaTileSetTypes_HyruleTown_top, 0xFFC, 1, 1

gAreaTiles_MtCrenel:: @ 0810276C
	tiles_bottom offset_gAreaTileSet_MtCrenel_bottom, 0x4000, 1
	tiles_top offset_gAreaTileSet_MtCrenel_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_MtCrenel_bottom, 0x1000, 1
	tile_types_top offset_gAreaTileSetTypes_MtCrenel_top, 0xFFC, 1, 1

gAreaTiles_HyruleField:: @ 0810279C
	tiles_bottom offset_gAreaTileSet_HyruleField_bottom, 0x4000, 1
	tiles_top offset_gAreaTileSet_HyruleField_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_HyruleField_bottom, 0x1000, 1
	tile_types_top offset_gAreaTileSetTypes_HyruleField_top, 0xFFC, 1, 1

gAreaTiles_CastleGarden:: @ 081027CC
	tiles_bottom offset_gAreaTileSet_CastleGarden_bottom, 0x3000, 1
	tiles_top offset_gAreaTileSet_CastleGarden_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_CastleGarden_bottom, 0xC00, 1
	tile_types_top offset_gAreaTileSetTypes_CastleGarden_top, 0xFFC, 1, 1

gAreaTiles_CloudTops:: @ 081027FC
	tiles_bottom offset_gAreaTileSet_CloudTops_bottom, 0x3FB0, 1
	tiles_top offset_gAreaTileSet_CloudTops_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_CloudTops_bottom, 0xFEC, 1
	tile_types_top offset_gAreaTileSetTypes_CloudTops_top, 0xFFC, 1, 1

gAreaTiles_RoyalValley:: @ 0810282C
	tiles_bottom offset_gAreaTileSet_RoyalValley_bottom, 0x4000, 1
	tiles_top offset_gAreaTileSet_RoyalValley_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_RoyalValley_bottom, 0x1000, 1
	tile_types_top offset_gAreaTileSetTypes_RoyalValley_top, 0xFFC, 1, 1

gAreaTiles_Beanstalks:: @ 0810285C
	tiles_bottom offset_gAreaTileSet_Beanstalks_bottom, 0x5A8, 1
	tile_types_bottom offset_gAreaTileSetTypes_Beanstalks_bottom, 0x16A, 1, 1

gAreaTiles_CrenelCaves:: @ 08102874
	tiles_bottom offset_gAreaTileSet_MinishHouseInteriors_bottom, 0x3F80, 1
	tiles_top offset_gAreaTileSet_MinishHouseInteriors_top, 0x3F40, 1
	tile_types_bottom offset_gAreaTileSetTypes_MinishHouseInteriors_bottom, 0xFE0, 1
	tile_types_top offset_gAreaTileSetTypes_MinishHouseInteriors_top, 0xFD0, 1, 1

gAreaTiles_GreatFairies:: @ 081028A4
	tiles_bottom offset_gAreaTileSet_GreatFairies_bottom, 0x17A8, 1
	tiles_top offset_gAreaTileSet_GreatFairies_top, 0x1070, 1
	tile_types_bottom offset_gAreaTileSetTypes_GreatFairies_bottom, 0x5EA, 1
	tile_types_top offset_gAreaTileSetTypes_GreatFairies_top, 0x41C, 1, 1

gAreaTiles_MinishVillage:: @ 081028D4
	tiles_bottom offset_gAreaTileSet_MinishVillage_bottom, 0x35A8, 1
	tiles_top offset_gAreaTileSet_MinishVillage_top, 0x3228, 1
	tile_types_bottom offset_gAreaTileSetTypes_MinishVillage_bottom, 0xD6A, 1
	tile_types_top offset_gAreaTileSetTypes_MinishVillage_top, 0xC8A, 1, 1

gAreaTiles_MelarisMine:: @ 08102904
	tiles_bottom offset_gAreaTileSet_MelarisMine_bottom, 0x27C0, 1
	tiles_top offset_gAreaTileSet_MelarisMine_top, 0x308, 1
	tile_types_bottom offset_gAreaTileSetTypes_MelarisMine_bottom, 0x9F0, 1
	tile_types_top offset_gAreaTileSetTypes_MelarisMine_top, 0xC2, 1, 1

gAreaTiles_MnishPaths1:: @ 08102934
	tiles_bottom offset_gAreaTileSet_MinishPaths_bottom, 0x1420, 1
	tile_types_bottom offset_gAreaTileSetTypes_MinishPaths_bottom, 0x508, 1, 1

gAreaTiles_CrenelMinishPaths:: @ 0810294C
	tiles_bottom offset_gAreaTileSet_CrenelMinishPaths_bottom, 0x1EB8, 1
	tile_types_bottom offset_gAreaTileSetTypes_CrenelMinishPaths_bottom, 0x7AE, 1, 1

gAreaTiles_MinishHouseInteriors:: @ 08102964
	tiles_bottom offset_gAreaTileSet_MinishHouseInteriors_bottom, 0x3F80, 1
	tiles_top offset_gAreaTileSet_MinishHouseInteriors_top, 0x3F40, 1
	tile_types_bottom offset_gAreaTileSetTypes_MinishHouseInteriors_bottom, 0xFE0, 1
	tile_types_top offset_gAreaTileSetTypes_MinishHouseInteriors_top, 0xFD0, 1, 1

gAreaTiles_HouseInteriors1:: @ 08102994
	tiles_bottom offset_gAreaTileSet_HouseInteriors1_bottom, 0x3188, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_HouseInteriors1_bottom, 0xC62, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_HouseInteriors2:: @ 081029C4
	tiles_bottom offset_gAreaTileSet_HouseInteriors2_bottom, 0x33A0, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_HouseInteriors2_bottom, 0xCE8, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_HouseInteriors4:: @ 081029F4
	tiles_bottom offset_gAreaTileSet_HouseInteriors4_bottom, 0x33A0, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_HouseInteriors4_bottom, 0xCE8, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_HouseInteriors3:: @ 08102A24
	tiles_bottom offset_gAreaTileSet_HouseInteriors3_bottom, 0x2F20, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_HouseInteriors3_bottom, 0xBC8, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_TreeInteriors:: @ 08102A54
	tiles_bottom offset_gAreaTileSet_TreeInteriors_bottom, 0x3000, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_TreeInteriors_bottom, 0xC00, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_Dojos:: @ 08102A84
	tiles_bottom offset_gAreaTileSet_Dojos_bottom, 0x33A0, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_Dojos_bottom, 0xCE8, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_MinishCracks:: @ 08102AB4
	tiles_bottom offset_gAreaTileSet_MinishCracks_bottom, 0x3180, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_MinishCracks_bottom, 0xC60, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_ArmosInteriors:: @ 08102AE4
	tiles_bottom offset_gAreaTileSet_ArmosInteriors_bottom, 0xC50, 1
	tiles_top offset_gAreaTileSet_ArmosInteriors_top, 0xC50, 1
	tile_types_bottom offset_gAreaTileSetTypes_ArmosInteriors_bottom, 0x314, 1
	tile_types_top offset_gAreaTileSetTypes_ArmosInteriors_top, 0x314, 1, 1

gAreaTiles_MinishRafters:: @ 08102B14
	tiles_bottom offset_gAreaTileSet_MinishRafters_bottom, 0x1A30, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_MinishRafters_bottom, 0x68C, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_GoronCave:: @ 08102B44
	tiles_bottom offset_gAreaTileSet_GoronCave_bottom, 0x3F80, 1
	tiles_top offset_gAreaTileSet_GoronCave_top, 0x3400, 1
	tile_types_bottom offset_gAreaTileSetTypes_GoronCave_bottom, 0xFE0, 1
	tile_types_top offset_gAreaTileSetTypes_GoronCave_top, 0xD00, 1, 1

gAreaTiles_WindTribeTower:: @ 08102B74
	tiles_bottom offset_gAreaTileSet_WindTribeTower_bottom, 0x2EB0, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_WindTribeTower_bottom, 0xBAC, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_WindTribeTowerRoof:: @ 08102BA4
	tiles_bottom offset_gAreaTileSet_WindTribeTowerRoof_bottom, 0xBC0, 1
	tiles_top offset_gAreaTileSet_WindTribeTowerRoof_top, 0xBC0, 1
	tile_types_bottom offset_gAreaTileSetTypes_WindTribeTowerRoof_bottom, 0x2F0, 1
	tile_types_top offset_gAreaTileSetTypes_WindTribeTowerRoof_top, 0x2F0, 1, 1

gAreaTiles_MinishCaves:: @ 08102BD4
	tiles_bottom offset_gAreaTileSet_MinishCaves_bottom, 0x3F80, 1
	tiles_top offset_gAreaTileSet_MinishCaves_top, 0x3F80, 1
	tile_types_bottom offset_gAreaTileSetTypes_MinishCaves_bottom, 0xFE0, 1
	tile_types_top offset_gAreaTileSetTypes_MinishCaves_top, 0xFE0, 1, 1

gAreaTiles_CastleGardenMinishHoles:: @ 08102C04
	tiles_bottom offset_gAreaTileSet_CastleGardenMinishHoles_bottom, 0x13A8, 1
	tiles_top offset_gAreaTileSet_CastleGardenMinishHoles_top, 0x1680, 1
	tile_types_bottom offset_gAreaTileSetTypes_CastleGardenMinishHoles_bottom, 0x4EA, 1
	tile_types_top offset_gAreaTileSetTypes_CastleGardenMinishHoles_top, 0x5A0, 1, 1

gAreaTiles_EzloCutscene:: @ 08102C34
	tiles_bottom offset_gAreaTileSet_EzloCutscene_bottom, 0x1A20, 1
	tiles_top offset_gAreaTileSet_HouseInteriors1_top, 0x3FF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_EzloCutscene_bottom, 0x688, 1
	tile_types_top offset_gAreaTileSetTypes_HouseInteriors1_top, 0xFFC, 1, 1

gAreaTiles_HyruleTownUnderground:: @ 08102C64
	tiles_bottom offset_gAreaTileSet_40_bottom, 0x3E80, 1
	tiles_top offset_gAreaTileSet_40_top, 0x3610, 1
	tile_types_bottom offset_gAreaTileSetTypes_40_bottom, 0xFA0, 1
	tile_types_top offset_gAreaTileSetTypes_40_top, 0xD84, 1, 1

gAreaTiles_DeepwoodShrine:: @ 08102C94
	tiles_bottom offset_gAreaTileSet_DeepwoodShrine_bottom, 0x3B28, 1
	tiles_top offset_gAreaTileSet_DeepwoodShrine_top, 0x3620, 1
	tile_types_bottom offset_gAreaTileSetTypes_DeepwoodShrine_bottom, 0xECA, 1
	tile_types_top offset_gAreaTileSetTypes_DeepwoodShrine_top, 0xD88, 1, 1

gAreaTiles_DeepwoodShrineBoss:: @ 08102CC4
	tiles_bottom offset_gAreaTileSet_DeepwoodShrineBoss_bottom, 0x3620, 1
	tiles_top offset_gAreaTileSet_DeepwoodShrineBoss_top, 0x11F8, 1
	tile_types_bottom offset_gAreaTileSetTypes_DeepwoodShrineBoss_bottom, 0xD88, 1
	tile_types_top offset_gAreaTileSetTypes_DeepwoodShrineBoss_top, 0x47E, 1, 1

gAreaTiles_DeepwoodShrineEntry:: @ 08102CF4
	tiles_bottom offset_gAreaTileSet_DeepwoodShrineEntry_bottom, 0xD08, 1
	tiles_top offset_gAreaTileSet_DeepwoodShrineEntry_top, 0x9F8, 1
	tile_types_bottom offset_gAreaTileSetTypes_DeepwoodShrineEntry_bottom, 0x342, 1
	tile_types_top offset_gAreaTileSetTypes_DeepwoodShrineEntry_top, 0x27E, 1, 1

gAreaTiles_CaveOfFlames:: @ 08102D24
	tiles_bottom offset_gAreaTileSet_CaveOfFlames_bottom, 0x3B08, 1
	tiles_top offset_gAreaTileSet_CaveOfFlames_top, 0x3F28, 1
	tile_types_bottom offset_gAreaTileSetTypes_CaveOfFlames_bottom, 0xEC2, 1
	tile_types_top offset_gAreaTileSetTypes_CaveOfFlames_top, 0xFCA, 1, 1

gAreaTiles_CaveOfFlamesBoss:: @ 08102D54
	tiles_bottom offset_gAreaTileSet_CaveOfFlamesBoss_bottom, 0x3B08, 1
	tiles_top offset_gAreaTileSet_CaveOfFlamesBoss_top, 0x3610, 1
	tile_types_bottom offset_gAreaTileSetTypes_CaveOfFlamesBoss_bottom, 0xEC2, 1
	tile_types_top offset_gAreaTileSetTypes_CaveOfFlamesBoss_top, 0xD84, 1, 1

gAreaTiles_FortressOfWinds:: @ 08102D84
	tiles_bottom offset_gAreaTileSet_CastorDarknut_bottom, 0x3868, 1
	tiles_top offset_gAreaTileSet_CastorDarknut_top, 0x3850, 1
	tile_types_bottom offset_gAreaTileSetTypes_CastorDarknut_bottom, 0xE1A, 1
	tile_types_top offset_gAreaTileSetTypes_CastorDarknut_top, 0xE14, 1, 1

gAreaTiles_FortressOfWindsTop:: @ 08102DB4
	tiles_bottom offset_gAreaTileSet_FortressOfWindsTop_bottom, 0x1440, 1
	tiles_top offset_gAreaTileSet_FortressOfWindsTop_top, 0x1368, 1
	tile_types_bottom offset_gAreaTileSetTypes_FortressOfWindsTop_bottom, 0x510, 1
	tile_types_top offset_gAreaTileSetTypes_FortressOfWindsTop_top, 0x4DA, 1, 1

gAreaTiles_InnerMazaal:: @ 08102DE4
	tiles_bottom offset_gAreaTileSet_InnerMazaal_bottom, 0x3C00, 1
	tiles_top offset_gAreaTileSet_InnerMazaal_top, 0x3E70, 1
	tile_types_bottom offset_gAreaTileSetTypes_InnerMazaal_bottom, 0xF00, 1
	tile_types_top offset_gAreaTileSetTypes_InnerMazaal_top, 0xF9C, 1, 1

gAreaTiles_TempleOfDroplets:: @ 08102E14
	tiles_bottom offset_gAreaTileSet_TempleOfDroplets_bottom, 0x3D68, 1
	tiles_top offset_gAreaTileSet_TempleOfDroplets_top, 0x4000, 1
	tile_types_bottom offset_gAreaTileSetTypes_TempleOfDroplets_bottom, 0xF5A, 1
	tile_types_top offset_gAreaTileSetTypes_TempleOfDroplets_top, 0x1000, 1, 1

gAreaTiles_61:: @ 08102E44
	tiles_bottom offset_gAreaTileSet_Null61_bottom, 0x600, 1
	tiles_top offset_gAreaTileSet_Null61_top, 0x398, 1
	tile_types_bottom offset_gAreaTileSetTypes_Null61_bottom, 0x180, 1
	tile_types_top offset_gAreaTileSetTypes_Null61_top, 0xE6, 1, 1

gAreaTiles_RoyalCrypt:: @ 08102E74
	tiles_bottom offset_gAreaTileSet_RoyalCrypt_bottom, 0x3610, 1
	tiles_top offset_gAreaTileSet_RoyalCrypt_top, 0x3610, 1
	tile_types_bottom offset_gAreaTileSetTypes_RoyalCrypt_bottom, 0xD84, 1
	tile_types_top offset_gAreaTileSetTypes_RoyalCrypt_top, 0xD84, 1, 1

gAreaTiles_PalaceOfWinds:: @ 08102EA4
	tiles_bottom offset_gAreaTileSet_PalaceOfWinds_bottom, 0x3620, 1
	tiles_top offset_gAreaTileSet_PalaceOfWinds_top, 0x3620, 1
	tile_types_bottom offset_gAreaTileSetTypes_PalaceOfWinds_bottom, 0xD88, 1
	tile_types_top offset_gAreaTileSetTypes_PalaceOfWinds_top, 0xD88, 1, 1

gAreaTiles_PalaceOfWindsBoss:: @ 08102ED4
	tiles_top offset_gAreaTileSet_PalaceOfWindsBoss_top, 0x108, 1
	tile_types_top offset_gAreaTileSetTypes_PalaceOfWindsBoss_top, 0x42, 1, 1

gAreaTiles_Sanctuary:: @ 08102EEC
	tiles_bottom offset_gAreaTileSet_Sanctuary_bottom, 0x3620, 1
	tiles_top offset_gAreaTileSet_Sanctuary_top, 0x3620, 1
	tile_types_bottom offset_gAreaTileSetTypes_Sanctuary_bottom, 0xD88, 1
	tile_types_top offset_gAreaTileSetTypes_Sanctuary_top, 0xD88, 1, 1

gAreaTiles_HyruleCastle:: @ 08102F1C
	tiles_bottom offset_gAreaTileSet_HyruleCastle_bottom, 0x37C0, 1
	tiles_top offset_gAreaTileSet_HyruleCastle_top, 0x3610, 1
	tile_types_bottom offset_gAreaTileSetTypes_HyruleCastle_bottom, 0xDF0, 1
	tile_types_top offset_gAreaTileSetTypes_HyruleCastle_top, 0xD84, 1, 1

gAreaTiles_SanctuaryEntrance:: @ 08102F4C
	tiles_bottom offset_gAreaTileSet_SanctuaryEntrance_bottom, 0x1478, 1
	tiles_top offset_gAreaTileSet_SanctuaryEntrance_top, 0xFF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_SanctuaryEntrance_bottom, 0x51E, 1
	tile_types_top offset_gAreaTileSetTypes_SanctuaryEntrance_top, 0x3FC, 1, 1

gAreaTiles_DarkHyruleCastle:: @ 08102F7C
	tiles_bottom offset_gAreaTileSet_DarkHyruleCastle_bottom, 0x3FD8, 1
	tiles_top offset_gAreaTileSet_DarkHyruleCastle_top, 0x37C0, 1
	tile_types_bottom offset_gAreaTileSetTypes_DarkHyruleCastle_bottom, 0xFF6, 1
	tile_types_top offset_gAreaTileSetTypes_DarkHyruleCastle_top, 0xDF0, 1, 1

gAreaTiles_DarkHyruleCastleOutside:: @ 08102FAC
	tiles_bottom offset_gAreaTileSet_DarkHyruleCastleOutside_bottom, 0x3340, 1
	tiles_top offset_gAreaTileSet_DarkHyruleCastleOutside_top, 0x1EF0, 1
	tile_types_bottom offset_gAreaTileSetTypes_DarkHyruleCastleOutside_bottom, 0xCD0, 1
	tile_types_top offset_gAreaTileSetTypes_DarkHyruleCastleOutside_top, 0x7BC, 1, 1

gAreaTiles_DarkHyruleCastleBridge:: @ 08102FDC
	tiles_bottom offset_gAreaTileSet_DarkHyruleCastleBridge_bottom, 0x3610, 1
	tiles_top offset_gAreaTileSet_DarkHyruleCastleBridge_top, 0x3610, 1
	tile_types_bottom offset_gAreaTileSetTypes_DarkHyruleCastleBridge_bottom, 0xD84, 1
	tile_types_top offset_gAreaTileSetTypes_DarkHyruleCastleBridge_top, 0xD84, 1, 1

gAreaTiles_VaatisArms:: @ 0810300C
	tiles_bottom offset_gAreaTileSet_VaatisArms_bottom, 0x17C8, 1
	tiles_top offset_gAreaTileSet_VaatisArms_top, 0xBC0, 1
	tile_types_bottom offset_gAreaTileSetTypes_VaatisArms_bottom, 0x5F2, 1
	tile_types_top offset_gAreaTileSetTypes_VaatisArms_top, 0x2F0, 1, 1

gAreaTiles_Vaati3:: @ 0810303C
	tiles_bottom offset_gAreaTileSet_Vaati3_bottom, 0xE80, 1
	tiles_top offset_gAreaTileSet_Vaati3_top, 0x9B8, 1
	tile_types_bottom offset_gAreaTileSetTypes_Vaati3_bottom, 0x3A0, 1
	tile_types_top offset_gAreaTileSetTypes_Vaati3_top, 0x26E, 1, 1

gAreaTiles_Vaati2:: @ 0810306C
	tiles_bottom offset_gAreaTileSet_Vaati2_bottom, 0x850, 1
	tiles_top offset_gAreaTileSet_Vaati2_top, 0x298, 1
	tile_types_bottom offset_gAreaTileSetTypes_Vaati2_bottom, 0x214, 1
	tile_types_top offset_gAreaTileSetTypes_Vaati2_top, 0xA6, 1, 1


gAreaTiles:: @ 0810309C
	.4byte gAreaTiles_MinishWoods             @ 0x0
	.4byte gAreaTiles_MinishVillage           @ 0x1
	.4byte gAreaTiles_HyruleTown              @ 0x2
	.4byte gAreaTiles_HyruleField             @ 0x3
	.4byte gAreaTiles_CastorWilds             @ 0x4
	.4byte gAreaTiles_CastorWilds             @ 0x5
	.4byte gAreaTiles_MtCrenel                @ 0x6
	.4byte gAreaTiles_CastleGarden            @ 0x7
	.4byte gAreaTiles_CloudTops               @ 0x8
	.4byte gAreaTiles_RoyalValley             @ 0x9
	.4byte gAreaTiles_MtCrenel                @ 0xA
	.4byte gAreaTiles_LakeHylia               @ 0xB
	.4byte gAreaTiles_MinishWoods             @ 0xC
	.4byte gAreaTiles_Beanstalks              @ 0xD
	.4byte gAreaTiles_MinishWoods             @ 0xE
	.4byte gAreaTiles_HyruleTown              @ 0xF
	.4byte gAreaTiles_MelarisMine             @ 0x10
	.4byte gAreaTiles_MnishPaths1             @ 0x11
	.4byte gAreaTiles_CrenelMinishPaths       @ 0x12
	.4byte gAreaTiles_HyruleField             @ 0x13
	.4byte gAreaTiles_MtCrenel                @ 0x14
	.4byte gAreaTiles_HyruleTown              @ 0x15
	.4byte gAreaTiles_MtCrenel                @ 0x16
	.4byte gAreaTiles_CastorWilds             @ 0x17
	.4byte gAreaTiles_CastorWilds             @ 0x18
	.4byte gAreaTiles_LakeHylia               @ 0x19
	.4byte gAreaTiles_MtCrenel                @ 0x1A
	.4byte gAreaTiles_Unused                  @ 0x1B
	.4byte gAreaTiles_Unused                  @ 0x1C
	.4byte gAreaTiles_HyruleField             @ 0x1D
	.4byte gAreaTiles_MinishWoods             @ 0x1E
	.4byte gAreaTiles_HyruleField             @ 0x1F
	.4byte gAreaTiles_MinishHouseInteriors    @ 0x20
	.4byte gAreaTiles_HouseInteriors1         @ 0x21
	.4byte gAreaTiles_HouseInteriors2         @ 0x22
	.4byte gAreaTiles_HouseInteriors3         @ 0x23
	.4byte gAreaTiles_TreeInteriors           @ 0x24
	.4byte gAreaTiles_Dojos                   @ 0x25
	.4byte gAreaTiles_CrenelCaves             @ 0x26
	.4byte gAreaTiles_MinishCracks            @ 0x27
	.4byte gAreaTiles_HouseInteriors4         @ 0x28
	.4byte gAreaTiles_GreatFairies            @ 0x29
	.4byte gAreaTiles_CrenelCaves             @ 0x2A
	.4byte gAreaTiles_FortressOfWinds         @ 0x2B
	.4byte gAreaTiles_ArmosInteriors          @ 0x2C
	.4byte gAreaTiles_MinishHouseInteriors    @ 0x2D
	.4byte gAreaTiles_MinishRafters           @ 0x2E
	.4byte gAreaTiles_GoronCave               @ 0x2F
	.4byte gAreaTiles_WindTribeTower          @ 0x30
	.4byte gAreaTiles_WindTribeTowerRoof      @ 0x31
	.4byte gAreaTiles_CrenelCaves             @ 0x32
	.4byte gAreaTiles_CrenelCaves             @ 0x33
	.4byte gAreaTiles_CrenelCaves             @ 0x34
	.4byte gAreaTiles_MinishCaves             @ 0x35
	.4byte gAreaTiles_CastleGardenMinishHoles @ 0x36
	.4byte gAreaTiles_CastleGardenMinishHoles @ 0x37
	.4byte gAreaTiles_EzloCutscene            @ 0x38
	.4byte gAreaTiles_Unused                  @ 0x39
	.4byte gAreaTiles_Unused                  @ 0x3A
	.4byte gAreaTiles_Unused                  @ 0x3B
	.4byte gAreaTiles_Unused                  @ 0x3C
	.4byte gAreaTiles_Unused                  @ 0x3D
	.4byte gAreaTiles_Unused                  @ 0x3E
	.4byte gAreaTiles_Unused                  @ 0x3F
	.4byte gAreaTiles_HyruleTownUnderground   @ 0x40
	.4byte gAreaTiles_HyruleTownUnderground   @ 0x41
	.4byte gAreaTiles_HyruleTownUnderground   @ 0x42
	.4byte gAreaTiles_HyruleTownUnderground   @ 0x43
	.4byte gAreaTiles_HyruleTownUnderground   @ 0x44
	.4byte gAreaTiles_CrenelCaves             @ 0x45
	.4byte gAreaTiles_CrenelCaves             @ 0x46
	.4byte gAreaTiles_CrenelCaves             @ 0x47
	.4byte gAreaTiles_DeepwoodShrine          @ 0x48
	.4byte gAreaTiles_DeepwoodShrineBoss      @ 0x49
	.4byte gAreaTiles_DeepwoodShrineEntry     @ 0x4A
	.4byte gAreaTiles_Unused                  @ 0x4B
	.4byte gAreaTiles_Unused                  @ 0x4C
	.4byte gAreaTiles_DeepwoodShrine          @ 0x4D
	.4byte gAreaTiles_DeepwoodShrine          @ 0x4E
	.4byte gAreaTiles_DeepwoodShrineBoss      @ 0x4F
	.4byte gAreaTiles_CaveOfFlames            @ 0x50
	.4byte gAreaTiles_CaveOfFlamesBoss        @ 0x51
	.4byte gAreaTiles_Unused                  @ 0x52
	.4byte gAreaTiles_Unused                  @ 0x53
	.4byte gAreaTiles_Unused                  @ 0x54
	.4byte gAreaTiles_Unused                  @ 0x55
	.4byte gAreaTiles_CaveOfFlames            @ 0x56
	.4byte gAreaTiles_CaveOfFlames            @ 0x57
	.4byte gAreaTiles_FortressOfWinds         @ 0x58
	.4byte gAreaTiles_FortressOfWindsTop      @ 0x59
	.4byte gAreaTiles_InnerMazaal             @ 0x5A
	.4byte gAreaTiles_Unused                  @ 0x5B
	.4byte gAreaTiles_Unused                  @ 0x5C
	.4byte gAreaTiles_Unused                  @ 0x5D
	.4byte gAreaTiles_Unused                  @ 0x5E
	.4byte gAreaTiles_FortressOfWinds         @ 0x5F
	.4byte gAreaTiles_TempleOfDroplets        @ 0x60
	.4byte gAreaTiles_61                      @ 0x61
	.4byte gAreaTiles_TempleOfDroplets        @ 0x62
	.4byte gAreaTiles_Unused                  @ 0x63
	.4byte gAreaTiles_Unused                  @ 0x64
	.4byte gAreaTiles_Unused                  @ 0x65
	.4byte gAreaTiles_Unused                  @ 0x66
	.4byte gAreaTiles_TempleOfDroplets        @ 0x67
	.4byte gAreaTiles_RoyalCrypt              @ 0x68
	.4byte gAreaTiles_Unused                  @ 0x69
	.4byte gAreaTiles_Unused                  @ 0x6A
	.4byte gAreaTiles_Unused                  @ 0x6B
	.4byte gAreaTiles_Unused                  @ 0x6C
	.4byte gAreaTiles_Unused                  @ 0x6D
	.4byte gAreaTiles_Unused                  @ 0x6E
	.4byte gAreaTiles_RoyalCrypt              @ 0x6F
	.4byte gAreaTiles_PalaceOfWinds           @ 0x70
	.4byte gAreaTiles_PalaceOfWindsBoss       @ 0x71
	.4byte gAreaTiles_Unused                  @ 0x72
	.4byte gAreaTiles_Unused                  @ 0x73
	.4byte gAreaTiles_Unused                  @ 0x74
	.4byte gAreaTiles_Unused                  @ 0x75
	.4byte gAreaTiles_Unused                  @ 0x76
	.4byte gAreaTiles_PalaceOfWinds           @ 0x77
	.4byte gAreaTiles_Sanctuary               @ 0x78
	.4byte gAreaTiles_Unused                  @ 0x79
	.4byte gAreaTiles_Unused                  @ 0x7A
	.4byte gAreaTiles_Unused                  @ 0x7B
	.4byte gAreaTiles_Unused                  @ 0x7C
	.4byte gAreaTiles_Unused                  @ 0x7D
	.4byte gAreaTiles_Unused                  @ 0x7E
	.4byte gAreaTiles_Sanctuary               @ 0x7F
	.4byte gAreaTiles_HyruleCastle            @ 0x80
	.4byte gAreaTiles_SanctuaryEntrance       @ 0x81
	.4byte gAreaTiles_Unused                  @ 0x82
	.4byte gAreaTiles_Unused                  @ 0x83
	.4byte gAreaTiles_Unused                  @ 0x84
	.4byte gAreaTiles_Unused                  @ 0x85
	.4byte gAreaTiles_Unused                  @ 0x86
	.4byte gAreaTiles_HyruleCastle            @ 0x87
	.4byte gAreaTiles_DarkHyruleCastle        @ 0x88
	.4byte gAreaTiles_DarkHyruleCastleOutside @ 0x89
	.4byte gAreaTiles_VaatisArms              @ 0x8A
	.4byte gAreaTiles_Vaati3                  @ 0x8B
	.4byte gAreaTiles_Vaati2                  @ 0x8C
	.4byte gAreaTiles_DarkHyruleCastleBridge  @ 0x8D
	.4byte gAreaTiles_Unused                  @ 0x8E
	.4byte gAreaTiles_DarkHyruleCastle        @ 0x8F
