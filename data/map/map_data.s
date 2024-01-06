	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2


gMapData:: @ 08324AE4
@ Contains purely 0xff to indicate that no tiles are used, but the mapping for the tiles is supplied directly.
gAreaRoomMap_None::
	.incbin "assets/gAreaRoomMap_None.bin.lz"
gAreaTileSet_MinishWoods_0_0::
	.incbin "maps/areas/000_MinishWoods/tileSets/0/gAreaTileSet_MinishWoods_0_0.4bpp.lz"
gAreaTileSet_MinishWoods_0_1::
	.incbin "maps/areas/000_MinishWoods/tileSets/0/gAreaTileSet_MinishWoods_0_1.4bpp.lz"
gAreaTileSet_MinishWoods_0_2::
	.incbin "maps/areas/000_MinishWoods/tileSets/0/gAreaTileSet_MinishWoods_0_2.4bpp.lz"
gAreaTileSet_MinishWoods_bottom::
	.incbin "maps/areas/000_MinishWoods/tileSet/gAreaTileSet_MinishWoods_bottom.bin.lz"
gAreaTileSet_MinishWoods_top::
	.incbin "maps/areas/000_MinishWoods/tileSet/gAreaTileSet_MinishWoods_top.bin.lz"
gAreaTileSetTypes_MinishWoods_bottom::
	.incbin "maps/areas/000_MinishWoods/tileSet/gAreaTileSetTypes_MinishWoods_bottom.bin.lz"
gAreaTileSetTypes_MinishWoods_top::
	.incbin "maps/areas/000_MinishWoods/tileSet/gAreaTileSetTypes_MinishWoods_top.bin.lz"
gAreaRoomMap_MinishWoods_Main_bottom::
	.incbin "maps/areas/000_MinishWoods/rooms/00_Main/gAreaRoomMap_MinishWoods_Main_bottom.bin.lz"
gAreaRoomMap_MinishWoods_Main_top::
	.incbin "maps/areas/000_MinishWoods/rooms/00_Main/gAreaRoomMap_MinishWoods_Main_top.bin.lz"
gCaveBorder_LakeWoods_outside::
	.incbin "maps/areas/000_MinishWoods/rooms/00_Main/gCaveBorder_LakeWoods_outside.bin.lz"
gCaveBorder_LakeWoods_unused::
	.incbin "maps/areas/000_MinishWoods/rooms/00_Main/gCaveBorder_LakeWoods_unused.bin.lz"
gAreaTileSet_LakeHylia_0_0::
	.incbin "maps/areas/011_LakeHylia/tileSets/0/gAreaTileSet_LakeHylia_0_0.4bpp.lz"
gAreaTileSet_LakeHylia_0_1::
	.incbin "maps/areas/011_LakeHylia/tileSets/0/gAreaTileSet_LakeHylia_0_1.4bpp.lz"
gAreaTileSet_LakeHylia_0_2::
	.incbin "maps/areas/011_LakeHylia/tileSets/0/gAreaTileSet_LakeHylia_0_2.4bpp.lz"
gAreaTileSet_LakeHylia_bottom::
	.incbin "maps/areas/011_LakeHylia/tileSet/gAreaTileSet_LakeHylia_bottom.bin.lz"
gAreaTileSet_LakeHylia_top::
	.incbin "maps/areas/011_LakeHylia/tileSet/gAreaTileSet_LakeHylia_top.bin.lz"
gAreaTileSetTypes_LakeHylia_bottom::
	.incbin "maps/areas/011_LakeHylia/tileSet/gAreaTileSetTypes_LakeHylia_bottom.bin.lz"
gAreaTileSetTypes_LakeHylia_top::
	.incbin "maps/areas/011_LakeHylia/tileSet/gAreaTileSetTypes_LakeHylia_top.bin.lz"
gAreaRoomMap_LakeHylia_Main_bottom::
	.incbin "maps/areas/011_LakeHylia/rooms/00_Main/gAreaRoomMap_LakeHylia_Main_bottom.bin.lz"
gAreaRoomMap_LakeHylia_Main_top::
	.incbin "maps/areas/011_LakeHylia/rooms/00_Main/gAreaRoomMap_LakeHylia_Main_top.bin.lz"
gCaveBorder_LakeHyliaNorth_outside::
	.incbin "maps/areas/011_LakeHylia/rooms/00_Main/gCaveBorder_LakeHyliaNorth_outside.bin.lz"
gAreaRoomMap_LakeHylia_Beanstalk_bottom::
	.incbin "maps/areas/011_LakeHylia/rooms/01_Beanstalk/gAreaRoomMap_LakeHylia_Beanstalk_bottom.bin.lz"
gAreaRoomMap_LakeHylia_Beanstalk_top::
	.incbin "maps/areas/011_LakeHylia/rooms/01_Beanstalk/gAreaRoomMap_LakeHylia_Beanstalk_top.bin.lz"
gAreaTileSet_CastorWilds_0_0::
	.incbin "maps/areas/004_CastorWilds/tileSets/0/gAreaTileSet_CastorWilds_0_0.4bpp.lz"
gAreaTileSet_CastorWilds_0_1::
	.incbin "maps/areas/004_CastorWilds/tileSets/0/gAreaTileSet_CastorWilds_0_1.4bpp.lz"
gAreaTileSet_CastorWilds_0_2::
	.incbin "maps/areas/004_CastorWilds/tileSets/0/gAreaTileSet_CastorWilds_0_2.4bpp.lz"
gAreaTileSet_CastorWilds_bottom::
	.incbin "maps/areas/004_CastorWilds/tileSet/gAreaTileSet_CastorWilds_bottom.bin.lz"
gAreaTileSet_CastorWilds_top::
	.incbin "maps/areas/004_CastorWilds/tileSet/gAreaTileSet_CastorWilds_top.bin.lz"
gAreaTileSetTypes_CastorWilds_bottom::
	.incbin "maps/areas/004_CastorWilds/tileSet/gAreaTileSetTypes_CastorWilds_bottom.bin.lz"
gAreaTileSetTypes_CastorWilds_top::
	.incbin "maps/areas/004_CastorWilds/tileSet/gAreaTileSetTypes_CastorWilds_top.bin.lz"
gAreaRoomMap_CastorWilds_Main_bottom::
	.incbin "maps/areas/004_CastorWilds/rooms/00_Main/gAreaRoomMap_CastorWilds_Main_bottom.bin.lz"
gAreaRoomMap_CastorWilds_Main_top::
	.incbin "maps/areas/004_CastorWilds/rooms/00_Main/gAreaRoomMap_CastorWilds_Main_top.bin.lz"
gCaveBorder_CastorWilds_outside::
	.incbin "maps/areas/004_CastorWilds/rooms/00_Main/gCaveBorder_CastorWilds_outside.bin.lz"
gAreaRoomMap_Ruins_Entrance_bottom::
	.incbin "maps/areas/005_Ruins/rooms/00_Entrance/gAreaRoomMap_Ruins_Entrance_bottom.bin.lz"
gAreaRoomMap_Ruins_Entrance_top::
	.incbin "maps/areas/005_Ruins/rooms/00_Entrance/gAreaRoomMap_Ruins_Entrance_top.bin.lz"
gAreaRoomMap_Ruins_Beanstalk_bottom::
	.incbin "maps/areas/005_Ruins/rooms/01_Beanstalk/gAreaRoomMap_Ruins_Beanstalk_bottom.bin.lz"
gAreaRoomMap_Ruins_Beanstalk_top::
	.incbin "maps/areas/005_Ruins/rooms/01_Beanstalk/gAreaRoomMap_Ruins_Beanstalk_top.bin.lz"
gAreaRoomMap_Ruins_Tektites_bottom::
	.incbin "maps/areas/005_Ruins/rooms/02_Tektites/gAreaRoomMap_Ruins_Tektites_bottom.bin.lz"
gAreaRoomMap_Ruins_Tektites_top::
	.incbin "maps/areas/005_Ruins/rooms/02_Tektites/gAreaRoomMap_Ruins_Tektites_top.bin.lz"
gAreaRoomMap_Ruins_LadderToTektites_bottom::
	.incbin "maps/areas/005_Ruins/rooms/03_LadderToTektites/gAreaRoomMap_Ruins_LadderToTektites_bottom.bin.lz"
gAreaRoomMap_Ruins_LadderToTektites_top::
	.incbin "maps/areas/005_Ruins/rooms/03_LadderToTektites/gAreaRoomMap_Ruins_LadderToTektites_top.bin.lz"
gAreaRoomMap_Ruins_FortressEntrance_bottom::
	.incbin "maps/areas/005_Ruins/rooms/04_FortressEntrance/gAreaRoomMap_Ruins_FortressEntrance_bottom.bin.lz"
gAreaRoomMap_Ruins_FortressEntrance_top::
	.incbin "maps/areas/005_Ruins/rooms/04_FortressEntrance/gAreaRoomMap_Ruins_FortressEntrance_top.bin.lz"
gAreaRoomMap_Ruins_BelowFortressEntrance_bottom::
	.incbin "maps/areas/005_Ruins/rooms/05_BelowFortressEntrance/gAreaRoomMap_Ruins_BelowFortressEntrance_bottom.bin.lz"
gAreaRoomMap_Ruins_BelowFortressEntrance_top::
	.incbin "maps/areas/005_Ruins/rooms/05_BelowFortressEntrance/gAreaRoomMap_Ruins_BelowFortressEntrance_top.bin.lz"
unknown_3::
	.incbin "assets/unknown_3.bin"
gAreaTileSet_HyruleTown_bottom::
	.incbin "maps/areas/002_HyruleTown/tileSet/gAreaTileSet_HyruleTown_bottom.bin.lz"
gAreaTileSet_HyruleTown_top::
	.incbin "maps/areas/002_HyruleTown/tileSet/gAreaTileSet_HyruleTown_top.bin.lz"
gAreaTileSetTypes_HyruleTown_bottom::
	.incbin "maps/areas/002_HyruleTown/tileSet/gAreaTileSetTypes_HyruleTown_bottom.bin.lz"
gAreaTileSetTypes_HyruleTown_top::
	.incbin "maps/areas/002_HyruleTown/tileSet/gAreaTileSetTypes_HyruleTown_top.bin.lz"
gAreaTileSet_HyruleTown_0_0::
	.incbin "maps/areas/002_HyruleTown/tileSets/0/gAreaTileSet_HyruleTown_0_0.4bpp.lz"
gAreaTileSet_HyruleTown_0_1::
	.incbin "maps/areas/002_HyruleTown/tileSets/0/gAreaTileSet_HyruleTown_0_1.4bpp.lz"
gAreaTileSet_HyruleTown_0_2::
	.incbin "maps/areas/002_HyruleTown/tileSets/0/gAreaTileSet_HyruleTown_0_2.4bpp.lz"
gAreaTileSet_FestivalTown_0_0::
	.incbin "maps/areas/021_FestivalTown/tileSets/0/gAreaTileSet_FestivalTown_0_0.4bpp.lz"
gAreaTileSet_FestivalTown_0_1::
	.incbin "maps/areas/021_FestivalTown/tileSets/0/gAreaTileSet_FestivalTown_0_1.4bpp.lz"
gAreaTileSet_FestivalTown_0_2::
	.incbin "maps/areas/021_FestivalTown/tileSets/0/gAreaTileSet_FestivalTown_0_2.4bpp.lz"
gAreaRoomMap_HyruleTown_Main_bottom::
	.incbin "maps/areas/002_HyruleTown/rooms/00_Main/gAreaRoomMap_HyruleTown_Main_bottom.bin.lz"
gAreaRoomMap_HyruleTown_Main_top::
	.incbin "maps/areas/002_HyruleTown/rooms/00_Main/gAreaRoomMap_HyruleTown_Main_top.bin.lz"
gCaveBorder_HyruleTown_outside::
	.incbin "maps/areas/002_HyruleTown/rooms/00_Main/gCaveBorder_HyruleTown_outside.bin.lz"
gAreaRoomMap_FestivalTown_Main_bottom::
	.incbin "maps/areas/021_FestivalTown/rooms/00_Main/gAreaRoomMap_FestivalTown_Main_bottom.bin.lz"
gAreaRoomMap_FestivalTown_Main_top::
	.incbin "maps/areas/021_FestivalTown/rooms/00_Main/gAreaRoomMap_FestivalTown_Main_top.bin.lz"
gAreaTileSet_MtCrenel_0_0::
	.incbin "maps/areas/006_MtCrenel/tileSets/0/gAreaTileSet_MtCrenel_0_0.4bpp.lz"
gAreaTileSet_MtCrenel_0_1::
	.incbin "maps/areas/006_MtCrenel/tileSets/0/gAreaTileSet_MtCrenel_0_1.4bpp.lz"
gAreaTileSet_MtCrenel_0_2::
	.incbin "maps/areas/006_MtCrenel/tileSets/0/gAreaTileSet_MtCrenel_0_2.4bpp.lz"
gAreaTileSet_MtCrenel_bottom::
	.incbin "maps/areas/006_MtCrenel/tileSet/gAreaTileSet_MtCrenel_bottom.bin.lz"
gAreaTileSet_MtCrenel_top::
	.incbin "maps/areas/006_MtCrenel/tileSet/gAreaTileSet_MtCrenel_top.bin.lz"
gAreaTileSetTypes_MtCrenel_bottom::
	.incbin "maps/areas/006_MtCrenel/tileSet/gAreaTileSetTypes_MtCrenel_bottom.bin.lz"
gAreaTileSetTypes_MtCrenel_top::
	.incbin "maps/areas/006_MtCrenel/tileSet/gAreaTileSetTypes_MtCrenel_top.bin.lz"
gAreaRoomMap_MtCrenel_Top_bottom::
	.incbin "maps/areas/006_MtCrenel/rooms/00_Top/gAreaRoomMap_MtCrenel_Top_bottom.bin.lz"
gAreaRoomMap_MtCrenel_Top_top::
	.incbin "maps/areas/006_MtCrenel/rooms/00_Top/gAreaRoomMap_MtCrenel_Top_top.bin.lz"
gAreaRoomMap_MtCrenel_WallClimb_bottom::
	.incbin "maps/areas/006_MtCrenel/rooms/01_WallClimb/gAreaRoomMap_MtCrenel_WallClimb_bottom.bin.lz"
gAreaRoomMap_MtCrenel_WallClimb_top::
	.incbin "maps/areas/006_MtCrenel/rooms/01_WallClimb/gAreaRoomMap_MtCrenel_WallClimb_top.bin.lz"
gCaveBorder_Crenel_outside::
	.incbin "maps/areas/006_MtCrenel/rooms/01_WallClimb/gCaveBorder_Crenel_outside.bin.lz"
gAreaRoomMap_MtCrenel_CavernOfFlamesEntrance_bottom::
	.incbin "maps/areas/006_MtCrenel/rooms/02_CavernOfFlamesEntrance/gAreaRoomMap_MtCrenel_CavernOfFlamesEntrance_bottom.bin.lz"
gAreaRoomMap_MtCrenel_CavernOfFlamesEntrance_top::
	.incbin "maps/areas/006_MtCrenel/rooms/02_CavernOfFlamesEntrance/gAreaRoomMap_MtCrenel_CavernOfFlamesEntrance_top.bin.lz"
gAreaRoomMap_MtCrenel_Center_bottom::
	.incbin "maps/areas/006_MtCrenel/rooms/03_Center/gAreaRoomMap_MtCrenel_Center_bottom.bin.lz"
gAreaRoomMap_MtCrenel_Center_top::
	.incbin "maps/areas/006_MtCrenel/rooms/03_Center/gAreaRoomMap_MtCrenel_Center_top.bin.lz"
gAreaRoomMap_MtCrenel_Entrance_bottom::
	.incbin "maps/areas/006_MtCrenel/rooms/04_Entrance/gAreaRoomMap_MtCrenel_Entrance_bottom.bin.lz"
gAreaRoomMap_MtCrenel_Entrance_top::
	.incbin "maps/areas/006_MtCrenel/rooms/04_Entrance/gAreaRoomMap_MtCrenel_Entrance_top.bin.lz"
gAreaTileSet_HyruleField_0_0::
	.incbin "maps/areas/003_HyruleField/tileSets/0/gAreaTileSet_HyruleField_0_0.4bpp.lz"
gAreaTileSet_HyruleField_0_1::
	.incbin "maps/areas/003_HyruleField/tileSets/0/gAreaTileSet_HyruleField_0_1.4bpp.lz"
gAreaTileSet_HyruleField_0_2::
	.incbin "maps/areas/003_HyruleField/tileSets/0/gAreaTileSet_HyruleField_0_2.4bpp.lz"
gAreaTileSet_HyruleField_2_0::
	.incbin "maps/areas/003_HyruleField/tileSets/2/gAreaTileSet_HyruleField_2_0.4bpp.lz"
gAreaTileSet_HyruleField_2_1::
	.incbin "maps/areas/003_HyruleField/tileSets/2/gAreaTileSet_HyruleField_2_1.4bpp.lz"
gAreaTileSet_HyruleField_2_2::
	.incbin "maps/areas/003_HyruleField/tileSets/2/gAreaTileSet_HyruleField_2_2.4bpp.lz"
gAreaTileSet_HyruleField_1_0::
	.incbin "maps/areas/003_HyruleField/tileSets/1/gAreaTileSet_HyruleField_1_0.4bpp.lz"
gAreaTileSet_HyruleField_1_1::
	.incbin "maps/areas/003_HyruleField/tileSets/1/gAreaTileSet_HyruleField_1_1.4bpp.lz"
gAreaTileSet_HyruleField_1_2::
	.incbin "maps/areas/003_HyruleField/tileSets/1/gAreaTileSet_HyruleField_1_2.4bpp.lz"
gAreaTileSet_HyruleField_bottom::
	.incbin "maps/areas/003_HyruleField/tileSet/gAreaTileSet_HyruleField_bottom.bin.lz"
gAreaTileSet_HyruleField_top::
	.incbin "maps/areas/003_HyruleField/tileSet/gAreaTileSet_HyruleField_top.bin.lz"
gAreaTileSetTypes_HyruleField_bottom::
	.incbin "maps/areas/003_HyruleField/tileSet/gAreaTileSetTypes_HyruleField_bottom.bin.lz"
gAreaTileSetTypes_HyruleField_top::
	.incbin "maps/areas/003_HyruleField/tileSet/gAreaTileSetTypes_HyruleField_top.bin.lz"
gAreaTileSet_HyruleField_0_3::
	.incbin "maps/areas/003_HyruleField/tileSets/0/gAreaTileSet_HyruleField_0_3.4bpp.lz"
gAreaRoomMap_HyruleField_WesternWoodsSouth_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/00_WesternWoodsSouth/gAreaRoomMap_HyruleField_WesternWoodsSouth_bottom.bin.lz"
gAreaRoomMap_HyruleField_WesternWoodsSouth_top::
	.incbin "maps/areas/003_HyruleField/rooms/00_WesternWoodsSouth/gAreaRoomMap_HyruleField_WesternWoodsSouth_top.bin.lz"
gAreaRoomMap_HyruleField_SouthHyruleField_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/01_SouthHyruleField/gAreaRoomMap_HyruleField_SouthHyruleField_bottom.bin.lz"
gAreaRoomMap_HyruleField_SouthHyruleField_top::
	.incbin "maps/areas/003_HyruleField/rooms/01_SouthHyruleField/gAreaRoomMap_HyruleField_SouthHyruleField_top.bin.lz"
gAreaRoomMap_HyruleField_EasternHillsSouth_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/02_EasternHillsSouth/gAreaRoomMap_HyruleField_EasternHillsSouth_bottom.bin.lz"
gAreaRoomMap_HyruleField_EasternHillsSouth_top::
	.incbin "maps/areas/003_HyruleField/rooms/02_EasternHillsSouth/gAreaRoomMap_HyruleField_EasternHillsSouth_top.bin.lz"
gAreaRoomMap_HyruleField_EasternHillsCenter_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/03_EasternHillsCenter/gAreaRoomMap_HyruleField_EasternHillsCenter_bottom.bin.lz"
gAreaRoomMap_HyruleField_EasternHillsCenter_top::
	.incbin "maps/areas/003_HyruleField/rooms/03_EasternHillsCenter/gAreaRoomMap_HyruleField_EasternHillsCenter_top.bin.lz"
gAreaRoomMap_HyruleField_EasternHillsNorth_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/04_EasternHillsNorth/gAreaRoomMap_HyruleField_EasternHillsNorth_bottom.bin.lz"
gAreaRoomMap_HyruleField_EasternHillsNorth_top::
	.incbin "maps/areas/003_HyruleField/rooms/04_EasternHillsNorth/gAreaRoomMap_HyruleField_EasternHillsNorth_top.bin.lz"
gCaveBorder_EasternHills_outside::
	.incbin "maps/areas/003_HyruleField/rooms/04_EasternHillsNorth/gCaveBorder_EasternHills_outside.bin.lz"
gAreaRoomMap_HyruleField_LonLonRanch_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/05_LonLonRanch/gAreaRoomMap_HyruleField_LonLonRanch_bottom.bin.lz"
gAreaRoomMap_HyruleField_LonLonRanch_top::
	.incbin "maps/areas/003_HyruleField/rooms/05_LonLonRanch/gAreaRoomMap_HyruleField_LonLonRanch_top.bin.lz"
gCaveBorder_LonLonRanch_outside::
	.incbin "maps/areas/003_HyruleField/rooms/05_LonLonRanch/gCaveBorder_LonLonRanch_outside.bin.lz"
gAreaRoomMap_HyruleField_NorthHyruleField_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/06_NorthHyruleField/gAreaRoomMap_HyruleField_NorthHyruleField_bottom.bin.lz"
gAreaRoomMap_HyruleField_NorthHyruleField_top::
	.incbin "maps/areas/003_HyruleField/rooms/06_NorthHyruleField/gAreaRoomMap_HyruleField_NorthHyruleField_top.bin.lz"
gAreaRoomMap_HyruleField_TrilbyHighlands_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/07_TrilbyHighlands/gAreaRoomMap_HyruleField_TrilbyHighlands_bottom.bin.lz"
gAreaRoomMap_HyruleField_TrilbyHighlands_top::
	.incbin "maps/areas/003_HyruleField/rooms/07_TrilbyHighlands/gAreaRoomMap_HyruleField_TrilbyHighlands_top.bin.lz"
gCaveBorder_TrilbyHighlands_outside::
	.incbin "maps/areas/003_HyruleField/rooms/07_TrilbyHighlands/gCaveBorder_TrilbyHighlands_outside.bin.lz"
gAreaRoomMap_HyruleField_WesternWoodsNorth_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/08_WesternWoodsNorth/gAreaRoomMap_HyruleField_WesternWoodsNorth_bottom.bin.lz"
gAreaRoomMap_HyruleField_WesternWoodsNorth_top::
	.incbin "maps/areas/003_HyruleField/rooms/08_WesternWoodsNorth/gAreaRoomMap_HyruleField_WesternWoodsNorth_top.bin.lz"
gAreaRoomMap_HyruleField_WesternWoodsCenter_bottom::
	.incbin "maps/areas/003_HyruleField/rooms/09_WesternWoodsCenter/gAreaRoomMap_HyruleField_WesternWoodsCenter_bottom.bin.lz"
gAreaRoomMap_HyruleField_WesternWoodsCenter_top::
	.incbin "maps/areas/003_HyruleField/rooms/09_WesternWoodsCenter/gAreaRoomMap_HyruleField_WesternWoodsCenter_top.bin.lz"
gAreaTileSet_CastleGarden_0_0::
	.incbin "maps/areas/007_CastleGarden/tileSets/0/gAreaTileSet_CastleGarden_0_0.4bpp.lz"
gAreaTileSet_CastleGarden_0_1::
	.incbin "maps/areas/007_CastleGarden/tileSets/0/gAreaTileSet_CastleGarden_0_1.4bpp.lz"
gAreaTileSet_CastleGarden_0_2::
	.incbin "maps/areas/007_CastleGarden/tileSets/0/gAreaTileSet_CastleGarden_0_2.4bpp.lz"
gAreaTileSet_CastleGarden_bottom::
	.incbin "maps/areas/007_CastleGarden/tileSet/gAreaTileSet_CastleGarden_bottom.bin.lz"
gAreaTileSet_CastleGarden_top::
	.incbin "maps/areas/007_CastleGarden/tileSet/gAreaTileSet_CastleGarden_top.bin.lz"
gAreaTileSetTypes_CastleGarden_bottom::
	.incbin "maps/areas/007_CastleGarden/tileSet/gAreaTileSetTypes_CastleGarden_bottom.bin.lz"
gAreaTileSetTypes_CastleGarden_top::
	.incbin "maps/areas/007_CastleGarden/tileSet/gAreaTileSetTypes_CastleGarden_top.bin.lz"
gAreaRoomMap_CastleGarden_Main_bottom::
	.incbin "maps/areas/007_CastleGarden/rooms/00_Main/gAreaRoomMap_CastleGarden_Main_bottom.bin.lz"
gAreaRoomMap_CastleGarden_Main_top::
	.incbin "maps/areas/007_CastleGarden/rooms/00_Main/gAreaRoomMap_CastleGarden_Main_top.bin.lz"
gAreaTileSet_CloudTops_0_0::
	.incbin "maps/areas/008_CloudTops/tileSets/0/gAreaTileSet_CloudTops_0_0.4bpp.lz"
gAreaTileSet_CloudTops_0_1::
	.incbin "maps/areas/008_CloudTops/tileSets/0/gAreaTileSet_CloudTops_0_1.4bpp.lz"
gAreaTileSet_CloudTops_0_2::
	.incbin "maps/areas/008_CloudTops/tileSets/0/gAreaTileSet_CloudTops_0_2.4bpp.lz"
gAreaTileSet_CloudTops_bottom::
	.incbin "maps/areas/008_CloudTops/tileSet/gAreaTileSet_CloudTops_bottom.bin.lz"
gAreaTileSet_CloudTops_top::
	.incbin "maps/areas/008_CloudTops/tileSet/gAreaTileSet_CloudTops_top.bin.lz"
gAreaTileSetTypes_CloudTops_bottom::
	.incbin "maps/areas/008_CloudTops/tileSet/gAreaTileSetTypes_CloudTops_bottom.bin.lz"
gAreaTileSetTypes_CloudTops_top::
	.incbin "maps/areas/008_CloudTops/tileSet/gAreaTileSetTypes_CloudTops_top.bin.lz"
gAreaRoomMap_CloudTops_CloudTops_bottom::
	.incbin "maps/areas/008_CloudTops/rooms/00_CloudTops/gAreaRoomMap_CloudTops_CloudTops_bottom.bin.lz"
gAreaRoomMap_CloudTops_CloudTops_top::
	.incbin "maps/areas/008_CloudTops/rooms/00_CloudTops/gAreaRoomMap_CloudTops_CloudTops_top.bin.lz"
gAreaRoomMap_CloudTops_CloudMiddles_bottom::
	.incbin "maps/areas/008_CloudTops/rooms/01_CloudMiddles/gAreaRoomMap_CloudTops_CloudMiddles_bottom.bin.lz"
gAreaRoomMap_CloudTops_CloudMiddles_top::
	.incbin "maps/areas/008_CloudTops/rooms/01_CloudMiddles/gAreaRoomMap_CloudTops_CloudMiddles_top.bin.lz"
gAreaRoomMap_CloudTops_CloudBottoms_bottom::
	.incbin "maps/areas/008_CloudTops/rooms/02_CloudBottoms/gAreaRoomMap_CloudTops_CloudBottoms_bottom.bin.lz"
gAreaRoomMap_CloudTops_CloudBottoms_top::
	.incbin "maps/areas/008_CloudTops/rooms/02_CloudBottoms/gAreaRoomMap_CloudTops_CloudBottoms_top.bin.lz"
gAreaTileSet_CloudTops_0_3::
	.incbin "maps/areas/008_CloudTops/tileSets/0/gAreaTileSet_CloudTops_0_3.4bpp.lz"
gAreaTileSet_RoyalValley_0_0::
	.incbin "maps/areas/009_RoyalValley/tileSets/0/gAreaTileSet_RoyalValley_0_0.4bpp.lz"
gAreaTileSet_RoyalValley_0_1::
	.incbin "maps/areas/009_RoyalValley/tileSets/0/gAreaTileSet_RoyalValley_0_1.4bpp.lz"
gAreaTileSet_RoyalValley_0_2::
	.incbin "maps/areas/009_RoyalValley/tileSets/0/gAreaTileSet_RoyalValley_0_2.4bpp.lz"
gAreaTileSet_RoyalValley_bottom::
	.incbin "maps/areas/009_RoyalValley/tileSet/gAreaTileSet_RoyalValley_bottom.bin.lz"
gAreaTileSet_RoyalValley_top::
	.incbin "maps/areas/009_RoyalValley/tileSet/gAreaTileSet_RoyalValley_top.bin.lz"
gAreaTileSetTypes_RoyalValley_bottom::
	.incbin "maps/areas/009_RoyalValley/tileSet/gAreaTileSetTypes_RoyalValley_bottom.bin.lz"
gAreaTileSetTypes_RoyalValley_top::
	.incbin "maps/areas/009_RoyalValley/tileSet/gAreaTileSetTypes_RoyalValley_top.bin.lz"
gAreaRoomMap_RoyalValley_Main_bottom::
	.incbin "maps/areas/009_RoyalValley/rooms/00_Main/gAreaRoomMap_RoyalValley_Main_bottom.bin.lz"
gAreaRoomMap_RoyalValley_Main_top::
	.incbin "maps/areas/009_RoyalValley/rooms/00_Main/gAreaRoomMap_RoyalValley_Main_top.bin.lz"
unknown_9::
	.incbin "assets/unknown_9.bin"
gAreaRoomMap_RoyalValley_ForestMaze_bottom::
	.incbin "maps/areas/009_RoyalValley/rooms/01_ForestMaze/gAreaRoomMap_RoyalValley_ForestMaze_bottom.bin.lz"
gAreaRoomMap_RoyalValley_ForestMaze_top::
	.incbin "maps/areas/009_RoyalValley/rooms/01_ForestMaze/gAreaRoomMap_RoyalValley_ForestMaze_top.bin.lz"
gAreaTileSet_VeilFalls_0_0::
	.incbin "maps/areas/010_VeilFalls/tileSets/0/gAreaTileSet_VeilFalls_0_0.4bpp.lz"
gAreaTileSet_VeilFalls_0_1::
	.incbin "maps/areas/010_VeilFalls/tileSets/0/gAreaTileSet_VeilFalls_0_1.4bpp.lz"
gAreaTileSet_VeilFalls_0_2::
	.incbin "maps/areas/010_VeilFalls/tileSets/0/gAreaTileSet_VeilFalls_0_2.4bpp.lz"
gAreaRoomMap_VeilFalls_Main_bottom::
	.incbin "maps/areas/010_VeilFalls/rooms/00_Main/gAreaRoomMap_VeilFalls_Main_bottom.bin.lz"
gAreaRoomMap_VeilFalls_Main_top::
	.incbin "maps/areas/010_VeilFalls/rooms/00_Main/gAreaRoomMap_VeilFalls_Main_top.bin.lz"
gCaveBorder_VeilFalls_outside::
	.incbin "maps/areas/010_VeilFalls/rooms/00_Main/gCaveBorder_VeilFalls_outside.bin.lz"
gAreaTileSet_VeilFallsTop_0_2::
	.incbin "maps/areas/026_VeilFallsTop/tileSets/0/gAreaTileSet_VeilFallsTop_0_2.4bpp.lz"
gAreaRoomMap_VeilFallsTop_0_bottom::
	.incbin "maps/areas/026_VeilFallsTop/rooms/00_0/gAreaRoomMap_VeilFallsTop_0_bottom.bin.lz"
gAreaRoomMap_VeilFallsTop_0_top::
	.incbin "maps/areas/026_VeilFallsTop/rooms/00_0/gAreaRoomMap_VeilFallsTop_0_top.bin.lz"
gAreaTileSet_Beanstalks_0_0::
	.incbin "maps/areas/013_Beanstalks/tileSets/0/gAreaTileSet_Beanstalks_0_0.4bpp.lz"
gAreaTileSet_Beanstalks_0_1::
	.incbin "maps/areas/013_Beanstalks/tileSets/0/gAreaTileSet_Beanstalks_0_1.4bpp.lz"
gAreaTileSet_Beanstalks_0_2::
	.incbin "maps/areas/013_Beanstalks/tileSets/0/gAreaTileSet_Beanstalks_0_2.4bpp.lz"
gAreaTileSet_Beanstalks_bottom::
	.incbin "maps/areas/013_Beanstalks/tileSet/gAreaTileSet_Beanstalks_bottom.bin.lz"
gAreaTileSetTypes_Beanstalks_bottom::
	.incbin "maps/areas/013_Beanstalks/tileSet/gAreaTileSetTypes_Beanstalks_bottom.bin.lz"
gAreaTileSet_Beanstalks_0_3::
	.incbin "maps/areas/013_Beanstalks/tileSets/0/gAreaTileSet_Beanstalks_0_3.4bpp.lz"
gRoomMapping_Beanstalks_CrenelClimb_top::
	.incbin "maps/areas/013_Beanstalks/rooms/16_CrenelClimb/gRoomMapping_Beanstalks_CrenelClimb_top.bin.lz"
gAreaRoomMap_Beanstalks_Crenel_bottom::
	.incbin "maps/areas/013_Beanstalks/rooms/00_Crenel/gAreaRoomMap_Beanstalks_Crenel_bottom.bin"
gAreaRoomMap_Beanstalks_LakeHylia_bottom::
	.incbin "maps/areas/013_Beanstalks/rooms/01_LakeHylia/gAreaRoomMap_Beanstalks_LakeHylia_bottom.bin"
gAreaRoomMap_Beanstalks_Ruins_bottom::
	.incbin "maps/areas/013_Beanstalks/rooms/02_Ruins/gAreaRoomMap_Beanstalks_Ruins_bottom.bin"
gAreaRoomMap_Beanstalks_EasternHills_bottom::
	.incbin "maps/areas/013_Beanstalks/rooms/03_EasternHills/gAreaRoomMap_Beanstalks_EasternHills_bottom.bin"
gAreaRoomMap_Beanstalks_WesternWoods_bottom::
	.incbin "maps/areas/013_Beanstalks/rooms/04_WesternWoods/gAreaRoomMap_Beanstalks_WesternWoods_bottom.bin"
unknown_11::
	.incbin "assets/unknown_11.bin"
gAreaRoomMap_Empty_0_bottom::
	.incbin "maps/areas/014_Empty/rooms/00_0/gAreaRoomMap_Empty_0_bottom.bin.lz"
gAreaRoomMap_Empty_0_top::
	.incbin "maps/areas/014_Empty/rooms/00_0/gAreaRoomMap_Empty_0_top.bin.lz"
gAreaTileSet_CrenelCaves_0_0::
	.incbin "maps/areas/038_CrenelCaves/tileSets/0/gAreaTileSet_CrenelCaves_0_0.4bpp.lz"
gAreaTileSet_CrenelCaves_0_1::
	.incbin "maps/areas/038_CrenelCaves/tileSets/0/gAreaTileSet_CrenelCaves_0_1.4bpp.lz"
gAreaTileSet_CrenelCaves_0_2::
	.incbin "maps/areas/038_CrenelCaves/tileSets/0/gAreaTileSet_CrenelCaves_0_2.4bpp.lz"
gAreaTileSet_MinishHouseInteriors_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSet/gAreaTileSet_MinishHouseInteriors_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_top::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSet/gAreaTileSet_MinishHouseInteriors_top.bin.lz"
gAreaTileSetTypes_MinishHouseInteriors_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSet/gAreaTileSetTypes_MinishHouseInteriors_bottom.bin.lz"
gAreaTileSetTypes_MinishHouseInteriors_top::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSet/gAreaTileSetTypes_MinishHouseInteriors_top.bin.lz"
gAreaRoomMap_CrenelCaves_BlockPushing_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/00_BlockPushing/gAreaRoomMap_CrenelCaves_BlockPushing_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_BlockPushing_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/00_BlockPushing/gAreaRoomMap_CrenelCaves_BlockPushing_top.bin.lz"
gAreaRoomMap_CrenelCaves_PillarCave_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/01_PillarCave/gAreaRoomMap_CrenelCaves_PillarCave_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_PillarCave_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/01_PillarCave/gAreaRoomMap_CrenelCaves_PillarCave_top.bin.lz"
gAreaRoomMap_CrenelCaves_BridgeSwitch_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/02_BridgeSwitch/gAreaRoomMap_CrenelCaves_BridgeSwitch_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_BridgeSwitch_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/02_BridgeSwitch/gAreaRoomMap_CrenelCaves_BridgeSwitch_top.bin.lz"
gAreaRoomMap_CrenelCaves_ExitToMines_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/03_ExitToMines/gAreaRoomMap_CrenelCaves_ExitToMines_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_ExitToMines_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/03_ExitToMines/gAreaRoomMap_CrenelCaves_ExitToMines_top.bin.lz"
gAreaRoomMap_CrenelCaves_GripRing_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/04_GripRing/gAreaRoomMap_CrenelCaves_GripRing_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_GripRing_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/04_GripRing/gAreaRoomMap_CrenelCaves_GripRing_top.bin.lz"
gAreaRoomMap_CrenelCaves_FairyFountain_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/05_FairyFountain/gAreaRoomMap_CrenelCaves_FairyFountain_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_FairyFountain_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/05_FairyFountain/gAreaRoomMap_CrenelCaves_FairyFountain_top.bin.lz"
gAreaRoomMap_CrenelCaves_SpinyChuPuzzle_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/06_SpinyChuPuzzle/gAreaRoomMap_CrenelCaves_SpinyChuPuzzle_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_SpinyChuPuzzle_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/06_SpinyChuPuzzle/gAreaRoomMap_CrenelCaves_SpinyChuPuzzle_top.bin.lz"
gAreaRoomMap_CrenelCaves_ChuchuPotChest_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/07_ChuchuPotChest/gAreaRoomMap_CrenelCaves_ChuchuPotChest_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_ChuchuPotChest_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/07_ChuchuPotChest/gAreaRoomMap_CrenelCaves_ChuchuPotChest_top.bin.lz"
gAreaRoomMap_CrenelCaves_WaterHeartPiece_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/08_WaterHeartPiece/gAreaRoomMap_CrenelCaves_WaterHeartPiece_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_WaterHeartPiece_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/08_WaterHeartPiece/gAreaRoomMap_CrenelCaves_WaterHeartPiece_top.bin.lz"
gAreaRoomMap_CrenelCaves_RupeeFairyFouintain_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/09_RupeeFairyFouintain/gAreaRoomMap_CrenelCaves_RupeeFairyFouintain_bottom.bin"
gAreaRoomMap_CrenelCaves_RupeeFairyFouintain_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/09_RupeeFairyFouintain/gAreaRoomMap_CrenelCaves_RupeeFairyFouintain_top.bin.lz"
gAreaRoomMap_CrenelCaves_HelmasaurHallway_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/10_HelmasaurHallway/gAreaRoomMap_CrenelCaves_HelmasaurHallway_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_HelmasaurHallway_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/10_HelmasaurHallway/gAreaRoomMap_CrenelCaves_HelmasaurHallway_top.bin.lz"
gAreaRoomMap_CrenelCaves_MushroomKeese_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/11_MushroomKeese/gAreaRoomMap_CrenelCaves_MushroomKeese_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_MushroomKeese_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/11_MushroomKeese/gAreaRoomMap_CrenelCaves_MushroomKeese_top.bin.lz"
gAreaRoomMap_CrenelCaves_LadderToSpringWater_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/12_LadderToSpringWater/gAreaRoomMap_CrenelCaves_LadderToSpringWater_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_LadderToSpringWater_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/12_LadderToSpringWater/gAreaRoomMap_CrenelCaves_LadderToSpringWater_top.bin.lz"
gAreaRoomMap_CrenelCaves_BombBusinessScrub_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/13_BombBusinessScrub/gAreaRoomMap_CrenelCaves_BombBusinessScrub_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_BombBusinessScrub_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/13_BombBusinessScrub/gAreaRoomMap_CrenelCaves_BombBusinessScrub_top.bin.lz"
gAreaRoomMap_CrenelCaves_Hermit_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/14_Hermit/gAreaRoomMap_CrenelCaves_Hermit_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_Hermit_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/14_Hermit/gAreaRoomMap_CrenelCaves_Hermit_top.bin.lz"
gAreaRoomMap_CrenelCaves_HintScrub_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/15_HintScrub/gAreaRoomMap_CrenelCaves_HintScrub_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_HintScrub_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/15_HintScrub/gAreaRoomMap_CrenelCaves_HintScrub_top.bin.lz"
gAreaRoomMap_CrenelCaves_ToGrayblade_bottom::
	.incbin "maps/areas/038_CrenelCaves/rooms/16_ToGrayblade/gAreaRoomMap_CrenelCaves_ToGrayblade_bottom.bin.lz"
gAreaRoomMap_CrenelCaves_ToGrayblade_top::
	.incbin "maps/areas/038_CrenelCaves/rooms/16_ToGrayblade/gAreaRoomMap_CrenelCaves_ToGrayblade_top.bin.lz"
gAreaTileSet_GreatFairies_0_0::
	.incbin "maps/areas/041_GreatFairies/tileSets/0/gAreaTileSet_GreatFairies_0_0.4bpp.lz"
gAreaTileSet_GreatFairies_0_1::
	.incbin "maps/areas/041_GreatFairies/tileSets/0/gAreaTileSet_GreatFairies_0_1.4bpp.lz"
gAreaTileSet_GreatFairies_0_2::
	.incbin "maps/areas/041_GreatFairies/tileSets/0/gAreaTileSet_GreatFairies_0_2.4bpp.lz"
gAreaTileSet_GreatFairies_bottom::
	.incbin "maps/areas/041_GreatFairies/tileSet/gAreaTileSet_GreatFairies_bottom.bin.lz"
gAreaTileSet_GreatFairies_top::
	.incbin "maps/areas/041_GreatFairies/tileSet/gAreaTileSet_GreatFairies_top.bin.lz"
gAreaTileSetTypes_GreatFairies_bottom::
	.incbin "maps/areas/041_GreatFairies/tileSet/gAreaTileSetTypes_GreatFairies_bottom.bin.lz"
gAreaTileSetTypes_GreatFairies_top::
	.incbin "maps/areas/041_GreatFairies/tileSet/gAreaTileSetTypes_GreatFairies_top.bin.lz"
gAreaRoomMap_GreatFairies_Graveyard_bottom::
	.incbin "maps/areas/041_GreatFairies/rooms/00_Graveyard/gAreaRoomMap_GreatFairies_Graveyard_bottom.bin.lz"
gAreaRoomMap_GreatFairies_Graveyard_top::
	.incbin "maps/areas/041_GreatFairies/rooms/00_Graveyard/gAreaRoomMap_GreatFairies_Graveyard_top.bin.lz"
gAreaRoomMap_GreatFairies_MinishWoods_bottom::
	.incbin "maps/areas/041_GreatFairies/rooms/01_MinishWoods/gAreaRoomMap_GreatFairies_MinishWoods_bottom.bin.lz"
gAreaRoomMap_GreatFairies_MinishWoods_top::
	.incbin "maps/areas/041_GreatFairies/rooms/01_MinishWoods/gAreaRoomMap_GreatFairies_MinishWoods_top.bin.lz"
gAreaRoomMap_GreatFairies_Crenel_bottom::
	.incbin "maps/areas/041_GreatFairies/rooms/02_Crenel/gAreaRoomMap_GreatFairies_Crenel_bottom.bin.lz"
gAreaRoomMap_GreatFairies_Crenel_top::
	.incbin "maps/areas/041_GreatFairies/rooms/02_Crenel/gAreaRoomMap_GreatFairies_Crenel_top.bin.lz"
gAreaRoomMap_CastorCaves_South_bottom::
	.incbin "maps/areas/042_CastorCaves/rooms/00_South/gAreaRoomMap_CastorCaves_South_bottom.bin.lz"
gAreaRoomMap_CastorCaves_South_top::
	.incbin "maps/areas/042_CastorCaves/rooms/00_South/gAreaRoomMap_CastorCaves_South_top.bin.lz"
gAreaRoomMap_CastorCaves_North_bottom::
	.incbin "maps/areas/042_CastorCaves/rooms/01_North/gAreaRoomMap_CastorCaves_North_bottom.bin.lz"
gAreaRoomMap_CastorCaves_North_top::
	.incbin "maps/areas/042_CastorCaves/rooms/01_North/gAreaRoomMap_CastorCaves_North_top.bin.lz"
gAreaRoomMap_CastorCaves_WindRuins_bottom::
	.incbin "maps/areas/042_CastorCaves/rooms/02_WindRuins/gAreaRoomMap_CastorCaves_WindRuins_bottom.bin.lz"
gAreaRoomMap_CastorCaves_WindRuins_top::
	.incbin "maps/areas/042_CastorCaves/rooms/02_WindRuins/gAreaRoomMap_CastorCaves_WindRuins_top.bin.lz"
gAreaRoomMap_CastorCaves_Darknut_bottom::
	.incbin "maps/areas/042_CastorCaves/rooms/03_Darknut/gAreaRoomMap_CastorCaves_Darknut_bottom.bin.lz"
gAreaRoomMap_CastorCaves_Darknut_top::
	.incbin "maps/areas/042_CastorCaves/rooms/03_Darknut/gAreaRoomMap_CastorCaves_Darknut_top.bin.lz"
gAreaRoomMap_CastorCaves_HeartPiece_bottom::
	.incbin "maps/areas/042_CastorCaves/rooms/04_HeartPiece/gAreaRoomMap_CastorCaves_HeartPiece_bottom.bin.lz"
gAreaRoomMap_CastorCaves_HeartPiece_top::
	.incbin "maps/areas/042_CastorCaves/rooms/04_HeartPiece/gAreaRoomMap_CastorCaves_HeartPiece_top.bin.lz"
gAreaRoomMap_CastorDarknut_Main_bottom::
	.incbin "maps/areas/043_CastorDarknut/rooms/00_Main/gAreaRoomMap_CastorDarknut_Main_bottom.bin.lz"
gAreaRoomMap_CastorDarknut_Main_top::
	.incbin "maps/areas/043_CastorDarknut/rooms/00_Main/gAreaRoomMap_CastorDarknut_Main_top.bin.lz"
gAreaRoomMap_CastorDarknut_Hall_bottom::
	.incbin "maps/areas/043_CastorDarknut/rooms/01_Hall/gAreaRoomMap_CastorDarknut_Hall_bottom.bin.lz"
gAreaRoomMap_CastorDarknut_Hall_top::
	.incbin "maps/areas/043_CastorDarknut/rooms/01_Hall/gAreaRoomMap_CastorDarknut_Hall_top.bin.lz"
gAreaTileSet_ArmosInteriors_0_0::
	.incbin "maps/areas/044_ArmosInteriors/tileSets/0/gAreaTileSet_ArmosInteriors_0_0.4bpp.lz"
gAreaTileSet_ArmosInteriors_0_1::
	.incbin "maps/areas/044_ArmosInteriors/tileSets/0/gAreaTileSet_ArmosInteriors_0_1.4bpp.lz"
gAreaTileSet_ArmosInteriors_0_2::
	.incbin "maps/areas/044_ArmosInteriors/tileSets/0/gAreaTileSet_ArmosInteriors_0_2.4bpp.lz"
gAreaTileSet_ArmosInteriors_bottom::
	.incbin "maps/areas/044_ArmosInteriors/tileSet/gAreaTileSet_ArmosInteriors_bottom.bin.lz"
gAreaTileSet_ArmosInteriors_top::
	.incbin "maps/areas/044_ArmosInteriors/tileSet/gAreaTileSet_ArmosInteriors_top.bin.lz"
gAreaTileSetTypes_ArmosInteriors_bottom::
	.incbin "maps/areas/044_ArmosInteriors/tileSet/gAreaTileSetTypes_ArmosInteriors_bottom.bin.lz"
gAreaTileSetTypes_ArmosInteriors_top::
	.incbin "maps/areas/044_ArmosInteriors/tileSet/gAreaTileSetTypes_ArmosInteriors_top.bin.lz"
gAreaRoomMap_ArmosInteriors_RuinsEntranceNorth_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/00_RuinsEntranceNorth/gAreaRoomMap_ArmosInteriors_RuinsEntranceNorth_bottom.bin"
gAreaRoomMap_ArmosInteriors_RuinsEntranceNorth_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/00_RuinsEntranceNorth/gAreaRoomMap_ArmosInteriors_RuinsEntranceNorth_top.bin.lz"
gAreaRoomMap_ArmosInteriors_RuinsEntranceSouth_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/01_RuinsEntranceSouth/gAreaRoomMap_ArmosInteriors_RuinsEntranceSouth_bottom.bin"
gAreaRoomMap_ArmosInteriors_RuinsEntranceSouth_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/01_RuinsEntranceSouth/gAreaRoomMap_ArmosInteriors_RuinsEntranceSouth_top.bin.lz"
gAreaRoomMap_ArmosInteriors_RuinsLeft_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/02_RuinsLeft/gAreaRoomMap_ArmosInteriors_RuinsLeft_bottom.bin"
gAreaRoomMap_ArmosInteriors_RuinsLeft_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/02_RuinsLeft/gAreaRoomMap_ArmosInteriors_RuinsLeft_top.bin.lz"
gAreaRoomMap_ArmosInteriors_RuinsMiddleLeft_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/03_RuinsMiddleLeft/gAreaRoomMap_ArmosInteriors_RuinsMiddleLeft_bottom.bin"
gAreaRoomMap_ArmosInteriors_RuinsMiddleLeft_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/03_RuinsMiddleLeft/gAreaRoomMap_ArmosInteriors_RuinsMiddleLeft_top.bin.lz"
gAreaRoomMap_ArmosInteriors_RuinsMiddleRight_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/04_RuinsMiddleRight/gAreaRoomMap_ArmosInteriors_RuinsMiddleRight_bottom.bin"
gAreaRoomMap_ArmosInteriors_RuinsMiddleRight_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/04_RuinsMiddleRight/gAreaRoomMap_ArmosInteriors_RuinsMiddleRight_top.bin.lz"
gAreaRoomMap_ArmosInteriors_RuinsRight_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/05_RuinsRight/gAreaRoomMap_ArmosInteriors_RuinsRight_bottom.bin"
gAreaRoomMap_ArmosInteriors_RuinsRight_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/05_RuinsRight/gAreaRoomMap_ArmosInteriors_RuinsRight_top.bin.lz"
gAreaRoomMap_ArmosInteriors_6_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/06_6/gAreaRoomMap_ArmosInteriors_6_bottom.bin"
gAreaRoomMap_ArmosInteriors_6_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/06_6/gAreaRoomMap_ArmosInteriors_6_top.bin.lz"
gAreaRoomMap_ArmosInteriors_RuinsGrassPath_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/07_RuinsGrassPath/gAreaRoomMap_ArmosInteriors_RuinsGrassPath_bottom.bin"
gAreaRoomMap_ArmosInteriors_RuinsGrassPath_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/07_RuinsGrassPath/gAreaRoomMap_ArmosInteriors_RuinsGrassPath_top.bin.lz"
gAreaRoomMap_ArmosInteriors_8_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/08_8/gAreaRoomMap_ArmosInteriors_8_bottom.bin"
gAreaRoomMap_ArmosInteriors_8_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/08_8/gAreaRoomMap_ArmosInteriors_8_top.bin.lz"
gAreaRoomMap_ArmosInteriors_FortressLeft_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/09_FortressLeft/gAreaRoomMap_ArmosInteriors_FortressLeft_bottom.bin"
gAreaRoomMap_ArmosInteriors_FortressLeft_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/09_FortressLeft/gAreaRoomMap_ArmosInteriors_FortressLeft_top.bin.lz"
gAreaRoomMap_ArmosInteriors_FortressRight_bottom::
	.incbin "maps/areas/044_ArmosInteriors/rooms/10_FortressRight/gAreaRoomMap_ArmosInteriors_FortressRight_bottom.bin"
gAreaRoomMap_ArmosInteriors_FortressRight_top::
	.incbin "maps/areas/044_ArmosInteriors/rooms/10_FortressRight/gAreaRoomMap_ArmosInteriors_FortressRight_top.bin.lz"
gAreaTileSet_GoronCave_0_0::
	.incbin "maps/areas/047_GoronCave/tileSets/0/gAreaTileSet_GoronCave_0_0.4bpp.lz"
gAreaTileSet_GoronCave_0_1::
	.incbin "maps/areas/047_GoronCave/tileSets/0/gAreaTileSet_GoronCave_0_1.4bpp.lz"
gAreaTileSet_GoronCave_0_2::
	.incbin "maps/areas/047_GoronCave/tileSets/0/gAreaTileSet_GoronCave_0_2.4bpp.lz"
gAreaTileSet_GoronCave_bottom::
	.incbin "maps/areas/047_GoronCave/tileSet/gAreaTileSet_GoronCave_bottom.bin.lz"
gAreaTileSet_GoronCave_top::
	.incbin "maps/areas/047_GoronCave/tileSet/gAreaTileSet_GoronCave_top.bin.lz"
gAreaTileSetTypes_GoronCave_bottom::
	.incbin "maps/areas/047_GoronCave/tileSet/gAreaTileSetTypes_GoronCave_bottom.bin.lz"
gAreaTileSetTypes_GoronCave_top::
	.incbin "maps/areas/047_GoronCave/tileSet/gAreaTileSetTypes_GoronCave_top.bin.lz"
gAreaRoomMap_GoronCave_Stairs_bottom::
	.incbin "maps/areas/047_GoronCave/rooms/00_Stairs/gAreaRoomMap_GoronCave_Stairs_bottom.bin.lz"
gAreaRoomMap_GoronCave_Stairs_top::
	.incbin "maps/areas/047_GoronCave/rooms/00_Stairs/gAreaRoomMap_GoronCave_Stairs_top.bin.lz"
gAreaRoomMap_GoronCave_Main_bottom::
	.incbin "maps/areas/047_GoronCave/rooms/01_Main/gAreaRoomMap_GoronCave_Main_bottom.bin.lz"
gAreaRoomMap_GoronCave_Main_top::
	.incbin "maps/areas/047_GoronCave/rooms/01_Main/gAreaRoomMap_GoronCave_Main_top.bin.lz"
gAreaRoomMap_Caves_Boomerang_bottom::
	.incbin "maps/areas/050_Caves/rooms/00_Boomerang/gAreaRoomMap_Caves_Boomerang_bottom.bin.lz"
gAreaRoomMap_Caves_Boomerang_top::
	.incbin "maps/areas/050_Caves/rooms/00_Boomerang/gAreaRoomMap_Caves_Boomerang_top.bin.lz"
gAreaRoomMap_Caves_ToGraveyard_bottom::
	.incbin "maps/areas/050_Caves/rooms/01_ToGraveyard/gAreaRoomMap_Caves_ToGraveyard_bottom.bin.lz"
gAreaRoomMap_Caves_ToGraveyard_top::
	.incbin "maps/areas/050_Caves/rooms/01_ToGraveyard/gAreaRoomMap_Caves_ToGraveyard_top.bin.lz"
gAreaRoomMap_Caves_2_bottom::
	.incbin "maps/areas/050_Caves/rooms/02_2/gAreaRoomMap_Caves_2_bottom.bin.lz"
gAreaRoomMap_Caves_2_top::
	.incbin "maps/areas/050_Caves/rooms/02_2/gAreaRoomMap_Caves_2_top.bin.lz"
gAreaRoomMap_Caves_3_bottom::
	.incbin "maps/areas/050_Caves/rooms/03_3/gAreaRoomMap_Caves_3_bottom.bin.lz"
gAreaRoomMap_Caves_3_top::
	.incbin "maps/areas/050_Caves/rooms/03_3/gAreaRoomMap_Caves_3_top.bin.lz"
gAreaRoomMap_Caves_4_bottom::
	.incbin "maps/areas/050_Caves/rooms/04_4/gAreaRoomMap_Caves_4_bottom.bin.lz"
gAreaRoomMap_Caves_4_top::
	.incbin "maps/areas/050_Caves/rooms/04_4/gAreaRoomMap_Caves_4_top.bin.lz"
gAreaRoomMap_Caves_5_bottom::
	.incbin "maps/areas/050_Caves/rooms/05_5/gAreaRoomMap_Caves_5_bottom.bin.lz"
gAreaRoomMap_Caves_5_top::
	.incbin "maps/areas/050_Caves/rooms/05_5/gAreaRoomMap_Caves_5_top.bin.lz"
gAreaRoomMap_Caves_6_bottom::
	.incbin "maps/areas/050_Caves/rooms/06_6/gAreaRoomMap_Caves_6_bottom.bin.lz"
gAreaRoomMap_Caves_6_top::
	.incbin "maps/areas/050_Caves/rooms/06_6/gAreaRoomMap_Caves_6_top.bin.lz"
gAreaRoomMap_Caves_TrilbyKeeseChest_bottom::
	.incbin "maps/areas/050_Caves/rooms/07_TrilbyKeeseChest/gAreaRoomMap_Caves_TrilbyKeeseChest_bottom.bin.lz"
gAreaRoomMap_Caves_TrilbyKeeseChest_top::
	.incbin "maps/areas/050_Caves/rooms/07_TrilbyKeeseChest/gAreaRoomMap_Caves_TrilbyKeeseChest_top.bin.lz"
gAreaRoomMap_Caves_TrilbyFairyFountain_bottom::
	.incbin "maps/areas/050_Caves/rooms/08_TrilbyFairyFountain/gAreaRoomMap_Caves_TrilbyFairyFountain_bottom.bin.lz"
gAreaRoomMap_Caves_TrilbyFairyFountain_top::
	.incbin "maps/areas/050_Caves/rooms/08_TrilbyFairyFountain/gAreaRoomMap_Caves_TrilbyFairyFountain_top.bin.lz"
gAreaRoomMap_Caves_SouthHyruleFieldFairyFountain_bottom::
	.incbin "maps/areas/050_Caves/rooms/09_SouthHyruleFieldFairyFountain/gAreaRoomMap_Caves_SouthHyruleFieldFairyFountain_bottom.bin.lz"
gAreaRoomMap_Caves_SouthHyruleFieldFairyFountain_top::
	.incbin "maps/areas/050_Caves/rooms/09_SouthHyruleFieldFairyFountain/gAreaRoomMap_Caves_SouthHyruleFieldFairyFountain_top.bin.lz"
gAreaRoomMap_Caves_A_bottom::
	.incbin "maps/areas/050_Caves/rooms/10_A/gAreaRoomMap_Caves_A_bottom.bin.lz"
gAreaRoomMap_Caves_A_top::
	.incbin "maps/areas/050_Caves/rooms/10_A/gAreaRoomMap_Caves_A_top.bin.lz"
gAreaRoomMap_Caves_HyruleTownWaterfall_bottom::
	.incbin "maps/areas/050_Caves/rooms/11_HyruleTownWaterfall/gAreaRoomMap_Caves_HyruleTownWaterfall_bottom.bin.lz"
gAreaRoomMap_Caves_HyruleTownWaterfall_top::
	.incbin "maps/areas/050_Caves/rooms/11_HyruleTownWaterfall/gAreaRoomMap_Caves_HyruleTownWaterfall_top.bin.lz"
gAreaRoomMap_Caves_LonLonRanch_bottom::
	.incbin "maps/areas/050_Caves/rooms/12_LonLonRanch/gAreaRoomMap_Caves_LonLonRanch_bottom.bin.lz"
gAreaRoomMap_Caves_LonLonRanch_top::
	.incbin "maps/areas/050_Caves/rooms/12_LonLonRanch/gAreaRoomMap_Caves_LonLonRanch_top.bin.lz"
gAreaRoomMap_Caves_LonLonRanchSecret_bottom::
	.incbin "maps/areas/050_Caves/rooms/13_LonLonRanchSecret/gAreaRoomMap_Caves_LonLonRanchSecret_bottom.bin.lz"
gAreaRoomMap_Caves_LonLonRanchSecret_top::
	.incbin "maps/areas/050_Caves/rooms/13_LonLonRanchSecret/gAreaRoomMap_Caves_LonLonRanchSecret_top.bin.lz"
gAreaRoomMap_Caves_TrilbyHighlands_bottom::
	.incbin "maps/areas/050_Caves/rooms/14_TrilbyHighlands/gAreaRoomMap_Caves_TrilbyHighlands_bottom.bin.lz"
gAreaRoomMap_Caves_TrilbyHighlands_top::
	.incbin "maps/areas/050_Caves/rooms/14_TrilbyHighlands/gAreaRoomMap_Caves_TrilbyHighlands_top.bin.lz"
gAreaRoomMap_Caves_LonLonRanchWallet_bottom::
	.incbin "maps/areas/050_Caves/rooms/15_LonLonRanchWallet/gAreaRoomMap_Caves_LonLonRanchWallet_bottom.bin.lz"
gAreaRoomMap_Caves_LonLonRanchWallet_top::
	.incbin "maps/areas/050_Caves/rooms/15_LonLonRanchWallet/gAreaRoomMap_Caves_LonLonRanchWallet_top.bin.lz"
gAreaRoomMap_Caves_SouthHyruleFieldRupee_bottom::
	.incbin "maps/areas/050_Caves/rooms/16_SouthHyruleFieldRupee/gAreaRoomMap_Caves_SouthHyruleFieldRupee_bottom.bin.lz"
gAreaRoomMap_Caves_SouthHyruleFieldRupee_top::
	.incbin "maps/areas/050_Caves/rooms/16_SouthHyruleFieldRupee/gAreaRoomMap_Caves_SouthHyruleFieldRupee_top.bin.lz"
gAreaRoomMap_Caves_TrilbyRupee_bottom::
	.incbin "maps/areas/050_Caves/rooms/17_TrilbyRupee/gAreaRoomMap_Caves_TrilbyRupee_bottom.bin.lz"
gAreaRoomMap_Caves_TrilbyRupee_top::
	.incbin "maps/areas/050_Caves/rooms/17_TrilbyRupee/gAreaRoomMap_Caves_TrilbyRupee_top.bin.lz"
gAreaRoomMap_Caves_TrilbyMittsFairyFountain_bottom::
	.incbin "maps/areas/050_Caves/rooms/18_TrilbyMittsFairyFountain/gAreaRoomMap_Caves_TrilbyMittsFairyFountain_bottom.bin.lz"
gAreaRoomMap_Caves_TrilbyMittsFairyFountain_top::
	.incbin "maps/areas/050_Caves/rooms/18_TrilbyMittsFairyFountain/gAreaRoomMap_Caves_TrilbyMittsFairyFountain_top.bin.lz"
gAreaRoomMap_Caves_HillsKeeseChest_bottom::
	.incbin "maps/areas/050_Caves/rooms/19_HillsKeeseChest/gAreaRoomMap_Caves_HillsKeeseChest_bottom.bin.lz"
gAreaRoomMap_Caves_HillsKeeseChest_top::
	.incbin "maps/areas/050_Caves/rooms/19_HillsKeeseChest/gAreaRoomMap_Caves_HillsKeeseChest_top.bin.lz"
gAreaRoomMap_Caves_BottleBusinessScrub_bottom::
	.incbin "maps/areas/050_Caves/rooms/20_BottleBusinessScrub/gAreaRoomMap_Caves_BottleBusinessScrub_bottom.bin.lz"
gAreaRoomMap_Caves_BottleBusinessScrub_top::
	.incbin "maps/areas/050_Caves/rooms/20_BottleBusinessScrub/gAreaRoomMap_Caves_BottleBusinessScrub_top.bin.lz"
gAreaRoomMap_Caves_HeartPieceHallway_bottom::
	.incbin "maps/areas/050_Caves/rooms/21_HeartPieceHallway/gAreaRoomMap_Caves_HeartPieceHallway_bottom.bin.lz"
gAreaRoomMap_Caves_HeartPieceHallway_top::
	.incbin "maps/areas/050_Caves/rooms/21_HeartPieceHallway/gAreaRoomMap_Caves_HeartPieceHallway_top.bin.lz"
gAreaRoomMap_Caves_NorthHyruleFieldFairyFountain_bottom::
	.incbin "maps/areas/050_Caves/rooms/22_NorthHyruleFieldFairyFountain/gAreaRoomMap_Caves_NorthHyruleFieldFairyFountain_bottom.bin.lz"
gAreaRoomMap_Caves_NorthHyruleFieldFairyFountain_top::
	.incbin "maps/areas/050_Caves/rooms/22_NorthHyruleFieldFairyFountain/gAreaRoomMap_Caves_NorthHyruleFieldFairyFountain_top.bin.lz"
gAreaRoomMap_Caves_KinstoneBusinessScrub_bottom::
	.incbin "maps/areas/050_Caves/rooms/23_KinstoneBusinessScrub/gAreaRoomMap_Caves_KinstoneBusinessScrub_bottom.bin.lz"
gAreaRoomMap_Caves_KinstoneBusinessScrub_top::
	.incbin "maps/areas/050_Caves/rooms/23_KinstoneBusinessScrub/gAreaRoomMap_Caves_KinstoneBusinessScrub_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_Hallway2f_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/00_Hallway2f/gAreaRoomMap_VeilFallsCaves_Hallway2f_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_Hallway2f_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/00_Hallway2f/gAreaRoomMap_VeilFallsCaves_Hallway2f_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_Hallway1f_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/01_Hallway1f/gAreaRoomMap_VeilFallsCaves_Hallway1f_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_Hallway1f_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/01_Hallway1f/gAreaRoomMap_VeilFallsCaves_Hallway1f_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwaySecretRoom_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/02_HallwaySecretRoom/gAreaRoomMap_VeilFallsCaves_HallwaySecretRoom_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwaySecretRoom_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/02_HallwaySecretRoom/gAreaRoomMap_VeilFallsCaves_HallwaySecretRoom_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_Entrance_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/03_Entrance/gAreaRoomMap_VeilFallsCaves_Entrance_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_Entrance_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/03_Entrance/gAreaRoomMap_VeilFallsCaves_Entrance_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_Exit_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/04_Exit/gAreaRoomMap_VeilFallsCaves_Exit_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_Exit_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/04_Exit/gAreaRoomMap_VeilFallsCaves_Exit_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_SecretChest_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/05_SecretChest/gAreaRoomMap_VeilFallsCaves_SecretChest_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_SecretChest_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/05_SecretChest/gAreaRoomMap_VeilFallsCaves_SecretChest_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwaySecretStaircase_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/06_HallwaySecretStaircase/gAreaRoomMap_VeilFallsCaves_HallwaySecretStaircase_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwaySecretStaircase_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/06_HallwaySecretStaircase/gAreaRoomMap_VeilFallsCaves_HallwaySecretStaircase_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwayBlockPuzzle_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/07_HallwayBlockPuzzle/gAreaRoomMap_VeilFallsCaves_HallwayBlockPuzzle_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwayBlockPuzzle_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/07_HallwayBlockPuzzle/gAreaRoomMap_VeilFallsCaves_HallwayBlockPuzzle_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwayRupeePath_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/08_HallwayRupeePath/gAreaRoomMap_VeilFallsCaves_HallwayRupeePath_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwayRupeePath_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/08_HallwayRupeePath/gAreaRoomMap_VeilFallsCaves_HallwayRupeePath_top.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwayHeartPiece_bottom::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/09_HallwayHeartPiece/gAreaRoomMap_VeilFallsCaves_HallwayHeartPiece_bottom.bin.lz"
gAreaRoomMap_VeilFallsCaves_HallwayHeartPiece_top::
	.incbin "maps/areas/051_VeilFallsCaves/rooms/09_HallwayHeartPiece/gAreaRoomMap_VeilFallsCaves_HallwayHeartPiece_top.bin.lz"
gAreaRoomMap_RoyalValleyGraves_HeartPiece_bottom::
	.incbin "maps/areas/052_RoyalValleyGraves/rooms/00_HeartPiece/gAreaRoomMap_RoyalValleyGraves_HeartPiece_bottom.bin.lz"
gAreaRoomMap_RoyalValleyGraves_HeartPiece_top::
	.incbin "maps/areas/052_RoyalValleyGraves/rooms/00_HeartPiece/gAreaRoomMap_RoyalValleyGraves_HeartPiece_top.bin.lz"
gAreaRoomMap_RoyalValleyGraves_Gina_bottom::
	.incbin "maps/areas/052_RoyalValleyGraves/rooms/01_Gina/gAreaRoomMap_RoyalValleyGraves_Gina_bottom.bin.lz"
gAreaRoomMap_RoyalValleyGraves_Gina_top::
	.incbin "maps/areas/052_RoyalValleyGraves/rooms/01_Gina/gAreaRoomMap_RoyalValleyGraves_Gina_top.bin.lz"
gAreaTileSet_MinishCaves_0_0::
	.incbin "maps/areas/053_MinishCaves/tileSets/0/gAreaTileSet_MinishCaves_0_0.4bpp.lz"
gAreaTileSet_MinishCaves_0_1::
	.incbin "maps/areas/053_MinishCaves/tileSets/0/gAreaTileSet_MinishCaves_0_1.4bpp.lz"
gAreaTileSet_MinishCaves_0_2::
	.incbin "maps/areas/053_MinishCaves/tileSets/0/gAreaTileSet_MinishCaves_0_2.4bpp.lz"
gAreaTileSet_MinishCaves_bottom::
	.incbin "maps/areas/053_MinishCaves/tileSet/gAreaTileSet_MinishCaves_bottom.bin.lz"
gAreaTileSet_MinishCaves_top::
	.incbin "maps/areas/053_MinishCaves/tileSet/gAreaTileSet_MinishCaves_top.bin.lz"
gAreaTileSetTypes_MinishCaves_bottom::
	.incbin "maps/areas/053_MinishCaves/tileSet/gAreaTileSetTypes_MinishCaves_bottom.bin.lz"
gAreaTileSetTypes_MinishCaves_top::
	.incbin "maps/areas/053_MinishCaves/tileSet/gAreaTileSetTypes_MinishCaves_top.bin.lz"
gAreaTileSet_CastleGardenMinishHoles_0_0::
	.incbin "maps/areas/054_CastleGardenMinishHoles/tileSets/0/gAreaTileSet_CastleGardenMinishHoles_0_0.4bpp.lz"
gAreaTileSet_CastleGardenMinishHoles_0_1::
	.incbin "maps/areas/054_CastleGardenMinishHoles/tileSets/0/gAreaTileSet_CastleGardenMinishHoles_0_1.4bpp.lz"
gAreaTileSet_CastleGardenMinishHoles_0_2::
	.incbin "maps/areas/054_CastleGardenMinishHoles/tileSets/0/gAreaTileSet_CastleGardenMinishHoles_0_2.4bpp.lz"
gAreaTileSet_CastleGardenMinishHoles_bottom::
	.incbin "maps/areas/054_CastleGardenMinishHoles/tileSet/gAreaTileSet_CastleGardenMinishHoles_bottom.bin.lz"
gAreaTileSet_CastleGardenMinishHoles_top::
	.incbin "maps/areas/054_CastleGardenMinishHoles/tileSet/gAreaTileSet_CastleGardenMinishHoles_top.bin.lz"
gAreaTileSetTypes_CastleGardenMinishHoles_bottom::
	.incbin "maps/areas/054_CastleGardenMinishHoles/tileSet/gAreaTileSetTypes_CastleGardenMinishHoles_bottom.bin.lz"
gAreaTileSetTypes_CastleGardenMinishHoles_top::
	.incbin "maps/areas/054_CastleGardenMinishHoles/tileSet/gAreaTileSetTypes_CastleGardenMinishHoles_top.bin.lz"
gAreaRoomMap_MinishCaves_BeanPesto_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/00_BeanPesto/gAreaRoomMap_MinishCaves_BeanPesto_bottom.bin.lz"
gAreaRoomMap_MinishCaves_BeanPesto_top::
	.incbin "maps/areas/053_MinishCaves/rooms/00_BeanPesto/gAreaRoomMap_MinishCaves_BeanPesto_top.bin.lz"
gAreaRoomMap_MinishCaves_SoutheastWater1_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/01_SoutheastWater1/gAreaRoomMap_MinishCaves_SoutheastWater1_bottom.bin.lz"
gAreaRoomMap_MinishCaves_SoutheastWater1_top::
	.incbin "maps/areas/053_MinishCaves/rooms/01_SoutheastWater1/gAreaRoomMap_MinishCaves_SoutheastWater1_top.bin.lz"
gAreaRoomMap_MinishCaves_2_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/02_2/gAreaRoomMap_MinishCaves_2_bottom.bin.lz"
gAreaRoomMap_MinishCaves_2_top::
	.incbin "maps/areas/053_MinishCaves/rooms/02_2/gAreaRoomMap_MinishCaves_2_top.bin.lz"
gAreaRoomMap_MinishCaves_Ruins_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/03_Ruins/gAreaRoomMap_MinishCaves_Ruins_bottom.bin.lz"
gAreaRoomMap_MinishCaves_Ruins_top::
	.incbin "maps/areas/053_MinishCaves/rooms/03_Ruins/gAreaRoomMap_MinishCaves_Ruins_top.bin.lz"
gAreaRoomMap_MinishCaves_OutsideLinksHouse_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/04_OutsideLinksHouse/gAreaRoomMap_MinishCaves_OutsideLinksHouse_bottom.bin.lz"
gAreaRoomMap_MinishCaves_OutsideLinksHouse_top::
	.incbin "maps/areas/053_MinishCaves/rooms/04_OutsideLinksHouse/gAreaRoomMap_MinishCaves_OutsideLinksHouse_top.bin.lz"
gAreaRoomMap_MinishCaves_MinishWoodsNorth1_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/05_MinishWoodsNorth1/gAreaRoomMap_MinishCaves_MinishWoodsNorth1_bottom.bin.lz"
gAreaRoomMap_MinishCaves_MinishWoodsNorth1_top::
	.incbin "maps/areas/053_MinishCaves/rooms/05_MinishWoodsNorth1/gAreaRoomMap_MinishCaves_MinishWoodsNorth1_top.bin.lz"
gAreaRoomMap_MinishCaves_6_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/06_6/gAreaRoomMap_MinishCaves_6_bottom.bin.lz"
gAreaRoomMap_MinishCaves_6_top::
	.incbin "maps/areas/053_MinishCaves/rooms/06_6/gAreaRoomMap_MinishCaves_6_top.bin.lz"
gAreaRoomMap_MinishCaves_LakeHyliaNorth_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/07_LakeHyliaNorth/gAreaRoomMap_MinishCaves_LakeHyliaNorth_bottom.bin.lz"
gAreaRoomMap_MinishCaves_LakeHyliaNorth_top::
	.incbin "maps/areas/053_MinishCaves/rooms/07_LakeHyliaNorth/gAreaRoomMap_MinishCaves_LakeHyliaNorth_top.bin.lz"
gAreaRoomMap_MinishCaves_LakeHyliaLibrari_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/08_LakeHyliaLibrari/gAreaRoomMap_MinishCaves_LakeHyliaLibrari_bottom.bin.lz"
gAreaRoomMap_MinishCaves_LakeHyliaLibrari_top::
	.incbin "maps/areas/053_MinishCaves/rooms/08_LakeHyliaLibrari/gAreaRoomMap_MinishCaves_LakeHyliaLibrari_top.bin.lz"
gAreaRoomMap_MinishCaves_MinishWoodsSouthwest_bottom::
	.incbin "maps/areas/053_MinishCaves/rooms/09_MinishWoodsSouthwest/gAreaRoomMap_MinishCaves_MinishWoodsSouthwest_bottom.bin.lz"
gAreaRoomMap_MinishCaves_MinishWoodsSouthwest_top::
	.incbin "maps/areas/053_MinishCaves/rooms/09_MinishWoodsSouthwest/gAreaRoomMap_MinishCaves_MinishWoodsSouthwest_top.bin.lz"
gAreaRoomMap_CastleGardenMinishHoles_0_bottom::
	.incbin "maps/areas/054_CastleGardenMinishHoles/rooms/00_0/gAreaRoomMap_CastleGardenMinishHoles_0_bottom.bin.lz"
gAreaRoomMap_CastleGardenMinishHoles_0_top::
	.incbin "maps/areas/054_CastleGardenMinishHoles/rooms/00_0/gAreaRoomMap_CastleGardenMinishHoles_0_top.bin.lz"
gAreaRoomMap_CastleGardenMinishHoles_1_bottom::
	.incbin "maps/areas/054_CastleGardenMinishHoles/rooms/01_1/gAreaRoomMap_CastleGardenMinishHoles_1_bottom.bin.lz"
gAreaRoomMap_CastleGardenMinishHoles_1_top::
	.incbin "maps/areas/054_CastleGardenMinishHoles/rooms/01_1/gAreaRoomMap_CastleGardenMinishHoles_1_top.bin.lz"
gAreaRoomMap_37_0_bottom::
	.incbin "maps/areas/055_37/rooms/00_0/gAreaRoomMap_37_0_bottom.bin.lz"
gAreaRoomMap_37_0_top::
	.incbin "maps/areas/055_37/rooms/00_0/gAreaRoomMap_37_0_top.bin.lz"
gAreaRoomMap_37_1_bottom::
	.incbin "maps/areas/055_37/rooms/01_1/gAreaRoomMap_37_1_bottom.bin.lz"
gAreaRoomMap_37_1_top::
	.incbin "maps/areas/055_37/rooms/01_1/gAreaRoomMap_37_1_top.bin.lz"
gAreaTileSet_MinishWoods_1_0::
	.incbin "maps/areas/000_MinishWoods/tileSets/1/gAreaTileSet_MinishWoods_1_0.4bpp.lz"
gAreaTileSet_MinishWoods_1_1::
	.incbin "maps/areas/000_MinishWoods/tileSets/1/gAreaTileSet_MinishWoods_1_1.4bpp.lz"
gAreaTileSet_HyruleDigCaves_0_3::
	.incbin "maps/areas/015_HyruleDigCaves/tileSets/0/gAreaTileSet_HyruleDigCaves_0_3.4bpp.lz"
gAreaTileSet_HyruleDigCaves_0_4::
	.incbin "maps/areas/015_HyruleDigCaves/tileSets/0/gAreaTileSet_HyruleDigCaves_0_4.4bpp.lz"
gAreaTileSet_CrenelDigCave_0_3::
	.incbin "maps/areas/020_CrenelDigCave/tileSets/0/gAreaTileSet_CrenelDigCave_0_3.4bpp.lz"
gAreaTileSet_CrenelDigCave_0_4::
	.incbin "maps/areas/020_CrenelDigCave/tileSets/0/gAreaTileSet_CrenelDigCave_0_4.4bpp.lz"
gAreaTileSet_DigCaves_0_3::
	.incbin "maps/areas/019_DigCaves/tileSets/0/gAreaTileSet_DigCaves_0_3.4bpp.lz"
gAreaTileSet_DigCaves_0_4::
	.incbin "maps/areas/019_DigCaves/tileSets/0/gAreaTileSet_DigCaves_0_4.4bpp.lz"
gAreaTileSet_CastorWildsDigCave_0_3::
	.incbin "maps/areas/023_CastorWildsDigCave/tileSets/0/gAreaTileSet_CastorWildsDigCave_0_3.4bpp.lz"
gAreaTileSet_CastorWildsDigCave_0_4::
	.incbin "maps/areas/023_CastorWildsDigCave/tileSets/0/gAreaTileSet_CastorWildsDigCave_0_4.4bpp.lz"
gAreaTileSet_HyliaDigCaves_0_3::
	.incbin "maps/areas/025_HyliaDigCaves/tileSets/0/gAreaTileSet_HyliaDigCaves_0_3.4bpp.lz"
gAreaTileSet_HyliaDigCaves_0_4::
	.incbin "maps/areas/025_HyliaDigCaves/tileSets/0/gAreaTileSet_HyliaDigCaves_0_4.4bpp.lz"
gAreaRoomMap_LakeWoodsCave_Main_bottom::
	.incbin "maps/areas/012_LakeWoodsCave/rooms/00_Main/gAreaRoomMap_LakeWoodsCave_Main_bottom.bin.lz"
gCaveBorder_LakeWoods_inside::
	.incbin "maps/areas/012_LakeWoodsCave/rooms/00_Main/gCaveBorder_LakeWoods_inside.bin.lz"
gAreaRoomMap_LakeWoodsCave_Main_top::
	.incbin "maps/areas/012_LakeWoodsCave/rooms/00_Main/gAreaRoomMap_LakeWoodsCave_Main_top.bin.lz"
gAreaRoomMap_HyliaDigCaves_0_bottom::
	.incbin "maps/areas/025_HyliaDigCaves/rooms/00_0/gAreaRoomMap_HyliaDigCaves_0_bottom.bin.lz"
gCaveBorder_LakeHyliaCenter_inside::
	.incbin "maps/areas/025_HyliaDigCaves/rooms/00_0/gCaveBorder_LakeHyliaCenter_inside.bin.lz"
gAreaRoomMap_HyliaDigCaves_0_top::
	.incbin "maps/areas/025_HyliaDigCaves/rooms/00_0/gAreaRoomMap_HyliaDigCaves_0_top.bin.lz"
gAreaRoomMap_HyliaDigCaves_1_bottom::
	.incbin "maps/areas/025_HyliaDigCaves/rooms/01_1/gAreaRoomMap_HyliaDigCaves_1_bottom.bin.lz"
gCaveBorder_LakeHyliaNorth_inside::
	.incbin "maps/areas/025_HyliaDigCaves/rooms/01_1/gCaveBorder_LakeHyliaNorth_inside.bin.lz"
gAreaRoomMap_HyliaDigCaves_1_top::
	.incbin "maps/areas/025_HyliaDigCaves/rooms/01_1/gAreaRoomMap_HyliaDigCaves_1_top.bin.lz"
gAreaRoomMap_CastorWildsDigCave_0_bottom::
	.incbin "maps/areas/023_CastorWildsDigCave/rooms/00_0/gAreaRoomMap_CastorWildsDigCave_0_bottom.bin.lz"
gCaveBorder_CastorWilds_inside::
	.incbin "maps/areas/023_CastorWildsDigCave/rooms/00_0/gCaveBorder_CastorWilds_inside.bin.lz"
gAreaRoomMap_CastorWildsDigCave_0_top::
	.incbin "maps/areas/023_CastorWildsDigCave/rooms/00_0/gAreaRoomMap_CastorWildsDigCave_0_top.bin.lz"
gAreaRoomMap_HyruleDigCaves_Town_bottom::
	.incbin "maps/areas/015_HyruleDigCaves/rooms/00_Town/gAreaRoomMap_HyruleDigCaves_Town_bottom.bin.lz"
gCaveBorder_HyruleTown_inside::
	.incbin "maps/areas/015_HyruleDigCaves/rooms/00_Town/gCaveBorder_HyruleTown_inside.bin.lz"
gAreaRoomMap_HyruleDigCaves_Town_top::
	.incbin "maps/areas/015_HyruleDigCaves/rooms/00_Town/gAreaRoomMap_HyruleDigCaves_Town_top.bin.lz"
gAreaRoomMap_CrenelDigCave_0_bottom::
	.incbin "maps/areas/020_CrenelDigCave/rooms/00_0/gAreaRoomMap_CrenelDigCave_0_bottom.bin.lz"
gCaveBorder_Crenel_inside::
	.incbin "maps/areas/020_CrenelDigCave/rooms/00_0/gCaveBorder_Crenel_inside.bin.lz"
gAreaRoomMap_CrenelDigCave_0_top::
	.incbin "maps/areas/020_CrenelDigCave/rooms/00_0/gAreaRoomMap_CrenelDigCave_0_top.bin.lz"
gAreaRoomMap_DigCaves_EasternHills_bottom::
	.incbin "maps/areas/019_DigCaves/rooms/00_EasternHills/gAreaRoomMap_DigCaves_EasternHills_bottom.bin.lz"
gCaveBorder_EasternHills_inside::
	.incbin "maps/areas/019_DigCaves/rooms/00_EasternHills/gCaveBorder_EasternHills_inside.bin.lz"
gAreaRoomMap_DigCaves_EasternHills_top::
	.incbin "maps/areas/019_DigCaves/rooms/00_EasternHills/gAreaRoomMap_DigCaves_EasternHills_top.bin.lz"
gAreaRoomMap_DigCaves_TrilbyHighlands_bottom::
	.incbin "maps/areas/019_DigCaves/rooms/03_TrilbyHighlands/gAreaRoomMap_DigCaves_TrilbyHighlands_bottom.bin.lz"
gCaveBorder_TrilbyHighlands_inside::
	.incbin "maps/areas/019_DigCaves/rooms/03_TrilbyHighlands/gCaveBorder_TrilbyHighlands_inside.bin.lz"
gAreaRoomMap_DigCaves_TrilbyHighlands_top::
	.incbin "maps/areas/019_DigCaves/rooms/03_TrilbyHighlands/gAreaRoomMap_DigCaves_TrilbyHighlands_top.bin.lz"
gAreaRoomMap_VeilFallsDigCave_0_bottom::
	.incbin "maps/areas/022_VeilFallsDigCave/rooms/00_0/gAreaRoomMap_VeilFallsDigCave_0_bottom.bin.lz"
gCaveBorder_VeilFalls_inside::
	.incbin "maps/areas/022_VeilFallsDigCave/rooms/00_0/gCaveBorder_VeilFalls_inside.bin.lz"
gAreaRoomMap_VeilFallsDigCave_0_top::
	.incbin "maps/areas/022_VeilFallsDigCave/rooms/00_0/gAreaRoomMap_VeilFallsDigCave_0_top.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_EntranceHall_bottom::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/00_EntranceHall/gAreaRoomMap_OuterFortressOfWinds_EntranceHall_bottom.bin.lz"
unknown_21::
	.incbin "assets/unknown_21.bin"
gAreaRoomMap_OuterFortressOfWinds_EntranceHall_top::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/00_EntranceHall/gAreaRoomMap_OuterFortressOfWinds_EntranceHall_top.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_2f_bottom::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/01_2f/gAreaRoomMap_OuterFortressOfWinds_2f_bottom.bin.lz"
unknown_22::
	.incbin "assets/unknown_22.bin"
gAreaRoomMap_OuterFortressOfWinds_2f_top::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/01_2f/gAreaRoomMap_OuterFortressOfWinds_2f_top.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_3f_bottom::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/02_3f/gAreaRoomMap_OuterFortressOfWinds_3f_bottom.bin.lz"
unknown_23::
	.incbin "assets/unknown_23.bin"
gAreaRoomMap_OuterFortressOfWinds_3f_top::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/02_3f/gAreaRoomMap_OuterFortressOfWinds_3f_top.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_MoleMitts_bottom::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/03_MoleMitts/gAreaRoomMap_OuterFortressOfWinds_MoleMitts_bottom.bin.lz"
unknown_24::
	.incbin "assets/unknown_24.bin"
gAreaRoomMap_OuterFortressOfWinds_MoleMitts_top::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/03_MoleMitts/gAreaRoomMap_OuterFortressOfWinds_MoleMitts_top.bin.lz"
gAreaRoomMap_OuterFortressOfWinds_SmallKey_bottom::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/04_SmallKey/gAreaRoomMap_OuterFortressOfWinds_SmallKey_bottom.bin.lz"
unknown_25::
	.incbin "assets/unknown_25.bin"
gAreaRoomMap_OuterFortressOfWinds_SmallKey_top::
	.incbin "maps/areas/024_OuterFortressOfWinds/rooms/04_SmallKey/gAreaRoomMap_OuterFortressOfWinds_SmallKey_top.bin.lz"
gAreaTileSet_MinishVillage_0_0::
	.incbin "maps/areas/001_MinishVillage/tileSets/0/gAreaTileSet_MinishVillage_0_0.4bpp.lz"
gAreaTileSet_MinishVillage_0_1::
	.incbin "maps/areas/001_MinishVillage/tileSets/0/gAreaTileSet_MinishVillage_0_1.4bpp.lz"
gAreaTileSet_MinishVillage_0_2::
	.incbin "maps/areas/001_MinishVillage/tileSets/0/gAreaTileSet_MinishVillage_0_2.4bpp.lz"
gAreaTileSet_MinishVillage_bottom::
	.incbin "maps/areas/001_MinishVillage/tileSet/gAreaTileSet_MinishVillage_bottom.bin.lz"
gAreaTileSet_MinishVillage_top::
	.incbin "maps/areas/001_MinishVillage/tileSet/gAreaTileSet_MinishVillage_top.bin.lz"
gAreaTileSetTypes_MinishVillage_bottom::
	.incbin "maps/areas/001_MinishVillage/tileSet/gAreaTileSetTypes_MinishVillage_bottom.bin.lz"
gAreaTileSetTypes_MinishVillage_top::
	.incbin "maps/areas/001_MinishVillage/tileSet/gAreaTileSetTypes_MinishVillage_top.bin.lz"
gAreaTileSet_MinishVillage_1_0::
	.incbin "maps/areas/001_MinishVillage/tileSets/1/gAreaTileSet_MinishVillage_1_0.4bpp.lz"
gAreaTileSet_MinishVillage_1_1::
	.incbin "maps/areas/001_MinishVillage/tileSets/1/gAreaTileSet_MinishVillage_1_1.4bpp.lz"
gAreaTileSet_MinishVillage_1_2::
	.incbin "maps/areas/001_MinishVillage/tileSets/1/gAreaTileSet_MinishVillage_1_2.4bpp.lz"
gAreaRoomMap_MinishVillage_Main_bottom::
	.incbin "maps/areas/001_MinishVillage/rooms/00_Main/gAreaRoomMap_MinishVillage_Main_bottom.bin.lz"
gAreaRoomMap_MinishVillage_Main_top::
	.incbin "maps/areas/001_MinishVillage/rooms/00_Main/gAreaRoomMap_MinishVillage_Main_top.bin.lz"
gAreaRoomMap_MinishVillage_SideHouseArea_bottom::
	.incbin "maps/areas/001_MinishVillage/rooms/01_SideHouseArea/gAreaRoomMap_MinishVillage_SideHouseArea_bottom.bin.lz"
gAreaRoomMap_MinishVillage_SideHouseArea_top::
	.incbin "maps/areas/001_MinishVillage/rooms/01_SideHouseArea/gAreaRoomMap_MinishVillage_SideHouseArea_top.bin.lz"
gAreaTileSet_MelarisMine_0_0::
	.incbin "maps/areas/016_MelarisMine/tileSets/0/gAreaTileSet_MelarisMine_0_0.4bpp.lz"
gAreaTileSet_MelarisMine_0_1::
	.incbin "maps/areas/016_MelarisMine/tileSets/0/gAreaTileSet_MelarisMine_0_1.4bpp.lz"
gAreaTileSet_MelarisMine_0_2::
	.incbin "maps/areas/016_MelarisMine/tileSets/0/gAreaTileSet_MelarisMine_0_2.4bpp.lz"
gAreaTileSet_MelarisMine_bottom::
	.incbin "maps/areas/016_MelarisMine/tileSet/gAreaTileSet_MelarisMine_bottom.bin.lz"
gAreaTileSet_MelarisMine_top::
	.incbin "maps/areas/016_MelarisMine/tileSet/gAreaTileSet_MelarisMine_top.bin.lz"
gAreaTileSetTypes_MelarisMine_bottom::
	.incbin "maps/areas/016_MelarisMine/tileSet/gAreaTileSetTypes_MelarisMine_bottom.bin.lz"
gAreaTileSetTypes_MelarisMine_top::
	.incbin "maps/areas/016_MelarisMine/tileSet/gAreaTileSetTypes_MelarisMine_top.bin.lz"
gAreaRoomMap_MelarisMine_Main_bottom::
	.incbin "maps/areas/016_MelarisMine/rooms/00_Main/gAreaRoomMap_MelarisMine_Main_bottom.bin.lz"
gAreaRoomMap_MelarisMine_Main_top::
	.incbin "maps/areas/016_MelarisMine/rooms/00_Main/gAreaRoomMap_MelarisMine_Main_top.bin.lz"
gAreaTileSet_MinishPaths_0_0::
	.incbin "maps/areas/017_MinishPaths/tileSets/0/gAreaTileSet_MinishPaths_0_0.4bpp.lz"
gAreaTileSet_MinishPaths_0_1::
	.incbin "maps/areas/017_MinishPaths/tileSets/0/gAreaTileSet_MinishPaths_0_1.4bpp.lz"
gAreaTileSet_MinishPaths_bottom::
	.incbin "maps/areas/017_MinishPaths/tileSet/gAreaTileSet_MinishPaths_bottom.bin.lz"
gAreaTileSetTypes_MinishPaths_bottom::
	.incbin "maps/areas/017_MinishPaths/tileSet/gAreaTileSetTypes_MinishPaths_bottom.bin.lz"
gAreaRoomMap_MinishPaths_MinishVillage_bottom::
	.incbin "maps/areas/017_MinishPaths/rooms/00_MinishVillage/gAreaRoomMap_MinishPaths_MinishVillage_bottom.bin.lz"
gAreaRoomMap_MinishPaths_Bow_bottom::
	.incbin "maps/areas/017_MinishPaths/rooms/01_Bow/gAreaRoomMap_MinishPaths_Bow_bottom.bin.lz"
gAreaRoomMap_MinishPaths_Schoolyard_bottom::
	.incbin "maps/areas/017_MinishPaths/rooms/02_Schoolyard/gAreaRoomMap_MinishPaths_Schoolyard_bottom.bin.lz"
gAreaRoomMap_MinishPaths_LonLonRanch_bottom::
	.incbin "maps/areas/017_MinishPaths/rooms/03_LonLonRanch/gAreaRoomMap_MinishPaths_LonLonRanch_bottom.bin.lz"
gAreaRoomMap_MinishPaths_LakeHylia_bottom::
	.incbin "maps/areas/017_MinishPaths/rooms/04_LakeHylia/gAreaRoomMap_MinishPaths_LakeHylia_bottom.bin.lz"
gAreaTileSet_CrenelMinishPaths_0_0::
	.incbin "maps/areas/018_CrenelMinishPaths/tileSets/0/gAreaTileSet_CrenelMinishPaths_0_0.4bpp.lz"
gAreaTileSet_CrenelMinishPaths_0_1::
	.incbin "maps/areas/018_CrenelMinishPaths/tileSets/0/gAreaTileSet_CrenelMinishPaths_0_1.4bpp.lz"
gAreaTileSet_CrenelMinishPaths_1_0::
	.incbin "maps/areas/018_CrenelMinishPaths/tileSets/1/gAreaTileSet_CrenelMinishPaths_1_0.4bpp.lz"
gAreaTileSet_CrenelMinishPaths_1_1::
	.incbin "maps/areas/018_CrenelMinishPaths/tileSets/1/gAreaTileSet_CrenelMinishPaths_1_1.4bpp.lz"
gAreaTileSet_CrenelMinishPaths_bottom::
	.incbin "maps/areas/018_CrenelMinishPaths/tileSet/gAreaTileSet_CrenelMinishPaths_bottom.bin.lz"
gAreaTileSetTypes_CrenelMinishPaths_bottom::
	.incbin "maps/areas/018_CrenelMinishPaths/tileSet/gAreaTileSetTypes_CrenelMinishPaths_bottom.bin.lz"
gAreaRoomMap_CrenelMinishPaths_Bean_bottom::
	.incbin "maps/areas/018_CrenelMinishPaths/rooms/00_Bean/gAreaRoomMap_CrenelMinishPaths_Bean_bottom.bin.lz"
gAreaRoomMap_CrenelMinishPaths_SpringWater_bottom::
	.incbin "maps/areas/018_CrenelMinishPaths/rooms/01_SpringWater/gAreaRoomMap_CrenelMinishPaths_SpringWater_bottom.bin.lz"
gAreaRoomMap_CrenelMinishPaths_Rain_bottom::
	.incbin "maps/areas/018_CrenelMinishPaths/rooms/02_Rain/gAreaRoomMap_CrenelMinishPaths_Rain_bottom.bin.lz"
gAreaRoomMap_CrenelMinishPaths_Melari_bottom::
	.incbin "maps/areas/018_CrenelMinishPaths/rooms/03_Melari/gAreaRoomMap_CrenelMinishPaths_Melari_bottom.bin.lz"
gAreaTileSet_HouseInteriors1_0_2::
	.incbin "maps/areas/033_HouseInteriors1/tileSets/0/gAreaTileSet_HouseInteriors1_0_2.4bpp.lz"
gAreaTileSet_HouseInteriors1_top::
	.incbin "maps/areas/033_HouseInteriors1/tileSet/gAreaTileSet_HouseInteriors1_top.bin.lz"
gAreaTileSetTypes_HouseInteriors1_top::
	.incbin "maps/areas/033_HouseInteriors1/tileSet/gAreaTileSetTypes_HouseInteriors1_top.bin.lz"
gAreaTileSet_HouseInteriors1_0_0::
	.incbin "maps/areas/033_HouseInteriors1/tileSets/0/gAreaTileSet_HouseInteriors1_0_0.4bpp.lz"
gAreaTileSet_HouseInteriors1_0_1::
	.incbin "maps/areas/033_HouseInteriors1/tileSets/0/gAreaTileSet_HouseInteriors1_0_1.4bpp.lz"
gAreaTileSet_HouseInteriors1_bottom::
	.incbin "maps/areas/033_HouseInteriors1/tileSet/gAreaTileSet_HouseInteriors1_bottom.bin.lz"
gAreaTileSetTypes_HouseInteriors1_bottom::
	.incbin "maps/areas/033_HouseInteriors1/tileSet/gAreaTileSetTypes_HouseInteriors1_bottom.bin.lz"
gAreaTileSet_HouseInteriors2_0_0::
	.incbin "maps/areas/034_HouseInteriors2/tileSets/0/gAreaTileSet_HouseInteriors2_0_0.4bpp.lz"
gAreaTileSet_HouseInteriors2_0_1::
	.incbin "maps/areas/034_HouseInteriors2/tileSets/0/gAreaTileSet_HouseInteriors2_0_1.4bpp.lz"
gAreaTileSet_HouseInteriors2_bottom::
	.incbin "maps/areas/034_HouseInteriors2/tileSet/gAreaTileSet_HouseInteriors2_bottom.bin.lz"
gAreaTileSetTypes_HouseInteriors2_bottom::
	.incbin "maps/areas/034_HouseInteriors2/tileSet/gAreaTileSetTypes_HouseInteriors2_bottom.bin.lz"
gAreaTileSet_HouseInteriors4_0_0::
	.incbin "maps/areas/040_HouseInteriors4/tileSets/0/gAreaTileSet_HouseInteriors4_0_0.4bpp.lz"
gAreaTileSet_HouseInteriors4_0_1::
	.incbin "maps/areas/040_HouseInteriors4/tileSets/0/gAreaTileSet_HouseInteriors4_0_1.4bpp.lz"
gAreaTileSet_HouseInteriors4_bottom::
	.incbin "maps/areas/040_HouseInteriors4/tileSet/gAreaTileSet_HouseInteriors4_bottom.bin.lz"
gAreaTileSetTypes_HouseInteriors4_bottom::
	.incbin "maps/areas/040_HouseInteriors4/tileSet/gAreaTileSetTypes_HouseInteriors4_bottom.bin.lz"
gAreaTileSet_HouseInteriors3_0_0::
	.incbin "maps/areas/035_HouseInteriors3/tileSets/0/gAreaTileSet_HouseInteriors3_0_0.4bpp.lz"
gAreaTileSet_HouseInteriors3_0_1::
	.incbin "maps/areas/035_HouseInteriors3/tileSets/0/gAreaTileSet_HouseInteriors3_0_1.4bpp.lz"
gAreaTileSet_HouseInteriors3_bottom::
	.incbin "maps/areas/035_HouseInteriors3/tileSet/gAreaTileSet_HouseInteriors3_bottom.bin.lz"
gAreaTileSetTypes_HouseInteriors3_bottom::
	.incbin "maps/areas/035_HouseInteriors3/tileSet/gAreaTileSetTypes_HouseInteriors3_bottom.bin.lz"
gAreaTileSet_TreeInteriors_0_0::
	.incbin "maps/areas/036_TreeInteriors/tileSets/0/gAreaTileSet_TreeInteriors_0_0.4bpp.lz"
gAreaTileSet_TreeInteriors_0_1::
	.incbin "maps/areas/036_TreeInteriors/tileSets/0/gAreaTileSet_TreeInteriors_0_1.4bpp.lz"
gAreaTileSet_TreeInteriors_bottom::
	.incbin "maps/areas/036_TreeInteriors/tileSet/gAreaTileSet_TreeInteriors_bottom.bin.lz"
gAreaTileSetTypes_TreeInteriors_bottom::
	.incbin "maps/areas/036_TreeInteriors/tileSet/gAreaTileSetTypes_TreeInteriors_bottom.bin.lz"
gAreaTileSet_MinishCracks_0_0::
	.incbin "maps/areas/039_MinishCracks/tileSets/0/gAreaTileSet_MinishCracks_0_0.4bpp.lz"
gAreaTileSet_MinishCracks_0_1::
	.incbin "maps/areas/039_MinishCracks/tileSets/0/gAreaTileSet_MinishCracks_0_1.4bpp.lz"
gAreaTileSet_MinishCracks_bottom::
	.incbin "maps/areas/039_MinishCracks/tileSet/gAreaTileSet_MinishCracks_bottom.bin.lz"
gAreaTileSetTypes_MinishCracks_bottom::
	.incbin "maps/areas/039_MinishCracks/tileSet/gAreaTileSetTypes_MinishCracks_bottom.bin.lz"
gAreaTileSet_Dojos_0_0::
	.incbin "maps/areas/037_Dojos/tileSets/0/gAreaTileSet_Dojos_0_0.4bpp.lz"
gAreaTileSet_Dojos_0_1::
	.incbin "maps/areas/037_Dojos/tileSets/0/gAreaTileSet_Dojos_0_1.4bpp.lz"
gAreaTileSet_Dojos_bottom::
	.incbin "maps/areas/037_Dojos/tileSet/gAreaTileSet_Dojos_bottom.bin.lz"
gAreaTileSetTypes_Dojos_bottom::
	.incbin "maps/areas/037_Dojos/tileSet/gAreaTileSetTypes_Dojos_bottom.bin.lz"
gAreaTileSet_MinishRafters_0_0::
	.incbin "maps/areas/046_MinishRafters/tileSets/0/gAreaTileSet_MinishRafters_0_0.4bpp.lz"
gAreaTileSet_MinishRafters_0_1::
	.incbin "maps/areas/046_MinishRafters/tileSets/0/gAreaTileSet_MinishRafters_0_1.4bpp.lz"
gAreaTileSet_MinishRafters_bottom::
	.incbin "maps/areas/046_MinishRafters/tileSet/gAreaTileSet_MinishRafters_bottom.bin.lz"
gAreaTileSetTypes_MinishRafters_bottom::
	.incbin "maps/areas/046_MinishRafters/tileSet/gAreaTileSetTypes_MinishRafters_bottom.bin.lz"
gAreaTileSet_WindTribeTower_0_0::
	.incbin "maps/areas/048_WindTribeTower/tileSets/0/gAreaTileSet_WindTribeTower_0_0.4bpp.lz"
gAreaTileSet_WindTribeTower_0_1::
	.incbin "maps/areas/048_WindTribeTower/tileSets/0/gAreaTileSet_WindTribeTower_0_1.4bpp.lz"
gAreaTileSet_WindTribeTower_bottom::
	.incbin "maps/areas/048_WindTribeTower/tileSet/gAreaTileSet_WindTribeTower_bottom.bin.lz"
gAreaTileSetTypes_WindTribeTower_bottom::
	.incbin "maps/areas/048_WindTribeTower/tileSet/gAreaTileSetTypes_WindTribeTower_bottom.bin.lz"
gAreaTileSet_WindTribeTowerRoof_0_0::
	.incbin "maps/areas/049_WindTribeTowerRoof/tileSets/0/gAreaTileSet_WindTribeTowerRoof_0_0.4bpp.lz"
gAreaTileSet_WindTribeTowerRoof_0_1::
	.incbin "maps/areas/049_WindTribeTowerRoof/tileSets/0/gAreaTileSet_WindTribeTowerRoof_0_1.4bpp.lz"
gAreaTileSet_WindTribeTowerRoof_0_2::
	.incbin "maps/areas/049_WindTribeTowerRoof/tileSets/0/gAreaTileSet_WindTribeTowerRoof_0_2.4bpp.lz"
gAreaTileSet_WindTribeTowerRoof_bottom::
	.incbin "maps/areas/049_WindTribeTowerRoof/tileSet/gAreaTileSet_WindTribeTowerRoof_bottom.bin.lz"
gAreaTileSet_WindTribeTowerRoof_top::
	.incbin "maps/areas/049_WindTribeTowerRoof/tileSet/gAreaTileSet_WindTribeTowerRoof_top.bin.lz"
gAreaTileSetTypes_WindTribeTowerRoof_bottom::
	.incbin "maps/areas/049_WindTribeTowerRoof/tileSet/gAreaTileSetTypes_WindTribeTowerRoof_bottom.bin.lz"
gAreaTileSetTypes_WindTribeTowerRoof_top::
	.incbin "maps/areas/049_WindTribeTowerRoof/tileSet/gAreaTileSetTypes_WindTribeTowerRoof_top.bin.lz"
unknown_26::
	.incbin "assets/unknown_26.bin"
gAreaTileSet_EzloCutscene_0_0::
	.incbin "maps/areas/056_EzloCutscene/tileSets/0/gAreaTileSet_EzloCutscene_0_0.4bpp.lz"
gAreaTileSet_EzloCutscene_0_1::
	.incbin "maps/areas/056_EzloCutscene/tileSets/0/gAreaTileSet_EzloCutscene_0_1.4bpp.lz"
gAreaTileSet_EzloCutscene_bottom::
	.incbin "maps/areas/056_EzloCutscene/tileSet/gAreaTileSet_EzloCutscene_bottom.bin.lz"
gAreaTileSetTypes_EzloCutscene_bottom::
	.incbin "maps/areas/056_EzloCutscene/tileSet/gAreaTileSetTypes_EzloCutscene_bottom.bin.lz"
unknown_27::
	.incbin "assets/unknown_27.bin"
gAreaRoomMap_HouseInteriors2_Stranger_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/00_Stranger/gAreaRoomMap_HouseInteriors2_Stranger_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_Stranger_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/00_Stranger/gAreaRoomMap_HouseInteriors2_Stranger_top.bin.lz"
gAreaRoomMap_HouseInteriors2_WestOracle_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/01_WestOracle/gAreaRoomMap_HouseInteriors2_WestOracle_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_WestOracle_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/01_WestOracle/gAreaRoomMap_HouseInteriors2_WestOracle_top.bin.lz"
gAreaRoomMap_HouseInteriors2_2_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/02_2/gAreaRoomMap_HouseInteriors2_2_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_2_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/02_2/gAreaRoomMap_HouseInteriors2_2_top.bin.lz"
gAreaRoomMap_HouseInteriors2_3_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/03_3/gAreaRoomMap_HouseInteriors2_3_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_3_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/03_3/gAreaRoomMap_HouseInteriors2_3_top.bin.lz"
gAreaRoomMap_HouseInteriors2_DrLeft_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/04_DrLeft/gAreaRoomMap_HouseInteriors2_DrLeft_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_DrLeft_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/04_DrLeft/gAreaRoomMap_HouseInteriors2_DrLeft_top.bin.lz"
gAreaRoomMap_HouseInteriors2_5_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/05_5/gAreaRoomMap_HouseInteriors2_5_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_5_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/05_5/gAreaRoomMap_HouseInteriors2_5_top.bin.lz"
gAreaRoomMap_HouseInteriors2_Romio_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/06_Romio/gAreaRoomMap_HouseInteriors2_Romio_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_Romio_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/06_Romio/gAreaRoomMap_HouseInteriors2_Romio_top.bin.lz"
gAreaRoomMap_HouseInteriors2_Julietta_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/07_Julietta/gAreaRoomMap_HouseInteriors2_Julietta_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_Julietta_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/07_Julietta/gAreaRoomMap_HouseInteriors2_Julietta_top.bin.lz"
gAreaRoomMap_HouseInteriors2_Percy_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/08_Percy/gAreaRoomMap_HouseInteriors2_Percy_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_Percy_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/08_Percy/gAreaRoomMap_HouseInteriors2_Percy_top.bin.lz"
gAreaRoomMap_HouseInteriors2_EastOracle_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/09_EastOracle/gAreaRoomMap_HouseInteriors2_EastOracle_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_EastOracle_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/09_EastOracle/gAreaRoomMap_HouseInteriors2_EastOracle_top.bin.lz"
gAreaRoomMap_HouseInteriors2_A_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/10_A/gAreaRoomMap_HouseInteriors2_A_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_A_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/10_A/gAreaRoomMap_HouseInteriors2_A_top.bin.lz"
gAreaRoomMap_HouseInteriors2_B_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/11_B/gAreaRoomMap_HouseInteriors2_B_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_B_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/11_B/gAreaRoomMap_HouseInteriors2_B_top.bin.lz"
gAreaRoomMap_HouseInteriors2_Cucco_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/12_Cucco/gAreaRoomMap_HouseInteriors2_Cucco_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_Cucco_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/12_Cucco/gAreaRoomMap_HouseInteriors2_Cucco_top.bin.lz"
gAreaRoomMap_HouseInteriors2_LinksHouseEntrance_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/16_LinksHouseEntrance/gAreaRoomMap_HouseInteriors2_LinksHouseEntrance_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_LinksHouseEntrance_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/16_LinksHouseEntrance/gAreaRoomMap_HouseInteriors2_LinksHouseEntrance_top.bin.lz"
gAreaRoomMap_HouseInteriors2_LinksHouseSmith_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/17_LinksHouseSmith/gAreaRoomMap_HouseInteriors2_LinksHouseSmith_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_LinksHouseSmith_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/17_LinksHouseSmith/gAreaRoomMap_HouseInteriors2_LinksHouseSmith_top.bin.lz"
gAreaRoomMap_HouseInteriors2_Dampe_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/18_Dampe/gAreaRoomMap_HouseInteriors2_Dampe_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_Dampe_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/18_Dampe/gAreaRoomMap_HouseInteriors2_Dampe_top.bin.lz"
gAreaRoomMap_HouseInteriors2_13_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/19_13/gAreaRoomMap_HouseInteriors2_13_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_13_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/19_13/gAreaRoomMap_HouseInteriors2_13_top.bin.lz"
gAreaRoomMap_HouseInteriors2_StockwellLakeHouse_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/20_StockwellLakeHouse/gAreaRoomMap_HouseInteriors2_StockwellLakeHouse_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_StockwellLakeHouse_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/20_StockwellLakeHouse/gAreaRoomMap_HouseInteriors2_StockwellLakeHouse_top.bin.lz"
gAreaRoomMap_HouseInteriors2_LinksHouseBedroom_bottom::
	.incbin "maps/areas/034_HouseInteriors2/rooms/21_LinksHouseBedroom/gAreaRoomMap_HouseInteriors2_LinksHouseBedroom_bottom.bin.lz"
gAreaRoomMap_HouseInteriors2_LinksHouseBedroom_top::
	.incbin "maps/areas/034_HouseInteriors2/rooms/21_LinksHouseBedroom/gAreaRoomMap_HouseInteriors2_LinksHouseBedroom_top.bin.lz"
gAreaRoomMap_HouseInteriors4_Carpenter_bottom::
	.incbin "maps/areas/040_HouseInteriors4/rooms/00_Carpenter/gAreaRoomMap_HouseInteriors4_Carpenter_bottom.bin.lz"
gAreaRoomMap_HouseInteriors4_Carpenter_top::
	.incbin "maps/areas/040_HouseInteriors4/rooms/00_Carpenter/gAreaRoomMap_HouseInteriors4_Carpenter_top.bin.lz"
gAreaRoomMap_HouseInteriors4_Swiftblade_bottom::
	.incbin "maps/areas/040_HouseInteriors4/rooms/01_Swiftblade/gAreaRoomMap_HouseInteriors4_Swiftblade_bottom.bin.lz"
gAreaRoomMap_HouseInteriors4_Swiftblade_top::
	.incbin "maps/areas/040_HouseInteriors4/rooms/01_Swiftblade/gAreaRoomMap_HouseInteriors4_Swiftblade_top.bin.lz"
gAreaRoomMap_HouseInteriors4_RanchHouseWest_bottom::
	.incbin "maps/areas/040_HouseInteriors4/rooms/02_RanchHouseWest/gAreaRoomMap_HouseInteriors4_RanchHouseWest_bottom.bin.lz"
gAreaRoomMap_HouseInteriors4_RanchHouseWest_top::
	.incbin "maps/areas/040_HouseInteriors4/rooms/02_RanchHouseWest/gAreaRoomMap_HouseInteriors4_RanchHouseWest_top.bin.lz"
gAreaRoomMap_HouseInteriors4_RanchHouseEast_bottom::
	.incbin "maps/areas/040_HouseInteriors4/rooms/03_RanchHouseEast/gAreaRoomMap_HouseInteriors4_RanchHouseEast_bottom.bin.lz"
gAreaRoomMap_HouseInteriors4_RanchHouseEast_top::
	.incbin "maps/areas/040_HouseInteriors4/rooms/03_RanchHouseEast/gAreaRoomMap_HouseInteriors4_RanchHouseEast_top.bin.lz"
gAreaRoomMap_HouseInteriors4_FarmHouse_bottom::
	.incbin "maps/areas/040_HouseInteriors4/rooms/04_FarmHouse/gAreaRoomMap_HouseInteriors4_FarmHouse_bottom.bin.lz"
gAreaRoomMap_HouseInteriors4_FarmHouse_top::
	.incbin "maps/areas/040_HouseInteriors4/rooms/04_FarmHouse/gAreaRoomMap_HouseInteriors4_FarmHouse_top.bin.lz"
gAreaRoomMap_HouseInteriors4_MayorLakeCabin_bottom::
	.incbin "maps/areas/040_HouseInteriors4/rooms/05_MayorLakeCabin/gAreaRoomMap_HouseInteriors4_MayorLakeCabin_bottom.bin.lz"
gAreaRoomMap_HouseInteriors4_MayorLakeCabin_top::
	.incbin "maps/areas/040_HouseInteriors4/rooms/05_MayorLakeCabin/gAreaRoomMap_HouseInteriors4_MayorLakeCabin_top.bin.lz"
gAreaRoomMap_HouseInteriors3_StockwellShop_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/00_StockwellShop/gAreaRoomMap_HouseInteriors3_StockwellShop_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_StockwellShop_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/00_StockwellShop/gAreaRoomMap_HouseInteriors3_StockwellShop_top.bin.lz"
gAreaRoomMap_HouseInteriors3_Cafe_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/01_Cafe/gAreaRoomMap_HouseInteriors3_Cafe_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_Cafe_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/01_Cafe/gAreaRoomMap_HouseInteriors3_Cafe_top.bin.lz"
gAreaRoomMap_HouseInteriors3_RemShoeShop_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/02_RemShoeShop/gAreaRoomMap_HouseInteriors3_RemShoeShop_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_RemShoeShop_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/02_RemShoeShop/gAreaRoomMap_HouseInteriors3_RemShoeShop_top.bin.lz"
gAreaRoomMap_HouseInteriors3_Bakery_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/03_Bakery/gAreaRoomMap_HouseInteriors3_Bakery_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_Bakery_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/03_Bakery/gAreaRoomMap_HouseInteriors3_Bakery_top.bin.lz"
gAreaRoomMap_HouseInteriors3_Simon_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/04_Simon/gAreaRoomMap_HouseInteriors3_Simon_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_Simon_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/04_Simon/gAreaRoomMap_HouseInteriors3_Simon_top.bin.lz"
gAreaRoomMap_HouseInteriors3_FigurineHouse_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/05_FigurineHouse/gAreaRoomMap_HouseInteriors3_FigurineHouse_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_FigurineHouse_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/05_FigurineHouse/gAreaRoomMap_HouseInteriors3_FigurineHouse_top.bin.lz"
gAreaRoomMap_HouseInteriors3_BorlovEntrance_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/06_BorlovEntrance/gAreaRoomMap_HouseInteriors3_BorlovEntrance_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_BorlovEntrance_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/06_BorlovEntrance/gAreaRoomMap_HouseInteriors3_BorlovEntrance_top.bin.lz"
gAreaRoomMap_HouseInteriors3_Carlov_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/07_Carlov/gAreaRoomMap_HouseInteriors3_Carlov_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_Carlov_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/07_Carlov/gAreaRoomMap_HouseInteriors3_Carlov_top.bin.lz"
gAreaRoomMap_HouseInteriors3_Borlov_bottom::
	.incbin "maps/areas/035_HouseInteriors3/rooms/08_Borlov/gAreaRoomMap_HouseInteriors3_Borlov_bottom.bin.lz"
gAreaRoomMap_HouseInteriors3_Borlov_top::
	.incbin "maps/areas/035_HouseInteriors3/rooms/08_Borlov/gAreaRoomMap_HouseInteriors3_Borlov_top.bin.lz"
gAreaRoomMap_HouseInteriors1_Mayor_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/00_Mayor/gAreaRoomMap_HouseInteriors1_Mayor_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_Mayor_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/00_Mayor/gAreaRoomMap_HouseInteriors1_Mayor_top.bin.lz"
gAreaRoomMap_HouseInteriors1_PostOffice_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/01_PostOffice/gAreaRoomMap_HouseInteriors1_PostOffice_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_PostOffice_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/01_PostOffice/gAreaRoomMap_HouseInteriors1_PostOffice_top.bin.lz"
gAreaRoomMap_HouseInteriors1_Library2f_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/02_Library2f/gAreaRoomMap_HouseInteriors1_Library2f_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_Library2f_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/02_Library2f/gAreaRoomMap_HouseInteriors1_Library2f_top.bin.lz"
gAreaRoomMap_HouseInteriors1_Library1f_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/03_Library1f/gAreaRoomMap_HouseInteriors1_Library1f_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_Library1f_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/03_Library1f/gAreaRoomMap_HouseInteriors1_Library1f_top.bin.lz"
gAreaRoomMap_HouseInteriors1_Inn1f_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/04_Inn1f/gAreaRoomMap_HouseInteriors1_Inn1f_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_Inn1f_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/04_Inn1f/gAreaRoomMap_HouseInteriors1_Inn1f_top.bin.lz"
gAreaRoomMap_HouseInteriors1_InnWestRoom_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/05_InnWestRoom/gAreaRoomMap_HouseInteriors1_InnWestRoom_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_InnWestRoom_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/05_InnWestRoom/gAreaRoomMap_HouseInteriors1_InnWestRoom_top.bin.lz"
gAreaRoomMap_HouseInteriors1_InnMiddleRoom_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/06_InnMiddleRoom/gAreaRoomMap_HouseInteriors1_InnMiddleRoom_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_InnMiddleRoom_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/06_InnMiddleRoom/gAreaRoomMap_HouseInteriors1_InnMiddleRoom_top.bin.lz"
gAreaRoomMap_HouseInteriors1_InnEastRoom_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/07_InnEastRoom/gAreaRoomMap_HouseInteriors1_InnEastRoom_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_InnEastRoom_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/07_InnEastRoom/gAreaRoomMap_HouseInteriors1_InnEastRoom_top.bin.lz"
gAreaRoomMap_HouseInteriors1_InnWest2f_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/08_InnWest2f/gAreaRoomMap_HouseInteriors1_InnWest2f_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_InnWest2f_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/08_InnWest2f/gAreaRoomMap_HouseInteriors1_InnWest2f_top.bin.lz"
gAreaRoomMap_HouseInteriors1_InnEast2f_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/09_InnEast2f/gAreaRoomMap_HouseInteriors1_InnEast2f_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_InnEast2f_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/09_InnEast2f/gAreaRoomMap_HouseInteriors1_InnEast2f_top.bin.lz"
gAreaRoomMap_HouseInteriors1_InnMinishHeartPiece_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/10_InnMinishHeartPiece/gAreaRoomMap_HouseInteriors1_InnMinishHeartPiece_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_InnMinishHeartPiece_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/10_InnMinishHeartPiece/gAreaRoomMap_HouseInteriors1_InnMinishHeartPiece_top.bin.lz"
gAreaRoomMap_HouseInteriors1_SchoolWest_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/11_SchoolWest/gAreaRoomMap_HouseInteriors1_SchoolWest_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_SchoolWest_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/11_SchoolWest/gAreaRoomMap_HouseInteriors1_SchoolWest_top.bin.lz"
gAreaRoomMap_HouseInteriors1_SchoolEast_bottom::
	.incbin "maps/areas/033_HouseInteriors1/rooms/12_SchoolEast/gAreaRoomMap_HouseInteriors1_SchoolEast_bottom.bin.lz"
gAreaRoomMap_HouseInteriors1_SchoolEast_top::
	.incbin "maps/areas/033_HouseInteriors1/rooms/12_SchoolEast/gAreaRoomMap_HouseInteriors1_SchoolEast_top.bin.lz"
gAreaRoomMap_Dojos_Grayblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/00_Grayblade/gAreaRoomMap_Dojos_Grayblade_bottom.bin.lz"
gAreaRoomMap_Dojos_Grayblade_top::
	.incbin "maps/areas/037_Dojos/rooms/00_Grayblade/gAreaRoomMap_Dojos_Grayblade_top.bin.lz"
gAreaRoomMap_Dojos_Splitblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/01_Splitblade/gAreaRoomMap_Dojos_Splitblade_bottom.bin.lz"
gAreaRoomMap_Dojos_Splitblade_top::
	.incbin "maps/areas/037_Dojos/rooms/01_Splitblade/gAreaRoomMap_Dojos_Splitblade_top.bin.lz"
gAreaRoomMap_Dojos_Greatblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/02_Greatblade/gAreaRoomMap_Dojos_Greatblade_bottom.bin.lz"
gAreaRoomMap_Dojos_Greatblade_top::
	.incbin "maps/areas/037_Dojos/rooms/02_Greatblade/gAreaRoomMap_Dojos_Greatblade_top.bin.lz"
gAreaRoomMap_Dojos_Scarblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/03_Scarblade/gAreaRoomMap_Dojos_Scarblade_bottom.bin.lz"
gAreaRoomMap_Dojos_Scarblade_top::
	.incbin "maps/areas/037_Dojos/rooms/03_Scarblade/gAreaRoomMap_Dojos_Scarblade_top.bin.lz"
gAreaRoomMap_Dojos_SwiftbladeI_bottom::
	.incbin "maps/areas/037_Dojos/rooms/04_SwiftbladeI/gAreaRoomMap_Dojos_SwiftbladeI_bottom.bin.lz"
gAreaRoomMap_Dojos_SwiftbladeI_top::
	.incbin "maps/areas/037_Dojos/rooms/04_SwiftbladeI/gAreaRoomMap_Dojos_SwiftbladeI_top.bin.lz"
gAreaRoomMap_Dojos_Grimblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/05_Grimblade/gAreaRoomMap_Dojos_Grimblade_bottom.bin.lz"
gAreaRoomMap_Dojos_Grimblade_top::
	.incbin "maps/areas/037_Dojos/rooms/05_Grimblade/gAreaRoomMap_Dojos_Grimblade_top.bin.lz"
gAreaRoomMap_Dojos_Waveblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/06_Waveblade/gAreaRoomMap_Dojos_Waveblade_bottom.bin.lz"
gAreaRoomMap_Dojos_Waveblade_top::
	.incbin "maps/areas/037_Dojos/rooms/06_Waveblade/gAreaRoomMap_Dojos_Waveblade_top.bin.lz"
gAreaRoomMap_Dojos_7_bottom::
	.incbin "maps/areas/037_Dojos/rooms/07_7/gAreaRoomMap_Dojos_7_bottom.bin.lz"
gAreaRoomMap_Dojos_7_top::
	.incbin "maps/areas/037_Dojos/rooms/07_7/gAreaRoomMap_Dojos_7_top.bin.lz"
gAreaRoomMap_Dojos_8_bottom::
	.incbin "maps/areas/037_Dojos/rooms/08_8/gAreaRoomMap_Dojos_8_bottom.bin.lz"
gAreaRoomMap_Dojos_8_top::
	.incbin "maps/areas/037_Dojos/rooms/08_8/gAreaRoomMap_Dojos_8_top.bin.lz"
gAreaRoomMap_Dojos_9_bottom::
	.incbin "maps/areas/037_Dojos/rooms/09_9/gAreaRoomMap_Dojos_9_bottom.bin.lz"
gAreaRoomMap_Dojos_9_top::
	.incbin "maps/areas/037_Dojos/rooms/09_9/gAreaRoomMap_Dojos_9_top.bin.lz"
gAreaRoomMap_Dojos_ToGrimblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/10_ToGrimblade/gAreaRoomMap_Dojos_ToGrimblade_bottom.bin.lz"
gAreaRoomMap_Dojos_ToGrimblade_top::
	.incbin "maps/areas/037_Dojos/rooms/10_ToGrimblade/gAreaRoomMap_Dojos_ToGrimblade_top.bin.lz"
gAreaRoomMap_Dojos_ToSplitblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/11_ToSplitblade/gAreaRoomMap_Dojos_ToSplitblade_bottom.bin.lz"
gAreaRoomMap_Dojos_ToSplitblade_top::
	.incbin "maps/areas/037_Dojos/rooms/11_ToSplitblade/gAreaRoomMap_Dojos_ToSplitblade_top.bin.lz"
gAreaRoomMap_Dojos_ToGreatblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/12_ToGreatblade/gAreaRoomMap_Dojos_ToGreatblade_bottom.bin.lz"
gAreaRoomMap_Dojos_ToGreatblade_top::
	.incbin "maps/areas/037_Dojos/rooms/12_ToGreatblade/gAreaRoomMap_Dojos_ToGreatblade_top.bin.lz"
gAreaRoomMap_Dojos_ToScarblade_bottom::
	.incbin "maps/areas/037_Dojos/rooms/13_ToScarblade/gAreaRoomMap_Dojos_ToScarblade_bottom.bin.lz"
gAreaRoomMap_Dojos_ToScarblade_top::
	.incbin "maps/areas/037_Dojos/rooms/13_ToScarblade/gAreaRoomMap_Dojos_ToScarblade_top.bin.lz"
gAreaRoomMap_TreeInteriors_WitchHut_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/00_WitchHut/gAreaRoomMap_TreeInteriors_WitchHut_bottom.bin"
gAreaRoomMap_TreeInteriors_WitchHut_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/00_WitchHut/gAreaRoomMap_TreeInteriors_WitchHut_top.bin.lz"
gAreaRoomMap_TreeInteriors_StairsToCarlov_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/16_StairsToCarlov/gAreaRoomMap_TreeInteriors_StairsToCarlov_bottom.bin"
gAreaRoomMap_TreeInteriors_StairsToCarlov_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/16_StairsToCarlov/gAreaRoomMap_TreeInteriors_StairsToCarlov_top.bin.lz"
gAreaRoomMap_TreeInteriors_PercysTreehouse_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/17_PercysTreehouse/gAreaRoomMap_TreeInteriors_PercysTreehouse_bottom.bin"
gAreaRoomMap_TreeInteriors_PercysTreehouse_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/17_PercysTreehouse/gAreaRoomMap_TreeInteriors_PercysTreehouse_top.bin.lz"
gAreaRoomMap_TreeInteriors_SouthHyruleFieldHeartPiece_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/18_SouthHyruleFieldHeartPiece/gAreaRoomMap_TreeInteriors_SouthHyruleFieldHeartPiece_bottom.bin"
gAreaRoomMap_TreeInteriors_SouthHyruleFieldHeartPiece_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/18_SouthHyruleFieldHeartPiece/gAreaRoomMap_TreeInteriors_SouthHyruleFieldHeartPiece_top.bin.lz"
gAreaRoomMap_TreeInteriors_Waveblade_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/19_Waveblade/gAreaRoomMap_TreeInteriors_Waveblade_bottom.bin"
gAreaRoomMap_TreeInteriors_Waveblade_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/19_Waveblade/gAreaRoomMap_TreeInteriors_Waveblade_top.bin.lz"
gAreaRoomMap_TreeInteriors_14_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/20_14/gAreaRoomMap_TreeInteriors_14_bottom.bin"
gAreaRoomMap_TreeInteriors_14_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/20_14/gAreaRoomMap_TreeInteriors_14_top.bin.lz"
gAreaRoomMap_TreeInteriors_BoomerangNorthwest_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/21_BoomerangNorthwest/gAreaRoomMap_TreeInteriors_BoomerangNorthwest_bottom.bin"
gAreaRoomMap_TreeInteriors_BoomerangNorthwest_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/21_BoomerangNorthwest/gAreaRoomMap_TreeInteriors_BoomerangNorthwest_top.bin.lz"
gAreaRoomMap_TreeInteriors_BoomerangNortheast_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/22_BoomerangNortheast/gAreaRoomMap_TreeInteriors_BoomerangNortheast_bottom.bin"
gAreaRoomMap_TreeInteriors_BoomerangNortheast_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/22_BoomerangNortheast/gAreaRoomMap_TreeInteriors_BoomerangNortheast_top.bin.lz"
gAreaRoomMap_TreeInteriors_BoomerangSouthwest_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/23_BoomerangSouthwest/gAreaRoomMap_TreeInteriors_BoomerangSouthwest_bottom.bin"
gAreaRoomMap_TreeInteriors_BoomerangSouthwest_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/23_BoomerangSouthwest/gAreaRoomMap_TreeInteriors_BoomerangSouthwest_top.bin.lz"
gAreaRoomMap_TreeInteriors_BoomerangSoutheast_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/24_BoomerangSoutheast/gAreaRoomMap_TreeInteriors_BoomerangSoutheast_bottom.bin"
gAreaRoomMap_TreeInteriors_BoomerangSoutheast_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/24_BoomerangSoutheast/gAreaRoomMap_TreeInteriors_BoomerangSoutheast_top.bin.lz"
gAreaRoomMap_TreeInteriors_WesternWoodsHeartPiece_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/25_WesternWoodsHeartPiece/gAreaRoomMap_TreeInteriors_WesternWoodsHeartPiece_bottom.bin"
gAreaRoomMap_TreeInteriors_WesternWoodsHeartPiece_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/25_WesternWoodsHeartPiece/gAreaRoomMap_TreeInteriors_WesternWoodsHeartPiece_top.bin.lz"
gAreaRoomMap_TreeInteriors_NorthHyruleFieldFairyFountain_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/26_NorthHyruleFieldFairyFountain/gAreaRoomMap_TreeInteriors_NorthHyruleFieldFairyFountain_bottom.bin"
gAreaRoomMap_TreeInteriors_NorthHyruleFieldFairyFountain_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/26_NorthHyruleFieldFairyFountain/gAreaRoomMap_TreeInteriors_NorthHyruleFieldFairyFountain_top.bin.lz"
gAreaRoomMap_TreeInteriors_MinishWoodsGreatFairy_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/27_MinishWoodsGreatFairy/gAreaRoomMap_TreeInteriors_MinishWoodsGreatFairy_bottom.bin"
gAreaRoomMap_TreeInteriors_MinishWoodsGreatFairy_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/27_MinishWoodsGreatFairy/gAreaRoomMap_TreeInteriors_MinishWoodsGreatFairy_top.bin.lz"
gAreaRoomMap_TreeInteriors_1c_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/28_1c/gAreaRoomMap_TreeInteriors_1c_bottom.bin"
gAreaRoomMap_TreeInteriors_1c_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/28_1c/gAreaRoomMap_TreeInteriors_1c_top.bin.lz"
gAreaRoomMap_TreeInteriors_MinishWoodsBusinessScrub_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/29_MinishWoodsBusinessScrub/gAreaRoomMap_TreeInteriors_MinishWoodsBusinessScrub_bottom.bin"
gAreaRoomMap_TreeInteriors_MinishWoodsBusinessScrub_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/29_MinishWoodsBusinessScrub/gAreaRoomMap_TreeInteriors_MinishWoodsBusinessScrub_top.bin.lz"
gAreaRoomMap_TreeInteriors_1e_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/30_1e/gAreaRoomMap_TreeInteriors_1e_bottom.bin"
gAreaRoomMap_TreeInteriors_1e_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/30_1e/gAreaRoomMap_TreeInteriors_1e_top.bin.lz"
gAreaRoomMap_TreeInteriors_UnusedHeartContainer_bottom::
	.incbin "maps/areas/036_TreeInteriors/rooms/31_UnusedHeartContainer/gAreaRoomMap_TreeInteriors_UnusedHeartContainer_bottom.bin"
gAreaRoomMap_TreeInteriors_UnusedHeartContainer_top::
	.incbin "maps/areas/036_TreeInteriors/rooms/31_UnusedHeartContainer/gAreaRoomMap_TreeInteriors_UnusedHeartContainer_top.bin.lz"
gAreaRoomMap_MinishCracks_LonLonRanchNorth_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/00_LonLonRanchNorth/gAreaRoomMap_MinishCracks_LonLonRanchNorth_bottom.bin"
gAreaRoomMap_MinishCracks_LonLonRanchNorth_top::
	.incbin "maps/areas/039_MinishCracks/rooms/00_LonLonRanchNorth/gAreaRoomMap_MinishCracks_LonLonRanchNorth_top.bin.lz"
gAreaRoomMap_MinishCracks_LakeHyliaEast_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/01_LakeHyliaEast/gAreaRoomMap_MinishCracks_LakeHyliaEast_bottom.bin"
gAreaRoomMap_MinishCracks_LakeHyliaEast_top::
	.incbin "maps/areas/039_MinishCracks/rooms/01_LakeHyliaEast/gAreaRoomMap_MinishCracks_LakeHyliaEast_top.bin.lz"
gAreaRoomMap_MinishCracks_HyruleCastleGarden_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/02_HyruleCastleGarden/gAreaRoomMap_MinishCracks_HyruleCastleGarden_bottom.bin"
gAreaRoomMap_MinishCracks_HyruleCastleGarden_top::
	.incbin "maps/areas/039_MinishCracks/rooms/02_HyruleCastleGarden/gAreaRoomMap_MinishCracks_HyruleCastleGarden_top.bin.lz"
gAreaRoomMap_MinishCracks_MtCrenel_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/03_MtCrenel/gAreaRoomMap_MinishCracks_MtCrenel_bottom.bin"
gAreaRoomMap_MinishCracks_MtCrenel_top::
	.incbin "maps/areas/039_MinishCracks/rooms/03_MtCrenel/gAreaRoomMap_MinishCracks_MtCrenel_top.bin.lz"
gAreaRoomMap_MinishCracks_EastHyruleCastle_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/04_EastHyruleCastle/gAreaRoomMap_MinishCracks_EastHyruleCastle_bottom.bin"
gAreaRoomMap_MinishCracks_EastHyruleCastle_top::
	.incbin "maps/areas/039_MinishCracks/rooms/04_EastHyruleCastle/gAreaRoomMap_MinishCracks_EastHyruleCastle_top.bin.lz"
gAreaRoomMap_MinishCracks_5_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/05_5/gAreaRoomMap_MinishCracks_5_bottom.bin.lz"
gAreaRoomMap_MinishCracks_5_top::
	.incbin "maps/areas/039_MinishCracks/rooms/05_5/gAreaRoomMap_MinishCracks_5_top.bin.lz"
gAreaRoomMap_MinishCracks_CastorWildsBow_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/06_CastorWildsBow/gAreaRoomMap_MinishCracks_CastorWildsBow_bottom.bin"
gAreaRoomMap_MinishCracks_CastorWildsBow_top::
	.incbin "maps/areas/039_MinishCracks/rooms/06_CastorWildsBow/gAreaRoomMap_MinishCracks_CastorWildsBow_top.bin.lz"
gAreaRoomMap_MinishCracks_RuinsEntrance_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/07_RuinsEntrance/gAreaRoomMap_MinishCracks_RuinsEntrance_bottom.bin"
gAreaRoomMap_MinishCracks_RuinsEntrance_top::
	.incbin "maps/areas/039_MinishCracks/rooms/07_RuinsEntrance/gAreaRoomMap_MinishCracks_RuinsEntrance_top.bin.lz"
gAreaRoomMap_MinishCracks_MinishWoodsSouth_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/08_MinishWoodsSouth/gAreaRoomMap_MinishCracks_MinishWoodsSouth_bottom.bin"
gAreaRoomMap_MinishCracks_MinishWoodsSouth_top::
	.incbin "maps/areas/039_MinishCracks/rooms/08_MinishWoodsSouth/gAreaRoomMap_MinishCracks_MinishWoodsSouth_top.bin.lz"
gAreaRoomMap_MinishCracks_CastorWildsNorth_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/09_CastorWildsNorth/gAreaRoomMap_MinishCracks_CastorWildsNorth_bottom.bin"
gAreaRoomMap_MinishCracks_CastorWildsNorth_top::
	.incbin "maps/areas/039_MinishCracks/rooms/09_CastorWildsNorth/gAreaRoomMap_MinishCracks_CastorWildsNorth_top.bin.lz"
gAreaRoomMap_MinishCracks_CastorWildsWest_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/10_CastorWildsWest/gAreaRoomMap_MinishCracks_CastorWildsWest_bottom.bin"
gAreaRoomMap_MinishCracks_CastorWildsWest_top::
	.incbin "maps/areas/039_MinishCracks/rooms/10_CastorWildsWest/gAreaRoomMap_MinishCracks_CastorWildsWest_top.bin.lz"
gAreaRoomMap_MinishCracks_CastorWildsMiddle_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/11_CastorWildsMiddle/gAreaRoomMap_MinishCracks_CastorWildsMiddle_bottom.bin"
gAreaRoomMap_MinishCracks_CastorWildsMiddle_top::
	.incbin "maps/areas/039_MinishCracks/rooms/11_CastorWildsMiddle/gAreaRoomMap_MinishCracks_CastorWildsMiddle_top.bin.lz"
gAreaRoomMap_MinishCracks_RuinsTektite_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/12_RuinsTektite/gAreaRoomMap_MinishCracks_RuinsTektite_bottom.bin"
gAreaRoomMap_MinishCracks_RuinsTektite_top::
	.incbin "maps/areas/039_MinishCracks/rooms/12_RuinsTektite/gAreaRoomMap_MinishCracks_RuinsTektite_top.bin.lz"
gAreaRoomMap_MinishCracks_CastorWildsNextToBow_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/13_CastorWildsNextToBow/gAreaRoomMap_MinishCracks_CastorWildsNextToBow_bottom.bin"
gAreaRoomMap_MinishCracks_CastorWildsNextToBow_top::
	.incbin "maps/areas/039_MinishCracks/rooms/13_CastorWildsNextToBow/gAreaRoomMap_MinishCracks_CastorWildsNextToBow_top.bin.lz"
gAreaRoomMap_MinishCracks_E_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/14_E/gAreaRoomMap_MinishCracks_E_bottom.bin.lz"
gAreaRoomMap_MinishCracks_E_top::
	.incbin "maps/areas/039_MinishCracks/rooms/14_E/gAreaRoomMap_MinishCracks_E_top.bin.lz"
gAreaRoomMap_MinishCracks_F_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/15_F/gAreaRoomMap_MinishCracks_F_bottom.bin.lz"
gAreaRoomMap_MinishCracks_F_top::
	.incbin "maps/areas/039_MinishCracks/rooms/15_F/gAreaRoomMap_MinishCracks_F_top.bin.lz"
gAreaRoomMap_MinishCracks_10_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/16_10/gAreaRoomMap_MinishCracks_10_bottom.bin.lz"
gAreaRoomMap_MinishCracks_10_top::
	.incbin "maps/areas/039_MinishCracks/rooms/16_10/gAreaRoomMap_MinishCracks_10_top.bin.lz"
gAreaRoomMap_MinishCracks_11_bottom::
	.incbin "maps/areas/039_MinishCracks/rooms/17_11/gAreaRoomMap_MinishCracks_11_bottom.bin.lz"
gAreaRoomMap_MinishCracks_11_top::
	.incbin "maps/areas/039_MinishCracks/rooms/17_11/gAreaRoomMap_MinishCracks_11_top.bin.lz"
gAreaRoomMap_MinishRafters_Cafe_bottom::
	.incbin "maps/areas/046_MinishRafters/rooms/00_Cafe/gAreaRoomMap_MinishRafters_Cafe_bottom.bin.lz"
gAreaRoomMap_MinishRafters_Stockwell_bottom::
	.incbin "maps/areas/046_MinishRafters/rooms/01_Stockwell/gAreaRoomMap_MinishRafters_Stockwell_bottom.bin.lz"
gAreaRoomMap_MinishRafters_DrLeft_bottom::
	.incbin "maps/areas/046_MinishRafters/rooms/02_DrLeft/gAreaRoomMap_MinishRafters_DrLeft_bottom.bin.lz"
gAreaRoomMap_MinishRafters_Bakery_bottom::
	.incbin "maps/areas/046_MinishRafters/rooms/03_Bakery/gAreaRoomMap_MinishRafters_Bakery_bottom.bin.lz"
gAreaRoomMap_EzloCutscene_0_bottom::
	.incbin "maps/areas/056_EzloCutscene/rooms/00_0/gAreaRoomMap_EzloCutscene_0_bottom.bin.lz"
gAreaRoomMap_EzloCutscene_0_top::
	.incbin "maps/areas/056_EzloCutscene/rooms/00_0/gAreaRoomMap_EzloCutscene_0_top.bin.lz"
gAreaRoomMap_WindTribeTower_Entrance_bottom::
	.incbin "maps/areas/048_WindTribeTower/rooms/00_Entrance/gAreaRoomMap_WindTribeTower_Entrance_bottom.bin.lz"
gAreaRoomMap_WindTribeTower_Entrance_top::
	.incbin "maps/areas/048_WindTribeTower/rooms/00_Entrance/gAreaRoomMap_WindTribeTower_Entrance_top.bin.lz"
gAreaRoomMap_WindTribeTower_Floor1_bottom::
	.incbin "maps/areas/048_WindTribeTower/rooms/01_Floor1/gAreaRoomMap_WindTribeTower_Floor1_bottom.bin.lz"
gAreaRoomMap_WindTribeTower_Floor1_top::
	.incbin "maps/areas/048_WindTribeTower/rooms/01_Floor1/gAreaRoomMap_WindTribeTower_Floor1_top.bin.lz"
gAreaRoomMap_WindTribeTower_Floor2_bottom::
	.incbin "maps/areas/048_WindTribeTower/rooms/02_Floor2/gAreaRoomMap_WindTribeTower_Floor2_bottom.bin.lz"
gAreaRoomMap_WindTribeTower_Floor2_top::
	.incbin "maps/areas/048_WindTribeTower/rooms/02_Floor2/gAreaRoomMap_WindTribeTower_Floor2_top.bin.lz"
gAreaRoomMap_WindTribeTower_Floor3_bottom::
	.incbin "maps/areas/048_WindTribeTower/rooms/03_Floor3/gAreaRoomMap_WindTribeTower_Floor3_bottom.bin.lz"
gAreaRoomMap_WindTribeTower_Floor3_top::
	.incbin "maps/areas/048_WindTribeTower/rooms/03_Floor3/gAreaRoomMap_WindTribeTower_Floor3_top.bin.lz"
gAreaRoomMap_WindTribeTowerRoof_0_bottom::
	.incbin "maps/areas/049_WindTribeTowerRoof/rooms/00_0/gAreaRoomMap_WindTribeTowerRoof_0_bottom.bin.lz"
gAreaRoomMap_WindTribeTowerRoof_0_top::
	.incbin "maps/areas/049_WindTribeTowerRoof/rooms/00_0/gAreaRoomMap_WindTribeTowerRoof_0_top.bin.lz"
gRoomMapping_MinishHouseInteriors_GentariMain_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/00_GentariMain/gRoomMapping_MinishHouseInteriors_GentariMain_bottom.bin.lz"
gRoomCollisionMap_MinishHouseInteriors_GentariMain::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/00_GentariMain/gRoomCollisionMap_MinishHouseInteriors_GentariMain.bin.lz"
gRoomMapping_MinishHouseInteriors_GentariExit_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/01_GentariExit/gRoomMapping_MinishHouseInteriors_GentariExit_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_0_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/0/gAreaTileSet_MinishHouseInteriors_0_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_GentariExit::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/01_GentariExit/gRoomCollisionMap_MinishHouseInteriors_GentariExit.bin.lz"
gRoomMapping_MinishHouseInteriors_Festari_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/02_Festari/gRoomMapping_MinishHouseInteriors_Festari_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_1_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/1/gAreaTileSet_MinishHouseInteriors_1_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_Festari::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/02_Festari/gRoomCollisionMap_MinishHouseInteriors_Festari.bin.lz"
gRoomMapping_MinishHouseInteriors_Red_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/03_Red/gRoomMapping_MinishHouseInteriors_Red_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_2_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/2/gAreaTileSet_MinishHouseInteriors_2_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_Red::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/03_Red/gRoomCollisionMap_MinishHouseInteriors_Red.bin.lz"
gRoomMapping_MinishHouseInteriors_Green_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/04_Green/gRoomMapping_MinishHouseInteriors_Green_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_3_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/3/gAreaTileSet_MinishHouseInteriors_3_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_Green::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/04_Green/gRoomCollisionMap_MinishHouseInteriors_Green.bin.lz"
gRoomMapping_MinishHouseInteriors_Blue_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/05_Blue/gRoomMapping_MinishHouseInteriors_Blue_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_4_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/4/gAreaTileSet_MinishHouseInteriors_4_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_Blue::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/05_Blue/gRoomCollisionMap_MinishHouseInteriors_Blue.bin.lz"
gRoomMapping_MinishHouseInteriors_SideArea_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/06_SideArea/gRoomMapping_MinishHouseInteriors_SideArea_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_5_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/5/gAreaTileSet_MinishHouseInteriors_5_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_SideArea::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/06_SideArea/gRoomCollisionMap_MinishHouseInteriors_SideArea.bin.lz"
gRoomMapping_MinishHouseInteriors_ShoeMinish_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/07_ShoeMinish/gRoomMapping_MinishHouseInteriors_ShoeMinish_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_6_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/6/gAreaTileSet_MinishHouseInteriors_6_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_ShoeMinish::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/07_ShoeMinish/gRoomCollisionMap_MinishHouseInteriors_ShoeMinish.bin.lz"
gRoomMapping_MinishHouseInteriors_PotMinish_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/08_PotMinish/gRoomMapping_MinishHouseInteriors_PotMinish_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_7_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/7/gAreaTileSet_MinishHouseInteriors_7_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_PotMinish::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/08_PotMinish/gRoomCollisionMap_MinishHouseInteriors_PotMinish.bin.lz"
gRoomMapping_MinishHouseInteriors_BarrelMinish_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/09_BarrelMinish/gRoomMapping_MinishHouseInteriors_BarrelMinish_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_8_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/8/gAreaTileSet_MinishHouseInteriors_8_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_BarrelMinish::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/09_BarrelMinish/gRoomCollisionMap_MinishHouseInteriors_BarrelMinish.bin.lz"
gRoomMapping_MinishHouseInteriors_MelariMinesSouthwest_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/16_MelariMinesSouthwest/gRoomMapping_MinishHouseInteriors_MelariMinesSouthwest_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_9_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/9/gAreaTileSet_MinishHouseInteriors_9_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_MelariMinesSouthwest::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/16_MelariMinesSouthwest/gRoomCollisionMap_MinishHouseInteriors_MelariMinesSouthwest.bin.lz"
gRoomMapping_MinishHouseInteriors_MelariMinesSoutheast_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/17_MelariMinesSoutheast/gRoomMapping_MinishHouseInteriors_MelariMinesSoutheast_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_10_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/10/gAreaTileSet_MinishHouseInteriors_10_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_MelariMinesSoutheast::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/17_MelariMinesSoutheast/gRoomCollisionMap_MinishHouseInteriors_MelariMinesSoutheast.bin.lz"
gRoomMapping_MinishHouseInteriors_MelariMinesEast_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/18_MelariMinesEast/gRoomMapping_MinishHouseInteriors_MelariMinesEast_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_11_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/11/gAreaTileSet_MinishHouseInteriors_11_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_MelariMinesEast::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/18_MelariMinesEast/gRoomCollisionMap_MinishHouseInteriors_MelariMinesEast.bin.lz"
unknown_28::
	.incbin "assets/unknown_28.bin"
gRoomMapping_MinishHouseInteriors_HyruleFieldSouthwest_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/32_HyruleFieldSouthwest/gRoomMapping_MinishHouseInteriors_HyruleFieldSouthwest_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_12_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/12/gAreaTileSet_MinishHouseInteriors_12_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_HyruleFieldSouthwest::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/32_HyruleFieldSouthwest/gRoomCollisionMap_MinishHouseInteriors_HyruleFieldSouthwest.bin.lz"
gRoomMapping_MinishHouseInteriors_SouthHyruleField_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/33_SouthHyruleField/gRoomMapping_MinishHouseInteriors_SouthHyruleField_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_13_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/13/gAreaTileSet_MinishHouseInteriors_13_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_SouthHyruleField::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/33_SouthHyruleField/gRoomCollisionMap_MinishHouseInteriors_SouthHyruleField.bin.lz"
gRoomMapping_MinishHouseInteriors_NextToKnuckle_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/34_NextToKnuckle/gRoomMapping_MinishHouseInteriors_NextToKnuckle_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_14_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/14/gAreaTileSet_MinishHouseInteriors_14_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_NextToKnuckle::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/34_NextToKnuckle/gRoomCollisionMap_MinishHouseInteriors_NextToKnuckle.bin.lz"
gRoomMapping_MinishHouseInteriors_Librari_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/35_Librari/gRoomMapping_MinishHouseInteriors_Librari_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_15_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/15/gAreaTileSet_MinishHouseInteriors_15_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_Librari::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/35_Librari/gRoomCollisionMap_MinishHouseInteriors_Librari.bin.lz"
gRoomMapping_MinishHouseInteriors_HyruleFieldExit_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/36_HyruleFieldExit/gRoomMapping_MinishHouseInteriors_HyruleFieldExit_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_16_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/16/gAreaTileSet_MinishHouseInteriors_16_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_HyruleFieldExit::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/36_HyruleFieldExit/gRoomCollisionMap_MinishHouseInteriors_HyruleFieldExit.bin.lz"
gRoomMapping_MinishHouseInteriors_HyruleTown_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/37_HyruleTown/gRoomMapping_MinishHouseInteriors_HyruleTown_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_17_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/17/gAreaTileSet_MinishHouseInteriors_17_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_HyruleTown::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/37_HyruleTown/gRoomCollisionMap_MinishHouseInteriors_HyruleTown.bin.lz"
gRoomMapping_MinishHouseInteriors_MinishWoodsBomb_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/38_MinishWoodsBomb/gRoomMapping_MinishHouseInteriors_MinishWoodsBomb_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_18_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/18/gAreaTileSet_MinishHouseInteriors_18_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_MinishWoodsBomb::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/38_MinishWoodsBomb/gRoomCollisionMap_MinishHouseInteriors_MinishWoodsBomb.bin.lz"
gRoomMapping_MinishHouseInteriors_LakeHyliaOcarina_bottom::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/39_LakeHyliaOcarina/gRoomMapping_MinishHouseInteriors_LakeHyliaOcarina_bottom.bin.lz"
gAreaTileSet_MinishHouseInteriors_19_0::
	.incbin "maps/areas/032_MinishHouseInteriors/tileSets/19/gAreaTileSet_MinishHouseInteriors_19_0.8bpp.lz"
gRoomCollisionMap_MinishHouseInteriors_LakeHyliaOcarina::
	.incbin "maps/areas/032_MinishHouseInteriors/rooms/39_LakeHyliaOcarina/gRoomCollisionMap_MinishHouseInteriors_LakeHyliaOcarina.bin.lz"
gRoomMapping_TownMinishHoles_MayorsHouse_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/00_MayorsHouse/gRoomMapping_TownMinishHoles_MayorsHouse_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_0_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/0/gAreaTileSet_TownMinishHoles_0_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_MayorsHouse::
	.incbin "maps/areas/045_TownMinishHoles/rooms/00_MayorsHouse/gRoomCollisionMap_TownMinishHoles_MayorsHouse.bin.lz"
gRoomMapping_TownMinishHoles_WestOracle_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/01_WestOracle/gRoomMapping_TownMinishHoles_WestOracle_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_1_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/1/gAreaTileSet_TownMinishHoles_1_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_WestOracle::
	.incbin "maps/areas/045_TownMinishHoles/rooms/01_WestOracle/gRoomCollisionMap_TownMinishHoles_WestOracle.bin.lz"
gRoomMapping_TownMinishHoles_DrLeft_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/02_DrLeft/gRoomMapping_TownMinishHoles_DrLeft_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_2_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/2/gAreaTileSet_TownMinishHoles_2_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_DrLeft::
	.incbin "maps/areas/045_TownMinishHoles/rooms/02_DrLeft/gRoomCollisionMap_TownMinishHoles_DrLeft.bin.lz"
gRoomMapping_TownMinishHoles_Carpenter_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/03_Carpenter/gRoomMapping_TownMinishHoles_Carpenter_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_3_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/3/gAreaTileSet_TownMinishHoles_3_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_Carpenter::
	.incbin "maps/areas/045_TownMinishHoles/rooms/03_Carpenter/gRoomCollisionMap_TownMinishHoles_Carpenter.bin.lz"
gRoomMapping_TownMinishHoles_Cafe_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/04_Cafe/gRoomMapping_TownMinishHoles_Cafe_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_4_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/4/gAreaTileSet_TownMinishHoles_4_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_Cafe::
	.incbin "maps/areas/045_TownMinishHoles/rooms/04_Cafe/gRoomCollisionMap_TownMinishHoles_Cafe.bin.lz"
gRoomMapping_TownMinishHoles_5_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/05_5/gRoomMapping_TownMinishHoles_5_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_5_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/5/gAreaTileSet_TownMinishHoles_5_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_5::
	.incbin "maps/areas/045_TownMinishHoles/rooms/05_5/gRoomCollisionMap_TownMinishHoles_5.bin.lz"
gRoomMapping_TownMinishHoles_LibraryBookshelf_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/16_LibraryBookshelf/gRoomMapping_TownMinishHoles_LibraryBookshelf_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_6_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/6/gAreaTileSet_TownMinishHoles_6_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_LibraryBookshelf::
	.incbin "maps/areas/045_TownMinishHoles/rooms/16_LibraryBookshelf/gRoomCollisionMap_TownMinishHoles_LibraryBookshelf.bin.lz"
gRoomMapping_TownMinishHoles_LibraryBooksHouse_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/17_LibraryBooksHouse/gRoomMapping_TownMinishHoles_LibraryBooksHouse_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_7_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/7/gAreaTileSet_TownMinishHoles_7_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_LibraryBooksHouse::
	.incbin "maps/areas/045_TownMinishHoles/rooms/17_LibraryBooksHouse/gRoomCollisionMap_TownMinishHoles_LibraryBooksHouse.bin.lz"
gRoomMapping_TownMinishHoles_RemShoeShop_bottom::
	.incbin "maps/areas/045_TownMinishHoles/rooms/18_RemShoeShop/gRoomMapping_TownMinishHoles_RemShoeShop_bottom.bin.lz"
gAreaTileSet_TownMinishHoles_8_0::
	.incbin "maps/areas/045_TownMinishHoles/tileSets/8/gAreaTileSet_TownMinishHoles_8_0.8bpp.lz"
gRoomCollisionMap_TownMinishHoles_RemShoeShop::
	.incbin "maps/areas/045_TownMinishHoles/rooms/18_RemShoeShop/gRoomCollisionMap_TownMinishHoles_RemShoeShop.bin.lz"
gAreaTileSet_40_0_0::
	.incbin "maps/areas/064_40/tileSets/0/gAreaTileSet_40_0_0.4bpp.lz"
gAreaTileSet_40_0_1::
	.incbin "maps/areas/064_40/tileSets/0/gAreaTileSet_40_0_1.4bpp.lz"
gAreaTileSet_40_0_2::
	.incbin "maps/areas/064_40/tileSets/0/gAreaTileSet_40_0_2.4bpp.lz"
gAreaTileSet_40_bottom::
	.incbin "maps/areas/064_40/tileSet/gAreaTileSet_40_bottom.bin.lz"
gAreaTileSet_40_top::
	.incbin "maps/areas/064_40/tileSet/gAreaTileSet_40_top.bin.lz"
gAreaTileSetTypes_40_bottom::
	.incbin "maps/areas/064_40/tileSet/gAreaTileSetTypes_40_bottom.bin.lz"
gAreaTileSetTypes_40_top::
	.incbin "maps/areas/064_40/tileSet/gAreaTileSetTypes_40_top.bin.lz"
gAreaRoomMap_40_0_bottom::
	.incbin "maps/areas/064_40/rooms/00_0/gAreaRoomMap_40_0_bottom.bin.lz"
gAreaRoomMap_40_0_top::
	.incbin "maps/areas/064_40/rooms/00_0/gAreaRoomMap_40_0_top.bin.lz"
gAreaRoomMap_40_1_bottom::
	.incbin "maps/areas/064_40/rooms/01_1/gAreaRoomMap_40_1_bottom.bin.lz"
gAreaRoomMap_40_1_top::
	.incbin "maps/areas/064_40/rooms/01_1/gAreaRoomMap_40_1_top.bin.lz"
gAreaRoomMap_40_2_bottom::
	.incbin "maps/areas/064_40/rooms/02_2/gAreaRoomMap_40_2_bottom.bin.lz"
gAreaRoomMap_40_2_top::
	.incbin "maps/areas/064_40/rooms/02_2/gAreaRoomMap_40_2_top.bin.lz"
gAreaRoomMap_40_3_bottom::
	.incbin "maps/areas/064_40/rooms/03_3/gAreaRoomMap_40_3_bottom.bin.lz"
gAreaRoomMap_40_3_top::
	.incbin "maps/areas/064_40/rooms/03_3/gAreaRoomMap_40_3_top.bin.lz"
gAreaRoomMap_40_4_bottom::
	.incbin "maps/areas/064_40/rooms/04_4/gAreaRoomMap_40_4_bottom.bin.lz"
gAreaRoomMap_40_4_top::
	.incbin "maps/areas/064_40/rooms/04_4/gAreaRoomMap_40_4_top.bin.lz"
gAreaRoomMap_40_5_bottom::
	.incbin "maps/areas/064_40/rooms/05_5/gAreaRoomMap_40_5_bottom.bin.lz"
gAreaRoomMap_40_5_top::
	.incbin "maps/areas/064_40/rooms/05_5/gAreaRoomMap_40_5_top.bin.lz"
gAreaRoomMap_40_6_bottom::
	.incbin "maps/areas/064_40/rooms/06_6/gAreaRoomMap_40_6_bottom.bin.lz"
gAreaRoomMap_40_6_top::
	.incbin "maps/areas/064_40/rooms/06_6/gAreaRoomMap_40_6_top.bin.lz"
gAreaRoomMap_40_7_bottom::
	.incbin "maps/areas/064_40/rooms/07_7/gAreaRoomMap_40_7_bottom.bin.lz"
gAreaRoomMap_40_7_top::
	.incbin "maps/areas/064_40/rooms/07_7/gAreaRoomMap_40_7_top.bin.lz"
gAreaRoomMap_40_8_bottom::
	.incbin "maps/areas/064_40/rooms/08_8/gAreaRoomMap_40_8_bottom.bin.lz"
gAreaRoomMap_40_8_top::
	.incbin "maps/areas/064_40/rooms/08_8/gAreaRoomMap_40_8_top.bin.lz"
gAreaRoomMap_HyruleTownUnderground_0_bottom::
	.incbin "maps/areas/065_HyruleTownUnderground/rooms/00_0/gAreaRoomMap_HyruleTownUnderground_0_bottom.bin.lz"
gAreaRoomMap_HyruleTownUnderground_0_top::
	.incbin "maps/areas/065_HyruleTownUnderground/rooms/00_0/gAreaRoomMap_HyruleTownUnderground_0_top.bin.lz"
gAreaRoomMap_HyruleTownUnderground_1_bottom::
	.incbin "maps/areas/065_HyruleTownUnderground/rooms/01_1/gAreaRoomMap_HyruleTownUnderground_1_bottom.bin.lz"
gAreaRoomMap_HyruleTownUnderground_1_top::
	.incbin "maps/areas/065_HyruleTownUnderground/rooms/01_1/gAreaRoomMap_HyruleTownUnderground_1_top.bin.lz"
gAreaRoomMap_GardenFountains_East_bottom::
	.incbin "maps/areas/066_GardenFountains/rooms/00_East/gAreaRoomMap_GardenFountains_East_bottom.bin.lz"
gAreaRoomMap_GardenFountains_East_top::
	.incbin "maps/areas/066_GardenFountains/rooms/00_East/gAreaRoomMap_GardenFountains_East_top.bin.lz"
gAreaRoomMap_GardenFountains_West_bottom::
	.incbin "maps/areas/066_GardenFountains/rooms/01_West/gAreaRoomMap_GardenFountains_West_bottom.bin.lz"
gAreaRoomMap_GardenFountains_West_top::
	.incbin "maps/areas/066_GardenFountains/rooms/01_West/gAreaRoomMap_GardenFountains_West_top.bin.lz"
gAreaRoomMap_HyruleCastleCellar_0_bottom::
	.incbin "maps/areas/067_HyruleCastleCellar/rooms/00_0/gAreaRoomMap_HyruleCastleCellar_0_bottom.bin.lz"
gAreaRoomMap_HyruleCastleCellar_0_top::
	.incbin "maps/areas/067_HyruleCastleCellar/rooms/00_0/gAreaRoomMap_HyruleCastleCellar_0_top.bin.lz"
gAreaRoomMap_HyruleCastleCellar_1_bottom::
	.incbin "maps/areas/067_HyruleCastleCellar/rooms/01_1/gAreaRoomMap_HyruleCastleCellar_1_bottom.bin.lz"
gAreaRoomMap_HyruleCastleCellar_1_top::
	.incbin "maps/areas/067_HyruleCastleCellar/rooms/01_1/gAreaRoomMap_HyruleCastleCellar_1_top.bin.lz"
gAreaRoomMap_SimonsSimulation_0_bottom::
	.incbin "maps/areas/068_SimonsSimulation/rooms/00_0/gAreaRoomMap_SimonsSimulation_0_bottom.bin.lz"
gAreaRoomMap_SimonsSimulation_0_top::
	.incbin "maps/areas/068_SimonsSimulation/rooms/00_0/gAreaRoomMap_SimonsSimulation_0_top.bin.lz"
gAreaTileSet_DeepwoodShrine_0_0::
	.incbin "maps/areas/072_DeepwoodShrine/tileSets/0/gAreaTileSet_DeepwoodShrine_0_0.4bpp.lz"
gAreaTileSet_DeepwoodShrine_0_1::
	.incbin "maps/areas/072_DeepwoodShrine/tileSets/0/gAreaTileSet_DeepwoodShrine_0_1.4bpp.lz"
gAreaTileSet_DeepwoodShrine_0_2::
	.incbin "maps/areas/072_DeepwoodShrine/tileSets/0/gAreaTileSet_DeepwoodShrine_0_2.4bpp.lz"
gAreaTileSet_DeepwoodShrine_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/tileSet/gAreaTileSet_DeepwoodShrine_bottom.bin.lz"
gAreaTileSet_DeepwoodShrine_top::
	.incbin "maps/areas/072_DeepwoodShrine/tileSet/gAreaTileSet_DeepwoodShrine_top.bin.lz"
gAreaTileSetTypes_DeepwoodShrine_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/tileSet/gAreaTileSetTypes_DeepwoodShrine_bottom.bin.lz"
gAreaTileSetTypes_DeepwoodShrine_top::
	.incbin "maps/areas/072_DeepwoodShrine/tileSet/gAreaTileSetTypes_DeepwoodShrine_top.bin.lz"
gAreaTileSet_DeepwoodShrineBoss_0_0::
	.incbin "maps/areas/073_DeepwoodShrineBoss/tileSets/0/gAreaTileSet_DeepwoodShrineBoss_0_0.4bpp.lz"
gAreaTileSet_DeepwoodShrineBoss_0_1::
	.incbin "maps/areas/073_DeepwoodShrineBoss/tileSets/0/gAreaTileSet_DeepwoodShrineBoss_0_1.4bpp.lz"
gAreaTileSet_DeepwoodShrineBoss_0_2::
	.incbin "maps/areas/073_DeepwoodShrineBoss/tileSets/0/gAreaTileSet_DeepwoodShrineBoss_0_2.4bpp.lz"
gAreaTileSet_DeepwoodShrineBoss_bottom::
	.incbin "maps/areas/073_DeepwoodShrineBoss/tileSet/gAreaTileSet_DeepwoodShrineBoss_bottom.bin.lz"
gAreaTileSet_DeepwoodShrineBoss_top::
	.incbin "maps/areas/073_DeepwoodShrineBoss/tileSet/gAreaTileSet_DeepwoodShrineBoss_top.bin.lz"
gAreaTileSetTypes_DeepwoodShrineBoss_bottom::
	.incbin "maps/areas/073_DeepwoodShrineBoss/tileSet/gAreaTileSetTypes_DeepwoodShrineBoss_bottom.bin.lz"
gAreaTileSetTypes_DeepwoodShrineBoss_top::
	.incbin "maps/areas/073_DeepwoodShrineBoss/tileSet/gAreaTileSetTypes_DeepwoodShrineBoss_top.bin.lz"
gAreaTileSet_DeepwoodShrineEntry_0_0::
	.incbin "maps/areas/074_DeepwoodShrineEntry/tileSets/0/gAreaTileSet_DeepwoodShrineEntry_0_0.4bpp.lz"
gAreaTileSet_DeepwoodShrineEntry_0_1::
	.incbin "maps/areas/074_DeepwoodShrineEntry/tileSets/0/gAreaTileSet_DeepwoodShrineEntry_0_1.4bpp.lz"
gAreaTileSet_DeepwoodShrineEntry_0_2::
	.incbin "maps/areas/074_DeepwoodShrineEntry/tileSets/0/gAreaTileSet_DeepwoodShrineEntry_0_2.4bpp.lz"
gAreaTileSet_DeepwoodShrineEntry_bottom::
	.incbin "maps/areas/074_DeepwoodShrineEntry/tileSet/gAreaTileSet_DeepwoodShrineEntry_bottom.bin.lz"
gAreaTileSet_DeepwoodShrineEntry_top::
	.incbin "maps/areas/074_DeepwoodShrineEntry/tileSet/gAreaTileSet_DeepwoodShrineEntry_top.bin.lz"
gAreaTileSetTypes_DeepwoodShrineEntry_bottom::
	.incbin "maps/areas/074_DeepwoodShrineEntry/tileSet/gAreaTileSetTypes_DeepwoodShrineEntry_bottom.bin.lz"
gAreaTileSetTypes_DeepwoodShrineEntry_top::
	.incbin "maps/areas/074_DeepwoodShrineEntry/tileSet/gAreaTileSetTypes_DeepwoodShrineEntry_top.bin.lz"
gAreaRoomMap_DeepwoodShrine_Madderpillar_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/00_Madderpillar/gAreaRoomMap_DeepwoodShrine_Madderpillar_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Madderpillar_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/00_Madderpillar/gAreaRoomMap_DeepwoodShrine_Madderpillar_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Madderpillar::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/00_Madderpillar/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_BluePortal_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/01_BluePortal/gAreaRoomMap_DeepwoodShrine_BluePortal_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_BluePortal_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/01_BluePortal/gAreaRoomMap_DeepwoodShrine_BluePortal_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_BluePortal::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/01_BluePortal/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_StairsToB1_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/02_StairsToB1/gAreaRoomMap_DeepwoodShrine_StairsToB1_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_StairsToB1_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/02_StairsToB1/gAreaRoomMap_DeepwoodShrine_StairsToB1_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_StairsToB1::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/02_StairsToB1/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_PotBridge_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/03_PotBridge/gAreaRoomMap_DeepwoodShrine_PotBridge_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_PotBridge_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/03_PotBridge/gAreaRoomMap_DeepwoodShrine_PotBridge_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_PotBridge::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/03_PotBridge/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_DoubleStatue_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/04_DoubleStatue/gAreaRoomMap_DeepwoodShrine_DoubleStatue_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_DoubleStatue_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/04_DoubleStatue/gAreaRoomMap_DeepwoodShrine_DoubleStatue_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_DoubleStatue::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/04_DoubleStatue/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Map_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/05_Map/gAreaRoomMap_DeepwoodShrine_Map_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Map_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/05_Map/gAreaRoomMap_DeepwoodShrine_Map_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Map::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/05_Map/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Barrel_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/06_Barrel/gAreaRoomMap_DeepwoodShrine_Barrel_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Barrel_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/06_Barrel/gAreaRoomMap_DeepwoodShrine_Barrel_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Barrel::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/06_Barrel/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Button_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/07_Button/gAreaRoomMap_DeepwoodShrine_Button_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Button_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/07_Button/gAreaRoomMap_DeepwoodShrine_Button_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Button::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/07_Button/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Mulldozer_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/08_Mulldozer/gAreaRoomMap_DeepwoodShrine_Mulldozer_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Mulldozer_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/08_Mulldozer/gAreaRoomMap_DeepwoodShrine_Mulldozer_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Mulldozer::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/08_Mulldozer/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Pillars_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/09_Pillars/gAreaRoomMap_DeepwoodShrine_Pillars_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Pillars_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/09_Pillars/gAreaRoomMap_DeepwoodShrine_Pillars_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Pillars::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/09_Pillars/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Lever_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/10_Lever/gAreaRoomMap_DeepwoodShrine_Lever_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Lever_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/10_Lever/gAreaRoomMap_DeepwoodShrine_Lever_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Lever::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/10_Lever/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Entrance_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/11_Entrance/gAreaRoomMap_DeepwoodShrine_Entrance_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Entrance_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/11_Entrance/gAreaRoomMap_DeepwoodShrine_Entrance_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Entrance::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/11_Entrance/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Torches_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/16_Torches/gAreaRoomMap_DeepwoodShrine_Torches_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Torches_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/16_Torches/gAreaRoomMap_DeepwoodShrine_Torches_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Torches::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/16_Torches/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_BossKey_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/17_BossKey/gAreaRoomMap_DeepwoodShrine_BossKey_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_BossKey_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/17_BossKey/gAreaRoomMap_DeepwoodShrine_BossKey_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_BossKey::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/17_BossKey/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_Compass_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/18_Compass/gAreaRoomMap_DeepwoodShrine_Compass_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_Compass_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/18_Compass/gAreaRoomMap_DeepwoodShrine_Compass_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_Compass::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/18_Compass/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_13_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/19_13/gAreaRoomMap_DeepwoodShrine_13_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_13_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/19_13/gAreaRoomMap_DeepwoodShrine_13_top.bin.lz"
gDungeonMaps_072_DeepwoodShrine_13_unused::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/19_13/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_LilyPadWest_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/20_LilyPadWest/gAreaRoomMap_DeepwoodShrine_LilyPadWest_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_LilyPadWest_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/20_LilyPadWest/gAreaRoomMap_DeepwoodShrine_LilyPadWest_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_LilyPadWest::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/20_LilyPadWest/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_LilyPadEast_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/21_LilyPadEast/gAreaRoomMap_DeepwoodShrine_LilyPadEast_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_LilyPadEast_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/21_LilyPadEast/gAreaRoomMap_DeepwoodShrine_LilyPadEast_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_LilyPadEast::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/21_LilyPadEast/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrineBoss_Main_bottom::
	.incbin "maps/areas/073_DeepwoodShrineBoss/rooms/00_Main/gAreaRoomMap_DeepwoodShrineBoss_Main_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrineBoss_Main_top::
	.incbin "maps/areas/073_DeepwoodShrineBoss/rooms/00_Main/gAreaRoomMap_DeepwoodShrineBoss_Main_top.bin.lz"
 gDungeonMaps_DeepwoodShrineBoss_Main::
	.incbin "maps/areas/073_DeepwoodShrineBoss/rooms/00_Main/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_BossDoor_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/23_BossDoor/gAreaRoomMap_DeepwoodShrine_BossDoor_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_BossDoor_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/23_BossDoor/gAreaRoomMap_DeepwoodShrine_BossDoor_top.bin.lz"
 gDungeonMaps_DeepwoodShrine_BossDoor::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/23_BossDoor/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrine_InsideBarrel_bottom::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/32_InsideBarrel/gAreaRoomMap_DeepwoodShrine_InsideBarrel_bottom.bin.lz"
gAreaRoomMap_DeepwoodShrine_InsideBarrel_top::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/32_InsideBarrel/gAreaRoomMap_DeepwoodShrine_InsideBarrel_top.bin.lz"
gDungeonMaps_DeepwoodShrine_InsideBarrel_unused::
	.incbin "maps/areas/072_DeepwoodShrine/rooms/32_InsideBarrel/dungeon_map.bin"
gAreaRoomMap_DeepwoodShrineEntry_Main_bottom::
	.incbin "maps/areas/074_DeepwoodShrineEntry/rooms/00_Main/gAreaRoomMap_DeepwoodShrineEntry_Main_bottom.bin"
gAreaRoomMap_DeepwoodShrineEntry_Main_top::
	.incbin "maps/areas/074_DeepwoodShrineEntry/rooms/00_Main/gAreaRoomMap_DeepwoodShrineEntry_Main_top.bin.lz"
gAreaTileSet_CaveOfFlames_0_0::
	.incbin "maps/areas/080_CaveOfFlames/tileSets/0/gAreaTileSet_CaveOfFlames_0_0.4bpp.lz"
gAreaTileSet_CaveOfFlames_0_1::
	.incbin "maps/areas/080_CaveOfFlames/tileSets/0/gAreaTileSet_CaveOfFlames_0_1.4bpp.lz"
gAreaTileSet_CaveOfFlames_0_2::
	.incbin "maps/areas/080_CaveOfFlames/tileSets/0/gAreaTileSet_CaveOfFlames_0_2.4bpp.lz"
gAreaTileSet_CaveOfFlames_bottom::
	.incbin "maps/areas/080_CaveOfFlames/tileSet/gAreaTileSet_CaveOfFlames_bottom.bin.lz"
gAreaTileSet_CaveOfFlames_top::
	.incbin "maps/areas/080_CaveOfFlames/tileSet/gAreaTileSet_CaveOfFlames_top.bin.lz"
gAreaTileSetTypes_CaveOfFlames_bottom::
	.incbin "maps/areas/080_CaveOfFlames/tileSet/gAreaTileSetTypes_CaveOfFlames_bottom.bin.lz"
gAreaTileSetTypes_CaveOfFlames_top::
	.incbin "maps/areas/080_CaveOfFlames/tileSet/gAreaTileSetTypes_CaveOfFlames_top.bin.lz"
gAreaTileSet_CaveOfFlamesBoss_0_0::
	.incbin "maps/areas/081_CaveOfFlamesBoss/tileSets/0/gAreaTileSet_CaveOfFlamesBoss_0_0.4bpp.lz"
gAreaTileSet_CaveOfFlamesBoss_0_1::
	.incbin "maps/areas/081_CaveOfFlamesBoss/tileSets/0/gAreaTileSet_CaveOfFlamesBoss_0_1.4bpp.lz"
gAreaTileSet_CaveOfFlamesBoss_0_2::
	.incbin "maps/areas/081_CaveOfFlamesBoss/tileSets/0/gAreaTileSet_CaveOfFlamesBoss_0_2.4bpp.lz"
gAreaTileSet_CaveOfFlamesBoss_bottom::
	.incbin "maps/areas/081_CaveOfFlamesBoss/tileSet/gAreaTileSet_CaveOfFlamesBoss_bottom.bin.lz"
gAreaTileSet_CaveOfFlamesBoss_top::
	.incbin "maps/areas/081_CaveOfFlamesBoss/tileSet/gAreaTileSet_CaveOfFlamesBoss_top.bin.lz"
gAreaTileSetTypes_CaveOfFlamesBoss_bottom::
	.incbin "maps/areas/081_CaveOfFlamesBoss/tileSet/gAreaTileSetTypes_CaveOfFlamesBoss_bottom.bin.lz"
gAreaTileSetTypes_CaveOfFlamesBoss_top::
	.incbin "maps/areas/081_CaveOfFlamesBoss/tileSet/gAreaTileSetTypes_CaveOfFlamesBoss_top.bin.lz"
gAreaTileSet_CaveOfFlames_0_3::
	.incbin "maps/areas/080_CaveOfFlames/tileSets/0/gAreaTileSet_CaveOfFlames_0_3.4bpp.lz"
gAreaRoomMap_CaveOfFlames_AfterCane_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/00_AfterCane/gAreaRoomMap_CaveOfFlames_AfterCane_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_AfterCane_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/00_AfterCane/gAreaRoomMap_CaveOfFlames_AfterCane_top.bin.lz"
 gDungeonMaps_CaveOfFlames_AfterCane::
	.incbin "maps/areas/080_CaveOfFlames/rooms/00_AfterCane/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_SpinyChu_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/01_SpinyChu/gAreaRoomMap_CaveOfFlames_SpinyChu_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_SpinyChu_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/01_SpinyChu/gAreaRoomMap_CaveOfFlames_SpinyChu_top.bin.lz"
 gDungeonMaps_CaveOfFlames_SpinyChu::
	.incbin "maps/areas/080_CaveOfFlames/rooms/01_SpinyChu/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_CartToSpinyChu_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/02_CartToSpinyChu/gAreaRoomMap_CaveOfFlames_CartToSpinyChu_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_CartToSpinyChu_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/02_CartToSpinyChu/gAreaRoomMap_CaveOfFlames_CartToSpinyChu_top.bin.lz"
 gDungeonMaps_CaveOfFlames_CartToSpinyChu::
	.incbin "maps/areas/080_CaveOfFlames/rooms/02_CartToSpinyChu/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_Entrance_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/03_Entrance/gAreaRoomMap_CaveOfFlames_Entrance_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_Entrance_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/03_Entrance/gAreaRoomMap_CaveOfFlames_Entrance_top.bin.lz"
 gDungeonMaps_CaveOfFlames_Entrance::
	.incbin "maps/areas/080_CaveOfFlames/rooms/03_Entrance/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_MainCart_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/04_MainCart/gAreaRoomMap_CaveOfFlames_MainCart_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_MainCart_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/04_MainCart/gAreaRoomMap_CaveOfFlames_MainCart_top.bin.lz"
 gDungeonMaps_CaveOfFlames_MainCart::
	.incbin "maps/areas/080_CaveOfFlames/rooms/04_MainCart/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_NorthEntrance_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/05_NorthEntrance/gAreaRoomMap_CaveOfFlames_NorthEntrance_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_NorthEntrance_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/05_NorthEntrance/gAreaRoomMap_CaveOfFlames_NorthEntrance_top.bin.lz"
 gDungeonMaps_CaveOfFlames_NorthEntrance::
	.incbin "maps/areas/080_CaveOfFlames/rooms/05_NorthEntrance/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_CartWest_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/06_CartWest/gAreaRoomMap_CaveOfFlames_CartWest_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_CartWest_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/06_CartWest/gAreaRoomMap_CaveOfFlames_CartWest_top.bin.lz"
 gDungeonMaps_CaveOfFlames_CartWest::
	.incbin "maps/areas/080_CaveOfFlames/rooms/06_CartWest/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_HelmasaurFight_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/07_HelmasaurFight/gAreaRoomMap_CaveOfFlames_HelmasaurFight_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_HelmasaurFight_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/07_HelmasaurFight/gAreaRoomMap_CaveOfFlames_HelmasaurFight_top.bin.lz"
 gDungeonMaps_CaveOfFlames_HelmasaurFight::
	.incbin "maps/areas/080_CaveOfFlames/rooms/07_HelmasaurFight/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_RollobiteLavaRoom_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/08_RollobiteLavaRoom/gAreaRoomMap_CaveOfFlames_RollobiteLavaRoom_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_RollobiteLavaRoom_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/08_RollobiteLavaRoom/gAreaRoomMap_CaveOfFlames_RollobiteLavaRoom_top.bin.lz"
 gDungeonMaps_CaveOfFlames_RollobiteLavaRoom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/08_RollobiteLavaRoom/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_MinishLavaRoom_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/09_MinishLavaRoom/gAreaRoomMap_CaveOfFlames_MinishLavaRoom_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_MinishLavaRoom_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/09_MinishLavaRoom/gAreaRoomMap_CaveOfFlames_MinishLavaRoom_top.bin.lz"
 gDungeonMaps_CaveOfFlames_MinishLavaRoom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/09_MinishLavaRoom/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_MinishSpikes_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/16_MinishSpikes/gAreaRoomMap_CaveOfFlames_MinishSpikes_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_MinishSpikes_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/16_MinishSpikes/gAreaRoomMap_CaveOfFlames_MinishSpikes_top.bin.lz"
 gDungeonMaps_CaveOfFlames_MinishSpikes::
	.incbin "maps/areas/080_CaveOfFlames/rooms/16_MinishSpikes/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_TompasDoom_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/17_TompasDoom/gAreaRoomMap_CaveOfFlames_TompasDoom_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_TompasDoom_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/17_TompasDoom/gAreaRoomMap_CaveOfFlames_TompasDoom_top.bin.lz"
 gDungeonMaps_CaveOfFlames_TompasDoom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/17_TompasDoom/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_BeforeGleerok_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/18_BeforeGleerok/gAreaRoomMap_CaveOfFlames_BeforeGleerok_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_BeforeGleerok_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/18_BeforeGleerok/gAreaRoomMap_CaveOfFlames_BeforeGleerok_top.bin.lz"
 gDungeonMaps_CaveOfFlames_BeforeGleerok::
	.incbin "maps/areas/080_CaveOfFlames/rooms/18_BeforeGleerok/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_BosskeyPath1_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/19_BosskeyPath1/gAreaRoomMap_CaveOfFlames_BosskeyPath1_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_BosskeyPath1_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/19_BosskeyPath1/gAreaRoomMap_CaveOfFlames_BosskeyPath1_top.bin.lz"
 gDungeonMaps_CaveOfFlames_BosskeyPath1::
	.incbin "maps/areas/080_CaveOfFlames/rooms/19_BosskeyPath1/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_BosskeyPath2_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/20_BosskeyPath2/gAreaRoomMap_CaveOfFlames_BosskeyPath2_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_BosskeyPath2_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/20_BosskeyPath2/gAreaRoomMap_CaveOfFlames_BosskeyPath2_top.bin.lz"
 gDungeonMaps_CaveOfFlames_BosskeyPath2::
	.incbin "maps/areas/080_CaveOfFlames/rooms/20_BosskeyPath2/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_Compass_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/21_Compass/gAreaRoomMap_CaveOfFlames_Compass_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_Compass_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/21_Compass/gAreaRoomMap_CaveOfFlames_Compass_top.bin.lz"
 gDungeonMaps_CaveOfFlames_Compass::
	.incbin "maps/areas/080_CaveOfFlames/rooms/21_Compass/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_BobOmbWall_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/22_BobOmbWall/gAreaRoomMap_CaveOfFlames_BobOmbWall_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_BobOmbWall_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/22_BobOmbWall/gAreaRoomMap_CaveOfFlames_BobOmbWall_top.bin.lz"
 gDungeonMaps_CaveOfFlames_BobOmbWall::
	.incbin "maps/areas/080_CaveOfFlames/rooms/22_BobOmbWall/dungeon_map.bin"
gAreaRoomMap_CaveOfFlames_BossDoor_bottom::
	.incbin "maps/areas/080_CaveOfFlames/rooms/23_BossDoor/gAreaRoomMap_CaveOfFlames_BossDoor_bottom.bin.lz"
gAreaRoomMap_CaveOfFlames_BossDoor_top::
	.incbin "maps/areas/080_CaveOfFlames/rooms/23_BossDoor/gAreaRoomMap_CaveOfFlames_BossDoor_top.bin.lz"
 gDungeonMaps_CaveOfFlames_BossDoor::
	.incbin "maps/areas/080_CaveOfFlames/rooms/23_BossDoor/dungeon_map.bin"
gAreaRoomMap_CaveOfFlamesBoss_0_bottom::
	.incbin "maps/areas/081_CaveOfFlamesBoss/rooms/00_0/gAreaRoomMap_CaveOfFlamesBoss_0_bottom.bin.lz"
gAreaRoomMap_CaveOfFlamesBoss_0_top::
	.incbin "maps/areas/081_CaveOfFlamesBoss/rooms/00_0/gAreaRoomMap_CaveOfFlamesBoss_0_top.bin.lz"
 gDungeonMaps_CaveOfFlamesBoss_0::
	.incbin "maps/areas/081_CaveOfFlamesBoss/rooms/00_00_0/dungeon_map.bin"
gAreaTileSet_CastorDarknut_0_0::
	.incbin "maps/areas/043_CastorDarknut/tileSets/0/gAreaTileSet_CastorDarknut_0_0.4bpp.lz"
gAreaTileSet_CastorDarknut_0_1::
	.incbin "maps/areas/043_CastorDarknut/tileSets/0/gAreaTileSet_CastorDarknut_0_1.4bpp.lz"
gAreaTileSet_CastorDarknut_0_2::
	.incbin "maps/areas/043_CastorDarknut/tileSets/0/gAreaTileSet_CastorDarknut_0_2.4bpp.lz"
gAreaTileSet_CastorDarknut_bottom::
	.incbin "maps/areas/043_CastorDarknut/tileSet/gAreaTileSet_CastorDarknut_bottom.bin.lz"
gAreaTileSet_CastorDarknut_top::
	.incbin "maps/areas/043_CastorDarknut/tileSet/gAreaTileSet_CastorDarknut_top.bin.lz"
gAreaTileSetTypes_CastorDarknut_bottom::
	.incbin "maps/areas/043_CastorDarknut/tileSet/gAreaTileSetTypes_CastorDarknut_bottom.bin.lz"
gAreaTileSetTypes_CastorDarknut_top::
	.incbin "maps/areas/043_CastorDarknut/tileSet/gAreaTileSetTypes_CastorDarknut_top.bin.lz"
gAreaTileSet_InnerMazaal_0_0::
	.incbin "maps/areas/090_InnerMazaal/tileSets/0/gAreaTileSet_InnerMazaal_0_0.4bpp.lz"
gAreaTileSet_InnerMazaal_0_1::
	.incbin "maps/areas/090_InnerMazaal/tileSets/0/gAreaTileSet_InnerMazaal_0_1.4bpp.lz"
gAreaTileSet_InnerMazaal_0_2::
	.incbin "maps/areas/090_InnerMazaal/tileSets/0/gAreaTileSet_InnerMazaal_0_2.4bpp.lz"
gAreaTileSet_InnerMazaal_bottom::
	.incbin "maps/areas/090_InnerMazaal/tileSet/gAreaTileSet_InnerMazaal_bottom.bin.lz"
gAreaTileSet_InnerMazaal_top::
	.incbin "maps/areas/090_InnerMazaal/tileSet/gAreaTileSet_InnerMazaal_top.bin.lz"
gAreaTileSetTypes_InnerMazaal_bottom::
	.incbin "maps/areas/090_InnerMazaal/tileSet/gAreaTileSetTypes_InnerMazaal_bottom.bin.lz"
gAreaTileSetTypes_InnerMazaal_top::
	.incbin "maps/areas/090_InnerMazaal/tileSet/gAreaTileSetTypes_InnerMazaal_top.bin.lz"
gAreaTileSet_FortressOfWindsTop_0_0::
	.incbin "maps/areas/089_FortressOfWindsTop/tileSets/0/gAreaTileSet_FortressOfWindsTop_0_0.4bpp.lz"
gAreaTileSet_FortressOfWindsTop_0_1::
	.incbin "maps/areas/089_FortressOfWindsTop/tileSets/0/gAreaTileSet_FortressOfWindsTop_0_1.4bpp.lz"
gAreaTileSet_FortressOfWindsTop_0_2::
	.incbin "maps/areas/089_FortressOfWindsTop/tileSets/0/gAreaTileSet_FortressOfWindsTop_0_2.4bpp.lz"
gAreaTileSet_FortressOfWindsTop_bottom::
	.incbin "maps/areas/089_FortressOfWindsTop/tileSet/gAreaTileSet_FortressOfWindsTop_bottom.bin.lz"
gAreaTileSet_FortressOfWindsTop_top::
	.incbin "maps/areas/089_FortressOfWindsTop/tileSet/gAreaTileSet_FortressOfWindsTop_top.bin.lz"
gAreaTileSetTypes_FortressOfWindsTop_bottom::
	.incbin "maps/areas/089_FortressOfWindsTop/tileSet/gAreaTileSetTypes_FortressOfWindsTop_bottom.bin.lz"
gAreaTileSetTypes_FortressOfWindsTop_top::
	.incbin "maps/areas/089_FortressOfWindsTop/tileSet/gAreaTileSetTypes_FortressOfWindsTop_top.bin.lz"
gAreaRoomMap_FortressOfWinds_DoubleEyegore_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/00_DoubleEyegore/gAreaRoomMap_FortressOfWinds_DoubleEyegore_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_DoubleEyegore_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/00_DoubleEyegore/gAreaRoomMap_FortressOfWinds_DoubleEyegore_top.bin.lz"
 gDungeonMaps_FortressOfWinds_DoubleEyegore::
	.incbin "maps/areas/088_FortressOfWinds/rooms/00_DoubleEyegore/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_BeforeMazaal_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/01_BeforeMazaal/gAreaRoomMap_FortressOfWinds_BeforeMazaal_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_BeforeMazaal_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/01_BeforeMazaal/gAreaRoomMap_FortressOfWinds_BeforeMazaal_top.bin.lz"
 gDungeonMaps_FortressOfWinds_BeforeMazaal::
	.incbin "maps/areas/088_FortressOfWinds/rooms/01_BeforeMazaal/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_EastKeyLever_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/02_EastKeyLever/gAreaRoomMap_FortressOfWinds_EastKeyLever_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_EastKeyLever_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/02_EastKeyLever/gAreaRoomMap_FortressOfWinds_EastKeyLever_top.bin.lz"
 gDungeonMaps_FortressOfWinds_EastKeyLever::
	.incbin "maps/areas/088_FortressOfWinds/rooms/02_EastKeyLever/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_PitPlatforms_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/03_PitPlatforms/gAreaRoomMap_FortressOfWinds_PitPlatforms_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_PitPlatforms_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/03_PitPlatforms/gAreaRoomMap_FortressOfWinds_PitPlatforms_top.bin.lz"
 gDungeonMaps_FortressOfWinds_PitPlatforms::
	.incbin "maps/areas/088_FortressOfWinds/rooms/03_PitPlatforms/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_WestKeyLever_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/04_WestKeyLever/gAreaRoomMap_FortressOfWinds_WestKeyLever_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_WestKeyLever_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/04_WestKeyLever/gAreaRoomMap_FortressOfWinds_WestKeyLever_top.bin.lz"
 gDungeonMaps_FortressOfWinds_WestKeyLever::
	.incbin "maps/areas/088_FortressOfWinds/rooms/04_WestKeyLever/dungeon_map.bin"
 gDungeonMaps_FortressOfWinds_5::
	.incbin "maps/areas/088_FortressOfWinds/rooms/05_5/dungeon_map.bin"
 gDungeonMaps_FortressOfWinds_6::
	.incbin "maps/areas/088_FortressOfWinds/rooms/06_6/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_DarknutRoom_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/16_DarknutRoom/gAreaRoomMap_FortressOfWinds_DarknutRoom_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_DarknutRoom_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/16_DarknutRoom/gAreaRoomMap_FortressOfWinds_DarknutRoom_top.bin.lz"
 gDungeonMaps_FortressOfWinds_DarknutRoom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/16_DarknutRoom/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_ArrowEyeBridge_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/17_ArrowEyeBridge/gAreaRoomMap_FortressOfWinds_ArrowEyeBridge_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_ArrowEyeBridge_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/17_ArrowEyeBridge/gAreaRoomMap_FortressOfWinds_ArrowEyeBridge_top.bin.lz"
 gDungeonMaps_FortressOfWinds_ArrowEyeBridge::
	.incbin "maps/areas/088_FortressOfWinds/rooms/17_ArrowEyeBridge/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_NorthSplitPathPit_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/18_NorthSplitPathPit/gAreaRoomMap_FortressOfWinds_NorthSplitPathPit_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_NorthSplitPathPit_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/18_NorthSplitPathPit/gAreaRoomMap_FortressOfWinds_NorthSplitPathPit_top.bin.lz"
 gDungeonMaps_FortressOfWinds_NorthSplitPathPit::
	.incbin "maps/areas/088_FortressOfWinds/rooms/18_NorthSplitPathPit/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_WallmasterMinishPortal_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/19_WallmasterMinishPortal/gAreaRoomMap_FortressOfWinds_WallmasterMinishPortal_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_WallmasterMinishPortal_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/19_WallmasterMinishPortal/gAreaRoomMap_FortressOfWinds_WallmasterMinishPortal_top.bin.lz"
 gDungeonMaps_FortressOfWinds_WallmasterMinishPortal::
	.incbin "maps/areas/088_FortressOfWinds/rooms/19_WallmasterMinishPortal/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_PillarCloneButtons_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/20_PillarCloneButtons/gAreaRoomMap_FortressOfWinds_PillarCloneButtons_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_PillarCloneButtons_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/20_PillarCloneButtons/gAreaRoomMap_FortressOfWinds_PillarCloneButtons_top.bin.lz"
 gDungeonMaps_FortressOfWinds_PillarCloneButtons::
	.incbin "maps/areas/088_FortressOfWinds/rooms/20_PillarCloneButtons/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_RotatingSpikeTraps_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/21_RotatingSpikeTraps/gAreaRoomMap_FortressOfWinds_RotatingSpikeTraps_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_RotatingSpikeTraps_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/21_RotatingSpikeTraps/gAreaRoomMap_FortressOfWinds_RotatingSpikeTraps_top.bin.lz"
 gDungeonMaps_FortressOfWinds_RotatingSpikeTraps::
	.incbin "maps/areas/088_FortressOfWinds/rooms/21_RotatingSpikeTraps/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_Mazaal_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/22_Mazaal/gAreaRoomMap_FortressOfWinds_Mazaal_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_Mazaal_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/22_Mazaal/gAreaRoomMap_FortressOfWinds_Mazaal_top.bin.lz"
 gDungeonMaps_FortressOfWinds_Mazaal::
	.incbin "maps/areas/088_FortressOfWinds/rooms/22_Mazaal/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_Stalfos_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/23_Stalfos/gAreaRoomMap_FortressOfWinds_Stalfos_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_Stalfos_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/23_Stalfos/gAreaRoomMap_FortressOfWinds_Stalfos_top.bin.lz"
 gDungeonMaps_FortressOfWinds_Stalfos::
	.incbin "maps/areas/088_FortressOfWinds/rooms/23_Stalfos/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_EntranceMoleMitts_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/24_EntranceMoleMitts/gAreaRoomMap_FortressOfWinds_EntranceMoleMitts_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_EntranceMoleMitts_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/24_EntranceMoleMitts/gAreaRoomMap_FortressOfWinds_EntranceMoleMitts_top.bin.lz"
 gDungeonMaps_FortressOfWinds_EntranceMoleMitts::
	.incbin "maps/areas/088_FortressOfWinds/rooms/24_EntranceMoleMitts/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_Main2f_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/25_Main2f/gAreaRoomMap_FortressOfWinds_Main2f_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_Main2f_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/25_Main2f/gAreaRoomMap_FortressOfWinds_Main2f_top.bin.lz"
 gDungeonMaps_FortressOfWinds_Main2f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/25_Main2f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_MinishHole_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/26_MinishHole/gAreaRoomMap_FortressOfWinds_MinishHole_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_MinishHole_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/26_MinishHole/gAreaRoomMap_FortressOfWinds_MinishHole_top.bin.lz"
 gDungeonMaps_FortressOfWinds_MinishHole::
	.incbin "maps/areas/088_FortressOfWinds/rooms/26_MinishHole/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_BossKey_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/27_BossKey/gAreaRoomMap_FortressOfWinds_BossKey_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_BossKey_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/27_BossKey/gAreaRoomMap_FortressOfWinds_BossKey_top.bin.lz"
 gDungeonMaps_FortressOfWinds_BossKey::
	.incbin "maps/areas/088_FortressOfWinds/rooms/27_BossKey/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_WestStairs2f_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/28_WestStairs2f/gAreaRoomMap_FortressOfWinds_WestStairs2f_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_WestStairs2f_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/28_WestStairs2f/gAreaRoomMap_FortressOfWinds_WestStairs2f_top.bin.lz"
 gDungeonMaps_FortressOfWinds_WestStairs2f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/28_WestStairs2f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_EastStairs2f_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/29_EastStairs2f/gAreaRoomMap_FortressOfWinds_EastStairs2f_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_EastStairs2f_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/29_EastStairs2f/gAreaRoomMap_FortressOfWinds_EastStairs2f_top.bin.lz"
 gDungeonMaps_FortressOfWinds_EastStairs2f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/29_EastStairs2f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_WestStairs1f_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/32_WestStairs1f/gAreaRoomMap_FortressOfWinds_WestStairs1f_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_WestStairs1f_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/32_WestStairs1f/gAreaRoomMap_FortressOfWinds_WestStairs1f_top.bin.lz"
 gDungeonMaps_FortressOfWinds_WestStairs1f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/32_WestStairs1f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_CenterStairs1f_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/33_CenterStairs1f/gAreaRoomMap_FortressOfWinds_CenterStairs1f_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_CenterStairs1f_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/33_CenterStairs1f/gAreaRoomMap_FortressOfWinds_CenterStairs1f_top.bin.lz"
 gDungeonMaps_FortressOfWinds_CenterStairs1f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/33_CenterStairs1f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_EastStairs1f_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/34_EastStairs1f/gAreaRoomMap_FortressOfWinds_EastStairs1f_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_EastStairs1f_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/34_EastStairs1f/gAreaRoomMap_FortressOfWinds_EastStairs1f_top.bin.lz"
 gDungeonMaps_FortressOfWinds_EastStairs1f::
	.incbin "maps/areas/088_FortressOfWinds/rooms/34_EastStairs1f/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_Wizzrobe_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/35_Wizzrobe/gAreaRoomMap_FortressOfWinds_Wizzrobe_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_Wizzrobe_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/35_Wizzrobe/gAreaRoomMap_FortressOfWinds_Wizzrobe_top.bin.lz"
 gDungeonMaps_FortressOfWinds_Wizzrobe::
	.incbin "maps/areas/088_FortressOfWinds/rooms/35_Wizzrobe/dungeon_map.bin"
gAreaRoomMap_FortressOfWinds_HeartPiece_bottom::
	.incbin "maps/areas/088_FortressOfWinds/rooms/36_HeartPiece/gAreaRoomMap_FortressOfWinds_HeartPiece_bottom.bin.lz"
gAreaRoomMap_FortressOfWinds_HeartPiece_top::
	.incbin "maps/areas/088_FortressOfWinds/rooms/36_HeartPiece/gAreaRoomMap_FortressOfWinds_HeartPiece_top.bin.lz"
 gDungeonMaps_FortressOfWinds_HeartPiece::
	.incbin "maps/areas/088_FortressOfWinds/rooms/36_HeartPiece/dungeon_map.bin"
gAreaRoomMap_InnerMazaal_Main_bottom::
	.incbin "maps/areas/090_InnerMazaal/rooms/00_Main/gAreaRoomMap_InnerMazaal_Main_bottom.bin.lz"
gAreaRoomMap_InnerMazaal_Main_top::
	.incbin "maps/areas/090_InnerMazaal/rooms/00_Main/gAreaRoomMap_InnerMazaal_Main_top.bin.lz"
gAreaRoomMap_InnerMazaal_Phase1_bottom::
	.incbin "maps/areas/090_InnerMazaal/rooms/01_Phase1/gAreaRoomMap_InnerMazaal_Phase1_bottom.bin.lz"
gAreaRoomMap_InnerMazaal_Phase1_top::
	.incbin "maps/areas/090_InnerMazaal/rooms/01_Phase1/gAreaRoomMap_InnerMazaal_Phase1_top.bin.lz"
gAreaRoomMap_FortressOfWindsTop_Main_bottom::
	.incbin "maps/areas/089_FortressOfWindsTop/rooms/00_Main/gAreaRoomMap_FortressOfWindsTop_Main_bottom.bin.lz"
gAreaRoomMap_FortressOfWindsTop_Main_top::
	.incbin "maps/areas/089_FortressOfWindsTop/rooms/00_Main/gAreaRoomMap_FortressOfWindsTop_Main_top.bin.lz"
gAreaTileSet_TempleOfDroplets_0_0::
	.incbin "maps/areas/096_TempleOfDroplets/tileSets/0/gAreaTileSet_TempleOfDroplets_0_0.4bpp.lz"
gAreaTileSet_TempleOfDroplets_0_1::
	.incbin "maps/areas/096_TempleOfDroplets/tileSets/0/gAreaTileSet_TempleOfDroplets_0_1.4bpp.lz"
gAreaTileSet_TempleOfDroplets_0_2::
	.incbin "maps/areas/096_TempleOfDroplets/tileSets/0/gAreaTileSet_TempleOfDroplets_0_2.4bpp.lz"
gAreaTileSet_TempleOfDroplets_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/tileSet/gAreaTileSet_TempleOfDroplets_bottom.bin.lz"
gAreaTileSet_TempleOfDroplets_top::
	.incbin "maps/areas/096_TempleOfDroplets/tileSet/gAreaTileSet_TempleOfDroplets_top.bin.lz"
gAreaTileSetTypes_TempleOfDroplets_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/tileSet/gAreaTileSetTypes_TempleOfDroplets_bottom.bin.lz"
gAreaTileSetTypes_TempleOfDroplets_top::
	.incbin "maps/areas/096_TempleOfDroplets/tileSet/gAreaTileSetTypes_TempleOfDroplets_top.bin.lz"
gAreaTileSet_Null61_0_0::
	.incbin "maps/areas/097_Null61/tileSets/0/gAreaTileSet_Null61_0_0.4bpp.lz"
gAreaTileSet_Null61_0_1::
	.incbin "maps/areas/097_Null61/tileSets/0/gAreaTileSet_Null61_0_1.4bpp.lz"
gAreaTileSet_Null61_0_2::
	.incbin "maps/areas/097_Null61/tileSets/0/gAreaTileSet_Null61_0_2.4bpp.lz"
gAreaTileSet_Null61_bottom::
	.incbin "maps/areas/097_Null61/tileSet/gAreaTileSet_Null61_bottom.bin.lz"
gAreaTileSet_Null61_top::
	.incbin "maps/areas/097_Null61/tileSet/gAreaTileSet_Null61_top.bin.lz"
gAreaTileSetTypes_Null61_bottom::
	.incbin "maps/areas/097_Null61/tileSet/gAreaTileSetTypes_Null61_bottom.bin.lz"
gAreaTileSetTypes_Null61_top::
	.incbin "maps/areas/097_Null61/tileSet/gAreaTileSetTypes_Null61_top.bin.lz"
gAreaRoomMap_TempleOfDroplets_WestHole_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/00_WestHole/gAreaRoomMap_TempleOfDroplets_WestHole_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_WestHole_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/00_WestHole/gAreaRoomMap_TempleOfDroplets_WestHole_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_WestHole::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/00_WestHole/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_NorthSplitRoom_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/01_NorthSplitRoom/gAreaRoomMap_TempleOfDroplets_NorthSplitRoom_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_NorthSplitRoom_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/01_NorthSplitRoom/gAreaRoomMap_TempleOfDroplets_NorthSplitRoom_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_NorthSplitRoom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/01_NorthSplitRoom/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_EastHole_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/02_EastHole/gAreaRoomMap_TempleOfDroplets_EastHole_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_EastHole_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/02_EastHole/gAreaRoomMap_TempleOfDroplets_EastHole_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_EastHole::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/02_EastHole/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_Entrance_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/03_Entrance/gAreaRoomMap_TempleOfDroplets_Entrance_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_Entrance_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/03_Entrance/gAreaRoomMap_TempleOfDroplets_Entrance_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_Entrance::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/03_Entrance/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_NorthwestStairs_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/04_NorthwestStairs/gAreaRoomMap_TempleOfDroplets_NorthwestStairs_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_NorthwestStairs_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/04_NorthwestStairs/gAreaRoomMap_TempleOfDroplets_NorthwestStairs_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_NorthwestStairs::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/04_NorthwestStairs/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_ScissorsMiniboss_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/05_ScissorsMiniboss/gAreaRoomMap_TempleOfDroplets_ScissorsMiniboss_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_ScissorsMiniboss_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/05_ScissorsMiniboss/gAreaRoomMap_TempleOfDroplets_ScissorsMiniboss_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_ScissorsMiniboss::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/05_ScissorsMiniboss/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_WaterfallNorthwest_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/06_WaterfallNorthwest/gAreaRoomMap_TempleOfDroplets_WaterfallNorthwest_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_WaterfallNorthwest_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/06_WaterfallNorthwest/gAreaRoomMap_TempleOfDroplets_WaterfallNorthwest_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_WaterfallNorthwest::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/06_WaterfallNorthwest/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_WaterfallNortheast_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/07_WaterfallNortheast/gAreaRoomMap_TempleOfDroplets_WaterfallNortheast_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_WaterfallNortheast_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/07_WaterfallNortheast/gAreaRoomMap_TempleOfDroplets_WaterfallNortheast_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_WaterfallNortheast::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/07_WaterfallNortheast/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_Element_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/08_Element/gAreaRoomMap_TempleOfDroplets_Element_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_Element_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/08_Element/gAreaRoomMap_TempleOfDroplets_Element_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_Element::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/08_Element/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_IceCorner_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/09_IceCorner/gAreaRoomMap_TempleOfDroplets_IceCorner_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_IceCorner_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/09_IceCorner/gAreaRoomMap_TempleOfDroplets_IceCorner_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_IceCorner::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/09_IceCorner/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_IcePitMaze_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/10_IcePitMaze/gAreaRoomMap_TempleOfDroplets_IcePitMaze_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_IcePitMaze_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/10_IcePitMaze/gAreaRoomMap_TempleOfDroplets_IcePitMaze_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_IcePitMaze::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/10_IcePitMaze/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_HoleToBlueChuKey_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/11_HoleToBlueChuKey/gAreaRoomMap_TempleOfDroplets_HoleToBlueChuKey_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_HoleToBlueChuKey_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/11_HoleToBlueChuKey/gAreaRoomMap_TempleOfDroplets_HoleToBlueChuKey_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_HoleToBlueChuKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/11_HoleToBlueChuKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_WestWaterfallSoutheast_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/12_WestWaterfallSoutheast/gAreaRoomMap_TempleOfDroplets_WestWaterfallSoutheast_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_WestWaterfallSoutheast_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/12_WestWaterfallSoutheast/gAreaRoomMap_TempleOfDroplets_WestWaterfallSoutheast_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_WestWaterfallSoutheast::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/12_WestWaterfallSoutheast/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_WestWaterfallSouthwest_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/13_WestWaterfallSouthwest/gAreaRoomMap_TempleOfDroplets_WestWaterfallSouthwest_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_WestWaterfallSouthwest_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/13_WestWaterfallSouthwest/gAreaRoomMap_TempleOfDroplets_WestWaterfallSouthwest_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_WestWaterfallSouthwest::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/13_WestWaterfallSouthwest/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BigOcto_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/14_BigOcto/gAreaRoomMap_TempleOfDroplets_BigOcto_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BigOcto_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/14_BigOcto/gAreaRoomMap_TempleOfDroplets_BigOcto_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BigOcto::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/14_BigOcto/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_ToBlueChu_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/15_ToBlueChu/gAreaRoomMap_TempleOfDroplets_ToBlueChu_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_ToBlueChu_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/15_ToBlueChu/gAreaRoomMap_TempleOfDroplets_ToBlueChu_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_ToBlueChu::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/15_ToBlueChu/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BlueChu_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/16_BlueChu/gAreaRoomMap_TempleOfDroplets_BlueChu_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BlueChu_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/16_BlueChu/gAreaRoomMap_TempleOfDroplets_BlueChu_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlueChu::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/16_BlueChu/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BlueChuKey_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/17_BlueChuKey/gAreaRoomMap_TempleOfDroplets_BlueChuKey_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BlueChuKey_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/17_BlueChuKey/gAreaRoomMap_TempleOfDroplets_BlueChuKey_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlueChuKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/17_BlueChuKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BossKey_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/32_BossKey/gAreaRoomMap_TempleOfDroplets_BossKey_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BossKey_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/32_BossKey/gAreaRoomMap_TempleOfDroplets_BossKey_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BossKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/32_BossKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_NorthSmallKey_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/33_NorthSmallKey/gAreaRoomMap_TempleOfDroplets_NorthSmallKey_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_NorthSmallKey_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/33_NorthSmallKey/gAreaRoomMap_TempleOfDroplets_NorthSmallKey_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_NorthSmallKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/33_NorthSmallKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BlockCloneButtonPuzzle_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/34_BlockCloneButtonPuzzle/gAreaRoomMap_TempleOfDroplets_BlockCloneButtonPuzzle_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BlockCloneButtonPuzzle_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/34_BlockCloneButtonPuzzle/gAreaRoomMap_TempleOfDroplets_BlockCloneButtonPuzzle_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlockCloneButtonPuzzle::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/34_BlockCloneButtonPuzzle/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BlockClonePuzzle_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/35_BlockClonePuzzle/gAreaRoomMap_TempleOfDroplets_BlockClonePuzzle_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BlockClonePuzzle_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/35_BlockClonePuzzle/gAreaRoomMap_TempleOfDroplets_BlockClonePuzzle_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlockClonePuzzle::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/35_BlockClonePuzzle/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BlockCloneIceBridge_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/36_BlockCloneIceBridge/gAreaRoomMap_TempleOfDroplets_BlockCloneIceBridge_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BlockCloneIceBridge_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/36_BlockCloneIceBridge/gAreaRoomMap_TempleOfDroplets_BlockCloneIceBridge_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlockCloneIceBridge::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/36_BlockCloneIceBridge/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_StairsToScissorsMiniboss_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/37_StairsToScissorsMiniboss/gAreaRoomMap_TempleOfDroplets_StairsToScissorsMiniboss_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_StairsToScissorsMiniboss_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/37_StairsToScissorsMiniboss/gAreaRoomMap_TempleOfDroplets_StairsToScissorsMiniboss_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_StairsToScissorsMiniboss::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/37_StairsToScissorsMiniboss/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_SpikeBarFlipperRoom_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/38_SpikeBarFlipperRoom/gAreaRoomMap_TempleOfDroplets_SpikeBarFlipperRoom_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_SpikeBarFlipperRoom_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/38_SpikeBarFlipperRoom/gAreaRoomMap_TempleOfDroplets_SpikeBarFlipperRoom_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_SpikeBarFlipperRoom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/38_SpikeBarFlipperRoom/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_9Lanterns_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/39_9Lanterns/gAreaRoomMap_TempleOfDroplets_9Lanterns_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_9Lanterns_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/39_9Lanterns/gAreaRoomMap_TempleOfDroplets_9Lanterns_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_9Lanterns::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/39_9Lanterns/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_LilypadIceBlocks_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/40_LilypadIceBlocks/gAreaRoomMap_TempleOfDroplets_LilypadIceBlocks_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_LilypadIceBlocks_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/40_LilypadIceBlocks/gAreaRoomMap_TempleOfDroplets_LilypadIceBlocks_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_LilypadIceBlocks::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/40_LilypadIceBlocks/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_29_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/41_29/gAreaRoomMap_TempleOfDroplets_29_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_29_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/41_29/gAreaRoomMap_TempleOfDroplets_29_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_29::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/41_29/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_MulldozersFireBars_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/42_MulldozersFireBars/gAreaRoomMap_TempleOfDroplets_MulldozersFireBars_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_MulldozersFireBars_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/42_MulldozersFireBars/gAreaRoomMap_TempleOfDroplets_MulldozersFireBars_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_MulldozersFireBars::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/42_MulldozersFireBars/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_DarkMaze_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/43_DarkMaze/gAreaRoomMap_TempleOfDroplets_DarkMaze_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_DarkMaze_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/43_DarkMaze/gAreaRoomMap_TempleOfDroplets_DarkMaze_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_DarkMaze::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/43_DarkMaze/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_TwinMadderpillars_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/44_TwinMadderpillars/gAreaRoomMap_TempleOfDroplets_TwinMadderpillars_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_TwinMadderpillars_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/44_TwinMadderpillars/gAreaRoomMap_TempleOfDroplets_TwinMadderpillars_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_TwinMadderpillars::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/44_TwinMadderpillars/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_AfterTwinMadderpillars_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/45_AfterTwinMadderpillars/gAreaRoomMap_TempleOfDroplets_AfterTwinMadderpillars_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_AfterTwinMadderpillars_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/45_AfterTwinMadderpillars/gAreaRoomMap_TempleOfDroplets_AfterTwinMadderpillars_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_AfterTwinMadderpillars::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/45_AfterTwinMadderpillars/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BlueChuKeyLever_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/46_BlueChuKeyLever/gAreaRoomMap_TempleOfDroplets_BlueChuKeyLever_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BlueChuKeyLever_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/46_BlueChuKeyLever/gAreaRoomMap_TempleOfDroplets_BlueChuKeyLever_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BlueChuKeyLever::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/46_BlueChuKeyLever/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_MulldozerKey_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/47_MulldozerKey/gAreaRoomMap_TempleOfDroplets_MulldozerKey_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_MulldozerKey_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/47_MulldozerKey/gAreaRoomMap_TempleOfDroplets_MulldozerKey_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_MulldozerKey::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/47_MulldozerKey/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_BeforeTwinMadderpillars_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/48_BeforeTwinMadderpillars/gAreaRoomMap_TempleOfDroplets_BeforeTwinMadderpillars_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_BeforeTwinMadderpillars_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/48_BeforeTwinMadderpillars/gAreaRoomMap_TempleOfDroplets_BeforeTwinMadderpillars_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_BeforeTwinMadderpillars::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/48_BeforeTwinMadderpillars/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_LilypadB2West_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/49_LilypadB2West/gAreaRoomMap_TempleOfDroplets_LilypadB2West_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_LilypadB2West_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/49_LilypadB2West/gAreaRoomMap_TempleOfDroplets_LilypadB2West_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_LilypadB2West::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/49_LilypadB2West/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_Compass_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/50_Compass/gAreaRoomMap_TempleOfDroplets_Compass_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_Compass_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/50_Compass/gAreaRoomMap_TempleOfDroplets_Compass_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_Compass::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/50_Compass/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_DarkScissorBeetles_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/51_DarkScissorBeetles/gAreaRoomMap_TempleOfDroplets_DarkScissorBeetles_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_DarkScissorBeetles_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/51_DarkScissorBeetles/gAreaRoomMap_TempleOfDroplets_DarkScissorBeetles_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_DarkScissorBeetles::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/51_DarkScissorBeetles/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_LilypadB2Middle_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/52_LilypadB2Middle/gAreaRoomMap_TempleOfDroplets_LilypadB2Middle_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_LilypadB2Middle_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/52_LilypadB2Middle/gAreaRoomMap_TempleOfDroplets_LilypadB2Middle_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_LilypadB2Middle::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/52_LilypadB2Middle/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_IceMadderpillar_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/53_IceMadderpillar/gAreaRoomMap_TempleOfDroplets_IceMadderpillar_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_IceMadderpillar_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/53_IceMadderpillar/gAreaRoomMap_TempleOfDroplets_IceMadderpillar_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_IceMadderpillar::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/53_IceMadderpillar/dungeon_map.bin"
gAreaRoomMap_TempleOfDroplets_FlamebarBlockPuzzle_bottom::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/54_FlamebarBlockPuzzle/gAreaRoomMap_TempleOfDroplets_FlamebarBlockPuzzle_bottom.bin.lz"
gAreaRoomMap_TempleOfDroplets_FlamebarBlockPuzzle_top::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/54_FlamebarBlockPuzzle/gAreaRoomMap_TempleOfDroplets_FlamebarBlockPuzzle_top.bin.lz"
 gDungeonMaps_TempleOfDroplets_FlamebarBlockPuzzle::
	.incbin "maps/areas/096_TempleOfDroplets/rooms/54_FlamebarBlockPuzzle/dungeon_map.bin"
gAreaRoomMap_Null61_0_bottom::
	.incbin "maps/areas/097_Null61/rooms/00_0/gAreaRoomMap_Null61_0_bottom.bin.lz"
gAreaRoomMap_Null61_0_top::
	.incbin "maps/areas/097_Null61/rooms/00_0/gAreaRoomMap_Null61_0_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_0_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/00_0/gAreaRoomMap_HyruleTownMinishCaves_0_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_0_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/00_0/gAreaRoomMap_HyruleTownMinishCaves_0_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_1_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/01_1/gAreaRoomMap_HyruleTownMinishCaves_1_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_1_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/01_1/gAreaRoomMap_HyruleTownMinishCaves_1_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_2_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/02_2/gAreaRoomMap_HyruleTownMinishCaves_2_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_2_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/02_2/gAreaRoomMap_HyruleTownMinishCaves_2_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_3_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/03_3/gAreaRoomMap_HyruleTownMinishCaves_3_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_3_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/03_3/gAreaRoomMap_HyruleTownMinishCaves_3_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_4_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/04_4/gAreaRoomMap_HyruleTownMinishCaves_4_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_4_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/04_4/gAreaRoomMap_HyruleTownMinishCaves_4_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_Unused10_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/16_Unused10/gAreaRoomMap_HyruleTownMinishCaves_Unused10_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_Unused10_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/16_Unused10/gAreaRoomMap_HyruleTownMinishCaves_Unused10_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_6_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/17_6/gAreaRoomMap_HyruleTownMinishCaves_6_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_6_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/17_6/gAreaRoomMap_HyruleTownMinishCaves_6_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_7_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/18_7/gAreaRoomMap_HyruleTownMinishCaves_7_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_7_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/18_7/gAreaRoomMap_HyruleTownMinishCaves_7_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_8_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/19_8/gAreaRoomMap_HyruleTownMinishCaves_8_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_8_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/19_8/gAreaRoomMap_HyruleTownMinishCaves_8_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_9_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/20_9/gAreaRoomMap_HyruleTownMinishCaves_9_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_9_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/20_9/gAreaRoomMap_HyruleTownMinishCaves_9_top.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_10_bottom::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/21_10/gAreaRoomMap_HyruleTownMinishCaves_10_bottom.bin.lz"
gAreaRoomMap_HyruleTownMinishCaves_10_top::
	.incbin "maps/areas/098_HyruleTownMinishCaves/rooms/21_10/gAreaRoomMap_HyruleTownMinishCaves_10_top.bin.lz"
gAreaTileSet_RoyalCrypt_0_0::
	.incbin "maps/areas/104_RoyalCrypt/tileSets/0/gAreaTileSet_RoyalCrypt_0_0.4bpp.lz"
gAreaTileSet_RoyalCrypt_0_1::
	.incbin "maps/areas/104_RoyalCrypt/tileSets/0/gAreaTileSet_RoyalCrypt_0_1.4bpp.lz"
gAreaTileSet_RoyalCrypt_0_2::
	.incbin "maps/areas/104_RoyalCrypt/tileSets/0/gAreaTileSet_RoyalCrypt_0_2.4bpp.lz"
gAreaTileSet_RoyalCrypt_bottom::
	.incbin "maps/areas/104_RoyalCrypt/tileSet/gAreaTileSet_RoyalCrypt_bottom.bin.lz"
gAreaTileSet_RoyalCrypt_top::
	.incbin "maps/areas/104_RoyalCrypt/tileSet/gAreaTileSet_RoyalCrypt_top.bin.lz"
gAreaTileSetTypes_RoyalCrypt_bottom::
	.incbin "maps/areas/104_RoyalCrypt/tileSet/gAreaTileSetTypes_RoyalCrypt_bottom.bin.lz"
gAreaTileSetTypes_RoyalCrypt_top::
	.incbin "maps/areas/104_RoyalCrypt/tileSet/gAreaTileSetTypes_RoyalCrypt_top.bin.lz"
gAreaRoomMap_RoyalCrypt_0_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/00_0/gAreaRoomMap_RoyalCrypt_0_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_0_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/00_0/gAreaRoomMap_RoyalCrypt_0_top.bin.lz"
gAreaRoomMap_RoyalCrypt_WaterRope_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/01_WaterRope/gAreaRoomMap_RoyalCrypt_WaterRope_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_WaterRope_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/01_WaterRope/gAreaRoomMap_RoyalCrypt_WaterRope_top.bin.lz"
gAreaRoomMap_RoyalCrypt_Gibdo_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/02_Gibdo/gAreaRoomMap_RoyalCrypt_Gibdo_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_Gibdo_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/02_Gibdo/gAreaRoomMap_RoyalCrypt_Gibdo_top.bin.lz"
gAreaRoomMap_RoyalCrypt_3_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/03_3/gAreaRoomMap_RoyalCrypt_3_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_3_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/03_3/gAreaRoomMap_RoyalCrypt_3_top.bin.lz"
gAreaRoomMap_RoyalCrypt_KeyBlock_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/04_KeyBlock/gAreaRoomMap_RoyalCrypt_KeyBlock_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_KeyBlock_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/04_KeyBlock/gAreaRoomMap_RoyalCrypt_KeyBlock_top.bin.lz"
gAreaRoomMap_RoyalCrypt_5_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/05_5/gAreaRoomMap_RoyalCrypt_5_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_5_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/05_5/gAreaRoomMap_RoyalCrypt_5_top.bin.lz"
gAreaRoomMap_RoyalCrypt_6_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/06_6/gAreaRoomMap_RoyalCrypt_6_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_6_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/06_6/gAreaRoomMap_RoyalCrypt_6_top.bin.lz"
gAreaRoomMap_RoyalCrypt_MushroomPit_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/07_MushroomPit/gAreaRoomMap_RoyalCrypt_MushroomPit_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_MushroomPit_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/07_MushroomPit/gAreaRoomMap_RoyalCrypt_MushroomPit_top.bin.lz"
gAreaRoomMap_RoyalCrypt_Entrance_bottom::
	.incbin "maps/areas/104_RoyalCrypt/rooms/08_Entrance/gAreaRoomMap_RoyalCrypt_Entrance_bottom.bin.lz"
gAreaRoomMap_RoyalCrypt_Entrance_top::
	.incbin "maps/areas/104_RoyalCrypt/rooms/08_Entrance/gAreaRoomMap_RoyalCrypt_Entrance_top.bin.lz"
gAreaTileSet_PalaceOfWinds_0_0::
	.incbin "maps/areas/112_PalaceOfWinds/tileSets/0/gAreaTileSet_PalaceOfWinds_0_0.4bpp.lz"
gAreaTileSet_PalaceOfWinds_0_1::
	.incbin "maps/areas/112_PalaceOfWinds/tileSets/0/gAreaTileSet_PalaceOfWinds_0_1.4bpp.lz"
gAreaTileSet_PalaceOfWinds_0_2::
	.incbin "maps/areas/112_PalaceOfWinds/tileSets/0/gAreaTileSet_PalaceOfWinds_0_2.4bpp.lz"
gAreaTileSet_PalaceOfWinds_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/tileSet/gAreaTileSet_PalaceOfWinds_bottom.bin.lz"
gAreaTileSet_PalaceOfWinds_top::
	.incbin "maps/areas/112_PalaceOfWinds/tileSet/gAreaTileSet_PalaceOfWinds_top.bin.lz"
gAreaTileSetTypes_PalaceOfWinds_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/tileSet/gAreaTileSetTypes_PalaceOfWinds_bottom.bin.lz"
gAreaTileSetTypes_PalaceOfWinds_top::
	.incbin "maps/areas/112_PalaceOfWinds/tileSet/gAreaTileSetTypes_PalaceOfWinds_top.bin.lz"
gAreaTileSet_PalaceOfWinds_0_3::
	.incbin "maps/areas/112_PalaceOfWinds/tileSets/0/gAreaTileSet_PalaceOfWinds_0_3.4bpp.lz"
gAreaTileSet_PalaceOfWindsBoss_0_0::
	.incbin "maps/areas/113_PalaceOfWindsBoss/tileSets/0/gAreaTileSet_PalaceOfWindsBoss_0_0.4bpp.lz"
gAreaTileSet_PalaceOfWindsBoss_0_1::
	.incbin "maps/areas/113_PalaceOfWindsBoss/tileSets/0/gAreaTileSet_PalaceOfWindsBoss_0_1.4bpp.lz"
gAreaTileSet_PalaceOfWindsBoss_top::
	.incbin "maps/areas/113_PalaceOfWindsBoss/tileSet/gAreaTileSet_PalaceOfWindsBoss_top.bin.lz"
gAreaTileSetTypes_PalaceOfWindsBoss_top::
	.incbin "maps/areas/113_PalaceOfWindsBoss/tileSet/gAreaTileSetTypes_PalaceOfWindsBoss_top.bin.lz"
gyorgMapping_2_bottom::
	.incbin "maps/areas/113_PalaceOfWindsBoss/mappings/gyorgMapping_2_bottom.bin.lz"
gyorgMapping_3_bottom::
	.incbin "maps/areas/113_PalaceOfWindsBoss/mappings/gyorgMapping_3_bottom.bin.lz"
gyorgMapping_1_bottom::
	.incbin "maps/areas/113_PalaceOfWindsBoss/mappings/gyorgMapping_1_bottom.bin.lz"
gyorgMapping_0_bottom::
	.incbin "maps/areas/113_PalaceOfWindsBoss/mappings/gyorgMapping_0_bottom.bin.lz"
gAreaTileSet_PalaceOfWindsBoss_0_2::
	.incbin "maps/areas/113_PalaceOfWindsBoss/tileSets/0/gAreaTileSet_PalaceOfWindsBoss_0_2.4bpp.lz"
gAreaRoomMap_PalaceOfWinds_GyorgTornado_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/00_GyorgTornado/gAreaRoomMap_PalaceOfWinds_GyorgTornado_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_GyorgTornado_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/00_GyorgTornado/gAreaRoomMap_PalaceOfWinds_GyorgTornado_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_GyorgTornado::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/00_GyorgTornado/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BossKey_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/01_BossKey/gAreaRoomMap_PalaceOfWinds_BossKey_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BossKey_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/01_BossKey/gAreaRoomMap_PalaceOfWinds_BossKey_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BossKey::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/01_BossKey/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/02_BeforeBallAndChainSoldiers/gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/02_BeforeBallAndChainSoldiers/gAreaRoomMap_PalaceOfWinds_BeforeBallAndChainSoldiers_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BeforeBallAndChainSoldiers::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/02_BeforeBallAndChainSoldiers/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/03_GyorgBossDoor/gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/03_GyorgBossDoor/gAreaRoomMap_PalaceOfWinds_GyorgBossDoor_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_GyorgBossDoor::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/03_GyorgBossDoor/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/04_EastChestFromGyorgBossDoor/gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/04_EastChestFromGyorgBossDoor/gAreaRoomMap_PalaceOfWinds_EastChestFromGyorgBossDoor_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_EastChestFromGyorgBossDoor::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/04_EastChestFromGyorgBossDoor/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/05_MoblinAndWizzrobeFight/gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/05_MoblinAndWizzrobeFight/gAreaRoomMap_PalaceOfWinds_MoblinAndWizzrobeFight_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_MoblinAndWizzrobeFight::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/05_MoblinAndWizzrobeFight/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/06_FourButtonStalfos/gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/06_FourButtonStalfos/gAreaRoomMap_PalaceOfWinds_FourButtonStalfos_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_FourButtonStalfos::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/06_FourButtonStalfos/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/07_FanAndKeyToBossKey/gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/07_FanAndKeyToBossKey/gAreaRoomMap_PalaceOfWinds_FanAndKeyToBossKey_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_FanAndKeyToBossKey::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/07_FanAndKeyToBossKey/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/08_BallAndChainSoldiers/gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/08_BallAndChainSoldiers/gAreaRoomMap_PalaceOfWinds_BallAndChainSoldiers_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BallAndChainSoldiers::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/08_BallAndChainSoldiers/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BombarossaPath_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/09_BombarossaPath/gAreaRoomMap_PalaceOfWinds_BombarossaPath_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BombarossaPath_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/09_BombarossaPath/gAreaRoomMap_PalaceOfWinds_BombarossaPath_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BombarossaPath::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/09_BombarossaPath/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_HoleToDarknut_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/10_HoleToDarknut/gAreaRoomMap_PalaceOfWinds_HoleToDarknut_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_HoleToDarknut_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/10_HoleToDarknut/gAreaRoomMap_PalaceOfWinds_HoleToDarknut_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_HoleToDarknut::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/10_HoleToDarknut/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/11_ToBombarossaPath/gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/11_ToBombarossaPath/gAreaRoomMap_PalaceOfWinds_ToBombarossaPath_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_ToBombarossaPath::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/11_ToBombarossaPath/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/12_DarknutMiniboss/gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/12_DarknutMiniboss/gAreaRoomMap_PalaceOfWinds_DarknutMiniboss_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_DarknutMiniboss::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/12_DarknutMiniboss/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BombWallInside_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/13_BombWallInside/gAreaRoomMap_PalaceOfWinds_BombWallInside_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BombWallInside_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/13_BombWallInside/gAreaRoomMap_PalaceOfWinds_BombWallInside_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BombWallInside::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/13_BombWallInside/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BombWallOutside_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/14_BombWallOutside/gAreaRoomMap_PalaceOfWinds_BombWallOutside_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BombWallOutside_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/14_BombWallOutside/gAreaRoomMap_PalaceOfWinds_BombWallOutside_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BombWallOutside::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/14_BombWallOutside/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_CloudJumps_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/15_CloudJumps/gAreaRoomMap_PalaceOfWinds_CloudJumps_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_CloudJumps_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/15_CloudJumps/gAreaRoomMap_PalaceOfWinds_CloudJumps_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_CloudJumps::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/15_CloudJumps/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/16_BlockMazeToBossDoor/gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/16_BlockMazeToBossDoor/gAreaRoomMap_PalaceOfWinds_BlockMazeToBossDoor_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BlockMazeToBossDoor::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/16_BlockMazeToBossDoor/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/17_CrackedFloorLakitu/gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/17_CrackedFloorLakitu/gAreaRoomMap_PalaceOfWinds_CrackedFloorLakitu_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_CrackedFloorLakitu::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/17_CrackedFloorLakitu/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/18_HeartPieceBridge/gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/18_HeartPieceBridge/gAreaRoomMap_PalaceOfWinds_HeartPieceBridge_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_HeartPieceBridge::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/18_HeartPieceBridge/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FanBridge_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/19_FanBridge/gAreaRoomMap_PalaceOfWinds_FanBridge_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_FanBridge_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/19_FanBridge/gAreaRoomMap_PalaceOfWinds_FanBridge_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_FanBridge::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/19_FanBridge/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_ToFanBridge_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/20_ToFanBridge/gAreaRoomMap_PalaceOfWinds_ToFanBridge_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_ToFanBridge_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/20_ToFanBridge/gAreaRoomMap_PalaceOfWinds_ToFanBridge_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_ToFanBridge::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/20_ToFanBridge/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_RedWarpHall_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/21_RedWarpHall/gAreaRoomMap_PalaceOfWinds_RedWarpHall_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_RedWarpHall_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/21_RedWarpHall/gAreaRoomMap_PalaceOfWinds_RedWarpHall_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_RedWarpHall::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/21_RedWarpHall/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/22_PlatformCloneRide/gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/22_PlatformCloneRide/gAreaRoomMap_PalaceOfWinds_PlatformCloneRide_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_PlatformCloneRide::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/22_PlatformCloneRide/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/23_PitCornerAfterKey/gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/23_PitCornerAfterKey/gAreaRoomMap_PalaceOfWinds_PitCornerAfterKey_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_PitCornerAfterKey::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/23_PitCornerAfterKey/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PlatformCrowRide_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/24_PlatformCrowRide/gAreaRoomMap_PalaceOfWinds_PlatformCrowRide_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_PlatformCrowRide_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/24_PlatformCrowRide/gAreaRoomMap_PalaceOfWinds_PlatformCrowRide_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_PlatformCrowRide::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/24_PlatformCrowRide/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_GratePlatformRide_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/25_GratePlatformRide/gAreaRoomMap_PalaceOfWinds_GratePlatformRide_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_GratePlatformRide_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/25_GratePlatformRide/gAreaRoomMap_PalaceOfWinds_GratePlatformRide_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_GratePlatformRide::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/25_GratePlatformRide/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PotPush_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/26_PotPush/gAreaRoomMap_PalaceOfWinds_PotPush_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_PotPush_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/26_PotPush/gAreaRoomMap_PalaceOfWinds_PotPush_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_PotPush::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/26_PotPush/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FloormasterLever_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/27_FloormasterLever/gAreaRoomMap_PalaceOfWinds_FloormasterLever_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_FloormasterLever_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/27_FloormasterLever/gAreaRoomMap_PalaceOfWinds_FloormasterLever_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_FloormasterLever::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/27_FloormasterLever/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_Map_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/28_Map/gAreaRoomMap_PalaceOfWinds_Map_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_Map_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/28_Map/gAreaRoomMap_PalaceOfWinds_Map_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_Map::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/28_Map/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_CornerToMap_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/29_CornerToMap/gAreaRoomMap_PalaceOfWinds_CornerToMap_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_CornerToMap_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/29_CornerToMap/gAreaRoomMap_PalaceOfWinds_CornerToMap_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_CornerToMap::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/29_CornerToMap/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/30_StairsAfterFloormaster/gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/30_StairsAfterFloormaster/gAreaRoomMap_PalaceOfWinds_StairsAfterFloormaster_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_StairsAfterFloormaster::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/30_StairsAfterFloormaster/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/31_HoleToKinstoneWizzrobe/gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/31_HoleToKinstoneWizzrobe/gAreaRoomMap_PalaceOfWinds_HoleToKinstoneWizzrobe_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_HoleToKinstoneWizzrobe::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/31_HoleToKinstoneWizzrobe/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_KeyArrowButton_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/32_KeyArrowButton/gAreaRoomMap_PalaceOfWinds_KeyArrowButton_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_KeyArrowButton_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/32_KeyArrowButton/gAreaRoomMap_PalaceOfWinds_KeyArrowButton_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_KeyArrowButton::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/32_KeyArrowButton/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_GratesTo3f_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/33_GratesTo3f/gAreaRoomMap_PalaceOfWinds_GratesTo3f_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_GratesTo3f_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/33_GratesTo3f/gAreaRoomMap_PalaceOfWinds_GratesTo3f_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_GratesTo3f::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/33_GratesTo3f/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_SpinyFight_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/34_SpinyFight/gAreaRoomMap_PalaceOfWinds_SpinyFight_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_SpinyFight_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/34_SpinyFight/gAreaRoomMap_PalaceOfWinds_SpinyFight_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_SpinyFight::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/34_SpinyFight/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PeahatSwitch_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/35_PeahatSwitch/gAreaRoomMap_PalaceOfWinds_PeahatSwitch_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_PeahatSwitch_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/35_PeahatSwitch/gAreaRoomMap_PalaceOfWinds_PeahatSwitch_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_PeahatSwitch::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/35_PeahatSwitch/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/36_WhirlwindBombarossa/gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/36_WhirlwindBombarossa/gAreaRoomMap_PalaceOfWinds_WhirlwindBombarossa_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_WhirlwindBombarossa::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/36_WhirlwindBombarossa/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/37_DoorToStalfosFirebar/gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/37_DoorToStalfosFirebar/gAreaRoomMap_PalaceOfWinds_DoorToStalfosFirebar_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_DoorToStalfosFirebar::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/37_DoorToStalfosFirebar/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_StalfosFirebarHole_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/38_StalfosFirebarHole/gAreaRoomMap_PalaceOfWinds_StalfosFirebarHole_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_StalfosFirebarHole_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/38_StalfosFirebarHole/gAreaRoomMap_PalaceOfWinds_StalfosFirebarHole_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_StalfosFirebarHole::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/38_StalfosFirebarHole/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/39_ShortcutDoorButtons/gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/39_ShortcutDoorButtons/gAreaRoomMap_PalaceOfWinds_ShortcutDoorButtons_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_ShortcutDoorButtons::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/39_ShortcutDoorButtons/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/40_ToPeahatSwitch/gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/40_ToPeahatSwitch/gAreaRoomMap_PalaceOfWinds_ToPeahatSwitch_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_ToPeahatSwitch::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/40_ToPeahatSwitch/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/41_KinstoneWizzrobeFight/gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/41_KinstoneWizzrobeFight/gAreaRoomMap_PalaceOfWinds_KinstoneWizzrobeFight_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_KinstoneWizzrobeFight::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/41_KinstoneWizzrobeFight/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_GibdoStairs_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/42_GibdoStairs/gAreaRoomMap_PalaceOfWinds_GibdoStairs_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_GibdoStairs_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/42_GibdoStairs/gAreaRoomMap_PalaceOfWinds_GibdoStairs_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_GibdoStairs::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/42_GibdoStairs/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/43_SpikeBarSmallKey/gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/43_SpikeBarSmallKey/gAreaRoomMap_PalaceOfWinds_SpikeBarSmallKey_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_SpikeBarSmallKey::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/43_SpikeBarSmallKey/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_RocCape_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/44_RocCape/gAreaRoomMap_PalaceOfWinds_RocCape_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_RocCape_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/44_RocCape/gAreaRoomMap_PalaceOfWinds_RocCape_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_RocCape::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/44_RocCape/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_FireBarGrates_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/45_FireBarGrates/gAreaRoomMap_PalaceOfWinds_FireBarGrates_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_FireBarGrates_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/45_FireBarGrates/gAreaRoomMap_PalaceOfWinds_FireBarGrates_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_FireBarGrates::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/45_FireBarGrates/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/46_PlatformRideBombarossas/gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/46_PlatformRideBombarossas/gAreaRoomMap_PalaceOfWinds_PlatformRideBombarossas_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_PlatformRideBombarossas::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/46_PlatformRideBombarossas/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/47_BridgeAfterDarknut/gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/47_BridgeAfterDarknut/gAreaRoomMap_PalaceOfWinds_BridgeAfterDarknut_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BridgeAfterDarknut::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/47_BridgeAfterDarknut/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/48_BridgeSwitchesCloneBlock/gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/48_BridgeSwitchesCloneBlock/gAreaRoomMap_PalaceOfWinds_BridgeSwitchesCloneBlock_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_BridgeSwitchesCloneBlock::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/48_BridgeSwitchesCloneBlock/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_EntranceRoom_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/49_EntranceRoom/gAreaRoomMap_PalaceOfWinds_EntranceRoom_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_EntranceRoom_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/49_EntranceRoom/gAreaRoomMap_PalaceOfWinds_EntranceRoom_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_EntranceRoom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/49_EntranceRoom/dungeon_map.bin"
gAreaRoomMap_PalaceOfWinds_DarkCompassHall_bottom::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/50_DarkCompassHall/gAreaRoomMap_PalaceOfWinds_DarkCompassHall_bottom.bin.lz"
gAreaRoomMap_PalaceOfWinds_DarkCompassHall_top::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/50_DarkCompassHall/gAreaRoomMap_PalaceOfWinds_DarkCompassHall_top.bin.lz"
 gDungeonMaps_PalaceOfWinds_DarkCompassHall::
	.incbin "maps/areas/112_PalaceOfWinds/rooms/50_DarkCompassHall/dungeon_map.bin"
gAreaRoomMap_PalaceOfWindsBoss_0_top::
	.incbin "maps/areas/113_PalaceOfWindsBoss/rooms/00_0/gAreaRoomMap_PalaceOfWindsBoss_0_top.bin.lz"
gyorgRoomMap_1_top::
	.incbin "maps/areas/113_PalaceOfWindsBoss/rooms/00_0/gyorgRoomMap_1_top.bin.lz"
gyorgRoomMap_2_top::
	.incbin "maps/areas/113_PalaceOfWindsBoss/rooms/00_0/gyorgRoomMap_2_top.bin.lz"
gyorgRoomMap_3_top::
	.incbin "maps/areas/113_PalaceOfWindsBoss/rooms/00_0/gyorgRoomMap_3_top.bin.lz"
gAreaTileSet_Sanctuary_0_0::
	.incbin "maps/areas/120_Sanctuary/tileSets/0/gAreaTileSet_Sanctuary_0_0.4bpp.lz"
gAreaTileSet_Sanctuary_0_1::
	.incbin "maps/areas/120_Sanctuary/tileSets/0/gAreaTileSet_Sanctuary_0_1.4bpp.lz"
gAreaTileSet_Sanctuary_0_2::
	.incbin "maps/areas/120_Sanctuary/tileSets/0/gAreaTileSet_Sanctuary_0_2.4bpp.lz"
gAreaTileSet_Sanctuary_bottom::
	.incbin "maps/areas/120_Sanctuary/tileSet/gAreaTileSet_Sanctuary_bottom.bin.lz"
gAreaTileSet_Sanctuary_top::
	.incbin "maps/areas/120_Sanctuary/tileSet/gAreaTileSet_Sanctuary_top.bin.lz"
gAreaTileSetTypes_Sanctuary_bottom::
	.incbin "maps/areas/120_Sanctuary/tileSet/gAreaTileSetTypes_Sanctuary_bottom.bin.lz"
gAreaTileSetTypes_Sanctuary_top::
	.incbin "maps/areas/120_Sanctuary/tileSet/gAreaTileSetTypes_Sanctuary_top.bin.lz"
gAreaRoomMap_Sanctuary_Hall_bottom::
	.incbin "maps/areas/120_Sanctuary/rooms/00_Hall/gAreaRoomMap_Sanctuary_Hall_bottom.bin.lz"
gAreaRoomMap_Sanctuary_Hall_top::
	.incbin "maps/areas/120_Sanctuary/rooms/00_Hall/gAreaRoomMap_Sanctuary_Hall_top.bin.lz"
gAreaRoomMap_Sanctuary_Main_bottom::
	.incbin "maps/areas/120_Sanctuary/rooms/01_Main/gAreaRoomMap_Sanctuary_Main_bottom.bin.lz"
gAreaRoomMap_Sanctuary_Main_top::
	.incbin "maps/areas/120_Sanctuary/rooms/01_Main/gAreaRoomMap_Sanctuary_Main_top.bin.lz"
gAreaRoomMap_Sanctuary_StainedGlass_bottom::
	.incbin "maps/areas/120_Sanctuary/rooms/02_StainedGlass/gAreaRoomMap_Sanctuary_StainedGlass_bottom.bin.lz"
gAreaRoomMap_Sanctuary_StainedGlass_top::
	.incbin "maps/areas/120_Sanctuary/rooms/02_StainedGlass/gAreaRoomMap_Sanctuary_StainedGlass_top.bin.lz"
gAreaTileSet_HyruleCastle_0_0::
	.incbin "maps/areas/128_HyruleCastle/tileSets/0/gAreaTileSet_HyruleCastle_0_0.4bpp.lz"
gAreaTileSet_HyruleCastle_0_1::
	.incbin "maps/areas/128_HyruleCastle/tileSets/0/gAreaTileSet_HyruleCastle_0_1.4bpp.lz"
gAreaTileSet_HyruleCastle_0_2::
	.incbin "maps/areas/128_HyruleCastle/tileSets/0/gAreaTileSet_HyruleCastle_0_2.4bpp.lz"
gAreaTileSet_HyruleCastle_bottom::
	.incbin "maps/areas/128_HyruleCastle/tileSet/gAreaTileSet_HyruleCastle_bottom.bin.lz"
gAreaTileSet_HyruleCastle_top::
	.incbin "maps/areas/128_HyruleCastle/tileSet/gAreaTileSet_HyruleCastle_top.bin.lz"
gAreaTileSetTypes_HyruleCastle_bottom::
	.incbin "maps/areas/128_HyruleCastle/tileSet/gAreaTileSetTypes_HyruleCastle_bottom.bin.lz"
gAreaTileSetTypes_HyruleCastle_top::
	.incbin "maps/areas/128_HyruleCastle/tileSet/gAreaTileSetTypes_HyruleCastle_top.bin.lz"
gAreaRoomMap_HyruleCastle_0_bottom::
	.incbin "maps/areas/128_HyruleCastle/rooms/00_0/gAreaRoomMap_HyruleCastle_0_bottom.bin.lz"
gAreaRoomMap_HyruleCastle_0_top::
	.incbin "maps/areas/128_HyruleCastle/rooms/00_0/gAreaRoomMap_HyruleCastle_0_top.bin.lz"
gAreaRoomMap_HyruleCastle_1_bottom::
	.incbin "maps/areas/128_HyruleCastle/rooms/01_1/gAreaRoomMap_HyruleCastle_1_bottom.bin.lz"
gAreaRoomMap_HyruleCastle_1_top::
	.incbin "maps/areas/128_HyruleCastle/rooms/01_1/gAreaRoomMap_HyruleCastle_1_top.bin.lz"
gAreaRoomMap_HyruleCastle_2_bottom::
	.incbin "maps/areas/128_HyruleCastle/rooms/02_2/gAreaRoomMap_HyruleCastle_2_bottom.bin.lz"
gAreaRoomMap_HyruleCastle_2_top::
	.incbin "maps/areas/128_HyruleCastle/rooms/02_2/gAreaRoomMap_HyruleCastle_2_top.bin.lz"
gAreaRoomMap_HyruleCastle_3_bottom::
	.incbin "maps/areas/128_HyruleCastle/rooms/03_3/gAreaRoomMap_HyruleCastle_3_bottom.bin.lz"
gAreaRoomMap_HyruleCastle_3_top::
	.incbin "maps/areas/128_HyruleCastle/rooms/03_3/gAreaRoomMap_HyruleCastle_3_top.bin.lz"
gAreaRoomMap_HyruleCastle_4_bottom::
	.incbin "maps/areas/128_HyruleCastle/rooms/04_4/gAreaRoomMap_HyruleCastle_4_bottom.bin.lz"
gAreaRoomMap_HyruleCastle_4_top::
	.incbin "maps/areas/128_HyruleCastle/rooms/04_4/gAreaRoomMap_HyruleCastle_4_top.bin.lz"
gAreaRoomMap_HyruleCastle_5_bottom::
	.incbin "maps/areas/128_HyruleCastle/rooms/05_5/gAreaRoomMap_HyruleCastle_5_bottom.bin.lz"
gAreaRoomMap_HyruleCastle_5_top::
	.incbin "maps/areas/128_HyruleCastle/rooms/05_5/gAreaRoomMap_HyruleCastle_5_top.bin.lz"
gAreaRoomMap_HyruleCastle_6_bottom::
	.incbin "maps/areas/128_HyruleCastle/rooms/06_6/gAreaRoomMap_HyruleCastle_6_bottom.bin.lz"
gAreaRoomMap_HyruleCastle_6_top::
	.incbin "maps/areas/128_HyruleCastle/rooms/06_6/gAreaRoomMap_HyruleCastle_6_top.bin.lz"
unknown_187::
	.incbin "assets/unknown_187.bin"
gAreaTileSet_SanctuaryEntrance_0_0::
	.incbin "maps/areas/129_SanctuaryEntrance/tileSets/0/gAreaTileSet_SanctuaryEntrance_0_0.4bpp.lz"
gAreaTileSet_SanctuaryEntrance_0_1::
	.incbin "maps/areas/129_SanctuaryEntrance/tileSets/0/gAreaTileSet_SanctuaryEntrance_0_1.4bpp.lz"
gAreaTileSet_SanctuaryEntrance_0_2::
	.incbin "maps/areas/129_SanctuaryEntrance/tileSets/0/gAreaTileSet_SanctuaryEntrance_0_2.4bpp.lz"
gAreaTileSet_SanctuaryEntrance_bottom::
	.incbin "maps/areas/129_SanctuaryEntrance/tileSet/gAreaTileSet_SanctuaryEntrance_bottom.bin.lz"
gAreaTileSet_SanctuaryEntrance_top::
	.incbin "maps/areas/129_SanctuaryEntrance/tileSet/gAreaTileSet_SanctuaryEntrance_top.bin.lz"
gAreaTileSetTypes_SanctuaryEntrance_bottom::
	.incbin "maps/areas/129_SanctuaryEntrance/tileSet/gAreaTileSetTypes_SanctuaryEntrance_bottom.bin.lz"
gAreaTileSetTypes_SanctuaryEntrance_top::
	.incbin "maps/areas/129_SanctuaryEntrance/tileSet/gAreaTileSetTypes_SanctuaryEntrance_top.bin.lz"
gAreaRoomMap_SanctuaryEntrance_Main_bottom::
	.incbin "maps/areas/129_SanctuaryEntrance/rooms/00_Main/gAreaRoomMap_SanctuaryEntrance_Main_bottom.bin.lz"
gAreaRoomMap_SanctuaryEntrance_Main_top::
	.incbin "maps/areas/129_SanctuaryEntrance/rooms/00_Main/gAreaRoomMap_SanctuaryEntrance_Main_top.bin.lz"
gAreaTileSet_DarkHyruleCastle_0_0::
	.incbin "maps/areas/136_DarkHyruleCastle/tileSets/0/gAreaTileSet_DarkHyruleCastle_0_0.4bpp.lz"
gAreaTileSet_DarkHyruleCastle_0_1::
	.incbin "maps/areas/136_DarkHyruleCastle/tileSets/0/gAreaTileSet_DarkHyruleCastle_0_1.4bpp.lz"
gAreaTileSet_DarkHyruleCastle_0_2::
	.incbin "maps/areas/136_DarkHyruleCastle/tileSets/0/gAreaTileSet_DarkHyruleCastle_0_2.4bpp.lz"
gAreaTileSet_DarkHyruleCastle_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/tileSet/gAreaTileSet_DarkHyruleCastle_bottom.bin.lz"
gAreaTileSet_DarkHyruleCastle_top::
	.incbin "maps/areas/136_DarkHyruleCastle/tileSet/gAreaTileSet_DarkHyruleCastle_top.bin.lz"
gAreaTileSetTypes_DarkHyruleCastle_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/tileSet/gAreaTileSetTypes_DarkHyruleCastle_bottom.bin.lz"
gAreaTileSetTypes_DarkHyruleCastle_top::
	.incbin "maps/areas/136_DarkHyruleCastle/tileSet/gAreaTileSetTypes_DarkHyruleCastle_top.bin.lz"
gAreaTileSet_DarkHyruleCastleBridge_0_0::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/tileSets/0/gAreaTileSet_DarkHyruleCastleBridge_0_0.4bpp.lz"
gAreaTileSet_DarkHyruleCastleBridge_0_1::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/tileSets/0/gAreaTileSet_DarkHyruleCastleBridge_0_1.4bpp.lz"
gAreaTileSet_DarkHyruleCastleBridge_0_2::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/tileSets/0/gAreaTileSet_DarkHyruleCastleBridge_0_2.4bpp.lz"
gAreaTileSet_DarkHyruleCastleBridge_bottom::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/tileSet/gAreaTileSet_DarkHyruleCastleBridge_bottom.bin.lz"
gAreaTileSet_DarkHyruleCastleBridge_top::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/tileSet/gAreaTileSet_DarkHyruleCastleBridge_top.bin.lz"
gAreaTileSetTypes_DarkHyruleCastleBridge_bottom::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/tileSet/gAreaTileSetTypes_DarkHyruleCastleBridge_bottom.bin.lz"
gAreaTileSetTypes_DarkHyruleCastleBridge_top::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/tileSet/gAreaTileSetTypes_DarkHyruleCastleBridge_top.bin.lz"
gAreaTileSet_Vaati3_0_0::
	.incbin "maps/areas/139_Vaati3/tileSets/0/gAreaTileSet_Vaati3_0_0.4bpp.lz"
gAreaTileSet_Vaati3_0_1::
	.incbin "maps/areas/139_Vaati3/tileSets/0/gAreaTileSet_Vaati3_0_1.4bpp.lz"
gAreaTileSet_Vaati3_0_2::
	.incbin "maps/areas/139_Vaati3/tileSets/0/gAreaTileSet_Vaati3_0_2.4bpp.lz"
gAreaTileSet_Vaati3_bottom::
	.incbin "maps/areas/139_Vaati3/tileSet/gAreaTileSet_Vaati3_bottom.bin.lz"
gAreaTileSet_Vaati3_top::
	.incbin "maps/areas/139_Vaati3/tileSet/gAreaTileSet_Vaati3_top.bin.lz"
gAreaTileSetTypes_Vaati3_bottom::
	.incbin "maps/areas/139_Vaati3/tileSet/gAreaTileSetTypes_Vaati3_bottom.bin.lz"
gAreaTileSetTypes_Vaati3_top::
	.incbin "maps/areas/139_Vaati3/tileSet/gAreaTileSetTypes_Vaati3_top.bin.lz"
gAreaTileSet_Vaati2_0_0::
	.incbin "maps/areas/140_Vaati2/tileSets/0/gAreaTileSet_Vaati2_0_0.4bpp.lz"
gAreaTileSet_Vaati2_0_1::
	.incbin "maps/areas/140_Vaati2/tileSets/0/gAreaTileSet_Vaati2_0_1.4bpp.lz"
gAreaTileSet_Vaati2_0_2::
	.incbin "maps/areas/140_Vaati2/tileSets/0/gAreaTileSet_Vaati2_0_2.4bpp.lz"
gAreaTileSet_Vaati2_bottom::
	.incbin "maps/areas/140_Vaati2/tileSet/gAreaTileSet_Vaati2_bottom.bin.lz"
gAreaTileSet_Vaati2_top::
	.incbin "maps/areas/140_Vaati2/tileSet/gAreaTileSet_Vaati2_top.bin.lz"
gAreaTileSetTypes_Vaati2_bottom::
	.incbin "maps/areas/140_Vaati2/tileSet/gAreaTileSetTypes_Vaati2_bottom.bin.lz"
gAreaTileSetTypes_Vaati2_top::
	.incbin "maps/areas/140_Vaati2/tileSet/gAreaTileSetTypes_Vaati2_top.bin.lz"
gAreaTileSet_VaatisArms_0_0::
	.incbin "maps/areas/138_VaatisArms/tileSets/0/gAreaTileSet_VaatisArms_0_0.4bpp.lz"
gAreaTileSet_VaatisArms_0_1::
	.incbin "maps/areas/138_VaatisArms/tileSets/0/gAreaTileSet_VaatisArms_0_1.4bpp.lz"
gAreaTileSet_VaatisArms_0_2::
	.incbin "maps/areas/138_VaatisArms/tileSets/0/gAreaTileSet_VaatisArms_0_2.4bpp.lz"
gAreaTileSet_VaatisArms_bottom::
	.incbin "maps/areas/138_VaatisArms/tileSet/gAreaTileSet_VaatisArms_bottom.bin.lz"
gAreaTileSet_VaatisArms_top::
	.incbin "maps/areas/138_VaatisArms/tileSet/gAreaTileSet_VaatisArms_top.bin.lz"
gAreaTileSetTypes_VaatisArms_bottom::
	.incbin "maps/areas/138_VaatisArms/tileSet/gAreaTileSetTypes_VaatisArms_bottom.bin.lz"
gAreaTileSetTypes_VaatisArms_top::
	.incbin "maps/areas/138_VaatisArms/tileSet/gAreaTileSetTypes_VaatisArms_top.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fEntrance_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/00_1fEntrance/gAreaRoomMap_DarkHyruleCastle_1fEntrance_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fEntrance_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/00_1fEntrance/gAreaRoomMap_DarkHyruleCastle_1fEntrance_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fEntrance::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/00_1fEntrance/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3fTopLeftTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/01_3fTopLeftTower/gAreaRoomMap_DarkHyruleCastle_3fTopLeftTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3fTopLeftTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/01_3fTopLeftTower/gAreaRoomMap_DarkHyruleCastle_3fTopLeftTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fTopLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/01_3fTopLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3fTopRightTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/02_3fTopRightTower/gAreaRoomMap_DarkHyruleCastle_3fTopRightTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3fTopRightTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/02_3fTopRightTower/gAreaRoomMap_DarkHyruleCastle_3fTopRightTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fTopRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/02_3fTopRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3fBottomLeftTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/03_3fBottomLeftTower/gAreaRoomMap_DarkHyruleCastle_3fBottomLeftTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3fBottomLeftTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/03_3fBottomLeftTower/gAreaRoomMap_DarkHyruleCastle_3fBottomLeftTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fBottomLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/03_3fBottomLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3fBottomRightTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/04_3fBottomRightTower/gAreaRoomMap_DarkHyruleCastle_3fBottomRightTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3fBottomRightTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/04_3fBottomRightTower/gAreaRoomMap_DarkHyruleCastle_3fBottomRightTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fBottomRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/04_3fBottomRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3fKeatonHallToVaati_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/05_3fKeatonHallToVaati/gAreaRoomMap_DarkHyruleCastle_3fKeatonHallToVaati_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3fKeatonHallToVaati_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/05_3fKeatonHallToVaati/gAreaRoomMap_DarkHyruleCastle_3fKeatonHallToVaati_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_3fKeatonHallToVaati::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/05_3fKeatonHallToVaati/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3fTripleDarknut_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/06_3fTripleDarknut/gAreaRoomMap_DarkHyruleCastle_3fTripleDarknut_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3fTripleDarknut_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/06_3fTripleDarknut/gAreaRoomMap_DarkHyruleCastle_3fTripleDarknut_top.bin.lz"

 gDungeonMaps_DarkHyruleCastle_3fTripleDarknut::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/06_3fTripleDarknut/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fTopLeftTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/07_2fTopLeftTower/gAreaRoomMap_DarkHyruleCastle_2fTopLeftTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fTopLeftTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/07_2fTopLeftTower/gAreaRoomMap_DarkHyruleCastle_2fTopLeftTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/07_2fTopLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fTopLeftCorner_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/08_2fTopLeftCorner/gAreaRoomMap_DarkHyruleCastle_2fTopLeftCorner_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fTopLeftCorner_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/08_2fTopLeftCorner/gAreaRoomMap_DarkHyruleCastle_2fTopLeftCorner_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopLeftCorner::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/08_2fTopLeftCorner/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBossKey_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/09_2fBossKey/gAreaRoomMap_DarkHyruleCastle_2fBossKey_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBossKey_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/09_2fBossKey/gAreaRoomMap_DarkHyruleCastle_2fBossKey_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBossKey::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/09_2fBossKey/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBlueWarp_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/10_2fBlueWarp/gAreaRoomMap_DarkHyruleCastle_2fBlueWarp_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBlueWarp_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/10_2fBlueWarp/gAreaRoomMap_DarkHyruleCastle_2fBlueWarp_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBlueWarp::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/10_2fBlueWarp/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fTopRightCornerGhini_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/11_2fTopRightCornerGhini/gAreaRoomMap_DarkHyruleCastle_2fTopRightCornerGhini_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fTopRightCornerGhini_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/11_2fTopRightCornerGhini/gAreaRoomMap_DarkHyruleCastle_2fTopRightCornerGhini_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopRightCornerGhini::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/11_2fTopRightCornerGhini/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fTopRightCornerTorches_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/12_2fTopRightCornerTorches/gAreaRoomMap_DarkHyruleCastle_2fTopRightCornerTorches_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fTopRightCornerTorches_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/12_2fTopRightCornerTorches/gAreaRoomMap_DarkHyruleCastle_2fTopRightCornerTorches_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopRightCornerTorches::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/12_2fTopRightCornerTorches/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fTopRightTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/13_2fTopRightTower/gAreaRoomMap_DarkHyruleCastle_2fTopRightTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fTopRightTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/13_2fTopRightTower/gAreaRoomMap_DarkHyruleCastle_2fTopRightTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/13_2fTopRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fTopLeftDarknut_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/14_2fTopLeftDarknut/gAreaRoomMap_DarkHyruleCastle_2fTopLeftDarknut_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fTopLeftDarknut_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/14_2fTopLeftDarknut/gAreaRoomMap_DarkHyruleCastle_2fTopLeftDarknut_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopLeftDarknut::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/14_2fTopLeftDarknut/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fSparks_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/15_2fSparks/gAreaRoomMap_DarkHyruleCastle_2fSparks_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fSparks_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/15_2fSparks/gAreaRoomMap_DarkHyruleCastle_2fSparks_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fSparks::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/15_2fSparks/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fTopRightDarknuts_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/16_2fTopRightDarknuts/gAreaRoomMap_DarkHyruleCastle_2fTopRightDarknuts_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fTopRightDarknuts_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/16_2fTopRightDarknuts/gAreaRoomMap_DarkHyruleCastle_2fTopRightDarknuts_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fTopRightDarknuts::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/16_2fTopRightDarknuts/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fLeft_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/17_2fLeft/gAreaRoomMap_DarkHyruleCastle_2fLeft_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fLeft_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/17_2fLeft/gAreaRoomMap_DarkHyruleCastle_2fLeft_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fLeft::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/17_2fLeft/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fRight_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/18_2fRight/gAreaRoomMap_DarkHyruleCastle_2fRight_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fRight_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/18_2fRight/gAreaRoomMap_DarkHyruleCastle_2fRight_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fRight::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/18_2fRight/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBottomLeftDarknuts_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/19_2fBottomLeftDarknuts/gAreaRoomMap_DarkHyruleCastle_2fBottomLeftDarknuts_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBottomLeftDarknuts_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/19_2fBottomLeftDarknuts/gAreaRoomMap_DarkHyruleCastle_2fBottomLeftDarknuts_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomLeftDarknuts::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/19_2fBottomLeftDarknuts/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBossDoor_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/20_2fBossDoor/gAreaRoomMap_DarkHyruleCastle_2fBossDoor_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBossDoor_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/20_2fBossDoor/gAreaRoomMap_DarkHyruleCastle_2fBossDoor_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBossDoor::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/20_2fBossDoor/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBottomRightDarknut_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/21_2fBottomRightDarknut/gAreaRoomMap_DarkHyruleCastle_2fBottomRightDarknut_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBottomRightDarknut_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/21_2fBottomRightDarknut/gAreaRoomMap_DarkHyruleCastle_2fBottomRightDarknut_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomRightDarknut::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/21_2fBottomRightDarknut/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBottomLeftCornerPuzzle_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/22_2fBottomLeftCornerPuzzle/gAreaRoomMap_DarkHyruleCastle_2fBottomLeftCornerPuzzle_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBottomLeftCornerPuzzle_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/22_2fBottomLeftCornerPuzzle/gAreaRoomMap_DarkHyruleCastle_2fBottomLeftCornerPuzzle_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomLeftCornerPuzzle::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/22_2fBottomLeftCornerPuzzle/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fEntrance_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/23_2fEntrance/gAreaRoomMap_DarkHyruleCastle_2fEntrance_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fEntrance_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/23_2fEntrance/gAreaRoomMap_DarkHyruleCastle_2fEntrance_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fEntrance::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/23_2fEntrance/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBottomRightCorner_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/24_2fBottomRightCorner/gAreaRoomMap_DarkHyruleCastle_2fBottomRightCorner_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBottomRightCorner_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/24_2fBottomRightCorner/gAreaRoomMap_DarkHyruleCastle_2fBottomRightCorner_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomRightCorner::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/24_2fBottomRightCorner/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBottomLeftTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/25_2fBottomLeftTower/gAreaRoomMap_DarkHyruleCastle_2fBottomLeftTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBottomLeftTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/25_2fBottomLeftTower/gAreaRoomMap_DarkHyruleCastle_2fBottomLeftTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/25_2fBottomLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBottomLeftGhini_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/26_2fBottomLeftGhini/gAreaRoomMap_DarkHyruleCastle_2fBottomLeftGhini_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBottomLeftGhini_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/26_2fBottomLeftGhini/gAreaRoomMap_DarkHyruleCastle_2fBottomLeftGhini_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomLeftGhini::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/26_2fBottomLeftGhini/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1b_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/27_1b/gAreaRoomMap_DarkHyruleCastle_1b_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1b_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/27_1b/gAreaRoomMap_DarkHyruleCastle_1b_top.bin.lz"
gDungeonMaps_DarkHyruleCastle_1b_unused::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/27_1b/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Entrance_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/28_B1Entrance/gAreaRoomMap_DarkHyruleCastle_B1Entrance_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Entrance_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/28_B1Entrance/gAreaRoomMap_DarkHyruleCastle_B1Entrance_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Entrance::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/28_B1Entrance/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_2fBottomRightTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/29_2fBottomRightTower/gAreaRoomMap_DarkHyruleCastle_2fBottomRightTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_2fBottomRightTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/29_2fBottomRightTower/gAreaRoomMap_DarkHyruleCastle_2fBottomRightTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_2fBottomRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/29_2fBottomRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fTopLeftTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/30_1fTopLeftTower/gAreaRoomMap_DarkHyruleCastle_1fTopLeftTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fTopLeftTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/30_1fTopLeftTower/gAreaRoomMap_DarkHyruleCastle_1fTopLeftTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fTopLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/30_1fTopLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fThroneRoom_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/31_1fThroneRoom/gAreaRoomMap_DarkHyruleCastle_1fThroneRoom_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fThroneRoom_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/31_1fThroneRoom/gAreaRoomMap_DarkHyruleCastle_1fThroneRoom_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fThroneRoom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/31_1fThroneRoom/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fCompass_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/32_1fCompass/gAreaRoomMap_DarkHyruleCastle_1fCompass_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fCompass_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/32_1fCompass/gAreaRoomMap_DarkHyruleCastle_1fCompass_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fCompass::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/32_1fCompass/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fTopRightTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/33_1fTopRightTower/gAreaRoomMap_DarkHyruleCastle_1fTopRightTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fTopRightTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/33_1fTopRightTower/gAreaRoomMap_DarkHyruleCastle_1fTopRightTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fTopRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/33_1fTopRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fBeforeThrone_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/34_1fBeforeThrone/gAreaRoomMap_DarkHyruleCastle_1fBeforeThrone_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fBeforeThrone_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/34_1fBeforeThrone/gAreaRoomMap_DarkHyruleCastle_1fBeforeThrone_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fBeforeThrone::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/34_1fBeforeThrone/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fLoopTopLeft_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/35_1fLoopTopLeft/gAreaRoomMap_DarkHyruleCastle_1fLoopTopLeft_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fLoopTopLeft_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/35_1fLoopTopLeft/gAreaRoomMap_DarkHyruleCastle_1fLoopTopLeft_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopTopLeft::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/35_1fLoopTopLeft/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fLoopTop_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/36_1fLoopTop/gAreaRoomMap_DarkHyruleCastle_1fLoopTop_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fLoopTop_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/36_1fLoopTop/gAreaRoomMap_DarkHyruleCastle_1fLoopTop_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopTop::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/36_1fLoopTop/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fLoopTopRight_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/37_1fLoopTopRight/gAreaRoomMap_DarkHyruleCastle_1fLoopTopRight_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fLoopTopRight_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/37_1fLoopTopRight/gAreaRoomMap_DarkHyruleCastle_1fLoopTopRight_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopTopRight::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/37_1fLoopTopRight/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fLoopLeft_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/38_1fLoopLeft/gAreaRoomMap_DarkHyruleCastle_1fLoopLeft_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fLoopLeft_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/38_1fLoopLeft/gAreaRoomMap_DarkHyruleCastle_1fLoopLeft_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopLeft::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/38_1fLoopLeft/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fLoopRight_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/39_1fLoopRight/gAreaRoomMap_DarkHyruleCastle_1fLoopRight_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fLoopRight_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/39_1fLoopRight/gAreaRoomMap_DarkHyruleCastle_1fLoopRight_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopRight::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/39_1fLoopRight/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fLoopBottomLeft_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/40_1fLoopBottomLeft/gAreaRoomMap_DarkHyruleCastle_1fLoopBottomLeft_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fLoopBottomLeft_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/40_1fLoopBottomLeft/gAreaRoomMap_DarkHyruleCastle_1fLoopBottomLeft_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopBottomLeft::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/40_1fLoopBottomLeft/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fLoopBottom_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/41_1fLoopBottom/gAreaRoomMap_DarkHyruleCastle_1fLoopBottom_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fLoopBottom_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/41_1fLoopBottom/gAreaRoomMap_DarkHyruleCastle_1fLoopBottom_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopBottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/41_1fLoopBottom/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fLoopBottomRight_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/42_1fLoopBottomRight/gAreaRoomMap_DarkHyruleCastle_1fLoopBottomRight_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fLoopBottomRight_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/42_1fLoopBottomRight/gAreaRoomMap_DarkHyruleCastle_1fLoopBottomRight_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fLoopBottomRight::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/42_1fLoopBottomRight/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fBottomLeftTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/43_1fBottomLeftTower/gAreaRoomMap_DarkHyruleCastle_1fBottomLeftTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fBottomLeftTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/43_1fBottomLeftTower/gAreaRoomMap_DarkHyruleCastle_1fBottomLeftTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fBottomLeftTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/43_1fBottomLeftTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_1fBottomRightTower_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/44_1fBottomRightTower/gAreaRoomMap_DarkHyruleCastle_1fBottomRightTower_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_1fBottomRightTower_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/44_1fBottomRightTower/gAreaRoomMap_DarkHyruleCastle_1fBottomRightTower_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_1fBottomRightTower::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/44_1fBottomRightTower/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/45_B1BelowThrone/gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/45_B1BelowThrone/gAreaRoomMap_DarkHyruleCastle_B1BelowThrone_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1BelowThrone::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/45_B1BelowThrone/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/46_B1BelowCompass/gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/46_B1BelowCompass/gAreaRoomMap_DarkHyruleCastle_B1BelowCompass_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1BelowCompass::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/46_B1BelowCompass/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/47_B1BeforeThrone/gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/47_B1BeforeThrone/gAreaRoomMap_DarkHyruleCastle_B1BeforeThrone_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1BeforeThrone::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/47_B1BeforeThrone/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1ToPrison_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/48_B1ToPrison/gAreaRoomMap_DarkHyruleCastle_B1ToPrison_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1ToPrison_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/48_B1ToPrison/gAreaRoomMap_DarkHyruleCastle_B1ToPrison_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1ToPrison::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/48_B1ToPrison/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1BombWall_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/49_B1BombWall/gAreaRoomMap_DarkHyruleCastle_B1BombWall_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1BombWall_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/49_B1BombWall/gAreaRoomMap_DarkHyruleCastle_B1BombWall_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1BombWall::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/49_B1BombWall/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Keatons_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/50_B1Keatons/gAreaRoomMap_DarkHyruleCastle_B1Keatons_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Keatons_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/50_B1Keatons/gAreaRoomMap_DarkHyruleCastle_B1Keatons_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Keatons::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/50_B1Keatons/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/51_B1ToPrisonFirebar/gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/51_B1ToPrisonFirebar/gAreaRoomMap_DarkHyruleCastle_B1ToPrisonFirebar_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1ToPrisonFirebar::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/51_B1ToPrisonFirebar/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Cannons_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/52_B1Cannons/gAreaRoomMap_DarkHyruleCastle_B1Cannons_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Cannons_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/52_B1Cannons/gAreaRoomMap_DarkHyruleCastle_B1Cannons_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Cannons::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/52_B1Cannons/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Left_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/53_B1Left/gAreaRoomMap_DarkHyruleCastle_B1Left_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Left_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/53_B1Left/gAreaRoomMap_DarkHyruleCastle_B1Left_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Left::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/53_B1Left/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Right_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/54_B1Right/gAreaRoomMap_DarkHyruleCastle_B1Right_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Right_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/54_B1Right/gAreaRoomMap_DarkHyruleCastle_B1Right_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Right::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/54_B1Right/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B1Map_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/55_B1Map/gAreaRoomMap_DarkHyruleCastle_B1Map_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B1Map_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/55_B1Map/gAreaRoomMap_DarkHyruleCastle_B1Map_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B1Map::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/55_B1Map/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B2ToPrison_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/56_B2ToPrison/gAreaRoomMap_DarkHyruleCastle_B2ToPrison_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B2ToPrison_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/56_B2ToPrison/gAreaRoomMap_DarkHyruleCastle_B2ToPrison_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B2ToPrison::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/56_B2ToPrison/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B2Prison_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/57_B2Prison/gAreaRoomMap_DarkHyruleCastle_B2Prison_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B2Prison_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/57_B2Prison/gAreaRoomMap_DarkHyruleCastle_B2Prison_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B2Prison::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/57_B2Prison/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_B2Dropdown_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/58_B2Dropdown/gAreaRoomMap_DarkHyruleCastle_B2Dropdown_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_B2Dropdown_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/58_B2Dropdown/gAreaRoomMap_DarkHyruleCastle_B2Dropdown_top.bin.lz"
 gDungeonMaps_DarkHyruleCastle_B2Dropdown::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/58_B2Dropdown/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastle_3b_bottom::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/59_3b/gAreaRoomMap_DarkHyruleCastle_3b_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastle_3b_top::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/59_3b/gAreaRoomMap_DarkHyruleCastle_3b_top.bin.lz"
gDungeonMaps_DarkHyruleCastle_3b_unused::
	.incbin "maps/areas/136_DarkHyruleCastle/rooms/59_3b/dungeon_map.bin"
gAreaRoomMap_DarkHyruleCastleBridge_Main_bottom::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/rooms/00_Main/gAreaRoomMap_DarkHyruleCastleBridge_Main_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleBridge_Main_top::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/rooms/00_Main/gAreaRoomMap_DarkHyruleCastleBridge_Main_top.bin.lz"
gDungeonMaps_DarkHyruleCastleBridge_Main_unused::
	.incbin "maps/areas/141_DarkHyruleCastleBridge/rooms/00_Main/dungeon_map.bin"
gAreaRoomMap_Vaati3_0_bottom::
	.incbin "maps/areas/139_Vaati3/rooms/00_0/gAreaRoomMap_Vaati3_0_bottom.bin.lz"
gAreaRoomMap_Vaati3_0_top::
	.incbin "maps/areas/139_Vaati3/rooms/00_0/gAreaRoomMap_Vaati3_0_top.bin.lz"
gAreaRoomMap_Vaati3_1_bottom::
	.incbin "maps/areas/139_Vaati3/rooms/01_1/gAreaRoomMap_Vaati3_1_bottom.bin.lz"
gAreaRoomMap_Vaati3_1_top::
	.incbin "maps/areas/139_Vaati3/rooms/01_1/gAreaRoomMap_Vaati3_1_top.bin.lz"
gAreaRoomMap_Vaati2_0_bottom::
	.incbin "maps/areas/140_Vaati2/rooms/00_0/gAreaRoomMap_Vaati2_0_bottom.bin.lz"
gAreaRoomMap_Vaati2_0_top::
	.incbin "maps/areas/140_Vaati2/rooms/00_0/gAreaRoomMap_Vaati2_0_top.bin.lz"
gAreaRoomMap_VaatisArms_First_bottom::
	.incbin "maps/areas/138_VaatisArms/rooms/00_First/gAreaRoomMap_VaatisArms_First_bottom.bin.lz"
gAreaRoomMap_VaatisArms_First_top::
	.incbin "maps/areas/138_VaatisArms/rooms/00_First/gAreaRoomMap_VaatisArms_First_top.bin.lz"
gAreaRoomMap_VaatisArms_Second_bottom::
	.incbin "maps/areas/138_VaatisArms/rooms/01_Second/gAreaRoomMap_VaatisArms_Second_bottom.bin.lz"
gAreaRoomMap_VaatisArms_Second_top::
	.incbin "maps/areas/138_VaatisArms/rooms/01_Second/gAreaRoomMap_VaatisArms_Second_top.bin.lz"
gAreaRoomMap_VaatisArms_3_bottom::
	.incbin "maps/areas/138_VaatisArms/rooms/02_3/gAreaRoomMap_VaatisArms_3_bottom.bin.lz"
gAreaRoomMap_VaatisArms_3_top::
	.incbin "maps/areas/138_VaatisArms/rooms/02_3/gAreaRoomMap_VaatisArms_3_top.bin.lz"
gAreaTileSet_Vaati2_0_3::
	.incbin "maps/areas/140_Vaati2/tileSets/0/gAreaTileSet_Vaati2_0_3.4bpp.lz"
gAreaTileSet_DarkHyruleCastleOutside_0_0::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/tileSets/0/gAreaTileSet_DarkHyruleCastleOutside_0_0.4bpp.lz"
gAreaTileSet_DarkHyruleCastleOutside_0_1::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/tileSets/0/gAreaTileSet_DarkHyruleCastleOutside_0_1.4bpp.lz"
gAreaTileSet_DarkHyruleCastleOutside_0_2::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/tileSets/0/gAreaTileSet_DarkHyruleCastleOutside_0_2.4bpp.lz"
gAreaTileSet_DarkHyruleCastleOutside_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/tileSet/gAreaTileSet_DarkHyruleCastleOutside_bottom.bin.lz"
gAreaTileSet_DarkHyruleCastleOutside_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/tileSet/gAreaTileSet_DarkHyruleCastleOutside_top.bin.lz"
gAreaTileSetTypes_DarkHyruleCastleOutside_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/tileSet/gAreaTileSetTypes_DarkHyruleCastleOutside_bottom.bin.lz"
gAreaTileSetTypes_DarkHyruleCastleOutside_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/tileSet/gAreaTileSetTypes_DarkHyruleCastleOutside_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_ZeldaStatuePlatform_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/00_ZeldaStatuePlatform/gAreaRoomMap_DarkHyruleCastleOutside_ZeldaStatuePlatform_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_ZeldaStatuePlatform_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/00_ZeldaStatuePlatform/gAreaRoomMap_DarkHyruleCastleOutside_ZeldaStatuePlatform_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Garden_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/01_Garden/gAreaRoomMap_DarkHyruleCastleOutside_Garden_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Garden_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/01_Garden/gAreaRoomMap_DarkHyruleCastleOutside_Garden_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Northwest_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/02_Northwest/gAreaRoomMap_DarkHyruleCastleOutside_Northwest_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Northwest_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/02_Northwest/gAreaRoomMap_DarkHyruleCastleOutside_Northwest_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Northeast_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/03_Northeast/gAreaRoomMap_DarkHyruleCastleOutside_Northeast_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Northeast_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/03_Northeast/gAreaRoomMap_DarkHyruleCastleOutside_Northeast_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_East_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/04_East/gAreaRoomMap_DarkHyruleCastleOutside_East_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_East_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/04_East/gAreaRoomMap_DarkHyruleCastleOutside_East_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Southwest_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/05_Southwest/gAreaRoomMap_DarkHyruleCastleOutside_Southwest_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Southwest_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/05_Southwest/gAreaRoomMap_DarkHyruleCastleOutside_Southwest_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_South_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/06_South/gAreaRoomMap_DarkHyruleCastleOutside_South_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_South_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/06_South/gAreaRoomMap_DarkHyruleCastleOutside_South_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Southeast_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/07_Southeast/gAreaRoomMap_DarkHyruleCastleOutside_Southeast_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_Southeast_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/07_Southeast/gAreaRoomMap_DarkHyruleCastleOutside_Southeast_top.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_8_bottom::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/08_8/gAreaRoomMap_DarkHyruleCastleOutside_8_bottom.bin.lz"
gAreaRoomMap_DarkHyruleCastleOutside_8_top::
	.incbin "maps/areas/137_DarkHyruleCastleOutside/rooms/08_8/gAreaRoomMap_DarkHyruleCastleOutside_8_top.bin.lz"
gAreaRoomMap_47_0_bottom::
	.incbin "maps/areas/071_47/rooms/00_0/gAreaRoomMap_47_0_bottom.bin.lz"
gAreaRoomMap_47_0_top::
	.incbin "maps/areas/071_47/rooms/00_0/gAreaRoomMap_47_0_top.bin.lz"
gAreaRoomMap_47_1_bottom::
	.incbin "maps/areas/071_47/rooms/01_1/gAreaRoomMap_47_1_bottom.bin.lz"
gAreaRoomMap_47_1_top::
	.incbin "maps/areas/071_47/rooms/01_1/gAreaRoomMap_47_1_top.bin.lz"
gAreaRoomMap_47_2_bottom::
	.incbin "maps/areas/071_47/rooms/02_2/gAreaRoomMap_47_2_bottom.bin.lz"
gAreaRoomMap_47_2_top::
	.incbin "maps/areas/071_47/rooms/02_2/gAreaRoomMap_47_2_top.bin.lz"
gAreaRoomMap_45_0_bottom::
	.incbin "maps/areas/069_45/rooms/00_0/gAreaRoomMap_45_0_bottom.bin.lz"
gAreaRoomMap_45_0_top::
	.incbin "maps/areas/069_45/rooms/00_0/gAreaRoomMap_45_0_top.bin.lz"
gAreaRoomMap_Null46_0_bottom::
	.incbin "maps/areas/070_Null46/rooms/00_0/gAreaRoomMap_Null46_0_bottom.bin.lz"
gAreaRoomMap_Null46_0_top::
	.incbin "maps/areas/070_Null46/rooms/00_0/gAreaRoomMap_Null46_0_top.bin.lz"
gAreaRoomMap_Null46_1_bottom::
	.incbin "maps/areas/070_Null46/rooms/01_1/gAreaRoomMap_Null46_1_bottom.bin.lz"
gAreaRoomMap_Null46_1_top::
	.incbin "maps/areas/070_Null46/rooms/01_1/gAreaRoomMap_Null46_1_top.bin.lz"
gAreaRoomMap_Null46_2_bottom::
	.incbin "maps/areas/070_Null46/rooms/02_2/gAreaRoomMap_Null46_2_bottom.bin.lz"
gAreaRoomMap_Null46_2_top::
	.incbin "maps/areas/070_Null46/rooms/02_2/gAreaRoomMap_Null46_2_top.bin.lz"
gAreaRoomMap_Null46_3_bottom::
	.incbin "maps/areas/070_Null46/rooms/03_3/gAreaRoomMap_Null46_3_bottom.bin.lz"
gAreaRoomMap_Null46_3_top::
	.incbin "maps/areas/070_Null46/rooms/03_3/gAreaRoomMap_Null46_3_top.bin.lz"
gAreaRoomMap_Null46_4_bottom::
	.incbin "maps/areas/070_Null46/rooms/04_4/gAreaRoomMap_Null46_4_bottom.bin.lz"
gAreaRoomMap_Null46_4_top::
	.incbin "maps/areas/070_Null46/rooms/04_4/gAreaRoomMap_Null46_4_top.bin.lz"
gAreaRoomMap_Null46_5_bottom::
	.incbin "maps/areas/070_Null46/rooms/05_5/gAreaRoomMap_Null46_5_bottom.bin.lz"
gAreaRoomMap_Null46_5_top::
	.incbin "maps/areas/070_Null46/rooms/05_5/gAreaRoomMap_Null46_5_top.bin.lz"
gAreaRoomMap_Null46_6_bottom::
	.incbin "maps/areas/070_Null46/rooms/06_6/gAreaRoomMap_Null46_6_bottom.bin.lz"
gAreaRoomMap_Null46_6_top::
	.incbin "maps/areas/070_Null46/rooms/06_6/gAreaRoomMap_Null46_6_top.bin.lz"
gAreaRoomMap_Null46_7_bottom::
	.incbin "maps/areas/070_Null46/rooms/07_7/gAreaRoomMap_Null46_7_bottom.bin.lz"
gAreaRoomMap_Null46_7_top::
	.incbin "maps/areas/070_Null46/rooms/07_7/gAreaRoomMap_Null46_7_top.bin.lz"
gAreaRoomMap_08107870_0::
	.incbin "assets/gAreaRoomMap_08107870_0.bin.lz"
gAreaRoomMap_08107870_1::
	.incbin "assets/gAreaRoomMap_08107870_1.bin.lz"
gAreaRoomMap_4d_0_bottom::
	.incbin "maps/areas/077_4d/rooms/00_0/gAreaRoomMap_4d_0_bottom.bin.lz"
gAreaRoomMap_4d_0_top::
	.incbin "maps/areas/077_4d/rooms/00_0/gAreaRoomMap_4d_0_top.bin.lz"
gAreaRoomMap_57_0_bottom::
	.incbin "maps/areas/087_57/rooms/00_0/gAreaRoomMap_57_0_bottom.bin.lz"
gAreaRoomMap_57_0_top::
	.incbin "maps/areas/087_57/rooms/00_0/gAreaRoomMap_57_0_top.bin.lz"
gAreaRoomMap_5f_0_bottom::
	.incbin "maps/areas/095_5f/rooms/00_0/gAreaRoomMap_5f_0_bottom.bin.lz"
gAreaRoomMap_5f_0_top::
	.incbin "maps/areas/095_5f/rooms/00_0/gAreaRoomMap_5f_0_top.bin.lz"
gAreaRoomMap_67_0_bottom::
	.incbin "maps/areas/103_67/rooms/00_0/gAreaRoomMap_67_0_bottom.bin.lz"
gAreaRoomMap_67_0_top::
	.incbin "maps/areas/103_67/rooms/00_0/gAreaRoomMap_67_0_top.bin.lz"
gAreaRoomMap_6f_0_bottom::
	.incbin "maps/areas/111_6f/rooms/00_0/gAreaRoomMap_6f_0_bottom.bin.lz"
gAreaRoomMap_6f_0_top::
	.incbin "maps/areas/111_6f/rooms/00_0/gAreaRoomMap_6f_0_top.bin.lz"
gAreaRoomMap_77_0_bottom::
	.incbin "maps/areas/119_77/rooms/00_0/gAreaRoomMap_77_0_bottom.bin.lz"
gAreaRoomMap_77_0_top::
	.incbin "maps/areas/119_77/rooms/00_0/gAreaRoomMap_77_0_top.bin.lz"
gAreaRoomMap_7f_0_bottom::
	.incbin "maps/areas/127_7f/rooms/00_0/gAreaRoomMap_7f_0_bottom.bin.lz"
gAreaRoomMap_7f_0_top::
	.incbin "maps/areas/127_7f/rooms/00_0/gAreaRoomMap_7f_0_top.bin.lz"
gAreaRoomMap_87_0_bottom::
	.incbin "maps/areas/135_87/rooms/00_0/gAreaRoomMap_87_0_bottom.bin.lz"
gAreaRoomMap_87_0_top::
	.incbin "maps/areas/135_87/rooms/00_0/gAreaRoomMap_87_0_top.bin.lz"
gAreaRoomMap_8f_0_bottom::
	.incbin "maps/areas/143_8f/rooms/00_0/gAreaRoomMap_8f_0_bottom.bin.lz"
gAreaRoomMap_8f_0_top::
	.incbin "maps/areas/143_8f/rooms/00_0/gAreaRoomMap_8f_0_top.bin.lz"
