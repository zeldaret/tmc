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


unusedLabel_0D533C::
	.incbin "data_080D5360/unusedLabel_0D533C.bin"
@ Entities in Rooms

gUnk_080D5360:: @ 080D5360
	.incbin "data_080D5360/gUnk_080D5360.bin"

gUnk_080D53A0:: @ 080D53A0
	.incbin "data_080D5360/gUnk_080D53A0.bin"

gUnk_080D53B0:: @ 080D53B0
	.incbin "data_080D5360/gUnk_080D53B0.bin"

Room_ArmosInteriors_RuinsEntranceNorth:: @ 080D53B8
	.4byte gUnk_080D5360
	.incbin "data_080D5360/Room_ArmosInteriors_RuinsEntranceNorth.bin"
	.4byte gUnk_080D53A0
	.4byte gUnk_080D53B0
	.incbin "data_080D5360/Room_ArmosInteriors_RuinsEntranceNorth_1.bin"
	.4byte sub_0804B3CC
	.4byte sub_0804B3D0

gUnk_080D53D8:: @ 080D53D8
	.incbin "data_080D5360/gUnk_080D53D8.bin"

gUnk_080D5418:: @ 080D5418
	.incbin "data_080D5360/gUnk_080D5418.bin"

gUnk_080D5428:: @ 080D5428
	.incbin "data_080D5360/gUnk_080D5428.bin"

Room_ArmosInteriors_RuinsEntranceSouth:: @ 080D5430
	.4byte gUnk_080D53D8
	.4byte 00000000
	.4byte gUnk_080D5418
	.4byte gUnk_080D5428
	.4byte 00000000
	.4byte 00000000
	.4byte sub_0804B3DC
	.4byte sub_0804B3E0

gUnk_080D5450:: @ 080D5450
	.incbin "data_080D5360/gUnk_080D5450.bin"

gUnk_080D5490:: @ 080D5490
	.incbin "data_080D5360/gUnk_080D5490.bin"

gUnk_080D54A0:: @ 080D54A0
	.incbin "data_080D5360/gUnk_080D54A0.bin"

Room_ArmosInteriors_RuinsLeft:: @ 080D54A8
	.4byte gUnk_080D5450
	.4byte 0x00000000
	.4byte gUnk_080D5490
	.4byte gUnk_080D54A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B3EC
	.4byte sub_0804B3F0

gUnk_080D54C8:: @ 080D54C8
	.incbin "data_080D5360/gUnk_080D54C8.bin"

gUnk_080D5508:: @ 080D5508
	.incbin "data_080D5360/gUnk_080D5508.bin"

gUnk_080D5518:: @ 080D5518
	.incbin "data_080D5360/gUnk_080D5518.bin"

Room_ArmosInteriors_RuinsMiddleLeft:: @ 080D5520
	.4byte gUnk_080D54C8
	.4byte 0x00000000
	.4byte gUnk_080D5508
	.4byte gUnk_080D5518
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B3FC
	.4byte sub_0804B400

gUnk_080D5540:: @ 080D5540
	.incbin "data_080D5360/gUnk_080D5540.bin"

gUnk_080D5580:: @ 080D5580
	.incbin "data_080D5360/gUnk_080D5580.bin"

gUnk_080D5590:: @ 080D5590
	.incbin "data_080D5360/gUnk_080D5590.bin"

Room_ArmosInteriors_RuinsMiddleRight:: @ 080D5598
	.4byte gUnk_080D5540
	.4byte 0x00000000
	.4byte gUnk_080D5580
	.4byte gUnk_080D5590
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B40C
	.4byte sub_0804B410

gUnk_080D55B8:: @ 080D55B8
	.incbin "data_080D5360/gUnk_080D55B8.bin"

gUnk_080D55F8:: @ 080D55F8
	.incbin "data_080D5360/gUnk_080D55F8.bin"

gUnk_080D5608:: @ 080D5608
	.incbin "data_080D5360/gUnk_080D5608.bin"

Room_ArmosInteriors_RuinsRight:: @ 080D5610
	.4byte gUnk_080D55B8
	.4byte 0x00000000
	.4byte gUnk_080D55F8
	.4byte gUnk_080D5608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B41C
	.4byte sub_0804B420

gUnk_080D5630:: @ 080D5630
	.incbin "data_080D5360/gUnk_080D5630.bin"

gUnk_080D5670:: @ 080D5670
	.incbin "data_080D5360/gUnk_080D5670.bin"

gUnk_080D5680:: @ 080D5680
	.incbin "data_080D5360/gUnk_080D5680.bin"

Room_ArmosInteriors_6:: @ 080D5688
	.4byte gUnk_080D5630
	.4byte 0x00000000
	.4byte gUnk_080D5670
	.4byte gUnk_080D5680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B42C
	.4byte sub_0804B430

gUnk_080D56A8:: @ 080D56A8
	.incbin "data_080D5360/gUnk_080D56A8.bin"

gUnk_080D56E8:: @ 080D56E8
	.incbin "data_080D5360/gUnk_080D56E8.bin"

gUnk_080D56F8:: @ 080D56F8
	.incbin "data_080D5360/gUnk_080D56F8.bin"

Room_ArmosInteriors_RuinsGrassPath:: @ 080D5700
	.4byte gUnk_080D56A8
	.4byte 0x00000000
	.4byte gUnk_080D56E8
	.4byte gUnk_080D56F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B43C
	.4byte sub_0804B440

gUnk_080D5720:: @ 080D5720
	.incbin "data_080D5360/gUnk_080D5720.bin"

gUnk_080D5760:: @ 080D5760
	.incbin "data_080D5360/gUnk_080D5760.bin"

gUnk_080D5770:: @ 080D5770
	.incbin "data_080D5360/gUnk_080D5770.bin"

Room_ArmosInteriors_8:: @ 080D5778
	.4byte gUnk_080D5720
	.4byte 0x00000000
	.4byte gUnk_080D5760
	.4byte gUnk_080D5770
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B44C
	.4byte sub_0804B450

gUnk_080D5798:: @ 080D5798
	.incbin "data_080D5360/gUnk_080D5798.bin"

gUnk_080D57D8:: @ 080D57D8
	.incbin "data_080D5360/gUnk_080D57D8.bin"

gUnk_080D57E8:: @ 080D57E8
	.incbin "data_080D5360/gUnk_080D57E8.bin"

Room_ArmosInteriors_FortressOfWindsLeft:: @ 080D57F0
	.4byte gUnk_080D5798
	.4byte 0x00000000
	.4byte gUnk_080D57D8
	.4byte gUnk_080D57E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B45C
	.4byte sub_0804B460

gUnk_080D5810:: @ 080D5810
	.incbin "data_080D5360/gUnk_080D5810.bin"

gUnk_080D5850:: @ 080D5850
	.incbin "data_080D5360/gUnk_080D5850.bin"

gUnk_080D5860:: @ 080D5860
	.incbin "data_080D5360/gUnk_080D5860.bin"

Room_ArmosInteriors_FortressOfWindsRight:: @ 080D5868
	.4byte gUnk_080D5810
	.4byte 0x00000000
	.4byte gUnk_080D5850
	.4byte gUnk_080D5860
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B478
	.4byte sub_0804B47C

gUnk_080D5888:: @ 080D5888
	.incbin "data_080D5360/gUnk_080D5888.bin"

gUnk_080D58A8:: @ 080D58A8
	.incbin "data_080D5360/gUnk_080D58A8.bin"

gUnk_080D5908:: @ 080D5908
	.incbin "data_080D5360/gUnk_080D5908.bin"

gUnk_080D5938:: @ 080D5938
	.incbin "data_080D5360/gUnk_080D5938.bin"

Room_CrenelMinishPaths_CrenelBean:: @ 080D5948
	.4byte gUnk_080D5888
	.4byte gUnk_080D58A8
	.4byte gUnk_080D5908
	.4byte gUnk_080D5938
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B494
	.4byte sub_0804B498

gUnk_080D5968:: @ 080D5968
	.incbin "data_080D5360/gUnk_080D5968.bin"

gUnk_080D5978:: @ 080D5978
	.incbin "data_080D5360/gUnk_080D5978.bin"

gUnk_080D5A28:: @ 080D5A28
.ifdef EU
    @ TODO data added in between
	.incbin "data_080D5360/gUnk_080D5A28_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D5A28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080D5A98:: @ 080D5A98
	.incbin "data_080D5360/gUnk_080D5A98.bin"

Room_CrenelMinishPaths_CrenelWater:: @ 080D5AA8
	.4byte gUnk_080D5968
	.4byte gUnk_080D5978
	.4byte gUnk_080D5A28
	.4byte gUnk_080D5A98
	.4byte sub_0804B4B8
	.4byte 0x00000000
	.4byte sub_0804B4A8
	.4byte sub_0804B4AC

gUnk_080D5AC8:: @ 080D5AC8
	.incbin "data_080D5360/gUnk_080D5AC8.bin"

gUnk_080D5AE8:: @ 080D5AE8
	.incbin "data_080D5360/gUnk_080D5AE8.bin"

gUnk_080D5B18:: @ 080D5B18
	.incbin "data_080D5360/gUnk_080D5B18.bin"

gUnk_080D5B28:: @ 080D5B28
	.incbin "data_080D5360/gUnk_080D5B28.bin"

Room_CrenelMinishPaths_Rainfall:: @ 080D5B38
	.4byte gUnk_080D5AC8
	.4byte gUnk_080D5AE8
	.4byte gUnk_080D5B18
	.4byte gUnk_080D5B28
	.4byte sub_0804B4D4
	.4byte 0x00000000
	.4byte sub_0804B4C4
	.4byte sub_0804B4C8

gUnk_080D5B58:: @ 080D5B58
	.incbin "data_080D5360/gUnk_080D5B58.bin"

gUnk_080D5B68:: @ 080D5B68
	.incbin "data_080D5360/gUnk_080D5B68.bin"

gUnk_080D5B98:: @ 080D5B98
	.incbin "data_080D5360/gUnk_080D5B98.bin"

gUnk_080D5C28:: @ 080D5C28
	.incbin "data_080D5360/gUnk_080D5C28.bin"

Room_CrenelMinishPaths_MelarisMine:: @ 080D5C38
	.4byte gUnk_080D5B58
	.4byte gUnk_080D5B68
	.4byte gUnk_080D5B98
	.4byte gUnk_080D5C28
	.4byte sub_0804B500
	.4byte 0x00000000
	.4byte sub_0804B4E0
	.4byte sub_0804B4E4

gUnk_080D5C58:: @ 080D5C58
	.incbin "data_080D5360/gUnk_080D5C58.bin"

gUnk_080D5C68:: @ 080D5C68
	.incbin "data_080D5360/gUnk_080D5C68.bin"

gUnk_080D5CF8:: @ 080D5CF8
	.incbin "data_080D5360/gUnk_080D5CF8.bin"

gUnk_080D5D08:: @ 080D5D08
	.incbin "data_080D5360/gUnk_080D5D08.bin"

Room_MinishPaths1_ToMinishVillage:: @ 080D5D18
	.4byte gUnk_080D5C58
	.4byte gUnk_080D5C68
	.4byte gUnk_080D5CF8
	.4byte gUnk_080D5D08
	.4byte sub_0804B51C
	.4byte 0x00000000
	.4byte sub_0804B50C
	.4byte sub_0804B510

gUnk_080D5D38:: @ 080D5D38
	.incbin "data_080D5360/gUnk_080D5D38.bin"

gUnk_080D5D68:: @ 080D5D68
	.incbin "data_080D5360/gUnk_080D5D68.bin"

gUnk_080D5DB8:: @ 080D5DB8
	.incbin "data_080D5360/gUnk_080D5DB8.bin"

gUnk_080D5DC8:: @ 080D5DC8
	.incbin "data_080D5360/gUnk_080D5DC8.bin"

Room_MinishPaths1_CastorWilds:: @ 080D5DD8
	.4byte gUnk_080D5D38
	.4byte gUnk_080D5D68
	.4byte gUnk_080D5DB8
	.4byte gUnk_080D5DC8
	.4byte sub_0804B538
	.4byte 0x00000000
	.4byte sub_0804B528
	.4byte sub_0804B52C

gUnk_080D5DF8:: @ 080D5DF8
	.incbin "data_080D5360/gUnk_080D5DF8.bin"

gUnk_080D5E18:: @ 080D5E18
	.incbin "data_080D5360/gUnk_080D5E18.bin"

gUnk_080D5F28:: @ 080D5F28
	.incbin "data_080D5360/gUnk_080D5F28.bin"

gUnk_080D5F48:: @ 080D5F48
	.incbin "data_080D5360/gUnk_080D5F48.bin"

Room_MinishPaths1_HyruleTown:: @ 080D5F70
	.4byte gUnk_080D5DF8
	.4byte gUnk_080D5E18
	.4byte gUnk_080D5F28
	.4byte gUnk_080D5F48
	.4byte sub_0804B554
	.4byte 0x00000000
	.4byte sub_0804B544
	.4byte sub_0804B548

gUnk_080D5F90:: @ 080D5F90
	.incbin "data_080D5360/gUnk_080D5F90.bin"

gUnk_080D5FB0:: @ 080D5FB0
	.incbin "data_080D5360/gUnk_080D5FB0.bin"

gUnk_080D6010:: @ 080D6010
	.incbin "data_080D5360/gUnk_080D6010.bin"

gUnk_080D6070:: @ 080D6070
	.incbin "data_080D5360/gUnk_080D6070.bin"

Room_MinishPaths1_LonLonRanch:: @ 080D6078
	.4byte gUnk_080D5F90
	.4byte gUnk_080D5FB0
	.4byte gUnk_080D6010
	.4byte gUnk_080D6070
	.4byte sub_0804B570
	.4byte 0x00000000
	.4byte sub_0804B560
	.4byte sub_0804B564

gUnk_080D6098:: @ 080D6098
	.incbin "data_080D5360/gUnk_080D6098.bin"

gUnk_080D60C8:: @ 080D60C8
	.incbin "data_080D5360/gUnk_080D60C8.bin"

gUnk_080D6138:: @ 080D6138
	.incbin "data_080D5360/gUnk_080D6138.bin"

gUnk_080D6198:: @ 080D6198
	.incbin "data_080D5360/gUnk_080D6198.bin"

Room_MinishPaths1_MayorsCabin:: @ 080D61A0
	.4byte gUnk_080D6098
	.4byte gUnk_080D60C8
	.4byte 0x00000000
	.4byte gUnk_080D6198
	.4byte sub_0804B5AC
	.4byte 0x00000000
	.4byte sub_0804B57C
	.4byte sub_0804B580

gUnk_080D61C0:: @ 080D61C0
	.incbin "data_080D5360/gUnk_080D61C0.bin"
	.4byte script_0800EA54
	.incbin "data_080D5360/gUnk_080D61C0_1.bin"

gUnk_080D6210:: @ 080D6210
	.incbin "data_080D5360/gUnk_080D6210.bin"

gUnk_080D6260:: @ 080D6260
	.incbin "data_080D5360/gUnk_080D6260.bin"

gUnk_080D62D0:: @ 080D62D0
	.incbin "data_080D5360/gUnk_080D62D0.bin"

gUnk_080D62E0:: @ 080D62E0
	.incbin "data_080D5360/gUnk_080D62E0.bin"

gUnk_080D62E8:: @ 080D62E8
	.incbin "data_080D5360/gUnk_080D62E8.bin"

Room_HouseInteriors1_Mayor:: @ 080D62FC
	.4byte gUnk_080D61C0
	.4byte gUnk_080D6260
	.4byte gUnk_080D62D0
	.4byte gUnk_080D62E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B5B8
	.4byte sub_0804B5BC
	.4byte gUnk_080D62E8

gUnk_080D6320:: @ 080D6320
	.incbin "data_080D5360/gUnk_080D6320.bin"
	.4byte script_08010794
	.incbin "data_080D5360/gUnk_080D6320_1.bin"

gUnk_080D6340:: @ 080D6340
	.incbin "data_080D5360/gUnk_080D6340.bin"
	.4byte script_08010734
	.incbin "data_080D5360/gUnk_080D6340_1.bin"

gUnk_080D6360:: @ 080D6360
	.incbin "data_080D5360/gUnk_080D6360.bin"

gUnk_080D6380:: @ 080D6380
	.incbin "data_080D5360/gUnk_080D6380.bin"

gUnk_080D63A0:: @ 080D63A0
	.incbin "data_080D5360/gUnk_080D63A0.bin"

gUnk_080D63C0:: @ 080D63C0
	.incbin "data_080D5360/gUnk_080D63C0.bin"

gUnk_080D63E0:: @ 080D63E0
	.incbin "data_080D5360/gUnk_080D63E0.bin"

gUnk_080D6400:: @ 080D6400
	.incbin "data_080D5360/gUnk_080D6400.bin"

gUnk_080D6420:: @ 080D6420
	.incbin "data_080D5360/gUnk_080D6420.bin"

gUnk_080D6440:: @ 080D6440
	.incbin "data_080D5360/gUnk_080D6440.bin"

gUnk_080D6460:: @ 080D6460
	.incbin "data_080D5360/gUnk_080D6460.bin"

gUnk_080D64E0:: @ 080D64E0
	.incbin "data_080D5360/gUnk_080D64E0.bin"

gUnk_080D64F0:: @ 080D64F0
	.incbin "data_080D5360/gUnk_080D64F0.bin"

gUnk_080D64F8:: @ 080D64F8
	.incbin "data_080D5360/gUnk_080D64F8.bin"

gUnk_080D6508:: @ 080D6508
	.incbin "data_080D5360/gUnk_080D6508.bin"

Room_HouseInteriors1_PostOffice:: @ 080D6518
	.4byte gUnk_080D6320
	.4byte gUnk_080D6460
	.4byte gUnk_080D64E0
	.4byte gUnk_080D64F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B5D8
	.4byte sub_0804B5DC

gUnk_080D6538:: @ 080D6538
	.incbin "data_080D5360/gUnk_080D6538.bin"

gUnk_080D6558:: @ 080D6558
	.incbin "data_080D5360/gUnk_080D6558.bin"

gUnk_080D6578:: @ 080D6578
	.incbin "data_080D5360/gUnk_080D6578.bin"
	.4byte script_0800ED5C
	.incbin "data_080D5360/gUnk_080D6578_1.bin"

gUnk_080D6598:: @ 080D6598
	.incbin "data_080D5360/gUnk_080D6598.bin"

gUnk_080D6618:: @ 080D6618
	.incbin "data_080D5360/gUnk_080D6618.bin"

gUnk_080D6638:: @ 080D6638
	.incbin "data_080D5360/gUnk_080D6638.bin"

gUnk_080D6658:: @ 080D6658
	.incbin "data_080D5360/gUnk_080D6658.bin"

gUnk_080D6668:: @ 080D6668
	.incbin "data_080D5360/gUnk_080D6668.bin"

gUnk_080D6670:: @ 080D6670
	.incbin "data_080D5360/gUnk_080D6670.bin"

gUnk_080D6684:: @ 080D6684
	.incbin "data_080D5360/gUnk_080D6684.bin"

gUnk_080D6694:: @ 080D6694
	.incbin "data_080D5360/gUnk_080D6694.bin"

Room_HouseInteriors1_Library2F:: @ 080D66A8
	.4byte gUnk_080D6538
	.4byte gUnk_080D6598
	.4byte gUnk_080D6658
	.4byte gUnk_080D6668
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B6EC
	.4byte sub_0804B6F0
	.4byte gUnk_080D6670
	.4byte gUnk_080D6684
	.4byte gUnk_080D6694

gUnk_080D66D4:: @ 080D66D4
	.incbin "data_080D5360/gUnk_080D66D4.bin"
	.4byte script_08008B5C
	.incbin "data_080D5360/gUnk_080D66D4_1.bin"

gUnk_080D66F4:: @ 080D66F4
	.incbin "data_080D5360/gUnk_080D66F4.bin"
	.4byte script_08008B90
	.incbin "data_080D5360/gUnk_080D66F4_1.bin"

gUnk_080D6714:: @ 080D6714
	.incbin "data_080D5360/gUnk_080D6714.bin"
	.4byte script_08008D8C
	.incbin "data_080D5360/gUnk_080D6714_1.bin"

gUnk_080D6734:: @ 080D6734
	.incbin "data_080D5360/gUnk_080D6734.bin"
	.4byte script_08008BC0
	.incbin "data_080D5360/gUnk_080D6734_1.bin"

gUnk_080D6784:: @ 080D6784
	.incbin "data_080D5360/gUnk_080D6784.bin"
	.4byte script_08008D50
	.incbin "data_080D5360/gUnk_080D6784_1.bin"
	.4byte script_08008C64
	.incbin "data_080D5360/gUnk_080D6784_2.bin"

gUnk_080D67B4:: @ 080D67B4
	.incbin "data_080D5360/gUnk_080D67B4.bin"

gUnk_080D68A4:: @ 080D68A4
	.incbin "data_080D5360/gUnk_080D68A4.bin"

gUnk_080D68B4:: @ 080D68B4
	.incbin "data_080D5360/gUnk_080D68B4.bin"

Room_HouseInteriors1_Library1F:: @ 080D68CC
	.4byte gUnk_080D66D4
	.4byte gUnk_080D67B4
	.4byte gUnk_080D68A4
	.4byte gUnk_080D68B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B734
	.4byte sub_0804B738
	.4byte gUnk_080D66F4
	.4byte gUnk_080D6734

gUnk_080D68F4:: @ 080D68F4
	.incbin "data_080D5360/gUnk_080D68F4.bin"
	.4byte script_0800E824
	.incbin "data_080D5360/gUnk_080D68F4_1.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080D68F4_2.bin"

gUnk_080D6924:: @ 080D6924
	.4byte 0x07074F07
	.4byte 0x00000400
	.4byte 0x003800E8
	.4byte script_080103B0
	.4byte 0x08074F07
	.4byte 0x00000400
	.4byte 0x006800E8
	.4byte script_080103B0
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

gUnk_080D6954:: @ 080D6954
	.incbin "data_080D5360/gUnk_080D6954.bin"

gUnk_080D69A4:: @ 080D69A4
	.incbin "data_080D5360/gUnk_080D69A4.bin"

gUnk_080D69B4:: @ 080D69B4
	.incbin "data_080D5360/gUnk_080D69B4.bin"

Room_HouseInteriors1_Inn1F:: @ 080D69BC
	.4byte gUnk_080D68F4
	.4byte gUnk_080D6954
	.4byte gUnk_080D69A4
	.4byte gUnk_080D69B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B788
	.4byte sub_0804B78C

gUnk_080D69DC:: @ 080D69DC
	.incbin "data_080D5360/gUnk_080D69DC.bin"

gUnk_080D69EC:: @ 080D69EC
	.incbin "data_080D5360/gUnk_080D69EC.bin"

gUnk_080D6A2C:: @ 080D6A2C
	.incbin "data_080D5360/gUnk_080D6A2C.bin"

gUnk_080D6A3C:: @ 080D6A3C
	.incbin "data_080D5360/gUnk_080D6A3C.bin"

gUnk_080D6A44:: @ 080D6A44
	.incbin "data_080D5360/gUnk_080D6A44.bin"

gUnk_080D6A54:: @ 080D6A54
	.incbin "data_080D5360/gUnk_080D6A54.bin"

gUnk_080D6A64:: @ 080D6A64
	.incbin "data_080D5360/gUnk_080D6A64.bin"

gUnk_080D6A74:: @ 080D6A74
	.4byte gUnk_080D6A44
	.4byte gUnk_080D6A54
	.4byte gUnk_080D6A64

Room_HouseInteriors1_InnWestRoom:: @ 080D6A80
	.4byte gUnk_080D69DC
	.4byte gUnk_080D69EC
	.4byte gUnk_080D6A2C
	.4byte gUnk_080D6A3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B7A8
	.4byte sub_0804B7E8

gUnk_080D6AA0:: @ 080D6AA0
	.incbin "data_080D5360/gUnk_080D6AA0.bin"

gUnk_080D6AB0:: @ 080D6AB0
	.incbin "data_080D5360/gUnk_080D6AB0.bin"

gUnk_080D6AE0:: @ 080D6AE0
	.incbin "data_080D5360/gUnk_080D6AE0.bin"

gUnk_080D6AF0:: @ 080D6AF0
	.incbin "data_080D5360/gUnk_080D6AF0.bin"

gUnk_080D6AF8:: @ 080D6AF8
	.incbin "data_080D5360/gUnk_080D6AF8.bin"

gUnk_080D6B08:: @ 080D6B08
	.incbin "data_080D5360/gUnk_080D6B08.bin"

gUnk_080D6B18:: @ 080D6B18
	.4byte gUnk_080D6AF8
	.4byte gUnk_080D6B08

Room_HouseInteriors1_InnMiddleRoom:: @ 080D6B20
	.4byte gUnk_080D6AA0
	.4byte gUnk_080D6AB0
	.4byte gUnk_080D6AE0
	.4byte gUnk_080D6AF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B82C
	.4byte sub_0804B86C

gUnk_080D6B40:: @ 080D6B40
	.incbin "data_080D5360/gUnk_080D6B40.bin"

gUnk_080D6B50:: @ 080D6B50
	.incbin "data_080D5360/gUnk_080D6B50.bin"

gUnk_080D6B70:: @ 080D6B70
	.incbin "data_080D5360/gUnk_080D6B70.bin"

gUnk_080D6B80:: @ 080D6B80
	.incbin "data_080D5360/gUnk_080D6B80.bin"

gUnk_080D6B88:: @ 080D6B88
	.incbin "data_080D5360/gUnk_080D6B88.bin"

gUnk_080D6B98:: @ 080D6B98
	.incbin "data_080D5360/gUnk_080D6B98.bin"

gUnk_080D6BA8:: @ 080D6BA8
	.incbin "data_080D5360/gUnk_080D6BA8.bin"

gUnk_080D6BB8:: @ 080D6BB8
	.4byte gUnk_080D6B88
	.4byte gUnk_080D6B98
	.4byte gUnk_080D6BA8

Room_HouseInteriors1_InnEastRoom:: @ 080D6BC4
	.4byte gUnk_080D6B40
	.4byte gUnk_080D6B50
	.4byte gUnk_080D6B70
	.4byte gUnk_080D6B80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B8B0
	.4byte sub_0804B8F0

gUnk_080D6BE4:: @ 080D6BE4
	.incbin "data_080D5360/gUnk_080D6BE4.bin"

UpperInn_Oracles:: @ 080D6BF4
	.incbin "data_080D5360/UpperInn_Oracles.bin"
	.4byte script_08011C7C
	.incbin "data_080D5360/UpperInn_Oracles_1.bin"
	.4byte script_08011D28
	.incbin "data_080D5360/UpperInn_Oracles_2.bin"
	.4byte script_08011DD4
	.incbin "data_080D5360/UpperInn_Oracles_3.bin"

UpperInn_NoFarore:: @ 080D6C34
	.incbin "data_080D5360/UpperInn_NoFarore.bin"
	.4byte script_08011E80
	.incbin "data_080D5360/UpperInn_NoFarore_1.bin"
	.4byte script_08011F0C
	.incbin "data_080D5360/UpperInn_NoFarore_2.bin"

UpperInn_NoDin:: @ 080D6C64
	.incbin "data_080D5360/UpperInn_NoDin.bin"
	.4byte script_08011F0C
	.incbin "data_080D5360/UpperInn_NoDin_1.bin"
	.4byte script_08011F98
	.incbin "data_080D5360/UpperInn_NoDin_2.bin"

UpperInn_NoNayru:: @ 080D6C94
	.incbin "data_080D5360/UpperInn_NoNayru.bin"
	.4byte script_08011E80
	.incbin "data_080D5360/UpperInn_NoNayru_1.bin"
	.4byte script_08011F98
	.incbin "data_080D5360/UpperInn_NoNayru_2.bin"

UpperInn_Din:: @ 080D6CC4
	.incbin "data_080D5360/UpperInn_Din.bin"
	.4byte script_080121C8
	.incbin "data_080D5360/UpperInn_Din_1.bin"

UpperInn_Nayru:: @ 080D6CE4
	.incbin "data_080D5360/UpperInn_Nayru.bin"
	.4byte script_08012200
	.incbin "data_080D5360/UpperInn_Nayru_1.bin"

UpperInn_Farore:: @ 080D6D04
	.incbin "data_080D5360/UpperInn_Farore.bin"
	.4byte script_08012238
	.incbin "data_080D5360/UpperInn_Farore_1.bin"

gUnk_080D6D24:: @ 080D6D24
	.incbin "data_080D5360/gUnk_080D6D24.bin"

gUnk_080D6D84:: @ 080D6D84
	.incbin "data_080D5360/gUnk_080D6D84.bin"

gUnk_080D6D94:: @ 080D6D94
	.incbin "data_080D5360/gUnk_080D6D94.bin"

Room_HouseInteriors1_InnWest2F:: @ 080D6D9C
	.4byte gUnk_080D6BE4
	.4byte gUnk_080D6D24
	.4byte gUnk_080D6D84
	.4byte gUnk_080D6D94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B934
	.4byte sub_0804B938

gUnk_080D6DBC:: @ 080D6DBC
	.incbin "data_080D5360/gUnk_080D6DBC.bin"

gUnk_080D6DDC:: @ 080D6DDC
	.incbin "data_080D5360/gUnk_080D6DDC.bin"
	.4byte script_0800ED04
	.incbin "data_080D5360/gUnk_080D6DDC_1.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080D6DDC_2.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080D6DDC_3.bin"
	.4byte script_0800D59C
	.incbin "data_080D5360/gUnk_080D6DDC_4.bin"
	.4byte script_0800D59C
	.incbin "data_080D5360/gUnk_080D6DDC_5.bin"
	.4byte script_0800D59C
	.incbin "data_080D5360/gUnk_080D6DDC_6.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080D6DDC_7.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080D6DDC_8.bin"

gUnk_080D6E6C:: @ 080D6E6C
	.incbin "data_080D5360/gUnk_080D6E6C.bin"

gUnk_080D6F3C:: @ 080D6F3C
	.incbin "data_080D5360/gUnk_080D6F3C.bin"

gUnk_080D6F4C:: @ 080D6F4C
	.incbin "data_080D5360/gUnk_080D6F4C.bin"

Room_HouseInteriors1_InnEast2F:: @ 080D6F54
	.4byte gUnk_080D6DBC
	.4byte gUnk_080D6E6C
	.4byte gUnk_080D6F3C
	.4byte gUnk_080D6F4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B9F8
	.4byte nullsub_176
	.4byte gUnk_080D6DDC

gUnk_080D6F78:: @ 080D6F78
	.incbin "data_080D5360/gUnk_080D6F78.bin"

gUnk_080D6F98:: @ 080D6F98
	.incbin "data_080D5360/gUnk_080D6F98.bin"

gUnk_080D6FC8:: @ 080D6FC8
	.incbin "data_080D5360/gUnk_080D6FC8.bin"

gUnk_080D6FD8:: @ 080D6FD8
	.incbin "data_080D5360/gUnk_080D6FD8.bin"

gUnk_080D6FE0:: @ 080D6FE0
	.incbin "data_080D5360/gUnk_080D6FE0.bin"

Room_HouseInteriors1_InnMinishHeartPiece:: @ 080D6FF4
	.4byte gUnk_080D6F78
	.4byte gUnk_080D6F98
	.4byte gUnk_080D6FC8
	.4byte gUnk_080D6FD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BA00
	.4byte nullsub_177
	.4byte gUnk_080D6FE0

gUnk_080D7018:: @ 080D7018
	.incbin "data_080D5360/gUnk_080D7018.bin"

gUnk_080D7038:: @ 080D7038
	.incbin "data_080D5360/gUnk_080D7038.bin"
	.4byte script_0800E7F4
	.incbin "data_080D5360/gUnk_080D7038_1.bin"

gUnk_080D7058:: @ 080D7058
	.incbin "data_080D5360/gUnk_080D7058.bin"

gUnk_080D70E8:: @ 080D70E8
	.incbin "data_080D5360/gUnk_080D70E8.bin"

gUnk_080D70F8:: @ 080D70F8
	.incbin "data_080D5360/gUnk_080D70F8.bin"

Room_HouseInteriors1_SchoolWest:: @ 080D7100
	.4byte gUnk_080D7018
	.4byte gUnk_080D7058
	.4byte gUnk_080D70E8
	.4byte gUnk_080D70F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BA08
	.4byte sub_0804BA0C

gUnk_080D7120:: @ 080D7120
	.incbin "data_080D5360/gUnk_080D7120.bin"

gUnk_080D7140:: @ 080D7140
	.incbin "data_080D5360/gUnk_080D7140.bin"
	.4byte script_08010644
	.incbin "data_080D5360/gUnk_080D7140_1.bin"
	.4byte script_08010644
	.incbin "data_080D5360/gUnk_080D7140_2.bin"

gUnk_080D7170:: @ 080D7170
	.incbin "data_080D5360/gUnk_080D7170.bin"
	.4byte script_0801061C
	.incbin "data_080D5360/gUnk_080D7170_1.bin"
	.4byte script_08010650
	.incbin "data_080D5360/gUnk_080D7170_2.bin"

gUnk_080D71A0:: @ 080D71A0
	.incbin "data_080D5360/gUnk_080D71A0.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080D71A0_1.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080D71A0_2.bin"

gUnk_080D71D0:: @ 080D71D0
	.incbin "data_080D5360/gUnk_080D71D0.bin"
	.4byte script_0800E7F4
	.incbin "data_080D5360/gUnk_080D71D0_1.bin"

gUnk_080D71F0:: @ 080D71F0
	.incbin "data_080D5360/gUnk_080D71F0.bin"
	.4byte script_0800E7F4
	.incbin "data_080D5360/gUnk_080D71F0_1.bin"
	.4byte script_0800E7F4
	.incbin "data_080D5360/gUnk_080D71F0_2.bin"

gUnk_080D7220:: @ 080D7220
	.incbin "data_080D5360/gUnk_080D7220.bin"

gUnk_080D7270:: @ 080D7270
	.incbin "data_080D5360/gUnk_080D7270.bin"

gUnk_080D7280:: @ 080D7280
	.incbin "data_080D5360/gUnk_080D7280.bin"

gUnk_080D7288:: @ 080D7288
	.incbin "data_080D5360/gUnk_080D7288.bin"

gUnk_080D729C:: @ 080D729C
	.incbin "data_080D5360/gUnk_080D729C.bin"

Room_HouseInteriors1_SchoolEast:: @ 080D72B0
	.4byte gUnk_080D7120
	.4byte gUnk_080D7220
	.4byte gUnk_080D7270
	.4byte gUnk_080D7280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BA40
	.4byte sub_0804BA44
	.4byte gUnk_080D7288
	.4byte gUnk_080D729C

gUnk_080D72D8:: @ 080D72D8
	.incbin "data_080D5360/gUnk_080D72D8.bin"
	.4byte script_08008DC0
	.incbin "data_080D5360/gUnk_080D72D8_1.bin"
	.4byte script_08008DC0
	.incbin "data_080D5360/gUnk_080D72D8_2.bin"

gUnk_080D7308:: @ 080D7308
	.incbin "data_080D5360/gUnk_080D7308.bin"

gUnk_080D7328:: @ 080D7328
	.incbin "data_080D5360/gUnk_080D7328.bin"

gUnk_080D7348:: @ 080D7348
	.incbin "data_080D5360/gUnk_080D7348.bin"
	.4byte script_0800A734
	.incbin "data_080D5360/gUnk_080D7348_1.bin"

gUnk_080D7368:: @ 080D7368
	.incbin "data_080D5360/gUnk_080D7368.bin"

gUnk_080D7378:: @ 080D7378
	.incbin "data_080D5360/gUnk_080D7378.bin"

gUnk_080D7380:: @ 080D7380
	.4byte gUnk_080D72D8
	.4byte gUnk_080D7308
	.4byte gUnk_080D7368
	.4byte gUnk_080D7378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BA9C
	.4byte sub_0804BAC0

gUnk_080D73A0:: @ 080D73A0
	.incbin "data_080D5360/gUnk_080D73A0.bin"

gUnk_080D73B0:: @ 080D73B0
	.incbin "data_080D5360/gUnk_080D73B0.bin"

gUnk_080D73E0:: @ 080D73E0
	.incbin "data_080D5360/gUnk_080D73E0.bin"

gUnk_080D7410:: @ 080D7410
	.incbin "data_080D5360/gUnk_080D7410.bin"
	.4byte script_0800A764
	.incbin "data_080D5360/gUnk_080D7410_1.bin"
	.4byte script_0800A7E4
	.incbin "data_080D5360/gUnk_080D7410_2.bin"
	.4byte script_0800A820
	.incbin "data_080D5360/gUnk_080D7410_3.bin"
	.4byte script_0800A85C
	.incbin "data_080D5360/gUnk_080D7410_4.bin"
	.4byte script_0800A898
	.incbin "data_080D5360/gUnk_080D7410_5.bin"
	.4byte script_0800A8D4
	.incbin "data_080D5360/gUnk_080D7410_6.bin"

gUnk_080D7480:: @ 080D7480
	.incbin "data_080D5360/gUnk_080D7480.bin"

gUnk_080D7490:: @ 080D7490
	.incbin "data_080D5360/gUnk_080D7490.bin"

gUnk_080D7498:: @ 080D7498
	.4byte gUnk_080D73A0
	.4byte 0x00000000
	.4byte gUnk_080D7480
	.4byte gUnk_080D7490
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BB18
	.4byte sub_0804BB3C

gUnk_080D74B8:: @ 080D74B8
	.incbin "data_080D5360/gUnk_080D74B8.bin"

gUnk_080D74C8:: @ 080D74C8
	.incbin "data_080D5360/gUnk_080D74C8.bin"
	.4byte script_08008E08
	.incbin "data_080D5360/gUnk_080D74C8_1.bin"
	.4byte script_08008FFC
	.incbin "data_080D5360/gUnk_080D74C8_2.bin"
	.4byte script_08008FFC
	.incbin "data_080D5360/gUnk_080D74C8_3.bin"
	.4byte script_08008FFC
	.incbin "data_080D5360/gUnk_080D74C8_4.bin"
	.4byte script_08008FFC
	.incbin "data_080D5360/gUnk_080D74C8_5.bin"
	.4byte script_08008FFC
	.incbin "data_080D5360/gUnk_080D74C8_6.bin"
	.4byte script_08008FFC
	.incbin "data_080D5360/gUnk_080D74C8_7.bin"
	.4byte script_08009080
	.incbin "data_080D5360/gUnk_080D74C8_8.bin"
	.4byte script_0800903C
	.incbin "data_080D5360/gUnk_080D74C8_9.bin"
	.4byte script_08009198
	.incbin "data_080D5360/gUnk_080D74C8_10.bin"
	.4byte script_080092F0
	.incbin "data_080D5360/gUnk_080D74C8_11.bin"

gUnk_080D7588:: @ 080D7588
	.incbin "data_080D5360/gUnk_080D7588.bin"
	.4byte script_08009274
	.incbin "data_080D5360/gUnk_080D7588_1.bin"
	.4byte script_080092D4
	.incbin "data_080D5360/gUnk_080D7588_2.bin"
	.4byte script_080092A8
	.incbin "data_080D5360/gUnk_080D7588_3.bin"
	.4byte script_080092F0
	.incbin "data_080D5360/gUnk_080D7588_4.bin"

gUnk_080D75D8:: @ 080D75D8
	.incbin "data_080D5360/gUnk_080D75D8.bin"
	.4byte script_08009274
	.incbin "data_080D5360/gUnk_080D75D8_1.bin"
	.4byte script_080092D4
	.incbin "data_080D5360/gUnk_080D75D8_2.bin"
	.4byte script_080092F0
	.incbin "data_080D5360/gUnk_080D75D8_3.bin"

gUnk_080D7618:: @ 080D7618
	.incbin "data_080D5360/gUnk_080D7618.bin"
	.4byte script_0800A6D4
	.incbin "data_080D5360/gUnk_080D7618_1.bin"

gUnk_080D7638:: @ 080D7638
	.incbin "data_080D5360/gUnk_080D7638.bin"

gUnk_080D7648:: @ 080D7648
	.incbin "data_080D5360/gUnk_080D7648.bin"

gUnk_080D7650:: @ 080D7650
	.4byte gUnk_080D74B8
	.4byte 0x00000000
	.4byte gUnk_080D7638
	.4byte gUnk_080D7648
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BB9C
	.4byte sub_0804BBA0

gUnk_080D7670:: @ 080D7670
	.incbin "data_080D5360/gUnk_080D7670.bin"

gUnk_080D7690:: @ 080D7690
	.incbin "data_080D5360/gUnk_080D7690.bin"

gUnk_080D76D0:: @ 080D76D0
	.incbin "data_080D5360/gUnk_080D76D0.bin"

gUnk_080D76E0:: @ 080D76E0
	.incbin "data_080D5360/gUnk_080D76E0.bin"

gUnk_080D76E8:: @ 080D76E8
	.4byte gUnk_080D7670
	.4byte 0x00000000
	.4byte gUnk_080D76D0
	.4byte gUnk_080D76E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BC34
	.4byte sub_0804bc38
	.4byte gUnk_080D7690

gUnk_080D770C:: @ 080D770C
	.incbin "data_080D5360/gUnk_080D770C.bin"
	.4byte script_0800B8B8
	.incbin "data_080D5360/gUnk_080D770C_1.bin"

gUnk_080D772C:: @ 080D772C
	.incbin "data_080D5360/gUnk_080D772C.bin"

gUnk_080D773C:: @ 080D773C
	.incbin "data_080D5360/gUnk_080D773C.bin"

gUnk_080D7744:: @ 080D7744
	.4byte gUnk_080D770C
	.4byte 0x00000000
	.4byte gUnk_080D772C
	.4byte gUnk_080D773C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BC50
	.4byte sub_0804BC70

gUnk_080D7764:: @ 080D7764
	.incbin "data_080D5360/gUnk_080D7764.bin"

gUnk_080D7774:: @ 080D7774
	.incbin "data_080D5360/gUnk_080D7774.bin"

gUnk_080D7784:: @ 080D7784
	.incbin "data_080D5360/gUnk_080D7784.bin"

gUnk_080D778C:: @ 080D778C
	.4byte gUnk_080D7764
	.4byte 0x00000000
	.4byte gUnk_080D7774
	.4byte gUnk_080D7784
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BCEC
	.4byte nullsub_178

gUnk_080D77AC:: @ 080D77AC
	.incbin "data_080D5360/gUnk_080D77AC.bin"

gUnk_080D77EC:: @ 080D77EC
	.incbin "data_080D5360/gUnk_080D77EC.bin"

gUnk_080D77FC:: @ 080D77FC
	.incbin "data_080D5360/gUnk_080D77FC.bin"

Area_87_Main:: @ 080D7804
	.4byte gUnk_080D77AC
	.4byte 0x00000000
	.4byte gUnk_080D77EC
	.4byte gUnk_080D77FC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BCF4
	.4byte nullsub_179

gUnk_080D7824:: @ 080D7824
	.incbin "data_080D5360/gUnk_080D7824.bin"

gUnk_080D7864:: @ 080D7864
	.incbin "data_080D5360/gUnk_080D7864.bin"

gUnk_080D7874:: @ 080D7874
	.incbin "data_080D5360/gUnk_080D7874.bin"

Area_45_Main:: @ 080D787C
	.4byte gUnk_080D7824
	.4byte 0x00000000
	.4byte gUnk_080D7864
	.4byte gUnk_080D7874
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BCFC
	.4byte nullsub_180

gUnk_080D789C:: @ 080D789C
	.incbin "data_080D5360/gUnk_080D789C.bin"

gUnk_080D78DC:: @ 080D78DC
	.incbin "data_080D5360/gUnk_080D78DC.bin"

gUnk_080D78EC:: @ 080D78EC
	.incbin "data_080D5360/gUnk_080D78EC.bin"

Area_4D_Main:: @ 080D78F4
	.4byte gUnk_080D789C
	.4byte 0x00000000
	.4byte gUnk_080D78DC
	.4byte gUnk_080D78EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD04
	.4byte nullsub_181

gUnk_080D7914:: @ 080D7914
	.incbin "data_080D5360/gUnk_080D7914.bin"

gUnk_080D7964:: @ 080D7964
	.incbin "data_080D5360/gUnk_080D7964.bin"

gUnk_080D7974:: @ 080D7974
	.incbin "data_080D5360/gUnk_080D7974.bin"

Area_57_Main:: @ 080D797C
	.4byte gUnk_080D7914
	.4byte 0x00000000
	.4byte gUnk_080D7964
	.4byte gUnk_080D7974
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD0C
	.4byte nullsub_182

gUnk_080D799C:: @ 080D799C
	.incbin "data_080D5360/gUnk_080D799C.bin"

gUnk_080D79DC:: @ 080D79DC
	.incbin "data_080D5360/gUnk_080D79DC.bin"

gUnk_080D79EC:: @ 080D79EC
	.incbin "data_080D5360/gUnk_080D79EC.bin"

Area_5F_Main:: @ 080D79F4
	.4byte gUnk_080D799C
	.4byte 0x00000000
	.4byte gUnk_080D79DC
	.4byte gUnk_080D79EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD14
	.4byte nullsub_183

gUnk_080D7A14:: @ 080D7A14
	.incbin "data_080D5360/gUnk_080D7A14.bin"

gUnk_080D7A54:: @ 080D7A54
	.incbin "data_080D5360/gUnk_080D7A54.bin"

gUnk_080D7A64:: @ 080D7A64
	.incbin "data_080D5360/gUnk_080D7A64.bin"

Area_67_Main:: @ 080D7A6C
	.4byte gUnk_080D7A14
	.4byte 0x00000000
	.4byte gUnk_080D7A54
	.4byte gUnk_080D7A64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD1C
	.4byte nullsub_184

gUnk_080D7A8C:: @ 080D7A8C
	.incbin "data_080D5360/gUnk_080D7A8C.bin"

gUnk_080D7ACC:: @ 080D7ACC
	.incbin "data_080D5360/gUnk_080D7ACC.bin"

gUnk_080D7ADC:: @ 080D7ADC
	.incbin "data_080D5360/gUnk_080D7ADC.bin"

Area_6F_Main:: @ 080D7AE4
	.4byte gUnk_080D7A8C
	.4byte 0x00000000
	.4byte gUnk_080D7ACC
	.4byte gUnk_080D7ADC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD24
	.4byte nullsub_185

gUnk_080D7B04:: @ 080D7B04
	.incbin "data_080D5360/gUnk_080D7B04.bin"

gUnk_080D7B54:: @ 080D7B54
	.incbin "data_080D5360/gUnk_080D7B54.bin"

gUnk_080D7B64:: @ 080D7B64
	.incbin "data_080D5360/gUnk_080D7B64.bin"

Area_77_Main:: @ 080D7B6C
	.4byte gUnk_080D7B04
	.4byte 0x00000000
	.4byte gUnk_080D7B54
	.4byte gUnk_080D7B64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD2C
	.4byte nullsub_186

gUnk_080D7B8C:: @ 080D7B8C
	.incbin "data_080D5360/gUnk_080D7B8C.bin"

gUnk_080D7BCC:: @ 080D7BCC
	.incbin "data_080D5360/gUnk_080D7BCC.bin"

gUnk_080D7BDC:: @ 080D7BDC
	.incbin "data_080D5360/gUnk_080D7BDC.bin"

Area_7F_Main:: @ 080D7BE4
	.4byte gUnk_080D7B8C
	.4byte 0x00000000
	.4byte gUnk_080D7BCC
	.4byte gUnk_080D7BDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD34
	.4byte nullsub_187

gUnk_080D7C04:: @ 080D7C04
	.incbin "data_080D5360/gUnk_080D7C04.bin"

gUnk_080D7C44:: @ 080D7C44
	.incbin "data_080D5360/gUnk_080D7C44.bin"

gUnk_080D7C54:: @ 080D7C54
	.incbin "data_080D5360/gUnk_080D7C54.bin"

Area_8F_Main:: @ 080D7C5C
	.4byte gUnk_080D7C04
	.4byte 0x00000000
	.4byte gUnk_080D7C44
	.4byte gUnk_080D7C54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD3C
	.4byte nullsub_188

gUnk_080D7C7C:: @ 080D7C7C
	.incbin "data_080D5360/gUnk_080D7C7C.bin"

gUnk_080D7C9C:: @ 080D7C9C
	.incbin "data_080D5360/gUnk_080D7C9C.bin"

gUnk_080D7CDC:: @ 080D7CDC
	.incbin "data_080D5360/gUnk_080D7CDC.bin"

Room_GreatFairies_Entrance:: @ 080D7CE4
	.4byte gUnk_080D7C7C
	.4byte 0x00000000
	.4byte gUnk_080D7C9C
	.4byte gUnk_080D7CDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD44
	.4byte nullsub_189

gUnk_080D7D04:: @ 080D7D04
	.incbin "data_080D5360/gUnk_080D7D04.bin"

gUnk_080D7D34:: @ 080D7D34
	.incbin "data_080D5360/gUnk_080D7D34.bin"

gUnk_080D7D74:: @ 080D7D74
	.incbin "data_080D5360/gUnk_080D7D74.bin"

gUnk_080D7D94:: @ 080D7D94
	.incbin "data_080D5360/gUnk_080D7D94.bin"

Room_GreatFairies_Exit:: @ 080D7D9C
	.4byte gUnk_080D7D04
	.4byte 0x00000000
	.4byte gUnk_080D7D74
	.4byte gUnk_080D7D94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD4C
	.4byte sub_0804BD50

gUnk_080D7DBC:: @ 080D7DBC
	.incbin "data_080D5360/gUnk_080D7DBC.bin"
	.4byte script_080161E8
	.incbin "data_080D5360/gUnk_080D7DBC_1.bin"

gUnk_080D7DEC:: @ 080D7DEC
	.incbin "data_080D5360/gUnk_080D7DEC.bin"

gUnk_080D7E6C:: @ 080D7E6C
	.incbin "data_080D5360/gUnk_080D7E6C.bin"

gUnk_080D7E7C:: @ 080D7E7C
	.incbin "data_080D5360/gUnk_080D7E7C.bin"

Room_Dojos_Grayblade:: @ 080D7E9C
	.4byte gUnk_080D7DBC
	.4byte gUnk_080D7DEC
	.4byte gUnk_080D7E6C
	.4byte gUnk_080D7E7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDA4
	.4byte nullsub_190

gUnk_080D7EBC:: @ 080D7EBC
	.incbin "data_080D5360/gUnk_080D7EBC.bin"
	.4byte script_080161E8
	.incbin "data_080D5360/gUnk_080D7EBC_1.bin"

gUnk_080D7EDC:: @ 080D7EDC
	.incbin "data_080D5360/gUnk_080D7EDC.bin"

gUnk_080D7F5C:: @ 080D7F5C
	.incbin "data_080D5360/gUnk_080D7F5C.bin"

gUnk_080D7F6C:: @ 080D7F6C
	.incbin "data_080D5360/gUnk_080D7F6C.bin"

Room_Dojos_Splitblade:: @ 080D7F7C
	.4byte gUnk_080D7EBC
	.4byte gUnk_080D7EDC
	.4byte gUnk_080D7F5C
	.4byte gUnk_080D7F6C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDAC
	.4byte nullsub_191

gUnk_080D7F9C:: @ 080D7F9C
	.incbin "data_080D5360/gUnk_080D7F9C.bin"
	.4byte script_080161E8
	.incbin "data_080D5360/gUnk_080D7F9C_1.bin"

gUnk_080D7FBC:: @ 080D7FBC
	.incbin "data_080D5360/gUnk_080D7FBC.bin"

gUnk_080D803C:: @ 080D803C
	.incbin "data_080D5360/gUnk_080D803C.bin"

gUnk_080D804C:: @ 080D804C
	.incbin "data_080D5360/gUnk_080D804C.bin"

Room_Dojos_Greatblade:: @ 080D805C
	.4byte gUnk_080D7F9C
	.4byte gUnk_080D7FBC
	.4byte gUnk_080D803C
	.4byte gUnk_080D804C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDB4
	.4byte nullsub_192

gUnk_080D807C:: @ 080D807C
	.incbin "data_080D5360/gUnk_080D807C.bin"
	.4byte script_080161E8
	.incbin "data_080D5360/gUnk_080D807C_1.bin"

gUnk_080D809C:: @ 080D809C
	.incbin "data_080D5360/gUnk_080D809C.bin"

gUnk_080D811C:: @ 080D811C
	.incbin "data_080D5360/gUnk_080D811C.bin"

gUnk_080D812C:: @ 080D812C
	.incbin "data_080D5360/gUnk_080D812C.bin"

Room_Dojos_Scarblade:: @ 080D813C
	.4byte gUnk_080D807C
	.4byte gUnk_080D809C
	.4byte gUnk_080D811C
	.4byte gUnk_080D812C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDBC
	.4byte nullsub_193

gUnk_080D815C:: @ 080D815C
	.incbin "data_080D5360/gUnk_080D815C.bin"
	.4byte script_080161E8
	.incbin "data_080D5360/gUnk_080D815C_1.bin"

gUnk_080D818C:: @ 080D818C
	.incbin "data_080D5360/gUnk_080D818C.bin"

gUnk_080D820C:: @ 080D820C
	.incbin "data_080D5360/gUnk_080D820C.bin"

gUnk_080D821C:: @ 080D821C
	.incbin "data_080D5360/gUnk_080D821C.bin"

Room_Dojos_Swiftblade:: @ 080D822C
	.4byte gUnk_080D815C
	.4byte gUnk_080D818C
	.4byte gUnk_080D820C
	.4byte gUnk_080D821C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDC4
	.4byte nullsub_194

gUnk_080D824C:: @ 080D824C
	.incbin "data_080D5360/gUnk_080D824C.bin"
	.4byte script_080161E8
	.incbin "data_080D5360/gUnk_080D824C_1.bin"

gUnk_080D827C:: @ 080D827C
	.incbin "data_080D5360/gUnk_080D827C.bin"

gUnk_080D82CC:: @ 080D82CC
	.incbin "data_080D5360/gUnk_080D82CC.bin"

gUnk_080D834C:: @ 080D834C
	.incbin "data_080D5360/gUnk_080D834C.bin"

gUnk_080D835C:: @ 080D835C
	.incbin "data_080D5360/gUnk_080D835C.bin"

Room_Dojos_Grimblade:: @ 080D8374
	.4byte gUnk_080D824C
	.4byte gUnk_080D82CC
	.4byte gUnk_080D834C
	.4byte gUnk_080D835C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDCC
	.4byte sub_0804BDD0

gUnk_080D8394:: @ 080D8394
	.incbin "data_080D5360/gUnk_080D8394.bin"
	.4byte script_080161E8
	.incbin "data_080D5360/gUnk_080D8394_1.bin"

gUnk_080D83C4:: @ 080D83C4
	.incbin "data_080D5360/gUnk_080D83C4.bin"

gUnk_080D8444:: @ 080D8444
	.incbin "data_080D5360/gUnk_080D8444.bin"

gUnk_080D8454:: @ 080D8454
	.incbin "data_080D5360/gUnk_080D8454.bin"

Room_Dojos_Waveblade:: @ 080D8464
	.4byte gUnk_080D8394
	.4byte gUnk_080D83C4
	.4byte gUnk_080D8444
	.4byte gUnk_080D8454
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE04
	.4byte nullsub_28

gUnk_080D8484:: @ 080D8484
	.incbin "data_080D5360/gUnk_080D8484.bin"

gUnk_080D84B4:: @ 080D84B4
	.incbin "data_080D5360/gUnk_080D84B4.bin"

gUnk_080D8544:: @ 080D8544
	.incbin "data_080D5360/gUnk_080D8544.bin"

gUnk_080D8554:: @ 080D8554
	.incbin "data_080D5360/gUnk_080D8554.bin"

Room_Dojos_7:: @ 080D855C
	.4byte gUnk_080D8484
	.4byte gUnk_080D84B4
	.4byte gUnk_080D8544
	.4byte gUnk_080D8554
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE0C
	.4byte nullsub_29

gUnk_080D857C:: @ 080D857C
	.incbin "data_080D5360/gUnk_080D857C.bin"

gUnk_080D85AC:: @ 080D85AC
	.incbin "data_080D5360/gUnk_080D85AC.bin"

gUnk_080D861C:: @ 080D861C
	.incbin "data_080D5360/gUnk_080D861C.bin"

gUnk_080D862C:: @ 080D862C
	.incbin "data_080D5360/gUnk_080D862C.bin"

Room_Dojos_8:: @ 080D8634
	.4byte gUnk_080D857C
	.4byte gUnk_080D85AC
	.4byte gUnk_080D861C
	.4byte gUnk_080D862C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE14
	.4byte nullsub_30

gUnk_080D8654:: @ 080D8654
	.incbin "data_080D5360/gUnk_080D8654.bin"

gUnk_080D8664:: @ 080D8664
	.incbin "data_080D5360/gUnk_080D8664.bin"

gUnk_080D8704:: @ 080D8704
	.incbin "data_080D5360/gUnk_080D8704.bin"

gUnk_080D8714:: @ 080D8714
	.incbin "data_080D5360/gUnk_080D8714.bin"

Room_Dojos_9:: @ 080D871C
	.4byte gUnk_080D8654
	.4byte gUnk_080D8664
	.4byte gUnk_080D8704
	.4byte gUnk_080D8714
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE1C
	.4byte nullsub_31

gUnk_080D873C:: @ 080D873C
	.incbin "data_080D5360/gUnk_080D873C.bin"

gUnk_080D874C:: @ 080D874C
	.incbin "data_080D5360/gUnk_080D874C.bin"

gUnk_080D87DC:: @ 080D87DC
	.incbin "data_080D5360/gUnk_080D87DC.bin"

gUnk_080D87EC:: @ 080D87EC
	.incbin "data_080D5360/gUnk_080D87EC.bin"

Room_Dojos_ToGrimblade:: @ 080D87F4
	.4byte gUnk_080D873C
	.4byte gUnk_080D874C
	.4byte gUnk_080D87DC
	.4byte gUnk_080D87EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE24
	.4byte nullsub_32

gUnk_080D8814:: @ 080D8814
	.incbin "data_080D5360/gUnk_080D8814.bin"

gUnk_080D8824:: @ 080D8824
	.incbin "data_080D5360/gUnk_080D8824.bin"

gUnk_080D8854:: @ 080D8854
	.incbin "data_080D5360/gUnk_080D8854.bin"

gUnk_080D8864:: @ 080D8864
	.incbin "data_080D5360/gUnk_080D8864.bin"

Room_Dojos_ToSplitblade:: @ 080D886C
	.4byte gUnk_080D8814
	.4byte gUnk_080D8824
	.4byte gUnk_080D8854
	.4byte gUnk_080D8864
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE2C
	.4byte nullsub_33

gUnk_080D888C:: @ 080D888C
	.incbin "data_080D5360/gUnk_080D888C.bin"

gUnk_080D889C:: @ 080D889C
	.incbin "data_080D5360/gUnk_080D889C.bin"

gUnk_080D88CC:: @ 080D88CC
	.incbin "data_080D5360/gUnk_080D88CC.bin"

gUnk_080D88DC:: @ 080D88DC
	.incbin "data_080D5360/gUnk_080D88DC.bin"

Room_Dojos_ToGreatblade:: @ 080D88E4
	.4byte gUnk_080D888C
	.4byte gUnk_080D889C
	.4byte gUnk_080D88CC
	.4byte gUnk_080D88DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE34
	.4byte nullsub_34

gUnk_080D8904:: @ 080D8904
	.incbin "data_080D5360/gUnk_080D8904.bin"

gUnk_080D8914:: @ 080D8914
	.incbin "data_080D5360/gUnk_080D8914.bin"

gUnk_080D8944:: @ 080D8944
	.incbin "data_080D5360/gUnk_080D8944.bin"

gUnk_080D8954:: @ 080D8954
	.incbin "data_080D5360/gUnk_080D8954.bin"

Room_Dojos_ToScarblade:: @ 080D895C
	.4byte gUnk_080D8904
	.4byte gUnk_080D8914
	.4byte gUnk_080D8944
	.4byte gUnk_080D8954
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE3C
	.4byte nullsub_35

gUnk_080D897C:: @ 080D897C
	.incbin "data_080D5360/gUnk_080D897C.bin"

gUnk_080D898C:: @ 080D898C
	.incbin "data_080D5360/gUnk_080D898C.bin"

gUnk_080D899C:: @ 080D899C
	.incbin "data_080D5360/gUnk_080D899C.bin"

Room_GoronCave_StairsToCave:: @ 080D89A4
	.4byte gUnk_080D897C
	.4byte 0x00000000
	.4byte gUnk_080D898C
	.4byte gUnk_080D899C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE44
	.4byte nullsub_36

gUnk_080D89C4:: @ 080D89C4
	.incbin "data_080D5360/gUnk_080D89C4.bin"

gUnk_080D89E4:: @ 080D89E4
	.incbin "data_080D5360/gUnk_080D89E4.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D89E4_1.bin"

gUnk_080D8A04:: @ 080D8A04
	.incbin "data_080D5360/gUnk_080D8A04.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A04_1.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A04_2.bin"

gUnk_080D8A34:: @ 080D8A34
	.incbin "data_080D5360/gUnk_080D8A34.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A34_1.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A34_2.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A34_3.bin"

gUnk_080D8A74:: @ 080D8A74
	.incbin "data_080D5360/gUnk_080D8A74.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A74_1.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A74_2.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A74_3.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8A74_4.bin"

gUnk_080D8AC4:: @ 080D8AC4
	.incbin "data_080D5360/gUnk_080D8AC4.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8AC4_1.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8AC4_2.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8AC4_3.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8AC4_4.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8AC4_5.bin"

gUnk_080D8B24:: @ 080D8B24
	.incbin "data_080D5360/gUnk_080D8B24.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8B24_1.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8B24_2.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8B24_3.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8B24_4.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8B24_5.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080D8B24_6.bin"

gUnk_080D8B94:: @ 080D8B94
	.incbin "data_080D5360/gUnk_080D8B94.bin"

gUnk_080D8BA4:: @ 080D8BA4
	.incbin "data_080D5360/gUnk_080D8BA4.bin"

gUnk_080D8BBC:: @ 080D8BBC
	.incbin "data_080D5360/gUnk_080D8BBC.bin"

gUnk_080D8BFA:: @ 080D8BFA
	.incbin "data_080D5360/gUnk_080D8BFA.bin"

gUnk_080D8C68:: @ 080D8C68
	.incbin "data_080D5360/gUnk_080D8C68.bin"

gUnk_080D8D06:: @ 080D8D06
	.incbin "data_080D5360/gUnk_080D8D06.bin"

gUnk_080D8D44:: @ 080D8D44
	.incbin "data_080D5360/gUnk_080D8D44.bin"

gUnk_080D8DB2:: @ 080D8DB2
	.incbin "data_080D5360/gUnk_080D8DB2.bin"

gUnk_080D8E50:: @ 080D8E50
	.4byte gUnk_080D8D06
	.incbin "data_080D5360/gUnk_080D8E50.bin"
	.4byte gUnk_080D8D44
	.incbin "data_080D5360/gUnk_080D8E50_1.bin"
	.4byte gUnk_080D8DB2
	.incbin "data_080D5360/gUnk_080D8E50_2.bin"
	.4byte gUnk_080D8BBC
	.incbin "data_080D5360/gUnk_080D8E50_3.bin"
	.4byte gUnk_080D8BFA
	.incbin "data_080D5360/gUnk_080D8E50_4.bin"
	.4byte gUnk_080D8C68
	.incbin "data_080D5360/gUnk_080D8E50_5.bin"

Room_GoronCave_Main:: @ 080D8EB0
	.4byte gUnk_080D89C4
	.4byte 0x00000000
	.4byte gUnk_080D8B94
	.4byte gUnk_080D8BA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE4C
	.4byte sub_0804BE50

gUnk_080D8ED0:: @ 080D8ED0
	.incbin "data_080D5360/gUnk_080D8ED0.bin"

gUnk_080D8EE0:: @ 080D8EE0
	.incbin "data_080D5360/gUnk_080D8EE0.bin"

gUnk_080D8F80:: @ 080D8F80
	.incbin "data_080D5360/gUnk_080D8F80.bin"

gUnk_080D8F90:: @ 080D8F90
	.incbin "data_080D5360/gUnk_080D8F90.bin"

Area_EzloCutscene_Main:: @ 080D8F98
	.4byte gUnk_080D8ED0
	.4byte gUnk_080D8EE0
	.4byte gUnk_080D8F80
	.4byte gUnk_080D8F90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C00C
	.4byte nullsub_195

gUnk_080D8FB8:: @ 080D8FB8
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D8FB8_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D8FB8_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080D8FB8_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D8FB8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif
	.4byte script_08009698
	.incbin "data_080D5360/gUnk_080D8FB8_4.bin"
	.4byte script_08009740
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D8FB8_5_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D8FB8_6_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080D8FB8_7_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D8FB8_8_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080D9048:: @ 080D9048
	.incbin "data_080D5360/gUnk_080D9048.bin"

gUnk_080D9098:: @ 080D9098
	.incbin "data_080D5360/gUnk_080D9098.bin"
	.4byte script_0800962C
	.incbin "data_080D5360/gUnk_080D9098_1.bin"
	.4byte script_080098D4
	.incbin "data_080D5360/gUnk_080D9098_2.bin"

gUnk_080D90C8:: @ 080D90C8
	.incbin "data_080D5360/gUnk_080D90C8.bin"
	.4byte script_08009778
	.incbin "data_080D5360/gUnk_080D90C8_1.bin"
	.4byte script_080097F0
	.incbin "data_080D5360/gUnk_080D90C8_2.bin"
	.4byte script_08009838
	.incbin "data_080D5360/gUnk_080D90C8_3.bin"

gUnk_080D9108:: @ 080D9108
	.incbin "data_080D5360/gUnk_080D9108.bin"

gUnk_080D9128:: @ 080D9128
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9128_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9128_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080D9128_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D9128_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080D91E8:: @ 080D91E8
	.incbin "data_080D5360/gUnk_080D91E8.bin"

gUnk_080D9278:: @ 080D9278
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9278_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9278_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080D9278_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D9278_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

Room_RoyalValley_Main:: @ 080D9290
	.4byte gUnk_080D8FB8
	.4byte gUnk_080D9128
	.4byte gUnk_080D91E8
	.4byte gUnk_080D9278
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C014
	.4byte sub_0804C018

gUnk_080D92B0:: @ 080D92B0
	.incbin "data_080D5360/gUnk_080D92B0.bin"

gUnk_080D92D0:: @ 080D92D0
	.incbin "data_080D5360/gUnk_080D92D0.bin"

gUnk_080D92E0:: @ 080D92E0
	.incbin "data_080D5360/gUnk_080D92E0.bin"

gUnk_080D9328:: @ 080D9328
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9328_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9328_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080D9328_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D9328_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080D9338:: @ 080D9338
	.incbin "data_080D5360/gUnk_080D9338.bin"

gUnk_080D9340:: @ 080D9340
	.incbin "data_080D5360/gUnk_080D9340.bin"

gUnk_080D9348:: @ 080D9348
	.incbin "data_080D5360/gUnk_080D9348.bin"

Room_RoyalValley_ForestMaze:: @ 080D9368
	.4byte gUnk_080D92B0
	.4byte 0x00000000
	.4byte gUnk_080D92D0
	.4byte gUnk_080D92E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C104
	.4byte sub_0804C108

gUnk_080D9388:: @ 080D9388
	.incbin "data_080D5360/gUnk_080D9388.bin"

gUnk_080D93A8:: @ 080D93A8
	.incbin "data_080D5360/gUnk_080D93A8.bin"

gUnk_080D93B8:: @ 080D93B8
	.incbin "data_080D5360/gUnk_080D93B8.bin"

Room_RoyalValleyGraves_HeartPiece:: @ 080D93C0
	.4byte gUnk_080D9388
	.4byte 0x00000000
	.4byte gUnk_080D93A8
	.4byte gUnk_080D93B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C2BC
	.4byte nullsub_196

gUnk_080D93E0:: @ 080D93E0
	.incbin "data_080D5360/gUnk_080D93E0.bin"
	.4byte script_0800B91C
	.incbin "data_080D5360/gUnk_080D93E0_1.bin"

gUnk_080D9400:: @ 080D9400
	.incbin "data_080D5360/gUnk_080D9400.bin"

gUnk_080D9410:: @ 080D9410
	.incbin "data_080D5360/gUnk_080D9410.bin"

Room_RoyalValleyGraves_Gina:: @ 080D9420
	.4byte gUnk_080D93E0
	.4byte 0x00000000
	.4byte gUnk_080D9400
	.4byte gUnk_080D9410
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C2C4
	.4byte nullsub_197

gUnk_080D9440:: @ 080D9440
	.incbin "data_080D5360/gUnk_080D9440.bin"
	.4byte script_0800E734
	.incbin "data_080D5360/gUnk_080D9440_1.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080D9440_2.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080D9440_3.bin"

gUnk_080D94B0:: @ 080D94B0
	.incbin "data_080D5360/gUnk_080D94B0.bin"

gUnk_080D95B0:: @ 080D95B0
	.incbin "data_080D5360/gUnk_080D95B0.bin"

gUnk_080D95C0:: @ 080D95C0
	.incbin "data_080D5360/gUnk_080D95C0.bin"

Room_MinishRafters_Cafe:: @ 080D95D0
	.4byte gUnk_080D9440
	.4byte gUnk_080D94B0
	.4byte gUnk_080D95B0
	.4byte gUnk_080D95C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C2CC
	.4byte sub_0804C2D0

gUnk_080D95F0:: @ 080D95F0
	.incbin "data_080D5360/gUnk_080D95F0.bin"

gUnk_080D9600:: @ 080D9600
	.incbin "data_080D5360/gUnk_080D9600.bin"

gUnk_080D9710:: @ 080D9710
	.incbin "data_080D5360/gUnk_080D9710.bin"

gUnk_080D9780:: @ 080D9780
	.incbin "data_080D5360/gUnk_080D9780.bin"

Room_MinishRafters_Stockwell:: @ 080D97A0
	.4byte gUnk_080D95F0
	.4byte gUnk_080D9600
	.4byte gUnk_080D9710
	.4byte gUnk_080D9780
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C2DC
	.4byte sub_0804C2E0

gUnk_080D97C0:: @ 080D97C0
	.incbin "data_080D5360/gUnk_080D97C0.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080D97C0_1.bin"
	.4byte script_0800E760
	.incbin "data_080D5360/gUnk_080D97C0_2.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080D97C0_3.bin"

gUnk_080D9800:: @ 080D9800
	.incbin "data_080D5360/gUnk_080D9800.bin"

gUnk_080D9830:: @ 080D9830
	.incbin "data_080D5360/gUnk_080D9830.bin"

gUnk_080D9930:: @ 080D9930
	.incbin "data_080D5360/gUnk_080D9930.bin"

gUnk_080D9940:: @ 080D9940
	.incbin "data_080D5360/gUnk_080D9940.bin"

Room_MinishRafters_DrLeft:: @ 080D9948
	.4byte gUnk_080D97C0
	.4byte gUnk_080D9830
	.4byte gUnk_080D9930
	.4byte gUnk_080D9940
	.4byte sub_0804C318
	.4byte 0x00000000
	.4byte sub_0804C2EC
	.4byte sub_0804C2F0

gUnk_080D9968:: @ 080D9968
	.incbin "data_080D5360/gUnk_080D9968.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080D9968_1.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080D9968_2.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080D9968_3.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080D9968_4.bin"

gUnk_080D99B8:: @ 080D99B8
	.incbin "data_080D5360/gUnk_080D99B8.bin"

gUnk_080D9A98:: @ 080D9A98
	.incbin "data_080D5360/gUnk_080D9A98.bin"

gUnk_080D9AA8:: @ 080D9AA8
	.incbin "data_080D5360/gUnk_080D9AA8.bin"

Room_MinishRafters_Bakery:: @ 080D9AB8
	.4byte gUnk_080D9968
	.4byte gUnk_080D99B8
	.4byte gUnk_080D9A98
	.4byte gUnk_080D9AA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C320
	.4byte sub_0804C324

gUnk_080D9AD8:: @ 080D9AD8
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9AD8_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9AD8_1_DEMO_JP.bin"
.else
.ifdef EU
	@ TODO only small differences
	@ TODO remove the 0x10 bytes at the correct place (not here)
	.incbin "data_080D5360/gUnk_080D9AD8_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D9AD8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif
	.4byte script_0800B200
	.incbin "data_080D5360/gUnk_080D9AD8_4.bin"
	.4byte script_0800B308
	.incbin "data_080D5360/gUnk_080D9AD8_5.bin"
	.4byte script_0800B254
	.incbin "data_080D5360/gUnk_080D9AD8_6.bin"
	.4byte script_0800B284
	.incbin "data_080D5360/gUnk_080D9AD8_7.bin"
	.4byte script_0800B2B4
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9AD8_8_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9AD8_9_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080D9AD8_10_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D9AD8_11_USA-DEMO_USA.bin"
.endif
.endif
.endif
gUnk_080D9C38:: @ 080D9C38
	.incbin "data_080D5360/gUnk_080D9C38.bin"

gUnk_080D9CA8:: @ 080D9CA8
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9CA8_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9CA8_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080D9CA8_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D9CA8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080D9CC8:: @ 080D9CC8
	.incbin "data_080D5360/gUnk_080D9CC8.bin"

gUnk_080D9CE8:: @ 080D9CE8
	.incbin "data_080D5360/gUnk_080D9CE8.bin"
	.4byte script_0800B00C
	.incbin "data_080D5360/gUnk_080D9CE8_1.bin"

gUnk_080D9D08:: @ 080D9D08
	.incbin "data_080D5360/gUnk_080D9D08.bin"

gUnk_080D9D38:: @ 080D9D38
	.incbin "data_080D5360/gUnk_080D9D38.bin"

gUnk_080D9E28:: @ 080D9E28
	.incbin "data_080D5360/gUnk_080D9E28.bin"

gUnk_080D9E58:: @ 080D9E58
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9E58_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080D9E58_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080D9E58_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080D9E58_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080D9E68:: @ 080D9E68
	.incbin "data_080D5360/gUnk_080D9E68.bin"

gUnk_080D9EA8:: @ 080D9EA8
	.incbin "data_080D5360/gUnk_080D9EA8.bin"

gUnk_080D9EBC:: @ 080D9EBC
	.incbin "data_080D5360/gUnk_080D9EBC.bin"

gUnk_080D9ED0:: @ 080D9ED0
	.incbin "data_080D5360/gUnk_080D9ED0.bin"

gUnk_080D9EE4:: @ 080D9EE4
	.incbin "data_080D5360/gUnk_080D9EE4.bin"

gUnk_080D9EF8:: @ 080D9EF8
	.incbin "data_080D5360/gUnk_080D9EF8.bin"

gUnk_080D9F0C:: @ 080D9F0C
	.incbin "data_080D5360/gUnk_080D9F0C.bin"

gUnk_080D9F20:: @ 080D9F20
	.incbin "data_080D5360/gUnk_080D9F20.bin"

gUnk_080D9F34:: @ 080D9F34
	.incbin "data_080D5360/gUnk_080D9F34.bin"

gUnk_080D9F44:: @ 080D9F44
	.incbin "data_080D5360/gUnk_080D9F44.bin"

Room_CastorWilds_Main:: @ 080D9F58
	.4byte gUnk_080D9AD8
	.4byte gUnk_080D9D08
	.4byte gUnk_080D9D38
	.4byte gUnk_080D9E58
	.4byte sub_0804C384
	.4byte 0x00000000
	.4byte sub_0804C330
	.4byte sub_0804C334
	.4byte gUnk_080D9E68
	.4byte gUnk_080D9EA8
	.4byte gUnk_080D9EBC
	.4byte gUnk_080D9ED0
	.4byte gUnk_080D9EE4
	.4byte gUnk_080D9EF8
	.4byte gUnk_080D9F0C
	.4byte gUnk_080D9F20
	.4byte gUnk_080D9E28
	.4byte gUnk_080D9F34
	.4byte gUnk_080D9F44
	.4byte gUnk_080D9CA8

gUnk_080D9FA8:: @ 080D9FA8
	.incbin "data_080D5360/gUnk_080D9FA8.bin"

gUnk_080D9FB8:: @ 080D9FB8
	.incbin "data_080D5360/gUnk_080D9FB8.bin"

gUnk_080D9FC8:: @ 080D9FC8
	.incbin "data_080D5360/gUnk_080D9FC8.bin"

gUnk_080D9FF8:: @ 080D9FF8
	.incbin "data_080D5360/gUnk_080D9FF8.bin"

Room_CastorCaves_South:: @ 080DA008
	.4byte gUnk_080D9FA8
	.4byte gUnk_080D9FB8
	.4byte gUnk_080D9FC8
	.4byte gUnk_080D9FF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3A4
	.4byte nullsub_198

gUnk_080DA028:: @ 080DA028
	.incbin "data_080D5360/gUnk_080DA028.bin"

gUnk_080DA038:: @ 080DA038
	.incbin "data_080D5360/gUnk_080DA038.bin"

gUnk_080DA048:: @ 080DA048
	.incbin "data_080D5360/gUnk_080DA048.bin"

gUnk_080DA068:: @ 080DA068
	.incbin "data_080D5360/gUnk_080DA068.bin"

Room_CastorCaves_North:: @ 080DA080
	.4byte gUnk_080DA028
	.4byte gUnk_080DA038
	.4byte gUnk_080DA048
	.4byte gUnk_080DA068
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3AC
	.4byte nullsub_199

gUnk_080DA0A0:: @ 080DA0A0
	.incbin "data_080D5360/gUnk_080DA0A0.bin"

gUnk_080DA0B0:: @ 080DA0B0
	.incbin "data_080D5360/gUnk_080DA0B0.bin"

gUnk_080DA0C0:: @ 080DA0C0
	.incbin "data_080D5360/gUnk_080DA0C0.bin"

gUnk_080DA0D0:: @ 080DA0D0
	.incbin "data_080D5360/gUnk_080DA0D0.bin"

Room_CastorCaves_WindRuins:: @ 080DA0E0
	.4byte gUnk_080DA0A0
	.4byte gUnk_080DA0B0
	.4byte gUnk_080DA0C0
	.4byte gUnk_080DA0D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3B4
	.4byte nullsub_200

gUnk_080DA100:: @ 080DA100
	.incbin "data_080D5360/gUnk_080DA100.bin"

gUnk_080DA150:: @ 080DA150
	.incbin "data_080D5360/gUnk_080DA150.bin"

gUnk_080DA160:: @ 080DA160
	.incbin "data_080D5360/gUnk_080DA160.bin"

gUnk_080DA190:: @ 080DA190
	.incbin "data_080D5360/gUnk_080DA190.bin"

Room_CastorCaves_Darknut:: @ 080DA198
	.4byte gUnk_080DA100
	.4byte gUnk_080DA150
	.4byte gUnk_080DA160
	.4byte gUnk_080DA190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3BC
	.4byte nullsub_201

gUnk_080DA1B8:: @ 080DA1B8
	.incbin "data_080D5360/gUnk_080DA1B8.bin"

gUnk_080DA1D8:: @ 080DA1D8
	.incbin "data_080D5360/gUnk_080DA1D8.bin"

gUnk_080DA1E8:: @ 080DA1E8
	.incbin "data_080D5360/gUnk_080DA1E8.bin"

Room_CastorCaves_HeartPiece:: @ 080DA1F0
	.4byte gUnk_080DA1B8
	.4byte 0x00000000
	.4byte gUnk_080DA1D8
	.4byte gUnk_080DA1E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3C4
	.4byte nullsub_202

gUnk_080DA210:: @ 080DA210
	.incbin "data_080D5360/gUnk_080DA210.bin"

gUnk_080DA230:: @ 080DA230
	.incbin "data_080D5360/gUnk_080DA230.bin"
	.4byte script_0800B17C
	.incbin "data_080D5360/gUnk_080DA230_1.bin"

gUnk_080DA260:: @ 080DA260
	.incbin "data_080D5360/gUnk_080DA260.bin"

gUnk_080DA2A0:: @ 080DA2A0
	.incbin "data_080D5360/gUnk_080DA2A0.bin"

gUnk_080DA2B0:: @ 080DA2B0
	.incbin "data_080D5360/gUnk_080DA2B0.bin"

gUnk_080DA2C0:: @ 080DA2C0
	.incbin "data_080D5360/gUnk_080DA2C0.bin"

gUnk_080DA2D8:: @ 080DA2D8
	.incbin "data_080D5360/gUnk_080DA2D8.bin"

Room_CastorDarknut_Main:: @ 080DA2F8
	.4byte gUnk_080DA210
	.4byte gUnk_080DA2A0
	.4byte gUnk_080DA2B0
	.4byte gUnk_080DA2C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3CC
	.4byte nullsub_203
	.4byte gUnk_080DA2D8

gUnk_080DA31C:: @ 080DA31C
	.incbin "data_080D5360/gUnk_080DA31C.bin"

gUnk_080DA32C:: @ 080DA32C
	.incbin "data_080D5360/gUnk_080DA32C.bin"

gUnk_080DA33C:: @ 080DA33C
	.incbin "data_080D5360/gUnk_080DA33C.bin"

gUnk_080DA37C:: @ 080DA37C
	.incbin "data_080D5360/gUnk_080DA37C.bin"

Room_CastorDarknut_Hall:: @ 080DA384
	.4byte gUnk_080DA31C
	.4byte gUnk_080DA32C
	.4byte gUnk_080DA33C
	.4byte gUnk_080DA37C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3F0
	.4byte nullsub_204

gUnk_080DA3A4:: @ 080DA3A4
	.incbin "data_080D5360/gUnk_080DA3A4.bin"
	.4byte script_0800B614
	.incbin "data_080D5360/gUnk_080DA3A4_1.bin"

gUnk_080DA3D4:: @ 080DA3D4
	.incbin "data_080D5360/gUnk_080DA3D4.bin"

gUnk_080DA3E4:: @ 080DA3E4
	.incbin "data_080D5360/gUnk_080DA3E4.bin"

Room_GreatFairies_Graveyard:: @ 080DA3EC
	.4byte gUnk_080DA3A4
	.4byte 0x00000000
	.4byte gUnk_080DA3D4
	.4byte gUnk_080DA3E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3F8
	.4byte nullsub_205

gUnk_080DA40C:: @ 080DA40C
	.incbin "data_080D5360/gUnk_080DA40C.bin"
	.4byte script_0800B6C8
	.incbin "data_080D5360/gUnk_080DA40C_1.bin"

gUnk_080DA43C:: @ 080DA43C
	.incbin "data_080D5360/gUnk_080DA43C.bin"

gUnk_080DA44C:: @ 080DA44C
	.incbin "data_080D5360/gUnk_080DA44C.bin"

Room_GreatFairies_MinishWoods:: @ 080DA454
	.4byte gUnk_080DA40C
	.4byte 0x00000000
	.4byte gUnk_080DA43C
	.4byte gUnk_080DA44C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C400
	.4byte nullsub_206

gUnk_080DA474:: @ 080DA474
	.incbin "data_080D5360/gUnk_080DA474.bin"
	.4byte script_0800B730
	.incbin "data_080D5360/gUnk_080DA474_1.bin"

gUnk_080DA4A4:: @ 080DA4A4
	.incbin "data_080D5360/gUnk_080DA4A4.bin"

gUnk_080DA4B4:: @ 080DA4B4
	.incbin "data_080D5360/gUnk_080DA4B4.bin"

Room_GreatFairies_MtCrenel:: @ 080DA4BC
	.4byte gUnk_080DA474
	.4byte 0x00000000
	.4byte gUnk_080DA4A4
	.4byte gUnk_080DA4B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C408
	.4byte nullsub_207

gUnk_080DA4DC:: @ 080DA4DC
	.incbin "data_080D5360/gUnk_080DA4DC.bin"

gUnk_080DA4FC:: @ 080DA4FC
	.incbin "data_080D5360/gUnk_080DA4FC.bin"

gUnk_080DA50C:: @ 080DA50C
	.incbin "data_080D5360/gUnk_080DA50C.bin"

Room_GardenFountains_East:: @ 080DA514
	.4byte gUnk_080DA4DC
	.4byte 0x00000000
	.4byte gUnk_080DA4FC
	.4byte gUnk_080DA50C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C410
	.4byte nullsub_208

gUnk_080DA534:: @ 080DA534
.ifdef JP
	.incbin "data_080D5360/gUnk_080DA534_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DA534_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080DA534_2_DEMO_JP.bin"
.else
	.incbin "data_080D5360/gUnk_080DA534_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DA584:: @ 080DA584
	.incbin "data_080D5360/gUnk_080DA584.bin"

gUnk_080DA594:: @ 080DA594
	.incbin "data_080D5360/gUnk_080DA594.bin"

Room_GardenFountains_West:: @ 080DA5A4
	.4byte gUnk_080DA534
	.4byte 0x00000000
	.4byte gUnk_080DA584
	.4byte gUnk_080DA594
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C418
	.4byte nullsub_209

gUnk_080DA5C4:: @ 080DA5C4
	.incbin "data_080D5360/gUnk_080DA5C4.bin"
	.4byte script_0800C774
	.incbin "data_080D5360/gUnk_080DA5C4_1.bin"

gUnk_080DA5F4:: @ 080DA5F4
	.incbin "data_080D5360/gUnk_080DA5F4.bin"

gUnk_080DA624:: @ 080DA624
	.incbin "data_080D5360/gUnk_080DA624.bin"

gUnk_080DA634:: @ 080DA634
	.incbin "data_080D5360/gUnk_080DA634.bin"

Room_MinishHouseInteriors_GentariMain:: @ 080DA63C
	.4byte gUnk_080DA5C4
	.4byte gUnk_080DA5F4
	.4byte gUnk_080DA624
	.4byte gUnk_080DA634
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C420
	.4byte sub_0804C424

gUnk_080DA65C:: @ 080DA65C
	.incbin "data_080D5360/gUnk_080DA65C.bin"

gUnk_080DA66C:: @ 080DA66C
	.incbin "data_080D5360/gUnk_080DA66C.bin"

gUnk_080DA6AC:: @ 080DA6AC
	.incbin "data_080D5360/gUnk_080DA6AC.bin"

gUnk_080DA6BC:: @ 080DA6BC
	.incbin "data_080D5360/gUnk_080DA6BC.bin"

gUnk_080DA6C4:: @ 080DA6C4
	.incbin "data_080D5360/gUnk_080DA6C4.bin"

gUnk_080DA6D4:: @ 080DA6D4
	.incbin "data_080D5360/gUnk_080DA6D4.bin"

Room_MinishHouseInteriors_GentariExit:: @ 080DA6E8
	.4byte gUnk_080DA65C
	.4byte gUnk_080DA66C
	.4byte gUnk_080DA6AC
	.4byte gUnk_080DA6BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C42C
	.4byte sub_0804C430
	.4byte gUnk_080DA6C4
	.4byte gUnk_080DA6D4

gUnk_080DA710:: @ 080DA710
	.incbin "data_080D5360/gUnk_080DA710.bin"
	.4byte script_0800C634
	.incbin "data_080D5360/gUnk_080DA710_1.bin"

gUnk_080DA730:: @ 080DA730
	.incbin "data_080D5360/gUnk_080DA730.bin"

gUnk_080DA760:: @ 080DA760
	.incbin "data_080D5360/gUnk_080DA760.bin"

gUnk_080DA770:: @ 080DA770
	.incbin "data_080D5360/gUnk_080DA770.bin"

gUnk_080DA778:: @ 080DA778
	.incbin "data_080D5360/gUnk_080DA778.bin"

gUnk_080DA790:: @ 080DA790
	.incbin "data_080D5360/gUnk_080DA790.bin"

gUnk_080DA7A4:: @ 080DA7A4
	.incbin "data_080D5360/gUnk_080DA7A4.bin"

Room_MinishHouseInteriors_Festari:: @ 080DA7B8
	.4byte gUnk_080DA710
	.4byte gUnk_080DA730
	.4byte gUnk_080DA760
	.4byte gUnk_080DA770
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C438
	.4byte sub_0804C43C
	.4byte gUnk_080DA778
	.4byte gUnk_080DA790
	.4byte gUnk_080DA7A4

gUnk_080DA7E4:: @ 080DA7E4
	.incbin "data_080D5360/gUnk_080DA7E4.bin"

gUnk_080DA804:: @ 080DA804
	.incbin "data_080D5360/gUnk_080DA804.bin"

gUnk_080DA824:: @ 080DA824
	.incbin "data_080D5360/gUnk_080DA824.bin"

gUnk_080DA834:: @ 080DA834
	.incbin "data_080D5360/gUnk_080DA834.bin"

Room_MinishHouseInteriors_Red:: @ 080DA83C
	.4byte gUnk_080DA7E4
	.4byte gUnk_080DA804
	.4byte gUnk_080DA824
	.4byte gUnk_080DA834
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C444
	.4byte sub_0804C448

gUnk_080DA85C:: @ 080DA85C
	.incbin "data_080D5360/gUnk_080DA85C.bin"

gUnk_080DA87C:: @ 080DA87C
	.incbin "data_080D5360/gUnk_080DA87C.bin"

gUnk_080DA89C:: @ 080DA89C
	.incbin "data_080D5360/gUnk_080DA89C.bin"

gUnk_080DA8AC:: @ 080DA8AC
	.incbin "data_080D5360/gUnk_080DA8AC.bin"

Room_MinishHouseInteriors_Green:: @ 080DA8B4
	.4byte gUnk_080DA85C
	.4byte gUnk_080DA87C
	.4byte gUnk_080DA89C
	.4byte gUnk_080DA8AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C450
	.4byte sub_0804C454

gUnk_080DA8D4:: @ 080DA8D4
	.incbin "data_080D5360/gUnk_080DA8D4.bin"

gUnk_080DA8F4:: @ 080DA8F4
	.incbin "data_080D5360/gUnk_080DA8F4.bin"

gUnk_080DA914:: @ 080DA914
	.incbin "data_080D5360/gUnk_080DA914.bin"

gUnk_080DA924:: @ 080DA924
	.incbin "data_080D5360/gUnk_080DA924.bin"

Room_MinishHouseInteriors_Blue:: @ 080DA92C
	.4byte gUnk_080DA8D4
	.4byte gUnk_080DA8F4
	.4byte gUnk_080DA914
	.4byte gUnk_080DA924
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C45C
	.4byte sub_0804C460

gUnk_080DA94C:: @ 080DA94C
	.incbin "data_080D5360/gUnk_080DA94C.bin"

gUnk_080DA96C:: @ 080DA96C
	.incbin "data_080D5360/gUnk_080DA96C.bin"

gUnk_080DA98C:: @ 080DA98C
	.incbin "data_080D5360/gUnk_080DA98C.bin"

gUnk_080DA99C:: @ 080DA99C
	.incbin "data_080D5360/gUnk_080DA99C.bin"

Room_MinishHouseInteriors_SideArea:: @ 080DA9A4
	.4byte gUnk_080DA94C
	.4byte gUnk_080DA96C
	.4byte gUnk_080DA98C
	.4byte gUnk_080DA99C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C468
	.4byte sub_0804C46C

gUnk_080DA9C4:: @ 080DA9C4
	.incbin "data_080D5360/gUnk_080DA9C4.bin"

gUnk_080DA9E4:: @ 080DA9E4
	.incbin "data_080D5360/gUnk_080DA9E4.bin"

gUnk_080DAA04:: @ 080DAA04
	.incbin "data_080D5360/gUnk_080DAA04.bin"

gUnk_080DAA14:: @ 080DAA14
	.incbin "data_080D5360/gUnk_080DAA14.bin"

Room_MinishHouseInteriors_ShoeMinish:: @ 080DAA1C
	.4byte gUnk_080DA9C4
	.4byte gUnk_080DA9E4
	.4byte gUnk_080DAA04
	.4byte gUnk_080DAA14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C474
	.4byte sub_0804C478

gUnk_080DAA3C:: @ 080DAA3C
	.incbin "data_080D5360/gUnk_080DAA3C.bin"

gUnk_080DAA5C:: @ 080DAA5C
	.incbin "data_080D5360/gUnk_080DAA5C.bin"

gUnk_080DAA9C:: @ 080DAA9C
	.incbin "data_080D5360/gUnk_080DAA9C.bin"

gUnk_080DAAAC:: @ 080DAAAC
	.incbin "data_080D5360/gUnk_080DAAAC.bin"

Room_MinishHouseInteriors_PotMinish:: @ 080DAAB4
	.4byte gUnk_080DAA3C
	.4byte gUnk_080DAA5C
	.4byte gUnk_080DAA9C
	.4byte gUnk_080DAAAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C480
	.4byte sub_0804C484

gUnk_080DAAD4:: @ 080DAAD4
	.incbin "data_080D5360/gUnk_080DAAD4.bin"

gUnk_080DAB44:: @ 080DAB44
	.incbin "data_080D5360/gUnk_080DAB44.bin"

gUnk_080DAB64:: @ 080DAB64
	.incbin "data_080D5360/gUnk_080DAB64.bin"

gUnk_080DAB84:: @ 080DAB84
	.incbin "data_080D5360/gUnk_080DAB84.bin"

gUnk_080DABC4:: @ 080DABC4
	.incbin "data_080D5360/gUnk_080DABC4.bin"

gUnk_080DAC04:: @ 080DAC04
	.incbin "data_080D5360/gUnk_080DAC04.bin"

gUnk_080DAC54:: @ 080DAC54
	.incbin "data_080D5360/gUnk_080DAC54.bin"

gUnk_080DAC94:: @ 080DAC94
	.incbin "data_080D5360/gUnk_080DAC94.bin"

gUnk_080DACD4:: @ 080DACD4
	.incbin "data_080D5360/gUnk_080DACD4.bin"

gUnk_080DAD24:: @ 080DAD24
	.incbin "data_080D5360/gUnk_080DAD24.bin"

gUnk_080DAD64:: @ 080DAD64
	.incbin "data_080D5360/gUnk_080DAD64.bin"

gUnk_080DADA4:: @ 080DADA4
	.incbin "data_080D5360/gUnk_080DADA4.bin"

gUnk_080DADF4:: @ 080DADF4
	.incbin "data_080D5360/gUnk_080DADF4.bin"

gUnk_080DAE94:: @ 080DAE94
	.incbin "data_080D5360/gUnk_080DAE94.bin"

gUnk_080DAEA4:: @ 080DAEA4
	.incbin "data_080D5360/gUnk_080DAEA4.bin"

gUnk_080DAEAC:: @ 080DAEAC
	.incbin "data_080D5360/gUnk_080DAEAC.bin"

Room_MinishHouseInteriors_BarrelMinish:: @ 080DAEB4
	.4byte gUnk_080DAAD4
	.4byte gUnk_080DADF4
	.4byte gUnk_080DAE94
	.4byte gUnk_080DAEA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C48C
	.4byte sub_0804C490
	.4byte gUnk_080DAEAC

gUnk_080DAED8:: @ 080DAED8
	.incbin "data_080D5360/gUnk_080DAED8.bin"

gUnk_080DAEE8:: @ 080DAEE8
	.incbin "data_080D5360/gUnk_080DAEE8.bin"
	.4byte script_0800D308
	.incbin "data_080D5360/gUnk_080DAEE8_1.bin"

gUnk_080DAF08:: @ 080DAF08
	.incbin "data_080D5360/gUnk_080DAF08.bin"

gUnk_080DAF38:: @ 080DAF38
	.incbin "data_080D5360/gUnk_080DAF38.bin"

gUnk_080DAF48:: @ 080DAF48
	.incbin "data_080D5360/gUnk_080DAF48.bin"

Room_MinishHouseInteriors_MelariMinesSouthwest:: @ 080DAF50
	.4byte gUnk_080DAED8
	.4byte gUnk_080DAF08
	.4byte gUnk_080DAF38
	.4byte gUnk_080DAF48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C5DC
	.4byte sub_0804C5E0

gUnk_080DAF70:: @ 080DAF70
	.incbin "data_080D5360/gUnk_080DAF70.bin"

gUnk_080DAF80:: @ 080DAF80
	.incbin "data_080D5360/gUnk_080DAF80.bin"
	.4byte script_0800CF50
	.incbin "data_080D5360/gUnk_080DAF80_1.bin"

gUnk_080DAFA0:: @ 080DAFA0
	.incbin "data_080D5360/gUnk_080DAFA0.bin"

gUnk_080DAFD0:: @ 080DAFD0
	.incbin "data_080D5360/gUnk_080DAFD0.bin"

gUnk_080DAFE0:: @ 080DAFE0
	.incbin "data_080D5360/gUnk_080DAFE0.bin"

Room_MinishHouseInteriors_MelariMinesSoutheast:: @ 080DAFE8
	.4byte gUnk_080DAF70
	.4byte gUnk_080DAFA0
	.4byte gUnk_080DAFD0
	.4byte gUnk_080DAFE0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C5FC
	.4byte sub_0804C600

gUnk_080DB008:: @ 080DB008
	.incbin "data_080D5360/gUnk_080DB008.bin"

gUnk_080DB018:: @ 080DB018
	.incbin "data_080D5360/gUnk_080DB018.bin"
	.4byte script_0800CF50
	.incbin "data_080D5360/gUnk_080DB018_1.bin"

gUnk_080DB038:: @ 080DB038
	.incbin "data_080D5360/gUnk_080DB038.bin"

gUnk_080DB088:: @ 080DB088
	.incbin "data_080D5360/gUnk_080DB088.bin"

gUnk_080DB098:: @ 080DB098
	.incbin "data_080D5360/gUnk_080DB098.bin"

Room_MinishHouseInteriors_MelariMinesEast:: @ 080DB0A0
	.4byte gUnk_080DB008
	.4byte gUnk_080DB038
	.4byte gUnk_080DB088
	.4byte gUnk_080DB098
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C61C
	.4byte sub_0804C620

gUnk_080DB0C0:: @ 080DB0C0
	.incbin "data_080D5360/gUnk_080DB0C0.bin"

gUnk_080DB0E0:: @ 080DB0E0
	.incbin "data_080D5360/gUnk_080DB0E0.bin"

gUnk_080DB100:: @ 080DB100
	.incbin "data_080D5360/gUnk_080DB100.bin"

gUnk_080DB110:: @ 080DB110
	.incbin "data_080D5360/gUnk_080DB110.bin"

Room_MinishHouseInteriors_HyruleFieldSouthwest:: @ 080DB118
	.4byte gUnk_080DB0C0
	.4byte gUnk_080DB0E0
	.4byte gUnk_080DB100
	.4byte gUnk_080DB110
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C63C
	.4byte sub_0804C640

gUnk_080DB138:: @ 080DB138
	.incbin "data_080D5360/gUnk_080DB138.bin"

gUnk_080DB158:: @ 080DB158
	.incbin "data_080D5360/gUnk_080DB158.bin"

gUnk_080DB178:: @ 080DB178
	.incbin "data_080D5360/gUnk_080DB178.bin"

gUnk_080DB188:: @ 080DB188
	.incbin "data_080D5360/gUnk_080DB188.bin"

Room_MinishHouseInteriors_HyruleFieldOutsideLinksHouse:: @ 080DB190
	.4byte gUnk_080DB138
	.4byte gUnk_080DB158
	.4byte gUnk_080DB178
	.4byte gUnk_080DB188
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C648
	.4byte sub_0804C64C

gUnk_080DB1B0:: @ 080DB1B0
	.incbin "data_080D5360/gUnk_080DB1B0.bin"

gUnk_080DB1D0:: @ 080DB1D0
	.incbin "data_080D5360/gUnk_080DB1D0.bin"

gUnk_080DB1F0:: @ 080DB1F0
	.incbin "data_080D5360/gUnk_080DB1F0.bin"

gUnk_080DB200:: @ 080DB200
	.incbin "data_080D5360/gUnk_080DB200.bin"

Room_MinishHouseInteriors_NextToKnuckle:: @ 080DB208
	.4byte gUnk_080DB1B0
	.4byte gUnk_080DB1D0
	.4byte gUnk_080DB1F0
	.4byte gUnk_080DB200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C654
	.4byte sub_0804C658

gUnk_080DB228:: @ 080DB228
	.incbin "data_080D5360/gUnk_080DB228.bin"

gUnk_080DB238:: @ 080DB238
	.incbin "data_080D5360/gUnk_080DB238.bin"
	.4byte script_08012430
	.incbin "data_080D5360/gUnk_080DB238_1.bin"

gUnk_080DB258:: @ 080DB258
	.incbin "data_080D5360/gUnk_080DB258.bin"

gUnk_080DB278:: @ 080DB278
	.incbin "data_080D5360/gUnk_080DB278.bin"

gUnk_080DB288:: @ 080DB288
	.incbin "data_080D5360/gUnk_080DB288.bin"

Room_MinishHouseInteriors_Librari:: @ 080DB290
	.4byte gUnk_080DB228
	.4byte gUnk_080DB258
	.4byte gUnk_080DB278
	.4byte gUnk_080DB288
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C660
	.4byte sub_0804C664

gUnk_080DB2B0:: @ 080DB2B0
	.incbin "data_080D5360/gUnk_080DB2B0.bin"

gUnk_080DB2D0:: @ 080DB2D0
	.incbin "data_080D5360/gUnk_080DB2D0.bin"

gUnk_080DB2F0:: @ 080DB2F0
	.incbin "data_080D5360/gUnk_080DB2F0.bin"

gUnk_080DB300:: @ 080DB300
	.incbin "data_080D5360/gUnk_080DB300.bin"

Room_MinishHouseInteriors_HyruleFieldExit:: @ 080DB308
	.4byte gUnk_080DB2B0
	.4byte gUnk_080DB2D0
	.4byte gUnk_080DB2F0
	.4byte gUnk_080DB300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C684
	.4byte sub_0804C688

gUnk_080DB328:: @ 080DB328
	.incbin "data_080D5360/gUnk_080DB328.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB328_1.bin"

gUnk_080DB348:: @ 080DB348
	.incbin "data_080D5360/gUnk_080DB348.bin"

gUnk_080DB368:: @ 080DB368
	.incbin "data_080D5360/gUnk_080DB368.bin"

gUnk_080DB378:: @ 080DB378
	.incbin "data_080D5360/gUnk_080DB378.bin"

Room_MinishHouseInteriors_HyruleTown:: @ 080DB380
	.4byte gUnk_080DB328
	.4byte gUnk_080DB348
	.4byte gUnk_080DB368
	.4byte gUnk_080DB378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C690
	.4byte sub_0804C694

gUnk_080DB3A0:: @ 080DB3A0
	.incbin "data_080D5360/gUnk_080DB3A0.bin"

gUnk_080DB3C0:: @ 080DB3C0
	.incbin "data_080D5360/gUnk_080DB3C0.bin"

gUnk_080DB3E0:: @ 080DB3E0
	.incbin "data_080D5360/gUnk_080DB3E0.bin"

gUnk_080DB3F0:: @ 080DB3F0
	.incbin "data_080D5360/gUnk_080DB3F0.bin"

Room_MinishHouseInteriors_MinishWoodsBomb:: @ 080DB3F8
	.4byte gUnk_080DB3A0
	.4byte gUnk_080DB3C0
	.4byte gUnk_080DB3E0
	.4byte gUnk_080DB3F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C69C
	.4byte sub_0804C6A0

gUnk_080DB418:: @ 080DB418
	.incbin "data_080D5360/gUnk_080DB418.bin"

gUnk_080DB438:: @ 080DB438
	.incbin "data_080D5360/gUnk_080DB438.bin"

gUnk_080DB458:: @ 080DB458
	.incbin "data_080D5360/gUnk_080DB458.bin"

gUnk_080DB468:: @ 080DB468
	.incbin "data_080D5360/gUnk_080DB468.bin"

Room_MinishHouseInteriors_LakeHyliaOcarina:: @ 080DB470
	.4byte gUnk_080DB418
	.4byte gUnk_080DB438
	.4byte gUnk_080DB458
	.4byte gUnk_080DB468
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C6A8
	.4byte sub_0804C6AC

gUnk_080DB490:: @ 080DB490
	.incbin "data_080D5360/gUnk_080DB490.bin"

gUnk_080DB4A0:: @ 080DB4A0
	.incbin "data_080D5360/gUnk_080DB4A0.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB4A0_1.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB4A0_2.bin"

gUnk_080DB4D0:: @ 080DB4D0
	.incbin "data_080D5360/gUnk_080DB4D0.bin"
	.4byte script_0800ED90
	.incbin "data_080D5360/gUnk_080DB4D0_1.bin"
	.4byte script_0800EE50
	.incbin "data_080D5360/gUnk_080DB4D0_2.bin"

gUnk_080DB500:: @ 080DB500
	.incbin "data_080D5360/gUnk_080DB500.bin"

gUnk_080DB530:: @ 080DB530
	.incbin "data_080D5360/gUnk_080DB530.bin"

gUnk_080DB540:: @ 080DB540
	.incbin "data_080D5360/gUnk_080DB540.bin"

Room_TownMinishHoles_MayorsHouse:: @ 080DB548
	.4byte gUnk_080DB490
	.4byte gUnk_080DB500
	.4byte gUnk_080DB530
	.4byte gUnk_080DB540
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C6B4
	.4byte sub_0804C6B8

gUnk_080DB568:: @ 080DB568
	.incbin "data_080D5360/gUnk_080DB568.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB568_1.bin"

gUnk_080DB588:: @ 080DB588
	.incbin "data_080D5360/gUnk_080DB588.bin"

gUnk_080DB5A8:: @ 080DB5A8
	.incbin "data_080D5360/gUnk_080DB5A8.bin"

gUnk_080DB5B8:: @ 080DB5B8
	.incbin "data_080D5360/gUnk_080DB5B8.bin"

Room_TownMinishHoles_WestOracle:: @ 080DB5C0
	.4byte gUnk_080DB568
	.4byte gUnk_080DB588
	.4byte gUnk_080DB5A8
	.4byte gUnk_080DB5B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C6F4
	.4byte sub_0804C6F8

gUnk_080DB5E0:: @ 080DB5E0
	.incbin "data_080D5360/gUnk_080DB5E0.bin"
	.4byte script_0800EFC0
	.incbin "data_080D5360/gUnk_080DB5E0_1.bin"

gUnk_080DB600:: @ 080DB600
	.incbin "data_080D5360/gUnk_080DB600.bin"

gUnk_080DB630:: @ 080DB630
	.incbin "data_080D5360/gUnk_080DB630.bin"

gUnk_080DB640:: @ 080DB640
	.incbin "data_080D5360/gUnk_080DB640.bin"

Room_TownMinishHoles_DrLeft:: @ 080DB648
	.4byte gUnk_080DB5E0
	.4byte gUnk_080DB600
	.4byte gUnk_080DB630
	.4byte gUnk_080DB640
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C700
	.4byte sub_0804C704

gUnk_080DB668:: @ 080DB668
	.incbin "data_080D5360/gUnk_080DB668.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB668_1.bin"

gUnk_080DB688:: @ 080DB688
	.incbin "data_080D5360/gUnk_080DB688.bin"

gUnk_080DB6B8:: @ 080DB6B8
	.incbin "data_080D5360/gUnk_080DB6B8.bin"

gUnk_080DB6C8:: @ 080DB6C8
	.incbin "data_080D5360/gUnk_080DB6C8.bin"

Room_TownMinishHoles_Carpenter:: @ 080DB6D0
	.4byte gUnk_080DB668
	.4byte gUnk_080DB688
	.4byte gUnk_080DB6B8
	.4byte gUnk_080DB6C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C70C
	.4byte sub_0804C710

gUnk_080DB6F0:: @ 080DB6F0
	.incbin "data_080D5360/gUnk_080DB6F0.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB6F0_1.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB6F0_2.bin"

gUnk_080DB720:: @ 080DB720
	.incbin "data_080D5360/gUnk_080DB720.bin"

gUnk_080DB750:: @ 080DB750
	.incbin "data_080D5360/gUnk_080DB750.bin"

gUnk_080DB760:: @ 080DB760
	.incbin "data_080D5360/gUnk_080DB760.bin"

Room_TownMinishHoles_Cafe:: @ 080DB768
	.4byte gUnk_080DB6F0
	.4byte gUnk_080DB720
	.4byte gUnk_080DB750
	.4byte gUnk_080DB760
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C718
	.4byte sub_0804C71C

gUnk_080DB788:: @ 080DB788
	.incbin "data_080D5360/gUnk_080DB788.bin"

gUnk_080DB798:: @ 080DB798
	.incbin "data_080D5360/gUnk_080DB798.bin"

gUnk_080DB7C8:: @ 080DB7C8
	.incbin "data_080D5360/gUnk_080DB7C8.bin"

gUnk_080DB7D8:: @ 080DB7D8
	.incbin "data_080D5360/gUnk_080DB7D8.bin"

Room_TownMinishHoles_5:: @ 080DB7E0
	.4byte gUnk_080DB788
	.4byte gUnk_080DB798
	.4byte gUnk_080DB7C8
	.4byte gUnk_080DB7D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C724
	.4byte sub_0804C728

gUnk_080DB800:: @ 080DB800
	.incbin "data_080D5360/gUnk_080DB800.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB800_1.bin"

gUnk_080DB820:: @ 080DB820
	.incbin "data_080D5360/gUnk_080DB820.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DB820_1.bin"

gUnk_080DB840:: @ 080DB840
	.incbin "data_080D5360/gUnk_080DB840.bin"

gUnk_080DB8F0:: @ 080DB8F0
	.incbin "data_080D5360/gUnk_080DB8F0.bin"

gUnk_080DB910:: @ 080DB910
	.incbin "data_080D5360/gUnk_080DB910.bin"

gUnk_080DB980:: @ 080DB980
	.incbin "data_080D5360/gUnk_080DB980.bin"

gUnk_080DB990:: @ 080DB990
	.incbin "data_080D5360/gUnk_080DB990.bin"

gUnk_080DB998:: @ 080DB998
	.incbin "data_080D5360/gUnk_080DB998.bin"

gUnk_080DB9A8:: @ 080DB9A8
	.incbin "data_080D5360/gUnk_080DB9A8.bin"

Room_TownMinishHoles_LibraryBookshelf:: @ 080DB9BC
	.4byte gUnk_080DB800
	.4byte gUnk_080DB840
	.4byte gUnk_080DB980
	.4byte gUnk_080DB990
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C730
	.4byte sub_0804C758
	.4byte gUnk_080DB998
	.4byte gUnk_080DB9A8
	.4byte gUnk_080DB820

gUnk_080DB9E8:: @ 080DB9E8
	.incbin "data_080D5360/gUnk_080DB9E8.bin"
	.4byte script_0800E964
	.incbin "data_080D5360/gUnk_080DB9E8_1.bin"

gUnk_080DBA08:: @ 080DBA08
	.incbin "data_080D5360/gUnk_080DBA08.bin"
	.4byte script_0800E6E8
	.incbin "data_080D5360/gUnk_080DBA08_1.bin"

gUnk_080DBA28:: @ 080DBA28
	.incbin "data_080D5360/gUnk_080DBA28.bin"

gUnk_080DBA68:: @ 080DBA68
	.incbin "data_080D5360/gUnk_080DBA68.bin"

gUnk_080DBA78:: @ 080DBA78
	.incbin "data_080D5360/gUnk_080DBA78.bin"

Room_TownMinishHoles_LibrariBookHouse:: @ 080DBA80
	.4byte gUnk_080DB9E8
	.4byte gUnk_080DBA28
	.4byte gUnk_080DBA68
	.4byte gUnk_080DBA78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C788
	.4byte sub_0804C78C

gUnk_080DBAA0:: @ 080DBAA0
	.incbin "data_080D5360/gUnk_080DBAA0.bin"

gUnk_080DBAD0:: @ 080DBAD0
	.incbin "data_080D5360/gUnk_080DBAD0.bin"
	.4byte script_08013114
	.incbin "data_080D5360/gUnk_080DBAD0_1.bin"
	.4byte script_08013114
	.incbin "data_080D5360/gUnk_080DBAD0_2.bin"
	.4byte script_08013114
	.incbin "data_080D5360/gUnk_080DBAD0_3.bin"

gUnk_080DBB10:: @ 080DBB10
	.incbin "data_080D5360/gUnk_080DBB10.bin"
	.4byte script_08013114
	.incbin "data_080D5360/gUnk_080DBB10_1.bin"
	.4byte script_08013114
	.incbin "data_080D5360/gUnk_080DBB10_2.bin"
	.4byte script_08013114
	.incbin "data_080D5360/gUnk_080DBB10_3.bin"

gUnk_080DBB50:: @ 080DBB50
	.incbin "data_080D5360/gUnk_080DBB50.bin"

gUnk_080DBB70:: @ 080DBB70
	.incbin "data_080D5360/gUnk_080DBB70.bin"

gUnk_080DBB90:: @ 080DBB90
	.incbin "data_080D5360/gUnk_080DBB90.bin"
	.4byte script_08013188
	.incbin "data_080D5360/gUnk_080DBB90_1.bin"

gUnk_080DBBB0:: @ 080DBBB0
	.incbin "data_080D5360/gUnk_080DBBB0.bin"

gUnk_080DBBC0:: @ 080DBBC0
	.incbin "data_080D5360/gUnk_080DBBC0.bin"

Room_TownMinishHoles_RemShoeShop:: @ 080DBBC8
	.4byte gUnk_080DBAA0
	.4byte 0x00000000
	.4byte gUnk_080DBBB0
	.4byte gUnk_080DBBC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C7B4
	.4byte sub_0804C7B8

gUnk_080DBBE8:: @ 080DBBE8
	.incbin "data_080D5360/gUnk_080DBBE8.bin"

gUnk_080DBBF8:: @ 080DBBF8
	.incbin "data_080D5360/gUnk_080DBBF8.bin"

gUnk_080DBC38:: @ 080DBC38
	.incbin "data_080D5360/gUnk_080DBC38.bin"

Room_MinishCaves_BeanPesto:: @ 080DBC48
	.4byte gUnk_080DBBE8
	.4byte 0x00000000
	.4byte gUnk_080DBBF8
	.4byte gUnk_080DBC38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C830
	.4byte nullsub_210

gUnk_080DBC68:: @ 080DBC68
	.incbin "data_080D5360/gUnk_080DBC68.bin"

gUnk_080DBC78:: @ 080DBC78
	.incbin "data_080D5360/gUnk_080DBC78.bin"

gUnk_080DBC88:: @ 080DBC88
	.incbin "data_080D5360/gUnk_080DBC88.bin"

Room_MinishCaves_SoutheastWater1:: @ 080DBC98
	.4byte gUnk_080DBC68
	.4byte 0x00000000
	.4byte gUnk_080DBC78
	.4byte gUnk_080DBC88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C838
	.4byte nullsub_211

gUnk_080DBCB8:: @ 080DBCB8
	.incbin "data_080D5360/gUnk_080DBCB8.bin"

gUnk_080DBCD8:: @ 080DBCD8
	.incbin "data_080D5360/gUnk_080DBCD8.bin"

gUnk_080DBD58:: @ 080DBD58
	.incbin "data_080D5360/gUnk_080DBD58.bin"

Room_MinishCaves_SoutheastWater2:: @ 080DBD60
	.4byte gUnk_080DBCB8
	.4byte 0x00000000
	.4byte gUnk_080DBCD8
	.4byte gUnk_080DBD58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C840
	.4byte nullsub_212

gUnk_080DBD80:: @ 080DBD80
	.incbin "data_080D5360/gUnk_080DBD80.bin"

gUnk_080DBDA0:: @ 080DBDA0
	.incbin "data_080D5360/gUnk_080DBDA0.bin"

gUnk_080DBDF0:: @ 080DBDF0
	.incbin "data_080D5360/gUnk_080DBDF0.bin"

Room_MinishCaves_Ruins:: @ 080DBE00
	.4byte gUnk_080DBD80
	.4byte 0x00000000
	.4byte gUnk_080DBDA0
	.4byte gUnk_080DBDF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C848
	.4byte nullsub_213

gUnk_080DBE20:: @ 080DBE20
	.incbin "data_080D5360/gUnk_080DBE20.bin"

gUnk_080DBE40:: @ 080DBE40
	.incbin "data_080D5360/gUnk_080DBE40.bin"

gUnk_080DBE50:: @ 080DBE50
	.incbin "data_080D5360/gUnk_080DBE50.bin"

Room_MinishCaves_OutsideLinksHouse:: @ 080DBE58
	.4byte gUnk_080DBE20
	.4byte 0x00000000
	.4byte gUnk_080DBE40
	.4byte gUnk_080DBE50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C850
	.4byte nullsub_214

gUnk_080DBE78:: @ 080DBE78
	.incbin "data_080D5360/gUnk_080DBE78.bin"

gUnk_080DBE88:: @ 080DBE88
	.incbin "data_080D5360/gUnk_080DBE88.bin"

gUnk_080DBED8:: @ 080DBED8
	.incbin "data_080D5360/gUnk_080DBED8.bin"

Room_MinishCaves_MinishWoodsNorth1:: @ 080DBEE8
	.4byte gUnk_080DBE78
	.4byte 0x00000000
	.4byte gUnk_080DBE88
	.4byte gUnk_080DBED8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C858
	.4byte nullsub_215

gUnk_080DBF08:: @ 080DBF08
	.incbin "data_080D5360/gUnk_080DBF08.bin"

gUnk_080DBF18:: @ 080DBF18
	.incbin "data_080D5360/gUnk_080DBF18.bin"

gUnk_080DBF58:: @ 080DBF58
	.incbin "data_080D5360/gUnk_080DBF58.bin"

Room_MinishCaves_MinishWoodsNorth2:: @ 080DBF60
	.4byte gUnk_080DBF08
	.4byte 0x00000000
	.4byte gUnk_080DBF18
	.4byte gUnk_080DBF58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C860
	.4byte nullsub_216

gUnk_080DBF80:: @ 080DBF80
	.incbin "data_080D5360/gUnk_080DBF80.bin"

gUnk_080DBF90:: @ 080DBF90
	.incbin "data_080D5360/gUnk_080DBF90.bin"

gUnk_080DC090:: @ 080DC090
	.incbin "data_080D5360/gUnk_080DC090.bin"

Room_MinishCaves_LakeHyliaNorth:: @ 080DC0A8
	.4byte gUnk_080DBF80
	.4byte 0x00000000
	.4byte gUnk_080DBF90
	.4byte gUnk_080DC090
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C868
	.4byte nullsub_217

gUnk_080DC0C8:: @ 080DC0C8
	.incbin "data_080D5360/gUnk_080DC0C8.bin"

gUnk_080DC0D8:: @ 080DC0D8
	.incbin "data_080D5360/gUnk_080DC0D8.bin"

gUnk_080DC108:: @ 080DC108
	.incbin "data_080D5360/gUnk_080DC108.bin"

gUnk_080DC158:: @ 080DC158
	.incbin "data_080D5360/gUnk_080DC158.bin"

Room_MinishCaves_LakeHyliaLibrari:: @ 080DC160
	.4byte gUnk_080DC0C8
	.4byte gUnk_080DC0D8
	.4byte gUnk_080DC108
	.4byte gUnk_080DC158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C870
	.4byte nullsub_218

gUnk_080DC180:: @ 080DC180
	.incbin "data_080D5360/gUnk_080DC180.bin"

gUnk_080DC1A0:: @ 080DC1A0
	.incbin "data_080D5360/gUnk_080DC1A0.bin"

gUnk_080DC240:: @ 080DC240
	.incbin "data_080D5360/gUnk_080DC240.bin"

Room_MinishCaves_MinishWoodsSouthwest:: @ 080DC260
	.4byte gUnk_080DC180
	.4byte 0x00000000
	.4byte gUnk_080DC1A0
	.4byte gUnk_080DC240
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C878
	.4byte nullsub_219

gUnk_080DC280:: @ 080DC280
	.incbin "data_080D5360/gUnk_080DC280.bin"

gUnk_080DC390:: @ 080DC390
	.incbin "data_080D5360/gUnk_080DC390.bin"

gUnk_080DC3F0:: @ 080DC3F0
	.incbin "data_080D5360/gUnk_080DC3F0.bin"

gUnk_080DC430:: @ 080DC430
	.incbin "data_080D5360/gUnk_080DC430.bin"

gUnk_080DC470:: @ 080DC470
	.incbin "data_080D5360/gUnk_080DC470.bin"

gUnk_080DC4C0:: @ 080DC4C0
	.incbin "data_080D5360/gUnk_080DC4C0.bin"
	.4byte script_0800C91C
	.incbin "data_080D5360/gUnk_080DC4C0_1.bin"

gUnk_080DC530:: @ 080DC530
	.incbin "data_080D5360/gUnk_080DC530.bin"

gUnk_080DC550:: @ 080DC550
	.incbin "data_080D5360/gUnk_080DC550.bin"

gUnk_080DC560:: @ 080DC560
	.incbin "data_080D5360/gUnk_080DC560.bin"

Room_MinishVillage_Main:: @ 080DC568
	.4byte gUnk_080DC280
	.4byte 0x00000000
	.4byte gUnk_080DC550
	.4byte gUnk_080DC560
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C880
	.4byte sub_0804C884

gUnk_080DC588:: @ 080DC588
	.incbin "data_080D5360/gUnk_080DC588.bin"

gUnk_080DC5A8:: @ 080DC5A8
	.incbin "data_080D5360/gUnk_080DC5A8.bin"

gUnk_080DC5B8:: @ 080DC5B8
	.incbin "data_080D5360/gUnk_080DC5B8.bin"

Room_MinishVillage_SideHouse:: @ 080DC5C0
	.4byte gUnk_080DC588
	.4byte 0x00000000
	.4byte gUnk_080DC5A8
	.4byte gUnk_080DC5B8
	.4byte 0x00000000
	.4byte sub_0804C918
	.4byte sub_0804C910
	.4byte nullsub_220

gUnk_080DC5E0:: @ 080DC5E0
	.incbin "data_080D5360/gUnk_080DC5E0.bin"

gUnk_080DC5F0:: @ 080DC5F0
	.incbin "data_080D5360/gUnk_080DC5F0.bin"

gUnk_080DC600:: @ 080DC600
	.incbin "data_080D5360/gUnk_080DC600.bin"

Room_CastleGardenMinishHoles_East:: @ 080DC610
	.4byte gUnk_080DC5E0
	.4byte 0x00000000
	.4byte gUnk_080DC5F0
	.4byte gUnk_080DC600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C948
	.4byte nullsub_221

gUnk_080DC630:: @ 080DC630
	.incbin "data_080D5360/gUnk_080DC630.bin"

gUnk_080DC640:: @ 080DC640
	.incbin "data_080D5360/gUnk_080DC640.bin"

gUnk_080DC650:: @ 080DC650
	.incbin "data_080D5360/gUnk_080DC650.bin"

Room_CastleGardenMinishHoles_West:: @ 080DC660
	.4byte gUnk_080DC630
	.4byte 0x00000000
	.4byte gUnk_080DC640
	.4byte gUnk_080DC650
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C950
	.4byte nullsub_222

gUnk_080DC680:: @ 080DC680
	.incbin "data_080D5360/gUnk_080DC680.bin"

gUnk_080DC690:: @ 080DC690
	.incbin "data_080D5360/gUnk_080DC690.bin"

gUnk_080DC6A0:: @ 080DC6A0
	.incbin "data_080D5360/gUnk_080DC6A0.bin"

Room_37_0:: @ 080DC6B0
	.4byte gUnk_080DC680
	.4byte 0x00000000
	.4byte gUnk_080DC690
	.4byte gUnk_080DC6A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C958
	.4byte nullsub_223

gUnk_080DC6D0:: @ 080DC6D0
	.incbin "data_080D5360/gUnk_080DC6D0.bin"

gUnk_080DC6E0:: @ 080DC6E0
	.incbin "data_080D5360/gUnk_080DC6E0.bin"

gUnk_080DC6F0:: @ 080DC6F0
	.incbin "data_080D5360/gUnk_080DC6F0.bin"

Room_37_1:: @ 080DC700
	.4byte gUnk_080DC6D0
	.4byte 0x00000000
	.4byte gUnk_080DC6E0
	.4byte gUnk_080DC6F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C960
	.4byte nullsub_224

gUnk_080DC720:: @ 080DC720
	.incbin "data_080D5360/gUnk_080DC720.bin"

gUnk_080DC730:: @ 080DC730
	.incbin "data_080D5360/gUnk_080DC730.bin"

gUnk_080DC770:: @ 080DC770
	.incbin "data_080D5360/gUnk_080DC770.bin"

gUnk_080DC780:: @ 080DC780
	.incbin "data_080D5360/gUnk_080DC780.bin"

Room_MinishCracks_LonLonRanchNorth:: @ 080DC790
	.4byte gUnk_080DC720
	.4byte gUnk_080DC730
	.4byte gUnk_080DC770
	.4byte gUnk_080DC780
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C968
	.4byte nullsub_225

gUnk_080DC7B0:: @ 080DC7B0
	.incbin "data_080D5360/gUnk_080DC7B0.bin"

gUnk_080DC7D0:: @ 080DC7D0
	.incbin "data_080D5360/gUnk_080DC7D0.bin"

gUnk_080DC830:: @ 080DC830
	.incbin "data_080D5360/gUnk_080DC830.bin"

gUnk_080DC840:: @ 080DC840
	.incbin "data_080D5360/gUnk_080DC840.bin"

Room_MinishCracks_LakeHyliaEast:: @ 080DC848
	.4byte gUnk_080DC7B0
	.4byte gUnk_080DC7D0
	.4byte gUnk_080DC830
	.4byte gUnk_080DC840
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C970
	.4byte nullsub_226

gUnk_080DC868:: @ 080DC868
	.incbin "data_080D5360/gUnk_080DC868.bin"

gUnk_080DC888:: @ 080DC888
	.incbin "data_080D5360/gUnk_080DC888.bin"

gUnk_080DC8D8:: @ 080DC8D8
	.incbin "data_080D5360/gUnk_080DC8D8.bin"

gUnk_080DC8E8:: @ 080DC8E8
	.incbin "data_080D5360/gUnk_080DC8E8.bin"

Room_MinishCracks_HyruleCastleGarden:: @ 080DC8F0
	.4byte gUnk_080DC868
	.4byte gUnk_080DC888
	.4byte gUnk_080DC8D8
	.4byte gUnk_080DC8E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C978
	.4byte nullsub_227

gUnk_080DC910:: @ 080DC910
	.incbin "data_080D5360/gUnk_080DC910.bin"

gUnk_080DC930:: @ 080DC930
	.incbin "data_080D5360/gUnk_080DC930.bin"

gUnk_080DC980:: @ 080DC980
	.incbin "data_080D5360/gUnk_080DC980.bin"

gUnk_080DC990:: @ 080DC990
	.incbin "data_080D5360/gUnk_080DC990.bin"

Room_MinishCracks_MtCrenel:: @ 080DC9A0
	.4byte gUnk_080DC910
	.4byte gUnk_080DC930
	.4byte gUnk_080DC980
	.4byte gUnk_080DC990
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C980
	.4byte nullsub_228

gUnk_080DC9C0:: @ 080DC9C0
	.incbin "data_080D5360/gUnk_080DC9C0.bin"

gUnk_080DC9E0:: @ 080DC9E0
	.incbin "data_080D5360/gUnk_080DC9E0.bin"

gUnk_080DCA30:: @ 080DCA30
	.incbin "data_080D5360/gUnk_080DCA30.bin"

gUnk_080DCA40:: @ 080DCA40
	.incbin "data_080D5360/gUnk_080DCA40.bin"

Room_MinishCracks_EastHyruleCastle:: @ 080DCA48
	.4byte gUnk_080DC9C0
	.4byte gUnk_080DC9E0
	.4byte gUnk_080DCA30
	.4byte gUnk_080DCA40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C988
	.4byte nullsub_229

gUnk_080DCA68:: @ 080DCA68
	.incbin "data_080D5360/gUnk_080DCA68.bin"

gUnk_080DCA78:: @ 080DCA78
	.incbin "data_080D5360/gUnk_080DCA78.bin"

gUnk_080DCAB8:: @ 080DCAB8
	.incbin "data_080D5360/gUnk_080DCAB8.bin"

gUnk_080DCAC8:: @ 080DCAC8
	.incbin "data_080D5360/gUnk_080DCAC8.bin"

Room_MinishCracks_5:: @ 080DCAD0
	.4byte gUnk_080DCA68
	.4byte gUnk_080DCA78
	.4byte gUnk_080DCAB8
	.4byte gUnk_080DCAC8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C990
	.4byte nullsub_230

gUnk_080DCAF0:: @ 080DCAF0
	.incbin "data_080D5360/gUnk_080DCAF0.bin"

gUnk_080DCB10:: @ 080DCB10
	.incbin "data_080D5360/gUnk_080DCB10.bin"

gUnk_080DCB40:: @ 080DCB40
	.incbin "data_080D5360/gUnk_080DCB40.bin"

gUnk_080DCB60:: @ 080DCB60
	.incbin "data_080D5360/gUnk_080DCB60.bin"

gUnk_080DCBC0:: @ 080DCBC0
	.incbin "data_080D5360/gUnk_080DCBC0.bin"

Room_MinishCracks_CastleWildsBowHole:: @ 080DCBD8
	.4byte gUnk_080DCAF0
	.4byte gUnk_080DCB40
	.4byte 0x00000000
	.4byte gUnk_080DCBC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C998
	.4byte sub_0804C99C
	.4byte gUnk_080DCB60

gUnk_080DCBFC:: @ 080DCBFC
	.incbin "data_080D5360/gUnk_080DCBFC.bin"

gUnk_080DCC1C:: @ 080DCC1C
	.incbin "data_080D5360/gUnk_080DCC1C.bin"

gUnk_080DCC6C:: @ 080DCC6C
	.incbin "data_080D5360/gUnk_080DCC6C.bin"

gUnk_080DCC7C:: @ 080DCC7C
	.incbin "data_080D5360/gUnk_080DCC7C.bin"

Room_MinishCracks_RuinsEntrance:: @ 080DCC8C
	.4byte gUnk_080DCBFC
	.4byte gUnk_080DCC1C
	.4byte gUnk_080DCC6C
	.4byte gUnk_080DCC7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9B4
	.4byte nullsub_231

gUnk_080DCCAC:: @ 080DCCAC
	.incbin "data_080D5360/gUnk_080DCCAC.bin"

gUnk_080DCCBC:: @ 080DCCBC
	.incbin "data_080D5360/gUnk_080DCCBC.bin"

gUnk_080DCCDC:: @ 080DCCDC
	.incbin "data_080D5360/gUnk_080DCCDC.bin"

gUnk_080DCCEC:: @ 080DCCEC
	.incbin "data_080D5360/gUnk_080DCCEC.bin"

Room_MinishCracks_MinishWoodsSouth:: @ 080DCCFC
	.4byte gUnk_080DCCAC
	.4byte gUnk_080DCCBC
	.4byte gUnk_080DCCDC
	.4byte gUnk_080DCCEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9BC
	.4byte nullsub_232

gUnk_080DCD1C:: @ 080DCD1C
	.incbin "data_080D5360/gUnk_080DCD1C.bin"

gUnk_080DCD2C:: @ 080DCD2C
	.incbin "data_080D5360/gUnk_080DCD2C.bin"

gUnk_080DCD4C:: @ 080DCD4C
	.incbin "data_080D5360/gUnk_080DCD4C.bin"

gUnk_080DCD5C:: @ 080DCD5C
	.incbin "data_080D5360/gUnk_080DCD5C.bin"

Room_MinishCracks_CastorWildsNorth:: @ 080DCD74
	.4byte gUnk_080DCD1C
	.4byte gUnk_080DCD2C
	.4byte gUnk_080DCD4C
	.4byte gUnk_080DCD5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9C4
	.4byte nullsub_233

gUnk_080DCD94:: @ 080DCD94
	.incbin "data_080D5360/gUnk_080DCD94.bin"

gUnk_080DCDA4:: @ 080DCDA4
	.incbin "data_080D5360/gUnk_080DCDA4.bin"

gUnk_080DCDC4:: @ 080DCDC4
	.incbin "data_080D5360/gUnk_080DCDC4.bin"

gUnk_080DCDD4:: @ 080DCDD4
	.incbin "data_080D5360/gUnk_080DCDD4.bin"

Room_MinishCracks_CastorWildsWest:: @ 080DCDEC
	.4byte gUnk_080DCD94
	.4byte gUnk_080DCDA4
	.4byte gUnk_080DCDC4
	.4byte gUnk_080DCDD4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9CC
	.4byte nullsub_234

gUnk_080DCE0C:: @ 080DCE0C
	.incbin "data_080D5360/gUnk_080DCE0C.bin"

gUnk_080DCE1C:: @ 080DCE1C
	.incbin "data_080D5360/gUnk_080DCE1C.bin"

gUnk_080DCE3C:: @ 080DCE3C
	.incbin "data_080D5360/gUnk_080DCE3C.bin"

gUnk_080DCE4C:: @ 080DCE4C
	.incbin "data_080D5360/gUnk_080DCE4C.bin"

Room_MinishCracks_CastorWildsMiddle:: @ 080DCE64
	.4byte gUnk_080DCE0C
	.4byte gUnk_080DCE1C
	.4byte gUnk_080DCE3C
	.4byte gUnk_080DCE4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9D4
	.4byte nullsub_235

gUnk_080DCE84:: @ 080DCE84
	.incbin "data_080D5360/gUnk_080DCE84.bin"

gUnk_080DCE94:: @ 080DCE94
	.incbin "data_080D5360/gUnk_080DCE94.bin"

gUnk_080DCEB4:: @ 080DCEB4
	.incbin "data_080D5360/gUnk_080DCEB4.bin"

gUnk_080DCEC4:: @ 080DCEC4
	.incbin "data_080D5360/gUnk_080DCEC4.bin"

Room_MinishCracks_RuinsTektite:: @ 080DCEDC
	.4byte gUnk_080DCE84
	.4byte gUnk_080DCE94
	.4byte gUnk_080DCEB4
	.4byte gUnk_080DCEC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9DC
	.4byte nullsub_236

gUnk_080DCEFC:: @ 080DCEFC
	.incbin "data_080D5360/gUnk_080DCEFC.bin"

gUnk_080DCF0C:: @ 080DCF0C
	.incbin "data_080D5360/gUnk_080DCF0C.bin"

gUnk_080DCF2C:: @ 080DCF2C
	.incbin "data_080D5360/gUnk_080DCF2C.bin"

gUnk_080DCF3C:: @ 080DCF3C
	.incbin "data_080D5360/gUnk_080DCF3C.bin"

Room_MinishCracks_CastorWildsNextToBow:: @ 080DCF54
	.4byte gUnk_080DCEFC
	.4byte gUnk_080DCF0C
	.4byte gUnk_080DCF2C
	.4byte gUnk_080DCF3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9E4
	.4byte nullsub_237

gUnk_080DCF74:: @ 080DCF74
	.incbin "data_080D5360/gUnk_080DCF74.bin"

gUnk_080DCF84:: @ 080DCF84
	.incbin "data_080D5360/gUnk_080DCF84.bin"

gUnk_080DCF94:: @ 080DCF94
	.incbin "data_080D5360/gUnk_080DCF94.bin"

gUnk_080DCFA4:: @ 080DCFA4
	.incbin "data_080D5360/gUnk_080DCFA4.bin"

Room_MinishCracks_E:: @ 080DCFAC
	.4byte gUnk_080DCF74
	.4byte gUnk_080DCF84
	.4byte gUnk_080DCF94
	.4byte gUnk_080DCFA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9EC
	.4byte nullsub_238

gUnk_080DCFCC:: @ 080DCFCC
	.incbin "data_080D5360/gUnk_080DCFCC.bin"

gUnk_080DCFDC:: @ 080DCFDC
	.incbin "data_080D5360/gUnk_080DCFDC.bin"

gUnk_080DCFEC:: @ 080DCFEC
	.incbin "data_080D5360/gUnk_080DCFEC.bin"

gUnk_080DCFFC:: @ 080DCFFC
	.incbin "data_080D5360/gUnk_080DCFFC.bin"

Room_MinishCracks_F:: @ 080DD004
	.4byte gUnk_080DCFCC
	.4byte gUnk_080DCFDC
	.4byte gUnk_080DCFEC
	.4byte gUnk_080DCFFC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9F4
	.4byte nullsub_239

gUnk_080DD024:: @ 080DD024
	.incbin "data_080D5360/gUnk_080DD024.bin"

gUnk_080DD034:: @ 080DD034
	.incbin "data_080D5360/gUnk_080DD034.bin"

gUnk_080DD044:: @ 080DD044
	.incbin "data_080D5360/gUnk_080DD044.bin"

gUnk_080DD054:: @ 080DD054
	.incbin "data_080D5360/gUnk_080DD054.bin"

Room_MinishCracks_10:: @ 080DD05C
	.4byte gUnk_080DD024
	.4byte gUnk_080DD034
	.4byte gUnk_080DD044
	.4byte gUnk_080DD054
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9FC
	.4byte nullsub_240

gUnk_080DD07C:: @ 080DD07C
	.incbin "data_080D5360/gUnk_080DD07C.bin"

gUnk_080DD08C:: @ 080DD08C
	.incbin "data_080D5360/gUnk_080DD08C.bin"

gUnk_080DD10C:: @ 080DD10C
	.incbin "data_080D5360/gUnk_080DD10C.bin"

gUnk_080DD11C:: @ 080DD11C
	.incbin "data_080D5360/gUnk_080DD11C.bin"

Room_MinishCracks_11:: @ 080DD124
	.4byte gUnk_080DD07C
	.4byte gUnk_080DD08C
	.4byte gUnk_080DD10C
	.4byte gUnk_080DD11C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CA04
	.4byte nullsub_241

gUnk_080DD144:: @ 080DD144
	.incbin "data_080D5360/gUnk_080DD144.bin"
	.4byte script_0800CF88
	.incbin "data_080D5360/gUnk_080DD144_1.bin"
	.4byte script_0800CF88
	.incbin "data_080D5360/gUnk_080DD144_2.bin"
	.4byte script_0800CF50
	.incbin "data_080D5360/gUnk_080DD144_3.bin"
	.4byte script_0800D414
	.incbin "data_080D5360/gUnk_080DD144_4.bin"

gUnk_080DD214:: @ 080DD214
	.incbin "data_080D5360/gUnk_080DD214.bin"
	.4byte script_0800D278
	.incbin "data_080D5360/gUnk_080DD214_1.bin"
	.4byte script_0800D278
	.incbin "data_080D5360/gUnk_080DD214_2.bin"
	.4byte script_0800CFAC
	.incbin "data_080D5360/gUnk_080DD214_3.bin"
	.4byte script_0800D218
	.incbin "data_080D5360/gUnk_080DD214_4.bin"
	.4byte script_0800D254
	.incbin "data_080D5360/gUnk_080DD214_5.bin"

gUnk_080DD274:: @ 080DD274
	.incbin "data_080D5360/gUnk_080DD274.bin"
	.4byte script_0800D350
	.incbin "data_080D5360/gUnk_080DD274_1.bin"

gUnk_080DD294:: @ 080DD294
	.incbin "data_080D5360/gUnk_080DD294.bin"
	.4byte script_0800CF50
	.incbin "data_080D5360/gUnk_080DD294_1.bin"

gUnk_080DD2B4:: @ 080DD2B4
	.incbin "data_080D5360/gUnk_080DD2B4.bin"

gUnk_080DD304:: @ 080DD304
	.incbin "data_080D5360/gUnk_080DD304.bin"

gUnk_080DD314:: @ 080DD314
	.incbin "data_080D5360/gUnk_080DD314.bin"

Room_MelarisMine_Main:: @ 080DD31C
	.4byte gUnk_080DD144
	.4byte gUnk_080DD2B4
	.4byte gUnk_080DD304
	.4byte gUnk_080DD314
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CA0C
	.4byte sub_0804CA10
	.4byte gUnk_080DD214
	.4byte gUnk_080DD274

gUnk_080DD344:: @ 080DD344
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD344_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD344_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DD344_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DD344_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DD364:: @ 080DD364
	.incbin "data_080D5360/gUnk_080DD364.bin"
	.4byte script_0800B00C
	.incbin "data_080D5360/gUnk_080DD364_1.bin"

gUnk_080DD384:: @ 080DD384
	.incbin "data_080D5360/gUnk_080DD384.bin"

gUnk_080DD3D4:: @ 080DD3D4
	.incbin "data_080D5360/gUnk_080DD3D4.bin"

gUnk_080DD3E4:: @ 080DD3E4
	.incbin "data_080D5360/gUnk_080DD3E4.bin"

Room_CloudTops_House:: @ 080DD3EC
	.4byte gUnk_080DD344
	.4byte gUnk_080DD384
	.4byte gUnk_080DD3D4
	.4byte gUnk_080DD3E4
	.4byte sub_0804CA74
	.4byte 0x00000000
	.4byte sub_0804CA50
	.4byte sub_0804CA54

gUnk_080DD40C:: @ 080DD40C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD40C_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD40C_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DD40C_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DD40C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DD49C:: @ 080DD49C
	.incbin "data_080D5360/gUnk_080DD49C.bin"

gUnk_080DD5CC:: @ 080DD5CC
	.incbin "data_080D5360/gUnk_080DD5CC.bin"

gUnk_080DD6BC:: @ 080DD6BC
	.incbin "data_080D5360/gUnk_080DD6BC.bin"

gUnk_080DD6CC:: @ 080DD6CC
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD6CC_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD6CC_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DD6CC_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DD6CC_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

Room_CloudTops_Middle:: @ 080DD70C
	.4byte gUnk_080DD40C
	.4byte gUnk_080DD49C
	.4byte gUnk_080DD6BC
	.4byte gUnk_080DD6CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CA94
	.4byte nullsub_242
	.4byte gUnk_080DD5CC

gUnk_080DD730:: @ 080DD730
	.incbin "data_080D5360/gUnk_080DD730.bin"

gUnk_080DD750:: @ 080DD750
	.incbin "data_080D5360/gUnk_080DD750.bin"
	.4byte script_0800D710
	.incbin "data_080D5360/gUnk_080DD750_1.bin"
	.4byte script_0800D7DC
	.incbin "data_080D5360/gUnk_080DD750_2.bin"
	.4byte script_0800D76C
	.incbin "data_080D5360/gUnk_080DD750_3.bin"

gUnk_080DD790:: @ 080DD790
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD790_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD790_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DD790_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DD790_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DD7E0:: @ 080DD7E0
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD7E0_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD7E0_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DD7E0_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DD7E0_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DD820:: @ 080DD820
	.incbin "data_080D5360/gUnk_080DD820.bin"

gUnk_080DD840:: @ 080DD840
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD840_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD840_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DD840_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DD840_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DD880:: @ 080DD880
	.incbin "data_080D5360/gUnk_080DD880.bin"

gUnk_080DD8A0:: @ 080DD8A0
	.incbin "data_080D5360/gUnk_080DD8A0.bin"

gUnk_080DD8F0:: @ 080DD8F0
.ifdef EU
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DD8F0_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DD8F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

.ifdef EU
	.4byte 0
	.incbin "data_080D5360/gUnk_080DD8F0_2_EU.bin"
	.4byte script_0800D6D0
	.incbin "data_080D5360/gUnk_080DD8F0_3_EU.bin"
.else
	.4byte script_0800D6D0
	.incbin "data_080D5360/gUnk_080DD8F0_4_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte script_0800D6F0
	.incbin "data_080D5360/gUnk_080DD8F0_5_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte script_0800D6F0
	.incbin "data_080D5360/gUnk_080DD8F0_6.bin"
	.4byte script_0800D6B4
	.incbin "data_080D5360/gUnk_080DD8F0_7.bin"
	.4byte script_0800D6B4
	.incbin "data_080D5360/gUnk_080DD8F0_8.bin"
	.4byte script_0800D6B4
	.incbin "data_080D5360/gUnk_080DD8F0_9.bin"
	.4byte script_0800D6B4
	.incbin "data_080D5360/gUnk_080DD8F0_10.bin"
	.4byte script_0800D6B4
	.incbin "data_080D5360/gUnk_080DD8F0_11.bin"

gUnk_080DDA70:: @ 080DDA70
	.incbin "data_080D5360/gUnk_080DDA70.bin"
	.4byte script_0800D60C
	.incbin "data_080D5360/gUnk_080DDA70_1.bin"
	.4byte script_0800D60C
	.incbin "data_080D5360/gUnk_080DDA70_2.bin"
	.4byte script_0800D60C
	.incbin "data_080D5360/gUnk_080DDA70_3.bin"
	.4byte script_0800D60C
	.incbin "data_080D5360/gUnk_080DDA70_4.bin"
	.4byte script_0800D60C
	.incbin "data_080D5360/gUnk_080DDA70_5.bin"
	.4byte script_08014C94
	.incbin "data_080D5360/gUnk_080DDA70_6.bin"
	.4byte script_08014C94
	.incbin "data_080D5360/gUnk_080DDA70_7.bin"

gUnk_080DDAF0:: @ 080DDAF0
	.incbin "data_080D5360/gUnk_080DDAF0.bin"

gUnk_080DDB60:: @ 080DDB60
	.incbin "data_080D5360/gUnk_080DDB60.bin"

gUnk_080DDB68:: @ 080DDB68
	.incbin "data_080D5360/gUnk_080DDB68.bin"

gUnk_080DDB98:: @ 080DDB98
	.incbin "data_080D5360/gUnk_080DDB98.bin"

Room_CloudTops_Bottom:: @ 080DDBC8
	.4byte gUnk_080DD790
	.4byte gUnk_080DD8A0
	.4byte gUnk_080DDAF0
	.4byte gUnk_080DDB60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CA9C
	.4byte sub_0804CAA0
	.4byte gUnk_080DD8F0
	.4byte gUnk_080DDA70
	.4byte gUnk_080DDB68
	.4byte gUnk_080DDB98
	.4byte gUnk_080DD820
	.4byte gUnk_080DD880

gUnk_080DDC00:: @ 080DDC00
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDC00_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDC00_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DDC00_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DDC00_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DDC20:: @ 080DDC20
	.incbin "data_080D5360/gUnk_080DDC20.bin"

gUnk_080DDC50:: @ 080DDC50
	.incbin "data_080D5360/gUnk_080DDC50.bin"

gUnk_080DDCD0:: @ 080DDCD0
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDCD0_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDCD0_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DDCD0_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DDCD0_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DDCE0:: @ 080DDCE0
	.incbin "data_080D5360/gUnk_080DDCE0.bin"

gUnk_080DDCF0:: @ 080DDCF0
	.incbin "data_080D5360/gUnk_080DDCF0.bin"

gUnk_080DDD04:: @ 080DDD04
	.incbin "data_080D5360/gUnk_080DDD04.bin"

gUnk_080DDD18:: @ 080DDD18
	.incbin "data_080D5360/gUnk_080DDD18.bin"

gUnk_080DDD2C:: @ 080DDD2C
	.incbin "data_080D5360/gUnk_080DDD2C.bin"

Room_Ruins_Entrance:: @ 080DDD40
	.4byte gUnk_080DDC00
	.4byte gUnk_080DDC20
	.4byte gUnk_080DDC50
	.4byte gUnk_080DDCD0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CAF4
	.4byte sub_0804CAF8
	.4byte gUnk_080DDCE0
	.4byte gUnk_080DDCF0
	.4byte gUnk_080DDD04
	.4byte gUnk_080DDD18
	.4byte gUnk_080DDD2C

gUnk_080DDD74:: @ 080DDD74
	.incbin "data_080D5360/gUnk_080DDD74.bin"

gUnk_080DDD84:: @ 080DDD84
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDD84_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDD84_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DDD84_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DDD84_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DDDB4:: @ 080DDDB4
	.incbin "data_080D5360/gUnk_080DDDB4.bin"

gUnk_080DDDF4:: @ 080DDDF4
	.incbin "data_080D5360/gUnk_080DDDF4.bin"

gUnk_080DDDFC:: @ 080DDDFC
	.incbin "data_080D5360/gUnk_080DDDFC.bin"

gUnk_080DDE0C:: @ 080DDE0C
	.incbin "data_080D5360/gUnk_080DDE0C.bin"

Room_Ruins_Beanstalk:: @ 080DDE20
	.4byte gUnk_080DDD74
	.4byte gUnk_080DDD84
	.4byte gUnk_080DDDB4
	.4byte gUnk_080DDDF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CB08
	.4byte nullsub_37
	.4byte gUnk_080DDDFC
	.4byte gUnk_080DDE0C

gUnk_080DDE48:: @ 080DDE48
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDE48_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDE48_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DDE48_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DDE48_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DDE88:: @ 080DDE88
	.incbin "data_080D5360/gUnk_080DDE88.bin"

gUnk_080DDEA8:: @ 080DDEA8
	.incbin "data_080D5360/gUnk_080DDEA8.bin"

gUnk_080DDEB8:: @ 080DDEB8
	.incbin "data_080D5360/gUnk_080DDEB8.bin"

gUnk_080DDEC8:: @ 080DDEC8
	.incbin "data_080D5360/gUnk_080DDEC8.bin"

gUnk_080DDF08:: @ 080DDF08
	.incbin "data_080D5360/gUnk_080DDF08.bin"

gUnk_080DDF10:: @ 080DDF10
	.incbin "data_080D5360/gUnk_080DDF10.bin"

gUnk_080DDF20:: @ 080DDF20
	.incbin "data_080D5360/gUnk_080DDF20.bin"

Room_Ruins_TripleTektites:: @ 080DDF34
	.4byte gUnk_080DDE48
	.4byte gUnk_080DDEA8
	.4byte gUnk_080DDEB8
	.4byte gUnk_080DDF08
	.4byte sub_0804CB2C
	.4byte 0x00000000
	.4byte sub_0804CB10
	.4byte sub_0804CB14
	.4byte gUnk_080DDF10
	.4byte gUnk_080DDF20
	.4byte gUnk_080DDEC8

gUnk_080DDF60:: @ 080DDF60
	.incbin "data_080D5360/gUnk_080DDF60.bin"

gUnk_080DDF70:: @ 080DDF70
	.incbin "data_080D5360/gUnk_080DDF70.bin"

gUnk_080DDF80:: @ 080DDF80
	.incbin "data_080D5360/gUnk_080DDF80.bin"

gUnk_080DDFC0:: @ 080DDFC0
	.incbin "data_080D5360/gUnk_080DDFC0.bin"

Room_Ruins_LadderToTektites:: @ 080DDFC8
	.4byte gUnk_080DDF60
	.4byte gUnk_080DDF70
	.4byte gUnk_080DDF80
	.4byte gUnk_080DDFC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CB44
	.4byte nullsub_38

gUnk_080DDFE8:: @ 080DDFE8
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDFE8_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DDFE8_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DDFE8_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DDFE8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

	.incbin "data_080D5360/gUnk_080DDFE8_4.bin"

gUnk_080DE008:: @ 080DE008
	.incbin "data_080D5360/gUnk_080DE008.bin"
	.4byte script_0800AF8C
	.incbin "data_080D5360/gUnk_080DE008_1.bin"

gUnk_080DE028:: @ 080DE028
	.incbin "data_080D5360/gUnk_080DE028.bin"

gUnk_080DE048:: @ 080DE048
	.incbin "data_080D5360/gUnk_080DE048.bin"

gUnk_080DE0E8:: @ 080DE0E8
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DE0E8_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DE0E8_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DE0E8_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DE0E8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DE118:: @ 080DE118
	.incbin "data_080D5360/gUnk_080DE118.bin"

Room_Ruins_FortressEntrance:: @ 080DE12C
	.4byte gUnk_080DDFE8
	.4byte gUnk_080DE028
	.4byte gUnk_080DE048
	.4byte gUnk_080DE0E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CB4C
	.4byte sub_0804CB50
	.4byte gUnk_080DE118

gUnk_080DE150:: @ 080DE150
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DE150_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DE150_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DE150_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DE150_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DE1E0:: @ 080DE1E0
	.incbin "data_080D5360/gUnk_080DE1E0.bin"

gUnk_080DE200:: @ 080DE200
	.incbin "data_080D5360/gUnk_080DE200.bin"

gUnk_080DE220:: @ 080DE220
	.incbin "data_080D5360/gUnk_080DE220.bin"

gUnk_080DE240:: @ 080DE240
	.incbin "data_080D5360/gUnk_080DE240.bin"

gUnk_080DE260:: @ 080DE260
	.incbin "data_080D5360/gUnk_080DE260.bin"

gUnk_080DE2B0:: @ 080DE2B0
	.incbin "data_080D5360/gUnk_080DE2B0.bin"

gUnk_080DE320:: @ 080DE320
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DE320_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DE320_1_DEMO_JP.bin"
.else
.ifdef EU
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080DE320_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DE320_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DE338:: @ 080DE338
	.incbin "data_080D5360/gUnk_080DE338.bin"

gUnk_080DE34C:: @ 080DE34C
	.incbin "data_080D5360/gUnk_080DE34C.bin"

gUnk_080DE360:: @ 080DE360
	.incbin "data_080D5360/gUnk_080DE360.bin"

gUnk_080DE374:: @ 080DE374
	.incbin "data_080D5360/gUnk_080DE374.bin"

gUnk_080DE388:: @ 080DE388
	.incbin "data_080D5360/gUnk_080DE388.bin"

Room_Ruins_Armos:: @ 080DE39C
	.4byte gUnk_080DE150
	.4byte gUnk_080DE220
	.4byte gUnk_080DE240
	.4byte gUnk_080DE320
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CB78
	.4byte sub_0804CB7C
	.4byte gUnk_080DE338
	.4byte gUnk_080DE34C
	.4byte gUnk_080DE360
	.4byte gUnk_080DE374
	.4byte gUnk_080DE388
	.4byte gUnk_080DE260
	.4byte gUnk_080DE2B0

gUnk_080DE3D8:: @ 080DE3D8
	.incbin "data_080D5360/gUnk_080DE3D8.bin"

gUnk_080DE4C8:: @ 080DE4C8
	.incbin "data_080D5360/gUnk_080DE4C8.bin"

gUnk_080DE4E8:: @ 080DE4E8
	.incbin "data_080D5360/gUnk_080DE4E8.bin"

gUnk_080DE538:: @ 080DE538
	.incbin "data_080D5360/gUnk_080DE538.bin"

Room_DeepwoodShrine_Madderpillar:: @ 080DE550
	.4byte gUnk_080DE3D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080DE538
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CBAC
	.4byte sub_0804CBB0
	.4byte gUnk_080DE4E8

gUnk_080DE574:: @ 080DE574
	.incbin "data_080D5360/gUnk_080DE574.bin"

gUnk_080DE6E4:: @ 080DE6E4
	.incbin "data_080D5360/gUnk_080DE6E4.bin"

gUnk_080DE704:: @ 080DE704
	.incbin "data_080D5360/gUnk_080DE704.bin"

gUnk_080DE724:: @ 080DE724
	.incbin "data_080D5360/gUnk_080DE724.bin"

gUnk_080DE744:: @ 080DE744
	.incbin "data_080D5360/gUnk_080DE744.bin"

gUnk_080DE764:: @ 080DE764
	.incbin "data_080D5360/gUnk_080DE764.bin"

gUnk_080DE794:: @ 080DE794
	.incbin "data_080D5360/gUnk_080DE794.bin"

Room_DeepwoodShrine_BluePortal:: @ 080DE7B4
	.4byte gUnk_080DE574
	.4byte 0x00000000
	.4byte gUnk_080DE764
	.4byte gUnk_080DE794
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CBE4
	.4byte nullsub_243
	.4byte gUnk_080DE6E4
	.4byte gUnk_080DE704
	.4byte gUnk_080DE724
	.4byte gUnk_080DE744

gUnk_080DE7E4:: @ 080DE7E4
	.incbin "data_080D5360/gUnk_080DE7E4.bin"

gUnk_080DE814:: @ 080DE814
	.incbin "data_080D5360/gUnk_080DE814.bin"

gUnk_080DE834:: @ 080DE834
	.incbin "data_080D5360/gUnk_080DE834.bin"

gUnk_080DE864:: @ 080DE864
	.incbin "data_080D5360/gUnk_080DE864.bin"

gUnk_080DE894:: @ 080DE894
	.incbin "data_080D5360/gUnk_080DE894.bin"

Room_DeepwoodShrine_StairsToB1:: @ 080DE8AC
	.4byte gUnk_080DE7E4
	.4byte 0x00000000
	.4byte gUnk_080DE864
	.4byte gUnk_080DE894
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CBEC
	.4byte sub_0804CBF0
	.4byte gUnk_080DE834

gUnk_080DE8D0:: @ 080DE8D0
	.incbin "data_080D5360/gUnk_080DE8D0.bin"

gUnk_080DE930:: @ 080DE930
	.incbin "data_080D5360/gUnk_080DE930.bin"

gUnk_080DE970:: @ 080DE970
	.incbin "data_080D5360/gUnk_080DE970.bin"

Room_DeepwoodShrine_PotBridge:: @ 080DE980
	.4byte gUnk_080DE8D0
	.4byte 0x00000000
	.4byte gUnk_080DE930
	.4byte gUnk_080DE970
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CC54
	.4byte nullsub_244

gUnk_080DE9A0:: @ 080DE9A0
	.incbin "data_080D5360/gUnk_080DE9A0.bin"

gUnk_080DEA20:: @ 080DEA20
	.incbin "data_080D5360/gUnk_080DEA20.bin"

gUnk_080DEA30:: @ 080DEA30
	.incbin "data_080D5360/gUnk_080DEA30.bin"

Room_DeepwoodShrine_DoubleStatue:: @ 080DEA48
	.4byte gUnk_080DE9A0
	.4byte 0x00000000
	.4byte gUnk_080DEA20
	.4byte gUnk_080DEA30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CC5C
	.4byte nullsub_245

gUnk_080DEA68:: @ 080DEA68
	.incbin "data_080D5360/gUnk_080DEA68.bin"

gUnk_080DEAD8:: @ 080DEAD8
	.incbin "data_080D5360/gUnk_080DEAD8.bin"

gUnk_080DEAF8:: @ 080DEAF8
	.incbin "data_080D5360/gUnk_080DEAF8.bin"

Room_DeepwoodShrine_Map:: @ 080DEB10
	.4byte gUnk_080DEA68
	.4byte 0x00000000
	.4byte gUnk_080DEAD8
	.4byte gUnk_080DEAF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CC64
	.4byte nullsub_246

gUnk_080DEB30:: @ 080DEB30
	.incbin "data_080D5360/gUnk_080DEB30.bin"

gUnk_080DEBE0:: @ 080DEBE0
	.incbin "data_080D5360/gUnk_080DEBE0.bin"

gUnk_080DEC10:: @ 080DEC10
	.incbin "data_080D5360/gUnk_080DEC10.bin"

gUnk_080DEC50:: @ 080DEC50
	.incbin "data_080D5360/gUnk_080DEC50.bin"

Room_DeepwoodShrine_Barrel:: @ 080DEC68
	.4byte gUnk_080DEB30
	.4byte 0x00000000
	.4byte gUnk_080DEC10
	.4byte gUnk_080DEC50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CC6C
	.4byte sub_0804CC70
	.4byte gUnk_080DEBE0

gUnk_080DEC8C:: @ 080DEC8C
	.incbin "data_080D5360/gUnk_080DEC8C.bin"

gUnk_080DED4C:: @ 080DED4C
	.incbin "data_080D5360/gUnk_080DED4C.bin"

gUnk_080DED5C:: @ 080DED5C
	.incbin "data_080D5360/gUnk_080DED5C.bin"

Room_DeepwoodShrine_Button:: @ 080DED6C
	.4byte gUnk_080DEC8C
	.4byte 0x00000000
	.4byte gUnk_080DED4C
	.4byte gUnk_080DED5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CCEC
	.4byte nullsub_247

gUnk_080DED8C:: @ 080DED8C
	.incbin "data_080D5360/gUnk_080DED8C.bin"

gUnk_080DEDFC:: @ 080DEDFC
	.incbin "data_080D5360/gUnk_080DEDFC.bin"

gUnk_080DEE3C:: @ 080DEE3C
	.incbin "data_080D5360/gUnk_080DEE3C.bin"

gUnk_080DEE4C:: @ 080DEE4C
	.incbin "data_080D5360/gUnk_080DEE4C.bin"

Room_DeepwoodShrine_Mulldozer:: @ 080DEE5C
	.4byte gUnk_080DED8C
	.4byte 0x00000000
	.4byte gUnk_080DEE3C
	.4byte gUnk_080DEE4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CCF4
	.4byte nullsub_248
	.4byte gUnk_080DEDFC

gUnk_080DEE80:: @ 080DEE80
	.incbin "data_080D5360/gUnk_080DEE80.bin"

gUnk_080DEEE0:: @ 080DEEE0
	.incbin "data_080D5360/gUnk_080DEEE0.bin"

gUnk_080DEF50:: @ 080DEF50
	.incbin "data_080D5360/gUnk_080DEF50.bin"

Room_DeepwoodShrine_Pillars:: @ 080DEF60
	.4byte gUnk_080DEE80
	.4byte 0x00000000
	.4byte gUnk_080DEEE0
	.4byte gUnk_080DEF50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CCFC
	.4byte nullsub_249

gUnk_080DEF80:: @ 080DEF80
	.incbin "data_080D5360/gUnk_080DEF80.bin"

gUnk_080DF040:: @ 080DF040
	.incbin "data_080D5360/gUnk_080DF040.bin"

gUnk_080DF080:: @ 080DF080
	.incbin "data_080D5360/gUnk_080DF080.bin"

Room_DeepwoodShrine_Lever:: @ 080DF090
	.4byte gUnk_080DEF80
	.4byte 0x00000000
	.4byte gUnk_080DF040
	.4byte gUnk_080DF080
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD04
	.4byte nullsub_250

gUnk_080DF0B0:: @ 080DF0B0
	.incbin "data_080D5360/gUnk_080DF0B0.bin"

gUnk_080DF180:: @ 080DF180
	.incbin "data_080D5360/gUnk_080DF180.bin"

gUnk_080DF190:: @ 080DF190
	.incbin "data_080D5360/gUnk_080DF190.bin"

gUnk_080DF1A0:: @ 080DF1A0
	.incbin "data_080D5360/gUnk_080DF1A0.bin"

Room_DeepwoodShrine_Entrance:: @ 080DF1B0
	.4byte gUnk_080DF0B0
	.4byte 0x00000000
	.4byte gUnk_080DF190
	.4byte gUnk_080DF1A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD0C
	.4byte nullsub_251
	.4byte gUnk_080DF180

gUnk_080DF1D4:: @ 080DF1D4
	.incbin "data_080D5360/gUnk_080DF1D4.bin"

gUnk_080DF2A4:: @ 080DF2A4
	.incbin "data_080D5360/gUnk_080DF2A4.bin"

gUnk_080DF304:: @ 080DF304
	.incbin "data_080D5360/gUnk_080DF304.bin"

Room_DeepwoodShrine_Torch:: @ 080DF324
	.4byte gUnk_080DF1D4
	.4byte 0x00000000
	.4byte gUnk_080DF2A4
	.4byte gUnk_080DF304
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD14
	.4byte nullsub_252

gUnk_080DF344:: @ 080DF344
	.incbin "data_080D5360/gUnk_080DF344.bin"

gUnk_080DF444:: @ 080DF444
	.incbin "data_080D5360/gUnk_080DF444.bin"

gUnk_080DF454:: @ 080DF454
	.incbin "data_080D5360/gUnk_080DF454.bin"

Room_DeepwoodShrine_BossKey:: @ 080DF46C
	.4byte gUnk_080DF344
	.4byte 0x00000000
	.4byte gUnk_080DF444
	.4byte gUnk_080DF454
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD1C
	.4byte nullsub_253

gUnk_080DF48C:: @ 080DF48C
.ifdef JP
	.incbin "data_080D5360/gUnk_080DF48C_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DF48C_1_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080DF48C_2_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif

gUnk_080DF57C:: @ 080DF57C
	.incbin "data_080D5360/gUnk_080DF57C.bin"

gUnk_080DF59C:: @ 080DF59C
	.incbin "data_080D5360/gUnk_080DF59C.bin"

Room_DeepwoodShrine_Compass:: @ 080DF5BC
	.4byte gUnk_080DF48C
	.4byte 0x00000000
	.4byte gUnk_080DF57C
	.4byte gUnk_080DF59C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD249
	.4byte nullsub_254

gUnk_080DF5DC:: @ 080DF5DC
	.incbin "data_080D5360/gUnk_080DF5DC.bin"

gUnk_080DF60C:: @ 080DF60C
	.incbin "data_080D5360/gUnk_080DF60C.bin"

gUnk_080DF61C:: @ 080DF61C
	.incbin "data_080D5360/gUnk_080DF61C.bin"

Room_DeepwoodShrine_13:: @ 080DF62C
	.4byte gUnk_080DF5DC
	.4byte 0x00000000
	.4byte gUnk_080DF60C
	.4byte gUnk_080DF61C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD2C90
	.4byte nullsub_255

gUnk_080DF64C:: @ 080DF64C
	.incbin "data_080D5360/gUnk_080DF64C.bin"

gUnk_080DF68C:: @ 080DF68C
	.incbin "data_080D5360/gUnk_080DF68C.bin"

gUnk_080DF6FC:: @ 080DF6FC
	.incbin "data_080D5360/gUnk_080DF6FC.bin"

Room_DeepwoodShrine_LilyPadWest:: @ 080DF70C
	.4byte gUnk_080DF64C
	.4byte 0x00000000
	.4byte gUnk_080DF68C
	.4byte gUnk_080DF6FC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD349
	.4byte nullsub_256

gUnk_080DF72C:: @ 080DF72C
	.incbin "data_080D5360/gUnk_080DF72C.bin"
.ifdef JP
	.incbin "data_080D5360/gUnk_080DF72C_1_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080DF72C_2_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080DF72C_3_DEMO_JP.bin"
.else
	.incbin "data_080D5360/gUnk_080DF72C_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080DF83C:: @ 080DF83C
	.incbin "data_080D5360/gUnk_080DF83C.bin"

gUnk_080DF85C:: @ 080DF85C
	.incbin "data_080D5360/gUnk_080DF85C.bin"

Room_DeepwoodShrine_LilyPadEast:: @ 080DF86C
	.4byte gUnk_080DF72C
	.4byte 0x00000000
	.4byte gUnk_080DF83C
	.4byte gUnk_080DF85C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD3C
	.4byte nullsub_257

gUnk_080DF88C:: @ 080DF88C
	.incbin "data_080D5360/gUnk_080DF88C.bin"

gUnk_080DF91C:: @ 080DF91C
	.incbin "data_080D5360/gUnk_080DF91C.bin"

gUnk_080DF94C:: @ 080DF94C
	.incbin "data_080D5360/gUnk_080DF94C.bin"

gUnk_080DF97C:: @ 080DF97C
	.incbin "data_080D5360/gUnk_080DF97C.bin"

gUnk_080DF99C:: @ 080DF99C
	.incbin "data_080D5360/gUnk_080DF99C.bin"

Room_DeepwoodShrineBoss_Main:: @ 080DF9AC
	.4byte gUnk_080DF88C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080DF99C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD44
	.4byte sub_0804CD48
	.4byte gUnk_080DF97C
	.4byte gUnk_080DF91C
	.4byte gUnk_080DF94C

gUnk_080DF9D8:: @ 080DF9D8
	.incbin "data_080D5360/gUnk_080DF9D8.bin"

gUnk_080DFA48:: @ 080DFA48
	.incbin "data_080D5360/gUnk_080DFA48.bin"

gUnk_080DFA58:: @ 080DFA58
	.incbin "data_080D5360/gUnk_080DFA58.bin"

Room_DeepwoodShrine_PreBoss:: @ 080DFA70
	.4byte gUnk_080DF9D8
	.4byte 0x00000000
	.4byte gUnk_080DFA48
	.4byte gUnk_080DFA58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CDC8
	.4byte nullsub_258

gUnk_080DFA90:: @ 080DFA90
	.incbin "data_080D5360/gUnk_080DFA90.bin"

gUnk_080DFB30:: @ 080DFB30
	.incbin "data_080D5360/gUnk_080DFB30.bin"

gUnk_080DFB40:: @ 080DFB40
	.incbin "data_080D5360/gUnk_080DFB40.bin"

Room_DeepwoodShrine_InsideBarrel:: @ 080DFB48
	.4byte gUnk_080DFA90
	.4byte 0x00000000
	.4byte gUnk_080DFB30
	.4byte gUnk_080DFB40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CDD0
	.4byte sub_0804CDD4

gUnk_080DFB68:: @ 080DFB68
	.incbin "data_080D5360/gUnk_080DFB68.bin"

gUnk_080DFB78:: @ 080DFB78
	.incbin "data_080D5360/gUnk_080DFB78.bin"
	.4byte script_0800AF44
	.incbin "data_080D5360/gUnk_080DFB78_1.bin"

gUnk_080DFB98:: @ 080DFB98
	.incbin "data_080D5360/gUnk_080DFB98.bin"

gUnk_080DFBA8:: @ 080DFBA8
	.incbin "data_080D5360/gUnk_080DFBA8.bin"

Room_DeepwoodShrineEntry_Main:: @ 080DFBB0
	.4byte gUnk_080DFB68
	.4byte 0x00000000
	.4byte gUnk_080DFB98
	.4byte gUnk_080DFBA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CDF4
	.4byte sub_0804CDF8

gUnk_080DFBD0:: @ 080DFBD0
	.incbin "data_080D5360/gUnk_080DFBD0.bin"

gUnk_080DFC70:: @ 080DFC70
	.incbin "data_080D5360/gUnk_080DFC70.bin"

gUnk_080DFCA0:: @ 080DFCA0
	.incbin "data_080D5360/gUnk_080DFCA0.bin"

gUnk_080DFCB0:: @ 080DFCB0
	.incbin "data_080D5360/gUnk_080DFCB0.bin"

gUnk_080DFCC0:: @ 080DFCC0
	.incbin "data_080D5360/gUnk_080DFCC0.bin"

Room_CaveOfFlames_AfterCane:: @ 080DFCF0
	.4byte gUnk_080DFBD0
	.4byte gUnk_080DFC70
	.4byte gUnk_080DFCA0
	.4byte gUnk_080DFCB0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE20
	.4byte nullsub_259
	.4byte gUnk_080DFCC0

gUnk_080DFD14:: @ 080DFD14
	.incbin "data_080D5360/gUnk_080DFD14.bin"

gUnk_080DFDA4:: @ 080DFDA4
	.incbin "data_080D5360/gUnk_080DFDA4.bin"

gUnk_080DFDD4:: @ 080DFDD4
	.incbin "data_080D5360/gUnk_080DFDD4.bin"

gUnk_080DFDE4:: @ 080DFDE4
	.incbin "data_080D5360/gUnk_080DFDE4.bin"

gUnk_080DFE0C:: @ 080DFE0C
	.incbin "data_080D5360/gUnk_080DFE0C.bin"

Room_CaveOfFlames_SpinyChus:: @ 080DFE9C
	.4byte gUnk_080DFD14
	.4byte gUnk_080DFDA4
	.4byte gUnk_080DFDD4
	.4byte gUnk_080DFDE4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE28
	.4byte nullsub_260
	.4byte gUnk_080DFE0C

gUnk_080DFEC0:: @ 080DFEC0
	.incbin "data_080D5360/gUnk_080DFEC0.bin"

gUnk_080DFF30:: @ 080DFF30
	.incbin "data_080D5360/gUnk_080DFF30.bin"

gUnk_080DFF90:: @ 080DFF90
	.incbin "data_080D5360/gUnk_080DFF90.bin"

gUnk_080E0030:: @ 080E0030
	.incbin "data_080D5360/gUnk_080E0030.bin"

Room_CaveOfFlames_CartToSpinyChus:: @ 080E0048
	.4byte gUnk_080DFEC0
	.4byte gUnk_080DFF30
	.4byte gUnk_080DFF90
	.4byte gUnk_080E0030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE30
	.4byte nullsub_261

gUnk_080E0068:: @ 080E0068
	.incbin "data_080D5360/gUnk_080E0068.bin"

gUnk_080E00E8:: @ 080E00E8
	.incbin "data_080D5360/gUnk_080E00E8.bin"

gUnk_080E0128:: @ 080E0128
	.incbin "data_080D5360/gUnk_080E0128.bin"

gUnk_080E0138:: @ 080E0138
	.incbin "data_080D5360/gUnk_080E0138.bin"

gUnk_080E0148:: @ 080E0148
	.incbin "data_080D5360/gUnk_080E0148.bin"

Room_CaveOfFlames_Entrance:: @ 080E0188
	.4byte gUnk_080E0068
	.4byte gUnk_080E00E8
	.4byte gUnk_080E0128
	.4byte gUnk_080E0138
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE38
	.4byte nullsub_262
	.4byte gUnk_080E0148

gUnk_080E01AC:: @ 080E01AC
	.incbin "data_080D5360/gUnk_080E01AC.bin"

gUnk_080E025C:: @ 080E025C
	.incbin "data_080D5360/gUnk_080E025C.bin"

gUnk_080E02CC:: @ 080E02CC
	.incbin "data_080D5360/gUnk_080E02CC.bin"

gUnk_080E034C:: @ 080E034C
	.incbin "data_080D5360/gUnk_080E034C.bin"

Room_CaveOfFlames_MainCart:: @ 080E035C
	.4byte gUnk_080E01AC
	.4byte gUnk_080E025C
	.4byte gUnk_080E02CC
	.4byte gUnk_080E034C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE40
	.4byte nullsub_263

gUnk_080E037C:: @ 080E037C
	.incbin "data_080D5360/gUnk_080E037C.bin"

gUnk_080E042C:: @ 080E042C
	.incbin "data_080D5360/gUnk_080E042C.bin"

gUnk_080E046C:: @ 080E046C
	.incbin "data_080D5360/gUnk_080E046C.bin"

gUnk_080E048C:: @ 080E048C
	.incbin "data_080D5360/gUnk_080E048C.bin"

gUnk_080E049C:: @ 080E049C
	.incbin "data_080D5360/gUnk_080E049C.bin"

Room_CaveOfFlames_NorthEntrance:: @ 080E04AC
	.4byte gUnk_080E037C
	.4byte gUnk_080E042C
	.4byte gUnk_080E046C
	.4byte gUnk_080E048C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE48
	.4byte nullsub_264
	.4byte gUnk_080E049C

gUnk_080E04D0:: @ 080E04D0
	.incbin "data_080D5360/gUnk_080E04D0.bin"

gUnk_080E05A0:: @ 080E05A0
	.incbin "data_080D5360/gUnk_080E05A0.bin"

gUnk_080E0680:: @ 080E0680
	.incbin "data_080D5360/gUnk_080E0680.bin"

gUnk_080E0750:: @ 080E0750
	.incbin "data_080D5360/gUnk_080E0750.bin"

Room_CaveOfFlames_CartWest:: @ 080E0770
	.4byte gUnk_080E04D0
	.4byte gUnk_080E05A0
	.4byte gUnk_080E0680
	.4byte gUnk_080E0750
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE50
	.4byte nullsub_265

gUnk_080E0790:: @ 080E0790
	.incbin "data_080D5360/gUnk_080E0790.bin"

gUnk_080E07E0:: @ 080E07E0
	.incbin "data_080D5360/gUnk_080E07E0.bin"

gUnk_080E0800:: @ 080E0800
	.incbin "data_080D5360/gUnk_080E0800.bin"

gUnk_080E0810:: @ 080E0810
	.incbin "data_080D5360/gUnk_080E0810.bin"

gUnk_080E0828:: @ 080E0828
	.incbin "data_080D5360/gUnk_080E0828.bin"

Room_CaveOfFlames_Helmasaur:: @ 080E0878
	.4byte gUnk_080E0790
	.4byte gUnk_080E07E0
	.4byte gUnk_080E0800
	.4byte gUnk_080E0810
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE58
	.4byte nullsub_266
	.4byte gUnk_080E0828

gUnk_080E089C:: @ 080E089C
	.incbin "data_080D5360/gUnk_080E089C.bin"

gUnk_080E093C:: @ 080E093C
	.incbin "data_080D5360/gUnk_080E093C.bin"

gUnk_080E096C:: @ 080E096C
	.incbin "data_080D5360/gUnk_080E096C.bin"

gUnk_080E09BC:: @ 080E09BC
	.incbin "data_080D5360/gUnk_080E09BC.bin"

gUnk_080E09DC:: @ 080E09DC
	.4byte gUnk_080E09FC
	.incbin "data_080D5360/gUnk_080E09DC.bin"

gUnk_080E09FC:: @ 080E09FC
	.incbin "data_080D5360/gUnk_080E09FC.bin"

Room_CaveOfFlames_Rollobite:: @ 080E0A20
	.4byte gUnk_080E089C
	.4byte gUnk_080E093C
	.4byte gUnk_080E096C
	.4byte gUnk_080E09BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE60
	.4byte nullsub_267
	.4byte gUnk_080E09DC

gUnk_080E0A44:: @ 080E0A44
	.incbin "data_080D5360/gUnk_080E0A44.bin"

gUnk_080E0B04:: @ 080E0B04
	.incbin "data_080D5360/gUnk_080E0B04.bin"

gUnk_080E0B24:: @ 080E0B24
	.incbin "data_080D5360/gUnk_080E0B24.bin"

gUnk_080E0B64:: @ 080E0B64
	.incbin "data_080D5360/gUnk_080E0B64.bin"

gUnk_080E0B84:: @ 080E0B84
	.incbin "data_080D5360/gUnk_080E0B84.bin"

Room_CaveOfFlames_MinishLava:: @ 080E0C14
	.4byte gUnk_080E0A44
	.4byte gUnk_080E0B04
	.4byte gUnk_080E0B24
	.4byte gUnk_080E0B64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE68
	.4byte nullsub_268
	.4byte gUnk_080E0B84

gUnk_080E0C38:: @ 080E0C38
	.incbin "data_080D5360/gUnk_080E0C38.bin"

gUnk_080E0D18:: @ 080E0D18
	.incbin "data_080D5360/gUnk_080E0D18.bin"

gUnk_080E0D28:: @ 080E0D28
	.incbin "data_080D5360/gUnk_080E0D28.bin"

gUnk_080E0DD8:: @ 080E0DD8
	.incbin "data_080D5360/gUnk_080E0DD8.bin"

gUnk_080E0DF8:: @ 080E0DF8
	.incbin "data_080D5360/gUnk_080E0DF8.bin"

gUnk_080E0E16:: @ 080E0E16
	.incbin "data_080D5360/gUnk_080E0E16.bin"

Room_CaveOfFlames_MinishSpikes:: @ 080E0E34
	.4byte gUnk_080E0C38
	.4byte gUnk_080E0D18
	.4byte gUnk_080E0D28
	.4byte gUnk_080E0DD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE70
	.4byte nullsub_269
	.4byte gUnk_080E0DF8
	.4byte gUnk_080E0E16

gUnk_080E0E5C:: @ 080E0E5C
	.incbin "data_080D5360/gUnk_080E0E5C.bin"

gUnk_080E0EDC:: @ 080E0EDC
	.incbin "data_080D5360/gUnk_080E0EDC.bin"

gUnk_080E0EEC:: @ 080E0EEC
	.incbin "data_080D5360/gUnk_080E0EEC.bin"

gUnk_080E0F3C:: @ 080E0F3C
	.incbin "data_080D5360/gUnk_080E0F3C.bin"

Room_CaveOfFlames_RollobiteSwitch:: @ 080E0F4C
	.4byte gUnk_080E0E5C
	.4byte gUnk_080E0EDC
	.4byte gUnk_080E0EEC
	.4byte gUnk_080E0F3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE78
	.4byte nullsub_270

gUnk_080E0F6C:: @ 080E0F6C
	.incbin "data_080D5360/gUnk_080E0F6C.bin"

gUnk_080E101C:: @ 080E101C
	.incbin "data_080D5360/gUnk_080E101C.bin"

gUnk_080E103C:: @ 080E103C
	.incbin "data_080D5360/gUnk_080E103C.bin"

gUnk_080E105C:: @ 080E105C
	.incbin "data_080D5360/gUnk_080E105C.bin"

gUnk_080E106C:: @ 080E106C
	.incbin "data_080D5360/gUnk_080E106C.bin"

Room_CaveOfFlames_BeforeGleerok:: @ 080E107C
	.4byte gUnk_080E0F6C
	.4byte gUnk_080E101C
	.4byte gUnk_080E105C
	.4byte gUnk_080E106C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE80
	.4byte nullsub_271

gUnk_080E109C:: @ 080E109C
	.incbin "data_080D5360/gUnk_080E109C.bin"

gUnk_080E10BC:: @ 080E10BC
	.incbin "data_080D5360/gUnk_080E10BC.bin"

gUnk_080E10CC:: @ 080E10CC
	.incbin "data_080D5360/gUnk_080E10CC.bin"

gUnk_080E10FC:: @ 080E10FC
	.incbin "data_080D5360/gUnk_080E10FC.bin"

Room_CaveOfFlames_PathBossKey:: @ 080E110C
	.4byte gUnk_080E109C
	.4byte gUnk_080E10BC
	.4byte gUnk_080E10CC
	.4byte gUnk_080E10FC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEA4
	.4byte nullsub_272

gUnk_080E112C:: @ 080E112C
	.incbin "data_080D5360/gUnk_080E112C.bin"

gUnk_080E114C:: @ 080E114C
	.incbin "data_080D5360/gUnk_080E114C.bin"

gUnk_080E115C:: @ 080E115C
	.incbin "data_080D5360/gUnk_080E115C.bin"

gUnk_080E119C:: @ 080E119C
	.incbin "data_080D5360/gUnk_080E119C.bin"

gUnk_080E11B4:: @ 080E11B4
	.incbin "data_080D5360/gUnk_080E11B4.bin"

gUnk_080E11D2:: @ 080E11D2
	.incbin "data_080D5360/gUnk_080E11D2.bin"

Room_CaveOfFlames_PathBossKey2:: @ 080E11F0
	.4byte gUnk_080E112C
	.4byte gUnk_080E114C
	.4byte gUnk_080E115C
	.4byte gUnk_080E119C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEAC
	.4byte nullsub_273
	.4byte gUnk_080E11B4
	.4byte gUnk_080E11D2

gUnk_080E1218:: @ 080E1218
	.incbin "data_080D5360/gUnk_080E1218.bin"

gUnk_080E1268:: @ 080E1268
	.incbin "data_080D5360/gUnk_080E1268.bin"

gUnk_080E1298:: @ 080E1298
	.incbin "data_080D5360/gUnk_080E1298.bin"

gUnk_080E12A8:: @ 080E12A8
	.incbin "data_080D5360/gUnk_080E12A8.bin"

gUnk_080E12C0:: @ 080E12C0
	.incbin "data_080D5360/gUnk_080E12C0.bin"

Room_CaveOfFlames_Compass:: @ 080E12F0
	.4byte gUnk_080E1218
	.4byte gUnk_080E1268
	.4byte gUnk_080E1298
	.4byte gUnk_080E12A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEB4
	.4byte nullsub_274
	.4byte gUnk_080E12C0

gUnk_080E1314:: @ 080E1314
	.incbin "data_080D5360/gUnk_080E1314.bin"

gUnk_080E1384:: @ 080E1384
	.incbin "data_080D5360/gUnk_080E1384.bin"

gUnk_080E13B4:: @ 080E13B4
	.incbin "data_080D5360/gUnk_080E13B4.bin"

gUnk_080E1404:: @ 080E1404
	.incbin "data_080D5360/gUnk_080E1404.bin"

Room_CaveOfFlames_Bobomb:: @ 080E141C
	.4byte gUnk_080E1314
	.4byte gUnk_080E1384
	.4byte gUnk_080E13B4
	.4byte gUnk_080E1404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEBC
	.4byte nullsub_275

gUnk_080E143C:: @ 080E143C
	.incbin "data_080D5360/gUnk_080E143C.bin"

gUnk_080E156C:: @ 080E156C
	.incbin "data_080D5360/gUnk_080E156C.bin"

gUnk_080E158C:: @ 080E158C
	.incbin "data_080D5360/gUnk_080E158C.bin"

gUnk_080E159C:: @ 080E159C
	.incbin "data_080D5360/gUnk_080E159C.bin"

gUnk_080E15C4:: @ 080E15C4
	.incbin "data_080D5360/gUnk_080E15C4.bin"
	.4byte gUnk_080E1674
	.incbin "data_080D5360/gUnk_080E15C4_1.bin"
	.4byte gUnk_080E16AA
	.incbin "data_080D5360/gUnk_080E15C4_2.bin"
	.4byte gUnk_080E16CE
	.incbin "data_080D5360/gUnk_080E15C4_3.bin"
	.4byte gUnk_080E16EC
	.incbin "data_080D5360/gUnk_080E15C4_4.bin"
	.4byte gUnk_080E170A
	.incbin "data_080D5360/gUnk_080E15C4_5.bin"
	.4byte gUnk_080E16EC
	.incbin "data_080D5360/gUnk_080E15C4_6.bin"
	.4byte gUnk_080E170A
	.incbin "data_080D5360/gUnk_080E15C4_7.bin"
	.4byte gUnk_080E16EC
	.incbin "data_080D5360/gUnk_080E15C4_8.bin"

gUnk_080E1674:: @ 080E1674
	.incbin "data_080D5360/gUnk_080E1674.bin"

gUnk_080E16AA:: @ 080E16AA
	.incbin "data_080D5360/gUnk_080E16AA.bin"

gUnk_080E16CE:: @ 080E16CE
	.incbin "data_080D5360/gUnk_080E16CE.bin"

gUnk_080E16EC:: @ 080E16EC
	.incbin "data_080D5360/gUnk_080E16EC.bin"

gUnk_080E170A:: @ 080E170A
	.incbin "data_080D5360/gUnk_080E170A.bin"

Room_CaveOfFlames_BossDoor:: @ 080E1728
	.4byte gUnk_080E143C
	.4byte gUnk_080E156C
	.4byte gUnk_080E158C
	.4byte gUnk_080E159C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEC4
	.4byte nullsub_276
	.4byte gUnk_080E15C4

gUnk_080E174C:: @ 080E174C
	.incbin "data_080D5360/gUnk_080E174C.bin"

gUnk_080E175C:: @ 080E175C
	.incbin "data_080D5360/gUnk_080E175C.bin"

gUnk_080E176C:: @ 080E176C
	.incbin "data_080D5360/gUnk_080E176C.bin"

gUnk_080E177C:: @ 080E177C
	.incbin "data_080D5360/gUnk_080E177C.bin"

Room_CaveOfFlames_18:: @ 080E1784
	.4byte gUnk_080E174C
	.4byte gUnk_080E175C
	.4byte gUnk_080E176C
	.4byte gUnk_080E177C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CECC
	.4byte nullsub_277

gUnk_080E17A4:: @ 080E17A4
	.incbin "data_080D5360/gUnk_080E17A4.bin"

gUnk_080E17E4:: @ 080E17E4
	.incbin "data_080D5360/gUnk_080E17E4.bin"

gUnk_080E1814:: @ 080E1814
	.incbin "data_080D5360/gUnk_080E1814.bin"

gUnk_080E1844:: @ 080E1844
	.incbin "data_080D5360/gUnk_080E1844.bin"

gUnk_080E1864:: @ 080E1864
	.incbin "data_080D5360/gUnk_080E1864.bin"

Room_CaveOfFlamesBoss_Main:: @ 080E1874
	.4byte gUnk_080E17A4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080E1864
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CED4
	.4byte sub_0804CED8
	.4byte gUnk_080E1844
	.4byte gUnk_080E17E4
	.4byte gUnk_080E1814

gUnk_080E18A0:: @ 080E18A0
	.incbin "data_080D5360/gUnk_080E18A0.bin"

gUnk_080E1930:: @ 080E1930
	.incbin "data_080D5360/gUnk_080E1930.bin"

gUnk_080E1940:: @ 080E1940
	.incbin "data_080D5360/gUnk_080E1940.bin"

gUnk_080E1958:: @ 080E1958
	.incbin "data_080D5360/gUnk_080E1958.bin"

Room_FortressOfWinds_Eyegore:: @ 080E1998
	.4byte gUnk_080E18A0
	.4byte 0x00000000
	.4byte gUnk_080E1930
	.4byte gUnk_080E1940
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF38
	.4byte nullsub_278
	.4byte gUnk_080E1958

gUnk_080E19BC:: @ 080E19BC
	.incbin "data_080D5360/gUnk_080E19BC.bin"

gUnk_080E1A8C:: @ 080E1A8C
	.incbin "data_080D5360/gUnk_080E1A8C.bin"

gUnk_080E1ABC:: @ 080E1ABC
	.incbin "data_080D5360/gUnk_080E1ABC.bin"

Room_FortressOfWinds_BeforeMazaal:: @ 080E1ACC
	.4byte gUnk_080E19BC
	.4byte 0x00000000
	.4byte gUnk_080E1A8C
	.4byte gUnk_080E1ABC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF40
	.4byte sub_0804CF44

gUnk_080E1AEC:: @ 080E1AEC
	.incbin "data_080D5360/gUnk_080E1AEC.bin"

gUnk_080E1CEC:: @ 080E1CEC
	.incbin "data_080D5360/gUnk_080E1CEC.bin"

gUnk_080E1D1C:: @ 080E1D1C
	.incbin "data_080D5360/gUnk_080E1D1C.bin"

gUnk_080E1D4C:: @ 080E1D4C
	.incbin "data_080D5360/gUnk_080E1D4C.bin"

gUnk_080E1D5C:: @ 080E1D5C
	.incbin "data_080D5360/gUnk_080E1D5C.bin"

gUnk_080E1D70:: @ 080E1D70
	.incbin "data_080D5360/gUnk_080E1D70.bin"

Room_FortressOfWinds_EastKeyLever:: @ 080E1D84
	.4byte gUnk_080E1AEC
	.4byte gUnk_080E1CEC
	.4byte gUnk_080E1D1C
	.4byte gUnk_080E1D4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF5C
	.4byte sub_0804CF60
	.4byte gUnk_080E1D5C
	.4byte gUnk_080E1D70

gUnk_080E1DAC:: @ 080E1DAC
	.incbin "data_080D5360/gUnk_080E1DAC.bin"

gUnk_080E1ECC:: @ 080E1ECC
	.incbin "data_080D5360/gUnk_080E1ECC.bin"

gUnk_080E1EDC:: @ 080E1EDC
	.incbin "data_080D5360/gUnk_080E1EDC.bin"

gUnk_080E1EEC:: @ 080E1EEC
	.incbin "data_080D5360/gUnk_080E1EEC.bin"

gUnk_080E1F0A:: @ 080E1F0A
	.incbin "data_080D5360/gUnk_080E1F0A.bin"

gUnk_080E1F28:: @ 080E1F28
	.incbin "data_080D5360/gUnk_080E1F28.bin"

Room_FortressOfWinds_PitPlatforms:: @ 080E1F48
	.4byte gUnk_080E1DAC
	.4byte 0x00000000
	.4byte gUnk_080E1ECC
	.4byte gUnk_080E1EDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF68
	.4byte nullsub_39
	.4byte gUnk_080E1EEC
	.4byte gUnk_080E1F0A
	.4byte gUnk_080E1F28

gUnk_080E1F74:: @ 080E1F74
	.incbin "data_080D5360/gUnk_080E1F74.bin"

gUnk_080E2094:: @ 080E2094
	.incbin "data_080D5360/gUnk_080E2094.bin"

gUnk_080E20D4:: @ 080E20D4
	.incbin "data_080D5360/gUnk_080E20D4.bin"

gUnk_080E20E4:: @ 080E20E4
	.incbin "data_080D5360/gUnk_080E20E4.bin"

gUnk_080E2104:: @ 080E2104
	.incbin "data_080D5360/gUnk_080E2104.bin"

gUnk_080E2118:: @ 080E2118
	.incbin "data_080D5360/gUnk_080E2118.bin"

Room_FortressOfWinds_WestKeyLever:: @ 080E212C
	.4byte gUnk_080E1F74
	.4byte 0x00000000
	.4byte gUnk_080E2094
	.4byte gUnk_080E20D4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF70
	.4byte sub_0804CF74
	.4byte gUnk_080E20E4
	.4byte gUnk_080E2104
	.4byte gUnk_080E2118

gUnk_080E2158:: @ 080E2158
	.incbin "data_080D5360/gUnk_080E2158.bin"

gUnk_080E2278:: @ 080E2278
	.incbin "data_080D5360/gUnk_080E2278.bin"

gUnk_080E22A8:: @ 080E22A8
	.incbin "data_080D5360/gUnk_080E22A8.bin"

gUnk_080E22B8:: @ 080E22B8
	.incbin "data_080D5360/gUnk_080E22B8.bin"

gUnk_080E22D0:: @ 080E22D0
	.incbin "data_080D5360/gUnk_080E22D0.bin"

Room_FortressOfWinds_Darknut:: @ 080E2310
	.4byte gUnk_080E2158
	.4byte gUnk_080E2278
	.4byte gUnk_080E22A8
	.4byte gUnk_080E22B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF7C
	.4byte nullsub_40
	.4byte gUnk_080E22D0

gUnk_080E2334:: @ 080E2334
	.incbin "data_080D5360/gUnk_080E2334.bin"

gUnk_080E23D4:: @ 080E23D4
	.incbin "data_080D5360/gUnk_080E23D4.bin"

gUnk_080E23F4:: @ 080E23F4
	.incbin "data_080D5360/gUnk_080E23F4.bin"

gUnk_080E2414:: @ 080E2414
	.incbin "data_080D5360/gUnk_080E2414.bin"

Room_FortressOfWinds_EyeBridge:: @ 080E2424
	.4byte gUnk_080E2334
	.4byte gUnk_080E23D4
	.4byte gUnk_080E23F4
	.4byte gUnk_080E2414
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF84
	.4byte nullsub_41

gUnk_080E2444:: @ 080E2444
	.incbin "data_080D5360/gUnk_080E2444.bin"

gUnk_080E2524:: @ 080E2524
	.incbin "data_080D5360/gUnk_080E2524.bin"

gUnk_080E2534:: @ 080E2534
	.incbin "data_080D5360/gUnk_080E2534.bin"

gUnk_080E2544:: @ 080E2544
	.incbin "data_080D5360/gUnk_080E2544.bin"

Room_FortressOfWinds_Pit:: @ 080E2564
	.4byte gUnk_080E2444
	.4byte 0x00000000
	.4byte gUnk_080E2524
	.4byte gUnk_080E2534
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF8C
	.4byte nullsub_42
	.4byte gUnk_080E2544

gUnk_080E2588:: @ 080E2588
	.incbin "data_080D5360/gUnk_080E2588.bin"

gUnk_080E2678:: @ 080E2678
	.incbin "data_080D5360/gUnk_080E2678.bin"

gUnk_080E2698:: @ 080E2698
	.incbin "data_080D5360/gUnk_080E2698.bin"

gUnk_080E26A8:: @ 080E26A8
	.incbin "data_080D5360/gUnk_080E26A8.bin"

gUnk_080E26B8:: @ 080E26B8
	.incbin "data_080D5360/gUnk_080E26B8.bin"

Room_FortressOfWinds_Wallmaster:: @ 080E26F8
	.4byte gUnk_080E2588
	.4byte gUnk_080E2678
	.4byte gUnk_080E2698
	.4byte gUnk_080E26A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF94
	.4byte nullsub_43
	.4byte gUnk_080E26B8

gUnk_080E271C:: @ 080E271C
	.incbin "data_080D5360/gUnk_080E271C.bin"

gUnk_080E282C:: @ 080E282C
	.incbin "data_080D5360/gUnk_080E282C.bin"

gUnk_080E286C:: @ 080E286C
	.incbin "data_080D5360/gUnk_080E286C.bin"

gUnk_080E28BC:: @ 080E28BC
	.incbin "data_080D5360/gUnk_080E28BC.bin"

gUnk_080E28CC:: @ 080E28CC
	.incbin "data_080D5360/gUnk_080E28CC.bin"

Room_FortressOfWinds_Clone:: @ 080E28EC
	.4byte gUnk_080E271C
	.4byte gUnk_080E282C
	.4byte gUnk_080E286C
	.4byte gUnk_080E28BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF9C
	.4byte nullsub_44
	.4byte gUnk_080E28CC

gUnk_080E2910:: @ 080E2910
	.incbin "data_080D5360/gUnk_080E2910.bin"

gUnk_080E2940:: @ 080E2940
	.incbin "data_080D5360/gUnk_080E2940.bin"

gUnk_080E2970:: @ 080E2970
	.incbin "data_080D5360/gUnk_080E2970.bin"

gUnk_080E29C0:: @ 080E29C0
	.incbin "data_080D5360/gUnk_080E29C0.bin"

gUnk_080E29D0:: @ 080E29D0
	.incbin "data_080D5360/gUnk_080E29D0.bin"

gUnk_080E2A06:: @ 080E2A06
	.incbin "data_080D5360/gUnk_080E2A06.bin"

gUnk_080E2A3C:: @ 080E2A3C
	.incbin "data_080D5360/gUnk_080E2A3C.bin"

gUnk_080E2A72:: @ 080E2A72
	.incbin "data_080D5360/gUnk_080E2A72.bin"

Room_FortressOfWinds_SpikeTraps:: @ 080E2AA8
	.4byte gUnk_080E2910
	.4byte gUnk_080E2940
	.4byte gUnk_080E2970
	.4byte gUnk_080E29C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CFA4
	.4byte nullsub_45
	.4byte gUnk_080E29D0
	.4byte gUnk_080E2A06
	.4byte gUnk_080E2A3C
	.4byte gUnk_080E2A72

gUnk_080E2AD8:: @ 080E2AD8
	.incbin "data_080D5360/gUnk_080E2AD8.bin"

gUnk_080E2BA8:: @ 080E2BA8
	.incbin "data_080D5360/gUnk_080E2BA8.bin"

gUnk_080E2BB8:: @ 080E2BB8
	.incbin "data_080D5360/gUnk_080E2BB8.bin"

gUnk_080E2BC8:: @ 080E2BC8
	.incbin "data_080D5360/gUnk_080E2BC8.bin"

gUnk_080E2BE8:: @ 080E2BE8
	.incbin "data_080D5360/gUnk_080E2BE8.bin"

Room_FortressOfWinds_Mazaal:: @ 080E2C08
	.4byte gUnk_080E2AD8
	.4byte 0x00000000
	.4byte gUnk_080E2BA8
	.4byte gUnk_080E2BB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CFAC
	.4byte sub_0804CFB0
	.4byte gUnk_080E2BC8
	.4byte gUnk_080E2BE8

gUnk_080E2C30:: @ 080E2C30
	.incbin "data_080D5360/gUnk_080E2C30.bin"

gUnk_080E2CC0:: @ 080E2CC0
	.incbin "data_080D5360/gUnk_080E2CC0.bin"

gUnk_080E2CE0:: @ 080E2CE0
	.incbin "data_080D5360/gUnk_080E2CE0.bin"

gUnk_080E2CF0:: @ 080E2CF0
	.incbin "data_080D5360/gUnk_080E2CF0.bin"

gUnk_080E2D00:: @ 080E2D00
	.incbin "data_080D5360/gUnk_080E2D00.bin"

Room_FortressOfWinds_Stalfos:: @ 080E2D60
	.4byte gUnk_080E2C30
	.4byte gUnk_080E2CC0
	.4byte gUnk_080E2CE0
	.4byte gUnk_080E2CF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D008
	.4byte nullsub_279
	.4byte gUnk_080E2D00

gUnk_080E2D84:: @ 080E2D84
.ifdef JP
	.incbin "data_080D5360/gUnk_080E2D84_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080E2D84_1_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080E2D84_2_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif

gUnk_080E2E34:: @ 080E2E34
	.incbin "data_080D5360/gUnk_080E2E34.bin"

gUnk_080E2E44:: @ 080E2E44
	.incbin "data_080D5360/gUnk_080E2E44.bin"

Room_FortressOfWinds_EntranceMoleMitts:: @ 080E2E5C
	.4byte gUnk_080E2D84
	.4byte 0x00000000
	.4byte gUnk_080E2E34
	.4byte gUnk_080E2E44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D010
	.4byte nullsub_280

gUnk_080E2E7C:: @ 080E2E7C
	.incbin "data_080D5360/gUnk_080E2E7C.bin"

gUnk_080E2F7C:: @ 080E2F7C
	.incbin "data_080D5360/gUnk_080E2F7C.bin"

gUnk_080E2FFC:: @ 080E2FFC
	.incbin "data_080D5360/gUnk_080E2FFC.bin"

gUnk_080E3014:: @ 080E3014
	.incbin "data_080D5360/gUnk_080E3014.bin"

gUnk_080E3034:: @ 080E3034
	.incbin "data_080D5360/gUnk_080E3034.bin"

Room_FortressOfWinds_Main2F:: @ 080E3054
	.4byte gUnk_080E2E7C
	.4byte 0x00000000
	.4byte gUnk_080E2F7C
	.4byte gUnk_080E2FFC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D018
	.4byte nullsub_281
	.4byte gUnk_080E3014
	.4byte gUnk_080E3034

gUnk_080E307C:: @ 080E307C
	.incbin "data_080D5360/gUnk_080E307C.bin"

gUnk_080E30DC:: @ 080E30DC
	.incbin "data_080D5360/gUnk_080E30DC.bin"

gUnk_080E310C:: @ 080E310C
	.incbin "data_080D5360/gUnk_080E310C.bin"

gUnk_080E311C:: @ 080E311C
	.incbin "data_080D5360/gUnk_080E311C.bin"

Room_FortressOfWinds_MinishHole:: @ 080E3130
	.4byte gUnk_080E307C
	.4byte 0x00000000
	.4byte gUnk_080E30DC
	.4byte gUnk_080E310C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D020
	.4byte nullsub_282
	.4byte gUnk_080E311C

gUnk_080E3154:: @ 080E3154
	.incbin "data_080D5360/gUnk_080E3154.bin"

gUnk_080E3174:: @ 080E3174
	.incbin "data_080D5360/gUnk_080E3174.bin"

gUnk_080E3194:: @ 080E3194
	.incbin "data_080D5360/gUnk_080E3194.bin"

gUnk_080E31A4:: @ 080E31A4
	.incbin "data_080D5360/gUnk_080E31A4.bin"

Room_FortressOfWinds_BossKey:: @ 080E31BC
	.4byte gUnk_080E3154
	.4byte gUnk_080E3174
	.4byte gUnk_080E3194
	.4byte gUnk_080E31A4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D028
	.4byte nullsub_283

gUnk_080E31DC:: @ 080E31DC
	.incbin "data_080D5360/gUnk_080E31DC.bin"

gUnk_080E31EC:: @ 080E31EC
	.incbin "data_080D5360/gUnk_080E31EC.bin"

gUnk_080E320C:: @ 080E320C
	.incbin "data_080D5360/gUnk_080E320C.bin"

gUnk_080E325C:: @ 080E325C
	.incbin "data_080D5360/gUnk_080E325C.bin"

Room_FortressOfWinds_WestStairs2F:: @ 080E326C
	.4byte gUnk_080E31DC
	.4byte gUnk_080E31EC
	.4byte gUnk_080E320C
	.4byte gUnk_080E325C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D030
	.4byte nullsub_284

gUnk_080E328C:: @ 080E328C
	.incbin "data_080D5360/gUnk_080E328C.bin"

gUnk_080E32BC:: @ 080E32BC
	.incbin "data_080D5360/gUnk_080E32BC.bin"

gUnk_080E339C:: @ 080E339C
	.incbin "data_080D5360/gUnk_080E339C.bin"

gUnk_080E33BC:: @ 080E33BC
	.incbin "data_080D5360/gUnk_080E33BC.bin"

Room_FortressOfWinds_EastStairs2F:: @ 080E33DC
	.4byte gUnk_080E328C
	.4byte gUnk_080E32BC
	.4byte gUnk_080E339C
	.4byte gUnk_080E33BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D038
	.4byte nullsub_285

gUnk_080E33FC:: @ 080E33FC
	.incbin "data_080D5360/gUnk_080E33FC.bin"

gUnk_080E344C:: @ 080E344C
	.incbin "data_080D5360/gUnk_080E344C.bin"

gUnk_080E345C:: @ 080E345C
	.incbin "data_080D5360/gUnk_080E345C.bin"

gUnk_080E346C:: @ 080E346C
	.incbin "data_080D5360/gUnk_080E346C.bin"

Room_FortressOfWinds_WestStairs1F:: @ 080E347C
	.4byte gUnk_080E33FC
	.4byte gUnk_080E344C
	.4byte gUnk_080E345C
	.4byte gUnk_080E346C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D040
	.4byte nullsub_286

gUnk_080E349C:: @ 080E349C
	.incbin "data_080D5360/gUnk_080E349C.bin"

gUnk_080E34FC:: @ 080E34FC
	.incbin "data_080D5360/gUnk_080E34FC.bin"

gUnk_080E350C:: @ 080E350C
	.incbin "data_080D5360/gUnk_080E350C.bin"

Room_FortressOfWinds_CenterStairs1F:: @ 080E351C
	.4byte gUnk_080E349C
	.4byte 0x00000000
	.4byte gUnk_080E34FC
	.4byte gUnk_080E350C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D048
	.4byte nullsub_287

gUnk_080E353C:: @ 080E353C
	.incbin "data_080D5360/gUnk_080E353C.bin"

gUnk_080E356C:: @ 080E356C
	.incbin "data_080D5360/gUnk_080E356C.bin"

gUnk_080E357C:: @ 080E357C
	.incbin "data_080D5360/gUnk_080E357C.bin"

Room_FortressOfWinds_EastStairs1F:: @ 080E358C
	.4byte gUnk_080E353C
	.4byte 0x00000000
	.4byte gUnk_080E356C
	.4byte gUnk_080E357C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D050
	.4byte nullsub_288

gUnk_080E35AC:: @ 080E35AC
	.incbin "data_080D5360/gUnk_080E35AC.bin"

gUnk_080E35FC:: @ 080E35FC
	.incbin "data_080D5360/gUnk_080E35FC.bin"

gUnk_080E364C:: @ 080E364C
	.incbin "data_080D5360/gUnk_080E364C.bin"

gUnk_080E3664:: @ 080E3664
	.incbin "data_080D5360/gUnk_080E3664.bin"

Room_FortressOfWinds_Wizzrobe:: @ 080E3694
	.4byte gUnk_080E35AC
	.4byte 0x00000000
	.4byte gUnk_080E35FC
	.4byte gUnk_080E364C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D058
	.4byte nullsub_289
	.4byte gUnk_080E3664

gUnk_080E36B8:: @ 080E36B8
	.incbin "data_080D5360/gUnk_080E36B8.bin"

gUnk_080E36F8:: @ 080E36F8
	.incbin "data_080D5360/gUnk_080E36F8.bin"

gUnk_080E3718:: @ 080E3718
	.incbin "data_080D5360/gUnk_080E3718.bin"

Room_FortressOfWinds_HeartPiece:: @ 080E3728
	.4byte gUnk_080E36B8
	.4byte 0x00000000
	.4byte gUnk_080E36F8
	.4byte gUnk_080E3718
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D060
	.4byte nullsub_290

gUnk_080E3748:: @ 080E3748
	.incbin "data_080D5360/gUnk_080E3748.bin"

gUnk_080E3768:: @ 080E3768
	.incbin "data_080D5360/gUnk_080E3768.bin"

gUnk_080E3788:: @ 080E3788
	.incbin "data_080D5360/gUnk_080E3788.bin"

Room_InnerMazaal_Main:: @ 080E3790
	.4byte gUnk_080E3748
	.4byte 0x00000000
	.4byte gUnk_080E3768
	.4byte gUnk_080E3788
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D068
	.4byte nullsub_291

gUnk_080E37B0:: @ 080E37B0
	.incbin "data_080D5360/gUnk_080E37B0.bin"
	.4byte script_0800D874
	.incbin "data_080D5360/gUnk_080E37B0_1.bin"
	.4byte script_0800D8E4
	.incbin "data_080D5360/gUnk_080E37B0_2.bin"

gUnk_080E3830:: @ 080E3830
	.incbin "data_080D5360/gUnk_080E3830.bin"

gUnk_080E3850:: @ 080E3850
	.incbin "data_080D5360/gUnk_080E3850.bin"

gUnk_080E3870:: @ 080E3870
	.incbin "data_080D5360/gUnk_080E3870.bin"

gUnk_080E38A0:: @ 080E38A0
	.incbin "data_080D5360/gUnk_080E38A0.bin"

gUnk_080E38B0:: @ 080E38B0
	.incbin "data_080D5360/gUnk_080E38B0.bin"

Room_FortressOfWindsTop_Main:: @ 080E38C0
	.4byte gUnk_080E37B0
	.4byte gUnk_080E3870
	.4byte gUnk_080E38A0
	.4byte gUnk_080E38B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D070
	.4byte sub_0804D074

gUnk_080E38E0:: @ 080E38E0
	.incbin "data_080D5360/gUnk_080E38E0.bin"

gUnk_080E3920:: @ 080E3920
	.incbin "data_080D5360/gUnk_080E3920.bin"

gUnk_080E3960:: @ 080E3960
	.incbin "data_080D5360/gUnk_080E3960.bin"

Room_TempleOfDroplets_WestHole:: @ 080E3970
	.4byte gUnk_080E38E0
	.4byte 0x00000000
	.4byte gUnk_080E3920
	.4byte gUnk_080E3960
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0A8
	.4byte sub_0804D0AC

gUnk_080E3990:: @ 080E3990
	.incbin "data_080D5360/gUnk_080E3990.bin"

gUnk_080E39F0:: @ 080E39F0
	.incbin "data_080D5360/gUnk_080E39F0.bin"

gUnk_080E3A80:: @ 080E3A80
	.incbin "data_080D5360/gUnk_080E3A80.bin"

Room_TempleOfDroplets_NorthSplit:: @ 080E3A90
	.4byte gUnk_080E3990
	.4byte 0x00000000
	.4byte gUnk_080E39F0
	.4byte gUnk_080E3A80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0D4
	.4byte nullsub_46

gUnk_080E3AB0:: @ 080E3AB0
	.incbin "data_080D5360/gUnk_080E3AB0.bin"

gUnk_080E3AF0:: @ 080E3AF0
	.incbin "data_080D5360/gUnk_080E3AF0.bin"

gUnk_080E3B30:: @ 080E3B30
	.incbin "data_080D5360/gUnk_080E3B30.bin"

Room_TempleOfDroplets_EastHole:: @ 080E3B40
	.4byte gUnk_080E3AB0
	.4byte 0x00000000
	.4byte gUnk_080E3AF0
	.4byte gUnk_080E3B30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0DC
	.4byte nullsub_47

gUnk_080E3B60:: @ 080E3B60
	.incbin "data_080D5360/gUnk_080E3B60.bin"

gUnk_080E3C70:: @ 080E3C70
	.incbin "data_080D5360/gUnk_080E3C70.bin"

gUnk_080E3C80:: @ 080E3C80
	.incbin "data_080D5360/gUnk_080E3C80.bin"

Room_TempleOfDroplets_Entrance:: @ 080E3C90
	.4byte gUnk_080E3B60
	.4byte 0x00000000
	.4byte gUnk_080E3C70
	.4byte gUnk_080E3C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0E4
	.4byte nullsub_48

gUnk_080E3CB0:: @ 080E3CB0
	.incbin "data_080D5360/gUnk_080E3CB0.bin"

gUnk_080E3CC0:: @ 080E3CC0
	.incbin "data_080D5360/gUnk_080E3CC0.bin"

gUnk_080E3CE0:: @ 080E3CE0
	.incbin "data_080D5360/gUnk_080E3CE0.bin"

gUnk_080E3D10:: @ 080E3D10
	.incbin "data_080D5360/gUnk_080E3D10.bin"

Room_TempleOfDroplets_NorthwestStairs:: @ 080E3D20
	.4byte gUnk_080E3CB0
	.4byte gUnk_080E3CC0
	.4byte gUnk_080E3CE0
	.4byte gUnk_080E3D10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0EC
	.4byte nullsub_49

gUnk_080E3D40:: @ 080E3D40
	.incbin "data_080D5360/gUnk_080E3D40.bin"

gUnk_080E3DB0:: @ 080E3DB0
	.incbin "data_080D5360/gUnk_080E3DB0.bin"

gUnk_080E3DF0:: @ 080E3DF0
	.incbin "data_080D5360/gUnk_080E3DF0.bin"

gUnk_080E3E00:: @ 080E3E00
	.incbin "data_080D5360/gUnk_080E3E00.bin"

gUnk_080E3E10:: @ 080E3E10
	.incbin "data_080D5360/gUnk_080E3E10.bin"

Room_TempleOfDroplets_ScissorsMiniboss:: @ 080E3E60
	.4byte gUnk_080E3D40
	.4byte gUnk_080E3DB0
	.4byte gUnk_080E3DF0
	.4byte gUnk_080E3E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0F4
	.4byte nullsub_50
	.4byte gUnk_080E3E10

gUnk_080E3E84:: @ 080E3E84
	.incbin "data_080D5360/gUnk_080E3E84.bin"

gUnk_080E3F04:: @ 080E3F04
	.incbin "data_080D5360/gUnk_080E3F04.bin"

gUnk_080E3F34:: @ 080E3F34
	.incbin "data_080D5360/gUnk_080E3F34.bin"

gUnk_080E3F74:: @ 080E3F74
	.incbin "data_080D5360/gUnk_080E3F74.bin"

Room_TempleOfDroplets_WaterfallNorthwest:: @ 080E3F84
	.4byte gUnk_080E3E84
	.4byte gUnk_080E3F04
	.4byte gUnk_080E3F34
	.4byte gUnk_080E3F74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0FC
	.4byte nullsub_51

gUnk_080E3FA4:: @ 080E3FA4
	.incbin "data_080D5360/gUnk_080E3FA4.bin"

gUnk_080E3FC4:: @ 080E3FC4
	.incbin "data_080D5360/gUnk_080E3FC4.bin"

gUnk_080E4004:: @ 080E4004
	.incbin "data_080D5360/gUnk_080E4004.bin"

gUnk_080E4044:: @ 080E4044
	.incbin "data_080D5360/gUnk_080E4044.bin"

Room_TempleOfDroplets_WaterfallNortheast:: @ 080E4054
	.4byte gUnk_080E3FA4
	.4byte gUnk_080E3FC4
	.4byte gUnk_080E4004
	.4byte gUnk_080E4044
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D104
	.4byte nullsub_52

gUnk_080E4074:: @ 080E4074
	.incbin "data_080D5360/gUnk_080E4074.bin"

gUnk_080E4234:: @ 080E4234
	.incbin "data_080D5360/gUnk_080E4234.bin"

gUnk_080E4264:: @ 080E4264
	.incbin "data_080D5360/gUnk_080E4264.bin"

gUnk_080E4274:: @ 080E4274
	.incbin "data_080D5360/gUnk_080E4274.bin"

gUnk_080E4284:: @ 080E4284
	.incbin "data_080D5360/gUnk_080E4284.bin"

gUnk_080E428E:: @ 080E428E
	.incbin "data_080D5360/gUnk_080E428E.bin"

gUnk_080E4298:: @ 080E4298
	.incbin "data_080D5360/gUnk_080E4298.bin"

gUnk_080E42A8:: @ 080E42A8
	.incbin "data_080D5360/gUnk_080E42A8.bin"

Room_TempleOfDroplets_Element:: @ 080E42BC
	.4byte gUnk_080E4074
	.4byte gUnk_080E4234
	.4byte gUnk_080E4264
	.4byte gUnk_080E4274
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D10C
	.4byte nullsub_53
	.4byte gUnk_080E4284
	.4byte gUnk_080E428E
	.4byte gUnk_080E4298
	.4byte gUnk_080E42A8

gUnk_080E42EC:: @ 080E42EC
	.incbin "data_080D5360/gUnk_080E42EC.bin"

gUnk_080E42FC:: @ 080E42FC
	.incbin "data_080D5360/gUnk_080E42FC.bin"

gUnk_080E431C:: @ 080E431C
	.incbin "data_080D5360/gUnk_080E431C.bin"

gUnk_080E432C:: @ 080E432C
	.incbin "data_080D5360/gUnk_080E432C.bin"

Room_TempleOfDroplets_IceCorner:: @ 080E4344
	.4byte gUnk_080E42EC
	.4byte gUnk_080E42FC
	.4byte gUnk_080E431C
	.4byte gUnk_080E432C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D114
	.4byte nullsub_54

gUnk_080E4364:: @ 080E4364
	.incbin "data_080D5360/gUnk_080E4364.bin"

gUnk_080E4394:: @ 080E4394
	.incbin "data_080D5360/gUnk_080E4394.bin"

gUnk_080E4494:: @ 080E4494
	.incbin "data_080D5360/gUnk_080E4494.bin"

gUnk_080E44AC:: @ 080E44AC
	.incbin "data_080D5360/gUnk_080E44AC.bin"

gUnk_080E44CA:: @ 080E44CA
	.incbin "data_080D5360/gUnk_080E44CA.bin"

gUnk_080E44EE:: @ 080E44EE
	.incbin "data_080D5360/gUnk_080E44EE.bin"

gUnk_080E4512:: @ 080E4512
	.incbin "data_080D5360/gUnk_080E4512.bin"

gUnk_080E4536:: @ 080E4536
	.incbin "data_080D5360/gUnk_080E4536.bin"

gUnk_080E4554:: @ 080E4554
	.incbin "data_080D5360/gUnk_080E4554.bin"

gUnk_080E4578:: @ 080E4578
	.incbin "data_080D5360/gUnk_080E4578.bin"

gUnk_080E459C:: @ 080E459C
	.incbin "data_080D5360/gUnk_080E459C.bin"

gUnk_080E45C0:: @ 080E45C0
	.incbin "data_080D5360/gUnk_080E45C0.bin"

gUnk_080E45DE:: @ 080E45DE
	.incbin "data_080D5360/gUnk_080E45DE.bin"

gUnk_080E4602:: @ 080E4602
	.incbin "data_080D5360/gUnk_080E4602.bin"

gUnk_080E4626:: @ 080E4626
	.incbin "data_080D5360/gUnk_080E4626.bin"

gUnk_080E464A:: @ 080E464A
	.incbin "data_080D5360/gUnk_080E464A.bin"

Room_TempleOfDroplets_IcePitMaze:: @ 080E4668
	.4byte gUnk_080E4364
	.4byte 0x00000000
	.4byte gUnk_080E4394
	.4byte gUnk_080E4494
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D11C
	.4byte nullsub_55
	.4byte gUnk_080E44AC
	.4byte gUnk_080E44CA
	.4byte gUnk_080E44EE
	.4byte gUnk_080E4512
	.4byte gUnk_080E4536
	.4byte gUnk_080E4554
	.4byte gUnk_080E4578
	.4byte gUnk_080E459C
	.4byte gUnk_080E45C0
	.4byte gUnk_080E45DE
	.4byte gUnk_080E4602
	.4byte gUnk_080E4626
	.4byte gUnk_080E464A

gUnk_080E46BC:: @ 080E46BC
	.incbin "data_080D5360/gUnk_080E46BC.bin"

gUnk_080E46FC:: @ 080E46FC
	.incbin "data_080D5360/gUnk_080E46FC.bin"

gUnk_080E470C:: @ 080E470C
	.incbin "data_080D5360/gUnk_080E470C.bin"

Room_TempleOfDroplets_HoleToBlueChuchu:: @ 080E471C
	.4byte gUnk_080E46BC
	.4byte 0x00000000
	.4byte gUnk_080E46FC
	.4byte gUnk_080E470C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D124
	.4byte nullsub_56

gUnk_080E473C:: @ 080E473C
	.incbin "data_080D5360/gUnk_080E473C.bin"

gUnk_080E47CC:: @ 080E47CC
	.incbin "data_080D5360/gUnk_080E47CC.bin"

gUnk_080E47DC:: @ 080E47DC
	.incbin "data_080D5360/gUnk_080E47DC.bin"

Room_TempleOfDroplets_WaterfallSoutheast:: @ 080E47EC
	.4byte gUnk_080E473C
	.4byte 0x00000000
	.4byte gUnk_080E47CC
	.4byte gUnk_080E47DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D12C
	.4byte nullsub_57

gUnk_080E480C:: @ 080E480C
	.incbin "data_080D5360/gUnk_080E480C.bin"

gUnk_080E48FC:: @ 080E48FC
	.incbin "data_080D5360/gUnk_080E48FC.bin"

gUnk_080E490C:: @ 080E490C
	.incbin "data_080D5360/gUnk_080E490C.bin"

Room_TempleOfDroplets_WaterfallSouthwest:: @ 080E4924
	.4byte gUnk_080E480C
	.4byte 0x00000000
	.4byte gUnk_080E48FC
	.4byte gUnk_080E490C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D134
	.4byte nullsub_58

gUnk_080E4944:: @ 080E4944
	.incbin "data_080D5360/gUnk_080E4944.bin"

gUnk_080E49C4:: @ 080E49C4
	.incbin "data_080D5360/gUnk_080E49C4.bin"

gUnk_080E49F4:: @ 080E49F4
	.incbin "data_080D5360/gUnk_080E49F4.bin"

gUnk_080E4A24:: @ 080E4A24
	.incbin "data_080D5360/gUnk_080E4A24.bin"

gUnk_080E4A44:: @ 080E4A44
	.incbin "data_080D5360/gUnk_080E4A44.bin"

Room_TempleOfDroplets_BigOcto:: @ 080E4A5C
	.4byte gUnk_080E4944
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080E4A44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D13C
	.4byte sub_0804D140
	.4byte gUnk_080E4A24
	.4byte gUnk_080E49C4
	.4byte gUnk_080E49F4

gUnk_080E4A88:: @ 080E4A88
	.incbin "data_080D5360/gUnk_080E4A88.bin"

gUnk_080E4B28:: @ 080E4B28
	.incbin "data_080D5360/gUnk_080E4B28.bin"

gUnk_080E4B38:: @ 080E4B38
	.incbin "data_080D5360/gUnk_080E4B38.bin"

Room_TempleOfDroplets_ToBigBlueChuchu:: @ 080E4B48
	.4byte gUnk_080E4A88
	.4byte 0x00000000
	.4byte gUnk_080E4B28
	.4byte gUnk_080E4B38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D180
	.4byte nullsub_292

gUnk_080E4B68:: @ 080E4B68
	.incbin "data_080D5360/gUnk_080E4B68.bin"

gUnk_080E4BD8:: @ 080E4BD8
	.incbin "data_080D5360/gUnk_080E4BD8.bin"

gUnk_080E4BF8:: @ 080E4BF8
	.incbin "data_080D5360/gUnk_080E4BF8.bin"

gUnk_080E4C08:: @ 080E4C08
	.incbin "data_080D5360/gUnk_080E4C08.bin"

gUnk_080E4C38:: @ 080E4C38
	.incbin "data_080D5360/gUnk_080E4C38.bin"

gUnk_080E4C48:: @ 080E4C48
	.incbin "data_080D5360/gUnk_080E4C48.bin"

Room_TempleOfDroplets_BigBlueChuchu:: @ 080E4C68
	.4byte gUnk_080E4B68
	.4byte gUnk_080E4BF8
	.4byte gUnk_080E4C38
	.4byte gUnk_080E4C48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D188
	.4byte sub_0804D18C

gUnk_080E4C88:: @ 080E4C88
	.incbin "data_080D5360/gUnk_080E4C88.bin"

gUnk_080E4CD8:: @ 080E4CD8
	.incbin "data_080D5360/gUnk_080E4CD8.bin"

gUnk_080E4CF8:: @ 080E4CF8
	.incbin "data_080D5360/gUnk_080E4CF8.bin"

gUnk_080E4D18:: @ 080E4D18
	.incbin "data_080D5360/gUnk_080E4D18.bin"

gUnk_080E4D28:: @ 080E4D28
	.incbin "data_080D5360/gUnk_080E4D28.bin"

gUnk_080E4D40:: @ 080E4D40
	.incbin "data_080D5360/gUnk_080E4D40.bin"

Room_TempleOfDroplets_BigBlueChuchuKey:: @ 080E4D4C
	.4byte gUnk_080E4C88
	.4byte 0x00000000
	.4byte gUnk_080E4D18
	.4byte gUnk_080E4D28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D1AC
	.4byte sub_0804D1B0
	.4byte gUnk_080E4D40

gUnk_080E4D70:: @ 080E4D70
	.incbin "data_080D5360/gUnk_080E4D70.bin"

gUnk_080E4DE0:: @ 080E4DE0
	.incbin "data_080D5360/gUnk_080E4DE0.bin"

gUnk_080E4DF0:: @ 080E4DF0
	.incbin "data_080D5360/gUnk_080E4DF0.bin"

gUnk_080E4E00:: @ 080E4E00
	.incbin "data_080D5360/gUnk_080E4E00.bin"

Room_TempleOfDroplets_BossKey:: @ 080E4E0C
	.4byte gUnk_080E4D70
	.4byte 0x00000000
	.4byte gUnk_080E4DE0
	.4byte gUnk_080E4DF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D1E8
	.4byte nullsub_293
	.4byte gUnk_080E4E00

gUnk_080E4E30:: @ 080E4E30
	.incbin "data_080D5360/gUnk_080E4E30.bin"

gUnk_080E4EA0:: @ 080E4EA0
	.incbin "data_080D5360/gUnk_080E4EA0.bin"

gUnk_080E4EB0:: @ 080E4EB0
	.incbin "data_080D5360/gUnk_080E4EB0.bin"

gUnk_080E4EC0:: @ 080E4EC0
	.incbin "data_080D5360/gUnk_080E4EC0.bin"

Room_TempleOfDroplets_NorthSmallKey:: @ 080E4ECC
	.4byte gUnk_080E4E30
	.4byte 0x00000000
	.4byte gUnk_080E4EA0
	.4byte gUnk_080E4EB0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D1F0
	.4byte nullsub_294
	.4byte gUnk_080E4EC0

gUnk_080E4EF0:: @ 080E4EF0
	.incbin "data_080D5360/gUnk_080E4EF0.bin"

gUnk_080E4F70:: @ 080E4F70
	.incbin "data_080D5360/gUnk_080E4F70.bin"

gUnk_080E4F80:: @ 080E4F80
	.incbin "data_080D5360/gUnk_080E4F80.bin"

Room_TempleOfDroplets_BlockCloneButtonPuzzle:: @ 080E4FA0
	.4byte gUnk_080E4EF0
	.4byte 0x00000000
	.4byte gUnk_080E4F70
	.4byte gUnk_080E4F80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D1F8
	.4byte nullsub_295

gUnk_080E4FC0:: @ 080E4FC0
	.incbin "data_080D5360/gUnk_080E4FC0.bin"

gUnk_080E4FD0:: @ 080E4FD0
	.incbin "data_080D5360/gUnk_080E4FD0.bin"

gUnk_080E4FE0:: @ 080E4FE0
	.incbin "data_080D5360/gUnk_080E4FE0.bin"

Room_TempleOfDroplets_BlockClonePuzzle:: @ 080E4FF0
	.4byte gUnk_080E4FC0
	.4byte 0x00000000
	.4byte gUnk_080E4FD0
	.4byte gUnk_080E4FE0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D200
	.4byte nullsub_296

gUnk_080E5010:: @ 080E5010
	.incbin "data_080D5360/gUnk_080E5010.bin"

gUnk_080E5030:: @ 080E5030
	.incbin "data_080D5360/gUnk_080E5030.bin"

gUnk_080E5060:: @ 080E5060
	.incbin "data_080D5360/gUnk_080E5060.bin"

gUnk_080E50F0:: @ 080E50F0
	.incbin "data_080D5360/gUnk_080E50F0.bin"

Room_TempleOfDroplets_BlockCloneIceBridge:: @ 080E5100
	.4byte gUnk_080E5010
	.4byte gUnk_080E5030
	.4byte gUnk_080E5060
	.4byte gUnk_080E50F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D208
	.4byte nullsub_297

gUnk_080E5120:: @ 080E5120
	.incbin "data_080D5360/gUnk_080E5120.bin"

gUnk_080E51A0:: @ 080E51A0
	.incbin "data_080D5360/gUnk_080E51A0.bin"

gUnk_080E51C0:: @ 080E51C0
	.incbin "data_080D5360/gUnk_080E51C0.bin"

gUnk_080E5210:: @ 080E5210
	.incbin "data_080D5360/gUnk_080E5210.bin"

Room_TempleOfDroplets_StairsToScissorsMiniboss:: @ 080E5220
	.4byte gUnk_080E5120
	.4byte gUnk_080E51A0
	.4byte gUnk_080E51C0
	.4byte gUnk_080E5210
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D210
	.4byte nullsub_298

gUnk_080E5240:: @ 080E5240
	.incbin "data_080D5360/gUnk_080E5240.bin"

gUnk_080E5250:: @ 080E5250
	.incbin "data_080D5360/gUnk_080E5250.bin"

gUnk_080E5280:: @ 080E5280
	.incbin "data_080D5360/gUnk_080E5280.bin"

gUnk_080E5320:: @ 080E5320
	.incbin "data_080D5360/gUnk_080E5320.bin"

Room_TempleOfDroplets_SpikeBar:: @ 080E5330
	.4byte gUnk_080E5240
	.4byte gUnk_080E5250
	.4byte gUnk_080E5280
	.4byte gUnk_080E5320
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D218
	.4byte nullsub_299

gUnk_080E5350:: @ 080E5350
	.incbin "data_080D5360/gUnk_080E5350.bin"

gUnk_080E5420:: @ 080E5420
	.incbin "data_080D5360/gUnk_080E5420.bin"

gUnk_080E5440:: @ 080E5440
	.incbin "data_080D5360/gUnk_080E5440.bin"

gUnk_080E5450:: @ 080E5450
	.incbin "data_080D5360/gUnk_080E5450.bin"

Room_TempleOfDroplets_Lanterns:: @ 080E5460
	.4byte gUnk_080E5350
	.4byte gUnk_080E5420
	.4byte gUnk_080E5440
	.4byte gUnk_080E5450
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D220
	.4byte nullsub_300

gUnk_080E5480:: @ 080E5480
	.incbin "data_080D5360/gUnk_080E5480.bin"

gUnk_080E5660:: @ 080E5660
	.incbin "data_080D5360/gUnk_080E5660.bin"

gUnk_080E5680:: @ 080E5680
	.incbin "data_080D5360/gUnk_080E5680.bin"

gUnk_080E56A0:: @ 080E56A0
	.incbin "data_080D5360/gUnk_080E56A0.bin"

gUnk_080E5710:: @ 080E5710
	.incbin "data_080D5360/gUnk_080E5710.bin"

Room_TempleOfDroplets_LilypadIceBlocks:: @ 080E5730
	.4byte gUnk_080E5480
	.4byte 0x00000000
	.4byte gUnk_080E56A0
	.4byte gUnk_080E5710
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D228
	.4byte sub_0804D22C

gUnk_080E5750:: @ 080E5750
	.incbin "data_080D5360/gUnk_080E5750.bin"

gUnk_080E57E0:: @ 080E57E0
	.incbin "data_080D5360/gUnk_080E57E0.bin"

gUnk_080E5810:: @ 080E5810
	.incbin "data_080D5360/gUnk_080E5810.bin"

Room_TempleOfDroplets_Pit:: @ 080E5828
	.4byte gUnk_080E5750
	.4byte 0x00000000
	.4byte gUnk_080E57E0
	.4byte gUnk_080E5810
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D250
	.4byte nullsub_301

gUnk_080E5848:: @ 080E5848
	.incbin "data_080D5360/gUnk_080E5848.bin"

gUnk_080E5858:: @ 080E5858
	.incbin "data_080D5360/gUnk_080E5858.bin"

gUnk_080E58A8:: @ 080E58A8
	.incbin "data_080D5360/gUnk_080E58A8.bin"

Room_TempleOfDroplets_FireBars:: @ 080E58C0
	.4byte gUnk_080E5848
	.4byte 0x00000000
	.4byte gUnk_080E5858
	.4byte gUnk_080E58A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D258
	.4byte nullsub_302

gUnk_080E58E0:: @ 080E58E0
	.incbin "data_080D5360/gUnk_080E58E0.bin"

gUnk_080E5A20:: @ 080E5A20
	.incbin "data_080D5360/gUnk_080E5A20.bin"

gUnk_080E5B00:: @ 080E5B00
	.incbin "data_080D5360/gUnk_080E5B00.bin"

Room_TempleOfDroplets_LanternMaze:: @ 080E5B38
	.4byte gUnk_080E58E0
	.4byte 0x00000000
	.4byte gUnk_080E5A20
	.4byte gUnk_080E5B00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D260
	.4byte nullsub_303

gUnk_080E5B58:: @ 080E5B58
	.incbin "data_080D5360/gUnk_080E5B58.bin"

gUnk_080E5C68:: @ 080E5C68
	.incbin "data_080D5360/gUnk_080E5C68.bin"

gUnk_080E5C98:: @ 080E5C98
	.incbin "data_080D5360/gUnk_080E5C98.bin"

gUnk_080E5CA8:: @ 080E5CA8
	.incbin "data_080D5360/gUnk_080E5CA8.bin"

gUnk_080E5CC0:: @ 080E5CC0
	.incbin "data_080D5360/gUnk_080E5CC0.bin"

Room_TempleOfDroplets_Madderpillars:: @ 080E5CF0
	.4byte gUnk_080E5B58
	.4byte gUnk_080E5C68
	.4byte gUnk_080E5C98
	.4byte gUnk_080E5CA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D268
	.4byte nullsub_304
	.4byte gUnk_080E5CC0

gUnk_080E5D14:: @ 080E5D14
	.incbin "data_080D5360/gUnk_080E5D14.bin"

gUnk_080E5D44:: @ 080E5D44
	.incbin "data_080D5360/gUnk_080E5D44.bin"

gUnk_080E5D84:: @ 080E5D84
	.incbin "data_080D5360/gUnk_080E5D84.bin"

gUnk_080E5D94:: @ 080E5D94
	.incbin "data_080D5360/gUnk_080E5D94.bin"

Room_TempleOfDroplets_AfterMadderpillars:: @ 080E5DAC
	.4byte gUnk_080E5D14
	.4byte gUnk_080E5D44
	.4byte gUnk_080E5D84
	.4byte gUnk_080E5D94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D270
	.4byte nullsub_305

gUnk_080E5DCC:: @ 080E5DCC
	.incbin "data_080D5360/gUnk_080E5DCC.bin"

gUnk_080E5E3C:: @ 080E5E3C
	.incbin "data_080D5360/gUnk_080E5E3C.bin"

gUnk_080E5E5C:: @ 080E5E5C
	.incbin "data_080D5360/gUnk_080E5E5C.bin"

gUnk_080E5E7C:: @ 080E5E7C
	.incbin "data_080D5360/gUnk_080E5E7C.bin"

gUnk_080E5E8C:: @ 080E5E8C
	.incbin "data_080D5360/gUnk_080E5E8C.bin"

Room_TempleOfDroplets_BlueChuchuKeyLever:: @ 080E5E9C
	.4byte gUnk_080E5DCC
	.4byte 0x00000000
	.4byte gUnk_080E5E7C
	.4byte gUnk_080E5E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D278
	.4byte sub_0804D27C

gUnk_080E5EBC:: @ 080E5EBC
	.incbin "data_080D5360/gUnk_080E5EBC.bin"

gUnk_080E5F1C:: @ 080E5F1C
	.incbin "data_080D5360/gUnk_080E5F1C.bin"

gUnk_080E5F2C:: @ 080E5F2C
	.incbin "data_080D5360/gUnk_080E5F2C.bin"

gUnk_080E5F44:: @ 080E5F44
	.incbin "data_080D5360/gUnk_080E5F44.bin"

Room_TempleOfDroplets_MulldozerKey:: @ 080E5FB4
	.4byte gUnk_080E5EBC
	.4byte 0x00000000
	.4byte gUnk_080E5F1C
	.4byte gUnk_080E5F2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2A4
	.4byte nullsub_306
	.4byte gUnk_080E5F44

gUnk_080E5FD8:: @ 080E5FD8
	.incbin "data_080D5360/gUnk_080E5FD8.bin"

gUnk_080E60A8:: @ 080E60A8
	.incbin "data_080D5360/gUnk_080E60A8.bin"

gUnk_080E60D8:: @ 080E60D8
	.incbin "data_080D5360/gUnk_080E60D8.bin"

gUnk_080E6118:: @ 080E6118
	.incbin "data_080D5360/gUnk_080E6118.bin"

Room_TempleOfDroplets_BombWall:: @ 080E6130
	.4byte gUnk_080E5FD8
	.4byte gUnk_080E60A8
	.4byte gUnk_080E60D8
	.4byte gUnk_080E6118
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2AC
	.4byte nullsub_307

gUnk_080E6150:: @ 080E6150
	.incbin "data_080D5360/gUnk_080E6150.bin"

gUnk_080E6250:: @ 080E6250
	.incbin "data_080D5360/gUnk_080E6250.bin"

gUnk_080E6270:: @ 080E6270
	.incbin "data_080D5360/gUnk_080E6270.bin"

gUnk_080E6288:: @ 080E6288
	.incbin "data_080D5360/gUnk_080E6288.bin"

Room_TempleOfDroplets_LilypadWestB2:: @ 080E62A8
	.4byte gUnk_080E6150
	.4byte 0x00000000
	.4byte gUnk_080E6250
	.4byte gUnk_080E6270
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2B4
	.4byte nullsub_308
	.4byte gUnk_080E6288

gUnk_080E62CC:: @ 080E62CC
	.incbin "data_080D5360/gUnk_080E62CC.bin"

gUnk_080E632C:: @ 080E632C
	.incbin "data_080D5360/gUnk_080E632C.bin"

gUnk_080E635C:: @ 080E635C
	.incbin "data_080D5360/gUnk_080E635C.bin"

Room_TempleOfDroplets_CompassRoom:: @ 080E637C
	.4byte gUnk_080E62CC
	.4byte 0x00000000
	.4byte gUnk_080E632C
	.4byte gUnk_080E635C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2BC
	.4byte nullsub_309

gUnk_080E639C:: @ 080E639C
	.incbin "data_080D5360/gUnk_080E639C.bin"

gUnk_080E642C:: @ 080E642C
	.incbin "data_080D5360/gUnk_080E642C.bin"

gUnk_080E643C:: @ 080E643C
	.incbin "data_080D5360/gUnk_080E643C.bin"

gUnk_080E6454:: @ 080E6454
	.incbin "data_080D5360/gUnk_080E6454.bin"

Room_TempleOfDroplets_LanternScissors:: @ 080E64A4
	.4byte gUnk_080E639C
	.4byte 0x00000000
	.4byte gUnk_080E642C
	.4byte gUnk_080E643C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2C4
	.4byte nullsub_310
	.4byte gUnk_080E6454

gUnk_080E64C8:: @ 080E64C8
	.incbin "data_080D5360/gUnk_080E64C8.bin"

gUnk_080E6578:: @ 080E6578
	.incbin "data_080D5360/gUnk_080E6578.bin"

gUnk_080E65A8:: @ 080E65A8
	.incbin "data_080D5360/gUnk_080E65A8.bin"

Room_TempleOfDroplets_LilypadMiddleB2:: @ 080E65B8
	.4byte gUnk_080E64C8
	.4byte 0x00000000
	.4byte gUnk_080E6578
	.4byte gUnk_080E65A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2CC
	.4byte nullsub_311

gUnk_080E65D8:: @ 080E65D8
	.incbin "data_080D5360/gUnk_080E65D8.bin"

gUnk_080E6698:: @ 080E6698
	.incbin "data_080D5360/gUnk_080E6698.bin"

gUnk_080E66A8:: @ 080E66A8
	.incbin "data_080D5360/gUnk_080E66A8.bin"

gUnk_080E66B8:: @ 080E66B8
	.incbin "data_080D5360/gUnk_080E66B8.bin"

Room_TempleOfDroplets_LilypadEastB2:: @ 080E66D8
	.4byte gUnk_080E65D8
	.4byte 0x00000000
	.4byte gUnk_080E6698
	.4byte gUnk_080E66A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2D4
	.4byte nullsub_312
	.4byte gUnk_080E66B8

gUnk_080E66FC:: @ 080E66FC
	.incbin "data_080D5360/gUnk_080E66FC.bin"

gUnk_080E673C:: @ 080E673C
	.incbin "data_080D5360/gUnk_080E673C.bin"

gUnk_080E676C:: @ 080E676C
	.incbin "data_080D5360/gUnk_080E676C.bin"

Room_TempleOfDroplets_FlameBarBlockPuzzle:: @ 080E678C
	.4byte gUnk_080E66FC
	.4byte 0x00000000
	.4byte gUnk_080E673C
	.4byte gUnk_080E676C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2DC
	.4byte nullsub_313

gUnk_080E67AC:: @ 080E67AC
	.incbin "data_080D5360/gUnk_080E67AC.bin"

gUnk_080E693C:: @ 080E693C
	.incbin "data_080D5360/gUnk_080E693C.bin"
	.4byte script_0800D954
	.incbin "data_080D5360/gUnk_080E693C_1.bin"
	.4byte script_0800DA28
	.incbin "data_080D5360/gUnk_080E693C_2.bin"

gUnk_080E696C:: @ 080E696C
	.incbin "data_080D5360/gUnk_080E696C.bin"

gUnk_080E697C:: @ 080E697C
	.incbin "data_080D5360/gUnk_080E697C.bin"

Room_RoyalCrypt_KingGustaf:: @ 080E698C
	.4byte gUnk_080E67AC
	.4byte 0x00000000
	.4byte gUnk_080E696C
	.4byte gUnk_080E697C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2E4
	.4byte sub_0804D2E8

gUnk_080E69AC:: @ 080E69AC
	.incbin "data_080D5360/gUnk_080E69AC.bin"

gUnk_080E6A7C:: @ 080E6A7C
	.incbin "data_080D5360/gUnk_080E6A7C.bin"

gUnk_080E6A8C:: @ 080E6A8C
	.incbin "data_080D5360/gUnk_080E6A8C.bin"

gUnk_080E6A94:: @ 080E6A94
	.incbin "data_080D5360/gUnk_080E6A94.bin"

Room_RoyalCrypt_WaterRope:: @ 080E6AD4
	.4byte gUnk_080E69AC
	.4byte 0x00000000
	.4byte gUnk_080E6A7C
	.4byte gUnk_080E6A8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D300
	.4byte nullsub_314
	.4byte gUnk_080E6A94

gUnk_080E6AF8:: @ 080E6AF8
	.incbin "data_080D5360/gUnk_080E6AF8.bin"

gUnk_080E6B08:: @ 080E6B08
	.incbin "data_080D5360/gUnk_080E6B08.bin"

gUnk_080E6B48:: @ 080E6B48
	.incbin "data_080D5360/gUnk_080E6B48.bin"

Room_RoyalCrypt_Gibdo:: @ 080E6B50
	.4byte gUnk_080E6AF8
	.4byte 0x00000000
	.4byte gUnk_080E6B08
	.4byte gUnk_080E6B48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D308
	.4byte nullsub_315

gUnk_080E6B70:: @ 080E6B70
	.incbin "data_080D5360/gUnk_080E6B70.bin"

gUnk_080E6BE0:: @ 080E6BE0
	.incbin "data_080D5360/gUnk_080E6BE0.bin"

gUnk_080E6BF0:: @ 080E6BF0
	.incbin "data_080D5360/gUnk_080E6BF0.bin"

Room_RoyalCrypt_3:: @ 080E6BF8
	.4byte gUnk_080E6B70
	.4byte 0x00000000
	.4byte gUnk_080E6BE0
	.4byte gUnk_080E6BF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D310
	.4byte nullsub_316

gUnk_080E6C18:: @ 080E6C18
	.incbin "data_080D5360/gUnk_080E6C18.bin"

gUnk_080E6D58:: @ 080E6D58
	.incbin "data_080D5360/gUnk_080E6D58.bin"

gUnk_080E6D68:: @ 080E6D68
	.incbin "data_080D5360/gUnk_080E6D68.bin"

gUnk_080E6D80:: @ 080E6D80
	.incbin "data_080D5360/gUnk_080E6D80.bin"

gUnk_080E6D9E:: @ 080E6D9E
	.incbin "data_080D5360/gUnk_080E6D9E.bin"

Room_RoyalCrypt_KeyBlock:: @ 080E6E04
	.4byte gUnk_080E6C18
	.4byte 0x00000000
	.4byte gUnk_080E6D58
	.4byte gUnk_080E6D68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D318
	.4byte nullsub_317
	.4byte gUnk_080E6D80
	.4byte gUnk_080E6D9E

gUnk_080E6E2C:: @ 080E6E2C
	.incbin "data_080D5360/gUnk_080E6E2C.bin"

gUnk_080E6E9C:: @ 080E6E9C
	.incbin "data_080D5360/gUnk_080E6E9C.bin"

gUnk_080E6EEC:: @ 080E6EEC
	.incbin "data_080D5360/gUnk_080E6EEC.bin"

Room_RoyalCrypt_5:: @ 080E6F1C
	.4byte gUnk_080E6E2C
	.4byte 0x00000000
	.4byte gUnk_080E6E9C
	.4byte gUnk_080E6EEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D320
	.4byte nullsub_318

gUnk_080E6F3C:: @ 080E6F3C
	.incbin "data_080D5360/gUnk_080E6F3C.bin"

gUnk_080E6FAC:: @ 080E6FAC
	.incbin "data_080D5360/gUnk_080E6FAC.bin"

gUnk_080E708C:: @ 080E708C
	.incbin "data_080D5360/gUnk_080E708C.bin"

Room_RoyalCrypt_6:: @ 080E70A4
	.4byte gUnk_080E6F3C
	.4byte 0x00000000
	.4byte gUnk_080E6FAC
	.4byte gUnk_080E708C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D328
	.4byte nullsub_319

gUnk_080E70C4:: @ 080E70C4
	.incbin "data_080D5360/gUnk_080E70C4.bin"

gUnk_080E7134:: @ 080E7134
	.incbin "data_080D5360/gUnk_080E7134.bin"

gUnk_080E7144:: @ 080E7144
	.incbin "data_080D5360/gUnk_080E7144.bin"

Room_RoyalCrypt_MushroomPit:: @ 080E714C
	.4byte gUnk_080E70C4
	.4byte 0x00000000
	.4byte gUnk_080E7134
	.4byte gUnk_080E7144
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D330
	.4byte sub_0804D334

gUnk_080E716C:: @ 080E716C
	.incbin "data_080D5360/gUnk_080E716C.bin"

gUnk_080E718C:: @ 080E718C
	.incbin "data_080D5360/gUnk_080E718C.bin"

gUnk_080E71AC:: @ 080E71AC
	.incbin "data_080D5360/gUnk_080E71AC.bin"

gUnk_080E71CC:: @ 080E71CC
	.incbin "data_080D5360/gUnk_080E71CC.bin"

gUnk_080E71FC:: @ 080E71FC
	.incbin "data_080D5360/gUnk_080E71FC.bin"

Room_RoyalCrypt_Entrance:: @ 080E7204
	.4byte gUnk_080E716C
	.4byte 0x00000000
	.4byte gUnk_080E71CC
	.4byte gUnk_080E71FC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D33C
	.4byte sub_0804D340

gUnk_080E7224:: @ 080E7224
	.incbin "data_080D5360/gUnk_080E7224.bin"

gUnk_080E72C4:: @ 080E72C4
	.incbin "data_080D5360/gUnk_080E72C4.bin"

gUnk_080E72E4:: @ 080E72E4
	.incbin "data_080D5360/gUnk_080E72E4.bin"

gUnk_080E7314:: @ 080E7314
	.incbin "data_080D5360/gUnk_080E7314.bin"

gUnk_080E7344:: @ 080E7344
	.incbin "data_080D5360/gUnk_080E7344.bin"

gUnk_080E7354:: @ 080E7354
	.incbin "data_080D5360/gUnk_080E7354.bin"

gUnk_080E7364:: @ 080E7364
	.4byte gUnk_080E7224
	.4byte 0x00000000
	.4byte gUnk_080E7344
	.4byte gUnk_080E7354
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D380
	.4byte sub_0804D384
	.4byte gUnk_080E72E4
	.4byte gUnk_080E7314

gUnk_080E738C:: @ 080E738C
	.incbin "data_080D5360/gUnk_080E738C.bin"

gUnk_080E73AC:: @ 080E73AC
	.incbin "data_080D5360/gUnk_080E73AC.bin"

gUnk_080E73CC:: @ 080E73CC
	.incbin "data_080D5360/gUnk_080E73CC.bin"

gUnk_080E73E4:: @ 080E73E4
	.4byte gUnk_080E738C
	.4byte 0x00000000
	.4byte gUnk_080E73AC
	.4byte gUnk_080E73CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D3F8
	.4byte sub_0804D3FC

gUnk_080E7404:: @ 080E7404
	.incbin "data_080D5360/gUnk_080E7404.bin"

gUnk_080E74A4:: @ 080E74A4
	.incbin "data_080D5360/gUnk_080E74A4.bin"

gUnk_080E74B4:: @ 080E74B4
	.incbin "data_080D5360/gUnk_080E74B4.bin"

gUnk_080E74C4:: @ 080E74C4
	.4byte gUnk_080E7404
	.4byte 0x00000000
	.4byte gUnk_080E74A4
	.4byte gUnk_080E74B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D408
	.4byte sub_0804D40C

gUnk_080E74E4:: @ 080E74E4
	.incbin "data_080D5360/gUnk_080E74E4.bin"

gUnk_080E7614:: @ 080E7614
	.incbin "data_080D5360/gUnk_080E7614.bin"

gUnk_080E7624:: @ 080E7624
	.incbin "data_080D5360/gUnk_080E7624.bin"

gUnk_080E763C:: @ 080E763C
	.4byte gUnk_080E74E4
	.4byte 0x00000000
	.4byte gUnk_080E7614
	.4byte gUnk_080E7624
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D418
	.4byte sub_0804D41C

gUnk_080E765C:: @ 080E765C
	.incbin "data_080D5360/gUnk_080E765C.bin"

gUnk_080E767C:: @ 080E767C
	.incbin "data_080D5360/gUnk_080E767C.bin"

gUnk_080E768C:: @ 080E768C
	.incbin "data_080D5360/gUnk_080E768C.bin"

gUnk_080E76A4:: @ 080E76A4
	.4byte gUnk_080E765C
	.4byte 0x00000000
	.4byte gUnk_080E767C
	.4byte gUnk_080E768C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D428
	.4byte sub_0804D42C

gUnk_080E76C4:: @ 080E76C4
	.incbin "data_080D5360/gUnk_080E76C4.bin"

gUnk_080E7754:: @ 080E7754
	.incbin "data_080D5360/gUnk_080E7754.bin"

gUnk_080E7764:: @ 080E7764
	.incbin "data_080D5360/gUnk_080E7764.bin"

gUnk_080E7774:: @ 080E7774
	.incbin "data_080D5360/gUnk_080E7774.bin"

gUnk_080E77D4:: @ 080E77D4
	.4byte gUnk_080E76C4
	.4byte 0x00000000
	.4byte gUnk_080E7754
	.4byte gUnk_080E7764
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D438
	.4byte sub_0804D43C
	.4byte gUnk_080E7774

gUnk_080E77F8:: @ 080E77F8
	.incbin "data_080D5360/gUnk_080E77F8.bin"

gUnk_080E78F8:: @ 080E78F8
	.incbin "data_080D5360/gUnk_080E78F8.bin"

gUnk_080E7938:: @ 080E7938
	.incbin "data_080D5360/gUnk_080E7938.bin"

gUnk_080E7948:: @ 080E7948
	.4byte gUnk_080E77F8
	.4byte 0x00000000
	.4byte gUnk_080E78F8
	.4byte gUnk_080E7938
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D448
	.4byte sub_0804D44C

gUnk_080E7968:: @ 080E7968
	.incbin "data_080D5360/gUnk_080E7968.bin"

gUnk_080E79D8:: @ 080E79D8
	.incbin "data_080D5360/gUnk_080E79D8.bin"

gUnk_080E7A18:: @ 080E7A18
	.incbin "data_080D5360/gUnk_080E7A18.bin"

gUnk_080E7A30:: @ 080E7A30
	.4byte gUnk_080E7968
	.4byte 0x00000000
	.4byte gUnk_080E79D8
	.4byte gUnk_080E7A18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D458
	.4byte sub_0804D45C

gUnk_080E7A50:: @ 080E7A50
	.incbin "data_080D5360/gUnk_080E7A50.bin"

gUnk_080E7AC0:: @ 080E7AC0
	.incbin "data_080D5360/gUnk_080E7AC0.bin"

gUnk_080E7AD0:: @ 080E7AD0
	.incbin "data_080D5360/gUnk_080E7AD0.bin"

gUnk_080E7AE0:: @ 080E7AE0
	.incbin "data_080D5360/gUnk_080E7AE0.bin"

gUnk_080E7B10:: @ 080E7B10
	.4byte gUnk_080E7A50
	.4byte 0x00000000
	.4byte gUnk_080E7AC0
	.4byte gUnk_080E7AD0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D468
	.4byte sub_0804D46C
	.4byte gUnk_080E7AE0

gUnk_080E7B34:: @ 080E7B34
	.incbin "data_080D5360/gUnk_080E7B34.bin"

gUnk_080E7B74:: @ 080E7B74
	.incbin "data_080D5360/gUnk_080E7B74.bin"

gUnk_080E7C74:: @ 080E7C74
	.incbin "data_080D5360/gUnk_080E7C74.bin"

gUnk_080E7C84:: @ 080E7C84
	.4byte gUnk_080E7B34
	.4byte 0x00000000
	.4byte gUnk_080E7B74
	.4byte gUnk_080E7C74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D478
	.4byte sub_0804D47C

gUnk_080E7CA4:: @ 080E7CA4
	.incbin "data_080D5360/gUnk_080E7CA4.bin"

gUnk_080E7D24:: @ 080E7D24
	.incbin "data_080D5360/gUnk_080E7D24.bin"

gUnk_080E7D34:: @ 080E7D34
	.incbin "data_080D5360/gUnk_080E7D34.bin"

gUnk_080E7D44:: @ 080E7D44
	.4byte gUnk_080E7CA4
	.4byte 0x00000000
	.4byte gUnk_080E7D24
	.4byte gUnk_080E7D34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D488
	.4byte sub_0804D48C

gUnk_080E7D64:: @ 080E7D64
	.incbin "data_080D5360/gUnk_080E7D64.bin"

gUnk_080E7DB4:: @ 080E7DB4
	.incbin "data_080D5360/gUnk_080E7DB4.bin"

gUnk_080E7DC4:: @ 080E7DC4
	.incbin "data_080D5360/gUnk_080E7DC4.bin"

gUnk_080E7DEC:: @ 080E7DEC
	.4byte gUnk_080E7D64
	.4byte 0x00000000
	.4byte gUnk_080E7DB4
	.4byte gUnk_080E7DC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D498
	.4byte sub_0804D49C

gUnk_080E7E0C:: @ 080E7E0C
	.incbin "data_080D5360/gUnk_080E7E0C.bin"

gUnk_080E7E7C:: @ 080E7E7C
	.incbin "data_080D5360/gUnk_080E7E7C.bin"

gUnk_080E7E8C:: @ 080E7E8C
	.incbin "data_080D5360/gUnk_080E7E8C.bin"

gUnk_080E7EA4:: @ 080E7EA4
	.incbin "data_080D5360/gUnk_080E7EA4.bin"

gUnk_080E7EC4:: @ 080E7EC4
	.4byte gUnk_080E7E0C
	.4byte 0x00000000
	.4byte gUnk_080E7E7C
	.4byte gUnk_080E7E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4A8
	.4byte sub_0804D4AC
	.4byte gUnk_080E7EA4

gUnk_080E7EE8:: @ 080E7EE8
	.incbin "data_080D5360/gUnk_080E7EE8.bin"

gUnk_080E7F08:: @ 080E7F08
	.incbin "data_080D5360/gUnk_080E7F08.bin"

gUnk_080E7F38:: @ 080E7F38
	.incbin "data_080D5360/gUnk_080E7F38.bin"

gUnk_080E7F50:: @ 080E7F50
	.4byte gUnk_080E7EE8
	.4byte 0x00000000
	.4byte gUnk_080E7F08
	.4byte gUnk_080E7F38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4B8
	.4byte sub_0804D4BC

gUnk_080E7F70:: @ 080E7F70
	.incbin "data_080D5360/gUnk_080E7F70.bin"

gUnk_080E7FF0:: @ 080E7FF0
	.incbin "data_080D5360/gUnk_080E7FF0.bin"

gUnk_080E8020:: @ 080E8020
	.incbin "data_080D5360/gUnk_080E8020.bin"

gUnk_080E8038:: @ 080E8038
	.4byte gUnk_080E7F70
	.4byte 0x00000000
	.4byte gUnk_080E7FF0
	.4byte gUnk_080E8020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4C8
	.4byte sub_0804D4CC

gUnk_080E8058:: @ 080E8058
	.incbin "data_080D5360/gUnk_080E8058.bin"

gUnk_080E80C8:: @ 080E80C8
	.incbin "data_080D5360/gUnk_080E80C8.bin"

gUnk_080E80F8:: @ 080E80F8
	.incbin "data_080D5360/gUnk_080E80F8.bin"

gUnk_080E8110:: @ 080E8110
	.4byte gUnk_080E8058
	.4byte 0x00000000
	.4byte gUnk_080E80C8
	.4byte gUnk_080E80F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4D8
	.4byte sub_0804D4DC

gUnk_080E8130:: @ 080E8130
	.incbin "data_080D5360/gUnk_080E8130.bin"

gUnk_080E8290:: @ 080E8290
	.incbin "data_080D5360/gUnk_080E8290.bin"

gUnk_080E8330:: @ 080E8330
	.incbin "data_080D5360/gUnk_080E8330.bin"

gUnk_080E8348:: @ 080E8348
	.4byte gUnk_080E8130
	.4byte 0x00000000
	.4byte gUnk_080E8290
	.4byte gUnk_080E8330
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4E8
	.4byte sub_0804D4EC

gUnk_080E8368:: @ 080E8368
	.incbin "data_080D5360/gUnk_080E8368.bin"

gUnk_080E8388:: @ 080E8388
	.incbin "data_080D5360/gUnk_080E8388.bin"

gUnk_080E83C8:: @ 080E83C8
	.incbin "data_080D5360/gUnk_080E83C8.bin"

gUnk_080E83D8:: @ 080E83D8
	.4byte gUnk_080E8368
	.4byte 0x00000000
	.4byte gUnk_080E8388
	.4byte gUnk_080E83C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4F8
	.4byte sub_0804D4FC

gUnk_080E83F8:: @ 080E83F8
	.incbin "data_080D5360/gUnk_080E83F8.bin"

gUnk_080E8418:: @ 080E8418
	.incbin "data_080D5360/gUnk_080E8418.bin"

gUnk_080E8428:: @ 080E8428
	.incbin "data_080D5360/gUnk_080E8428.bin"

gUnk_080E8438:: @ 080E8438
	.4byte gUnk_080E83F8
	.4byte 0x00000000
	.4byte gUnk_080E8418
	.4byte gUnk_080E8428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D508
	.4byte sub_0804D50C

gUnk_080E8458:: @ 080E8458
	.incbin "data_080D5360/gUnk_080E8458.bin"

gUnk_080E84C8:: @ 080E84C8
	.incbin "data_080D5360/gUnk_080E84C8.bin"

gUnk_080E84F8:: @ 080E84F8
	.incbin "data_080D5360/gUnk_080E84F8.bin"

gUnk_080E8508:: @ 080E8508
	.4byte gUnk_080E8458
	.4byte 0x00000000
	.4byte gUnk_080E84C8
	.4byte gUnk_080E84F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D518
	.4byte sub_0804D51C

gUnk_080E8528:: @ 080E8528
	.incbin "data_080D5360/gUnk_080E8528.bin"

gUnk_080E85C8:: @ 080E85C8
	.incbin "data_080D5360/gUnk_080E85C8.bin"

gUnk_080E85F8:: @ 080E85F8
	.incbin "data_080D5360/gUnk_080E85F8.bin"

gUnk_080E8608:: @ 080E8608
	.4byte gUnk_080E8528
	.4byte 0x00000000
	.4byte gUnk_080E85C8
	.4byte gUnk_080E85F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D528
	.4byte sub_0804D52C

gUnk_080E8628:: @ 080E8628
	.incbin "data_080D5360/gUnk_080E8628.bin"

gUnk_080E8768:: @ 080E8768
	.incbin "data_080D5360/gUnk_080E8768.bin"

gUnk_080E87D8:: @ 080E87D8
	.incbin "data_080D5360/gUnk_080E87D8.bin"

gUnk_080E8800:: @ 080E8800
	.incbin "data_080D5360/gUnk_080E8800.bin"

gUnk_080E8824:: @ 080E8824
	.4byte gUnk_080E8628
	.4byte 0x00000000
	.4byte gUnk_080E8768
	.4byte gUnk_080E87D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D538
	.4byte nullsub_59
	.4byte gUnk_080E8800

gUnk_080E8848:: @ 080E8848
	.incbin "data_080D5360/gUnk_080E8848.bin"

gUnk_080E8918:: @ 080E8918
	.incbin "data_080D5360/gUnk_080E8918.bin"

gUnk_080E8928:: @ 080E8928
	.incbin "data_080D5360/gUnk_080E8928.bin"

gUnk_080E8938:: @ 080E8938
	.incbin "data_080D5360/gUnk_080E8938.bin"

gUnk_080E8988:: @ 080E8988
	.4byte gUnk_080E8848
	.4byte 0x00000000
	.4byte gUnk_080E8918
	.4byte gUnk_080E8928
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D540
	.4byte sub_0804D544
	.4byte gUnk_080E8938

gUnk_080E89AC:: @ 080E89AC
	.incbin "data_080D5360/gUnk_080E89AC.bin"

gUnk_080E89DC:: @ 080E89DC
	.incbin "data_080D5360/gUnk_080E89DC.bin"

gUnk_080E89EC:: @ 080E89EC
	.incbin "data_080D5360/gUnk_080E89EC.bin"

gUnk_080E89FC:: @ 080E89FC
	.4byte gUnk_080E89AC
	.4byte 0x00000000
	.4byte gUnk_080E89DC
	.4byte gUnk_080E89EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D550
	.4byte sub_0804D554

gUnk_080E8A1C:: @ 080E8A1C
	.incbin "data_080D5360/gUnk_080E8A1C.bin"

gUnk_080E8ABC:: @ 080E8ABC
	.incbin "data_080D5360/gUnk_080E8ABC.bin"

gUnk_080E8B2C:: @ 080E8B2C
	.incbin "data_080D5360/gUnk_080E8B2C.bin"

gUnk_080E8B3C:: @ 080E8B3C
	.incbin "data_080D5360/gUnk_080E8B3C.bin"

gUnk_080E8B6C:: @ 080E8B6C
	.incbin "data_080D5360/gUnk_080E8B6C.bin"

gUnk_080E8B9C:: @ 080E8B9C
	.incbin "data_080D5360/gUnk_080E8B9C.bin"

gUnk_080E8BC0:: @ 080E8BC0
	.4byte gUnk_080E8A1C
	.4byte 0x00000000
	.4byte gUnk_080E8ABC
	.4byte gUnk_080E8B2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D560
	.4byte sub_0804D564
	.4byte gUnk_080E8B9C
	.4byte gUnk_080E8B3C
	.4byte gUnk_080E8B6C

gUnk_080E8BEC:: @ 080E8BEC
	.incbin "data_080D5360/gUnk_080E8BEC.bin"

gUnk_080E8C6C:: @ 080E8C6C
	.incbin "data_080D5360/gUnk_080E8C6C.bin"

gUnk_080E8C7C:: @ 080E8C7C
	.incbin "data_080D5360/gUnk_080E8C7C.bin"

gUnk_080E8C8C:: @ 080E8C8C
	.incbin "data_080D5360/gUnk_080E8C8C.bin"

gUnk_080E8CB0:: @ 080E8CB0
	.4byte gUnk_080E8BEC
	.4byte 0x00000000
	.4byte gUnk_080E8C6C
	.4byte gUnk_080E8C7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D570
	.4byte sub_0804D574
	.4byte gUnk_080E8C8C

gUnk_080E8CD4:: @ 080E8CD4
	.incbin "data_080D5360/gUnk_080E8CD4.bin"

gUnk_080E8EB4:: @ 080E8EB4
	.incbin "data_080D5360/gUnk_080E8EB4.bin"

gUnk_080E8ED4:: @ 080E8ED4
	.incbin "data_080D5360/gUnk_080E8ED4.bin"

gUnk_080E8EE4:: @ 080E8EE4
	.4byte gUnk_080E8CD4
	.4byte 0x00000000
	.4byte gUnk_080E8EB4
	.4byte gUnk_080E8ED4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D580
	.4byte sub_0804D584

gUnk_080E8F04:: @ 080E8F04
	.incbin "data_080D5360/gUnk_080E8F04.bin"

gUnk_080E8F44:: @ 080E8F44
	.incbin "data_080D5360/gUnk_080E8F44.bin"

gUnk_080E8F74:: @ 080E8F74
	.incbin "data_080D5360/gUnk_080E8F74.bin"

gUnk_080E8F84:: @ 080E8F84
	.4byte gUnk_080E8F04
	.4byte 0x00000000
	.4byte gUnk_080E8F44
	.4byte gUnk_080E8F74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D590
	.4byte nullsub_60

gUnk_080E8FA4:: @ 080E8FA4
	.incbin "data_080D5360/gUnk_080E8FA4.bin"

gUnk_080E8FE4:: @ 080E8FE4
	.incbin "data_080D5360/gUnk_080E8FE4.bin"

gUnk_080E8FF4:: @ 080E8FF4
	.incbin "data_080D5360/gUnk_080E8FF4.bin"

gUnk_080E900C:: @ 080E900C
	.incbin "data_080D5360/gUnk_080E900C.bin"

gUnk_080E904C:: @ 080E904C
	.4byte gUnk_080E8FA4
	.4byte 0x00000000
	.4byte gUnk_080E8FE4
	.4byte gUnk_080E8FF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D598
	.4byte nullsub_61
	.4byte gUnk_080E900C

gUnk_080E9070:: @ 080E9070
	.incbin "data_080D5360/gUnk_080E9070.bin"

gUnk_080E90A0:: @ 080E90A0
	.incbin "data_080D5360/gUnk_080E90A0.bin"

gUnk_080E90D0:: @ 080E90D0
	.incbin "data_080D5360/gUnk_080E90D0.bin"

gUnk_080E90E0:: @ 080E90E0
	.4byte gUnk_080E9070
	.4byte 0x00000000
	.4byte gUnk_080E90A0
	.4byte gUnk_080E90D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5A0
	.4byte nullsub_62

gUnk_080E9100:: @ 080E9100
	.incbin "data_080D5360/gUnk_080E9100.bin"

gUnk_080E9130:: @ 080E9130
	.incbin "data_080D5360/gUnk_080E9130.bin"

gUnk_080E9170:: @ 080E9170
	.incbin "data_080D5360/gUnk_080E9170.bin"

gUnk_080E9180:: @ 080E9180
	.4byte gUnk_080E9100
	.4byte 0x00000000
	.4byte gUnk_080E9130
	.4byte gUnk_080E9170
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5A8
	.4byte nullsub_63

gUnk_080E91A0:: @ 080E91A0
	.incbin "data_080D5360/gUnk_080E91A0.bin"

gUnk_080E9200:: @ 080E9200
	.incbin "data_080D5360/gUnk_080E9200.bin"

gUnk_080E9210:: @ 080E9210
	.incbin "data_080D5360/gUnk_080E9210.bin"

gUnk_080E9220:: @ 080E9220
	.4byte gUnk_080E91A0
	.4byte 0x00000000
	.4byte gUnk_080E9200
	.4byte gUnk_080E9210
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5B0
	.4byte nullsub_64

gUnk_080E9240:: @ 080E9240
	.incbin "data_080D5360/gUnk_080E9240.bin"

gUnk_080E92D0:: @ 080E92D0
	.incbin "data_080D5360/gUnk_080E92D0.bin"

gUnk_080E9300:: @ 080E9300
	.incbin "data_080D5360/gUnk_080E9300.bin"

gUnk_080E9310:: @ 080E9310
	.4byte gUnk_080E9240
	.4byte 0x00000000
	.4byte gUnk_080E92D0
	.4byte gUnk_080E9300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5B8
	.4byte nullsub_65

gUnk_080E9330:: @ 080E9330
	.incbin "data_080D5360/gUnk_080E9330.bin"

gUnk_080E93B0:: @ 080E93B0
	.incbin "data_080D5360/gUnk_080E93B0.bin"

gUnk_080E94C0:: @ 080E94C0
	.incbin "data_080D5360/gUnk_080E94C0.bin"

gUnk_080E94D0:: @ 080E94D0
	.incbin "data_080D5360/gUnk_080E94D0.bin"

gUnk_080E94EE:: @ 080E94EE
	.incbin "data_080D5360/gUnk_080E94EE.bin"

gUnk_080E9500:: @ 080E9500
	.incbin "data_080D5360/gUnk_080E9500.bin"

gUnk_080E9518:: @ 080E9518
	.4byte gUnk_080E9330
	.4byte 0x00000000
	.4byte gUnk_080E93B0
	.4byte gUnk_080E94C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5C0
	.4byte sub_0804D5C4
	.4byte gUnk_080E94D0
	.4byte gUnk_080E94EE
	.4byte gUnk_080E9500

gUnk_080E9544:: @ 080E9544
	.incbin "data_080D5360/gUnk_080E9544.bin"

gUnk_080E9684:: @ 080E9684
	.incbin "data_080D5360/gUnk_080E9684.bin"

gUnk_080E9694:: @ 080E9694
	.incbin "data_080D5360/gUnk_080E9694.bin"

gUnk_080E96A4:: @ 080E96A4
	.incbin "data_080D5360/gUnk_080E96A4.bin"

gUnk_080E96D4:: @ 080E96D4
	.4byte gUnk_080E9544
	.4byte 0x00000000
	.4byte gUnk_080E9684
	.4byte gUnk_080E9694
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5D0
	.4byte sub_0804D5D4
	.4byte gUnk_080E96A4

gUnk_080E96F8:: @ 080E96F8
	.incbin "data_080D5360/gUnk_080E96F8.bin"

gUnk_080E97D8:: @ 080E97D8
	.incbin "data_080D5360/gUnk_080E97D8.bin"

gUnk_080E9818:: @ 080E9818
	.incbin "data_080D5360/gUnk_080E9818.bin"

gUnk_080E9828:: @ 080E9828
	.4byte gUnk_080E96F8
	.4byte 0x00000000
	.4byte gUnk_080E97D8
	.4byte gUnk_080E9818
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5E0
	.4byte sub_0804D5E4

gUnk_080E9848:: @ 080E9848
	.incbin "data_080D5360/gUnk_080E9848.bin"

gUnk_080E9918:: @ 080E9918
	.incbin "data_080D5360/gUnk_080E9918.bin"

gUnk_080E9928:: @ 080E9928
	.incbin "data_080D5360/gUnk_080E9928.bin"

gUnk_080E9938:: @ 080E9938
	.incbin "data_080D5360/gUnk_080E9938.bin"

gUnk_080E996E:: @ 080E996E
	.incbin "data_080D5360/gUnk_080E996E.bin"

gUnk_080E99A4:: @ 080E99A4
	.incbin "data_080D5360/gUnk_080E99A4.bin"

gUnk_080E99DA:: @ 080E99DA
	.incbin "data_080D5360/gUnk_080E99DA.bin"

gUnk_080E9A10:: @ 080E9A10
	.4byte gUnk_080E9848
	.4byte 0x00000000
	.4byte gUnk_080E9918
	.4byte gUnk_080E9928
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5F0
	.4byte sub_0804D5F4
	.4byte gUnk_080E9938
	.4byte gUnk_080E996E
	.4byte gUnk_080E99A4
	.4byte gUnk_080E99DA

gUnk_080E9A40:: @ 080E9A40
	.incbin "data_080D5360/gUnk_080E9A40.bin"

gUnk_080E9A60:: @ 080E9A60
	.incbin "data_080D5360/gUnk_080E9A60.bin"

gUnk_080E9AC0:: @ 080E9AC0
	.incbin "data_080D5360/gUnk_080E9AC0.bin"

gUnk_080E9AD0:: @ 080E9AD0
	.4byte gUnk_080E9A40
	.4byte 0x00000000
	.4byte gUnk_080E9A60
	.4byte gUnk_080E9AC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D600
	.4byte nullsub_66

gUnk_080E9AF0:: @ 080E9AF0
	.incbin "data_080D5360/gUnk_080E9AF0.bin"

gUnk_080E9B30:: @ 080E9B30
	.incbin "data_080D5360/gUnk_080E9B30.bin"

gUnk_080E9B70:: @ 080E9B70
	.incbin "data_080D5360/gUnk_080E9B70.bin"

gUnk_080E9B80:: @ 080E9B80
	.4byte gUnk_080E9AF0
	.4byte 0x00000000
	.4byte gUnk_080E9B30
	.4byte gUnk_080E9B70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D608
	.4byte nullsub_67

gUnk_080E9BA0:: @ 080E9BA0
	.incbin "data_080D5360/gUnk_080E9BA0.bin"

gUnk_080E9C00:: @ 080E9C00
	.incbin "data_080D5360/gUnk_080E9C00.bin"

gUnk_080E9C30:: @ 080E9C30
	.incbin "data_080D5360/gUnk_080E9C30.bin"

gUnk_080E9C40:: @ 080E9C40
	.4byte gUnk_080E9BA0
	.4byte 0x00000000
	.4byte gUnk_080E9C00
	.4byte gUnk_080E9C30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D610
	.4byte nullsub_68

gUnk_080E9C60:: @ 080E9C60
	.incbin "data_080D5360/gUnk_080E9C60.bin"

gUnk_080E9C90:: @ 080E9C90
	.incbin "data_080D5360/gUnk_080E9C90.bin"

gUnk_080E9CC0:: @ 080E9CC0
	.incbin "data_080D5360/gUnk_080E9CC0.bin"

gUnk_080E9CD0:: @ 080E9CD0
	.4byte gUnk_080E9C60
	.4byte 0x00000000
	.4byte gUnk_080E9C90
	.4byte gUnk_080E9CC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D618
	.4byte nullsub_69

gUnk_080E9CF0:: @ 080E9CF0
	.incbin "data_080D5360/gUnk_080E9CF0.bin"

gUnk_080E9D50:: @ 080E9D50
	.incbin "data_080D5360/gUnk_080E9D50.bin"

gUnk_080E9D60:: @ 080E9D60
	.incbin "data_080D5360/gUnk_080E9D60.bin"

gUnk_080E9D78:: @ 080E9D78
	.incbin "data_080D5360/gUnk_080E9D78.bin"

gUnk_080E9DA8:: @ 080E9DA8
	.4byte gUnk_080E9CF0
	.4byte 0x00000000
	.4byte gUnk_080E9D50
	.4byte gUnk_080E9D60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D620
	.4byte nullsub_70
	.4byte gUnk_080E9D78

gUnk_080E9DCC:: @ 080E9DCC
	.incbin "data_080D5360/gUnk_080E9DCC.bin"

gUnk_080E9DEC:: @ 080E9DEC
	.incbin "data_080D5360/gUnk_080E9DEC.bin"

gUnk_080E9E1C:: @ 080E9E1C
	.incbin "data_080D5360/gUnk_080E9E1C.bin"

gUnk_080E9E2C:: @ 080E9E2C
	.4byte gUnk_080E9DCC
	.4byte 0x00000000
	.4byte gUnk_080E9DEC
	.4byte gUnk_080E9E1C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D628
	.4byte nullsub_71

gUnk_080E9E4C:: @ 080E9E4C
	.incbin "data_080D5360/gUnk_080E9E4C.bin"

gUnk_080E9E6C:: @ 080E9E6C
	.incbin "data_080D5360/gUnk_080E9E6C.bin"

gUnk_080E9EAC:: @ 080E9EAC
	.incbin "data_080D5360/gUnk_080E9EAC.bin"

gUnk_080E9EC4:: @ 080E9EC4
	.incbin "data_080D5360/gUnk_080E9EC4.bin"

gUnk_080E9EE2:: @ 080E9EE2
	.incbin "data_080D5360/gUnk_080E9EE2.bin"

gUnk_080E9F00:: @ 080E9F00
	.incbin "data_080D5360/gUnk_080E9F00.bin"

gUnk_080E9F20:: @ 080E9F20
	.4byte gUnk_080E9E4C
	.4byte 0x00000000
	.4byte gUnk_080E9E6C
	.4byte gUnk_080E9EAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D630
	.4byte sub_0804D634
	.4byte gUnk_080E9EC4
	.4byte gUnk_080E9EE2
	.4byte gUnk_080E9F00

gUnk_080E9F4C:: @ 080E9F4C
.ifdef EU
	.incbin "data_080D5360/gUnk_080E9F4C_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080E9F4C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080EA09C:: @ 080EA09C
	.incbin "data_080D5360/gUnk_080EA09C.bin"

gUnk_080EA0EC:: @ 080EA0EC
	.incbin "data_080D5360/gUnk_080EA0EC.bin"

gUnk_080EA10C:: @ 080EA10C
	.incbin "data_080D5360/gUnk_080EA10C.bin"

gUnk_080EA124:: @ 080EA124
	.incbin "data_080D5360/gUnk_080EA124.bin"

gUnk_080EA154:: @ 080EA154
	.incbin "data_080D5360/gUnk_080EA154.bin"

gUnk_080EA1A4:: @ 080EA1A4
	.incbin "data_080D5360/gUnk_080EA1A4.bin"

gUnk_080EA214:: @ 080EA214
	.4byte gUnk_080E9F4C
	.4byte 0x00000000
	.4byte gUnk_080EA0EC
	.4byte gUnk_080EA10C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D640
	.4byte sub_0804D644
	.4byte gUnk_080EA124
	.4byte gUnk_080EA154
	.4byte gUnk_080EA1A4

gUnk_080EA240:: @ 080EA240
	.incbin "data_080D5360/gUnk_080EA240.bin"

gUnk_080EA260:: @ 080EA260
	.incbin "data_080D5360/gUnk_080EA260.bin"

gUnk_080EA2E0:: @ 080EA2E0
	.incbin "data_080D5360/gUnk_080EA2E0.bin"

gUnk_080EA2F8:: @ 080EA2F8
	.4byte gUnk_080EA240
	.4byte 0x00000000
	.4byte gUnk_080EA260
	.4byte gUnk_080EA2E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D664
	.4byte sub_0804D668

gUnk_080EA318:: @ 080EA318
	.incbin "data_080D5360/gUnk_080EA318.bin"

gUnk_080EA408:: @ 080EA408
	.incbin "data_080D5360/gUnk_080EA408.bin"

gUnk_080EA418:: @ 080EA418
	.incbin "data_080D5360/gUnk_080EA418.bin"

gUnk_080EA428:: @ 080EA428
	.incbin "data_080D5360/gUnk_080EA428.bin"

gUnk_080EA478:: @ 080EA478
	.incbin "data_080D5360/gUnk_080EA478.bin"

gUnk_080EA496:: @ 080EA496
	.incbin "data_080D5360/gUnk_080EA496.bin"

gUnk_080EA4BC:: @ 080EA4BC
	.4byte gUnk_080EA318
	.4byte 0x00000000
	.4byte gUnk_080EA408
	.4byte gUnk_080EA418
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D674
	.4byte sub_0804D678
	.4byte gUnk_080EA428
	.4byte gUnk_080EA478
	.4byte gUnk_080EA496

gUnk_080EA4E8:: @ 080EA4E8
	.incbin "data_080D5360/gUnk_080EA4E8.bin"

gUnk_080EA518:: @ 080EA518
	.incbin "data_080D5360/gUnk_080EA518.bin"

gUnk_080EA528:: @ 080EA528
	.incbin "data_080D5360/gUnk_080EA528.bin"

gUnk_080EA538:: @ 080EA538
	.4byte gUnk_080EA4E8
	.4byte 0x00000000
	.4byte gUnk_080EA518
	.4byte gUnk_080EA528
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D684
	.4byte sub_0804D688

gUnk_080EA558:: @ 080EA558
	.incbin "data_080D5360/gUnk_080EA558.bin"

gUnk_080EA658:: @ 080EA658
	.incbin "data_080D5360/gUnk_080EA658.bin"

gUnk_080EA6D8:: @ 080EA6D8
	.incbin "data_080D5360/gUnk_080EA6D8.bin"

gUnk_080EA6E8:: @ 080EA6E8
	.4byte gUnk_080EA558
	.4byte 0x00000000
	.4byte gUnk_080EA658
	.4byte gUnk_080EA6D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D694
	.4byte sub_0804D698

gUnk_080EA708:: @ 080EA708
	.incbin "data_080D5360/gUnk_080EA708.bin"

gUnk_080EA7A8:: @ 080EA7A8
	.incbin "data_080D5360/gUnk_080EA7A8.bin"

gUnk_080EA7B8:: @ 080EA7B8
	.incbin "data_080D5360/gUnk_080EA7B8.bin"

gUnk_080EA7C8:: @ 080EA7C8
	.4byte gUnk_080EA708
	.4byte 0x00000000
	.4byte gUnk_080EA7A8
	.4byte gUnk_080EA7B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6A4
	.4byte sub_0804D6A8

gUnk_080EA7E8:: @ 080EA7E8
	.incbin "data_080D5360/gUnk_080EA7E8.bin"

gUnk_080EA968:: @ 080EA968
	.incbin "data_080D5360/gUnk_080EA968.bin"

gUnk_080EA9B8:: @ 080EA9B8
	.incbin "data_080D5360/gUnk_080EA9B8.bin"

gUnk_080EA9E0:: @ 080EA9E0
	.4byte gUnk_080EA7E8
	.4byte 0x00000000
	.4byte gUnk_080EA968
	.4byte gUnk_080EA9B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6B4
	.4byte nullsub_72

gUnk_080EAA00:: @ 080EAA00
	.incbin "data_080D5360/gUnk_080EAA00.bin"

gUnk_080EAA30:: @ 080EAA30
	.incbin "data_080D5360/gUnk_080EAA30.bin"

gUnk_080EAA40:: @ 080EAA40
	.incbin "data_080D5360/gUnk_080EAA40.bin"

gUnk_080EAA50:: @ 080EAA50
	.incbin "data_080D5360/gUnk_080EAA50.bin"

Room_PalaceOfWindsBoss_Main:: @ 080EAA58
	.4byte gUnk_080EAA00
	.4byte gUnk_080EAA30
	.4byte gUnk_080EAA40
	.4byte gUnk_080EAA50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6BC
	.4byte nullsub_73

gUnk_080EAA78:: @ 080EAA78
	.incbin "data_080D5360/gUnk_080EAA78.bin"
	.4byte script_0800DFE4
	.incbin "data_080D5360/gUnk_080EAA78_1.bin"

gUnk_080EAAB8:: @ 080EAAB8
	.incbin "data_080D5360/gUnk_080EAAB8.bin"

gUnk_080EAAD8:: @ 080EAAD8
	.incbin "data_080D5360/gUnk_080EAAD8.bin"

gUnk_080EAAF8:: @ 080EAAF8
	.incbin "data_080D5360/gUnk_080EAAF8.bin"

Room_Vaati2_Main:: @ 080EAB00
	.4byte gUnk_080EAA78
	.4byte gUnk_080EAAB8
	.4byte gUnk_080EAAD8
	.4byte gUnk_080EAAF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6C4
	.4byte sub_0804D6C8

gUnk_080EAB20:: @ 080EAB20
	.incbin "data_080D5360/gUnk_080EAB20.bin"
	.4byte script_0800A0FC
	.incbin "data_080D5360/gUnk_080EAB20_1.bin"

gUnk_080EAB90:: @ 080EAB90
	.incbin "data_080D5360/gUnk_080EAB90.bin"

gUnk_080EABA0:: @ 080EABA0
	.incbin "data_080D5360/gUnk_080EABA0.bin"

Room_Vaati3_Main:: @ 080EABA8
	.4byte gUnk_080EAB20
	.4byte 0x00000000
	.4byte gUnk_080EAB90
	.4byte gUnk_080EABA0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6EC
	.4byte sub_0804D6F0

gUnk_080EABC8:: @ 080EABC8
	.incbin "data_080D5360/gUnk_080EABC8.bin"
	.4byte script_0800E4A4
	.incbin "data_080D5360/gUnk_080EABC8_1.bin"

gUnk_080EABF8:: @ 080EABF8
	.incbin "data_080D5360/gUnk_080EABF8.bin"

gUnk_080EAC18:: @ 080EAC18
	.incbin "data_080D5360/gUnk_080EAC18.bin"

gUnk_080EAC38:: @ 080EAC38
	.incbin "data_080D5360/gUnk_080EAC38.bin"

Room_DarkHyruleCastleBridge_Main:: @ 080EAC40
	.4byte gUnk_080EABC8
	.4byte gUnk_080EABF8
	.4byte gUnk_080EAC18
	.4byte gUnk_080EAC38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D754
	.4byte sub_0804D758

gUnk_080EAC60:: @ 080EAC60
.ifdef JP
	.incbin "data_080D5360/gUnk_080EAC60_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080EAC60_1_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080EAC60_2_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif

gUnk_080EAC90:: @ 080EAC90
	.incbin "data_080D5360/gUnk_080EAC90.bin"

gUnk_080EACA0:: @ 080EACA0
	.incbin "data_080D5360/gUnk_080EACA0.bin"

Room_VaatisArms_First:: @ 080EACA8
	.4byte gUnk_080EAC60
	.4byte 0x00000000
	.4byte gUnk_080EAC90
	.4byte gUnk_080EACA0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D764
	.4byte nullsub_74

gUnk_080EACC8:: @ 080EACC8
.ifdef JP
	.incbin "data_080D5360/gUnk_080EACC8_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080EACC8_1_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080EACC8_2_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif

gUnk_080EACF8:: @ 080EACF8
	.incbin "data_080D5360/gUnk_080EACF8.bin"

gUnk_080EAD08:: @ 080EAD08
	.incbin "data_080D5360/gUnk_080EAD08.bin"

Room_VaatisArms_Second:: @ 080EAD18
	.4byte gUnk_080EACC8
	.4byte 0x00000000
	.4byte gUnk_080EACF8
	.4byte gUnk_080EAD08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D76C
	.4byte nullsub_75

gUnk_080EAD38:: @ 080EAD38
	.incbin "data_080D5360/gUnk_080EAD38.bin"

gUnk_080EAD48:: @ 080EAD48
	.incbin "data_080D5360/gUnk_080EAD48.bin"

gUnk_080EAD68:: @ 080EAD68
	.incbin "data_080D5360/gUnk_080EAD68.bin"
	.4byte script_0800DA60
	.incbin "data_080D5360/gUnk_080EAD68_1.bin"
	.4byte script_0800DB18
	.incbin "data_080D5360/gUnk_080EAD68_2.bin"
	.4byte script_0800DB28
	.incbin "data_080D5360/gUnk_080EAD68_3.bin"

gUnk_080EADB8:: @ 080EADB8
	.incbin "data_080D5360/gUnk_080EADB8.bin"
	.4byte script_0800DB78
	.incbin "data_080D5360/gUnk_080EADB8_1.bin"
	.4byte script_0800DCAC
	.incbin "data_080D5360/gUnk_080EADB8_2.bin"

gUnk_080EADE8:: @ 080EADE8
	.incbin "data_080D5360/gUnk_080EADE8.bin"

gUnk_080EADF8:: @ 080EADF8
	.incbin "data_080D5360/gUnk_080EADF8.bin"

gUnk_080EAE00:: @ 080EAE00
	.incbin "data_080D5360/gUnk_080EAE00.bin"

Room_DarkHyruleCastleOutside_ZeldaStatuePlatform:: @ 080EAE20
	.4byte gUnk_080EAD38
	.4byte gUnk_080EAD48
	.4byte gUnk_080EADE8
	.4byte gUnk_080EADF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D774
	.4byte sub_0804D780

gUnk_080EAE40:: @ 080EAE40
	.incbin "data_080D5360/gUnk_080EAE40.bin"

gUnk_080EAE60:: @ 080EAE60
	.incbin "data_080D5360/gUnk_080EAE60.bin"
	.4byte script_0800E0BC
	.incbin "data_080D5360/gUnk_080EAE60_1.bin"
	.4byte script_0800E154
	.incbin "data_080D5360/gUnk_080EAE60_2.bin"
	.4byte script_0800E200
.ifdef EU
	.incbin "data_080D5360/gUnk_080EAE60_3_EU.bin"
	@ TODO 0x10 bytes between here is missing in EU
	.incbin "data_080D5360/gUnk_080EAE60_4_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080EAE60_5_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080EAEC0:: @ 080EAEC0
	.incbin "data_080D5360/gUnk_080EAEC0.bin"
	.4byte script_0800A1D8
	.incbin "data_080D5360/gUnk_080EAEC0_1.bin"
	.4byte script_0800A340
	.incbin "data_080D5360/gUnk_080EAEC0_2.bin"
	.4byte script_0800A3D8
	.incbin "data_080D5360/gUnk_080EAEC0_3.bin"
	.4byte script_0800A590
	.incbin "data_080D5360/gUnk_080EAEC0_4.bin"
	.4byte script_0800A500
	.incbin "data_080D5360/gUnk_080EAEC0_5.bin"

gUnk_080EAF20:: @ 080EAF20
	.incbin "data_080D5360/gUnk_080EAF20.bin"
	.4byte script_0800AAD8
	.incbin "data_080D5360/gUnk_080EAF20_1.bin"

gUnk_080EAF40:: @ 080EAF40
	.incbin "data_080D5360/gUnk_080EAF40.bin"

gUnk_080EAF60:: @ 080EAF60
	.incbin "data_080D5360/gUnk_080EAF60.bin"

gUnk_080EAF70:: @ 080EAF70
	.incbin "data_080D5360/gUnk_080EAF70.bin"

Room_DarkHyruleCastleOutside_Garden:: @ 080EAF78
	.4byte gUnk_080EAE40
	.4byte gUnk_080EAF40
	.4byte gUnk_080EAF60
	.4byte gUnk_080EAF70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D830
	.4byte sub_0804D834

gUnk_080EAF98:: @ 080EAF98
	.incbin "data_080D5360/gUnk_080EAF98.bin"

gUnk_080EAFB8:: @ 080EAFB8
	.incbin "data_080D5360/gUnk_080EAFB8.bin"

gUnk_080EAFC8:: @ 080EAFC8
	.incbin "data_080D5360/gUnk_080EAFC8.bin"

Room_DarkHyruleCastleOutside_OutsideNorthwest:: @ 080EAFD0
	.4byte gUnk_080EAF98
	.4byte 0x00000000
	.4byte gUnk_080EAFB8
	.4byte gUnk_080EAFC8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8CC
	.4byte nullsub_320

gUnk_080EAFF0:: @ 080EAFF0
	.incbin "data_080D5360/gUnk_080EAFF0.bin"

gUnk_080EB070:: @ 080EB070
	.incbin "data_080D5360/gUnk_080EB070.bin"

gUnk_080EB090:: @ 080EB090
	.incbin "data_080D5360/gUnk_080EB090.bin"

gUnk_080EB098:: @ 080EB098
	.incbin "data_080D5360/gUnk_080EB098.bin"

Room_DarkHyruleCastleOutside_OutsideNortheast:: @ 080EB0A4
	.4byte gUnk_080EAFF0
	.4byte 0x00000000
	.4byte gUnk_080EB070
	.4byte gUnk_080EB090
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8D4
	.4byte nullsub_321
	.4byte gUnk_080EB098

gUnk_080EB0C8:: @ 080EB0C8
	.incbin "data_080D5360/gUnk_080EB0C8.bin"

gUnk_080EB118:: @ 080EB118
	.incbin "data_080D5360/gUnk_080EB118.bin"

gUnk_080EB178:: @ 080EB178
	.incbin "data_080D5360/gUnk_080EB178.bin"

Room_DarkHyruleCastleOutside_OutsideEast:: @ 080EB180
	.4byte gUnk_080EB0C8
	.4byte 0x00000000
	.4byte gUnk_080EB118
	.4byte gUnk_080EB178
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8DC
	.4byte nullsub_322

gUnk_080EB1A0:: @ 080EB1A0
	.incbin "data_080D5360/gUnk_080EB1A0.bin"

gUnk_080EB1B0:: @ 080EB1B0
	.incbin "data_080D5360/gUnk_080EB1B0.bin"

gUnk_080EB1D0:: @ 080EB1D0
	.incbin "data_080D5360/gUnk_080EB1D0.bin"

Room_DarkHyruleCastleOutside_OutsideSouthwest:: @ 080EB1D8
	.4byte gUnk_080EB1A0
	.4byte 0x00000000
	.4byte gUnk_080EB1B0
	.4byte gUnk_080EB1D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8E4
	.4byte nullsub_323

gUnk_080EB1F8:: @ 080EB1F8
	.incbin "data_080D5360/gUnk_080EB1F8.bin"

gUnk_080EB288:: @ 080EB288
	.incbin "data_080D5360/gUnk_080EB288.bin"

gUnk_080EB318:: @ 080EB318
	.incbin "data_080D5360/gUnk_080EB318.bin"

Room_DarkHyruleCastleOutside_OutsideSouth:: @ 080EB320
	.4byte gUnk_080EB1F8
	.4byte 0x00000000
	.4byte gUnk_080EB288
	.4byte gUnk_080EB318
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8EC
	.4byte nullsub_324

gUnk_080EB340:: @ 080EB340
	.incbin "data_080D5360/gUnk_080EB340.bin"

gUnk_080EB3F0:: @ 080EB3F0
	.incbin "data_080D5360/gUnk_080EB3F0.bin"

gUnk_080EB420:: @ 080EB420
	.incbin "data_080D5360/gUnk_080EB420.bin"

gUnk_080EB428:: @ 080EB428
	.incbin "data_080D5360/gUnk_080EB428.bin"

Room_DarkHyruleCastleOutside_OutsideSoutheast:: @ 080EB440
	.4byte gUnk_080EB340
	.4byte 0x00000000
	.4byte gUnk_080EB3F0
	.4byte gUnk_080EB420
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8F4
	.4byte nullsub_325
	.4byte gUnk_080EB428

gUnk_080EB464:: @ 080EB464
	.incbin "data_080D5360/gUnk_080EB464.bin"

gUnk_080EB4A4:: @ 080EB4A4
	.incbin "data_080D5360/gUnk_080EB4A4.bin"

gUnk_080EB504:: @ 080EB504
	.incbin "data_080D5360/gUnk_080EB504.bin"

gUnk_080EB50C:: @ 080EB50C
	.incbin "data_080D5360/gUnk_080EB50C.bin"

gUnk_080EB52A:: @ 080EB52A
	.incbin "data_080D5360/gUnk_080EB52A.bin"

gUnk_080EB548:: @ 080EB548
	.incbin "data_080D5360/gUnk_080EB548.bin"

Room_DarkHyruleCastleOutside_8:: @ 080EB568
	.4byte gUnk_080EB464
	.4byte 0x00000000
	.4byte gUnk_080EB4A4
	.4byte gUnk_080EB504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8FC
	.4byte nullsub_326
	.4byte gUnk_080EB50C
	.4byte gUnk_080EB52A
	.4byte gUnk_080EB548

gUnk_080EB594:: @ 080EB594
	.incbin "data_080D5360/gUnk_080EB594.bin"

gUnk_080EB5D4:: @ 080EB5D4
	.incbin "data_080D5360/gUnk_080EB5D4.bin"
	.4byte script_0800DE78
	.incbin "data_080D5360/gUnk_080EB5D4_1.bin"
	.4byte script_0800DED4
	.incbin "data_080D5360/gUnk_080EB5D4_2.bin"

gUnk_080EB604:: @ 080EB604
	.incbin "data_080D5360/gUnk_080EB604.bin"
	.4byte script_0800A704
	.incbin "data_080D5360/gUnk_080EB604_1.bin"

gUnk_080EB664:: @ 080EB664
	.incbin "data_080D5360/gUnk_080EB664.bin"

gUnk_080EB674:: @ 080EB674
	.incbin "data_080D5360/gUnk_080EB674.bin"

gUnk_080EB684:: @ 080EB684
	.incbin "data_080D5360/gUnk_080EB684.bin"

gUnk_080EB704:: @ 080EB704
	.4byte gUnk_080EB594
	.4byte 0x00000000
	.4byte gUnk_080EB664
	.4byte gUnk_080EB674
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D904
	.4byte sub_0804D97C

gUnk_080EB724:: @ 080EB724
	.incbin "data_080D5360/gUnk_080EB724.bin"

gUnk_080EB734:: @ 080EB734
	.incbin "data_080D5360/gUnk_080EB734.bin"

gUnk_080EB744:: @ 080EB744
	.incbin "data_080D5360/gUnk_080EB744.bin"

gUnk_080EB75C:: @ 080EB75C
	.4byte gUnk_080EB724
	.4byte 0x00000000
	.4byte gUnk_080EB734
	.4byte gUnk_080EB744
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA04
	.4byte nullsub_327

gUnk_080EB77C:: @ 080EB77C
	.incbin "data_080D5360/gUnk_080EB77C.bin"

gUnk_080EB78C:: @ 080EB78C
	.incbin "data_080D5360/gUnk_080EB78C.bin"

gUnk_080EB79C:: @ 080EB79C
	.incbin "data_080D5360/gUnk_080EB79C.bin"

gUnk_080EB7B4:: @ 080EB7B4
	.4byte gUnk_080EB77C
	.4byte 0x00000000
	.4byte gUnk_080EB78C
	.4byte gUnk_080EB79C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA0C
	.4byte nullsub_328

gUnk_080EB7D4:: @ 080EB7D4
	.incbin "data_080D5360/gUnk_080EB7D4.bin"

gUnk_080EB7E4:: @ 080EB7E4
	.incbin "data_080D5360/gUnk_080EB7E4.bin"

gUnk_080EB7F4:: @ 080EB7F4
	.incbin "data_080D5360/gUnk_080EB7F4.bin"

gUnk_080EB80C:: @ 080EB80C
	.4byte gUnk_080EB7D4
	.4byte 0x00000000
	.4byte gUnk_080EB7E4
	.4byte gUnk_080EB7F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA14
	.4byte nullsub_329

gUnk_080EB82C:: @ 080EB82C
	.incbin "data_080D5360/gUnk_080EB82C.bin"

gUnk_080EB83C:: @ 080EB83C
	.incbin "data_080D5360/gUnk_080EB83C.bin"

gUnk_080EB84C:: @ 080EB84C
	.incbin "data_080D5360/gUnk_080EB84C.bin"

gUnk_080EB864:: @ 080EB864
	.4byte gUnk_080EB82C
	.4byte 0x00000000
	.4byte gUnk_080EB83C
	.4byte gUnk_080EB84C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA1C
	.4byte nullsub_330

gUnk_080EB884:: @ 080EB884
	.incbin "data_080D5360/gUnk_080EB884.bin"
	.4byte script_0800E504
	.incbin "data_080D5360/gUnk_080EB884_1.bin"

gUnk_080EB904:: @ 080EB904
	.incbin "data_080D5360/gUnk_080EB904.bin"

gUnk_080EB9B4:: @ 080EB9B4
	.incbin "data_080D5360/gUnk_080EB9B4.bin"

gUnk_080EB9C4:: @ 080EB9C4
	.4byte gUnk_080EB884
	.4byte 0x00000000
	.4byte gUnk_080EB904
	.4byte gUnk_080EB9B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA24
	.4byte nullsub_331

gUnk_080EB9E4:: @ 080EB9E4
	.incbin "data_080D5360/gUnk_080EB9E4.bin"

gUnk_080EB9F4:: @ 080EB9F4
	.incbin "data_080D5360/gUnk_080EB9F4.bin"
	.4byte script_0800E544
.ifdef EU
	.incbin "data_080D5360/gUnk_080EB9F4_1_EU.bin"
	.incbin "data_080D5360/gUnk_080EB9F4_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080EB9F4_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080EBAA4:: @ 080EBAA4
	.incbin "data_080D5360/gUnk_080EBAA4.bin"
	.4byte script_0800DF24
	.incbin "data_080D5360/gUnk_080EBAA4_1.bin"
	.4byte script_0800DFB4
	.incbin "data_080D5360/gUnk_080EBAA4_2.bin"

gUnk_080EBAF4:: @ 080EBAF4
	.incbin "data_080D5360/gUnk_080EBAF4.bin"
	.4byte script_0800E050
	.incbin "data_080D5360/gUnk_080EBAF4_1.bin"

gUnk_080EBB34:: @ 080EBB34
.ifdef EU
	.incbin "data_080D5360/gUnk_080EBB34_EU.bin"
	.incbin "data_080D5360/gUnk_080EBB34_1_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080EBB34_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080EBBA4:: @ 080EBBA4
	.incbin "data_080D5360/gUnk_080EBBA4.bin"

gUnk_080EBBB4:: @ 080EBBB4
	.incbin "data_080D5360/gUnk_080EBBB4.bin"

gUnk_080EBC14:: @ 080EBC14
	.4byte gUnk_080EB9E4
	.4byte 0x00000000
	.4byte gUnk_080EBB34
	.4byte gUnk_080EBBA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA2C
	.4byte sub_0804DA48
	.4byte gUnk_080EBBB4

gUnk_080EBC38:: @ 080EBC38
	.incbin "data_080D5360/gUnk_080EBC38.bin"

gUnk_080EBC78:: @ 080EBC78
	.incbin "data_080D5360/gUnk_080EBC78.bin"

gUnk_080EBC88:: @ 080EBC88
	.incbin "data_080D5360/gUnk_080EBC88.bin"

gUnk_080EBC98:: @ 080EBC98
	.4byte gUnk_080EBC38
	.4byte 0x00000000
	.4byte gUnk_080EBC78
	.4byte gUnk_080EBC88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA98
	.4byte nullsub_332

gUnk_080EBCB8:: @ 080EBCB8
	.incbin "data_080D5360/gUnk_080EBCB8.bin"

gUnk_080EBDB8:: @ 080EBDB8
	.incbin "data_080D5360/gUnk_080EBDB8.bin"

gUnk_080EBE28:: @ 080EBE28
	.incbin "data_080D5360/gUnk_080EBE28.bin"

gUnk_080EBE38:: @ 080EBE38
	.4byte gUnk_080EBCB8
	.4byte 0x00000000
	.4byte gUnk_080EBDB8
	.4byte gUnk_080EBE28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAA0
	.4byte nullsub_333

gUnk_080EBE58:: @ 080EBE58
	.incbin "data_080D5360/gUnk_080EBE58.bin"

gUnk_080EBEF8:: @ 080EBEF8
	.incbin "data_080D5360/gUnk_080EBEF8.bin"

gUnk_080EBF08:: @ 080EBF08
	.incbin "data_080D5360/gUnk_080EBF08.bin"

gUnk_080EBF40:: @ 080EBF40
	.4byte gUnk_080EBE58
	.4byte 0x00000000
	.4byte gUnk_080EBEF8
	.4byte gUnk_080EBF08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAA8
	.4byte nullsub_334

gUnk_080EBF60:: @ 080EBF60
	.incbin "data_080D5360/gUnk_080EBF60.bin"

gUnk_080EBFB0:: @ 080EBFB0
	.incbin "data_080D5360/gUnk_080EBFB0.bin"

gUnk_080EBFC0:: @ 080EBFC0
	.incbin "data_080D5360/gUnk_080EBFC0.bin"

gUnk_080EBFD8:: @ 080EBFD8
	.incbin "data_080D5360/gUnk_080EBFD8.bin"
	.4byte script_0800E5C4
	.incbin "data_080D5360/gUnk_080EBFD8_1.bin"

gUnk_080EC038:: @ 080EC038
	.4byte gUnk_080EBF60
	.4byte 0x00000000
	.4byte gUnk_080EBFB0
	.4byte gUnk_080EBFC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAB0
	.4byte nullsub_335
	.4byte gUnk_080EBFD8

gUnk_080EC05C:: @ 080EC05C
	.incbin "data_080D5360/gUnk_080EC05C.bin"

gUnk_080EC09C:: @ 080EC09C
	.incbin "data_080D5360/gUnk_080EC09C.bin"

gUnk_080EC0AC:: @ 080EC0AC
	.incbin "data_080D5360/gUnk_080EC0AC.bin"

gUnk_080EC0BC:: @ 080EC0BC
	.incbin "data_080D5360/gUnk_080EC0BC.bin"

gUnk_080EC0DC:: @ 080EC0DC
	.incbin "data_080D5360/gUnk_080EC0DC.bin"

gUnk_080EC0EC:: @ 080EC0EC
	.4byte gUnk_080EC05C
	.4byte 0x00000000
	.4byte gUnk_080EC09C
	.4byte gUnk_080EC0AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAB8
	.4byte nullsub_336
	.4byte gUnk_080EC0BC
	.4byte gUnk_080EC0DC

gUnk_080EC114:: @ 080EC114
	.incbin "data_080D5360/gUnk_080EC114.bin"

gUnk_080EC1F4:: @ 080EC1F4
	.incbin "data_080D5360/gUnk_080EC1F4.bin"

gUnk_080EC204:: @ 080EC204
	.incbin "data_080D5360/gUnk_080EC204.bin"

gUnk_080EC21C:: @ 080EC21C
	.4byte gUnk_080EC114
	.4byte 0x00000000
	.4byte gUnk_080EC1F4
	.4byte gUnk_080EC204
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAC0
	.4byte nullsub_337

gUnk_080EC23C:: @ 080EC23C
	.incbin "data_080D5360/gUnk_080EC23C.bin"

gUnk_080EC24C:: @ 080EC24C
	.incbin "data_080D5360/gUnk_080EC24C.bin"

gUnk_080EC27C:: @ 080EC27C
	.incbin "data_080D5360/gUnk_080EC27C.bin"

gUnk_080EC28C:: @ 080EC28C
	.4byte gUnk_080EC23C
	.4byte 0x00000000
	.4byte gUnk_080EC24C
	.4byte gUnk_080EC27C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAC8
	.4byte nullsub_338

gUnk_080EC2AC:: @ 080EC2AC
	.incbin "data_080D5360/gUnk_080EC2AC.bin"

gUnk_080EC2CC:: @ 080EC2CC
	.incbin "data_080D5360/gUnk_080EC2CC.bin"

gUnk_080EC34C:: @ 080EC34C
	.incbin "data_080D5360/gUnk_080EC34C.bin"

gUnk_080EC35C:: @ 080EC35C
	.incbin "data_080D5360/gUnk_080EC35C.bin"

gUnk_080EC374:: @ 080EC374
	.incbin "data_080D5360/gUnk_080EC374.bin"

gUnk_080EC3C4:: @ 080EC3C4
	.4byte gUnk_080EC2AC
	.4byte 0x00000000
	.4byte gUnk_080EC34C
	.4byte gUnk_080EC35C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAD0
	.4byte sub_0804DAD4
	.4byte gUnk_080EC374

gUnk_080EC3E8:: @ 080EC3E8
	.incbin "data_080D5360/gUnk_080EC3E8.bin"

gUnk_080EC438:: @ 080EC438
	.incbin "data_080D5360/gUnk_080EC438.bin"

gUnk_080EC498:: @ 080EC498
	.incbin "data_080D5360/gUnk_080EC498.bin"

gUnk_080EC4A8:: @ 080EC4A8
	.4byte gUnk_080EC3E8
	.4byte 0x00000000
	.4byte gUnk_080EC438
	.4byte gUnk_080EC498
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAF8
	.4byte nullsub_339

gUnk_080EC4C8:: @ 080EC4C8
	.incbin "data_080D5360/gUnk_080EC4C8.bin"

gUnk_080EC4E8:: @ 080EC4E8
	.incbin "data_080D5360/gUnk_080EC4E8.bin"

gUnk_080EC568:: @ 080EC568
	.incbin "data_080D5360/gUnk_080EC568.bin"

gUnk_080EC578:: @ 080EC578
	.incbin "data_080D5360/gUnk_080EC578.bin"

gUnk_080EC590:: @ 080EC590
	.incbin "data_080D5360/gUnk_080EC590.bin"

gUnk_080EC600:: @ 080EC600
	.4byte gUnk_080EC4C8
	.4byte 0x00000000
	.4byte gUnk_080EC568
	.4byte gUnk_080EC578
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB00
	.4byte sub_0804DB04
	.4byte gUnk_080EC590

gUnk_080EC624:: @ 080EC624
	.incbin "data_080D5360/gUnk_080EC624.bin"

gUnk_080EC6F4:: @ 080EC6F4
	.incbin "data_080D5360/gUnk_080EC6F4.bin"

gUnk_080EC704:: @ 080EC704
	.incbin "data_080D5360/gUnk_080EC704.bin"

gUnk_080EC72C:: @ 080EC72C
	.incbin "data_080D5360/gUnk_080EC72C.bin"

gUnk_080EC77C:: @ 080EC77C
	.4byte gUnk_080EC624
	.4byte 0x00000000
	.4byte gUnk_080EC6F4
	.4byte gUnk_080EC704
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB28
	.4byte nullsub_340
	.4byte gUnk_080EC72C

gUnk_080EC7A0:: @ 080EC7A0
	.incbin "data_080D5360/gUnk_080EC7A0.bin"

gUnk_080EC7C0:: @ 080EC7C0
	.incbin "data_080D5360/gUnk_080EC7C0.bin"

gUnk_080EC7D0:: @ 080EC7D0
	.incbin "data_080D5360/gUnk_080EC7D0.bin"

gUnk_080EC7E0:: @ 080EC7E0
	.4byte gUnk_080EC7A0
	.4byte 0x00000000
	.4byte gUnk_080EC7C0
	.4byte gUnk_080EC7D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB30
	.4byte nullsub_341

gUnk_080EC800:: @ 080EC800
	.incbin "data_080D5360/gUnk_080EC800.bin"

gUnk_080EC820:: @ 080EC820
	.incbin "data_080D5360/gUnk_080EC820.bin"

gUnk_080EC8A0:: @ 080EC8A0
	.incbin "data_080D5360/gUnk_080EC8A0.bin"

gUnk_080EC8B0:: @ 080EC8B0
	.incbin "data_080D5360/gUnk_080EC8B0.bin"

gUnk_080EC8C8:: @ 080EC8C8
	.incbin "data_080D5360/gUnk_080EC8C8.bin"

gUnk_080EC938:: @ 080EC938
	.4byte gUnk_080EC800
	.4byte 0x00000000
	.4byte gUnk_080EC8A0
	.4byte gUnk_080EC8B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB38
	.4byte sub_0804DB3C
	.4byte gUnk_080EC8C8

gUnk_080EC95C:: @ 080EC95C
	.incbin "data_080D5360/gUnk_080EC95C.bin"

gUnk_080EC9CC:: @ 080EC9CC
	.incbin "data_080D5360/gUnk_080EC9CC.bin"

gUnk_080EC9DC:: @ 080EC9DC
	.incbin "data_080D5360/gUnk_080EC9DC.bin"

gUnk_080EC9EC:: @ 080EC9EC
	.incbin "data_080D5360/gUnk_080EC9EC.bin"

gUnk_080ECA1C:: @ 080ECA1C
	.4byte gUnk_080EC95C
	.4byte 0x00000000
	.4byte gUnk_080EC9CC
	.4byte gUnk_080EC9DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB60
	.4byte nullsub_342
	.4byte gUnk_080EC9EC

gUnk_080ECA40:: @ 080ECA40
	.incbin "data_080D5360/gUnk_080ECA40.bin"

gUnk_080ECA60:: @ 080ECA60
	.incbin "data_080D5360/gUnk_080ECA60.bin"

gUnk_080ECAE0:: @ 080ECAE0
	.incbin "data_080D5360/gUnk_080ECAE0.bin"

gUnk_080ECAF0:: @ 080ECAF0
	.incbin "data_080D5360/gUnk_080ECAF0.bin"

gUnk_080ECB00:: @ 080ECB00
	.incbin "data_080D5360/gUnk_080ECB00.bin"

gUnk_080ECB50:: @ 080ECB50
	.4byte gUnk_080ECA40
	.4byte 0x00000000
	.4byte gUnk_080ECAE0
	.4byte gUnk_080ECAF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB68
	.4byte sub_0804DB6C
	.4byte gUnk_080ECB00

gUnk_080ECB74:: @ 080ECB74
	.incbin "data_080D5360/gUnk_080ECB74.bin"

gUnk_080ECC24:: @ 080ECC24
	.incbin "data_080D5360/gUnk_080ECC24.bin"

gUnk_080ECC34:: @ 080ECC34
	.incbin "data_080D5360/gUnk_080ECC34.bin"

gUnk_080ECC44:: @ 080ECC44
	.4byte gUnk_080ECB74
	.4byte 0x00000000
	.4byte gUnk_080ECC24
	.4byte gUnk_080ECC34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB90
	.4byte nullsub_343

gUnk_080ECC64:: @ 080ECC64
	.incbin "data_080D5360/gUnk_080ECC64.bin"

gUnk_080ECCF4:: @ 080ECCF4
	.incbin "data_080D5360/gUnk_080ECCF4.bin"

gUnk_080ECD04:: @ 080ECD04
	.incbin "data_080D5360/gUnk_080ECD04.bin"

gUnk_080ECD14:: @ 080ECD14
	.4byte gUnk_080ECC64
	.4byte 0x00000000
	.4byte gUnk_080ECCF4
	.4byte gUnk_080ECD04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB98
	.4byte nullsub_344

gUnk_080ECD34:: @ 080ECD34
	.incbin "data_080D5360/gUnk_080ECD34.bin"

gUnk_080ECDF4:: @ 080ECDF4
	.incbin "data_080D5360/gUnk_080ECDF4.bin"

gUnk_080ECE04:: @ 080ECE04
	.incbin "data_080D5360/gUnk_080ECE04.bin"

gUnk_080ECE14:: @ 080ECE14
	.4byte gUnk_080ECD34
	.4byte 0x00000000
	.4byte gUnk_080ECDF4
	.4byte gUnk_080ECE04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBA0
	.4byte nullsub_345

gUnk_080ECE34:: @ 080ECE34
	.incbin "data_080D5360/gUnk_080ECE34.bin"

gUnk_080ECE44:: @ 080ECE44
	.incbin "data_080D5360/gUnk_080ECE44.bin"

gUnk_080ECE54:: @ 080ECE54
	.incbin "data_080D5360/gUnk_080ECE54.bin"

gUnk_080ECE64:: @ 080ECE64
	.4byte gUnk_080ECE34
	.4byte 0x00000000
	.4byte gUnk_080ECE44
	.4byte gUnk_080ECE54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBA8
	.4byte nullsub_346

gUnk_080ECE84:: @ 080ECE84
	.incbin "data_080D5360/gUnk_080ECE84.bin"

gUnk_080ECEC4:: @ 080ECEC4
	.incbin "data_080D5360/gUnk_080ECEC4.bin"

gUnk_080ECED4:: @ 080ECED4
	.incbin "data_080D5360/gUnk_080ECED4.bin"

gUnk_080ECEE4:: @ 080ECEE4
	.incbin "data_080D5360/gUnk_080ECEE4.bin"

gUnk_080ECF04:: @ 080ECF04
	.incbin "data_080D5360/gUnk_080ECF04.bin"

gUnk_080ECF14:: @ 080ECF14
	.4byte gUnk_080ECE84
	.4byte 0x00000000
	.4byte gUnk_080ECEC4
	.4byte gUnk_080ECED4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBB0
	.4byte nullsub_347
	.4byte gUnk_080ECEE4
	.4byte gUnk_080ECF04

gUnk_080ECF3C:: @ 080ECF3C
	.incbin "data_080D5360/gUnk_080ECF3C.bin"

gUnk_080ECF4C:: @ 080ECF4C
	.incbin "data_080D5360/gUnk_080ECF4C.bin"

gUnk_080ECF5C:: @ 080ECF5C
	.incbin "data_080D5360/gUnk_080ECF5C.bin"

gUnk_080ECF6C:: @ 080ECF6C
	.4byte gUnk_080ECF3C
	.4byte 0x00000000
	.4byte gUnk_080ECF4C
	.4byte gUnk_080ECF5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBB8
	.4byte nullsub_348

gUnk_080ECF8C:: @ 080ECF8C
	.incbin "data_080D5360/gUnk_080ECF8C.bin"

gUnk_080ECFAC:: @ 080ECFAC
	.incbin "data_080D5360/gUnk_080ECFAC.bin"

gUnk_080ECFBC:: @ 080ECFBC
	.incbin "data_080D5360/gUnk_080ECFBC.bin"

gUnk_080ECFCC:: @ 080ECFCC
	.incbin "data_080D5360/gUnk_080ECFCC.bin"

gUnk_080ED00C:: @ 080ED00C
	.4byte gUnk_080ECF8C
	.4byte 0x00000000
	.4byte gUnk_080ECFAC
	.4byte gUnk_080ECFBC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBC0
	.4byte sub_0804DBDC

gUnk_080ED02C:: @ 080ED02C
	.incbin "data_080D5360/gUnk_080ED02C.bin"

gUnk_080ED0AC:: @ 080ED0AC
	.incbin "data_080D5360/gUnk_080ED0AC.bin"

gUnk_080ED0DC:: @ 080ED0DC
	.incbin "data_080D5360/gUnk_080ED0DC.bin"

gUnk_080ED0FC:: @ 080ED0FC
	.4byte gUnk_080ED02C
	.4byte 0x00000000
	.4byte gUnk_080ED0AC
	.4byte gUnk_080ED0DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC18
	.4byte nullsub_349

gUnk_080ED11C:: @ 080ED11C
	.incbin "data_080D5360/gUnk_080ED11C.bin"

gUnk_080ED12C:: @ 080ED12C
	.incbin "data_080D5360/gUnk_080ED12C.bin"

gUnk_080ED15C:: @ 080ED15C
	.incbin "data_080D5360/gUnk_080ED15C.bin"

gUnk_080ED174:: @ 080ED174
	.4byte gUnk_080ED11C
	.4byte 0x00000000
	.4byte gUnk_080ED12C
	.4byte gUnk_080ED15C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC20
	.4byte nullsub_350

gUnk_080ED194:: @ 080ED194
	.incbin "data_080D5360/gUnk_080ED194.bin"

gUnk_080ED1E4:: @ 080ED1E4
	.incbin "data_080D5360/gUnk_080ED1E4.bin"
	.4byte script_0800A6A4
	.incbin "data_080D5360/gUnk_080ED1E4_1.bin"

gUnk_080ED234:: @ 080ED234
	.incbin "data_080D5360/gUnk_080ED234.bin"

gUnk_080ED254:: @ 080ED254
	.incbin "data_080D5360/gUnk_080ED254.bin"

gUnk_080ED264:: @ 080ED264
	.incbin "data_080D5360/gUnk_080ED264.bin"

gUnk_080ED27C:: @ 080ED27C
	.incbin "data_080D5360/gUnk_080ED27C.bin"

gUnk_080ED2AC:: @ 080ED2AC
	.4byte gUnk_080ED194
	.4byte gUnk_080ED234
	.4byte gUnk_080ED254
	.4byte gUnk_080ED264
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC28
	.4byte sub_0804DC4C
	.4byte gUnk_080ED27C

gUnk_080ED2D0:: @ 080ED2D0
	.incbin "data_080D5360/gUnk_080ED2D0.bin"

gUnk_080ED2F0:: @ 080ED2F0
	.incbin "data_080D5360/gUnk_080ED2F0.bin"

gUnk_080ED300:: @ 080ED300
	.incbin "data_080D5360/gUnk_080ED300.bin"

gUnk_080ED318:: @ 080ED318
	.4byte gUnk_080ED2D0
	.4byte 0x00000000
	.4byte gUnk_080ED2F0
	.4byte gUnk_080ED300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC70
	.4byte nullsub_351

gUnk_080ED338:: @ 080ED338
	.incbin "data_080D5360/gUnk_080ED338.bin"

gUnk_080ED348:: @ 080ED348
	.incbin "data_080D5360/gUnk_080ED348.bin"

gUnk_080ED378:: @ 080ED378
	.incbin "data_080D5360/gUnk_080ED378.bin"

gUnk_080ED388:: @ 080ED388
	.4byte gUnk_080ED338
	.4byte 0x00000000
	.4byte gUnk_080ED348
	.4byte gUnk_080ED378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC78
	.4byte nullsub_352

gUnk_080ED3A8:: @ 080ED3A8
	.incbin "data_080D5360/gUnk_080ED3A8.bin"

gUnk_080ED3B8:: @ 080ED3B8
	.incbin "data_080D5360/gUnk_080ED3B8.bin"

gUnk_080ED3C8:: @ 080ED3C8
	.incbin "data_080D5360/gUnk_080ED3C8.bin"

gUnk_080ED3D8:: @ 080ED3D8
	.4byte gUnk_080ED3A8
	.4byte 0x00000000
	.4byte gUnk_080ED3B8
	.4byte gUnk_080ED3C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC80
	.4byte nullsub_353

gUnk_080ED3F8:: @ 080ED3F8
	.incbin "data_080D5360/gUnk_080ED3F8.bin"

gUnk_080ED468:: @ 080ED468
	.incbin "data_080D5360/gUnk_080ED468.bin"

gUnk_080ED488:: @ 080ED488
	.incbin "data_080D5360/gUnk_080ED488.bin"

gUnk_080ED4B8:: @ 080ED4B8
	.incbin "data_080D5360/gUnk_080ED4B8.bin"

gUnk_080ED4C8:: @ 080ED4C8
	.4byte gUnk_080ED3F8
	.4byte gUnk_080ED468
	.4byte gUnk_080ED488
	.4byte gUnk_080ED4B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC88
	.4byte nullsub_354

gUnk_080ED4E8:: @ 080ED4E8
	.incbin "data_080D5360/gUnk_080ED4E8.bin"

gUnk_080ED538:: @ 080ED538
	.incbin "data_080D5360/gUnk_080ED538.bin"

gUnk_080ED568:: @ 080ED568
	.incbin "data_080D5360/gUnk_080ED568.bin"

gUnk_080ED578:: @ 080ED578
	.incbin "data_080D5360/gUnk_080ED578.bin"

gUnk_080ED588:: @ 080ED588
	.4byte gUnk_080ED4E8
	.4byte gUnk_080ED538
	.4byte gUnk_080ED568
	.4byte gUnk_080ED578
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC90
	.4byte nullsub_355

gUnk_080ED5A8:: @ 080ED5A8
	.incbin "data_080D5360/gUnk_080ED5A8.bin"

gUnk_080ED5B8:: @ 080ED5B8
	.incbin "data_080D5360/gUnk_080ED5B8.bin"

gUnk_080ED5D8:: @ 080ED5D8
	.incbin "data_080D5360/gUnk_080ED5D8.bin"

gUnk_080ED638:: @ 080ED638
	.incbin "data_080D5360/gUnk_080ED638.bin"

gUnk_080ED648:: @ 080ED648
	.4byte gUnk_080ED5A8
	.4byte gUnk_080ED5B8
	.4byte gUnk_080ED5D8
	.4byte gUnk_080ED638
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC98
	.4byte nullsub_356

gUnk_080ED668:: @ 080ED668
	.incbin "data_080D5360/gUnk_080ED668.bin"

gUnk_080ED6E8:: @ 080ED6E8
	.incbin "data_080D5360/gUnk_080ED6E8.bin"

gUnk_080ED6F8:: @ 080ED6F8
	.incbin "data_080D5360/gUnk_080ED6F8.bin"

gUnk_080ED708:: @ 080ED708
	.incbin "data_080D5360/gUnk_080ED708.bin"

gUnk_080ED720:: @ 080ED720
	.4byte gUnk_080ED668
	.4byte 0x00000000
	.4byte gUnk_080ED6E8
	.4byte gUnk_080ED6F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCA0
	.4byte nullsub_357
	.4byte gUnk_080ED708

gUnk_080ED744:: @ 080ED744
	.incbin "data_080D5360/gUnk_080ED744.bin"

gUnk_080ED7B4:: @ 080ED7B4
	.incbin "data_080D5360/gUnk_080ED7B4.bin"

gUnk_080ED7D4:: @ 080ED7D4
	.incbin "data_080D5360/gUnk_080ED7D4.bin"

gUnk_080ED7EC:: @ 080ED7EC
	.incbin "data_080D5360/gUnk_080ED7EC.bin"

gUnk_080ED8CC:: @ 080ED8CC
	.4byte gUnk_080ED744
	.4byte 0x00000000
	.4byte gUnk_080ED7B4
	.4byte gUnk_080ED7D4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCA8
	.4byte nullsub_358
	.4byte gUnk_080ED7EC

gUnk_080ED8F0:: @ 080ED8F0
	.incbin "data_080D5360/gUnk_080ED8F0.bin"

gUnk_080ED900:: @ 080ED900
	.incbin "data_080D5360/gUnk_080ED900.bin"

gUnk_080ED930:: @ 080ED930
	.incbin "data_080D5360/gUnk_080ED930.bin"

gUnk_080ED940:: @ 080ED940
	.4byte gUnk_080ED8F0
	.4byte 0x00000000
	.4byte gUnk_080ED900
	.4byte gUnk_080ED930
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCB0
	.4byte nullsub_359

gUnk_080ED960:: @ 080ED960
	.incbin "data_080D5360/gUnk_080ED960.bin"

gUnk_080ED970:: @ 080ED970
	.incbin "data_080D5360/gUnk_080ED970.bin"

gUnk_080ED9E0:: @ 080ED9E0
	.incbin "data_080D5360/gUnk_080ED9E0.bin"

gUnk_080ED9F0:: @ 080ED9F0
	.4byte gUnk_080ED960
	.4byte 0x00000000
	.4byte gUnk_080ED970
	.4byte gUnk_080ED9E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCB8
	.4byte nullsub_360

gUnk_080EDA10:: @ 080EDA10
	.incbin "data_080D5360/gUnk_080EDA10.bin"

gUnk_080EDA20:: @ 080EDA20
	.incbin "data_080D5360/gUnk_080EDA20.bin"

gUnk_080EDA60:: @ 080EDA60
	.incbin "data_080D5360/gUnk_080EDA60.bin"

gUnk_080EDA70:: @ 080EDA70
	.4byte gUnk_080EDA10
	.4byte 0x00000000
	.4byte gUnk_080EDA20
	.4byte gUnk_080EDA60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCC0
	.4byte nullsub_361

gUnk_080EDA90:: @ 080EDA90
	.incbin "data_080D5360/gUnk_080EDA90.bin"

gUnk_080EDB00:: @ 080EDB00
	.incbin "data_080D5360/gUnk_080EDB00.bin"

gUnk_080EDB10:: @ 080EDB10
	.incbin "data_080D5360/gUnk_080EDB10.bin"

gUnk_080EDB20:: @ 080EDB20
	.4byte gUnk_080EDA90
	.4byte 0x00000000
	.4byte gUnk_080EDB00
	.4byte gUnk_080EDB10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCC8
	.4byte nullsub_362

gUnk_080EDB40:: @ 080EDB40
	.incbin "data_080D5360/gUnk_080EDB40.bin"

gUnk_080EDB50:: @ 080EDB50
	.incbin "data_080D5360/gUnk_080EDB50.bin"

gUnk_080EDB90:: @ 080EDB90
	.incbin "data_080D5360/gUnk_080EDB90.bin"

gUnk_080EDBA8:: @ 080EDBA8
	.4byte gUnk_080EDB40
	.4byte 0x00000000
	.4byte gUnk_080EDB50
	.4byte gUnk_080EDB90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCD0
	.4byte nullsub_363

gUnk_080EDBC8:: @ 080EDBC8
	.incbin "data_080D5360/gUnk_080EDBC8.bin"

gUnk_080EDBD8:: @ 080EDBD8
	.incbin "data_080D5360/gUnk_080EDBD8.bin"

gUnk_080EDC28:: @ 080EDC28
	.incbin "data_080D5360/gUnk_080EDC28.bin"

gUnk_080EDC40:: @ 080EDC40
	.4byte gUnk_080EDBC8
	.4byte 0x00000000
	.4byte gUnk_080EDBD8
	.4byte gUnk_080EDC28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCD8
	.4byte nullsub_364

gUnk_080EDC60:: @ 080EDC60
	.incbin "data_080D5360/gUnk_080EDC60.bin"

gUnk_080EDC70:: @ 080EDC70
	.incbin "data_080D5360/gUnk_080EDC70.bin"

gUnk_080EDCA0:: @ 080EDCA0
	.incbin "data_080D5360/gUnk_080EDCA0.bin"

gUnk_080EDCB8:: @ 080EDCB8
	.4byte gUnk_080EDC60
	.4byte 0x00000000
	.4byte gUnk_080EDC70
	.4byte gUnk_080EDCA0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCE0
	.4byte nullsub_365

gUnk_080EDCD8:: @ 080EDCD8
	.incbin "data_080D5360/gUnk_080EDCD8.bin"

gUnk_080EDCE8:: @ 080EDCE8
	.incbin "data_080D5360/gUnk_080EDCE8.bin"

gUnk_080EDD08:: @ 080EDD08
	.incbin "data_080D5360/gUnk_080EDD08.bin"

gUnk_080EDD58:: @ 080EDD58
	.incbin "data_080D5360/gUnk_080EDD58.bin"

gUnk_080EDD68:: @ 080EDD68
	.4byte gUnk_080EDCD8
	.4byte gUnk_080EDCE8
	.4byte gUnk_080EDD08
	.4byte gUnk_080EDD58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCE8
	.4byte nullsub_366

gUnk_080EDD88:: @ 080EDD88
	.incbin "data_080D5360/gUnk_080EDD88.bin"

gUnk_080EDDC8:: @ 080EDDC8
	.incbin "data_080D5360/gUnk_080EDDC8.bin"

gUnk_080EDE08:: @ 080EDE08
	.incbin "data_080D5360/gUnk_080EDE08.bin"

gUnk_080EDE48:: @ 080EDE48
	.incbin "data_080D5360/gUnk_080EDE48.bin"

gUnk_080EDE60:: @ 080EDE60
	.4byte gUnk_080EDD88
	.4byte gUnk_080EDDC8
	.4byte gUnk_080EDE08
	.4byte gUnk_080EDE48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCF0
	.4byte nullsub_367

gUnk_080EDE80:: @ 080EDE80
	.incbin "data_080D5360/gUnk_080EDE80.bin"

gUnk_080EDEB0:: @ 080EDEB0
	.incbin "data_080D5360/gUnk_080EDEB0.bin"

gUnk_080EDEF0:: @ 080EDEF0
	.incbin "data_080D5360/gUnk_080EDEF0.bin"

gUnk_080EDF20:: @ 080EDF20
	.incbin "data_080D5360/gUnk_080EDF20.bin"

gUnk_080EDF40:: @ 080EDF40
	.4byte gUnk_080EDE80
	.4byte gUnk_080EDEB0
	.4byte gUnk_080EDEF0
	.4byte gUnk_080EDF20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCF8
	.4byte nullsub_368

gUnk_080EDF60:: @ 080EDF60
	.incbin "data_080D5360/gUnk_080EDF60.bin"

gUnk_080EDFB0:: @ 080EDFB0
	.incbin "data_080D5360/gUnk_080EDFB0.bin"

gUnk_080EDFD0:: @ 080EDFD0
	.incbin "data_080D5360/gUnk_080EDFD0.bin"

gUnk_080EE060:: @ 080EE060
	.incbin "data_080D5360/gUnk_080EE060.bin"

gUnk_080EE078:: @ 080EE078
	.4byte gUnk_080EDF60
	.4byte gUnk_080EDFB0
	.4byte gUnk_080EDFD0
	.4byte gUnk_080EE060
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD00
	.4byte nullsub_369

gUnk_080EE098:: @ 080EE098
	.incbin "data_080D5360/gUnk_080EE098.bin"

gUnk_080EE138:: @ 080EE138
	.incbin "data_080D5360/gUnk_080EE138.bin"

gUnk_080EE148:: @ 080EE148
	.incbin "data_080D5360/gUnk_080EE148.bin"

gUnk_080EE158:: @ 080EE158
	.4byte gUnk_080EE098
	.4byte 0x00000000
	.4byte gUnk_080EE138
	.4byte gUnk_080EE148
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD08
	.4byte nullsub_370

gUnk_080EE178:: @ 080EE178
	.incbin "data_080D5360/gUnk_080EE178.bin"

gUnk_080EE228:: @ 080EE228
	.incbin "data_080D5360/gUnk_080EE228.bin"

gUnk_080EE238:: @ 080EE238
	.incbin "data_080D5360/gUnk_080EE238.bin"

gUnk_080EE248:: @ 080EE248
	.incbin "data_080D5360/gUnk_080EE248.bin"

gUnk_080EE260:: @ 080EE260
	.4byte gUnk_080EE178
	.4byte 0x00000000
	.4byte gUnk_080EE228
	.4byte gUnk_080EE238
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD10
	.4byte nullsub_371
	.4byte gUnk_080EE248

gUnk_080EE284:: @ 080EE284
	.incbin "data_080D5360/gUnk_080EE284.bin"

gUnk_080EE2A4:: @ 080EE2A4
	.incbin "data_080D5360/gUnk_080EE2A4.bin"

gUnk_080EE2D4:: @ 080EE2D4
	.incbin "data_080D5360/gUnk_080EE2D4.bin"

gUnk_080EE304:: @ 080EE304
	.incbin "data_080D5360/gUnk_080EE304.bin"

gUnk_080EE314:: @ 080EE314
	.incbin "data_080D5360/gUnk_080EE314.bin"

gUnk_080EE354:: @ 080EE354
	.4byte gUnk_080EE284
	.4byte gUnk_080EE2A4
	.4byte gUnk_080EE2D4
	.4byte gUnk_080EE304
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD18
	.4byte sub_0804DD34

gUnk_080EE374:: @ 080EE374
	.incbin "data_080D5360/gUnk_080EE374.bin"

gUnk_080EE384:: @ 080EE384
	.incbin "data_080D5360/gUnk_080EE384.bin"

gUnk_080EE3A4:: @ 080EE3A4
	.incbin "data_080D5360/gUnk_080EE3A4.bin"

gUnk_080EE3F4:: @ 080EE3F4
	.incbin "data_080D5360/gUnk_080EE3F4.bin"

gUnk_080EE404:: @ 080EE404
	.4byte gUnk_080EE374
	.4byte gUnk_080EE384
	.4byte gUnk_080EE3A4
	.4byte gUnk_080EE3F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD70
	.4byte nullsub_372

gUnk_080EE424:: @ 080EE424
	.incbin "data_080D5360/gUnk_080EE424.bin"

gUnk_080EE4A4:: @ 080EE4A4
	.incbin "data_080D5360/gUnk_080EE4A4.bin"

gUnk_080EE4F4:: @ 080EE4F4
	.incbin "data_080D5360/gUnk_080EE4F4.bin"

gUnk_080EE5C4:: @ 080EE5C4
	.incbin "data_080D5360/gUnk_080EE5C4.bin"

gUnk_080EE5DC:: @ 080EE5DC
	.incbin "data_080D5360/gUnk_080EE5DC.bin"

gUnk_080EE61C:: @ 080EE61C
	.4byte gUnk_080EE424
	.4byte gUnk_080EE4A4
	.4byte gUnk_080EE4F4
	.4byte gUnk_080EE5C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD78
	.4byte sub_0804DD94

gUnk_080EE63C:: @ 080EE63C
	.incbin "data_080D5360/gUnk_080EE63C.bin"

gUnk_080EE64C:: @ 080EE64C
	.incbin "data_080D5360/gUnk_080EE64C.bin"

gUnk_080EE65C:: @ 080EE65C
	.incbin "data_080D5360/gUnk_080EE65C.bin"

gUnk_080EE66C:: @ 080EE66C
	.4byte gUnk_080EE63C
	.4byte 0x00000000
	.4byte gUnk_080EE64C
	.4byte gUnk_080EE65C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DDD4
	.4byte nullsub_373

gUnk_080EE68C:: @ 080EE68C
	.incbin "data_080D5360/gUnk_080EE68C.bin"
	.4byte script_0800E350
	.incbin "data_080D5360/gUnk_080EE68C_1.bin"

gUnk_080EE71C:: @ 080EE71C
	.incbin "data_080D5360/gUnk_080EE71C.bin"
	.4byte script_0800E408
	.incbin "data_080D5360/gUnk_080EE71C_1.bin"
	.4byte script_0800E434
	.incbin "data_080D5360/gUnk_080EE71C_2.bin"
	.4byte script_0800E46C
	.incbin "data_080D5360/gUnk_080EE71C_3.bin"

gUnk_080EE75C:: @ 080EE75C
	.incbin "data_080D5360/gUnk_080EE75C.bin"

gUnk_080EE76C:: @ 080EE76C
	.incbin "data_080D5360/gUnk_080EE76C.bin"

gUnk_080EE78C:: @ 080EE78C
	.4byte gUnk_080EE68C
	.4byte 0x00000000
	.4byte gUnk_080EE75C
	.4byte gUnk_080EE76C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DDDC
	.4byte sub_0804DDE0

gUnk_080EE7AC:: @ 080EE7AC
	.incbin "data_080D5360/gUnk_080EE7AC.bin"

gUnk_080EE7BC:: @ 080EE7BC
	.incbin "data_080D5360/gUnk_080EE7BC.bin"

gUnk_080EE7DC:: @ 080EE7DC
	.incbin "data_080D5360/gUnk_080EE7DC.bin"

gUnk_080EE7EC:: @ 080EE7EC
	.4byte gUnk_080EE7AC
	.4byte 0x00000000
	.4byte gUnk_080EE7BC
	.4byte gUnk_080EE7DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DDF8
	.4byte nullsub_374

gUnk_080EE80C:: @ 080EE80C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080EE80C_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080EE80C_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080EE80C_2_DEMO_JP.bin"
.else
	.incbin "data_080D5360/gUnk_080EE80C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif
	.4byte script_08010AE4
	.incbin "data_080D5360/gUnk_080EE80C_4.bin"

gUnk_080EE88C:: @ 080EE88C
	.incbin "data_080D5360/gUnk_080EE88C.bin"
	.4byte script_0800F090
	.incbin "data_080D5360/gUnk_080EE88C_1.bin"

gUnk_080EE8AC:: @ 080EE8AC
	.4byte 0x00534F07
	.4byte 0x00000000
	.4byte 0x03280158
	.4byte script_0800F184
	.4byte 0x06074F07
	.4byte 0x00000000
	.4byte 0x03280148
	.4byte script_0800F39C
	.4byte 0x07074F07
	.4byte 0x00000000
	.4byte 0x03280134
	.4byte script_0800F430
	.4byte 0x08074F07
	.4byte 0x00000000
	.4byte 0x03280120
	.4byte script_0800F4C4
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

gUnk_080EE8FC:: @ 080EE8FC
	.incbin "data_080D5360/gUnk_080EE8FC.bin"

gUnk_080EE91C:: @ 080EE91C
	.incbin "data_080D5360/gUnk_080EE91C.bin"

gUnk_080EE93C:: @ 080EE93C
	.incbin "data_080D5360/gUnk_080EE93C.bin"

gUnk_080EE95C:: @ 080EE95C
	.incbin "data_080D5360/gUnk_080EE95C.bin"

gUnk_080EE97C:: @ 080EE97C
	.incbin "data_080D5360/gUnk_080EE97C.bin"

gUnk_080EE99C:: @ 080EE99C
	.incbin "data_080D5360/gUnk_080EE99C.bin"

gUnk_080EE9BC:: @ 080EE9BC
	.incbin "data_080D5360/gUnk_080EE9BC.bin"

gUnk_080EE9DC:: @ 080EE9DC
	.incbin "data_080D5360/gUnk_080EE9DC.bin"

gUnk_080EE9FC:: @ 080EE9FC
	.incbin "data_080D5360/gUnk_080EE9FC.bin"

gUnk_080EEA1C:: @ 080EEA1C
	.incbin "data_080D5360/gUnk_080EEA1C.bin"

gUnk_080EEA3C:: @ 080EEA3C
	.incbin "data_080D5360/gUnk_080EEA3C.bin"

gUnk_080EEA5C:: @ 080EEA5C
	.incbin "data_080D5360/gUnk_080EEA5C.bin"

gUnk_080EEA7C:: @ 080EEA7C
	.incbin "data_080D5360/gUnk_080EEA7C.bin"

gUnk_080EEA9C:: @ 080EEA9C
	.incbin "data_080D5360/gUnk_080EEA9C.bin"

gUnk_080EEABC:: @ 080EEABC
	.incbin "data_080D5360/gUnk_080EEABC.bin"

gUnk_080EEADC:: @ 080EEADC
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080EEADC_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080EEADC_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080EEADC_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080EEADC_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080EEB6C:: @ 080EEB6C
	.incbin "data_080D5360/gUnk_080EEB6C.bin"

gUnk_080EEB8C:: @ 080EEB8C
	.incbin "data_080D5360/gUnk_080EEB8C.bin"

gUnk_080EEBAC:: @ 080EEBAC
	.incbin "data_080D5360/gUnk_080EEBAC.bin"
	.4byte script_0800B00C
	.incbin "data_080D5360/gUnk_080EEBAC_1.bin"

gUnk_080EEBCC:: @ 080EEBCC
	.incbin "data_080D5360/gUnk_080EEBCC.bin"
	.4byte script_0800F73C
	.incbin "data_080D5360/gUnk_080EEBCC_1.bin"
	.4byte script_0800FB44
	.incbin "data_080D5360/gUnk_080EEBCC_2.bin"
	.4byte script_0800FD0C
	.incbin "data_080D5360/gUnk_080EEBCC_3.bin"
	.4byte script_0800B00C
	.incbin "data_080D5360/gUnk_080EEBCC_4.bin"

gUnk_080EEC4C:: @ 080EEC4C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080EEC4C_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080EEC4C_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080EEC4C_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080EEC4C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080EECBC:: @ 080EECBC
	.incbin "data_080D5360/gUnk_080EECBC.bin"

gUnk_080EECDC:: @ 080EECDC
.ifdef JP
	.incbin "data_080D5360/gUnk_080EECDC_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080EECDC_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080EECDC_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080EECDC_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080EED2C:: @ 080EED2C
	.incbin "data_080D5360/gUnk_080EED2C.bin"

gUnk_080EED7A:: @ 080EED7A
	.incbin "data_080D5360/gUnk_080EED7A.bin"

gUnk_080EED8C:: @ 080EED8C
	.incbin "data_080D5360/gUnk_080EED8C.bin"

gUnk_080EED98:: @ 080EED98
	.incbin "data_080D5360/gUnk_080EED98.bin"

gUnk_080EEE18:: @ 080EEE18
	.incbin "data_080D5360/gUnk_080EEE18.bin"

gUnk_080EEE2C:: @ 080EEE2C
	.incbin "data_080D5360/gUnk_080EEE2C.bin"

gUnk_080EEE40:: @ 080EEE40
	.incbin "data_080D5360/gUnk_080EEE40.bin"

gUnk_080EEE54:: @ 080EEE54
	.incbin "data_080D5360/gUnk_080EEE54.bin"

gUnk_080EEE68:: @ 080EEE68
	.incbin "data_080D5360/gUnk_080EEE68.bin"

gUnk_080EEE7C:: @ 080EEE7C
	.incbin "data_080D5360/gUnk_080EEE7C.bin"

gUnk_080EEE90:: @ 080EEE90
	.incbin "data_080D5360/gUnk_080EEE90.bin"

gUnk_080EEEA4:: @ 080EEEA4
	.incbin "data_080D5360/gUnk_080EEEA4.bin"

gUnk_080EEEB8:: @ 080EEEB8
	.incbin "data_080D5360/gUnk_080EEEB8.bin"

gUnk_080EEECC:: @ 080EEECC
	.incbin "data_080D5360/gUnk_080EEECC.bin"

gUnk_080EEEE0:: @ 080EEEE0
	.incbin "data_080D5360/gUnk_080EEEE0.bin"

gUnk_080EEEF4:: @ 080EEEF4
	.incbin "data_080D5360/gUnk_080EEEF4.bin"

gUnk_080EEF08:: @ 080EEF08
	.incbin "data_080D5360/gUnk_080EEF08.bin"

gUnk_080EEF1C:: @ 080EEF1C
	.incbin "data_080D5360/gUnk_080EEF1C.bin"

gUnk_080EEF30:: @ 080EEF30
	.incbin "data_080D5360/gUnk_080EEF30.bin"

gUnk_080EEF44:: @ 080EEF44
	.incbin "data_080D5360/gUnk_080EEF44.bin"

gUnk_080EEF58:: @ 080EEF58
	.incbin "data_080D5360/gUnk_080EEF58.bin"

gUnk_080EEFAC:: @ 080EEFAC
	.incbin "data_080D5360/gUnk_080EEFAC.bin"

gUnk_080EEFC0:: @ 080EEFC0
	.incbin "data_080D5360/gUnk_080EEFC0.bin"

gUnk_080EEFD4:: @ 080EEFD4
	.incbin "data_080D5360/gUnk_080EEFD4.bin"

gUnk_080EEFE8:: @ 080EEFE8
	.incbin "data_080D5360/gUnk_080EEFE8.bin"

gUnk_080EEFFC:: @ 080EEFFC
	.incbin "data_080D5360/gUnk_080EEFFC.bin"

gUnk_080EF010:: @ 080EF010
	.incbin "data_080D5360/gUnk_080EF010.bin"

gUnk_080EF024:: @ 080EF024
	.incbin "data_080D5360/gUnk_080EF024.bin"

gUnk_080EF038:: @ 080EF038
	.incbin "data_080D5360/gUnk_080EF038.bin"

gUnk_080EF04C:: @ 080EF04C
	.incbin "data_080D5360/gUnk_080EF04C.bin"

gUnk_080EF060:: @ 080EF060
	.incbin "data_080D5360/gUnk_080EF060.bin"

gUnk_080EF074:: @ 080EF074
	.incbin "data_080D5360/gUnk_080EF074.bin"

gUnk_080EF088:: @ 080EF088
	.incbin "data_080D5360/gUnk_080EF088.bin"

gUnk_080EF09C:: @ 080EF09C
	.incbin "data_080D5360/gUnk_080EF09C.bin"

gUnk_080EF0B0:: @ 080EF0B0
	.incbin "data_080D5360/gUnk_080EF0B0.bin"
	.4byte script_080100C8
	.incbin "data_080D5360/gUnk_080EF0B0_1.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080EF0B0_2.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080EF0B0_3.bin"
	.4byte script_080100C8
	.incbin "data_080D5360/gUnk_080EF0B0_4.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080EF0B0_5.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080EF0B0_6.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080EF0B0_7.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080EF0B0_8.bin"
	.4byte script_080100C8
	.incbin "data_080D5360/gUnk_080EF0B0_9.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080EF0B0_10.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080EF0B0_11.bin"
	.4byte script_0800E7F4
	.incbin "data_080D5360/gUnk_080EF0B0_12.bin"
	.4byte script_08010148
	.incbin "data_080D5360/gUnk_080EF0B0_13.bin"
	.4byte script_08010294
	.incbin "data_080D5360/gUnk_080EF0B0_14.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_15.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080EF0B0_16.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_17.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_18.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_19.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080EF0B0_20.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_21.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_22.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_23.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080EF0B0_24.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_25.bin"
	.4byte script_08010428
	.incbin "data_080D5360/gUnk_080EF0B0_26.bin"
	.4byte script_080100C8
	.incbin "data_080D5360/gUnk_080EF0B0_27.bin"
	.4byte script_08010454
	.incbin "data_080D5360/gUnk_080EF0B0_28.bin"
	.4byte script_080104A0
	.incbin "data_080D5360/gUnk_080EF0B0_29.bin"
	.4byte script_0801030C
	.incbin "data_080D5360/gUnk_080EF0B0_30.bin"
	.4byte script_0801030C
	.incbin "data_080D5360/gUnk_080EF0B0_31.bin"
	.4byte script_0801030C
	.incbin "data_080D5360/gUnk_080EF0B0_32.bin"
	.4byte script_0801030C
	.incbin "data_080D5360/gUnk_080EF0B0_33.bin"
	.4byte script_0801030C
	.incbin "data_080D5360/gUnk_080EF0B0_34.bin"
	.4byte script_0801030C
	.incbin "data_080D5360/gUnk_080EF0B0_35.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080EF0B0_36.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080EF0B0_37.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_38.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_39.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080EF0B0_40.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080EF0B0_41.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_42.bin"
	.4byte script_080102E0
	.incbin "data_080D5360/gUnk_080EF0B0_43.bin"
	.4byte script_0800FF18
	.incbin "data_080D5360/gUnk_080EF0B0_44.bin"
	.4byte script_0800FF74
	.incbin "data_080D5360/gUnk_080EF0B0_45.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_46.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_47.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_48.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_49.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_50.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_51.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_52.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_53.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_54.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_55.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_56.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_57.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_58.bin"
	.4byte script_080103F8
	.incbin "data_080D5360/gUnk_080EF0B0_59.bin"
	.4byte script_0800FEBC
	.incbin "data_080D5360/gUnk_080EF0B0_60.bin"
	.4byte script_080103D0
	.incbin "data_080D5360/gUnk_080EF0B0_61.bin"
	.4byte script_0800ED04
	.incbin "data_080D5360/gUnk_080EF0B0_62.bin"
	.4byte script_0800ED04
	.incbin "data_080D5360/gUnk_080EF0B0_63.bin"
	.4byte script_080108D0
	.incbin "data_080D5360/gUnk_080EF0B0_64.bin"
	.4byte script_080108D0
	.incbin "data_080D5360/gUnk_080EF0B0_65.bin"
	.4byte script_08010964
	.incbin "data_080D5360/gUnk_080EF0B0_66.bin"
	.4byte script_080109A0
	.incbin "data_080D5360/gUnk_080EF0B0_67.bin"
	.4byte script_08010B68
	.incbin "data_080D5360/gUnk_080EF0B0_68.bin"
	.4byte script_08010B68
	.incbin "data_080D5360/gUnk_080EF0B0_69.bin"
	.4byte script_08010B68
	.incbin "data_080D5360/gUnk_080EF0B0_70.bin"
	.4byte script_08010B68
	.incbin "data_080D5360/gUnk_080EF0B0_71.bin"
	.4byte script_08010B68
	.incbin "data_080D5360/gUnk_080EF0B0_72.bin"

gUnk_080EF5D0:: @ 080EF5D0
	.incbin "data_080D5360/gUnk_080EF5D0.bin"
	.4byte script_08010264
	.incbin "data_080D5360/gUnk_080EF5D0_1.bin"

gUnk_080EF5F0:: @ 080EF5F0
	.incbin "data_080D5360/gUnk_080EF5F0.bin"
	.4byte script_080107D0
	.incbin "data_080D5360/gUnk_080EF5F0_1.bin"

gUnk_080EF610:: @ 080EF610
	.incbin "data_080D5360/gUnk_080EF610.bin"
	.4byte script_080104EC
	.incbin "data_080D5360/gUnk_080EF610_1.bin"

gUnk_080EF640:: @ 080EF640
	.incbin "data_080D5360/gUnk_080EF640.bin"
	.4byte script_0800FDA0
	.incbin "data_080D5360/gUnk_080EF640_1.bin"

gUnk_080EF660:: @ 080EF660
	.incbin "data_080D5360/gUnk_080EF660.bin"
	.4byte script_0800FDCC
	.incbin "data_080D5360/gUnk_080EF660_1.bin"

gUnk_080EF680:: @ 080EF680
	.incbin "data_080D5360/gUnk_080EF680.bin"
	.4byte script_0800FE44
	.incbin "data_080D5360/gUnk_080EF680_1.bin"

gUnk_080EF6A0:: @ 080EF6A0
	.incbin "data_080D5360/gUnk_080EF6A0.bin"
	.4byte script_0800FDA0
	.incbin "data_080D5360/gUnk_080EF6A0_1.bin"

gUnk_080EF6C0:: @ 080EF6C0
	.incbin "data_080D5360/gUnk_080EF6C0.bin"

gUnk_080EF6E0:: @ 080EF6E0
	.incbin "data_080D5360/gUnk_080EF6E0.bin"

gUnk_080EF700:: @ 080EF700
	.incbin "data_080D5360/gUnk_080EF700.bin"

gUnk_080EF720:: @ 080EF720
	.incbin "data_080D5360/gUnk_080EF720.bin"

gUnk_080EF740:: @ 080EF740
	.incbin "data_080D5360/gUnk_080EF740.bin"
	.4byte script_08010A98
	.incbin "data_080D5360/gUnk_080EF740_1.bin"

gUnk_080EF760:: @ 080EF760
	.incbin "data_080D5360/gUnk_080EF760.bin"
	.4byte script_08014F30
	.incbin "data_080D5360/gUnk_080EF760_1.bin"

gUnk_080EF7A0:: @ 080EF7A0
	.incbin "data_080D5360/gUnk_080EF7A0.bin"
	.4byte script_080100C8
	.incbin "data_080D5360/gUnk_080EF7A0_1.bin"

gUnk_080EF7C0:: @ 080EF7C0
	.incbin "data_080D5360/gUnk_080EF7C0.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_1.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_2.bin"
	.4byte script_0800F584
	.incbin "data_080D5360/gUnk_080EF7C0_3.bin"
	.4byte script_0800F584
	.incbin "data_080D5360/gUnk_080EF7C0_4.bin"
	.4byte script_08010454
	.incbin "data_080D5360/gUnk_080EF7C0_5.bin"
	.4byte script_0800F5EC
	.incbin "data_080D5360/gUnk_080EF7C0_6.bin"
	.4byte script_0800F688
	.incbin "data_080D5360/gUnk_080EF7C0_7.bin"
	.4byte script_0800F6E0
	.incbin "data_080D5360/gUnk_080EF7C0_8.bin"
	.4byte script_0800F6E0
	.incbin "data_080D5360/gUnk_080EF7C0_9.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_10.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_11.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_12.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_13.bin"
	.4byte script_0800F650
	.incbin "data_080D5360/gUnk_080EF7C0_14.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_15.bin"
	.4byte script_0800F628
	.incbin "data_080D5360/gUnk_080EF7C0_16.bin"
	.4byte script_0800F628
	.incbin "data_080D5360/gUnk_080EF7C0_17.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_18.bin"
	.4byte script_0800F5B0
	.incbin "data_080D5360/gUnk_080EF7C0_19.bin"
	.4byte script_0800F584
	.incbin "data_080D5360/gUnk_080EF7C0_20.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_21.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_22.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_23.bin"
	.4byte script_0800F554
	.incbin "data_080D5360/gUnk_080EF7C0_24.bin"
	.4byte script_0800F724
	.incbin "data_080D5360/gUnk_080EF7C0_25.bin"
	.4byte script_0800F724
	.incbin "data_080D5360/gUnk_080EF7C0_26.bin"

gUnk_080EF970:: @ 080EF970
	.incbin "data_080D5360/gUnk_080EF970.bin"

gUnk_080EF998:: @ 080EF998
	.incbin "data_080D5360/gUnk_080EF998.bin"

gUnk_080EF9C0:: @ 080EF9C0
	.incbin "data_080D5360/gUnk_080EF9C0.bin"

gUnk_080EF9E4:: @ 080EF9E4
	.incbin "data_080D5360/gUnk_080EF9E4.bin"
	.4byte script_0800EF40
	.incbin "data_080D5360/gUnk_080EF9E4_1.bin"
	.4byte script_0801090C
	.incbin "data_080D5360/gUnk_080EF9E4_2.bin"

gUnk_080EFAA4:: @ 080EFAA4
	.incbin "data_080D5360/gUnk_080EFAA4.bin"

Room_HyruleTown_0:: @ 080EFAEC
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DE00
	.4byte LoadHyruleTown
	.4byte gUnk_080EF5D0
	.4byte gUnk_080EF970
	.4byte gUnk_080EF998
	.4byte gUnk_080EF9C0
	.4byte gUnk_080EF9E4
	.4byte gUnk_080EED98
	.4byte gUnk_080EEF58
	.4byte gUnk_080EF0B0
	.4byte gUnk_080EEE18
	.4byte gUnk_080EEE2C
	.4byte gUnk_080EEE40
	.4byte gUnk_080EEE54
	.4byte gUnk_080EEE68
	.4byte gUnk_080EEE7C
	.4byte gUnk_080EEE90
	.4byte gUnk_080EEEA4
	.4byte gUnk_080EEEB8
	.4byte gUnk_080EEECC
	.4byte gUnk_080EEEE0
	.4byte gUnk_080EEEF4
	.4byte gUnk_080EEF08
	.4byte gUnk_080EEF1C
	.4byte gUnk_080EEF30
	.4byte gUnk_080EEF44
	.4byte gUnk_080EEFAC
	.4byte gUnk_080EEFC0
	.4byte gUnk_080EEFD4
	.4byte gUnk_080EEFE8
	.4byte gUnk_080EEFFC
	.4byte gUnk_080EF010
	.4byte gUnk_080EF024
	.4byte gUnk_080EF038
	.4byte gUnk_080EF04C
	.4byte gUnk_080EF060
	.4byte gUnk_080EF074
	.4byte gUnk_080EF088
	.4byte gUnk_080EF09C
	.4byte gUnk_080EF5F0
	.4byte gUnk_080EF610
	.4byte gUnk_080EF640
	.4byte gUnk_080EF660
	.4byte gUnk_080EF680
	.4byte gUnk_080EF6A0
	.4byte 0x00000000
	.4byte gUnk_080EF6C0
	.4byte gUnk_080EF6E0
	.4byte gUnk_080EF700
	.4byte gUnk_080EF720
	.4byte gUnk_080EF740
	.4byte gUnk_080EF760
	.4byte gUnk_080EF7A0

Room_HyruleTown_1:: @ 080EFBD8
	.4byte gUnk_080EEBCC
	.4byte gUnk_080EEC4C
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown
	.4byte gUnk_080EFAA4
	.4byte gUnk_080EF7C0

Room_HyruleTown_2:: @ 080EFC00
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.incbin "data_080D5360/Room_HyruleTown_2.bin"
	.4byte gUnk_080EECDC
	.incbin "data_080D5360/Room_HyruleTown_2_1.bin"
	.4byte LoadHyruleTown

Room_HyruleTown_3:: @ 080EFC20
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_4:: @ 080EFC40
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_5:: @ 080EFC60
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_6:: @ 080EFC80
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_7:: @ 080EFCA0
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_8:: @ 080EFCC0
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte sub_0804E130
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

gUnk_080EFCE0:: @ 080EFCE0
	.incbin "data_080D5360/gUnk_080EFCE0.bin"

gUnk_080EFD90:: @ 080EFD90
	.incbin "data_080D5360/gUnk_080EFD90.bin"

gUnk_080EFDF0:: @ 080EFDF0
	.incbin "data_080D5360/gUnk_080EFDF0.bin"

Room_HyruleTownMinishCaves_Entrance:: @ 080EFDF8
	.4byte gUnk_080EFCE0
	.4byte 0x00000000
	.4byte gUnk_080EFD90
	.4byte gUnk_080EFDF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E1F4
	.4byte nullsub_76

gUnk_080EFE18:: @ 080EFE18
	.incbin "data_080D5360/gUnk_080EFE18.bin"

gUnk_080EFE38:: @ 080EFE38
	.incbin "data_080D5360/gUnk_080EFE38.bin"

gUnk_080EFE58:: @ 080EFE58
	.incbin "data_080D5360/gUnk_080EFE58.bin"

gUnk_080EFE68:: @ 080EFE68
	.incbin "data_080D5360/gUnk_080EFE68.bin"

Room_HyruleTownMinishCaves_NorthRoom:: @ 080EFE78
	.4byte gUnk_080EFE18
	.4byte gUnk_080EFE38
	.4byte gUnk_080EFE58
	.4byte gUnk_080EFE68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E1FC
	.4byte nullsub_77

gUnk_080EFE98:: @ 080EFE98
	.incbin "data_080D5360/gUnk_080EFE98.bin"

gUnk_080EFF08:: @ 080EFF08
	.incbin "data_080D5360/gUnk_080EFF08.bin"

gUnk_080EFF28:: @ 080EFF28
	.incbin "data_080D5360/gUnk_080EFF28.bin"

gUnk_080EFF78:: @ 080EFF78
	.incbin "data_080D5360/gUnk_080EFF78.bin"

Room_HyruleTownMinishCaves_PacciJump:: @ 080EFF80
	.4byte gUnk_080EFE98
	.4byte gUnk_080EFF08
	.4byte gUnk_080EFF28
	.4byte gUnk_080EFF78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E204
	.4byte nullsub_78

gUnk_080EFFA0:: @ 080EFFA0
	.incbin "data_080D5360/gUnk_080EFFA0.bin"

gUnk_080F0000:: @ 080F0000
	.incbin "data_080D5360/gUnk_080F0000.bin"

gUnk_080F0030:: @ 080F0030
	.incbin "data_080D5360/gUnk_080F0030.bin"

gUnk_080F0040:: @ 080F0040
	.incbin "data_080D5360/gUnk_080F0040.bin"

gUnk_080F0050:: @ 080F0050
	.incbin "data_080D5360/gUnk_080F0050.bin"

Room_HyruleTownMinishCaves_MulldozerFight:: @ 080F00A0
	.4byte gUnk_080EFFA0
	.4byte gUnk_080F0000
	.4byte gUnk_080F0030
	.4byte gUnk_080F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E20C
	.4byte nullsub_79
	.4byte gUnk_080F0050

gUnk_080F00C4:: @ 080F00C4
	.incbin "data_080D5360/gUnk_080F00C4.bin"

gUnk_080F00D4:: @ 080F00D4
	.incbin "data_080D5360/gUnk_080F00D4.bin"

gUnk_080F00E4:: @ 080F00E4
.ifdef EU
	.incbin "data_080D5360/gUnk_080F00E4_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F00E4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

Room_HyruleTownMinishCaves_WestChest:: @ 080F00F4
	.4byte gUnk_080F00C4
	.incbin "data_080D5360/Room_HyruleTownMinishCaves_WestChest.bin"
	.4byte gUnk_080F00D4
	.4byte gUnk_080F00E4
	.incbin "data_080D5360/Room_HyruleTownMinishCaves_WestChest_1.bin"
	.4byte sub_0804E214
	.4byte nullsub_080

gUnk_080F0114:: @ 080F0114
	.incbin "data_080D5360/gUnk_080F0114.bin"
.ifdef EU
	.incbin "data_080D5360/gUnk_080F0114_1_EU.bin"
	.incbin "data_080D5360/gUnk_080F0114_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F0114_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F0184:: @ 080F0184
	.incbin "data_080D5360/gUnk_080F0184.bin"

gUnk_080F0194:: @ 080F0194
	.incbin "data_080D5360/gUnk_080F0194.bin"

gUnk_080F01A4:: @ 080F01A4
	.incbin "data_080D5360/gUnk_080F01A4.bin"

Room_HyruleTownMinishCaves_Flippers:: @ 080F01D4
	.4byte gUnk_080F0114
	.4byte 0x00000000
	.4byte gUnk_080F0184
	.4byte gUnk_080F0194
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E21C
	.4byte nullsub_081
	.4byte gUnk_080F01A4

gUnk_080F01F8:: @ 080F01F8
	.incbin "data_080D5360/gUnk_080F01F8.bin"

gUnk_080F0208:: @ 080F0208
	.incbin "data_080D5360/gUnk_080F0208.bin"

gUnk_080F0228:: @ 080F0228
	.incbin "data_080D5360/gUnk_080F0228.bin"

Room_HyruleTownMinishCaves_Librari:: @ 080F0230
	.4byte gUnk_080F01F8
	.4byte 0x00000000
	.4byte gUnk_080F0208
	.4byte gUnk_080F0228
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E224
	.4byte nullsub_082

gUnk_080F0250:: @ 080F0250
	.incbin "data_080D5360/gUnk_080F0250.bin"

gUnk_080F0270:: @ 080F0270
	.incbin "data_080D5360/gUnk_080F0270.bin"

gUnk_080F0280:: @ 080F0280
	.incbin "data_080D5360/gUnk_080F0280.bin"

Room_HyruleTownMinishCaves_WestFrozenChest:: @ 080F0290
	.4byte gUnk_080F0250
	.4byte 0x00000000
	.4byte gUnk_080F0270
	.4byte gUnk_080F0280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E22C
	.4byte nullsub_083

gUnk_080F02B0:: @ 080F02B0
	.incbin "data_080D5360/gUnk_080F02B0.bin"

gUnk_080F0320:: @ 080F0320
	.incbin "data_080D5360/gUnk_080F0320.bin"

gUnk_080F0360:: @ 080F0360
	.incbin "data_080D5360/gUnk_080F0360.bin"

Room_HyruleTownMinishCaves_CrossIntersection:: @ 080F0368
	.4byte gUnk_080F02B0
	.4byte 0x00000000
	.4byte gUnk_080F0320
	.4byte gUnk_080F0360
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E234
	.4byte nullsub_084

gUnk_080F0388:: @ 080F0388
	.incbin "data_080D5360/gUnk_080F0388.bin"

gUnk_080F03A8:: @ 080F03A8
	.incbin "data_080D5360/gUnk_080F03A8.bin"

gUnk_080F0408:: @ 080F0408
	.incbin "data_080D5360/gUnk_080F0408.bin"

Room_HyruleTownMinishCaves_SoutheastCorner:: @ 080F0410
	.4byte gUnk_080F0388
	.4byte 0x00000000
	.4byte gUnk_080F03A8
	.4byte gUnk_080F0408
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E23C
	.4byte nullsub_085

gUnk_080F0430:: @ 080F0430
	.incbin "data_080D5360/gUnk_080F0430.bin"

gUnk_080F0440:: @ 080F0440
	.incbin "data_080D5360/gUnk_080F0440.bin"

gUnk_080F0450:: @ 080F0450
	.incbin "data_080D5360/gUnk_080F0450.bin"

Room_HyruleTownMinishCaves_Entrance2:: @ 080F0458
	.4byte gUnk_080F0430
	.4byte 0x00000000
	.4byte gUnk_080F0440
	.4byte gUnk_080F0450
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E244
	.4byte nullsub_086

gUnk_080F0478:: @ 080F0478
	.incbin "data_080D5360/gUnk_080F0478.bin"

gUnk_080F04F8:: @ 080F04F8
	.incbin "data_080D5360/gUnk_080F04F8.bin"

gUnk_080F0588:: @ 080F0588
	.incbin "data_080D5360/gUnk_080F0588.bin"

Room_HyruleTownUnderground_Main:: @ 080F05B8
	.4byte gUnk_080F0478
	.4byte 0x00000000
	.4byte gUnk_080F04F8
	.4byte gUnk_080F0588
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E24C
	.4byte nullsub_087

gUnk_080F05D8:: @ 080F05D8
	.incbin "data_080D5360/gUnk_080F05D8.bin"

gUnk_080F05F8:: @ 080F05F8
	.incbin "data_080D5360/gUnk_080F05F8.bin"

gUnk_080F0608:: @ 080F0608
	.incbin "data_080D5360/gUnk_080F0608.bin"

Room_HyruleTownUnderground_Well:: @ 080F0610
	.4byte gUnk_080F05D8
	.4byte 0x00000000
	.4byte gUnk_080F05F8
	.4byte gUnk_080F0608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E254
	.4byte nullsub_088

gUnk_080F0630:: @ 080F0630
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F0630_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F0630_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F0630_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F0630_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F0650:: @ 080F0650
	.incbin "data_080D5360/gUnk_080F0650.bin"
	.4byte script_08011128
	.incbin "data_080D5360/gUnk_080F0650_1.bin"
	.4byte script_080119B0
	.incbin "data_080D5360/gUnk_080F0650_2.bin"
	.4byte script_080119B0
	.incbin "data_080D5360/gUnk_080F0650_3.bin"
	.4byte script_080119D8
	.incbin "data_080D5360/gUnk_080F0650_4.bin"
	.4byte script_080119F0
	.incbin "data_080D5360/gUnk_080F0650_5.bin"

gUnk_080F06B0:: @ 080F06B0
	.incbin "data_080D5360/gUnk_080F06B0.bin"
	.4byte script_08010BEC
	.incbin "data_080D5360/gUnk_080F06B0_1.bin"
	.4byte script_080111CC
	.incbin "data_080D5360/gUnk_080F06B0_2.bin"

gUnk_080F06E0:: @ 080F06E0
	.incbin "data_080D5360/gUnk_080F06E0.bin"
	.4byte script_08011640
	.incbin "data_080D5360/gUnk_080F06E0_1.bin"
	.4byte script_080112C4
	.incbin "data_080D5360/gUnk_080F06E0_2.bin"
	.4byte script_080112C4
	.incbin "data_080D5360/gUnk_080F06E0_3.bin"
	.4byte script_080112C4
	.incbin "data_080D5360/gUnk_080F06E0_4.bin"
	.4byte script_080112C4
	.incbin "data_080D5360/gUnk_080F06E0_5.bin"
	.4byte script_080115D0
	.incbin "data_080D5360/gUnk_080F06E0_6.bin"
	.4byte script_08011608
	.incbin "data_080D5360/gUnk_080F06E0_7.bin"
	.4byte script_080116A8
	.incbin "data_080D5360/gUnk_080F06E0_8.bin"

gUnk_080F0770:: @ 080F0770
	.incbin "data_080D5360/gUnk_080F0770.bin"
	.4byte script_08011930
	.incbin "data_080D5360/gUnk_080F0770_1.bin"
	.4byte script_08011930
	.incbin "data_080D5360/gUnk_080F0770_2.bin"
	.4byte script_08011930
	.incbin "data_080D5360/gUnk_080F0770_3.bin"
	.4byte script_08011930
	.incbin "data_080D5360/gUnk_080F0770_4.bin"
	.4byte script_08011930
	.incbin "data_080D5360/gUnk_080F0770_5.bin"
	.4byte script_08011930
	.incbin "data_080D5360/gUnk_080F0770_6.bin"
	.4byte script_08011930
	.incbin "data_080D5360/gUnk_080F0770_7.bin"
	.4byte script_08011930
	.incbin "data_080D5360/gUnk_080F0770_8.bin"

gUnk_080F0800:: @ 080F0800
	.incbin "data_080D5360/gUnk_080F0800.bin"
	.4byte script_0801194C
	.incbin "data_080D5360/gUnk_080F0800_1.bin"
	.4byte script_08011964
	.incbin "data_080D5360/gUnk_080F0800_2.bin"
	.4byte script_08011958
	.incbin "data_080D5360/gUnk_080F0800_3.bin"
	.4byte script_08011964
	.incbin "data_080D5360/gUnk_080F0800_4.bin"

gUnk_080F0850:: @ 080F0850
	.incbin "data_080D5360/gUnk_080F0850.bin"
	.4byte script_08011A64
	.incbin "data_080D5360/gUnk_080F0850_1.bin"

gUnk_080F0870:: @ 080F0870
	.incbin "data_080D5360/gUnk_080F0870.bin"
	.4byte script_080119E4
	.incbin "data_080D5360/gUnk_080F0870_1.bin"

gUnk_080F0890:: @ 080F0890
	.incbin "data_080D5360/gUnk_080F0890.bin"
	.4byte script_08011AE4
	.incbin "data_080D5360/gUnk_080F0890_1.bin"

gUnk_080F08F0:: @ 080F08F0
	.incbin "data_080D5360/gUnk_080F08F0.bin"
	.4byte script_08011A2C
	.incbin "data_080D5360/gUnk_080F08F0_1.bin"
	.4byte script_08011A2C
	.incbin "data_080D5360/gUnk_080F08F0_2.bin"

gUnk_080F0920:: @ 080F0920
	.incbin "data_080D5360/gUnk_080F0920.bin"
	.4byte script_08011B20
	.incbin "data_080D5360/gUnk_080F0920_1.bin"

gUnk_080F0940:: @ 080F0940
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F0940_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F0940_1_DEMO_JP.bin"
.else

.ifdef EU
	.incbin "data_080D5360/gUnk_080F0940_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F0940_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F09A0:: @ 080F09A0
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F09A0_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F09A0_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F09A0_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F09A0_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F0A00:: @ 080F0A00
	.incbin "data_080D5360/gUnk_080F0A00.bin"

gUnk_080F0A10:: @ 080F0A10
	.incbin "data_080D5360/gUnk_080F0A10.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F0A10_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F0A10_2_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F0A10_3_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F0A10_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F0A30:: @ 080F0A30
	.incbin "data_080D5360/gUnk_080F0A30.bin"

gUnk_080F0A50:: @ 080F0A50
	.incbin "data_080D5360/gUnk_080F0A50.bin"

gUnk_080F0A64:: @ 080F0A64
	.incbin "data_080D5360/gUnk_080F0A64.bin"

gUnk_080F0A78:: @ 080F0A78
	.incbin "data_080D5360/gUnk_080F0A78.bin"

gUnk_080F0A8C:: @ 080F0A8C
	.incbin "data_080D5360/gUnk_080F0A8C.bin"

gUnk_080F0AAC:: @ 080F0AAC
	.incbin "data_080D5360/gUnk_080F0AAC.bin"

gUnk_080F0AC0:: @ 080F0AC0
	.incbin "data_080D5360/gUnk_080F0AC0.bin"

gUnk_080F0AD4:: @ 080F0AD4
	.incbin "data_080D5360/gUnk_080F0AD4.bin"

Room_CastleGarden_Main:: @ 080F0AE8
	.4byte gUnk_080F0630
	.4byte gUnk_080F0940
	.4byte gUnk_080F0A00
	.4byte gUnk_080F0A10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E25C
	.4byte sub_0804E27C
	.4byte gUnk_080F0A30
	.4byte gUnk_080F0A50
	.4byte gUnk_080F0A64
	.4byte gUnk_080F0A78
	.4byte gUnk_080F0A8C
	.4byte gUnk_080F0AAC
	.4byte gUnk_080F0AC0
	.4byte gUnk_080F0AD4

gUnk_080F0B28:: @ 080F0B28
	.incbin "data_080D5360/gUnk_080F0B28.bin"
	.4byte script_08011BE4
	.incbin "data_080D5360/gUnk_080F0B28_1.bin"

gUnk_080F0B48:: @ 080F0B48
	.incbin "data_080D5360/gUnk_080F0B48.bin"

gUnk_080F0B68:: @ 080F0B68
	.incbin "data_080D5360/gUnk_080F0B68.bin"

gUnk_080F0B88:: @ 080F0B88
	.incbin "data_080D5360/gUnk_080F0B88.bin"

gUnk_080F0BB8:: @ 080F0BB8
	.incbin "data_080D5360/gUnk_080F0BB8.bin"

gUnk_080F0BE8:: @ 080F0BE8
	.incbin "data_080D5360/gUnk_080F0BE8.bin"

gUnk_080F0C18:: @ 080F0C18
	.incbin "data_080D5360/gUnk_080F0C18.bin"

gUnk_080F0C48:: @ 080F0C48
	.incbin "data_080D5360/gUnk_080F0C48.bin"

gUnk_080F0C78:: @ 080F0C78
	.incbin "data_080D5360/gUnk_080F0C78.bin"

gUnk_080F0CB8:: @ 080F0CB8
	.4byte gUnk_080F0B48
	.4byte gUnk_080F0B68
	.4byte gUnk_080F0B88
	.4byte gUnk_080F0BB8
	.4byte gUnk_080F0BE8
	.4byte gUnk_080F0C18
	.4byte gUnk_080F0C48
	.4byte gUnk_080F0C78

gUnk_080F0CD8:: @ 080F0CD8
	.incbin "data_080D5360/gUnk_080F0CD8.bin"

gUnk_080F0CF8:: @ 080F0CF8
	.incbin "data_080D5360/gUnk_080F0CF8.bin"

gUnk_080F0D18:: @ 080F0D18
	.incbin "data_080D5360/gUnk_080F0D18.bin"

gUnk_080F0D38:: @ 080F0D38
	.incbin "data_080D5360/gUnk_080F0D38.bin"

gUnk_080F0D58:: @ 080F0D58
	.4byte gUnk_080F0CD8
	.4byte gUnk_080F0CF8
	.4byte gUnk_080F0D18
	.4byte gUnk_080F0D38

gUnk_080F0D68:: @ 080F0D68
	.incbin "data_080D5360/gUnk_080F0D68.bin"

gUnk_080F0D88:: @ 080F0D88
	.incbin "data_080D5360/gUnk_080F0D88.bin"

gUnk_080F0DA8:: @ 080F0DA8
	.incbin "data_080D5360/gUnk_080F0DA8.bin"

gUnk_080F0DC8:: @ 080F0DC8
	.incbin "data_080D5360/gUnk_080F0DC8.bin"

gUnk_080F0DE8:: @ 080F0DE8
	.incbin "data_080D5360/gUnk_080F0DE8.bin"

gUnk_080F0E08:: @ 080F0E08
	.4byte gUnk_080F0D68
	.4byte gUnk_080F0D88
	.4byte gUnk_080F0DA8
	.4byte gUnk_080F0DC8
	.4byte gUnk_080F0DE8

gUnk_080F0E1C:: @ 080F0E1C
	.incbin "data_080D5360/gUnk_080F0E1C.bin"

gUnk_080F0E9C:: @ 080F0E9C
	.incbin "data_080D5360/gUnk_080F0E9C.bin"

gUnk_080F0FBC:: @ 080F0FBC
	.incbin "data_080D5360/gUnk_080F0FBC.bin"

gUnk_080F109C:: @ 080F109C
	.incbin "data_080D5360/gUnk_080F109C.bin"

gUnk_080F11EC:: @ 080F11EC
	.incbin "data_080D5360/gUnk_080F11EC.bin"

gUnk_080F12FC:: @ 080F12FC
	.incbin "data_080D5360/gUnk_080F12FC.bin"

gUnk_080F140C:: @ 080F140C
	.incbin "data_080D5360/gUnk_080F140C.bin"

gUnk_080F14DC:: @ 080F14DC
	.incbin "data_080D5360/gUnk_080F14DC.bin"

gUnk_080F15FC:: @ 080F15FC
	.incbin "data_080D5360/gUnk_080F15FC.bin"

gUnk_080F170C:: @ 080F170C
	.incbin "data_080D5360/gUnk_080F170C.bin"

gUnk_080F17DC:: @ 080F17DC
	.incbin "data_080D5360/gUnk_080F17DC.bin"

gUnk_080F188C:: @ 080F188C
	.incbin "data_080D5360/gUnk_080F188C.bin"

gUnk_080F195C:: @ 080F195C
	.incbin "data_080D5360/gUnk_080F195C.bin"

gUnk_080F1A2C:: @ 080F1A2C
	.incbin "data_080D5360/gUnk_080F1A2C.bin"

gUnk_080F1ADC:: @ 080F1ADC
	.incbin "data_080D5360/gUnk_080F1ADC.bin"

gUnk_080F1B8C:: @ 080F1B8C
	.incbin "data_080D5360/gUnk_080F1B8C.bin"

Area_SimonsSimulation_Main:: @ 080F1BEC
	.4byte gUnk_080F0B28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E3B8
	.4byte sub_0804E3C4
	.4byte gUnk_080F0E9C
	.4byte gUnk_080F0FBC
	.4byte gUnk_080F109C
	.4byte gUnk_080F11EC
	.4byte gUnk_080F12FC
	.4byte gUnk_080F140C
	.4byte gUnk_080F14DC
	.4byte gUnk_080F15FC
	.4byte gUnk_080F170C
	.4byte gUnk_080F17DC
	.4byte gUnk_080F188C
	.4byte gUnk_080F195C
	.4byte gUnk_080F1A2C
	.4byte gUnk_080F1ADC
	.4byte gUnk_080F1B8C

gUnk_080F1C48:: @ 080F1C48
	.incbin "data_080D5360/gUnk_080F1C48.bin"
	.4byte script_0800EAF8
	.incbin "data_080D5360/gUnk_080F1C48_1.bin"

gUnk_080F1C68:: @ 080F1C68
	.incbin "data_080D5360/gUnk_080F1C68.bin"
	.4byte script_08010B68
	.incbin "data_080D5360/gUnk_080F1C68_1.bin"

gUnk_080F1C88:: @ 080F1C88
	.incbin "data_080D5360/gUnk_080F1C88.bin"
	.4byte script_08010B68
	.incbin "data_080D5360/gUnk_080F1C88_1.bin"

gUnk_080F1CA8:: @ 080F1CA8
	.incbin "data_080D5360/gUnk_080F1CA8.bin"

gUnk_080F1D08:: @ 080F1D08
	.incbin "data_080D5360/gUnk_080F1D08.bin"

gUnk_080F1D18:: @ 080F1D18
	.incbin "data_080D5360/gUnk_080F1D18.bin"

gUnk_080F1D20:: @ 080F1D20
	.incbin "data_080D5360/gUnk_080F1D20.bin"

gUnk_080F1D34:: @ 080F1D34
	.incbin "data_080D5360/gUnk_080F1D34.bin"

Room_HouseInteriors2_Stranger:: @ 080F1D48
	.4byte gUnk_080F1C48
	.4byte gUnk_080F1CA8
	.4byte gUnk_080F1D08
	.4byte gUnk_080F1D18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E45C
	.4byte sub_0804E460
	.4byte gUnk_080F1D20
	.4byte gUnk_080F1D34

gUnk_080F1D70:: @ 080F1D70
	.incbin "data_080D5360/gUnk_080F1D70.bin"

gUnk_080F1D90:: @ 080F1D90
	.incbin "data_080D5360/gUnk_080F1D90.bin"
	.4byte script_08012024
	.incbin "data_080D5360/gUnk_080F1D90_1.bin"

gUnk_080F1DB0:: @ 080F1DB0
	.incbin "data_080D5360/gUnk_080F1DB0.bin"
	.4byte script_080120B0
	.incbin "data_080D5360/gUnk_080F1DB0_1.bin"

gUnk_080F1DD0:: @ 080F1DD0
	.incbin "data_080D5360/gUnk_080F1DD0.bin"
	.4byte script_0801213C
	.incbin "data_080D5360/gUnk_080F1DD0_1.bin"

gUnk_080F1DF0:: @ 080F1DF0
	.incbin "data_080D5360/gUnk_080F1DF0.bin"

gUnk_080F1E60:: @ 080F1E60
	.incbin "data_080D5360/gUnk_080F1E60.bin"

gUnk_080F1E70:: @ 080F1E70
	.incbin "data_080D5360/gUnk_080F1E70.bin"

gUnk_080F1E78:: @ 080F1E78
	.incbin "data_080D5360/gUnk_080F1E78.bin"

gUnk_080F1E8C:: @ 080F1E8C
	.incbin "data_080D5360/gUnk_080F1E8C.bin"

gUnk_080F1EA0:: @ 080F1EA0
	.incbin "data_080D5360/gUnk_080F1EA0.bin"

Room_HouseInteriors2_WestOracle:: @ 080F1EC0
	.4byte gUnk_080F1D70
	.4byte gUnk_080F1DF0
	.4byte gUnk_080F1E60
	.4byte gUnk_080F1E70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E484
	.4byte sub_0804E488
	.4byte gUnk_080F1E78
	.4byte gUnk_080F1EA0
	.4byte gUnk_080F1E8C

gUnk_080F1EEC:: @ 080F1EEC
	.incbin "data_080D5360/gUnk_080F1EEC.bin"

gUnk_080F1F0C:: @ 080F1F0C
	.incbin "data_080D5360/gUnk_080F1F0C.bin"

gUnk_080F1F9C:: @ 080F1F9C
	.incbin "data_080D5360/gUnk_080F1F9C.bin"

gUnk_080F1FAC:: @ 080F1FAC
	.incbin "data_080D5360/gUnk_080F1FAC.bin"

gUnk_080F1FB4:: @ 080F1FB4
	.incbin "data_080D5360/gUnk_080F1FB4.bin"

gUnk_080F1FC8:: @ 080F1FC8
	.incbin "data_080D5360/gUnk_080F1FC8.bin"

gUnk_080F1FDC:: @ 080F1FDC
	.incbin "data_080D5360/gUnk_080F1FDC.bin"

Room_HouseInteriors2_2:: @ 080F1FEC
	.4byte gUnk_080F1EEC
	.4byte gUnk_080F1F0C
	.4byte gUnk_080F1F9C
	.4byte gUnk_080F1FAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E4D0
	.4byte nullsub_375
	.4byte gUnk_080F1FB4
	.4byte gUnk_080F1FC8
	.4byte gUnk_080F1FDC

gUnk_080F2018:: @ 080F2018
	.incbin "data_080D5360/gUnk_080F2018.bin"

gUnk_080F2038:: @ 080F2038
	.incbin "data_080D5360/gUnk_080F2038.bin"

gUnk_080F20B8:: @ 080F20B8
	.incbin "data_080D5360/gUnk_080F20B8.bin"

gUnk_080F20C8:: @ 080F20C8
	.incbin "data_080D5360/gUnk_080F20C8.bin"

gUnk_080F20D0:: @ 080F20D0
	.incbin "data_080D5360/gUnk_080F20D0.bin"

gUnk_080F20E4:: @ 080F20E4
	.incbin "data_080D5360/gUnk_080F20E4.bin"

gUnk_080F20F8:: @ 080F20F8
	.incbin "data_080D5360/gUnk_080F20F8.bin"

Room_HouseInteriors2_3:: @ 080F2108
	.4byte gUnk_080F2018
	.4byte gUnk_080F2038
	.4byte gUnk_080F20B8
	.4byte gUnk_080F20C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E4D8
	.4byte nullsub_376
	.4byte gUnk_080F20D0
	.4byte gUnk_080F20E4
	.4byte gUnk_080F20F8

gUnk_080F2134:: @ 080F2134
	.incbin "data_080D5360/gUnk_080F2134.bin"
	.4byte script_0800EAA4
	.incbin "data_080D5360/gUnk_080F2134_1.bin"

gUnk_080F2174:: @ 080F2174
	.incbin "data_080D5360/gUnk_080F2174.bin"

gUnk_080F2194:: @ 080F2194
	.incbin "data_080D5360/gUnk_080F2194.bin"

gUnk_080F21B4:: @ 080F21B4
	.incbin "data_080D5360/gUnk_080F21B4.bin"

gUnk_080F21D4:: @ 080F21D4
	.incbin "data_080D5360/gUnk_080F21D4.bin"

gUnk_080F2264:: @ 080F2264
	.incbin "data_080D5360/gUnk_080F2264.bin"

gUnk_080F2274:: @ 080F2274
	.incbin "data_080D5360/gUnk_080F2274.bin"

gUnk_080F227C:: @ 080F227C
	.incbin "data_080D5360/gUnk_080F227C.bin"

gUnk_080F2290:: @ 080F2290
	.incbin "data_080D5360/gUnk_080F2290.bin"

gUnk_080F22A4:: @ 080F22A4
	.incbin "data_080D5360/gUnk_080F22A4.bin"

gUnk_080F22B8:: @ 080F22B8
	.incbin "data_080D5360/gUnk_080F22B8.bin"

gUnk_080F22D0:: @ 080F22D0
	.incbin "data_080D5360/gUnk_080F22D0.bin"

gUnk_080F22E0:: @ 080F22E0
	.incbin "data_080D5360/gUnk_080F22E0.bin"

Room_HouseInteriors2_DrLeft:: @ 080F22F4
	.4byte gUnk_080F2134
	.4byte gUnk_080F21D4
	.4byte gUnk_080F2264
	.4byte gUnk_080F2274
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E4E0
	.4byte sub_0804E4E4
	.4byte gUnk_080F227C
	.4byte gUnk_080F2290
	.4byte gUnk_080F22A4
	.4byte gUnk_080F22D0
	.4byte gUnk_080F22E0
	.4byte gUnk_080F22B8

gUnk_080F232C:: @ 080F232C
	.incbin "data_080D5360/gUnk_080F232C.bin"

gUnk_080F236C:: @ 080F236C
	.incbin "data_080D5360/gUnk_080F236C.bin"
	.4byte script_0800EB2C
	.incbin "data_080D5360/gUnk_080F236C_1.bin"

gUnk_080F238C:: @ 080F238C
	.incbin "data_080D5360/gUnk_080F238C.bin"
	.4byte script_0800EB64
	.incbin "data_080D5360/gUnk_080F238C_1.bin"
	.4byte script_0800EC14
	.incbin "data_080D5360/gUnk_080F238C_2.bin"

gUnk_080F23BC:: @ 080F23BC
	.incbin "data_080D5360/gUnk_080F23BC.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080F23BC_1.bin"

gUnk_080F23DC:: @ 080F23DC
	.incbin "data_080D5360/gUnk_080F23DC.bin"

gUnk_080F245C:: @ 080F245C
	.incbin "data_080D5360/gUnk_080F245C.bin"

gUnk_080F246C:: @ 080F246C
	.incbin "data_080D5360/gUnk_080F246C.bin"

gUnk_080F2474:: @ 080F2474
	.incbin "data_080D5360/gUnk_080F2474.bin"

gUnk_080F2488:: @ 080F2488
	.incbin "data_080D5360/gUnk_080F2488.bin"

gUnk_080F2498:: @ 080F2498
	.incbin "data_080D5360/gUnk_080F2498.bin"

gUnk_080F24B0:: @ 080F24B0
	.incbin "data_080D5360/gUnk_080F24B0.bin"

gUnk_080F24C4:: @ 080F24C4
	.incbin "data_080D5360/gUnk_080F24C4.bin"

Room_HouseInteriors2_Romio:: @ 080F24D8
	.4byte gUnk_080F232C
	.4byte gUnk_080F23DC
	.4byte gUnk_080F245C
	.4byte gUnk_080F246C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E528
	.4byte sub_0804E52C
	.4byte gUnk_080F2488
	.4byte gUnk_080F2498
	.4byte gUnk_080F24B0
	.4byte gUnk_080F24C4
	.4byte gUnk_080F236C
	.4byte gUnk_080F2474

gUnk_080F2510:: @ 080F2510
	.incbin "data_080D5360/gUnk_080F2510.bin"

gUnk_080F2570:: @ 080F2570
	.incbin "data_080D5360/gUnk_080F2570.bin"
	.4byte script_0800EC54
	.incbin "data_080D5360/gUnk_080F2570_1.bin"

gUnk_080F2590:: @ 080F2590
	.incbin "data_080D5360/gUnk_080F2590.bin"
	.4byte script_0800EBC0
	.incbin "data_080D5360/gUnk_080F2590_1.bin"
	.4byte script_0800EC54
	.incbin "data_080D5360/gUnk_080F2590_2.bin"

gUnk_080F25C0:: @ 080F25C0
	.incbin "data_080D5360/gUnk_080F25C0.bin"

gUnk_080F2600:: @ 080F2600
	.incbin "data_080D5360/gUnk_080F2600.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080F2600_1.bin"

gUnk_080F2620:: @ 080F2620
	.incbin "data_080D5360/gUnk_080F2620.bin"

gUnk_080F2670:: @ 080F2670
	.incbin "data_080D5360/gUnk_080F2670.bin"

gUnk_080F2680:: @ 080F2680
	.incbin "data_080D5360/gUnk_080F2680.bin"

gUnk_080F2698:: @ 080F2698
	.incbin "data_080D5360/gUnk_080F2698.bin"

gUnk_080F26A8:: @ 080F26A8
	.incbin "data_080D5360/gUnk_080F26A8.bin"

gUnk_080F26BC:: @ 080F26BC
	.incbin "data_080D5360/gUnk_080F26BC.bin"

Room_HouseInteriors2_Julietta:: @ 080F26CC
	.4byte gUnk_080F2510
	.4byte gUnk_080F2620
	.4byte gUnk_080F2670
	.4byte gUnk_080F2680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E570
	.4byte sub_0804E574
	.4byte gUnk_080F2698
	.4byte gUnk_080F26A8
	.4byte gUnk_080F26BC

gUnk_080F26F8:: @ 080F26F8
	.incbin "data_080D5360/gUnk_080F26F8.bin"

gUnk_080F2718:: @ 080F2718
	.incbin "data_080D5360/gUnk_080F2718.bin"
	.4byte script_08012270
	.incbin "data_080D5360/gUnk_080F2718_1.bin"

gUnk_080F2758:: @ 080F2758
	.incbin "data_080D5360/gUnk_080F2758.bin"
	.4byte script_0801232C
	.incbin "data_080D5360/gUnk_080F2758_1.bin"

gUnk_080F2798:: @ 080F2798
	.incbin "data_080D5360/gUnk_080F2798.bin"
	.4byte script_08012E88
	.incbin "data_080D5360/gUnk_080F2798_1.bin"

gUnk_080F27D8:: @ 080F27D8
	.incbin "data_080D5360/gUnk_080F27D8.bin"
	.4byte script_08012E88
	.incbin "data_080D5360/gUnk_080F27D8_1.bin"

gUnk_080F2818:: @ 080F2818
	.incbin "data_080D5360/gUnk_080F2818.bin"

gUnk_080F2848:: @ 080F2848
	.incbin "data_080D5360/gUnk_080F2848.bin"

gUnk_080F2858:: @ 080F2858
	.incbin "data_080D5360/gUnk_080F2858.bin"

gUnk_080F2860:: @ 080F2860
	.incbin "data_080D5360/gUnk_080F2860.bin"

gUnk_080F2870:: @ 080F2870
	.incbin "data_080D5360/gUnk_080F2870.bin"

Room_HouseInteriors2_Percy:: @ 080F2888
	.4byte gUnk_080F26F8
	.4byte gUnk_080F2818
	.4byte gUnk_080F2848
	.4byte gUnk_080F2858
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E614
	.4byte sub_0804E618
	.4byte gUnk_080F2870
	.4byte gUnk_080F2718
	.4byte gUnk_080F2758

gUnk_080F28B4:: @ 080F28B4
	.incbin "data_080D5360/gUnk_080F28B4.bin"

gUnk_080F28D4:: @ 080F28D4
	.incbin "data_080D5360/gUnk_080F28D4.bin"
	.4byte script_08012024
	.incbin "data_080D5360/gUnk_080F28D4_1.bin"

gUnk_080F28F4:: @ 080F28F4
	.incbin "data_080D5360/gUnk_080F28F4.bin"
	.4byte script_080120B0
	.incbin "data_080D5360/gUnk_080F28F4_1.bin"

gUnk_080F2914:: @ 080F2914
	.incbin "data_080D5360/gUnk_080F2914.bin"
	.4byte script_0801213C
	.incbin "data_080D5360/gUnk_080F2914_1.bin"

gUnk_080F2934:: @ 080F2934
	.incbin "data_080D5360/gUnk_080F2934.bin"

gUnk_080F29B4:: @ 080F29B4
	.incbin "data_080D5360/gUnk_080F29B4.bin"

gUnk_080F29C4:: @ 080F29C4
	.incbin "data_080D5360/gUnk_080F29C4.bin"

Room_HouseInteriors2_EastOracle:: @ 080F29CC
	.4byte gUnk_080F28B4
	.4byte gUnk_080F2934
	.4byte gUnk_080F29B4
	.4byte gUnk_080F29C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E680
	.4byte sub_0804E684

gUnk_080F29EC:: @ 080F29EC
	.incbin "data_080D5360/gUnk_080F29EC.bin"

gUnk_080F2A1C:: @ 080F2A1C
	.incbin "data_080D5360/gUnk_080F2A1C.bin"

gUnk_080F2A6C:: @ 080F2A6C
	.incbin "data_080D5360/gUnk_080F2A6C.bin"

gUnk_080F2A7C:: @ 080F2A7C
	.incbin "data_080D5360/gUnk_080F2A7C.bin"

gUnk_080F2A84:: @ 080F2A84
	.incbin "data_080D5360/gUnk_080F2A84.bin"

Room_HouseInteriors2_A:: @ 080F2A9C
	.4byte gUnk_080F29EC
	.4byte gUnk_080F2A1C
	.4byte gUnk_080F2A6C
	.4byte gUnk_080F2A7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E6CC9
	.4byte nullsub_377
	.4byte gUnk_080F2A84

gUnk_080F2AC0:: @ 080F2AC0
	.incbin "data_080D5360/gUnk_080F2AC0.bin"

gUnk_080F2AF0:: @ 080F2AF0
	.incbin "data_080D5360/gUnk_080F2AF0.bin"

gUnk_080F2B40:: @ 080F2B40
	.incbin "data_080D5360/gUnk_080F2B40.bin"

gUnk_080F2B50:: @ 080F2B50
	.incbin "data_080D5360/gUnk_080F2B50.bin"

gUnk_080F2B58:: @ 080F2B58
	.incbin "data_080D5360/gUnk_080F2B58.bin"

Room_HouseInteriors2_B:: @ 080F2B78
	.4byte gUnk_080F2AC0
	.4byte gUnk_080F2AF0
	.4byte gUnk_080F2B40
	.4byte gUnk_080F2B50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E6D4
	.4byte nullsub_378
	.4byte gUnk_080F2B58

gUnk_080F2B9C:: @ 080F2B9C
.ifdef JP
	.incbin "data_080D5360/gUnk_080F2B9C_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F2B9C_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080F2B9C_2_DEMO_JP.bin"
.else
	.incbin "data_080D5360/gUnk_080F2B9C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif
	.4byte script_08010120
	.incbin "data_080D5360/gUnk_080F2B9C_4.bin"

gUnk_080F2C7C:: @ 080F2C7C
	.incbin "data_080D5360/gUnk_080F2C7C.bin"

gUnk_080F2D1C:: @ 080F2D1C
	.incbin "data_080D5360/gUnk_080F2D1C.bin"

gUnk_080F2D2C:: @ 080F2D2C
	.incbin "data_080D5360/gUnk_080F2D2C.bin"

gUnk_080F2D34:: @ 080F2D34
	.incbin "data_080D5360/gUnk_080F2D34.bin"

gUnk_080F2D48:: @ 080F2D48
	.incbin "data_080D5360/gUnk_080F2D48.bin"

gUnk_080F2D58:: @ 080F2D58
	.incbin "data_080D5360/gUnk_080F2D58.bin"

gUnk_080F2D68:: @ 080F2D68
	.incbin "data_080D5360/gUnk_080F2D68.bin"

Room_HouseInteriors2_Cucco:: @ 080F2D7C
	.4byte gUnk_080F2B9C
	.4byte gUnk_080F2C7C
	.4byte gUnk_080F2D1C
	.4byte gUnk_080F2D2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E6DC
	.4byte nullsub_379
	.4byte gUnk_080F2D48
	.4byte gUnk_080F2D58
	.4byte gUnk_080F2D68
	.4byte gUnk_080F2D34

gUnk_080F2DAC:: @ 080F2DAC
	.incbin "data_080D5360/gUnk_080F2DAC.bin"

gUnk_080F2DCC:: @ 080F2DCC
	.incbin "data_080D5360/gUnk_080F2DCC.bin"

gUnk_080F2E2C:: @ 080F2E2C
	.incbin "data_080D5360/gUnk_080F2E2C.bin"

gUnk_080F2E4C:: @ 080F2E4C
	.incbin "data_080D5360/gUnk_080F2E4C.bin"

gUnk_080F2E5C:: @ 080F2E5C
	.incbin "data_080D5360/gUnk_080F2E5C.bin"

Room_HouseInteriors2_LinksHouseEntrance:: @ 080F2E64
	.4byte gUnk_080F2DAC
	.4byte gUnk_080F2DCC
	.4byte gUnk_080F2E4C
	.4byte gUnk_080F2E5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E6E4
	.4byte sub_0804E6E8

gUnk_080F2E84:: @ 080F2E84
	.incbin "data_080D5360/gUnk_080F2E84.bin"

gUnk_080F2E94:: @ 080F2E94
	.incbin "data_080D5360/gUnk_080F2E94.bin"
	.4byte script_08009B78
	.incbin "data_080D5360/gUnk_080F2E94_1.bin"
	.4byte script_08009C68
	.incbin "data_080D5360/gUnk_080F2E94_2.bin"

gUnk_080F2EC4:: @ 080F2EC4
	.incbin "data_080D5360/gUnk_080F2EC4.bin"
	.4byte script_08009DB0
	.incbin "data_080D5360/gUnk_080F2EC4_1.bin"

gUnk_080F2EE4:: @ 080F2EE4
	.incbin "data_080D5360/gUnk_080F2EE4.bin"

gUnk_080F2F74:: @ 080F2F74
	.incbin "data_080D5360/gUnk_080F2F74.bin"

gUnk_080F2F84:: @ 080F2F84
	.incbin "data_080D5360/gUnk_080F2F84.bin"

Room_HouseInteriors2_LinksHouseSmith:: @ 080F2F94
	.4byte gUnk_080F2E84
	.4byte gUnk_080F2EE4
	.4byte gUnk_080F2F74
	.4byte gUnk_080F2F84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E728
	.4byte sub_0804E72C

gUnk_080F2FB4:: @ 080F2FB4
	.incbin "data_080D5360/gUnk_080F2FB4.bin"

gUnk_080F2FD4:: @ 080F2FD4
	.incbin "data_080D5360/gUnk_080F2FD4.bin"
	.4byte script_080095CC
	.incbin "data_080D5360/gUnk_080F2FD4_1.bin"

gUnk_080F2FF4:: @ 080F2FF4
	.incbin "data_080D5360/gUnk_080F2FF4.bin"

gUnk_080F3064:: @ 080F3064
	.incbin "data_080D5360/gUnk_080F3064.bin"

gUnk_080F3074:: @ 080F3074
	.incbin "data_080D5360/gUnk_080F3074.bin"

Room_HouseInteriors2_Dampe:: @ 080F307C
	.4byte gUnk_080F2FB4
	.4byte gUnk_080F2FF4
	.4byte gUnk_080F3064
	.4byte gUnk_080F3074
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E778
	.4byte sub_0804E77C

gUnk_080F309C:: @ 080F309C
	.incbin "data_080D5360/gUnk_080F309C.bin"
	.4byte script_0800B5C4
	.incbin "data_080D5360/gUnk_080F309C_1.bin"

gUnk_080F30CC:: @ 080F30CC
	.incbin "data_080D5360/gUnk_080F30CC.bin"

gUnk_080F30EC:: @ 080F30EC
	.incbin "data_080D5360/gUnk_080F30EC.bin"

gUnk_080F314C:: @ 080F314C
	.incbin "data_080D5360/gUnk_080F314C.bin"

gUnk_080F315C:: @ 080F315C
	.incbin "data_080D5360/gUnk_080F315C.bin"

gUnk_080F3164:: @ 080F3164
	.incbin "data_080D5360/gUnk_080F3164.bin"

Room_HouseInteriors2_Stockwell:: @ 080F3174
	.4byte gUnk_080F309C
	.4byte gUnk_080F30EC
	.4byte gUnk_080F314C
	.4byte gUnk_080F315C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E7A0
	.4byte sub_0804E7A4
	.4byte gUnk_080F3164

gUnk_080F3198:: @ 080F3198
	.incbin "data_080D5360/gUnk_080F3198.bin"

gUnk_080F31D8:: @ 080F31D8
	.incbin "data_080D5360/gUnk_080F31D8.bin"
	.4byte script_08009DEC
	.incbin "data_080D5360/gUnk_080F31D8_1.bin"

gUnk_080F31F8:: @ 080F31F8
	.incbin "data_080D5360/gUnk_080F31F8.bin"

gUnk_080F3218:: @ 080F3218
	.incbin "data_080D5360/gUnk_080F3218.bin"

gUnk_080F3228:: @ 080F3228
	.incbin "data_080D5360/gUnk_080F3228.bin"

Room_HouseInteriors2_LinksHouseBedroom:: @ 080F3230
	.4byte gUnk_080F3198
	.4byte gUnk_080F31F8
	.4byte gUnk_080F3218
	.4byte gUnk_080F3228
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E7D8
	.4byte sub_0804E7DC

gUnk_080F3250:: @ 080F3250
	.incbin "data_080D5360/gUnk_080F3250.bin"

gUnk_080F3260:: @ 080F3260
	.incbin "data_080D5360/gUnk_080F3260.bin"
	.4byte script_08009538
	.incbin "data_080D5360/gUnk_080F3260_1.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F3260_2.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F3260_3.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F3260_4.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F3260_5.bin"

gUnk_080F32D0:: @ 080F32D0
	.incbin "data_080D5360/gUnk_080F32D0.bin"

gUnk_080F3360:: @ 080F3360
	.incbin "data_080D5360/gUnk_080F3360.bin"

gUnk_080F3370:: @ 080F3370
	.incbin "data_080D5360/gUnk_080F3370.bin"

gUnk_080F3378:: @ 080F3378
	.incbin "data_080D5360/gUnk_080F3378.bin"

gUnk_080F338C:: @ 080F338C
	.incbin "data_080D5360/gUnk_080F338C.bin"

gUnk_080F33A0:: @ 080F33A0
	.incbin "data_080D5360/gUnk_080F33A0.bin"

Room_HouseInteriors4_Carpenter:: @ 080F33C8
	.4byte gUnk_080F3250
	.4byte gUnk_080F32D0
	.4byte gUnk_080F3360
	.4byte gUnk_080F3370
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E894
	.4byte sub_0804E898
	.4byte gUnk_080F3378
	.4byte gUnk_080F338C
	.4byte gUnk_080F33A0

gUnk_080F33F4:: @ 080F33F4
	.incbin "data_080D5360/gUnk_080F33F4.bin"
	.4byte script_080161E8
	.incbin "data_080D5360/gUnk_080F33F4_1.bin"

gUnk_080F3414:: @ 080F3414
	.incbin "data_080D5360/gUnk_080F3414.bin"

gUnk_080F3494:: @ 080F3494
	.incbin "data_080D5360/gUnk_080F3494.bin"

gUnk_080F35A4:: @ 080F35A4
	.incbin "data_080D5360/gUnk_080F35A4.bin"

gUnk_080F35B4:: @ 080F35B4
	.incbin "data_080D5360/gUnk_080F35B4.bin"

Room_HouseInteriors4_Swiftblade:: @ 080F35C4
	.4byte gUnk_080F33F4
	.4byte gUnk_080F3414
	.4byte gUnk_080F35A4
	.4byte gUnk_080F35B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E8EC
	.4byte sub_0804E8F0

gUnk_080F35E4:: @ 080F35E4
	.incbin "data_080D5360/gUnk_080F35E4.bin"

gUnk_080F3604:: @ 080F3604
	.incbin "data_080D5360/gUnk_080F3604.bin"
	.4byte script_08014EF8
	.incbin "data_080D5360/gUnk_080F3604_1.bin"

gUnk_080F3624:: @ 080F3624
	.incbin "data_080D5360/gUnk_080F3624.bin"

gUnk_080F36E4:: @ 080F36E4
	.incbin "data_080D5360/gUnk_080F36E4.bin"

gUnk_080F36F4:: @ 080F36F4
	.incbin "data_080D5360/gUnk_080F36F4.bin"

gUnk_080F36FC:: @ 080F36FC
	.incbin "data_080D5360/gUnk_080F36FC.bin"

gUnk_080F372C:: @ 080F372C
	.incbin "data_080D5360/gUnk_080F372C.bin"

gUnk_080F3740:: @ 080F3740
	.incbin "data_080D5360/gUnk_080F3740.bin"

Room_HouseInteriors4_RanchHouseWest:: @ 080F3758
	.4byte gUnk_080F35E4
	.4byte gUnk_080F3624
	.4byte gUnk_080F36E4
	.4byte gUnk_080F36F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E8F8
	.4byte sub_0804E8FC
	.4byte gUnk_080F372C
	.4byte gUnk_080F3740

gUnk_080F3780:: @ 080F3780
	.incbin "data_080D5360/gUnk_080F3780.bin"
	.4byte script_08014E50
	.incbin "data_080D5360/gUnk_080F3780_1.bin"

gUnk_080F37D0:: @ 080F37D0
	.incbin "data_080D5360/gUnk_080F37D0.bin"
	.4byte script_08014ECC
	.incbin "data_080D5360/gUnk_080F37D0_1.bin"

gUnk_080F37F0:: @ 080F37F0
	.incbin "data_080D5360/gUnk_080F37F0.bin"

gUnk_080F38C0:: @ 080F38C0
	.incbin "data_080D5360/gUnk_080F38C0.bin"

gUnk_080F38D0:: @ 080F38D0
	.incbin "data_080D5360/gUnk_080F38D0.bin"

gUnk_080F38D8:: @ 080F38D8
	.incbin "data_080D5360/gUnk_080F38D8.bin"

gUnk_080F38EC:: @ 080F38EC
	.incbin "data_080D5360/gUnk_080F38EC.bin"

Room_HouseInteriors4_RanchHouseEast:: @ 080F38F4
	.4byte gUnk_080F3780
	.4byte gUnk_080F37F0
	.4byte gUnk_080F38C0
	.4byte gUnk_080F38D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E92C
	.4byte sub_0804E930
	.4byte gUnk_080F38D8
	.4byte gUnk_080F38EC

gUnk_080F391C:: @ 080F391C
	.incbin "data_080D5360/gUnk_080F391C.bin"

gUnk_080F393C:: @ 080F393C
	.incbin "data_080D5360/gUnk_080F393C.bin"

gUnk_080F39CC:: @ 080F39CC
	.incbin "data_080D5360/gUnk_080F39CC.bin"

gUnk_080F39DC:: @ 080F39DC
	.incbin "data_080D5360/gUnk_080F39DC.bin"

gUnk_080F39E4:: @ 080F39E4
	.incbin "data_080D5360/gUnk_080F39E4.bin"

Room_HouseInteriors4_FarmHouse:: @ 080F39F4
	.4byte gUnk_080F391C
	.4byte gUnk_080F393C
	.4byte gUnk_080F39CC
	.4byte gUnk_080F39DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E948
	.4byte nullsub_380
	.4byte gUnk_080F39E4

gUnk_080F3A18:: @ 080F3A18
	.incbin "data_080D5360/gUnk_080F3A18.bin"

gUnk_080F3A48:: @ 080F3A48
	.incbin "data_080D5360/gUnk_080F3A48.bin"

gUnk_080F3A68:: @ 080F3A68
	.incbin "data_080D5360/gUnk_080F3A68.bin"

gUnk_080F3B18:: @ 080F3B18
	.incbin "data_080D5360/gUnk_080F3B18.bin"

gUnk_080F3B28:: @ 080F3B28
	.incbin "data_080D5360/gUnk_080F3B28.bin"

gUnk_080F3B40:: @ 080F3B40
	.incbin "data_080D5360/gUnk_080F3B40.bin"

gUnk_080F3B50:: @ 080F3B50
	.incbin "data_080D5360/gUnk_080F3B50.bin"

gUnk_080F3B64:: @ 080F3B64
	.incbin "data_080D5360/gUnk_080F3B64.bin"

gUnk_080F3B74:: @ 080F3B74
	.incbin "data_080D5360/gUnk_080F3B74.bin"

Room_HouseInteriors4_Mayor:: @ 080F3BC4
	.4byte gUnk_080F3A18
	.4byte gUnk_080F3A68
	.4byte gUnk_080F3B18
	.4byte gUnk_080F3B28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E950
	.4byte sub_0804E954
	.4byte gUnk_080F3B40
	.4byte gUnk_080F3B50
	.4byte gUnk_080F3B64
	.4byte gUnk_080F3B74

gUnk_080F3BF4:: @ 080F3BF4
	.incbin "data_080D5360/gUnk_080F3BF4.bin"

gUnk_080F3C44:: @ 080F3C44
	.incbin "data_080D5360/gUnk_080F3C44.bin"
	.4byte script_080168F4
	.incbin "data_080D5360/gUnk_080F3C44_1.bin"

gUnk_080F3C64:: @ 080F3C64
	.incbin "data_080D5360/gUnk_080F3C64.bin"
	.4byte script_0800AFB0
	.incbin "data_080D5360/gUnk_080F3C64_1.bin"
	.4byte script_08012360
	.incbin "data_080D5360/gUnk_080F3C64_2.bin"

gUnk_080F3C94:: @ 080F3C94
	.incbin "data_080D5360/gUnk_080F3C94.bin"

gUnk_080F3CB4:: @ 080F3CB4
	.incbin "data_080D5360/gUnk_080F3CB4.bin"

gUnk_080F3D44:: @ 080F3D44
	.incbin "data_080D5360/gUnk_080F3D44.bin"

gUnk_080F3EA4:: @ 080F3EA4
	.incbin "data_080D5360/gUnk_080F3EA4.bin"

gUnk_080F3FE4:: @ 080F3FE4
	.incbin "data_080D5360/gUnk_080F3FE4.bin"

gUnk_080F3FF4:: @ 080F3FF4
	.incbin "data_080D5360/gUnk_080F3FF4.bin"

gUnk_080F4014:: @ 080F4014
	.incbin "data_080D5360/gUnk_080F4014.bin"

gUnk_080F4028:: @ 080F4028
	.incbin "data_080D5360/gUnk_080F4028.bin"

gUnk_080F403C:: @ 080F403C
	.incbin "data_080D5360/gUnk_080F403C.bin"

gUnk_080F4050:: @ 080F4050
	.incbin "data_080D5360/gUnk_080F4050.bin"

gUnk_080F4060:: @ 080F4060
	.incbin "data_080D5360/gUnk_080F4060.bin"

Room_LakeHylia_Main:: @ 080F4074
	.4byte gUnk_080F3BF4
	.4byte gUnk_080F3CB4
	.4byte gUnk_080F3D44
	.4byte gUnk_080F3FE4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E998
	.4byte sub_0804E9D0
	.4byte gUnk_080F3FF4
	.4byte gUnk_080F4014
	.4byte gUnk_080F4028
	.4byte gUnk_080F403C
	.4byte gUnk_080F4050
	.4byte gUnk_080F4060

gUnk_080F40AC:: @ 080F40AC
	.incbin "data_080D5360/gUnk_080F40AC.bin"

gUnk_080F40BC:: @ 080F40BC
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F40BC_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F40BC_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F40BC_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F40BC_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F40EC:: @ 080F40EC
	.incbin "data_080D5360/gUnk_080F40EC.bin"

gUnk_080F418C:: @ 080F418C
	.incbin "data_080D5360/gUnk_080F418C.bin"

gUnk_080F4194:: @ 080F4194
	.incbin "data_080D5360/gUnk_080F4194.bin"

gUnk_080F41A4:: @ 080F41A4
	.incbin "data_080D5360/gUnk_080F41A4.bin"

Room_LakeHylia_Beanstalk:: @ 080F41B8
	.4byte gUnk_080F40AC
	.4byte gUnk_080F40BC
	.4byte gUnk_080F40EC
	.4byte gUnk_080F418C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB04
	.4byte nullsub_381
	.4byte gUnk_080F4194
	.4byte gUnk_080F41A4

gUnk_080F41E0:: @ 080F41E0
	.incbin "data_080D5360/gUnk_080F41E0.bin"
	.4byte script_0800B964
	.incbin "data_080D5360/gUnk_080F41E0_1.bin"

gUnk_080F4220:: @ 080F4220
	.incbin "data_080D5360/gUnk_080F4220.bin"

gUnk_080F4280:: @ 080F4280
	.incbin "data_080D5360/gUnk_080F4280.bin"

Room_LakeWoodsCave_Main:: @ 080F42A0
	.4byte gUnk_080F41E0
	.4byte 0x00000000
	.4byte gUnk_080F4220
	.4byte gUnk_080F4280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB0C
	.4byte nullsub_382

gUnk_080F42C0:: @ 080F42C0
	.incbin "data_080D5360/gUnk_080F42C0.bin"

gUnk_080F42E0:: @ 080F42E0
	.incbin "data_080D5360/gUnk_080F42E0.bin"

gUnk_080F42F0:: @ 080F42F0
	.incbin "data_080D5360/gUnk_080F42F0.bin"

Room_HyliaDigCaves_Middle:: @ 080F4300
	.4byte gUnk_080F42C0
	.4byte 0x00000000
	.4byte gUnk_080F42E0
	.4byte gUnk_080F42F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB14
	.4byte nullsub_383

gUnk_080F4320:: @ 080F4320
	.incbin "data_080D5360/gUnk_080F4320.bin"
	.4byte script_0800B964
	.incbin "data_080D5360/gUnk_080F4320_1.bin"

gUnk_080F4380:: @ 080F4380
	.incbin "data_080D5360/gUnk_080F4380.bin"

gUnk_080F43E0:: @ 080F43E0
	.incbin "data_080D5360/gUnk_080F43E0.bin"

Room_HyliaDigCaves_North:: @ 080F4428
	.4byte gUnk_080F4320
	.4byte 0x00000000
	.4byte gUnk_080F4380
	.4byte gUnk_080F43E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB1
	.4byte nullsub_384

gUnk_080F4448:: @ 080F4448
	.incbin "data_080D5360/gUnk_080F4448.bin"

gUnk_080F4468:: @ 080F4468
	.incbin "data_080D5360/gUnk_080F4468.bin"

gUnk_080F4488:: @ 080F4488
	.incbin "data_080D5360/gUnk_080F4488.bin"

Room_CastorWildsDigCave_Main:: @ 080F44A0
	.4byte gUnk_080F4448
	.4byte 0x00000000
	.4byte gUnk_080F4468
	.4byte gUnk_080F4488
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB24
	.4byte nullsub_385

gUnk_080F44C0:: @ 080F44C0
	.incbin "data_080D5360/gUnk_080F44C0.bin"

gUnk_080F44E0:: @ 080F44E0
	.incbin "data_080D5360/gUnk_080F44E0.bin"

gUnk_080F4520:: @ 080F4520
	.incbin "data_080D5360/gUnk_080F4520.bin"

Room_HyruleDigCaves_Main:: @ 080F4540
	.4byte gUnk_080F44C0
	.4byte 0x00000000
	.4byte gUnk_080F44E0
	.4byte gUnk_080F4520
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB2C
	.4byte nullsub_386

gUnk_080F4560:: @ 080F4560
	.incbin "data_080D5360/gUnk_080F4560.bin"
	.4byte script_0800B964
	.incbin "data_080D5360/gUnk_080F4560_1.bin"

gUnk_080F45A0:: @ 080F45A0
	.incbin "data_080D5360/gUnk_080F45A0.bin"

gUnk_080F4630:: @ 080F4630
	.incbin "data_080D5360/gUnk_080F4630.bin"

Room_CrenelDigCave_Main:: @ 080F4638
	.4byte gUnk_080F4560
	.4byte 0x00000000
	.4byte gUnk_080F45A0
	.4byte gUnk_080F4630
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB34
	.4byte nullsub_387

gUnk_080F4658:: @ 080F4658
	.incbin "data_080D5360/gUnk_080F4658.bin"
	.4byte script_0800B964
	.incbin "data_080D5360/gUnk_080F4658_1.bin"

gUnk_080F4698:: @ 080F4698
	.incbin "data_080D5360/gUnk_080F4698.bin"

gUnk_080F46C8:: @ 080F46C8
	.incbin "data_080D5360/gUnk_080F46C8.bin"

Room_DigCaves1_HyruleFieldFarm:: @ 080F46D0
	.4byte gUnk_080F4658
	.4byte 0x00000000
	.4byte gUnk_080F4698
	.4byte gUnk_080F46C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB3C
	.4byte nullsub_388

gUnk_080F46F0:: @ 080F46F0
	.incbin "data_080D5360/gUnk_080F46F0.bin"
	.4byte script_0800B964
	.incbin "data_080D5360/gUnk_080F46F0_1.bin"

gUnk_080F4730:: @ 080F4730
	.incbin "data_080D5360/gUnk_080F4730.bin"

gUnk_080F4760:: @ 080F4760
	.incbin "data_080D5360/gUnk_080F4760.bin"

Room_DigCaves1_TrilbyHighlands:: @ 080F4780
	.4byte gUnk_080F46F0
	.4byte 0x00000000
	.4byte gUnk_080F4730
	.4byte gUnk_080F4760
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB44
	.4byte nullsub_389

gUnk_080F47A0:: @ 080F47A0
	.incbin "data_080D5360/gUnk_080F47A0.bin"

gUnk_080F47D0:: @ 080F47D0
	.incbin "data_080D5360/gUnk_080F47D0.bin"

gUnk_080F4800:: @ 080F4800
	.incbin "data_080D5360/gUnk_080F4800.bin"

Room_VeilFallsDigCave_Main:: @ 080F4820
	.4byte gUnk_080F47A0
	.4byte 0x00000000
	.4byte gUnk_080F47D0
	.4byte gUnk_080F4800
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB4C
	.4byte nullsub_390

gUnk_080F4840:: @ 080F4840
	.incbin "data_080D5360/gUnk_080F4840.bin"

gUnk_080F4860:: @ 080F4860
	.incbin "data_080D5360/gUnk_080F4860.bin"

gUnk_080F4870:: @ 080F4870
	.incbin "data_080D5360/gUnk_080F4870.bin"

Room_OuterFortressOfWinds_EntranceHall:: @ 080F4880
	.4byte gUnk_080F4840
	.4byte 0x00000000
	.4byte gUnk_080F4860
	.4byte gUnk_080F4870
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB54
	.4byte nullsub_391

gUnk_080F48A0:: @ 080F48A0
	.incbin "data_080D5360/gUnk_080F48A0.bin"

gUnk_080F49D0:: @ 080F49D0
	.incbin "data_080D5360/gUnk_080F49D0.bin"

gUnk_080F4A60:: @ 080F4A60
	.incbin "data_080D5360/gUnk_080F4A60.bin"

Room_OuterFortressOfWinds_2F:: @ 080F4A80
	.4byte gUnk_080F48A0
	.4byte 0x00000000
	.4byte gUnk_080F49D0
	.4byte gUnk_080F4A60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB6C
	.4byte nullsub_392

gUnk_080F4AA0:: @ 080F4AA0
	.incbin "data_080D5360/gUnk_080F4AA0.bin"

gUnk_080F4AD0:: @ 080F4AD0
	.incbin "data_080D5360/gUnk_080F4AD0.bin"

gUnk_080F4B20:: @ 080F4B20
	.incbin "data_080D5360/gUnk_080F4B20.bin"

Room_OuterFortressOfWinds_3F:: @ 080F4B38
	.4byte gUnk_080F4AA0
	.4byte 0x00000000
	.4byte gUnk_080F4AD0
	.4byte gUnk_080F4B20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB84
	.4byte nullsub_393

gUnk_080F4B58:: @ 080F4B58
	.incbin "data_080D5360/gUnk_080F4B58.bin"

gUnk_080F4B88:: @ 080F4B88
	.incbin "data_080D5360/gUnk_080F4B88.bin"

gUnk_080F4BA8:: @ 080F4BA8
	.incbin "data_080D5360/gUnk_080F4BA8.bin"

gUnk_080F4BB8:: @ 080F4BB8
	.incbin "data_080D5360/gUnk_080F4BB8.bin"

Room_OuterFortressOfWinds_MoleMitts:: @ 080F4BD8
	.4byte gUnk_080F4B58
	.4byte 0x00000000
	.4byte gUnk_080F4BA8
	.4byte gUnk_080F4BB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB9C
	.4byte nullsub_394

gUnk_080F4BF8:: @ 080F4BF8
	.incbin "data_080D5360/gUnk_080F4BF8.bin"

gUnk_080F4C78:: @ 080F4C78
	.incbin "data_080D5360/gUnk_080F4C78.bin"

gUnk_080F4CB8:: @ 080F4CB8
	.incbin "data_080D5360/gUnk_080F4CB8.bin"

gUnk_080F4CC8:: @ 080F4CC8
	.incbin "data_080D5360/gUnk_080F4CC8.bin"

Room_OuterFortressOfWinds_SmallKey:: @ 080F4CDC
	.4byte gUnk_080F4BF8
	.4byte 0x00000000
	.4byte gUnk_080F4C78
	.4byte gUnk_080F4CB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EBBC
	.4byte nullsub_395
	.4byte gUnk_080F4CC8

gEntities_MinishWoods_0:: @ 080F4D00
	object_minish_lilypad x=0x1F8, y=0x3D8, room_property=0x12
	object_minish_lilypad x=0x1A8, y=0x3B8, room_property=0x13
.ifdef JP
	object_item x=0xC8, y=0x134, item=0x63, flag=0x3B, collision=1
	object_item x=0x198, y=0x2B4, item=0x63, flag=0x3C, collision=1
.else
.ifdef EU
	object_item x=0xC8, y=0x134, item=0x63, flag=0x3B, collision=1
	object_item x=0x198, y=0x2B4, item=0x63, flag=0x3C, collision=1
.else
.ifdef DEMO_JP
	object_item x=0xC8, y=0x134, item=0x63, flag=0x3B, collision=1
	object_item x=0x198, y=0x2B4, item=0x63, flag=0x3C, collision=1
	@TODO convert to correct entities
	.byte 0x06, 0x0F, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x01, 0x38, 0x03, 0x00, 0x00, 0x00, 0x00, 0x06, 0x0F, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x03, 0xB8, 0x03, 0x00, 0x00, 0x00, 0x00
.else
	object_item x=0xC8, y=0x134, item=0x63, flag=0x3C, collision=1
	object_item x=0x198, y=0x2B4, item=0x63, flag=0x3D, collision=1
.endif
.endif
.endif
	entity_list_end

gUnk_080F4D50:: @ 080F4D50
	.incbin "data_080D5360/gUnk_080F4D50.bin"
	.4byte script_08012480
	.incbin "data_080D5360/gUnk_080F4D50_1.bin"

gUnk_080F4D70:: @080F4D70
	.incbin "data_080D5360/gUnk_080F4D70.bin"
	.4byte script_080126FC
	.incbin "data_080D5360/gUnk_080F4D70_1.bin"
	.4byte script_08012BA8
	.incbin "data_080D5360/gUnk_080F4D70_2.bin"
	.4byte script_08012BF8
	.incbin "data_080D5360/gUnk_080F4D70_3.bin"

gUnk_080F4DB0:: @ 080F4DB0
	.incbin "data_080D5360/gUnk_080F4DB0.bin"
	.4byte script_08012C98
	.incbin "data_080D5360/gUnk_080F4DB0_1.bin"

gUnk_080F4DD0:: @ 080F4DD0
	.incbin "data_080D5360/gUnk_080F4DD0.bin"
	.4byte script_08012CD8
	.incbin "data_080D5360/gUnk_080F4DD0_1.bin"

gUnk_080F4DF0:: @ 080F4DF0
	.incbin "data_080D5360/gUnk_080F4DF0.bin"
	.4byte script_08012D18
	.incbin "data_080D5360/gUnk_080F4DF0_1.bin"

gUnk_080F4E10:: @ 080F4E10
	.incbin "data_080D5360/gUnk_080F4E10.bin"
	.4byte script_0800B00C
	.incbin "data_080D5360/gUnk_080F4E10_1.bin"

gManagers_MinishWoods_0:: @ 080F4E30
	.byte 0x09, 0x18, 0x01, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x0F, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x03, 0x00, 0x03, 0x01, 0x00, 0x00, 0x28, 0x01, 0x70, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x03, 0x00, 0x03, 0x01, 0x00, 0x00, 0x98, 0x03, 0xB0, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x0F, 0x06, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x0F, 0x3E, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD8, 0x01, 0x5A, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x0F, 0x19, 0x08, 0x02, 0x00, 0x00, 0x00, 0xC0, 0x02, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

gUnk_080F4EB0:: @ 080F4EB0
	.incbin "data_080D5360/gUnk_080F4EB0.bin"
	.4byte script_0800A910
	.incbin "data_080D5360/gUnk_080F4EB0_1.bin"
	.4byte script_0800A964
	.incbin "data_080D5360/gUnk_080F4EB0_2.bin"
	.4byte script_0800A988
	.incbin "data_080D5360/gUnk_080F4EB0_3.bin"
	.4byte script_0800A9AC
	.incbin "data_080D5360/gUnk_080F4EB0_4.bin"
	.4byte script_0800A9D0
	.incbin "data_080D5360/gUnk_080F4EB0_5.bin"

gUnk_080F4F10:: @ 080F4F10
	.incbin "data_080D5360/gUnk_080F4F10.bin"

gRoomEnemies_MinishWoods_0:: @ 080F4F30
	enemy_octorok x=0x148, y=0x38, bound_x=0xA0, bound_y=0x20, bound_tile_width=0x1A, bound_tile_height=0x16
	enemy_octorok x=0x118, y=0x98, bound_x=0xA0, bound_y=0x20, bound_tile_width=0x1A, bound_tile_height=0x16
	enemy_octorok x=0x1B8, y=0x1A8, bound_x=0x160, bound_y=0x160, bound_tile_width=0x1C, bound_tile_height=0x14
	enemy_octorok x=0x208, y=0x1F8, bound_x=0x1C0, bound_y=0x1B0, bound_tile_width=0x12, bound_tile_height=0xA
	enemy_octorok x=0x288, y=0x188, bound_x=0x250, bound_y=0x140, bound_tile_width=0xC, bound_tile_height=0x1A
	enemy_octorok x=0x148, y=0x1E8, bound_x=0x120, bound_y=0x180, bound_tile_width=0x10, bound_tile_height=0x12
	enemy_octorok x=0xA8, y=0x198, bound_x=0x30, bound_y=0x180, bound_tile_width=0x1A, bound_tile_height=0xC
	enemy_chuchu x=0x3A0, y=0x1D0, bound_x=0x320, bound_y=0x1D0, bound_tile_width=0x14, bound_tile_height=0xC
	enemy_chuchu x=0x3A0, y=0x250, bound_x=0x330, bound_y=0x200, bound_tile_width=0x12, bound_tile_height=0xE
	enemy_chuchu x=0x340, y=0x270, bound_x=0x320, bound_y=0x240, bound_tile_width=0x20, bound_tile_height=0x12
	enemy_chuchu x=0x380, y=0x2E0, bound_x=0x350, bound_y=0x2B0, bound_tile_width=0xC, bound_tile_height=0xA
	enemy_chuchu x=0x1A8, y=0x2C8, bound_x=0x190, bound_y=0x2B0, bound_tile_width=0xE, bound_tile_height=0x6
	enemy_chuchu x=0x280, y=0x2F0, bound_x=0x240, bound_y=0x2C0, bound_tile_width=0xC, bound_tile_height=0xE
	enemy_chuchu x=0x3B0, y=0x100, bound_x=0x390, bound_y=0xE0, bound_tile_width=0x6, bound_tile_height=0x14
	enemy_chuchu x=0x248, y=0x2D8, bound_x=0x0, bound_y=0x0, bound_tile_width=0x0, bound_tile_height=0x0
	enemy_tree_item x=0x120, y=0x60, unknown=0x5
	enemy_tree_item x=0xE0, y=0xB0, unknown=0x6
	enemy_tree_item x=0x190, y=0x1A0, unknown=0x7
	enemy_tree_item x=0x1B0, y=0x1E0, unknown=0x8
	enemy_tree_item x=0x250, y=0x180, unknown=0x9
	enemy_tree_item x=0x280, y=0x1C0, unknown=0xA
	enemy_tree_item x=0x380, y=0x210, unknown=0xB
	enemy_tree_item x=0x370, y=0x290, unknown=0xC
	entity_list_end

gUnk_080F50B0:: @ 080F50B0
	.incbin "data_080D5360/gUnk_080F50B0.bin"

gUnk_080F50F8:: @ 080F50F8
	.incbin "data_080D5360/gUnk_080F50F8.bin"

gUnk_080F5120:: @ 080F5120
	.incbin "data_080D5360/gUnk_080F5120.bin"

gUnk_080F5134:: @ 080F5134
	.incbin "data_080D5360/gUnk_080F5134.bin"

gUnk_080F5148:: @ 080F5148
	.incbin "data_080D5360/gUnk_080F5148.bin"

gUnk_080F515C:: @ 080F515C
	.incbin "data_080D5360/gUnk_080F515C.bin"

gUnk_080F5170:: @ 080F5170
	.incbin "data_080D5360/gUnk_080F5170.bin"

gUnk_080F5180:: @ 080F5180
	.incbin "data_080D5360/gUnk_080F5180.bin"

gUnk_080F5194:: @ 080F5194
	.incbin "data_080D5360/gUnk_080F5194.bin"

gUnk_080F51B2:: @ 080F51B2
	.incbin "data_080D5360/gUnk_080F51B2.bin"

gUnk_080F51D0:: @ 080F51D0
	.incbin "data_080D5360/gUnk_080F51D0.bin"

gUnk_080F51F0:: @ 080F51F0
	.incbin "data_080D5360/gUnk_080F51F0.bin"

gRoomTiles_MinishWoods_0:: @ 080F5220
.ifdef JP
	.byte 0x0A, 0x01, 0x35, 0x00, 0x0A, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x36, 0x00, 0x0B, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x37, 0x00, 0x83, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x38, 0x00, 0x84, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x39, 0x00, 0x85, 0x0D, 0x1D, 0x00
.else
.ifdef DEMO_JP @ TODO deduplicate
	.byte 0x0A, 0x01, 0x35, 0x00, 0x0A, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x36, 0x00, 0x0B, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x37, 0x00, 0x83, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x38, 0x00, 0x84, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x39, 0x00, 0x85, 0x0D, 0x1D, 0x00
.else
.ifdef EU
	.byte 0x0A, 0x01, 0x35, 0x00, 0x0A, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x36, 0x00, 0x0B, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x37, 0x00, 0x83, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x38, 0x00, 0x84, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x39, 0x00, 0x85, 0x0D, 0x1D, 0x00
.else
	.byte 0x0A, 0x01, 0x36, 0x00, 0x0A, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x37, 0x00, 0x0B, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x38, 0x00, 0x83, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x39, 0x00, 0x84, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x3A, 0x00, 0x85, 0x0D, 0x1D, 0x00
.endif
.endif
.endif
	.byte 0x05, 0x00, 0x00, 0x05, 0x6A, 0x01, 0x05, 0x06
.ifdef JP
	.byte 0x05, 0x00, 0x00, 0x17, 0xDB, 0x03, 0x17, 0x06
.else
.ifdef EU
	.byte 0x05, 0x00, 0x00, 0x17, 0xDB, 0x03, 0x17, 0x06
.else
	.byte 0x05, 0x00, 0x00, 0x1F, 0xDB, 0x03, 0x1F, 0x06
.endif
.endif
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

Room_MinishWoods_Main:: @ 080F5260
	.4byte gEntities_MinishWoods_0
	.4byte gManagers_MinishWoods_0
	.4byte gRoomEnemies_MinishWoods_0
	.4byte gRoomTiles_MinishWoods_0
	.4byte sub_0804EC98
	.4byte 0x00000000
	.4byte sub_0804EBDC
	.4byte sub_0804EC00
	.4byte gUnk_080F50F8
	.4byte gUnk_080F5120
	.4byte gUnk_080F5134
	.4byte gUnk_080F5148
	.4byte gUnk_080F515C
	.4byte gUnk_080F5170
	.4byte gUnk_080F5180
	.4byte 0x00000000
	.4byte gUnk_080F51F0
	.4byte gUnk_080F50B0
	.4byte gUnk_080F5194
	.4byte gUnk_080F51B2

gUnk_080F52B0:: @ 080F52B0
	.incbin "data_080D5360/gUnk_080F52B0.bin"

gUnk_080F52C0:: @ 080F52C0
	.incbin "data_080D5360/gUnk_080F52C0.bin"

gUnk_080F52D0:: @ 080F52D0
	.incbin "data_080D5360/gUnk_080F52D0.bin"

Room_Empty_Main:: @ 080F52D8
	.4byte gUnk_080F52B0
	.4byte 0x00000000
	.4byte gUnk_080F52C0
	.4byte gUnk_080F52D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804ECB4
	.4byte nullsub_396

gUnk_080F52F8:: @ 080F52F8
	.incbin "data_080D5360/gUnk_080F52F8.bin"

gUnk_080F5308:: @ 080F5308
	.incbin "data_080D5360/gUnk_080F5308.bin"
	.4byte script_08012D70
	.incbin "data_080D5360/gUnk_080F5308_1.bin"

gUnk_080F5328:: @ 080F5328
	.incbin "data_080D5360/gUnk_080F5328.bin"

gUnk_080F5348:: @ 080F5348
	.incbin "data_080D5360/gUnk_080F5348.bin"
	.4byte script_0800AB08
	.incbin "data_080D5360/gUnk_080F5348_1.bin"
	.4byte script_0800AD74
	.incbin "data_080D5360/gUnk_080F5348_2.bin"
	.4byte script_0800AEA4
	.incbin "data_080D5360/gUnk_080F5348_3.bin"

gUnk_080F5398:: @ 080F5398
	.incbin "data_080D5360/gUnk_080F5398.bin"

gUnk_080F53A8:: @ 080F53A8
	.incbin "data_080D5360/gUnk_080F53A8.bin"

gUnk_080F53B8:: @ 080F53B8
	.incbin "data_080D5360/gUnk_080F53B8.bin"

Room_SanctuaryEntrance_Main:: @ 080F53C0
	.4byte gUnk_080F52F8
	.4byte gUnk_080F5398
	.4byte gUnk_080F53A8
	.4byte gUnk_080F53B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804ECBC
	.4byte sub_0804ECEC

gUnk_080F53E0:: @ 080F53E0
.ifdef EU
	.incbin "data_080D5360/gUnk_080F53E0_EU.bin"
	.incbin "data_080D5360/gUnk_080F53E0_1_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F53E0_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F5410:: @ 080F5410
	.incbin "data_080D5360/gUnk_080F5410.bin"

gUnk_080F5420:: @ 080F5420
	.incbin "data_080D5360/gUnk_080F5420.bin"

Room_Sanctuary_Hall:: @ 080F5428
	.4byte gUnk_080F53E0
	.4byte 0x00000000
	.4byte gUnk_080F5410
	.4byte gUnk_080F5420
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804ED30
	.4byte sub_0804ED34

gUnk_080F5448:: @ 080F5448
	.incbin "data_080D5360/gUnk_080F5448.bin"
	.4byte script_08013BE8
	.incbin "data_080D5360/gUnk_080F5448_1.bin"
	.4byte script_08013F94
	.incbin "data_080D5360/gUnk_080F5448_2.bin"
	.4byte script_08013FE8
	.incbin "data_080D5360/gUnk_080F5448_3.bin"
	.4byte script_08013B18
.ifdef EU
	.incbin "data_080D5360/gUnk_080F5448_4_EU.bin"
	.incbin "data_080D5360/gUnk_080F5448_5_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F5448_6_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F54E8:: @ 080F54E8
	.incbin "data_080D5360/gUnk_080F54E8.bin"
	.4byte script_08013CA4
	.incbin "data_080D5360/gUnk_080F54E8_1.bin"

gUnk_080F5508:: @ 080F5508
	.incbin "data_080D5360/gUnk_080F5508.bin"
	.4byte script_080134DC
	.incbin "data_080D5360/gUnk_080F5508_1.bin"

gUnk_080F5528:: @ 080F5528
	.incbin "data_080D5360/gUnk_080F5528.bin"
	.4byte script_08013E94
	.incbin "data_080D5360/gUnk_080F5528_1.bin"
	.4byte script_08013EB0
	.incbin "data_080D5360/gUnk_080F5528_2.bin"

gUnk_080F5558:: @ 080F5558
	.incbin "data_080D5360/gUnk_080F5558.bin"
	.4byte script_08013720
	.incbin "data_080D5360/gUnk_080F5558_1.bin"

gUnk_080F5578:: @ 080F5578
	.incbin "data_080D5360/gUnk_080F5578.bin"
	.4byte script_08013ECC
	.incbin "data_080D5360/gUnk_080F5578_1.bin"

gUnk_080F5598:: @ 080F5598
	.incbin "data_080D5360/gUnk_080F5598.bin"
	.4byte script_080138B4
	.incbin "data_080D5360/gUnk_080F5598_1.bin"

gUnk_080F55B8:: @ 080F55B8
	.incbin "data_080D5360/gUnk_080F55B8.bin"
	.4byte script_08013EE8
	.incbin "data_080D5360/gUnk_080F55B8_1.bin"

gUnk_080F55D8:: @ 080F55D8
	.incbin "data_080D5360/gUnk_080F55D8.bin"

gUnk_080F55F8:: @ 080F55F8
	.incbin "data_080D5360/gUnk_080F55F8.bin"

gUnk_080F5608:: @ 080F5608
	.incbin "data_080D5360/gUnk_080F5608.bin"

Room_Sanctuary_Main:: @ 080F5610
	.4byte gUnk_080F5448
	.4byte 0x00000000
	.4byte gUnk_080F55F8
	.4byte gUnk_080F5608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804ED58
	.4byte sub_0804ED5C

gUnk_080F5630:: @ 080F5630
.ifdef EU
	.incbin "data_080D5360/gUnk_080F5630_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F5630_1_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte script_08014274
	.incbin "data_080D5360/gUnk_080F5630_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F5660:: @ 080F5660
	.incbin "data_080D5360/gUnk_080F5660.bin"
	.4byte script_080131AC
	.incbin "data_080D5360/gUnk_080F5660_1.bin"

gUnk_080F5680:: @ 080F5680
	.incbin "data_080D5360/gUnk_080F5680.bin"
	.4byte script_080133C4
	.incbin "data_080D5360/gUnk_080F5680_1.bin"
	.4byte script_080133F8
	.incbin "data_080D5360/gUnk_080F5680_2.bin"

gUnk_080F56B0:: @ 080F56B0
	.incbin "data_080D5360/gUnk_080F56B0.bin"

gUnk_080F5700:: @ 080F5700
	.incbin "data_080D5360/gUnk_080F5700.bin"

gUnk_080F5710:: @ 080F5710
	.incbin "data_080D5360/gUnk_080F5710.bin"

Room_Sanctuary_StainedGlass:: @ 080F5718
	.4byte gUnk_080F5630
	.4byte gUnk_080F56B0
	.4byte gUnk_080F5700
	.4byte gUnk_080F5710
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EE74
	.4byte sub_0804EE78

gUnk_080F5738:: @ 080F5738
	.incbin "data_080D5360/gUnk_080F5738.bin"

gUnk_080F5758:: @ 080F5758
	.incbin "data_080D5360/gUnk_080F5758.bin"

gUnk_080F5788:: @ 080F5788
	.incbin "data_080D5360/gUnk_080F5788.bin"

gUnk_080F57A8:: @ 080F57A8
	.incbin "data_080D5360/gUnk_080F57A8.bin"

gUnk_080F57C8:: @ 080F57C8
	.incbin "data_080D5360/gUnk_080F57C8.bin"

gUnk_080F57E8:: @ 080F57E8
	.incbin "data_080D5360/gUnk_080F57E8.bin"

gUnk_080F5828:: @ 080F5828
	.incbin "data_080D5360/gUnk_080F5828.bin"

gUnk_080F5848:: @ 080F5848
	.incbin "data_080D5360/gUnk_080F5848.bin"

gUnk_080F5868:: @ 080F5868
	.incbin "data_080D5360/gUnk_080F5868.bin"

gUnk_080F5888:: @ 080F5888
	.incbin "data_080D5360/gUnk_080F5888.bin"

gUnk_080F58A8:: @ 080F58A8
.ifndef EU
	.incbin "data_080D5360/gUnk_080F58A8_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F58C8:: @ 080F58C8
	.incbin "data_080D5360/gUnk_080F58C8.bin"

gUnk_080F5908:: @ 080F5908
	.incbin "data_080D5360/gUnk_080F5908.bin"

gUnk_080F5918:: @ 080F5918
	.incbin "data_080D5360/gUnk_080F5918.bin"

gUnk_080F5920:: @ 080F5920
	.incbin "data_080D5360/gUnk_080F5920.bin"

Room_HouseInteriors3_StockwellShop:: @ 080F5934
	.4byte gUnk_080F5738
	.4byte gUnk_080F58C8
	.4byte gUnk_080F5908
	.4byte gUnk_080F5918
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EEB8
	.4byte sub_0804EEBC
	.4byte gUnk_080F5920

gUnk_080F5958:: @ 080F5958
	.incbin "data_080D5360/gUnk_080F5958.bin"
	.4byte script_0800E920
	.incbin "data_080D5360/gUnk_080F5958_1.bin"
	.4byte script_0800ED04
	.incbin "data_080D5360/gUnk_080F5958_2.bin"
	.4byte script_0800ED04
	.incbin "data_080D5360/gUnk_080F5958_3.bin"
	.4byte script_080100FC
	.incbin "data_080D5360/gUnk_080F5958_4.bin"
	.4byte script_0800EC8C
	.incbin "data_080D5360/gUnk_080F5958_5.bin"
	.4byte script_08010BB4
	.incbin "data_080D5360/gUnk_080F5958_6.bin"

gUnk_080F59E8:: @ 080F59E8
	.incbin "data_080D5360/gUnk_080F59E8.bin"

gUnk_080F5A78:: @ 080F5A78
	.incbin "data_080D5360/gUnk_080F5A78.bin"

gUnk_080F5A88:: @ 080F5A88
	.incbin "data_080D5360/gUnk_080F5A88.bin"

gUnk_080F5A90:: @ 080F5A90
	.incbin "data_080D5360/gUnk_080F5A90.bin"

gUnk_080F5AA4:: @ 080F5AA4
	.incbin "data_080D5360/gUnk_080F5AA4.bin"

gUnk_080F5AB8:: @ 080F5AB8
	.incbin "data_080D5360/gUnk_080F5AB8.bin"

gUnk_080F5ACC:: @ 080F5ACC
	.incbin "data_080D5360/gUnk_080F5ACC.bin"

Room_HouseInteriors3_Cafe:: @ 080F5ADC
	.4byte gUnk_080F5958
	.4byte gUnk_080F59E8
	.4byte gUnk_080F5A78
	.4byte gUnk_080F5A88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EFB0
	.4byte nullsub_397
	.4byte gUnk_080F5A90
	.4byte gUnk_080F5AA4
	.4byte gUnk_080F5AB8
	.4byte gUnk_080F5ACC

gUnk_080F5B0C:: @ 080F5B0C
	.incbin "data_080D5360/gUnk_080F5B0C.bin"

gUnk_080F5B3C:: @ 080F5B3C
.ifndef EU
	.incbin "data_080D5360/gUnk_080F5B3C_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F5B5C:: @ 080F5B5C
	.incbin "data_080D5360/gUnk_080F5B5C.bin"

gUnk_080F5BAC:: @ 080F5BAC
	.incbin "data_080D5360/gUnk_080F5BAC.bin"

gUnk_080F5BBC:: @ 080F5BBC
	.incbin "data_080D5360/gUnk_080F5BBC.bin"

.ifdef EU
gUnk_080F5168::
	.incbin "data_080D5360/gUnk_080F5168_EU.bin"
.endif

gUnk_080F5BC4:: @ 080F5BC4
	.incbin "data_080D5360/gUnk_080F5BC4.bin"

gUnk_080F5BD4:: @ 080F5BD4
	.incbin "data_080D5360/gUnk_080F5BD4.bin"

Room_HouseInteriors3_RemShoeShop:: @ 080F5BE8
	.4byte gUnk_080F5B0C
	.4byte gUnk_080F5B5C
	.4byte gUnk_080F5BAC
	.4byte gUnk_080F5BBC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EFB8
	.4byte sub_0804EFBC
	.4byte gUnk_080F5BC4
	.4byte gUnk_080F5BD4
.ifdef EU
	.4byte gUnk_080F5168
.endif

gUnk_080F5C10:: @ 080F5C10
	.incbin "data_080D5360/gUnk_080F5C10.bin"
	.4byte script_08010674
	.incbin "data_080D5360/gUnk_080F5C10_1.bin"
	.4byte script_080106AC
	.incbin "data_080D5360/gUnk_080F5C10_2.bin"
	.4byte script_0800EBDC
	.incbin "data_080D5360/gUnk_080F5C10_3.bin"

gUnk_080F5C70:: @ 080F5C70
	.incbin "data_080D5360/gUnk_080F5C70.bin"

gUnk_080F5D30:: @ 080F5D30
	.incbin "data_080D5360/gUnk_080F5D30.bin"

gUnk_080F5D40:: @ 080F5D40
	.incbin "data_080D5360/gUnk_080F5D40.bin"

gUnk_080F5D48:: @ 080F5D48
	.incbin "data_080D5360/gUnk_080F5D48.bin"

gUnk_080F5D5C:: @ 080F5D5C
	.incbin "data_080D5360/gUnk_080F5D5C.bin"

gUnk_080F5D70:: @ 080F5D70
	.incbin "data_080D5360/gUnk_080F5D70.bin"

Room_HouseInteriors3_Bakery:: @ 080F5D84
	.4byte gUnk_080F5C10
	.4byte gUnk_080F5C70
	.4byte gUnk_080F5D30
	.4byte gUnk_080F5D40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EFD4
	.4byte nullsub_398
	.4byte gUnk_080F5D48
	.4byte gUnk_080F5D5C
	.4byte gUnk_080F5D70

gUnk_080F5DB0:: @ 080F5DB0
	.incbin "data_080D5360/gUnk_080F5DB0.bin"
	.4byte script_08011B40
	.incbin "data_080D5360/gUnk_080F5DB0_1.bin"

gUnk_080F5DD0:: @ 080F5DD0
	.incbin "data_080D5360/gUnk_080F5DD0.bin"
	.4byte script_080103B0
	.incbin "data_080D5360/gUnk_080F5DD0_1.bin"

gUnk_080F5DF0:: @ 080F5DF0
	.incbin "data_080D5360/gUnk_080F5DF0.bin"

gUnk_080F5E10:: @ 080F5E10
	.incbin "data_080D5360/gUnk_080F5E10.bin"

gUnk_080F5E20:: @ 080F5E20
	.incbin "data_080D5360/gUnk_080F5E20.bin"

Room_HouseInteriors3_Simon:: @ 080F5E28
	.4byte gUnk_080F5DB0
	.4byte gUnk_080F5DF0
	.4byte gUnk_080F5E10
	.4byte gUnk_080F5E20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EFDC
	.4byte sub_0804EFF8

gUnk_080F5E48:: @ 080F5E48
	.incbin "data_080D5360/gUnk_080F5E48.bin"

gUnk_080F5E68:: @ 080F5E68
	.incbin "data_080D5360/gUnk_080F5E68.bin"

gUnk_080F5E88:: @ 080F5E88
	.incbin "data_080D5360/gUnk_080F5E88.bin"
	.4byte script_0800BA3C
	.incbin "data_080D5360/gUnk_080F5E88_1.bin"

gUnk_080F5EC8:: @ 080F5EC8
	.incbin "data_080D5360/gUnk_080F5EC8.bin"

gUnk_080F5ED8:: @ 080F5ED8
	.incbin "data_080D5360/gUnk_080F5ED8.bin"

Room_HouseInteriors3_FigurineHouse:: @ 080F5EF8
	.4byte gUnk_080F5E48
	.4byte gUnk_080F5E88
	.4byte gUnk_080F5EC8
	.4byte gUnk_080F5ED8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F02C
	.4byte sub_0804F030

gUnk_080F5F18:: @ 080F5F18
	.incbin "data_080D5360/gUnk_080F5F18.bin"
	.4byte script_08014548
	.incbin "data_080D5360/gUnk_080F5F18_1.bin"

gUnk_080F5F38:: @ 080F5F38
	.incbin "data_080D5360/gUnk_080F5F38.bin"
	.4byte script_080100C8
	.incbin "data_080D5360/gUnk_080F5F38_1.bin"

gUnk_080F5F58:: @ 080F5F58
	.incbin "data_080D5360/gUnk_080F5F58.bin"
	.4byte script_08014450
	.incbin "data_080D5360/gUnk_080F5F58_1.bin"

gUnk_080F5F78:: @ 080F5F78
	.incbin "data_080D5360/gUnk_080F5F78.bin"
	.4byte script_0801450C
	.incbin "data_080D5360/gUnk_080F5F78_1.bin"

gUnk_080F5F98:: @ 080F5F98
	.incbin "data_080D5360/gUnk_080F5F98.bin"

gUnk_080F5FD8:: @ 080F5FD8
	.incbin "data_080D5360/gUnk_080F5FD8.bin"

gUnk_080F5FE8:: @ 080F5FE8
	.incbin "data_080D5360/gUnk_080F5FE8.bin"

Room_HouseInteriors3_BorlovEntrance:: @ 080F5FF0
	.4byte gUnk_080F5F18
	.4byte gUnk_080F5F98
	.4byte gUnk_080F5FD8
	.4byte gUnk_080F5FE8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F04C
	.4byte sub_0804F050
	.4byte gUnk_080F5F38
	.4byte gUnk_080F5F58
	.4byte gUnk_080F5F78

gUnk_080F601C:: @ 080F601C
	.incbin "data_080D5360/gUnk_080F601C.bin"
	.4byte script_08014628
	.incbin "data_080D5360/gUnk_080F601C_1.bin"
	.4byte script_080145B0
	.incbin "data_080D5360/gUnk_080F601C_2.bin"
	.4byte script_080145E8
	.incbin "data_080D5360/gUnk_080F601C_3.bin"

gUnk_080F606C:: @ 080F606C
	.incbin "data_080D5360/gUnk_080F606C.bin"

gUnk_080F60AC:: @ 080F60AC
	.incbin "data_080D5360/gUnk_080F60AC.bin"

gUnk_080F60BC:: @ 080F60BC
	.incbin "data_080D5360/gUnk_080F60BC.bin"

Room_HouseInteriors3_Carlov:: @ 080F60C4
	.4byte gUnk_080F601C
	.4byte gUnk_080F606C
	.4byte gUnk_080F60AC
	.4byte gUnk_080F60BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F08C
	.4byte nullsub_399

gUnk_080F60E4:: @ 080F60E4
	.incbin "data_080D5360/gUnk_080F60E4.bin"
	.4byte script_08014804
	.incbin "data_080D5360/gUnk_080F60E4_1.bin"
	.4byte script_080148F0
	.incbin "data_080D5360/gUnk_080F60E4_2.bin"

gUnk_080F6114:: @ 080F6114
	.incbin "data_080D5360/gUnk_080F6114.bin"

gUnk_080F6144:: @ 080F6144
	.incbin "data_080D5360/gUnk_080F6144.bin"

gUnk_080F6154:: @ 080F6154
	.incbin "data_080D5360/gUnk_080F6154.bin"

Room_HouseInteriors3_Borlov:: @ 080F615C
	.4byte gUnk_080F60E4
	.4byte gUnk_080F6114
	.4byte gUnk_080F6144
	.4byte gUnk_080F6154
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F094
	.4byte nullsub_400

gUnk_080F617C:: @ 080F617C
	.incbin "data_080D5360/gUnk_080F617C.bin"
	.4byte script_08014958
	.incbin "data_080D5360/gUnk_080F617C_1.bin"
	.4byte script_08014994
	.incbin "data_080D5360/gUnk_080F617C_2.bin"

gUnk_080F61BC:: @ 080F61BC
	.incbin "data_080D5360/gUnk_080F61BC.bin"

gUnk_080F61DC:: @ 080F61DC
	.incbin "data_080D5360/gUnk_080F61DC.bin"

gUnk_080F625C:: @ 080F625C
	.incbin "data_080D5360/gUnk_080F625C.bin"

gUnk_080F626C:: @ 080F626C
	.incbin "data_080D5360/gUnk_080F626C.bin"

Room_WindTribeTower_Entrance:: @ 080F6284
	.4byte gUnk_080F617C
	.4byte gUnk_080F61DC
	.4byte gUnk_080F625C
	.4byte gUnk_080F626C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F09C
	.4byte sub_0804F0C0

gUnk_080F62A4:: @ 080F62A4
	.incbin "data_080D5360/gUnk_080F62A4.bin"
	.4byte script_08014A54
	.incbin "data_080D5360/gUnk_080F62A4_1.bin"

gUnk_080F62E4:: @ 080F62E4
	.incbin "data_080D5360/gUnk_080F62E4.bin"
	.4byte script_08014B34
	.incbin "data_080D5360/gUnk_080F62E4_1.bin"
	.4byte script_08014A28
	.incbin "data_080D5360/gUnk_080F62E4_2.bin"

gUnk_080F6324:: @ 080F6324
	.incbin "data_080D5360/gUnk_080F6324.bin"
	.4byte script_08014C2C
	.incbin "data_080D5360/gUnk_080F6324_1.bin"

gUnk_080F6344:: @ 080F6344
	.incbin "data_080D5360/gUnk_080F6344.bin"

gUnk_080F63A4:: @ 080F63A4
	.incbin "data_080D5360/gUnk_080F63A4.bin"

gUnk_080F63B4:: @ 080F63B4
	.incbin "data_080D5360/gUnk_080F63B4.bin"

Room_WindTribeTower_Floor2:: @ 080F63C4
	.4byte gUnk_080F62A4
	.4byte gUnk_080F6344
	.4byte gUnk_080F63A4
	.4byte gUnk_080F63B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F128
	.4byte sub_0804F12C

gUnk_080F63E4:: @ 080F63E4
	.incbin "data_080D5360/gUnk_080F63E4.bin"
	.4byte script_08014A28
	.incbin "data_080D5360/gUnk_080F63E4_1.bin"

gUnk_080F6454:: @ 080F6454
	.incbin "data_080D5360/gUnk_080F6454.bin"

gUnk_080F64B4:: @ 080F64B4
	.incbin "data_080D5360/gUnk_080F64B4.bin"

gUnk_080F64C4:: @ 080F64C4
	.incbin "data_080D5360/gUnk_080F64C4.bin"

Room_WindTribeTower_Floor3:: @ 080F64E4
	.4byte gUnk_080F63E4
	.4byte gUnk_080F6454
	.4byte gUnk_080F64B4
	.4byte gUnk_080F64C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F15C
	.4byte nullsub_401

gUnk_080F6504:: @ 080F6504
	.incbin "data_080D5360/gUnk_080F6504.bin"
	.4byte script_08014AC4
	.incbin "data_080D5360/gUnk_080F6504_1.bin"

gUnk_080F6564:: @ 080F6564
	.incbin "data_080D5360/gUnk_080F6564.bin"
	.4byte script_080149CC
	.incbin "data_080D5360/gUnk_080F6564_1.bin"

gUnk_080F6584:: @ 080F6584
	.incbin "data_080D5360/gUnk_080F6584.bin"
	.4byte script_080149CC
	.incbin "data_080D5360/gUnk_080F6584_1.bin"

gUnk_080F65A4:: @ 080F65A4
	.incbin "data_080D5360/gUnk_080F65A4.bin"

gUnk_080F6604:: @ 080F6604
	.incbin "data_080D5360/gUnk_080F6604.bin"

gUnk_080F6614:: @ 080F6614
	.incbin "data_080D5360/gUnk_080F6614.bin"

Room_WindTribeTower_Floor4:: @ 080F662C
	.4byte gUnk_080F6504
	.4byte gUnk_080F65A4
	.4byte gUnk_080F6604
	.4byte gUnk_080F6614
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F164
	.4byte sub_0804F168

gUnk_080F664C:: @ 080F664C
	.incbin "data_080D5360/gUnk_080F664C.bin"

gUnk_080F66AC:: @ 080F66AC
	.incbin "data_080D5360/gUnk_080F66AC.bin"
	.4byte script_0800AFE8
	.incbin "data_080D5360/gUnk_080F66AC_1.bin"

gUnk_080F66CC:: @ 080F66CC
	.incbin "data_080D5360/gUnk_080F66CC.bin"

gUnk_080F679C:: @ 080F679C
	.incbin "data_080D5360/gUnk_080F679C.bin"

gUnk_080F67AC:: @ 080F67AC
	.incbin "data_080D5360/gUnk_080F67AC.bin"

Area_WindTribeTowerRoof_Main:: @ 080F67BC
	.4byte gUnk_080F664C
	.4byte gUnk_080F66CC
	.4byte gUnk_080F679C
	.4byte gUnk_080F67AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F18C
	.4byte sub_0804F190

gUnk_080F67DC:: @ 080F67DC
	.incbin "data_080D5360/gUnk_080F67DC.bin"

gUnk_080F687C:: @ 080F687C
	.incbin "data_080D5360/gUnk_080F687C.bin"

gUnk_080F68DC:: @ 080F68DC
	.incbin "data_080D5360/gUnk_080F68DC.bin"

gUnk_080F68EC:: @ 080F68EC
	.incbin "data_080D5360/gUnk_080F68EC.bin"

Room_Beanstalks_MountCrenel:: @ 080F68FC
	.4byte gUnk_080F67DC
	.4byte gUnk_080F687C
	.4byte gUnk_080F68DC
	.4byte gUnk_080F68EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1DC
	.4byte nullsub_402

gUnk_080F691C:: @ 080F691C
	.incbin "data_080D5360/gUnk_080F691C.bin"

gUnk_080F693C:: @ 080F693C
	.incbin "data_080D5360/gUnk_080F693C.bin"

gUnk_080F699C:: @ 080F699C
	.incbin "data_080D5360/gUnk_080F699C.bin"

gUnk_080F69AC:: @ 080F69AC
	.incbin "data_080D5360/gUnk_080F69AC.bin"

Room_Beanstalks_LakeHylia:: @ 080F69CC
	.4byte gUnk_080F691C
	.4byte gUnk_080F693C
	.4byte gUnk_080F699C
	.4byte gUnk_080F69AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1E4
	.4byte nullsub_403

gUnk_080F69EC:: @ 080F69EC
	.incbin "data_080D5360/gUnk_080F69EC.bin"

gUnk_080F6A0C:: @ 080F6A0C
	.incbin "data_080D5360/gUnk_080F6A0C.bin"

gUnk_080F6A6C:: @ 080F6A6C
	.incbin "data_080D5360/gUnk_080F6A6C.bin"

gUnk_080F6A7C:: @ 080F6A7C
	.incbin "data_080D5360/gUnk_080F6A7C.bin"

Room_Beanstalks_Ruins:: @ 080F6A94
	.4byte gUnk_080F69EC
	.4byte gUnk_080F6A0C
	.4byte gUnk_080F6A6C
	.4byte gUnk_080F6A7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1EC
	.4byte nullsub_404

gUnk_080F6AB4:: @ 080F6AB4
	.incbin "data_080D5360/gUnk_080F6AB4.bin"

gUnk_080F6AD4:: @ 080F6AD4
	.incbin "data_080D5360/gUnk_080F6AD4.bin"

gUnk_080F6B34:: @ 080F6B34
	.incbin "data_080D5360/gUnk_080F6B34.bin"

gUnk_080F6B44:: @ 080F6B44
	.incbin "data_080D5360/gUnk_080F6B44.bin"

Room_Beanstalks_EasternHills:: @ 080F6B64
	.4byte gUnk_080F6AB4
	.4byte gUnk_080F6AD4
	.4byte gUnk_080F6B34
	.4byte gUnk_080F6B44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1F4
	.4byte nullsub_405

gUnk_080F6B84:: @ 080F6B84
	.incbin "data_080D5360/gUnk_080F6B84.bin"

gUnk_080F6C94:: @ 080F6C94
	.incbin "data_080D5360/gUnk_080F6C94.bin"

gUnk_080F6CF4:: @ 080F6CF4
	.incbin "data_080D5360/gUnk_080F6CF4.bin"

gUnk_080F6D04:: @ 080F6D04
	.incbin "data_080D5360/gUnk_080F6D04.bin"

Room_Beanstalks_WesternWoods:: @ 080F6D1C
	.4byte gUnk_080F6B84
	.4byte gUnk_080F6C94
	.4byte gUnk_080F6CF4
	.4byte gUnk_080F6D04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1FC
	.4byte nullsub_406

gUnk_080F6D3C:: @ 080F6D3C
	.incbin "data_080D5360/gUnk_080F6D3C.bin"

gUnk_080F6D4C:: @ 080F6D4C
	.incbin "data_080D5360/gUnk_080F6D4C.bin"

gUnk_080F6D5C:: @ 080F6D5C
	.incbin "data_080D5360/gUnk_080F6D5C.bin"

gUnk_080F6D6C:: @ 080F6D6C
	.incbin "data_080D5360/gUnk_080F6D6C.bin"

Room_Beanstalks_MountCrenelClimb:: @ 080F6D7C
	.4byte gUnk_080F6D3C
	.4byte gUnk_080F6D4C
	.4byte gUnk_080F6D5C
	.4byte gUnk_080F6D6C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F204
	.4byte nullsub_407

gUnk_080F6D9C:: @ 080F6D9C
	.incbin "data_080D5360/gUnk_080F6D9C.bin"

gUnk_080F6DAC:: @ 080F6DAC
	.incbin "data_080D5360/gUnk_080F6DAC.bin"

gUnk_080F6DBC:: @ 080F6DBC
	.incbin "data_080D5360/gUnk_080F6DBC.bin"

gUnk_080F6DCC:: @ 080F6DCC
	.incbin "data_080D5360/gUnk_080F6DCC.bin"

Room_Beanstalks_LakeHyliaClimb:: @ 080F6DDC
	.4byte gUnk_080F6D9C
	.4byte gUnk_080F6DAC
	.4byte gUnk_080F6DBC
	.4byte gUnk_080F6DCC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F20C
	.4byte nullsub_408

gUnk_080F6DFC:: @ 080F6DFC
	.incbin "data_080D5360/gUnk_080F6DFC.bin"

gUnk_080F6E0C:: @ 080F6E0C
	.incbin "data_080D5360/gUnk_080F6E0C.bin"

gUnk_080F6E1C:: @ 080F6E1C
	.incbin "data_080D5360/gUnk_080F6E1C.bin"

gUnk_080F6E2C:: @ 080F6E2C
	.incbin "data_080D5360/gUnk_080F6E2C.bin"

Room_Beanstalks_RuinsClimb:: @ 080F6E3C
	.4byte gUnk_080F6DFC
	.4byte gUnk_080F6E0C
	.4byte gUnk_080F6E1C
	.4byte gUnk_080F6E2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F214
	.4byte nullsub_409

gUnk_080F6E5C:: @ 080F6E5C
	.incbin "data_080D5360/gUnk_080F6E5C.bin"

gUnk_080F6E6C:: @ 080F6E6C
	.incbin "data_080D5360/gUnk_080F6E6C.bin"

gUnk_080F6E7C:: @ 080F6E7C
	.incbin "data_080D5360/gUnk_080F6E7C.bin"

gUnk_080F6E8C:: @ 080F6E8C
	.incbin "data_080D5360/gUnk_080F6E8C.bin"

Room_Beanstalks_EasternHillsClimb:: @ 080F6E9C
	.4byte gUnk_080F6E5C
	.4byte gUnk_080F6E6C
	.4byte gUnk_080F6E7C
	.4byte gUnk_080F6E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F21C
	.4byte nullsub_410

gUnk_080F6EBC:: @ 080F6EBC
	.incbin "data_080D5360/gUnk_080F6EBC.bin"

gUnk_080F6ECC:: @ 080F6ECC
	.incbin "data_080D5360/gUnk_080F6ECC.bin"

gUnk_080F6EDC:: @ 080F6EDC
	.incbin "data_080D5360/gUnk_080F6EDC.bin"

gUnk_080F6EEC:: @ 080F6EEC
	.incbin "data_080D5360/gUnk_080F6EEC.bin"

Room_Beanstalks_WesternWoodsClimb:: @ 080F6EFC
	.4byte gUnk_080F6EBC
	.4byte gUnk_080F6ECC
	.4byte gUnk_080F6EDC
	.4byte gUnk_080F6EEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F224
	.4byte nullsub_411

gUnk_080F6F1C:: @ 080F6F1C
	.incbin "data_080D5360/gUnk_080F6F1C.bin"

gUnk_080F6F2C:: @ 080F6F2C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F6F2C_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F6F2C_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F6F2C_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F6F2C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F6F7C:: @ 080F6F7C
.ifdef EU
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F6F7C_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F6F7C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F6FBC:: @ 080F6FBC
	.incbin "data_080D5360/gUnk_080F6FBC.bin"

gUnk_080F6FCC:: @ 080F6FCC
	.incbin "data_080D5360/gUnk_080F6FCC.bin"

gUnk_080F6FDC:: @ 080F6FDC
	.incbin "data_080D5360/gUnk_080F6FDC.bin"

Room_HyruleField_WesternWoodSouth:: @ 080F6FF0
	.4byte gUnk_080F6F1C
	.4byte gUnk_080F6F2C
	.4byte gUnk_080F6F7C
	.4byte gUnk_080F6FBC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F22C
	.4byte sub_0804F230
	.4byte gUnk_080F6FCC
	.4byte gUnk_080F6FDC

gUnk_080F7018:: @ 080F7018
	.incbin "data_080D5360/gUnk_080F7018.bin"

gUnk_080F7088:: @ 080F7088
	.incbin "data_080D5360/gUnk_080F7088.bin"
	.4byte script_080168F4
	.incbin "data_080D5360/gUnk_080F7088_1.bin"

gUnk_080F70A8:: @ 080F70A8
	.incbin "data_080D5360/gUnk_080F70A8.bin"
	.4byte script_08014CDC
	.incbin "data_080D5360/gUnk_080F70A8_1.bin"
	.4byte script_08014DCC
	.incbin "data_080D5360/gUnk_080F70A8_2.bin"

gUnk_080F70D8:: @ 080F70D8
	.incbin "data_080D5360/gUnk_080F70D8.bin"
	.4byte script_0800B00C
	.incbin "data_080D5360/gUnk_080F70D8_1.bin"

gUnk_080F70F8:: @ 080F70F8
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F70F8_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F70F8_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F70F8_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F70F8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F7158:: @ 080F7158
	.incbin "data_080D5360/gUnk_080F7158.bin"

gUnk_080F7218:: @ 080F7218
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F7218_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F7218_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F7218_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F7218_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F72A0:: @ 080F72A0
	.incbin "data_080D5360/gUnk_080F72A0.bin"

gUnk_080F72B0:: @ 080F72B0
	.incbin "data_080D5360/gUnk_080F72B0.bin"

Room_HyruleField_LinksHouseExterior:: @ 080F72C4
	.4byte gUnk_080F7018
	.4byte gUnk_080F70F8
	.4byte gUnk_080F7158
	.4byte gUnk_080F7218
	.4byte sub_0804F2C8
	.4byte 0x00000000
	.4byte sub_0804F23C
	.4byte sub_0804F25C
	.4byte gUnk_080F72A0
	.4byte gUnk_080F72B0

gUnk_080F72EC:: @ 080F72EC
	.incbin "data_080D5360/gUnk_080F72EC.bin"

gUnk_080F731C:: @ 080F731C
	.incbin "data_080D5360/gUnk_080F731C.bin"

gUnk_080F734C:: @ 080F734C
	.incbin "data_080D5360/gUnk_080F734C.bin"

gUnk_080F738C:: @ 080F738C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F738C_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F738C_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F738C_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F738C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

Room_HyruleField_FromMinishWoods:: @ 080F73AC
	.4byte gUnk_080F72EC
	.4byte gUnk_080F731C
	.4byte gUnk_080F734C
	.4byte gUnk_080F738C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F2E8
	.4byte sub_0804F2EC

gUnk_080F73CC:: @ 080F73CC
	.incbin "data_080D5360/gUnk_080F73CC.bin"

gUnk_080F73DC:: @ 080F73DC
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F73DC_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F73DC_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F73DC_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F73DC_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F741C:: @ 080F741C
	.incbin "data_080D5360/gUnk_080F741C.bin"

gUnk_080F748C:: @ 080F748C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F748C_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F748C_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F748C_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F748C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F74A4:: @ 080F74A4
	.incbin "data_080D5360/gUnk_080F74A4.bin"

gUnk_080F74B4:: @ 080F74B4
	.incbin "data_080D5360/gUnk_080F74B4.bin"

Room_HyruleField_FromMinishWoodsNorth:: @ 080F74C8
	.4byte gUnk_080F73CC
	.4byte gUnk_080F73DC
	.4byte gUnk_080F741C
	.4byte gUnk_080F748C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F2F8
	.4byte sub_0804F2FC
	.4byte gUnk_080F74A4
	.4byte gUnk_080F74B4

gUnk_080F74F0:: @ 080F74F0
	.incbin "data_080D5360/gUnk_080F74F0.bin"

gUnk_080F7500:: @ 080F7500
	.incbin "data_080D5360/gUnk_080F7500.bin"

gUnk_080F7520:: @ 080F7520
	.incbin "data_080D5360/gUnk_080F7520.bin"
	.4byte script_0800B0D0
	.incbin "data_080D5360/gUnk_080F7520_1.bin"
	.4byte script_0800B0D0
	.incbin "data_080D5360/gUnk_080F7520_2.bin"

gUnk_080F7550:: @ 080F7550
	.incbin "data_080D5360/gUnk_080F7550.bin"

gUnk_080F7570:: @ 080F7570
	.incbin "data_080D5360/gUnk_080F7570.bin"
	.4byte script_080094FC
	.incbin "data_080D5360/gUnk_080F7570_1.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F7570_2.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F7570_3.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F7570_4.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F7570_5.bin"

gUnk_080F75D0:: @ 080F75D0
	.incbin "data_080D5360/gUnk_080F75D0.bin"

gUnk_080F7610:: @ 080F7610
	.incbin "data_080D5360/gUnk_080F7610.bin"

gUnk_080F7680:: @ 080F7680
	.incbin "data_080D5360/gUnk_080F7680.bin"

gUnk_080F76C0:: @ 080F76C0
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F76C0_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F76C0_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F76C0_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F76C0_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

Room_HyruleField_Farmers:: @ 080F76F8
	.4byte gUnk_080F74F0
	.4byte gUnk_080F75D0
	.4byte gUnk_080F7610
	.4byte gUnk_080F76C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804f308
	.4byte sub_0804F330
	.4byte gUnk_080F7520
	.4byte gUnk_080F7570

gUnk_080F7720:: @ 080F7720
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F7720_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F7720_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F7720_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F7720_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F7770:: @ 080F7770
	.incbin "data_080D5360/gUnk_080F7770.bin"

gUnk_080F77C0:: @ 080F77C0
	.incbin "data_080D5360/gUnk_080F77C0.bin"
	.4byte script_0800B3A4
	.incbin "data_080D5360/gUnk_080F77C0_1.bin"
	.4byte script_0800B4AC
	.incbin "data_080D5360/gUnk_080F77C0_2.bin"

gUnk_080F77F0:: @ 080F77F0
	.incbin "data_080D5360/gUnk_080F77F0.bin"
	.4byte script_0800B5EC
	.incbin "data_080D5360/gUnk_080F77F0_1.bin"

gUnk_080F7810:: @ 080F7810
	.incbin "data_080D5360/gUnk_080F7810.bin"

gUnk_080F7830:: @ 080F7830
	.incbin "data_080D5360/gUnk_080F7830.bin"
	.4byte script_08014E14
	.incbin "data_080D5360/gUnk_080F7830_1.bin"
	.4byte script_08014E14
	.incbin "data_080D5360/gUnk_080F7830_2.bin"

gUnk_080F7860:: @ 080F7860
	.incbin "data_080D5360/gUnk_080F7860.bin"

gUnk_080F7880:: @ 080F7880
	.incbin "data_080D5360/gUnk_080F7880.bin"
	.4byte script_0800B9B4
	.incbin "data_080D5360/gUnk_080F7880_1.bin"

gUnk_080F78A0:: @ 080F78A0
.ifdef EU
	@ TODO only small differences
	.incbin "data_080D5360/gUnk_080F78A0_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F78A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F78C0:: @ 080F78C0
	.incbin "data_080D5360/gUnk_080F78C0.bin"
	.4byte script_080168F4
	.incbin "data_080D5360/gUnk_080F78C0_1.bin"

gUnk_080F78E0:: @ 080F78E0
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F78E0_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F78E0_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F78E0_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F78E0_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F79D0:: @ 080F79D0
.ifdef EU
	.incbin "data_080D5360/gUnk_080F79D0_EU.bin"
	.incbin "data_080D5360/gUnk_080F79D0_1_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F79D0_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F7A20:: @ 080F7A20
	.incbin "data_080D5360/gUnk_080F7A20.bin"
	.4byte script_0800B574
	.incbin "data_080D5360/gUnk_080F7A20_1.bin"

gUnk_080F7A44:: @ 080F7A44
	.incbin "data_080D5360/gUnk_080F7A44.bin"

gUnk_080F7AF4:: @ 080F7AF4
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F7AF4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F7AF4_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F7AF4_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F7AF4_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F7B3C:: @ 080F7B3C
	.incbin "data_080D5360/gUnk_080F7B3C.bin"

gUnk_080F7B54:: @ 080F7B54
	.incbin "data_080D5360/gUnk_080F7B54.bin"

gUnk_080F7B68:: @ 080F7B68
	.incbin "data_080D5360/gUnk_080F7B68.bin"

gUnk_080F7B7C:: @ 080F7B7C
	.incbin "data_080D5360/gUnk_080F7B7C.bin"

gUnk_080F7B90:: @ 080F7B90
	.incbin "data_080D5360/gUnk_080F7B90.bin"

Room_HyruleField_LonLonRanch:: @ 080F7BA4
	.4byte gUnk_080F7720
	.4byte gUnk_080F78E0
	.4byte gUnk_080F7A44
	.4byte gUnk_080F7AF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F3AC
	.4byte sub_0804F3B0
	.4byte gUnk_080F7B3C
	.4byte gUnk_080F7B54
	.4byte gUnk_080F7B68
	.4byte gUnk_080F7770
	.4byte gUnk_080F7830
	.4byte gUnk_080F7880
	.4byte gUnk_080F79D0
	.4byte gUnk_080F7B7C
	.4byte gUnk_080F7B90
	.4byte gUnk_080F7A20
	.4byte gUnk_080F78C0

EntityData_HyruleField_OutsideCastle:: @ 080F7BF0
	.incbin "data_080D5360/EntityData_HyruleField_OutsideCastle.bin"

ManagerData_HyruleField_OutsideCastle:: @ 080F7C00
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/ManagerData_HyruleField_OutsideCastle_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/ManagerData_HyruleField_OutsideCastle_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/ManagerData_HyruleField_OutsideCastle_2_EU.bin"
.else
	.incbin "data_080D5360/ManagerData_HyruleField_OutsideCastle_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F7C80:: @ 080F7C80
	.incbin "data_080D5360/gUnk_080F7C80.bin"
	.4byte script_08014FBC
	.incbin "data_080D5360/gUnk_080F7C80_1.bin"
	.4byte script_08015234
	.incbin "data_080D5360/gUnk_080F7C80_2.bin"

gUnk_080F7CB0:: @ 080F7CB0
	.incbin "data_080D5360/gUnk_080F7CB0.bin"
	.4byte script_08015390
	.incbin "data_080D5360/gUnk_080F7CB0_1.bin"

gUnk_080F7CD0:: @ 080F7CD0
	.incbin "data_080D5360/gUnk_080F7CD0.bin"

gUnk_080F7CF0:: @ 080F7CF0
	.incbin "data_080D5360/gUnk_080F7CF0.bin"
	.4byte script_080094FC
	.incbin "data_080D5360/gUnk_080F7CF0_1.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F7CF0_2.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F7CF0_3.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F7CF0_4.bin"
	.4byte script_08009574
	.incbin "data_080D5360/gUnk_080F7CF0_5.bin"
	.4byte script_08014E14
	.incbin "data_080D5360/gUnk_080F7CF0_6.bin"
	.4byte script_08014E14
	.incbin "data_080D5360/gUnk_080F7CF0_7.bin"

gUnk_080F7D70:: @ 080F7D70
	.incbin "data_080D5360/gUnk_080F7D70.bin"
	.4byte script_080157AC
	.incbin "data_080D5360/gUnk_080F7D70_1.bin"
	.4byte script_08015B34
	.incbin "data_080D5360/gUnk_080F7D70_2.bin"
	.4byte script_08015958
	.incbin "data_080D5360/gUnk_080F7D70_3.bin"

gUnk_080F7DC0:: @ 080F7DC0
	.incbin "data_080D5360/gUnk_080F7DC0.bin"

gUnk_080F7DE0:: @ 080F7DE0
	.incbin "data_080D5360/gUnk_080F7DE0.bin"
	.4byte script_08015BA8
	.incbin "data_080D5360/gUnk_080F7DE0_1.bin"

EnemyData_HyruleField_OutsideCastle:: @ 080F7E20
	.incbin "data_080D5360/EnemyData_HyruleField_OutsideCastle.bin"

TileData_HyruleField_OutsideCastle:: @ 080F7F10
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/TileData_HyruleField_OutsideCastle_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/TileData_HyruleField_OutsideCastle_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/TileData_HyruleField_OutsideCastle_2_EU.bin"
.else
	.incbin "data_080D5360/TileData_HyruleField_OutsideCastle_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F7F80:: @ 080F7F80
	.incbin "data_080D5360/gUnk_080F7F80.bin"

gUnk_080F7F98:: @ 080F7F98
	.incbin "data_080D5360/gUnk_080F7F98.bin"

gUnk_080F7FAC:: @ 080F7FAC
	.incbin "data_080D5360/gUnk_080F7FAC.bin"

gUnk_080F7FC0:: @ 080F7FC0
	.incbin "data_080D5360/gUnk_080F7FC0.bin"

gUnk_080F7FF0:: @ 080F7FF0
	.incbin "data_080D5360/gUnk_080F7FF0.bin"

Room_HyruleField_OutsideCastle:: @ 080F8020
	.4byte EntityData_HyruleField_OutsideCastle
	.4byte ManagerData_HyruleField_OutsideCastle
	.4byte EnemyData_HyruleField_OutsideCastle
	.4byte TileData_HyruleField_OutsideCastle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte Vars_HyruleField_OutsideCastle
	.4byte Load_HyruleField_OutsideCastle
	.4byte gUnk_080F7F80
	.4byte gUnk_080F7F98
	.4byte gUnk_080F7FAC
	.4byte 0x00000000
	.4byte gUnk_080F7FF0
	.4byte gUnk_080F7DE0
	.4byte gUnk_080F7CF0

EntityData_HyruleField_OutsideCastleWest:: @ 080F805C
	.incbin "data_080D5360/EntityData_HyruleField_OutsideCastleWest.bin"

gUnk_080F806C:: @ 080F806C
	.incbin "data_080D5360/gUnk_080F806C.bin"
	.4byte script_080168F4
	.incbin "data_080D5360/gUnk_080F806C_1.bin"

ManagerData_HyruleField_OutsideCastleWest:: @ 080F808C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/ManagerData_HyruleField_OutsideCastleWest_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/ManagerData_HyruleField_OutsideCastleWest_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/ManagerData_HyruleField_OutsideCastleWest_2_EU.bin"
.else
	.incbin "data_080D5360/ManagerData_HyruleField_OutsideCastleWest_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

EnemyData_HyruleField_OutsideCastleWest:: @ 080F80EC
	.incbin "data_080D5360/EnemyData_HyruleField_OutsideCastleWest.bin"

TileData_HyruleField_OutsideCastleWest:: @ 080F819C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/TileData_HyruleField_OutsideCastleWest_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/TileData_HyruleField_OutsideCastleWest_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/TileData_HyruleField_OutsideCastleWest_2_EU.bin"
.else
	.incbin "data_080D5360/TileData_HyruleField_OutsideCastleWest_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F81C4:: @ 080F81C4
	.incbin "data_080D5360/gUnk_080F81C4.bin"

gUnk_080F81D4:: @ 080F81D4
	.incbin "data_080D5360/gUnk_080F81D4.bin"

Room_HyruleField_OutsideCastleWest:: @ 080F81E8
	.4byte EntityData_HyruleField_OutsideCastleWest
	.4byte ManagerData_HyruleField_OutsideCastleWest
	.4byte EnemyData_HyruleField_OutsideCastleWest
	.4byte TileData_HyruleField_OutsideCastleWest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte Vars_HyruleField_OutsideCastleWest
	.4byte Load_HyruleField_OutsideCastleWest
	.4byte gUnk_080F81C4
	.4byte gUnk_080F81D4

EntityData_HyruleField_TrilbyHighlands:: @ 080F8210
.ifdef JP
	.incbin "data_080D5360/EntityData_HyruleField_TrilbyHighlands_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/EntityData_HyruleField_TrilbyHighlands_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/EntityData_HyruleField_TrilbyHighlands_2_DEMO_JP.bin"
.else
	.incbin "data_080D5360/EntityData_HyruleField_TrilbyHighlands_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F82E0:: @ 080F82E0
	.incbin "data_080D5360/gUnk_080F82E0.bin"
	.4byte script_08015BE8
	.incbin "data_080D5360/gUnk_080F82E0_1.bin"

ManagerData_HyruleField_TrilbyHighlands:: @ 080F8300
	.incbin "data_080D5360/ManagerData_HyruleField_TrilbyHighlands.bin"

EnemyData_HyruleField_TrilbyHighlands:: @ 080F8320
	.incbin "data_080D5360/EnemyData_HyruleField_TrilbyHighlands.bin"

TileData_HyruleField_TrilbyHighlands:: @ 080F83E0
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/TileData_HyruleField_TrilbyHighlands_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/TileData_HyruleField_TrilbyHighlands_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/TileData_HyruleField_TrilbyHighlands_2_EU.bin"
.else
	.incbin "data_080D5360/TileData_HyruleField_TrilbyHighlands_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

Room_HyruleField_TrilbyHighlands:: @ 080F8400
	.4byte EntityData_HyruleField_TrilbyHighlands
	.4byte ManagerData_HyruleField_TrilbyHighlands
	.4byte EnemyData_HyruleField_TrilbyHighlands
	.4byte TileData_HyruleField_TrilbyHighlands
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte Vars_HyruleField_TrilbyHighlands
	.4byte Load_HyruleField_TrilbyHighlands

gUnk_080F8420:: @ 080F8420
	.incbin "data_080D5360/gUnk_080F8420.bin"

gUnk_080F8430:: @ 080F8430
	.incbin "data_080D5360/gUnk_080F8430.bin"
	.4byte script_08012EC0
	.incbin "data_080D5360/gUnk_080F8430_1.bin"

gUnk_080F8450:: @ 080F8450
	.incbin "data_080D5360/gUnk_080F8450.bin"

gUnk_080F8480:: @ 080F8480
.ifdef EU
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F8480_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F8480_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080F84B0:: @ 080F84B0
	.incbin "data_080D5360/gUnk_080F84B0.bin"

Room_HyruleField_PercysHouse:: @ 080F84C8
	.4byte gUnk_080F8420
	.4byte gUnk_080F8450
	.4byte gUnk_080F8480
	.4byte gUnk_080F84B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FA64
	.4byte sub_0804FA68

gUnk_080F84E8:: @ 080F84E8
	.incbin "data_080D5360/gUnk_080F84E8.bin"

gUnk_080F85D8:: @ 080F85D8
	.incbin "data_080D5360/gUnk_080F85D8.bin"

gUnk_080F85F8:: @ 080F85F8
	.incbin "data_080D5360/gUnk_080F85F8.bin"

gUnk_080F8628:: @ 080F8628
	.incbin "data_080D5360/gUnk_080F8628.bin"

gUnk_080F8648:: @ 080F8648
	.incbin "data_080D5360/gUnk_080F8648.bin"

gUnk_080F8658:: @ 080F8658
	.incbin "data_080D5360/gUnk_080F8658.bin"

Room_Caves_Boomerang:: @ 080F8688
	.4byte gUnk_080F84E8
	.4byte 0x00000000
	.4byte gUnk_080F8648
	.4byte gUnk_080F8658
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FA94
	.4byte sub_0804FA98
	.4byte gUnk_080F8628

gUnk_080F86AC:: @ 080F86AC
	.incbin "data_080D5360/gUnk_080F86AC.bin"

gUnk_080F86FC:: @ 080F86FC
	.incbin "data_080D5360/gUnk_080F86FC.bin"

gUnk_080F870C:: @ 080F870C
	.incbin "data_080D5360/gUnk_080F870C.bin"

Room_Caves_ToGraveyard:: @ 080F8714
	.4byte gUnk_080F86AC
	.4byte 0x00000000
	.4byte gUnk_080F86FC
	.4byte gUnk_080F870C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FACC
	.4byte nullsub_412

gUnk_080F8734:: @ 080F8734
	.incbin "data_080D5360/gUnk_080F8734.bin"

gUnk_080F8754:: @ 080F8754
	.incbin "data_080D5360/gUnk_080F8754.bin"

gUnk_080F8764:: @ 080F8764
	.incbin "data_080D5360/gUnk_080F8764.bin"

Room_Caves_2:: @ 080F876C
	.4byte gUnk_080F8734
	.4byte 0x00000000
	.4byte gUnk_080F8754
	.4byte gUnk_080F8764
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAD4
	.4byte nullsub_413

gUnk_080F878C:: @ 080F878C
	.incbin "data_080D5360/gUnk_080F878C.bin"

gUnk_080F87AC:: @ 080F87AC
	.incbin "data_080D5360/gUnk_080F87AC.bin"

gUnk_080F87BC:: @ 080F87BC
	.incbin "data_080D5360/gUnk_080F87BC.bin"

Room_Caves_3:: @ 080F87C4
	.4byte gUnk_080F878C
	.4byte 0x00000000
	.4byte gUnk_080F87AC
	.4byte gUnk_080F87BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FADC
	.4byte nullsub_414

gUnk_080F87E4:: @ 080F87E4
	.incbin "data_080D5360/gUnk_080F87E4.bin"

gUnk_080F8804:: @ 080F8804
	.incbin "data_080D5360/gUnk_080F8804.bin"

gUnk_080F8814:: @ 080F8814
	.incbin "data_080D5360/gUnk_080F8814.bin"

Room_Caves_4:: @ 080F881C
	.4byte gUnk_080F87E4
	.4byte 0x00000000
	.4byte gUnk_080F8804
	.4byte gUnk_080F8814
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAE4
	.4byte nullsub_415

gUnk_080F883C:: @ 080F883C
	.incbin "data_080D5360/gUnk_080F883C.bin"

gUnk_080F885C:: @ 080F885C
	.incbin "data_080D5360/gUnk_080F885C.bin"

gUnk_080F886C:: @ 080F886C
	.incbin "data_080D5360/gUnk_080F886C.bin"

Room_Caves_5:: @ 080F8874
	.4byte gUnk_080F883C
	.4byte 0x00000000
	.4byte gUnk_080F885C
	.4byte gUnk_080F886C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAEC
	.4byte nullsub_416

gUnk_080F8894:: @ 080F8894
	.incbin "data_080D5360/gUnk_080F8894.bin"

gUnk_080F88A4:: @ 080F88A4
	.incbin "data_080D5360/gUnk_080F88A4.bin"

gUnk_080F88B4:: @ 080F88B4
	.incbin "data_080D5360/gUnk_080F88B4.bin"

Room_Caves_6:: @ 080F88BC
	.4byte gUnk_080F8894
	.4byte 0x00000000
	.4byte gUnk_080F88A4
	.4byte gUnk_080F88B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAF4
	.4byte nullsub_417

gUnk_080F88DC:: @ 080F88DC
	.incbin "data_080D5360/gUnk_080F88DC.bin"

gUnk_080F88EC:: @ 080F88EC
	.incbin "data_080D5360/gUnk_080F88EC.bin"

gUnk_080F895C:: @ 080F895C
	.incbin "data_080D5360/gUnk_080F895C.bin"

Room_Caves_KeeseChest:: @ 080F896C
	.4byte gUnk_080F88DC
	.4byte 0x00000000
	.4byte gUnk_080F88EC
	.4byte gUnk_080F895C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAFC
	.4byte nullsub_418

gUnk_080F898C:: @ 080F898C
	.incbin "data_080D5360/gUnk_080F898C.bin"

gUnk_080F89CC:: @ 080F89CC
	.incbin "data_080D5360/gUnk_080F89CC.bin"

gUnk_080F89DC:: @ 080F89DC
	.incbin "data_080D5360/gUnk_080F89DC.bin"

Room_Caves_FairyFountainTrilbyHighlands:: @ 080F89EC
	.4byte gUnk_080F898C
	.4byte 0x00000000
	.4byte gUnk_080F89CC
	.4byte gUnk_080F89DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB04
	.4byte nullsub_419

gUnk_080F8A0C:: @ 080F8A0C
	.incbin "data_080D5360/gUnk_080F8A0C.bin"

gUnk_080F8A4C:: @ 080F8A4C
	.incbin "data_080D5360/gUnk_080F8A4C.bin"

gUnk_080F8A5C:: @ 080F8A5C
	.incbin "data_080D5360/gUnk_080F8A5C.bin"

Room_Caves_FairyFountainLinksHouse:: @ 080F8A6C
	.4byte gUnk_080F8A0C
	.4byte 0x00000000
	.4byte gUnk_080F8A4C
	.4byte gUnk_080F8A5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB0C
	.4byte nullsub_420

gUnk_080F8A8C:: @ 080F8A8C
	.incbin "data_080D5360/gUnk_080F8A8C.bin"

gUnk_080F8A9C:: @ 080F8A9C
	.incbin "data_080D5360/gUnk_080F8A9C.bin"

gUnk_080F8AAC:: @ 080F8AAC
	.incbin "data_080D5360/gUnk_080F8AAC.bin"

Room_Caves_A:: @ 080F8AB4
	.4byte gUnk_080F8A8C
	.4byte 0x00000000
	.4byte gUnk_080F8A9C
	.4byte gUnk_080F8AAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB14
	.4byte nullsub_421

gUnk_080F8AD4:: @ 080F8AD4
	.incbin "data_080D5360/gUnk_080F8AD4.bin"

gUnk_080F8AE4:: @ 080F8AE4
	.incbin "data_080D5360/gUnk_080F8AE4.bin"

gUnk_080F8AF4:: @ 080F8AF4
	.incbin "data_080D5360/gUnk_080F8AF4.bin"

Room_Caves_HyruleTownWaterfall:: @ 080F8B04
	.4byte gUnk_080F8AD4
	.4byte 0x00000000
	.4byte gUnk_080F8AE4
	.4byte gUnk_080F8AF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB1C
	.4byte nullsub_422

gUnk_080F8B24:: @ 080F8B24
	.incbin "data_080D5360/gUnk_080F8B24.bin"

gUnk_080F8B44:: @ 080F8B44
	.incbin "data_080D5360/gUnk_080F8B44.bin"

gUnk_080F8B54:: @ 080F8B54
	.incbin "data_080D5360/gUnk_080F8B54.bin"

Room_Caves_LonLonRanch:: @ 080F8B6C
	.4byte gUnk_080F8B24
	.4byte 0x00000000
	.4byte gUnk_080F8B44
	.4byte gUnk_080F8B54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB249
	.4byte nullsub_423

gUnk_080F8B8C:: @ 080F8B8C
	.incbin "data_080D5360/gUnk_080F8B8C.bin"

gUnk_080F8BDC:: @ 080F8BDC
	.incbin "data_080D5360/gUnk_080F8BDC.bin"

gUnk_080F8BEC:: @ 080F8BEC
	.incbin "data_080D5360/gUnk_080F8BEC.bin"

Room_Caves_LonLonRanchSecret:: @ 080F8C04
	.4byte gUnk_080F8B8C
	.4byte 0x00000000
	.4byte gUnk_080F8BDC
	.4byte gUnk_080F8BEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB2C
	.4byte sub_0804FB30

gUnk_080F8C24:: @ 080F8C24
	.incbin "data_080D5360/gUnk_080F8C24.bin"

gUnk_080F8C54:: @ 080F8C54
	.incbin "data_080D5360/gUnk_080F8C54.bin"

gUnk_080F8C64:: @ 080F8C64
	.incbin "data_080D5360/gUnk_080F8C64.bin"

Room_Caves_TrilbyHighlands:: @ 080F8C74
	.4byte gUnk_080F8C24
	.4byte 0x00000000
	.4byte gUnk_080F8C54
	.4byte gUnk_080F8C64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB68
	.4byte nullsub_089

gUnk_080F8C94:: @ 080F8C94
	.incbin "data_080D5360/gUnk_080F8C94.bin"

gUnk_080F8CB4:: @ 080F8CB4
	.incbin "data_080D5360/gUnk_080F8CB4.bin"

gUnk_080F8CC4:: @ 080F8CC4
	.incbin "data_080D5360/gUnk_080F8CC4.bin"

Room_Caves_LonLonRanchWallet:: @ 080F8CD4
	.4byte gUnk_080F8C94
	.4byte 0x00000000
	.4byte gUnk_080F8CB4
	.4byte gUnk_080F8CC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB70
	.4byte nullsub_90

gUnk_080F8CF4:: @ 080F8CF4
.ifdef JP
	.incbin "data_080D5360/gUnk_080F8CF4_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F8CF4_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080F8CF4_2_DEMO_JP.bin"
.else
	.incbin "data_080D5360/gUnk_080F8CF4_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F8E04:: @ 080F8E04
	.incbin "data_080D5360/gUnk_080F8E04.bin"

gUnk_080F8E14:: @ 080F8E14
	.incbin "data_080D5360/gUnk_080F8E14.bin"

Room_Caves_RupeeLinksHouse:: @ 080F8E1C
	.4byte gUnk_080F8CF4
	.4byte 0x00000000
	.4byte gUnk_080F8E04
	.4byte gUnk_080F8E14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB78
	.4byte nullsub_91

gUnk_080F8E3C:: @ 080F8E3C
.ifdef JP
	.incbin "data_080D5360/gUnk_080F8E3C_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F8E3C_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080F8E3C_2_DEMO_JP.bin"
.else
	.incbin "data_080D5360/gUnk_080F8E3C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F8F4C:: @ 080F8F4C
	.incbin "data_080D5360/gUnk_080F8F4C.bin"

gUnk_080F8F5C:: @ 080F8F5C
	.incbin "data_080D5360/gUnk_080F8F5C.bin"

Room_Caves_RupeeTrilbyHighlands:: @ 080F8F64
	.4byte gUnk_080F8E3C
	.4byte 0x00000000
	.4byte gUnk_080F8F4C
	.4byte gUnk_080F8F5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB80
	.4byte nullsub_92

gUnk_080F8F84:: @ 080F8F84
.ifdef JP
	.incbin "data_080D5360/gUnk_080F8F84_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F8F84_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080F8F84_2_DEMO_JP.bin"
.else
	.incbin "data_080D5360/gUnk_080F8F84_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F8FE4:: @ 080F8FE4
	.incbin "data_080D5360/gUnk_080F8FE4.bin"

gUnk_080F8FF4:: @ 080F8FF4
	.incbin "data_080D5360/gUnk_080F8FF4.bin"

Room_Caves_FairyFountainMoleMitts:: @ 080F9004
	.4byte gUnk_080F8F84
	.4byte 0x00000000
	.4byte gUnk_080F8FE4
	.4byte gUnk_080F8FF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB88
	.4byte nullsub_93

gUnk_080F9024:: @ 080F9024
	.incbin "data_080D5360/gUnk_080F9024.bin"

gUnk_080F9034:: @ 080F9034
	.incbin "data_080D5360/gUnk_080F9034.bin"

gUnk_080F9064:: @ 080F9064
	.incbin "data_080D5360/gUnk_080F9064.bin"

Room_Caves_KeeseChestSoutheastHyrule:: @ 080F9074
	.4byte gUnk_080F9024
	.4byte 0x00000000
	.4byte gUnk_080F9034
	.4byte gUnk_080F9064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB90
	.4byte nullsub_94

gUnk_080F9094:: @ 080F9094
	.incbin "data_080D5360/gUnk_080F9094.bin"

gUnk_080F90A4:: @ 080F90A4
	.incbin "data_080D5360/gUnk_080F90A4.bin"

gUnk_080F90C4:: @ 080F90C4
	.incbin "data_080D5360/gUnk_080F90C4.bin"

Room_Caves_BottleBusinessScrub:: @ 080F90CC
	.4byte gUnk_080F9094
	.4byte 0x00000000
	.4byte gUnk_080F90A4
	.4byte gUnk_080F90C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB98
	.4byte nullsub_95

gUnk_080F90EC:: @ 080F90EC
	.incbin "data_080D5360/gUnk_080F90EC.bin"

gUnk_080F910C:: @ 080F910C
	.incbin "data_080D5360/gUnk_080F910C.bin"

gUnk_080F914C:: @ 080F914C
	.incbin "data_080D5360/gUnk_080F914C.bin"

Room_Caves_HeartPieceHallway:: @ 080F9154
	.4byte gUnk_080F90EC
	.4byte 0x00000000
	.4byte gUnk_080F910C
	.4byte gUnk_080F914C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FBA0
	.4byte nullsub_96

gUnk_080F9174:: @ 080F9174
.ifdef JP
	.incbin "data_080D5360/gUnk_080F9174_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F9174_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080D5360/gUnk_080F9174_2_DEMO_JP.bin"
.else
	.incbin "data_080D5360/gUnk_080F9174_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F91C4:: @ 080F91C4
	.incbin "data_080D5360/gUnk_080F91C4.bin"

gUnk_080F91D4:: @ 080F91D4
	.incbin "data_080D5360/gUnk_080F91D4.bin"

Room_Caves_FairyFountainBoomerang:: @ 080F91E4
	.4byte gUnk_080F9174
	.4byte 0x00000000
	.4byte gUnk_080F91C4
	.4byte gUnk_080F91D4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FBA8
	.4byte nullsub_97

gUnk_080F9204:: @ 080F9204
	.incbin "data_080D5360/gUnk_080F9204.bin"

gUnk_080F9214:: @ 080F9214
	.incbin "data_080D5360/gUnk_080F9214.bin"

gUnk_080F9234:: @ 080F9234
	.incbin "data_080D5360/gUnk_080F9234.bin"

Room_Caves_KinstoneBusinessScrub:: @ 080F9244
	.4byte gUnk_080F9204
	.4byte 0x00000000
	.4byte gUnk_080F9214
	.4byte gUnk_080F9234
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FBB09
	.4byte nullsub_98

gUnk_080F9264:: @ 080F9264
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F9264_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F9264_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F9264_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F9264_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F9304:: @ 080F9304
	.incbin "data_080D5360/gUnk_080F9304.bin"
	.4byte script_0800B00C
	.incbin "data_080D5360/gUnk_080F9304_1.bin"

gUnk_080F9324:: @ 080F9324
	.4byte 0x0B4E4F07
	.4byte 0x00000000
	.4byte 0x01FD0038
	.4byte script_08015FC0
	.4byte 0x08060F09
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

gUnk_080F9354:: @ 080F9354
	.incbin "data_080D5360/gUnk_080F9354.bin"

gUnk_080F9474:: @ 080F9474
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F9474_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F9474_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F9474_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F9474_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080F9484:: @ 080F9484
	.incbin "data_080D5360/gUnk_080F9484.bin"

gUnk_080F9494:: @ 080F9494
	.incbin "data_080D5360/gUnk_080F9494.bin"

Room_VeilFalls_Main:: @ 080F94A8
	.4byte gUnk_080F9264
	.4byte gUnk_080F9324
	.4byte gUnk_080F9354
	.4byte gUnk_080F9474
	.4byte sub_0804FBDC
	.4byte 0x00000000
	.4byte sub_0804FBB8
	.4byte sub_0804FBBC
	.4byte gUnk_080F9484
	.4byte gUnk_080F9494

gUnk_080F94D0:: @ 080F94D0
	.incbin "data_080D5360/gUnk_080F94D0.bin"

gUnk_080F9510:: @ 080F9510
	.incbin "data_080D5360/gUnk_080F9510.bin"

gUnk_080F9590:: @ 080F9590
	.incbin "data_080D5360/gUnk_080F9590.bin"

Room_VeilFallsCaves_Hallway2F:: @ 080F95A0
	.4byte gUnk_080F94D0
	.4byte 0x00000000
	.4byte gUnk_080F9510
	.4byte gUnk_080F9590
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FBFC
	.4byte nullsub_424

gUnk_080F95C0:: @ 080F95C0
	.incbin "data_080D5360/gUnk_080F95C0.bin"

gUnk_080F9610:: @ 080F9610
	.incbin "data_080D5360/gUnk_080F9610.bin"

gUnk_080F9670:: @ 080F9670
	.incbin "data_080D5360/gUnk_080F9670.bin"

Room_VeilFallsCaves_Hallway1F:: @ 080F9680
	.4byte gUnk_080F95C0
	.4byte 0x00000000
	.4byte gUnk_080F9610
	.4byte gUnk_080F9670
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC04
	.4byte nullsub_425

gUnk_080F96A0:: @ 080F96A0
	.incbin "data_080D5360/gUnk_080F96A0.bin"

gUnk_080F96B0:: @ 080F96B0
	.incbin "data_080D5360/gUnk_080F96B0.bin"

gUnk_080F96E0:: @ 080F96E0
	.incbin "data_080D5360/gUnk_080F96E0.bin"

Room_VeilFallsCaves_SecretRoom:: @ 080F96F0
	.4byte gUnk_080F96A0
	.4byte 0x00000000
	.4byte gUnk_080F96B0
	.4byte gUnk_080F96E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC0C
	.4byte nullsub_426

gUnk_080F9710:: @ 080F9710
	.incbin "data_080D5360/gUnk_080F9710.bin"

gUnk_080F9720:: @ 080F9720
	.incbin "data_080D5360/gUnk_080F9720.bin"

gUnk_080F9760:: @ 080F9760
	.incbin "data_080D5360/gUnk_080F9760.bin"

Room_VeilFallsCaves_Entrance:: @ 080F9770
	.4byte gUnk_080F9710
	.4byte 0x00000000
	.4byte gUnk_080F9720
	.4byte gUnk_080F9760
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC14
	.4byte nullsub_427

gUnk_080F9790:: @ 080F9790
	.incbin "data_080D5360/gUnk_080F9790.bin"

gUnk_080F9800:: @ 080F9800
	.incbin "data_080D5360/gUnk_080F9800.bin"

gUnk_080F9820:: @ 080F9820
	.incbin "data_080D5360/gUnk_080F9820.bin"

Room_VeilFallsCaves_Exit:: @ 080F9830
	.4byte gUnk_080F9790
	.4byte 0x00000000
	.4byte gUnk_080F9800
	.4byte gUnk_080F9820
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC1C
	.4byte nullsub_428

gUnk_080F9850:: @ 080F9850
	.incbin "data_080D5360/gUnk_080F9850.bin"

gUnk_080F98B0:: @ 080F98B0
	.incbin "data_080D5360/gUnk_080F98B0.bin"

gUnk_080F98C0:: @ 080F98C0
	.incbin "data_080D5360/gUnk_080F98C0.bin"

Room_VeilFallsCaves_SecretChest:: @ 080F98D0
	.4byte gUnk_080F9850
	.4byte 0x00000000
	.4byte gUnk_080F98B0
	.4byte gUnk_080F98C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC24
	.4byte nullsub_429

gUnk_080F98F0:: @ 080F98F0
	.incbin "data_080D5360/gUnk_080F98F0.bin"

gUnk_080F9900:: @ 080F9900
	.incbin "data_080D5360/gUnk_080F9900.bin"

gUnk_080F9920:: @ 080F9920
	.incbin "data_080D5360/gUnk_080F9920.bin"

Room_VeilFallsCaves_SecretStaircases:: @ 080F9930
	.4byte gUnk_080F98F0
	.4byte 0x00000000
	.4byte gUnk_080F9900
	.4byte gUnk_080F9920
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC2C
	.4byte nullsub_430

gUnk_080F9950:: @ 080F9950
	.incbin "data_080D5360/gUnk_080F9950.bin"

gUnk_080F9960:: @ 080F9960
	.incbin "data_080D5360/gUnk_080F9960.bin"

gUnk_080F99B0:: @ 080F99B0
	.incbin "data_080D5360/gUnk_080F99B0.bin"

Room_VeilFallsCaves_BlockPuzzle:: @ 080F99B8
	.4byte gUnk_080F9950
	.4byte 0x00000000
	.4byte gUnk_080F9960
	.4byte gUnk_080F99B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC34
	.4byte nullsub_431

gUnk_080F99D8:: @ 080F99D8
	.incbin "data_080D5360/gUnk_080F99D8.bin"

gUnk_080F9AD8:: @ 080F9AD8
	.incbin "data_080D5360/gUnk_080F9AD8.bin"

gUnk_080F9AF8:: @ 080F9AF8
	.incbin "data_080D5360/gUnk_080F9AF8.bin"

Room_VeilFallsCaves_RupeePath:: @ 080F9B00
	.4byte gUnk_080F99D8
	.4byte 0x00000000
	.4byte gUnk_080F9AD8
	.4byte gUnk_080F9AF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC3C
	.4byte nullsub_432

gUnk_080F9B20:: @ 080F9B20
	.incbin "data_080D5360/gUnk_080F9B20.bin"

gUnk_080F9B40:: @ 080F9B40
	.incbin "data_080D5360/gUnk_080F9B40.bin"

gUnk_080F9B50:: @ 080F9B50
	.incbin "data_080D5360/gUnk_080F9B50.bin"

Room_VeilFallsCaves_HeartPiece:: @ 080F9B58
	.4byte gUnk_080F9B20
	.4byte 0x00000000
	.4byte gUnk_080F9B40
	.4byte gUnk_080F9B50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC44
	.4byte nullsub_433

gUnk_080F9B78:: @ 080F9B78
	.incbin "data_080D5360/gUnk_080F9B78.bin"
	.4byte script_08009318
	.incbin "data_080D5360/gUnk_080F9B78_1.bin"
	.4byte script_08009340
	.incbin "data_080D5360/gUnk_080F9B78_2.bin"
	.4byte script_08009340
	.incbin "data_080D5360/gUnk_080F9B78_3.bin"
	.4byte script_08009348
	.incbin "data_080D5360/gUnk_080F9B78_4.bin"

gUnk_080F9BF8:: @ 080F9BF8
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F9BF8_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080F9BF8_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080F9BF8_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080F9BF8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif
	.4byte script_08009320
	.incbin "data_080D5360/gUnk_080F9BF8_4.bin"

gUnk_080F9C38:: @ 080F9C38
	.incbin "data_080D5360/gUnk_080F9C38.bin"
	.4byte script_080094A4
	.incbin "data_080D5360/gUnk_080F9C38_1.bin"

gUnk_080F9C58:: @ 080F9C58
	.incbin "data_080D5360/gUnk_080F9C58.bin"
	.4byte script_080094CC
	.incbin "data_080D5360/gUnk_080F9C58_1.bin"

gUnk_080F9C78:: @ 080F9C78
	.incbin "data_080D5360/gUnk_080F9C78.bin"

gUnk_080F9C98:: @ 080F9C98
	.incbin "data_080D5360/gUnk_080F9C98.bin"

gUnk_080F9CA8:: @ 080F9CA8
	.incbin "data_080D5360/gUnk_080F9CA8.bin"

Room_VeilFallsTop_Main:: @ 080F9CB0
	.4byte gUnk_080F9B78
	.4byte gUnk_080F9C78
	.4byte gUnk_080F9C98
	.4byte gUnk_080F9CA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC4C
	.4byte sub_0804FC6C

gUnk_080F9CD0:: @ 080F9CD0
	.incbin "data_080D5360/gUnk_080F9CD0.bin"

gUnk_080F9D40:: @ 080F9D40
	.incbin "data_080D5360/gUnk_080F9D40.bin"

gUnk_080F9D50:: @ 080F9D50
	.incbin "data_080D5360/gUnk_080F9D50.bin"

Room_47_0:: @ 080F9D58
	.4byte gUnk_080F9CD0
	.4byte 0x00000000
	.4byte gUnk_080F9D40
	.4byte gUnk_080F9D50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC7C
	.4byte nullsub_99

gUnk_080F9D78:: @ 080F9D78
	.incbin "data_080D5360/gUnk_080F9D78.bin"

gUnk_080F9DF8:: @ 080F9DF8
	.incbin "data_080D5360/gUnk_080F9DF8.bin"

gUnk_080F9E08:: @ 080F9E08
	.incbin "data_080D5360/gUnk_080F9E08.bin"

Room_47_1:: @ 080F9E10
	.4byte gUnk_080F9D78
	.4byte 0x00000000
	.4byte gUnk_080F9DF8
	.4byte gUnk_080F9E08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC84
	.4byte nullsub_100

gUnk_080F9E30:: @ 080F9E30
	.incbin "data_080D5360/gUnk_080F9E30.bin"

gUnk_080F9E60:: @ 080F9E60
	.incbin "data_080D5360/gUnk_080F9E60.bin"

gUnk_080F9E70:: @ 080F9E70
	.incbin "data_080D5360/gUnk_080F9E70.bin"

Room_47_2:: @ 080F9E78
	.4byte gUnk_080F9E30
	.4byte 0x00000000
	.4byte gUnk_080F9E60
	.4byte gUnk_080F9E70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC8C
	.4byte nullsub_101

gUnk_080F9E98:: @ 080F9E98
	.incbin "data_080D5360/gUnk_080F9E98.bin"

gUnk_080F9EA8:: @ 080F9EA8
	.incbin "data_080D5360/gUnk_080F9EA8.bin"

gUnk_080F9EB8:: @ 080F9EB8
	.incbin "data_080D5360/gUnk_080F9EB8.bin"

Room_47_3:: @ 080F9EC0
	.4byte gUnk_080F9E98
	.4byte 0x00000000
	.4byte gUnk_080F9EA8
	.4byte gUnk_080F9EB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC94
	.4byte nullsub_102

gUnk_080F9EE0:: @ 080F9EE0
	.incbin "data_080D5360/gUnk_080F9EE0.bin"

gUnk_080F9EF0:: @ 080F9EF0
	.incbin "data_080D5360/gUnk_080F9EF0.bin"

gUnk_080F9F00:: @ 080F9F00
	.incbin "data_080D5360/gUnk_080F9F00.bin"

Room_47_4:: @ 080F9F08
	.4byte gUnk_080F9EE0
	.4byte 0x00000000
	.4byte gUnk_080F9EF0
	.4byte gUnk_080F9F00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC9C
	.4byte nullsub_103

gUnk_080F9F28:: @ 080F9F28
	.incbin "data_080D5360/gUnk_080F9F28.bin"
	.4byte script_080160A8
	.incbin "data_080D5360/gUnk_080F9F28_1.bin"
	.4byte script_0801613C
	.incbin "data_080D5360/gUnk_080F9F28_2.bin"

gUnk_080F9F58:: @ 080F9F58
	.incbin "data_080D5360/gUnk_080F9F58.bin"

gUnk_080F9F88:: @ 080F9F88
	.incbin "data_080D5360/gUnk_080F9F88.bin"

gUnk_080F9FA8:: @ 080F9FA8
	.incbin "data_080D5360/gUnk_080F9FA8.bin"
	.4byte script_08016190
	.incbin "data_080D5360/gUnk_080F9FA8_1.bin"

gUnk_080F9FD8:: @ 080F9FD8
	.incbin "data_080D5360/gUnk_080F9FD8.bin"

gUnk_080F9FE8:: @ 080F9FE8
	.incbin "data_080D5360/gUnk_080F9FE8.bin"

Room_TreeInteriors_WitchHut:: @ 080F9FF8
	.4byte gUnk_080F9F28
	.4byte gUnk_080F9F58
	.4byte gUnk_080F9FD8
	.4byte gUnk_080F9FE8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCA4
	.4byte sub_0804FCA8

gUnk_080FA018:: @ 080FA018
	.incbin "data_080D5360/gUnk_080FA018.bin"

gUnk_080FA038:: @ 080FA038
	.incbin "data_080D5360/gUnk_080FA038.bin"

gUnk_080FA048:: @ 080FA048
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA018
	.4byte 0x00000000
	.4byte gUnk_080FA038
	.4byte gUnk_080FA048
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCD4
	.4byte nullsub_434

gUnk_080FA070:: @ 080FA070
	.incbin "data_080D5360/gUnk_080FA070.bin"

gUnk_080FA090:: @ 080FA090
	.incbin "data_080D5360/gUnk_080FA090.bin"

gUnk_080FA0A0:: @ 080FA0A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA070
	.4byte 0x00000000
	.4byte gUnk_080FA090
	.4byte gUnk_080FA0A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCDC
	.4byte nullsub_435

gUnk_080FA0C8:: @ 080FA0C8
	.incbin "data_080D5360/gUnk_080FA0C8.bin"

gUnk_080FA0E8:: @ 080FA0E8
	.incbin "data_080D5360/gUnk_080FA0E8.bin"

gUnk_080FA0F8:: @ 080FA0F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA0C8
	.4byte 0x00000000
	.4byte gUnk_080FA0E8
	.4byte gUnk_080FA0F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCE4
	.4byte nullsub_436

gUnk_080FA120:: @ 080FA120
	.incbin "data_080D5360/gUnk_080FA120.bin"

gUnk_080FA140:: @ 080FA140
	.incbin "data_080D5360/gUnk_080FA140.bin"

gUnk_080FA150:: @ 080FA150
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA120
	.4byte 0x00000000
	.4byte gUnk_080FA140
	.4byte gUnk_080FA150
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCEC
	.4byte nullsub_437

gUnk_080FA178:: @ 080FA178
	.incbin "data_080D5360/gUnk_080FA178.bin"

gUnk_080FA198:: @ 080FA198
	.incbin "data_080D5360/gUnk_080FA198.bin"

gUnk_080FA1A8:: @ 080FA1A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA178
	.4byte 0x00000000
	.4byte gUnk_080FA198
	.4byte gUnk_080FA1A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCF4
	.4byte nullsub_438

gUnk_080FA1D0:: @ 080FA1D0
	.incbin "data_080D5360/gUnk_080FA1D0.bin"

gUnk_080FA1F0:: @ 080FA1F0
	.incbin "data_080D5360/gUnk_080FA1F0.bin"

gUnk_080FA200:: @ 080FA200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA1D0
	.4byte 0x00000000
	.4byte gUnk_080FA1F0
	.4byte gUnk_080FA200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCFC
	.4byte nullsub_439

gUnk_080FA228:: @ 080FA228
	.incbin "data_080D5360/gUnk_080FA228.bin"

gUnk_080FA248:: @ 080FA248
	.incbin "data_080D5360/gUnk_080FA248.bin"

gUnk_080FA258:: @ 080FA258
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA228
	.4byte 0x00000000
	.4byte gUnk_080FA248
	.4byte gUnk_080FA258
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD04
	.4byte nullsub_440

gUnk_080FA280:: @ 080FA280
	.incbin "data_080D5360/gUnk_080FA280.bin"

gUnk_080FA2A0:: @ 080FA2A0
	.incbin "data_080D5360/gUnk_080FA2A0.bin"

gUnk_080FA2B0:: @ 080FA2B0
	.4byte 0x6E5C1702
	.4byte 0x000100C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA280
	.4byte 0x00000000
	.4byte gUnk_080FA2A0
	.4byte gUnk_080FA2B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD0C
	.4byte nullsub_441

gUnk_080FA2E0:: @ 080FA2E0
	.incbin "data_080D5360/gUnk_080FA2E0.bin"

gUnk_080FA300:: @ 080FA300
	.incbin "data_080D5360/gUnk_080FA300.bin"

gUnk_080FA310:: @ 080FA310
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA2E0
	.4byte 0x00000000
	.4byte gUnk_080FA300
	.4byte gUnk_080FA310
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD14
	.4byte nullsub_442

gUnk_080FA338:: @ 080FA338
	.incbin "data_080D5360/gUnk_080FA338.bin"

gUnk_080FA358:: @ 080FA358
	.incbin "data_080D5360/gUnk_080FA358.bin"

gUnk_080FA368:: @ 080FA368
	.4byte 0x6F5C1802
	.4byte 0x000100C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA338
	.4byte 0x00000000
	.4byte gUnk_080FA358
	.4byte gUnk_080FA368
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD1C
	.4byte nullsub_443

gUnk_080FA398:: @ 080FA398
	.incbin "data_080D5360/gUnk_080FA398.bin"

gUnk_080FA3B8:: @ 080FA3B8
	.incbin "data_080D5360/gUnk_080FA3B8.bin"

gUnk_080FA3C8:: @ 080FA3C8
	.4byte 0x705C1902
	.4byte 0x000100C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA398
	.4byte 0x00000000
	.4byte gUnk_080FA3B8
	.4byte gUnk_080FA3C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD24
	.4byte nullsub_444

gUnk_080FA3F8:: @ 080FA3F8
	.incbin "data_080D5360/gUnk_080FA3F8.bin"

gUnk_080FA418:: @ 080FA418
	.incbin "data_080D5360/gUnk_080FA418.bin"

gUnk_080FA428:: @ 080FA428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA3F8
	.4byte 0x00000000
	.4byte gUnk_080FA418
	.4byte gUnk_080FA428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD2C
	.4byte nullsub_445

gUnk_080FA450:: @ 080FA450
	.incbin "data_080D5360/gUnk_080FA450.bin"

gUnk_080FA470:: @ 080FA470
	.incbin "data_080D5360/gUnk_080FA470.bin"

gUnk_080FA480:: @ 080FA480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA450
	.4byte 0x00000000
	.4byte gUnk_080FA470
	.4byte gUnk_080FA480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD34
	.4byte nullsub_446

gUnk_080FA4A8:: @ 080FA4A8
	.incbin "data_080D5360/gUnk_080FA4A8.bin"

gUnk_080FA4C8:: @ 080FA4C8
	.incbin "data_080D5360/gUnk_080FA4C8.bin"

gUnk_080FA4D8:: @ 080FA4D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA4A8
	.4byte 0x00000000
	.4byte gUnk_080FA4C8
	.4byte gUnk_080FA4D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD3C
	.4byte nullsub_447

gUnk_080FA500:: @ 080FA500
	.incbin "data_080D5360/gUnk_080FA500.bin"

gUnk_080FA520:: @ 080FA520
	.incbin "data_080D5360/gUnk_080FA520.bin"

gUnk_080FA530:: @ 080FA530
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA500
	.4byte 0x00000000
	.4byte gUnk_080FA520
	.4byte gUnk_080FA530
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD44
	.4byte nullsub_448

gUnk_080FA558:: @ 080FA558
	.incbin "data_080D5360/gUnk_080FA558.bin"

gUnk_080FA578:: @ 080FA578
	.incbin "data_080D5360/gUnk_080FA578.bin"

gUnk_080FA588:: @ 080FA588
	.incbin "data_080D5360/gUnk_080FA588.bin"

Room_TreeInteriors_StairsToCarlov:: @ 080FA590
	.4byte gUnk_080FA558
	.4byte 0x00000000
	.4byte gUnk_080FA578
	.4byte gUnk_080FA588
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD4C
	.4byte nullsub_449

gUnk_080FA5B0:: @ 080FA5B0
	.incbin "data_080D5360/gUnk_080FA5B0.bin"

gUnk_080FA5D0:: @ 080FA5D0
	.incbin "data_080D5360/gUnk_080FA5D0.bin"
	.4byte script_08012E88
	.incbin "data_080D5360/gUnk_080FA5D0_1.bin"

gUnk_080FA5F0:: @ 080FA5F0
	.incbin "data_080D5360/gUnk_080FA5F0.bin"

gUnk_080FA610:: @ 080FA610
	.incbin "data_080D5360/gUnk_080FA610.bin"

gUnk_080FA620:: @ 080FA620
	.incbin "data_080D5360/gUnk_080FA620.bin"

Room_TreeInteriors_PercysTreehouse:: @ 080FA628
	.4byte gUnk_080FA5B0
	.4byte gUnk_080FA5F0
	.4byte gUnk_080FA610
	.4byte gUnk_080FA620
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD54
	.4byte sub_0804FD58

gUnk_080FA648:: @ 080FA648
	.incbin "data_080D5360/gUnk_080FA648.bin"

gUnk_080FA678:: @ 080FA678
	.incbin "data_080D5360/gUnk_080FA678.bin"

gUnk_080FA688:: @ 080FA688
	.incbin "data_080D5360/gUnk_080FA688.bin"

Room_TreeInteriors_HeartPiece:: @ 080FA690
	.4byte gUnk_080FA648
	.4byte 0x00000000
	.4byte gUnk_080FA678
	.4byte gUnk_080FA688
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD70
	.4byte nullsub_450

gUnk_080FA6B0:: @ 080FA6B0
	.incbin "data_080D5360/gUnk_080FA6B0.bin"

gUnk_080FA6D0:: @ 080FA6D0
	.incbin "data_080D5360/gUnk_080FA6D0.bin"

gUnk_080FA6E0:: @ 080FA6E0
	.incbin "data_080D5360/gUnk_080FA6E0.bin"

Room_TreeInteriors_StairsToBladeBrother:: @ 080FA6E8
	.4byte gUnk_080FA6B0
	.4byte 0x00000000
	.4byte gUnk_080FA6D0
	.4byte gUnk_080FA6E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD78
	.4byte nullsub_451

gUnk_080FA708:: @ 080FA708
	.incbin "data_080D5360/gUnk_080FA708.bin"

gUnk_080FA728:: @ 080FA728
	.incbin "data_080D5360/gUnk_080FA728.bin"

gUnk_080FA738:: @ 080FA738
	.incbin "data_080D5360/gUnk_080FA738.bin"

Room_TreeInteriors_14:: @ 080FA740
	.4byte gUnk_080FA708
	.4byte 0x00000000
	.4byte gUnk_080FA728
	.4byte gUnk_080FA738
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD80
	.4byte nullsub_452

gUnk_080FA760:: @ 080FA760
	.incbin "data_080D5360/gUnk_080FA760.bin"

gUnk_080FA780:: @ 080FA780
	.incbin "data_080D5360/gUnk_080FA780.bin"

gUnk_080FA790:: @ 080FA790
	.incbin "data_080D5360/gUnk_080FA790.bin"

Room_TreeInteriors_BoomerangNorthwest:: @ 080FA798
	.4byte gUnk_080FA760
	.4byte 0x00000000
	.4byte gUnk_080FA780
	.4byte gUnk_080FA790
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD88
	.4byte nullsub_453

gUnk_080FA7B8:: @ 080FA7B8
	.incbin "data_080D5360/gUnk_080FA7B8.bin"

gUnk_080FA7D8:: @ 080FA7D8
	.incbin "data_080D5360/gUnk_080FA7D8.bin"

gUnk_080FA7E8:: @ 080FA7E8
	.incbin "data_080D5360/gUnk_080FA7E8.bin"

Room_TreeInteriors_BoomerangNortheast:: @ 080FA7F0
	.4byte gUnk_080FA7B8
	.4byte 0x00000000
	.4byte gUnk_080FA7D8
	.4byte gUnk_080FA7E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD90
	.4byte nullsub_454

gUnk_080FA810:: @ 080FA810
	.incbin "data_080D5360/gUnk_080FA810.bin"

gUnk_080FA830:: @ 080FA830
	.incbin "data_080D5360/gUnk_080FA830.bin"

gUnk_080FA840:: @ 080FA840
	.incbin "data_080D5360/gUnk_080FA840.bin"

Room_TreeInteriors_BoomerangSouthwest:: @ 080FA848
	.4byte gUnk_080FA810
	.4byte 0x00000000
	.4byte gUnk_080FA830
	.4byte gUnk_080FA840
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD98
	.4byte nullsub_455

gUnk_080FA868:: @ 080FA868
	.incbin "data_080D5360/gUnk_080FA868.bin"

gUnk_080FA888:: @ 080FA888
	.incbin "data_080D5360/gUnk_080FA888.bin"

gUnk_080FA898:: @ 080FA898
	.incbin "data_080D5360/gUnk_080FA898.bin"

Room_TreeInteriors_BoomerangSoutheast:: @ 080FA8A0
	.4byte gUnk_080FA868
	.4byte 0x00000000
	.4byte gUnk_080FA888
	.4byte gUnk_080FA898
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDA0
	.4byte nullsub_456

gUnk_080FA8C0:: @ 080FA8C0
	.incbin "data_080D5360/gUnk_080FA8C0.bin"

gUnk_080FA8F0:: @ 080FA8F0
	.incbin "data_080D5360/gUnk_080FA8F0.bin"

gUnk_080FA900:: @ 080FA900
	.incbin "data_080D5360/gUnk_080FA900.bin"

Room_TreeInteriors_HeartPieceSouthwestField:: @ 080FA908
	.4byte gUnk_080FA8C0
	.4byte 0x00000000
	.4byte gUnk_080FA8F0
	.4byte gUnk_080FA900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDA8
	.4byte nullsub_457

gUnk_080FA928:: @ 080FA928
	.incbin "data_080D5360/gUnk_080FA928.bin"

gUnk_080FA948:: @ 080FA948
	.incbin "data_080D5360/gUnk_080FA948.bin"

gUnk_080FA958:: @ 080FA958
	.incbin "data_080D5360/gUnk_080FA958.bin"

Room_TreeInteriors_StairsToFairyFountain:: @ 080FA960
	.4byte gUnk_080FA928
	.4byte 0x00000000
	.4byte gUnk_080FA948
	.4byte gUnk_080FA958
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDB0
	.4byte nullsub_458

gUnk_080FA980:: @ 080FA980
	.incbin "data_080D5360/gUnk_080FA980.bin"

gUnk_080FA9A0:: @ 080FA9A0
	.incbin "data_080D5360/gUnk_080FA9A0.bin"

gUnk_080FA9B0:: @ 080FA9B0
	.incbin "data_080D5360/gUnk_080FA9B0.bin"

Room_TreeInteriors_StairsToWalletFairy:: @ 080FA9B8
	.4byte gUnk_080FA980
	.4byte 0x00000000
	.4byte gUnk_080FA9A0
	.4byte gUnk_080FA9B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDB8
	.4byte nullsub_459

gUnk_080FA9D8:: @ 080FA9D8
	.incbin "data_080D5360/gUnk_080FA9D8.bin"

gUnk_080FA9F8:: @ 080FA9F8
	.incbin "data_080D5360/gUnk_080FA9F8.bin"

gUnk_080FAA58:: @ 080FAA58
	.incbin "data_080D5360/gUnk_080FAA58.bin"

gUnk_080FAA68:: @ 080FAA68
	.incbin "data_080D5360/gUnk_080FAA68.bin"

Room_TreeInteriors_1C:: @ 080FAA70
	.4byte gUnk_080FA9D8
	.4byte gUnk_080FA9F8
	.4byte gUnk_080FAA58
	.4byte gUnk_080FAA68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDC0
	.4byte nullsub_460

gUnk_080FAA90:: @ 080FAA90
	.incbin "data_080D5360/gUnk_080FAA90.bin"

gUnk_080FAAB0:: @ 080FAAB0
	.incbin "data_080D5360/gUnk_080FAAB0.bin"

gUnk_080FAAC0:: @ 080FAAC0
	.incbin "data_080D5360/gUnk_080FAAC0.bin"

gUnk_080FAAD0:: @ 080FAAD0
	.incbin "data_080D5360/gUnk_080FAAD0.bin"

Room_TreeInteriors_StairsToBusinessScrub:: @ 080FAAD8
	.4byte gUnk_080FAA90
	.4byte gUnk_080FAAB0
	.4byte gUnk_080FAAC0
	.4byte gUnk_080FAAD0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDC8
	.4byte nullsub_461

gUnk_080FAAF8:: @ 080FAAF8
	.incbin "data_080D5360/gUnk_080FAAF8.bin"

gUnk_080FAB18:: @ 080FAB18
	.incbin "data_080D5360/gUnk_080FAB18.bin"

gUnk_080FAB88:: @ 080FAB88
	.incbin "data_080D5360/gUnk_080FAB88.bin"

gUnk_080FAB98:: @ 080FAB98
	.incbin "data_080D5360/gUnk_080FAB98.bin"

Room_TreeInteriors_1E:: @ 080FABA0
	.4byte gUnk_080FAAF8
	.4byte gUnk_080FAB18
	.4byte gUnk_080FAB88
	.4byte gUnk_080FAB98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDD0
	.4byte nullsub_462

gUnk_080FABC0:: @ 080FABC0
	.incbin "data_080D5360/gUnk_080FABC0.bin"

gUnk_080FABF0:: @ 080FABF0
	.incbin "data_080D5360/gUnk_080FABF0.bin"

gUnk_080FAC00:: @ 080FAC00
	.incbin "data_080D5360/gUnk_080FAC00.bin"

Room_TreeInteriors_1F:: @ 080FAC08
	.4byte gUnk_080FABC0
	.4byte 0x00000000
	.4byte gUnk_080FABF0
	.4byte gUnk_080FAC00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDD8
	.4byte nullsub_463

gUnk_080FAC28:: @ 080FAC28
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FAC28_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FAC28_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080FAC28_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080FAC28_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FAC88:: @ 080FAC88
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FAC88_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FAC88_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080FAC88_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080FAC88_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FACB8:: @ 080FACB8
	.incbin "data_080D5360/gUnk_080FACB8.bin"

gUnk_080FAD48:: @ 080FAD48
	.incbin "data_080D5360/gUnk_080FAD48.bin"
	.4byte script_0800A9F4
	.incbin "data_080D5360/gUnk_080FAD48_1.bin"
	.4byte script_0800AA48
	.incbin "data_080D5360/gUnk_080FAD48_2.bin"
	.4byte script_0800AA6C
	.incbin "data_080D5360/gUnk_080FAD48_3.bin"
	.4byte script_0800AA90
	.incbin "data_080D5360/gUnk_080FAD48_4.bin"
	.4byte script_0800AAB4
	.incbin "data_080D5360/gUnk_080FAD48_5.bin"

gUnk_080FADA8:: @ 080FADA8
	.incbin "data_080D5360/gUnk_080FADA8.bin"

gUnk_080FAE08:: @ 080FAE08
	.incbin "data_080D5360/gUnk_080FAE08.bin"

gUnk_080FAE10:: @ 080FAE10
	.incbin "data_080D5360/gUnk_080FAE10.bin"

gUnk_080FAE30:: @ 080FAE30
	.incbin "data_080D5360/gUnk_080FAE30.bin"

gUnk_080FAE44:: @ 080FAE44
	.incbin "data_080D5360/gUnk_080FAE44.bin"

gUnk_080FAE58:: @ 080FAE58
	.incbin "data_080D5360/gUnk_080FAE58.bin"

Room_MtCrenel_MountainTop:: @ 080FAE6C
	.4byte gUnk_080FAC28
	.4byte gUnk_080FAC88
	.4byte gUnk_080FADA8
	.4byte gUnk_080FAE08
	.4byte sub_0804FE40
	.4byte 0x00000000
	.4byte sub_0804FDE0
	.4byte sub_0804FE04
	.4byte gUnk_080FAE10
	.4byte gUnk_080FAE30
	.4byte gUnk_080FAE44
	.4byte gUnk_080FAE58

gUnk_080FAE9C:: @ 080FAE9C
	.incbin "data_080D5360/gUnk_080FAE9C.bin"

gUnk_080FAEBC:: @ 080FAEBC
	.incbin "data_080D5360/gUnk_080FAEBC.bin"

gUnk_080FAF9C:: @ 080FAF9C
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FAF9C_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FAF9C_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080FAF9C_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080FAF9C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

Room_MtCrenel_WallClimb:: @ 080FAFB4
	.4byte gUnk_080FAE9C
	.4byte 0x00000000
	.4byte gUnk_080FAEBC
	.4byte gUnk_080FAF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FE4C
	.4byte nullsub_104

gUnk_080FAFD4:: @ 080FAFD4
	.incbin "data_080D5360/gUnk_080FAFD4.bin"

gUnk_080FAFE4:: @ 080FAFE4
	.incbin "data_080D5360/gUnk_080FAFE4.bin"
	.4byte script_0800AF68
	.incbin "data_080D5360/gUnk_080FAFE4_1.bin"

gUnk_080FB004:: @ 080FB004
	.incbin "data_080D5360/gUnk_080FB004.bin"
	.4byte script_0800B00C
	.incbin "data_080D5360/gUnk_080FB004_1.bin"

gUnk_080FB024:: @ 080FB024
	.incbin "data_080D5360/gUnk_080FB024.bin"

gUnk_080FB104:: @ 080FB104
	.incbin "data_080D5360/gUnk_080FB104.bin"

gUnk_080FB1F4:: @ 080FB1F4
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FB1F4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FB1F4_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080FB1F4_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080FB1F4_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FB214:: @ 080FB214
	.incbin "data_080D5360/gUnk_080FB214.bin"

gUnk_080FB234:: @ 080FB234
	.incbin "data_080D5360/gUnk_080FB234.bin"

gUnk_080FB248:: @ 080FB248
	.incbin "data_080D5360/gUnk_080FB248.bin"

gUnk_080FB25C:: @ 080FB25C
	.incbin "data_080D5360/gUnk_080FB25C.bin"

Room_MtCrenel_CaveOfFlamesEntrance:: @ 080FB270
	.4byte gUnk_080FAFD4
	.4byte gUnk_080FB024
	.4byte gUnk_080FB104
	.4byte gUnk_080FB1F4
	.4byte sub_0804FEAC
	.4byte 0x00000000
	.4byte sub_0804FE54
	.4byte sub_0804FE58
	.4byte gUnk_080FB214
	.4byte gUnk_080FB234
	.4byte gUnk_080FB248
	.4byte gUnk_080FB25C

gUnk_080FB2A0:: @ 080FB2A0
	.incbin "data_080D5360/gUnk_080FB2A0.bin"

gUnk_080FB2E0:: @ 080FB2E0
	.incbin "data_080D5360/gUnk_080FB2E0.bin"

gUnk_080FB410:: @ 080FB410
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FB410_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FB410_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080FB410_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080FB410_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

Room_MtCrenel_GustJarShortcut:: @ 080FB460
	.4byte gUnk_080FB2A0
	.4byte 0x00000000
	.4byte gUnk_080FB2E0
	.4byte gUnk_080FB410
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FECC
	.4byte nullsub_464

gUnk_080FB480:: @ 080FB480
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FB480_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FB480_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080FB480_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080FB480_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FB5D0:: @ 080FB5D0
	.incbin "data_080D5360/gUnk_080FB5D0.bin"

gUnk_080FB600:: @ 080FB600
	.incbin "data_080D5360/gUnk_080FB600.bin"

gUnk_080FB700:: @ 080FB700
.ifdef JP
	.incbin "data_080D5360/gUnk_080FB700_JP.bin"
.else
.ifdef DEMO_JP
	@ TODO small changes compared to USA
	.incbin "data_080D5360/gUnk_080FB700_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080D5360/gUnk_080FB700_2_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080FB700_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FB748:: @ 080FB748
	.incbin "data_080D5360/gUnk_080FB748.bin"

gUnk_080FB768:: @ 080FB768
	.incbin "data_080D5360/gUnk_080FB768.bin"

gUnk_080FB77C:: @ 080FB77C
	.incbin "data_080D5360/gUnk_080FB77C.bin"

gUnk_080FB790:: @ 080FB790
	.incbin "data_080D5360/gUnk_080FB790.bin"

Room_MtCrenel_Entrance:: @ 080FB7A4
	.4byte gUnk_080FB480
	.4byte gUnk_080FB5D0
	.4byte gUnk_080FB600
	.4byte gUnk_080FB700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FED4
	.4byte sub_0804FED8
	.4byte gUnk_080FB748
	.4byte gUnk_080FB768
	.4byte gUnk_080FB77C
	.4byte gUnk_080FB790

gUnk_080FB7D4:: @ 080FB7D4
	.incbin "data_080D5360/gUnk_080FB7D4.bin"

gUnk_080FB844:: @ 080FB844
	.incbin "data_080D5360/gUnk_080FB844.bin"

gUnk_080FB864:: @ 080FB864
	.incbin "data_080D5360/gUnk_080FB864.bin"

gUnk_080FB8B4:: @ 080FB8B4
	.incbin "data_080D5360/gUnk_080FB8B4.bin"

Room_CrenelCaves_BlockPushing:: @ 080FB8BC
	.4byte gUnk_080FB7D4
	.4byte gUnk_080FB844
	.4byte gUnk_080FB864
	.4byte gUnk_080FB8B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FEEC
	.4byte nullsub_465

gUnk_080FB8DC:: @ 080FB8DC
	.incbin "data_080D5360/gUnk_080FB8DC.bin"

gUnk_080FB90C:: @ 080FB90C
	.incbin "data_080D5360/gUnk_080FB90C.bin"

gUnk_080FB91C:: @ 080FB91C
	.incbin "data_080D5360/gUnk_080FB91C.bin"

gUnk_080FB92C:: @ 080FB92C
	.incbin "data_080D5360/gUnk_080FB92C.bin"

Room_CrenelCaves_PillarCave:: @ 080FB934
	.4byte gUnk_080FB8DC
	.4byte gUnk_080FB90C
	.4byte gUnk_080FB91C
	.4byte gUnk_080FB92C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FEF4
	.4byte nullsub_466

gUnk_080FB954:: @ 080FB954
	.incbin "data_080D5360/gUnk_080FB954.bin"

gUnk_080FB9E4:: @ 080FB9E4
	.incbin "data_080D5360/gUnk_080FB9E4.bin"

gUnk_080FB9F4:: @ 080FB9F4
	.incbin "data_080D5360/gUnk_080FB9F4.bin"

gUnk_080FBA64:: @ 080FBA64
	.incbin "data_080D5360/gUnk_080FBA64.bin"

Room_CrenelCaves_BridgeSwitch:: @ 080FBA6C
	.4byte gUnk_080FB954
	.4byte gUnk_080FB9E4
	.4byte gUnk_080FB9F4
	.4byte gUnk_080FBA64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FEFC
	.4byte nullsub_467

gUnk_080FBA8C:: @ 080FBA8C
	.incbin "data_080D5360/gUnk_080FBA8C.bin"

gUnk_080FBA9C:: @ 080FBA9C
	.incbin "data_080D5360/gUnk_080FBA9C.bin"

gUnk_080FBAAC:: @ 080FBAAC
	.incbin "data_080D5360/gUnk_080FBAAC.bin"

gUnk_080FBADC:: @ 080FBADC
	.incbin "data_080D5360/gUnk_080FBADC.bin"

Room_CrenelCaves_ExitToMines:: @ 080FBAEC
	.4byte gUnk_080FBA8C
	.4byte gUnk_080FBA9C
	.4byte gUnk_080FBAAC
	.4byte gUnk_080FBADC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF04
	.4byte nullsub_468

gUnk_080FBB0C:: @ 080FBB0C
	.incbin "data_080D5360/gUnk_080FBB0C.bin"

gUnk_080FBB1C:: @ 080FBB1C
	.incbin "data_080D5360/gUnk_080FBB1C.bin"

gUnk_080FBB2C:: @ 080FBB2C
	.incbin "data_080D5360/gUnk_080FBB2C.bin"

gUnk_080FBB4C:: @ 080FBB4C
	.incbin "data_080D5360/gUnk_080FBB4C.bin"

Room_CrenelCaves_GripRing:: @ 080FBB54
	.4byte gUnk_080FBB0C
	.4byte gUnk_080FBB1C
	.4byte gUnk_080FBB2C
	.4byte gUnk_080FBB4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF0C
	.4byte nullsub_469

gUnk_080FBB74:: @ 080FBB74
	.incbin "data_080D5360/gUnk_080FBB74.bin"

gUnk_080FBB94:: @ 080FBB94
	.incbin "data_080D5360/gUnk_080FBB94.bin"

gUnk_080FBBA4:: @ 080FBBA4
	.incbin "data_080D5360/gUnk_080FBBA4.bin"

gUnk_080FBBF4:: @ 080FBBF4
	.incbin "data_080D5360/gUnk_080FBBF4.bin"

Room_CrenelCaves_FairyFountain:: @ 080FBC04
	.4byte gUnk_080FBB74
	.4byte gUnk_080FBB94
	.4byte gUnk_080FBBA4
	.4byte gUnk_080FBBF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF14
	.4byte nullsub_470

gUnk_080FBC24:: @ 080FBC24
	.incbin "data_080D5360/gUnk_080FBC24.bin"

gUnk_080FBC54:: @ 080FBC54
	.incbin "data_080D5360/gUnk_080FBC54.bin"

gUnk_080FBC64:: @ 080FBC64
	.incbin "data_080D5360/gUnk_080FBC64.bin"

gUnk_080FBCA4:: @ 080FBCA4
	.incbin "data_080D5360/gUnk_080FBCA4.bin"

Room_CrenelCaves_SpinyChuPuzzle:: @ 080FBCB4
	.4byte gUnk_080FBC24
	.4byte gUnk_080FBC54
	.4byte gUnk_080FBC64
	.4byte gUnk_080FBCA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF1C
	.4byte nullsub_471

gUnk_080FBCD4:: @ 080FBCD4
	.incbin "data_080D5360/gUnk_080FBCD4.bin"

gUnk_080FBD74:: @ 080FBD74
	.incbin "data_080D5360/gUnk_080FBD74.bin"

gUnk_080FBD84:: @ 080FBD84
	.incbin "data_080D5360/gUnk_080FBD84.bin"

gUnk_080FBDB4:: @ 080FBDB4
	.incbin "data_080D5360/gUnk_080FBDB4.bin"

Room_CrenelCaves_ChuchuPotChest:: @ 080FBDC4
	.4byte gUnk_080FBCD4
	.4byte gUnk_080FBD74
	.4byte gUnk_080FBD84
	.4byte gUnk_080FBDB4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF24
	.4byte nullsub_472

gUnk_080FBDE4:: @ 080FBDE4
	.incbin "data_080D5360/gUnk_080FBDE4.bin"

gUnk_080FBE04:: @ 080FBE04
	.incbin "data_080D5360/gUnk_080FBE04.bin"

gUnk_080FBE14:: @ 080FBE14
	.incbin "data_080D5360/gUnk_080FBE14.bin"

gUnk_080FBE44:: @ 080FBE44
	.incbin "data_080D5360/gUnk_080FBE44.bin"

Room_CrenelCaves_WaterHeartPiece:: @ 080FBE5C
	.4byte gUnk_080FBDE4
	.4byte gUnk_080FBE04
	.4byte gUnk_080FBE14
	.4byte gUnk_080FBE44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF2C
	.4byte nullsub_473

gUnk_080FBE7C:: @ 080FBE7C
	.incbin "data_080D5360/gUnk_080FBE7C.bin"

gUnk_080FBEEC:: @ 080FBEEC
	.incbin "data_080D5360/gUnk_080FBEEC.bin"

gUnk_080FBEFC:: @ 080FBEFC
	.incbin "data_080D5360/gUnk_080FBEFC.bin"

gUnk_080FBF0C:: @ 080FBF0C
	.incbin "data_080D5360/gUnk_080FBF0C.bin"

Room_CrenelCaves_RupeeFairyFountain:: @ 080FBF1C
	.4byte gUnk_080FBE7C
	.4byte gUnk_080FBEEC
	.4byte gUnk_080FBEFC
	.4byte gUnk_080FBF0C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF34
	.4byte nullsub_474

gUnk_080FBF3C:: @ 080FBF3C
	.incbin "data_080D5360/gUnk_080FBF3C.bin"

gUnk_080FBFFC:: @ 080FBFFC
	.incbin "data_080D5360/gUnk_080FBFFC.bin"

gUnk_080FC00C:: @ 080FC00C
	.incbin "data_080D5360/gUnk_080FC00C.bin"

gUnk_080FC05C:: @ 080FC05C
	.incbin "data_080D5360/gUnk_080FC05C.bin"

Room_CrenelCaves_HelmasaurHallway:: @ 080FC064
	.4byte gUnk_080FBF3C
	.4byte gUnk_080FBFFC
	.4byte gUnk_080FC00C
	.4byte gUnk_080FC05C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF3C
	.4byte nullsub_475

gUnk_080FC084:: @ 080FC084
	.incbin "data_080D5360/gUnk_080FC084.bin"

gUnk_080FC0B4:: @ 080FC0B4
	.incbin "data_080D5360/gUnk_080FC0B4.bin"

gUnk_080FC0C4:: @ 080FC0C4
	.incbin "data_080D5360/gUnk_080FC0C4.bin"

gUnk_080FC124:: @ 080FC124
	.incbin "data_080D5360/gUnk_080FC124.bin"

Room_CrenelCaves_MushroomKeese:: @ 080FC12C
	.4byte gUnk_080FC084
	.4byte gUnk_080FC0B4
	.4byte gUnk_080FC0C4
	.4byte gUnk_080FC124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF44
	.4byte nullsub_476

gUnk_080FC14C:: @ 080FC14C
	.incbin "data_080D5360/gUnk_080FC14C.bin"

gUnk_080FC15C:: @ 080FC15C
	.incbin "data_080D5360/gUnk_080FC15C.bin"

gUnk_080FC17C:: @ 080FC17C
	.incbin "data_080D5360/gUnk_080FC17C.bin"

gUnk_080FC1BC:: @ 080FC1BC
	.incbin "data_080D5360/gUnk_080FC1BC.bin"

Room_CrenelCaves_LadderToGreenWater:: @ 080FC1C4
	.4byte gUnk_080FC14C
	.4byte gUnk_080FC15C
	.4byte gUnk_080FC17C
	.4byte gUnk_080FC1BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF4C
	.4byte nullsub_477

gUnk_080FC1E4:: @ 080FC1E4
	.incbin "data_080D5360/gUnk_080FC1E4.bin"

gUnk_080FC1F4:: @ 080FC1F4
	.incbin "data_080D5360/gUnk_080FC1F4.bin"

gUnk_080FC204:: @ 080FC204
	.incbin "data_080D5360/gUnk_080FC204.bin"

gUnk_080FC224:: @ 080FC224
	.incbin "data_080D5360/gUnk_080FC224.bin"

Room_CrenelCaves_BombBusinessScrub:: @ 080FC234
	.4byte gUnk_080FC1E4
	.4byte gUnk_080FC1F4
	.4byte gUnk_080FC204
	.4byte gUnk_080FC224
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF54
	.4byte nullsub_478

gUnk_080FC254:: @ 080FC254
	.incbin "data_080D5360/gUnk_080FC254.bin"
	.4byte script_0800B8E4
	.incbin "data_080D5360/gUnk_080FC254_1.bin"

gUnk_080FC274:: @ 080FC274
	.incbin "data_080D5360/gUnk_080FC274.bin"

gUnk_080FC284:: @ 080FC284
	.incbin "data_080D5360/gUnk_080FC284.bin"

gUnk_080FC294:: @ 080FC294
	.incbin "data_080D5360/gUnk_080FC294.bin"

Room_CrenelCaves_Hermit:: @ 080FC2A4
	.4byte gUnk_080FC254
	.4byte gUnk_080FC274
	.4byte gUnk_080FC284
	.4byte gUnk_080FC294
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF5C
	.4byte sub_0804FF60

gUnk_080FC2C4:: @ 080FC2C4
	.incbin "data_080D5360/gUnk_080FC2C4.bin"

gUnk_080FC2D4:: @ 080FC2D4
	.incbin "data_080D5360/gUnk_080FC2D4.bin"

gUnk_080FC2E4:: @ 080FC2E4
	.incbin "data_080D5360/gUnk_080FC2E4.bin"

gUnk_080FC304:: @ 080FC304
	.incbin "data_080D5360/gUnk_080FC304.bin"

Room_CrenelCaves_HintScrub:: @ 080FC30C
	.4byte gUnk_080FC2C4
	.4byte gUnk_080FC2D4
	.4byte gUnk_080FC2E4
	.4byte gUnk_080FC304
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF74
	.4byte nullsub_105

gUnk_080FC32C:: @ 080FC32C
	.incbin "data_080D5360/gUnk_080FC32C.bin"

gUnk_080FC37C:: @ 080FC37C
	.incbin "data_080D5360/gUnk_080FC37C.bin"

gUnk_080FC38C:: @ 080FC38C
	.incbin "data_080D5360/gUnk_080FC38C.bin"

gUnk_080FC39C:: @ 080FC39C
	.incbin "data_080D5360/gUnk_080FC39C.bin"

Room_CrenelCaves_ToGrayblade:: @ 080FC3A4
	.4byte gUnk_080FC32C
	.4byte gUnk_080FC37C
	.4byte gUnk_080FC38C
	.4byte gUnk_080FC39C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF7C
	.4byte nullsub_106