	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

Area_MinishWoods:: @ 080D4150
	.4byte Room_MinishWoods_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_MinishVillage:: @ 080D4170
	.4byte Room_MinishVillage_Main
	.4byte Room_MinishVillage_SideHouse
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

Area_MinishPaths1:: @ 080D41B0
	.4byte Room_MinishPaths1_ToMinishVillage
	.4byte Room_MinishPaths1_CastorWilds
	.4byte Room_MinishPaths1_HyruleTown
	.4byte Room_MinishPaths1_LonLonRanch
	.4byte Room_MinishPaths1_MayorsCabin
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_CrenelMinishPaths:: @ 080D41D0
	.4byte Room_CrenelMinishPaths_CrenelBean
	.4byte Room_CrenelMinishPaths_CrenelWater
	.4byte Room_CrenelMinishPaths_Rainfall
	.4byte Room_CrenelMinishPaths_MelarisMine
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

Area_MelarisMine:: @ 080D4210
	.4byte Room_MelarisMine_Main
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

Area_HyruleTown:: @ 080D4250
	.4byte Room_HyruleTown_0
	.4byte Room_HyruleTown_1
	.4byte Room_HyruleTown_2
	.4byte Room_HyruleTown_2
	.4byte Room_HyruleTown_3
	.4byte Room_HyruleTown_4
	.4byte Room_HyruleTown_5
	.4byte Room_HyruleTown_6
	.4byte Room_HyruleTown_7
	.4byte Room_HyruleTown_8

Area_HyruleTownUnderground:: @ 080D4278
	.4byte Room_HyruleTownUnderground_Main
	.4byte Room_HyruleTownUnderground_Well

Area_FestivalTown:: @ 080D4280
	.4byte Room_HyruleTown_1

Area_HyruleTownMinishCaves:: @ 080D4284
	.4byte Room_HyruleTownMinishCaves_Entrance
	.4byte Room_HyruleTownMinishCaves_NorthRoom
	.4byte Room_HyruleTownMinishCaves_PacciJump
	.4byte Room_HyruleTownMinishCaves_MulldozerFight
	.4byte Room_HyruleTownMinishCaves_WestChest
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
	.4byte Room_HyruleTownMinishCaves_Flippers
	.4byte Room_HyruleTownMinishCaves_Librari
	.4byte Room_HyruleTownMinishCaves_WestFrozenChest
	.4byte Room_HyruleTownMinishCaves_CrossIntersection
	.4byte Room_HyruleTownMinishCaves_SoutheastCorner
	.4byte Room_HyruleTownMinishCaves_Entrance2

Area_HyruleField:: @ 080D42DC
	.4byte Room_HyruleField_WesternWoodSouth
	.4byte Room_HyruleField_LinksHouseExterior
	.4byte Room_HyruleField_FromMinishWoods
	.4byte Room_HyruleField_FromMinishWoodsNorth
	.4byte Room_HyruleField_Farmers
	.4byte Room_HyruleField_LonLonRanch
	.4byte Room_HyruleField_OutsideCastle
	.4byte Room_HyruleField_OutsideCastleWest
	.4byte Room_HyruleField_TrilbyHighlands
	.4byte Room_HyruleField_PercysHouse

Area_CastorWilds:: @ 080D4304
	.4byte Room_CastorWilds_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_Ruins:: @ 080D4324
	.4byte Room_Ruins_Entrance
	.4byte Room_Ruins_Beanstalk
	.4byte Room_Ruins_TripleTektites
	.4byte Room_Ruins_LadderToTektites
	.4byte Room_Ruins_FortressEntrance
	.4byte Room_Ruins_Armos
	.4byte 0x0
	.4byte 0x0

Area_MtCrenel:: @ 080D4344
	.4byte Room_MtCrenel_MountainTop
	.4byte Room_MtCrenel_WallClimb
	.4byte Room_MtCrenel_CaveOfFlamesEntrance
	.4byte Room_MtCrenel_GustJarShortcut
	.4byte Room_MtCrenel_Entrance
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_RoyalValley:: @ 080D4364
	.4byte Room_RoyalValley_Main
	.4byte Room_RoyalValley_ForestMaze
	.4byte 0x0
	.4byte 0x0

Area_VeilFalls:: @ 080D4374
	.4byte Room_VeilFalls_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_LakeHylia:: @ 080D4384
	.4byte Room_LakeHylia_Main
	.4byte Room_LakeHylia_Beanstalk
	.4byte 0x0
	.4byte 0x0

Area_Beanstalks:: @ 080D4394
	.4byte Room_Beanstalks_MountCrenel
	.4byte Room_Beanstalks_LakeHylia
	.4byte Room_Beanstalks_Ruins
	.4byte Room_Beanstalks_EasternHills
	.4byte Room_Beanstalks_WesternWoods
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
	.4byte Room_Beanstalks_MountCrenelClimb
	.4byte Room_Beanstalks_LakeHyliaClimb
	.4byte Room_Beanstalks_RuinsClimb
	.4byte Room_Beanstalks_EasternHillsClimb
	.4byte Room_Beanstalks_WesternWoodsClimb

Area_CastleGarden:: @ 080D43E8
	.4byte Room_CastleGarden_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_CloudTops:: @ 080D43F8
	.4byte Room_CloudTops_House
	.4byte Room_CloudTops_Middle
	.4byte Room_CloudTops_Bottom
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_LakeWoodsCave:: @ 080D4418
	.4byte Room_LakeWoodsCave_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_HyruleDigCaves:: @ 080D4438
	.4byte Room_HyruleDigCaves_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_DigCaves1:: @ 080D4458
	.4byte Room_DigCaves1_HyruleFieldFarm
	.4byte 0x0
	.4byte 0x0
	.4byte Room_DigCaves1_TrilbyHighlands

Area_CrenelDigCave:: @ 080D4468
	.4byte Room_CrenelDigCave_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_VeilFallsDigCave:: @ 080D4488
	.4byte Room_VeilFallsDigCave_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_CastorWildsDigCave:: @ 080D44A8
	.4byte Room_CastorWildsDigCave_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_OuterFortressOfWinds:: @ 080D44C8
	.4byte Room_OuterFortressOfWinds_EntranceHall
	.4byte Room_OuterFortressOfWinds_2F
	.4byte Room_OuterFortressOfWinds_3F
	.4byte Room_OuterFortressOfWinds_MoleMitts
	.4byte Room_OuterFortressOfWinds_SmallKey
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_HyliaDigCaves:: @ 080D44E8
	.4byte Room_HyliaDigCaves_Middle
	.4byte Room_HyliaDigCaves_North
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_VeilFallsTop:: @ 080D44FC
	.4byte Room_VeilFallsTop_Main

Area_Empty:: @ 080D4500
	.4byte Room_Empty_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_DeepwoodShrineEntry:: @ 080D4520
	.4byte Room_DeepwoodShrineEntry_Main

Area_DeepwoodShrine:: @ 080D4524
	.4byte Room_DeepwoodShrine_Madderpillar
	.4byte Room_DeepwoodShrine_BluePortal
	.4byte Room_DeepwoodShrine_StairsToB1
	.4byte Room_DeepwoodShrine_PotBridge
	.4byte Room_DeepwoodShrine_DoubleStatue
	.4byte Room_DeepwoodShrine_Map
	.4byte Room_DeepwoodShrine_Barrel
	.4byte Room_DeepwoodShrine_Button
	.4byte Room_DeepwoodShrine_Mulldozer
	.4byte Room_DeepwoodShrine_Pillars
	.4byte Room_DeepwoodShrine_Lever
	.4byte Room_DeepwoodShrine_Entrance
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte Room_DeepwoodShrine_Torch
	.4byte Room_DeepwoodShrine_BossKey
	.4byte Room_DeepwoodShrine_Compass
	.4byte Room_DeepwoodShrine_13
	.4byte Room_DeepwoodShrine_LilyPadWest
	.4byte Room_DeepwoodShrine_LilyPadEast
	.4byte 0x0
	.4byte Room_DeepwoodShrine_PreBoss
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte Room_DeepwoodShrine_InsideBarrel

Area_DeepwoodShrineBoss:: @ 080D45A8
	.4byte Room_DeepwoodShrineBoss_Main

Area_CaveOfFlames:: @ 080D45AC
	.4byte Room_CaveOfFlames_AfterCane
	.4byte Room_CaveOfFlames_SpinyChus
	.4byte Room_CaveOfFlames_CartToSpinyChus
	.4byte Room_CaveOfFlames_Entrance
	.4byte Room_CaveOfFlames_MainCart
	.4byte Room_CaveOfFlames_NorthEntrance
	.4byte Room_CaveOfFlames_CartWest
	.4byte Room_CaveOfFlames_Helmasaur
	.4byte Room_CaveOfFlames_Rollobite
	.4byte Room_CaveOfFlames_MinishLava
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte Room_CaveOfFlames_MinishSpikes
	.4byte Room_CaveOfFlames_RollobiteSwitch
	.4byte Room_CaveOfFlames_BeforeGleerok
	.4byte Room_CaveOfFlames_PathBossKey
	.4byte Room_CaveOfFlames_PathBossKey2
	.4byte Room_CaveOfFlames_Compass
	.4byte Room_CaveOfFlames_Bobomb
	.4byte Room_CaveOfFlames_BossDoor
	.4byte Room_CaveOfFlames_18
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte Room_CaveOfFlamesBoss_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_CaveOfFlamesBoss:: @ 080D464C
	.4byte Room_CaveOfFlamesBoss_Main

Area_FortressOfWinds:: @ 080D4650
	.4byte Room_FortressOfWinds_Eyegore
	.4byte Room_FortressOfWinds_BeforeMazaal
	.4byte Room_FortressOfWinds_EastKeyLever
	.4byte Room_FortressOfWinds_PitPlatforms
	.4byte Room_FortressOfWinds_WestKeyLever
	.4byte Room_OuterFortressOfWinds_MoleMitts
	.4byte Room_OuterFortressOfWinds_SmallKey
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte Room_FortressOfWinds_Darknut
	.4byte Room_FortressOfWinds_EyeBridge
	.4byte Room_FortressOfWinds_Pit
	.4byte Room_FortressOfWinds_Wallmaster
	.4byte Room_FortressOfWinds_Clone
	.4byte Room_FortressOfWinds_SpikeTraps
	.4byte Room_FortressOfWinds_Mazaal
	.4byte Room_FortressOfWinds_Stalfos
	.4byte Room_FortressOfWinds_EntranceMoleMitts
	.4byte Room_FortressOfWinds_Main2F
	.4byte Room_FortressOfWinds_MinishHole
	.4byte Room_FortressOfWinds_BossKey
	.4byte Room_FortressOfWinds_WestStairs2F
	.4byte Room_FortressOfWinds_EastStairs2F
	.4byte 0x0
	.4byte 0x0
	.4byte Room_FortressOfWinds_WestStairs1F
	.4byte Room_FortressOfWinds_CenterStairs1F
	.4byte Room_FortressOfWinds_EastStairs1F
	.4byte Room_FortressOfWinds_Wizzrobe
	.4byte Room_FortressOfWinds_HeartPiece

Area_FortressOfWindsTop:: @ 080D46E4
	.4byte Room_FortressOfWindsTop_Main

Area_InnerMazaal:: @ 080D46E8
	.4byte Room_InnerMazaal_Main
	.4byte Room_InnerMazaal_Main

Area_TempleOfDroplets:: @ 080D46F0
	.4byte Room_TempleOfDroplets_WestHole
	.4byte Room_TempleOfDroplets_NorthSplit
	.4byte Room_TempleOfDroplets_EastHole
	.4byte Room_TempleOfDroplets_Entrance
	.4byte Room_TempleOfDroplets_NorthwestStairs
	.4byte Room_TempleOfDroplets_ScissorsMiniboss
	.4byte Room_TempleOfDroplets_WaterfallNorthwest
	.4byte Room_TempleOfDroplets_WaterfallNortheast
	.4byte Room_TempleOfDroplets_Element
	.4byte Room_TempleOfDroplets_IceCorner
	.4byte Room_TempleOfDroplets_IcePitMaze
	.4byte Room_TempleOfDroplets_HoleToBlueChuchu
	.4byte Room_TempleOfDroplets_WaterfallSoutheast
	.4byte Room_TempleOfDroplets_WaterfallSouthwest
	.4byte Room_TempleOfDroplets_BigOcto
	.4byte Room_TempleOfDroplets_ToBigBlueChuchu
	.4byte Room_TempleOfDroplets_BigBlueChuchu
	.4byte Room_TempleOfDroplets_BigBlueChuchuKey
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
	.4byte Room_TempleOfDroplets_BossKey
	.4byte Room_TempleOfDroplets_NorthSmallKey
	.4byte Room_TempleOfDroplets_BlockCloneButtonPuzzle
	.4byte Room_TempleOfDroplets_BlockClonePuzzle
	.4byte Room_TempleOfDroplets_BlockCloneIceBridge
	.4byte Room_TempleOfDroplets_StairsToScissorsMiniboss
	.4byte Room_TempleOfDroplets_SpikeBar
	.4byte Room_TempleOfDroplets_Lanterns
	.4byte Room_TempleOfDroplets_LilypadIceBlocks
	.4byte Room_TempleOfDroplets_Pit
	.4byte Room_TempleOfDroplets_FireBars
	.4byte Room_TempleOfDroplets_LanternMaze
	.4byte Room_TempleOfDroplets_Madderpillars
	.4byte Room_TempleOfDroplets_AfterMadderpillars
	.4byte Room_TempleOfDroplets_BlueChuchuKeyLever
	.4byte Room_TempleOfDroplets_MulldozerKey
	.4byte Room_TempleOfDroplets_BombWall
	.4byte Room_TempleOfDroplets_LilypadWestB2
	.4byte Room_TempleOfDroplets_CompassRoom
	.4byte Room_TempleOfDroplets_LanternScissors
	.4byte Room_TempleOfDroplets_LilypadMiddleB2
	.4byte Room_TempleOfDroplets_LilypadEastB2
	.4byte Room_TempleOfDroplets_FlameBarBlockPuzzle
	.4byte 0x0

Area_RoyalCrypt:: @ 080D47D0
	.4byte Room_RoyalCrypt_KingGustaf
	.4byte Room_RoyalCrypt_WaterRope
	.4byte Room_RoyalCrypt_Gibdo
	.4byte Room_RoyalCrypt_3
	.4byte Room_RoyalCrypt_KeyBlock
	.4byte Room_RoyalCrypt_5
	.4byte Room_RoyalCrypt_6
	.4byte Room_RoyalCrypt_MushroomPit
	.4byte Room_RoyalCrypt_Entrance

Area_PalaceOfWinds:: @ 080D47F4
	.4byte gUnk_080E7364
	.4byte gUnk_080E73E4
	.4byte gUnk_080E74C4
	.4byte gUnk_080E763C
	.4byte gUnk_080E76A4
	.4byte gUnk_080E77D4
	.4byte gUnk_080E7948
	.4byte gUnk_080E7A30
	.4byte gUnk_080E7B10
	.4byte gUnk_080E7C84
	.4byte gUnk_080E7D44
	.4byte gUnk_080E7DEC
	.4byte gUnk_080E7EC4
	.4byte gUnk_080E7F50
	.4byte gUnk_080E8038
	.4byte gUnk_080E8110
	.4byte gUnk_080E8348
	.4byte gUnk_080E83D8
	.4byte gUnk_080E8438
	.4byte gUnk_080E8508
	.4byte gUnk_080E8608
	.4byte gUnk_080E8824
	.4byte gUnk_080E8988
	.4byte gUnk_080E89FC
	.4byte gUnk_080E8BC0
	.4byte gUnk_080E8CB0
	.4byte gUnk_080E8EE4
	.4byte gUnk_080E8F84
	.4byte gUnk_080E904C
	.4byte gUnk_080E90E0
	.4byte gUnk_080E9180
	.4byte gUnk_080E9220
	.4byte gUnk_080E9310
	.4byte gUnk_080E9518
	.4byte gUnk_080E96D4
	.4byte gUnk_080E9828
	.4byte gUnk_080E9A10
	.4byte gUnk_080E9AD0
	.4byte gUnk_080E9B80
	.4byte gUnk_080E9C40
	.4byte gUnk_080E9CD0
	.4byte gUnk_080E9DA8
	.4byte gUnk_080E9E2C
	.4byte gUnk_080E9F20
	.4byte gUnk_080EA214
	.4byte gUnk_080EA2F8
	.4byte gUnk_080EA4BC
	.4byte gUnk_080EA538
	.4byte gUnk_080EA6E8
	.4byte gUnk_080EA7C8
	.4byte gUnk_080EA9E0

Area_PalaceOfWindsBoss:: @ 080D48C0
	.4byte Room_PalaceOfWindsBoss_Main

Area_Sanctuary:: @ 080D48C4
	.4byte Room_Sanctuary_Hall
	.4byte Room_Sanctuary_Main
	.4byte Room_Sanctuary_StainedGlass
	.4byte 0x0
	.4byte Room_Sanctuary_StainedGlass

Area_HyruleCastle:: @ 080D48D8
	.4byte gUnk_080D7380
	.4byte gUnk_080D7498
	.4byte gUnk_080D7650
	.4byte gUnk_080D76E8
	.4byte gUnk_080D7744
	.4byte gUnk_080D778C

Area_SanctuaryEntrance:: @ 080D48F0
	.4byte Room_SanctuaryEntrance_Main

Area_DarkHyruleCastle:: @ 080D48F4
	.4byte gUnk_080EB704
	.4byte gUnk_080EB75C
	.4byte gUnk_080EB7B4
	.4byte gUnk_080EB80C
	.4byte gUnk_080EB864
	.4byte gUnk_080EB9C4
	.4byte gUnk_080EBC14
	.4byte gUnk_080EBC98
	.4byte gUnk_080EBE38
	.4byte gUnk_080EBF40
	.4byte gUnk_080EC038
	.4byte gUnk_080EC0EC
	.4byte gUnk_080EC21C
	.4byte gUnk_080EC28C
	.4byte gUnk_080EC3C4
	.4byte gUnk_080EC4A8
	.4byte gUnk_080EC600
	.4byte gUnk_080EC77C
	.4byte gUnk_080EC7E0
	.4byte gUnk_080EC938
	.4byte gUnk_080ECA1C
	.4byte gUnk_080ECB50
	.4byte gUnk_080ECC44
	.4byte gUnk_080ECD14
	.4byte gUnk_080ECE14
	.4byte gUnk_080ECE64
	.4byte gUnk_080ECF14
	.4byte gUnk_080ECF6C
	.4byte gUnk_080ED00C
	.4byte gUnk_080ED0FC
	.4byte gUnk_080ED174
	.4byte gUnk_080ED2AC
	.4byte gUnk_080ED318
	.4byte gUnk_080ED388
	.4byte gUnk_080ED3D8
	.4byte gUnk_080ED4C8
	.4byte gUnk_080ED588
	.4byte gUnk_080ED648
	.4byte gUnk_080ED720
	.4byte gUnk_080ED8CC
	.4byte gUnk_080ED940
	.4byte gUnk_080ED9F0
	.4byte gUnk_080EDA70
	.4byte gUnk_080EDB20
	.4byte gUnk_080EDBA8
	.4byte gUnk_080EDC40
	.4byte gUnk_080EDCB8
	.4byte gUnk_080EDD68
	.4byte gUnk_080EDE60
	.4byte gUnk_080EDF40
	.4byte gUnk_080EE078
	.4byte gUnk_080EE158
	.4byte gUnk_080EE260
	.4byte gUnk_080EE354
	.4byte gUnk_080EE404
	.4byte gUnk_080EE61C
	.4byte gUnk_080EE66C
	.4byte gUnk_080EE78C
	.4byte gUnk_080EE7EC

Area_VaatisArms:: @ 080D49E0
	.4byte Room_VaatisArms_First
	.4byte Room_VaatisArms_Second

Area_Vaati3:: @ 080D49E8
	.4byte Room_Vaati3_Main
	.4byte Room_Vaati3_Main

Area_Vaati2:: @ 080D49F0
	.4byte Room_Vaati2_Main

Area_DarkHyruleCastleBridge:: @ 080D49F4
	.4byte Room_DarkHyruleCastleBridge_Main

Area_DarkHyruleCastleOutside:: @ 080D49F8
	.4byte Room_DarkHyruleCastleOutside_ZeldaStatuePlatform
	.4byte Room_DarkHyruleCastleOutside_Garden
	.4byte Room_DarkHyruleCastleOutside_OutsideNorthwest
	.4byte Room_DarkHyruleCastleOutside_OutsideNortheast
	.4byte Room_DarkHyruleCastleOutside_OutsideEast
	.4byte Room_DarkHyruleCastleOutside_OutsideSouthwest
	.4byte Room_DarkHyruleCastleOutside_OutsideSouth
	.4byte Room_DarkHyruleCastleOutside_OutsideSoutheast
	.4byte Room_DarkHyruleCastleOutside_8

Area_45:: @ 080D4A1C
	.4byte Area_45_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_4D:: @ 080D4A2C
	.4byte Area_4D_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_57:: @ 080D4A3C
	.4byte Area_57_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_5F:: @ 080D4A4C
	.4byte Area_5F_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_67:: @ 080D4A5C
	.4byte Area_67_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_6F:: @ 080D4A6C
	.4byte Area_6F_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_77:: @ 080D4A7C
	.4byte Area_77_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_7F:: @ 080D4A8C
	.4byte Area_7F_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_87:: @ 080D4A9C
	.4byte Area_87_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_8F:: @ 080D4AAC
	.4byte Area_8F_Main
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_MinishHouseInteriors:: @ 080D4ABC
	.4byte Room_MinishHouseInteriors_GentariMain
	.4byte Room_MinishHouseInteriors_GentariExit
	.4byte Room_MinishHouseInteriors_Festari
	.4byte Room_MinishHouseInteriors_Red
	.4byte Room_MinishHouseInteriors_Green
	.4byte Room_MinishHouseInteriors_Blue
	.4byte Room_MinishHouseInteriors_SideArea
	.4byte Room_MinishHouseInteriors_ShoeMinish
	.4byte Room_MinishHouseInteriors_PotMinish
	.4byte Room_MinishHouseInteriors_BarrelMinish
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte Room_MinishHouseInteriors_MelariMinesSouthwest
	.4byte Room_MinishHouseInteriors_MelariMinesSoutheast
	.4byte Room_MinishHouseInteriors_MelariMinesEast
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
	.4byte Room_MinishHouseInteriors_HyruleFieldSouthwest
	.4byte Room_MinishHouseInteriors_HyruleFieldOutsideLinksHouse
	.4byte Room_MinishHouseInteriors_NextToKnuckle
	.4byte Room_MinishHouseInteriors_Librari
	.4byte Room_MinishHouseInteriors_HyruleFieldExit
	.4byte Room_MinishHouseInteriors_HyruleTown
	.4byte Room_MinishHouseInteriors_MinishWoodsBomb
	.4byte Room_MinishHouseInteriors_LakeHyliaOcarina
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_TownMinishHoles:: @ 080D4B7C
	.4byte Room_TownMinishHoles_MayorsHouse
	.4byte Room_TownMinishHoles_WestOracle
	.4byte Room_TownMinishHoles_DrLeft
	.4byte Room_TownMinishHoles_Carpenter
	.4byte Room_TownMinishHoles_Cafe
	.4byte Room_TownMinishHoles_5
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
	.4byte Room_TownMinishHoles_LibraryBookshelf
	.4byte Room_TownMinishHoles_LibrariBookHouse
	.4byte Room_TownMinishHoles_RemShoeShop
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

Area_HouseInteriors3:: @ 080D4C3C
	.4byte Room_HouseInteriors3_StockwellShop
	.4byte Room_HouseInteriors3_Cafe
	.4byte Room_HouseInteriors3_RemShoeShop
	.4byte Room_HouseInteriors3_Bakery
	.4byte Room_HouseInteriors3_Simon
	.4byte Room_HouseInteriors3_FigurineHouse
	.4byte Room_HouseInteriors3_BorlovEntrance
	.4byte Room_HouseInteriors3_Carlov
	.4byte Room_HouseInteriors3_Borlov
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_HouseInteriors1:: @ 080D4C7C
	.4byte Room_HouseInteriors1_Mayor
	.4byte Room_HouseInteriors1_PostOffice
	.4byte Room_HouseInteriors1_Library2F
	.4byte Room_HouseInteriors1_Library1F
	.4byte Room_HouseInteriors1_Inn1F
	.4byte Room_HouseInteriors1_InnWestRoom
	.4byte Room_HouseInteriors1_InnMiddleRoom
	.4byte Room_HouseInteriors1_InnEastRoom
	.4byte Room_HouseInteriors1_InnWest2F
	.4byte Room_HouseInteriors1_InnEast2F
	.4byte Room_HouseInteriors1_InnMinishHeartPiece
	.4byte Room_HouseInteriors1_SchoolWest
	.4byte Room_HouseInteriors1_SchoolEast
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_HouseInteriors2:: @ 080D4CBC
	.4byte Room_HouseInteriors2_Stranger
	.4byte Room_HouseInteriors2_WestOracle
	.4byte Room_HouseInteriors2_2
	.4byte Room_HouseInteriors2_3
	.4byte Room_HouseInteriors2_DrLeft
	.4byte 0x0
	.4byte Room_HouseInteriors2_Romio
	.4byte Room_HouseInteriors2_Julietta
	.4byte Room_HouseInteriors2_Percy
	.4byte Room_HouseInteriors2_EastOracle
	.4byte Room_HouseInteriors2_A
	.4byte Room_HouseInteriors2_B
	.4byte Room_HouseInteriors2_Cucco
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte Room_HouseInteriors2_LinksHouseEntrance
	.4byte Room_HouseInteriors2_LinksHouseSmith
	.4byte Room_HouseInteriors2_Dampe
	.4byte 0x0
	.4byte Room_HouseInteriors2_Stockwell
	.4byte Room_HouseInteriors2_LinksHouseBedroom
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

Area_HouseInteriors4:: @ 080D4D7C
	.4byte Room_HouseInteriors4_Carpenter
	.4byte Room_HouseInteriors4_Swiftblade
	.4byte Room_HouseInteriors4_RanchHouseWest
	.4byte Room_HouseInteriors4_RanchHouseEast
	.4byte Room_HouseInteriors4_FarmHouse
	.4byte Room_HouseInteriors4_Mayor
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

Area_TreeInteriors:: @ 080D4DBC
	.4byte Room_TreeInteriors_WitchHut
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
	.4byte Room_TreeInteriors_StairsToCarlov
	.4byte Room_TreeInteriors_PercysTreehouse
	.4byte Room_TreeInteriors_HeartPiece
	.4byte Room_TreeInteriors_StairsToBladeBrother
	.4byte Room_TreeInteriors_14
	.4byte Room_TreeInteriors_BoomerangNorthwest
	.4byte Room_TreeInteriors_BoomerangNortheast
	.4byte Room_TreeInteriors_BoomerangSouthwest
	.4byte Room_TreeInteriors_BoomerangSoutheast
	.4byte Room_TreeInteriors_HeartPieceSouthwestField
	.4byte Room_TreeInteriors_StairsToFairyFountain
	.4byte Room_TreeInteriors_StairsToWalletFairy
	.4byte Room_TreeInteriors_1C
	.4byte Room_TreeInteriors_StairsToBusinessScrub
	.4byte Room_TreeInteriors_1E
	.4byte Room_TreeInteriors_1F

Area_Dojos:: @ 080D4E3C
	.4byte Room_Dojos_Grayblade
	.4byte Room_Dojos_Splitblade
	.4byte Room_Dojos_Greatblade
	.4byte Room_Dojos_Scarblade
	.4byte Room_Dojos_Swiftblade
	.4byte Room_Dojos_Grimblade
	.4byte Room_Dojos_Waveblade
	.4byte Room_Dojos_7
	.4byte Room_Dojos_8
	.4byte Room_Dojos_9
	.4byte Room_Dojos_ToGrimblade
	.4byte Room_Dojos_ToSplitblade
	.4byte Room_Dojos_ToGreatblade
	.4byte Room_Dojos_ToScarblade
	.4byte 0x0
	.4byte 0x0

Area_CrenelCaves:: @ 080D4E7C
	.4byte Room_CrenelCaves_BlockPushing
	.4byte Room_CrenelCaves_PillarCave
	.4byte Room_CrenelCaves_BridgeSwitch
	.4byte Room_CrenelCaves_ExitToMines
	.4byte Room_CrenelCaves_GripRing
	.4byte Room_CrenelCaves_FairyFountain
	.4byte Room_CrenelCaves_SpinyChuPuzzle
	.4byte Room_CrenelCaves_ChuchuPotChest
	.4byte Room_CrenelCaves_WaterHeartPiece
	.4byte Room_CrenelCaves_RupeeFairyFountain
	.4byte Room_CrenelCaves_HelmasaurHallway
	.4byte Room_CrenelCaves_MushroomKeese
	.4byte Room_CrenelCaves_LadderToGreenWater
	.4byte Room_CrenelCaves_BombBusinessScrub
	.4byte Room_CrenelCaves_Hermit
	.4byte Room_CrenelCaves_HintScrub
	.4byte Room_CrenelCaves_ToGrayblade

Area_MinishCracks:: @ 080D4EC0
	.4byte Room_MinishCracks_LonLonRanchNorth
	.4byte Room_MinishCracks_LakeHyliaEast
	.4byte Room_MinishCracks_HyruleCastleGarden
	.4byte Room_MinishCracks_MtCrenel
	.4byte Room_MinishCracks_EastHyruleCastle
	.4byte Room_MinishCracks_5
	.4byte Room_MinishCracks_CastleWildsBowHole
	.4byte Room_MinishCracks_RuinsEntrance
	.4byte Room_MinishCracks_MinishWoodsSouth
	.4byte Room_MinishCracks_CastorWildsNorth
	.4byte Room_MinishCracks_CastorWildsWest
	.4byte Room_MinishCracks_CastorWildsMiddle
	.4byte Room_MinishCracks_RuinsTektite
	.4byte Room_MinishCracks_CastorWildsNextToBow
	.4byte Room_MinishCracks_E
	.4byte Room_MinishCracks_F
	.4byte Room_MinishCracks_10
	.4byte Room_MinishCracks_11
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_MinishRafters:: @ 080D4F20
	.4byte Room_MinishRafters_Cafe
	.4byte Room_MinishRafters_Stockwell
	.4byte Room_MinishRafters_DrLeft
	.4byte Room_MinishRafters_Bakery

Area_EzloCutscene:: @ 080D4F30
	.4byte Area_EzloCutscene_Main

Area_WindTribeTower:: @ 080D4F34
	.4byte Room_WindTribeTower_Entrance
	.4byte Room_WindTribeTower_Floor2
	.4byte Room_WindTribeTower_Floor3
	.4byte Room_WindTribeTower_Floor4

Area_WindTribeTowerRoof:: @ 080D4F44
	.4byte Area_WindTribeTowerRoof_Main

Area_GoronCave:: @ 080D4F48
	.4byte Room_GoronCave_StairsToCave
	.4byte Room_GoronCave_Main

Area_Caves:: @ 080D4F50
	.4byte Room_Caves_Boomerang
	.4byte Room_Caves_ToGraveyard
	.4byte Room_Caves_2
	.4byte Room_Caves_3
	.4byte Room_Caves_4
	.4byte Room_Caves_5
	.4byte Room_Caves_6
	.4byte Room_Caves_KeeseChest
	.4byte Room_Caves_FairyFountainTrilbyHighlands
	.4byte Room_Caves_FairyFountainLinksHouse
	.4byte Room_Caves_A
	.4byte Room_Caves_HyruleTownWaterfall
	.4byte Room_Caves_LonLonRanch
	.4byte Room_Caves_LonLonRanchSecret
	.4byte Room_Caves_TrilbyHighlands
	.4byte Room_Caves_LonLonRanchWallet
	.4byte Room_Caves_RupeeLinksHouse
	.4byte Room_Caves_RupeeTrilbyHighlands
	.4byte Room_Caves_FairyFountainMoleMitts
	.4byte Room_Caves_KeeseChestSoutheastHyrule
	.4byte Room_Caves_BottleBusinessScrub
	.4byte Room_Caves_HeartPieceHallway
	.4byte Room_Caves_FairyFountainBoomerang
	.4byte Room_Caves_KinstoneBusinessScrub

Area_VeilFallsCaves:: @ 080D4FB0
	.4byte Room_VeilFallsCaves_Hallway2F
	.4byte Room_VeilFallsCaves_Hallway1F
	.4byte Room_VeilFallsCaves_SecretRoom
	.4byte Room_VeilFallsCaves_Entrance
	.4byte Room_VeilFallsCaves_Exit
	.4byte Room_VeilFallsCaves_SecretChest
	.4byte Room_VeilFallsCaves_SecretStaircases
	.4byte Room_VeilFallsCaves_BlockPuzzle
	.4byte Room_VeilFallsCaves_RupeePath
	.4byte Room_VeilFallsCaves_HeartPiece

Area_RoyalValleyGraves:: @ 080D4FD8
	.4byte Room_RoyalValleyGraves_HeartPiece
	.4byte Room_RoyalValleyGraves_Gina

Area_MinishCaves:: @ 080D4FE0
	.4byte Room_MinishCaves_BeanPesto
	.4byte Room_MinishCaves_SoutheastWater1
	.4byte Room_MinishCaves_SoutheastWater2
	.4byte Room_MinishCaves_Ruins
	.4byte Room_MinishCaves_OutsideLinksHouse
	.4byte Room_MinishCaves_MinishWoodsNorth1
	.4byte Room_MinishCaves_MinishWoodsNorth2
	.4byte Room_MinishCaves_LakeHyliaNorth
	.4byte Room_MinishCaves_LakeHyliaLibrari
	.4byte Room_MinishCaves_MinishWoodsSouthwest

Area_CastleGardenMinishHoles:: @ 080D5008
	.4byte Room_CastleGardenMinishHoles_East
	.4byte Room_CastleGardenMinishHoles_West

Area_37:: @ 080D5010
	.4byte Room_37_0
	.4byte Room_37_1

Area_40:: @ 080D5018
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

Area_SimonsSimulation:: @ 080D5058
	.4byte Area_SimonsSimulation_Main

Area_HyruleCastleCellar:: @ 080D505C
	.4byte Room_GreatFairies_Entrance
	.4byte Room_GreatFairies_Exit

Area_GreatFairies:: @ 080D5064
	.4byte Room_GreatFairies_Graveyard
	.4byte Room_GreatFairies_MinishWoods
	.4byte Room_GreatFairies_MtCrenel
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_GardenFountains:: @ 080D5084
	.4byte Room_GardenFountains_East
	.4byte Room_GardenFountains_West

Area_CastorCaves:: @ 080D508C
	.4byte Room_CastorCaves_South
	.4byte Room_CastorCaves_North
	.4byte Room_CastorCaves_WindRuins
	.4byte Room_CastorCaves_Darknut
	.4byte Room_CastorCaves_HeartPiece
	.4byte 0x0
	.4byte 0x0
	.4byte 0x0

Area_CastorDarknut:: @ 080D50AC
	.4byte Room_CastorDarknut_Main
	.4byte Room_CastorDarknut_Hall
	.4byte 0x0
	.4byte 0x0

Area_ArmosInteriors:: @ 080D50BC
	.4byte Room_ArmosInteriors_RuinsEntranceNorth
	.4byte Room_ArmosInteriors_RuinsEntranceSouth
	.4byte Room_ArmosInteriors_RuinsLeft
	.4byte Room_ArmosInteriors_RuinsMiddleLeft
	.4byte Room_ArmosInteriors_RuinsMiddleRight
	.4byte Room_ArmosInteriors_RuinsRight
	.4byte Room_ArmosInteriors_6
	.4byte Room_ArmosInteriors_RuinsGrassPath
	.4byte Room_ArmosInteriors_8
	.4byte Room_ArmosInteriors_FortressOfWindsLeft
	.4byte Room_ArmosInteriors_FortressOfWindsRight

Area_47:: @ 080D50E8
	.4byte Room_47_0
	.4byte Room_47_1
	.4byte Room_47_2
	.4byte Room_47_3
	.4byte Room_47_4

gAreaTable:: @ 080D50FC
	.4byte Area_MinishWoods             @ 0x0
	.4byte Area_MinishVillage           @ 0x1
	.4byte Area_HyruleTown              @ 0x2
	.4byte Area_HyruleField             @ 0x3
	.4byte Area_CastorWilds             @ 0x4
	.4byte Area_Ruins                   @ 0x5
	.4byte Area_MtCrenel                @ 0x6
	.4byte Area_CastleGarden            @ 0x7
	.4byte Area_CloudTops               @ 0x8
	.4byte Area_RoyalValley             @ 0x9
	.4byte Area_VeilFalls               @ 0xA
	.4byte Area_LakeHylia               @ 0xB
	.4byte Area_LakeWoodsCave           @ 0xC
	.4byte Area_Beanstalks              @ 0xD
	.4byte Area_Empty                   @ 0xE
	.4byte Area_HyruleDigCaves          @ 0xF
	.4byte Area_MelarisMine             @ 0x10
	.4byte Area_MinishPaths1            @ 0x11
	.4byte Area_CrenelMinishPaths       @ 0x12
	.4byte Area_DigCaves1               @ 0x13
	.4byte Area_CrenelDigCave           @ 0x14
	.4byte Area_FestivalTown            @ 0x15
	.4byte Area_VeilFallsDigCave        @ 0x16
	.4byte Area_CastorWildsDigCave      @ 0x17
	.4byte Area_OuterFortressOfWinds    @ 0x18
	.4byte Area_HyliaDigCaves           @ 0x19
	.4byte Area_VeilFallsTop            @ 0x1A
	.4byte 0x0                                       @ 0x1B
	.4byte 0x0                                       @ 0x1C
	.4byte 0x0                                       @ 0x1D
	.4byte 0x0                                       @ 0x1E
	.4byte 0x0                                       @ 0x1F
	.4byte Area_MinishHouseInteriors    @ 0x20
	.4byte Area_HouseInteriors1         @ 0x21
	.4byte Area_HouseInteriors2         @ 0x22
	.4byte Area_HouseInteriors3         @ 0x23
	.4byte Area_TreeInteriors           @ 0x24
	.4byte Area_Dojos                   @ 0x25
	.4byte Area_CrenelCaves             @ 0x26
	.4byte Area_MinishCracks            @ 0x27
	.4byte Area_HouseInteriors4         @ 0x28
	.4byte Area_GreatFairies            @ 0x29
	.4byte Area_CastorCaves             @ 0x2A
	.4byte Area_CastorDarknut           @ 0x2B
	.4byte Area_ArmosInteriors          @ 0x2C
	.4byte Area_TownMinishHoles         @ 0x2D
	.4byte Area_MinishRafters           @ 0x2E
	.4byte Area_GoronCave               @ 0x2F
	.4byte Area_WindTribeTower          @ 0x30
	.4byte Area_WindTribeTowerRoof      @ 0x31
	.4byte Area_Caves                   @ 0x32
	.4byte Area_VeilFallsCaves          @ 0x33
	.4byte Area_RoyalValleyGraves       @ 0x34
	.4byte Area_MinishCaves             @ 0x35
	.4byte Area_CastleGardenMinishHoles @ 0x36
	.4byte Area_37                      @ 0x37
	.4byte Area_EzloCutscene            @ 0x38
	.4byte 0x0                                       @ 0x39
	.4byte 0x0                                       @ 0x3A
	.4byte 0x0                                       @ 0x3B
	.4byte 0x0                                       @ 0x3C
	.4byte 0x0                                       @ 0x3D
	.4byte 0x0                                       @ 0x3E
	.4byte 0x0                                       @ 0x3F
	.4byte Area_40                      @ 0x40
	.4byte Area_HyruleTownUnderground   @ 0x41
	.4byte Area_GardenFountains         @ 0x42
	.4byte Area_HyruleCastleCellar      @ 0x43
	.4byte Area_SimonsSimulation        @ 0x44
	.4byte Area_45                      @ 0x45
	.4byte 0x0                                       @ 0x46
	.4byte Area_47                      @ 0x47
	.4byte Area_DeepwoodShrine          @ 0x48
	.4byte Area_DeepwoodShrineBoss      @ 0x49
	.4byte Area_DeepwoodShrineEntry     @ 0x4A
	.4byte 0x0                                       @ 0x4B
	.4byte 0x0                                       @ 0x4C
	.4byte Area_4D                      @ 0x4D
	.4byte 0x0                                       @ 0x4E
	.4byte 0x0                                       @ 0x4F
	.4byte Area_CaveOfFlames            @ 0x50
	.4byte Area_CaveOfFlamesBoss        @ 0x51
	.4byte 0x0                                       @ 0x52
	.4byte 0x0                                       @ 0x53
	.4byte 0x0                                       @ 0x54
	.4byte 0x0                                       @ 0x55
	.4byte 0x0                                       @ 0x56
	.4byte Area_57                      @ 0x57
	.4byte Area_FortressOfWinds         @ 0x58
	.4byte Area_FortressOfWindsTop      @ 0x59
	.4byte Area_InnerMazaal             @ 0x5A
	.4byte 0x0                                       @ 0x5B
	.4byte 0x0                                       @ 0x5C
	.4byte 0x0                                       @ 0x5D
	.4byte 0x0                                       @ 0x5E
	.4byte Area_5F                      @ 0x5F
	.4byte Area_TempleOfDroplets        @ 0x60
	.4byte 0x0                                       @ 0x61
	.4byte Area_HyruleTownMinishCaves   @ 0x62
	.4byte 0x0                                       @ 0x63
	.4byte 0x0                                       @ 0x64
	.4byte 0x0                                       @ 0x65
	.4byte 0x0                                       @ 0x66
	.4byte Area_67                      @ 0x67
	.4byte Area_RoyalCrypt              @ 0x68
	.4byte 0x0                                       @ 0x69
	.4byte 0x0                                       @ 0x6A
	.4byte 0x0                                       @ 0x6B
	.4byte 0x0                                       @ 0x6C
	.4byte 0x0                                       @ 0x6D
	.4byte 0x0                                       @ 0x6E
	.4byte Area_6F                      @ 0x6F
	.4byte Area_PalaceOfWinds           @ 0x70
	.4byte Area_PalaceOfWindsBoss       @ 0x71
	.4byte 0x0                                       @ 0x72
	.4byte 0x0                                       @ 0x73
	.4byte 0x0                                       @ 0x74
	.4byte 0x0                                       @ 0x75
	.4byte 0x0                                       @ 0x76
	.4byte Area_77                      @ 0x77
	.4byte Area_Sanctuary               @ 0x78
	.4byte 0x0                                       @ 0x79
	.4byte 0x0                                       @ 0x7A
	.4byte 0x0                                       @ 0x7B
	.4byte 0x0                                       @ 0x7C
	.4byte 0x0                                       @ 0x7D
	.4byte 0x0                                       @ 0x7E
	.4byte Area_7F                      @ 0x7F
	.4byte Area_HyruleCastle            @ 0x80
	.4byte Area_SanctuaryEntrance       @ 0x81
	.4byte 0x0                                       @ 0x82
	.4byte 0x0                                       @ 0x83
	.4byte 0x0                                       @ 0x84
	.4byte 0x0                                       @ 0x85
	.4byte 0x0                                       @ 0x86
	.4byte Area_87                      @ 0x87
	.4byte Area_DarkHyruleCastle        @ 0x88
	.4byte Area_DarkHyruleCastleOutside @ 0x89
	.4byte Area_VaatisArms              @ 0x8A
	.4byte Area_Vaati3                  @ 0x8B
	.4byte Area_Vaati2                  @ 0x8C
	.4byte Area_DarkHyruleCastleBridge  @ 0x8D
	.4byte 0x0                                       @ 0x8E
	.4byte Area_8F                      @ 0x8F
