	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

#define local_flag(idx)             (idx & 0x3fff) | (0 << 14)
#define local_flags(idx, length)    (idx & 0x3fff) | (0 << 14) | (((length - 1) & 0xf) << 6)
#define global_flag(idx)            (idx & 0x3fff) | (1 << 14)
#define global_flags(idx, length)   (idx & 0x3fff) | (1 << 14) | (((length - 1) & 0xf) << 6)
#define room_flag(idx)              (idx & 0x3fff) | (2 << 14)
#define room_flags(idx, length)     (idx & 0x3fff) | (2 << 14) | (((length - 1) & 0xf) << 6)

@ define helper constants
.ifdef JP
EU_JP:
.endif
.ifdef DEMO_JP
EU_JP:
USA_DEMOS:
.endif
.ifdef EU
EU_JP:
.endif
.ifdef USA
USA_DEMOS:
.endif
.ifdef DEMO_USA
USA_DEMOS:
.endif


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

Area_MinishPaths:: @ 080D41B0
	.4byte Room_MinishPaths_ToMinishVillage
	.4byte Room_MinishPaths_CastorWilds
	.4byte Room_MinishPaths_HyruleTown
	.4byte Room_MinishPaths_LonLonRanch
	.4byte Room_MinishPaths_MayorsCabin
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
	.4byte Room_HyruleField_SouthHyruleField
	.4byte Room_HyruleField_EasternHillsSouth
	.4byte Room_HyruleField_EasternHillsCenter
	.4byte Room_HyruleField_EasternHillsNorth
	.4byte Room_HyruleField_LonLonRanch
	.4byte Room_HyruleField_OutsideCastle
	.4byte Room_HyruleField_TrilbyHighlands
	.4byte Room_HyruleField_WesternWoodsNorth
	.4byte Room_HyruleField_WesternWoodsCenter

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
	.4byte Room_PalaceOfWinds_0
	.4byte Room_PalaceOfWinds_1
	.4byte Room_PalaceOfWinds_2
	.4byte Room_PalaceOfWinds_3
	.4byte Room_PalaceOfWinds_4
	.4byte Room_PalaceOfWinds_5
	.4byte Room_PalaceOfWinds_6
	.4byte Room_PalaceOfWinds_7
	.4byte Room_PalaceOfWinds_8
	.4byte Room_PalaceOfWinds_9
	.4byte Room_PalaceOfWinds_10
	.4byte Room_PalaceOfWinds_11
	.4byte Room_PalaceOfWinds_12
	.4byte Room_PalaceOfWinds_13
	.4byte Room_PalaceOfWinds_14
	.4byte Room_PalaceOfWinds_15
	.4byte Room_PalaceOfWinds_16
	.4byte Room_PalaceOfWinds_17
	.4byte Room_PalaceOfWinds_18
	.4byte Room_PalaceOfWinds_19
	.4byte Room_PalaceOfWinds_20
	.4byte Room_PalaceOfWinds_21
	.4byte Room_PalaceOfWinds_22
	.4byte Room_PalaceOfWinds_23
	.4byte Room_PalaceOfWinds_24
	.4byte Room_PalaceOfWinds_25
	.4byte Room_PalaceOfWinds_26
	.4byte Room_PalaceOfWinds_27
	.4byte Room_PalaceOfWinds_28
	.4byte Room_PalaceOfWinds_29
	.4byte Room_PalaceOfWinds_30
	.4byte Room_PalaceOfWinds_31
	.4byte Room_PalaceOfWinds_32
	.4byte Room_PalaceOfWinds_33
	.4byte Room_PalaceOfWinds_34
	.4byte Room_PalaceOfWinds_35
	.4byte Room_PalaceOfWinds_36
	.4byte Room_PalaceOfWinds_37
	.4byte Room_PalaceOfWinds_38
	.4byte Room_PalaceOfWinds_39
	.4byte Room_PalaceOfWinds_40
	.4byte Room_PalaceOfWinds_41
	.4byte Room_PalaceOfWinds_42
	.4byte Room_PalaceOfWinds_43
	.4byte Room_PalaceOfWinds_44
	.4byte Room_PalaceOfWinds_45
	.4byte Room_PalaceOfWinds_46
	.4byte Room_PalaceOfWinds_47
	.4byte Room_PalaceOfWinds_48
	.4byte Room_PalaceOfWinds_49
	.4byte Room_PalaceOfWinds_50

Area_PalaceOfWindsBoss:: @ 080D48C0
	.4byte Room_PalaceOfWindsBoss_Main

Area_Sanctuary:: @ 080D48C4
	.4byte Room_Sanctuary_Hall
	.4byte Room_Sanctuary_Main
	.4byte Room_Sanctuary_StainedGlass
	.4byte 0x0
	.4byte Room_Sanctuary_StainedGlass

Area_HyruleCastle:: @ 080D48D8
	.4byte Room_HyruleCastle_0
	.4byte Room_HyruleCastle_1
	.4byte Room_HyruleCastle_2
	.4byte Room_HyruleCastle_3
	.4byte Room_HyruleCastle_4
	.4byte Room_HyruleCastle_5

Area_SanctuaryEntrance:: @ 080D48F0
	.4byte Room_SanctuaryEntrance_Main

Area_DarkHyruleCastle:: @ 080D48F4
	.4byte Room_DarkHyruleCastle_1FEntrance
	.4byte Room_DarkHyruleCastle_3FTopLeftTower
	.4byte Room_DarkHyruleCastle_3FTopRightTower
	.4byte Room_DarkHyruleCastle_3FBottomLeftTower
	.4byte Room_DarkHyruleCastle_3FBottomRightTower
	.4byte Room_DarkHyruleCastle_3FKeatonHallToVaati
	.4byte Room_DarkHyruleCastle_3FTripleDarknut
	.4byte Room_DarkHyruleCastle_2FTopLeftTower
	.4byte Room_DarkHyruleCastle_2FTopLeftCorner
	.4byte Room_DarkHyruleCastle_2FBossKey
	.4byte Room_DarkHyruleCastle_2FBlueWarp
	.4byte Room_DarkHyruleCastle_2FTopRightCornerGhini
	.4byte Room_DarkHyruleCastle_2FTopRightCornerTorches
	.4byte Room_DarkHyruleCastle_2FTopRightTower
	.4byte Room_DarkHyruleCastle_2FTopLeftDarknut
	.4byte Room_DarkHyruleCastle_2FSparks
	.4byte Room_DarkHyruleCastle_2FTopRightDarknuts
	.4byte Room_DarkHyruleCastle_2FLeft
	.4byte Room_DarkHyruleCastle_2FRight
	.4byte Room_DarkHyruleCastle_2FBottomLeftDarknuts
	.4byte Room_DarkHyruleCastle_2FBossDoor
	.4byte Room_DarkHyruleCastle_2FBottomRightDarknut
	.4byte Room_DarkHyruleCastle_2FBottomLeftCornerPuzzle
	.4byte Room_DarkHyruleCastle_2FEntrance
	.4byte Room_DarkHyruleCastle_2FBottomLeftCorner
	.4byte Room_DarkHyruleCastle_2FBottomLeftTower
	.4byte Room_DarkHyruleCastle_2FBottomLeftGhini
	.4byte Room_DarkHyruleCastle_3FTopRightTower7
	.4byte Room_DarkHyruleCastle_B1Entrance
	.4byte Room_DarkHyruleCastle_2FBottomRightTower
	.4byte Room_DarkHyruleCastle_1FTopLeftTower
	.4byte Room_DarkHyruleCastle_1FThroneRoom
	.4byte Room_DarkHyruleCastle_1FCompass
	.4byte Room_DarkHyruleCastle_1FTopRightTower
	.4byte Room_DarkHyruleCastle_1FBeforeThrone
	.4byte Room_DarkHyruleCastle_1FLoopTopLeft
	.4byte Room_DarkHyruleCastle_1FLoopTop
	.4byte Room_DarkHyruleCastle_1FLoopTopRight
	.4byte Room_DarkHyruleCastle_1FLoopLeft
	.4byte Room_DarkHyruleCastle_1FLoopRight
	.4byte Room_DarkHyruleCastle_1FLoopBottomLeft
	.4byte Room_DarkHyruleCastle_1FLoopBottom
	.4byte Room_DarkHyruleCastle_1FLoopBottomRight
	.4byte Room_DarkHyruleCastle_1FBottomLeftTower
	.4byte Room_DarkHyruleCastle_1FBottomRightTower
	.4byte Room_DarkHyruleCastle_B1BelowThrone
	.4byte Room_DarkHyruleCastle_B1BelowCompass
	.4byte Room_DarkHyruleCastle_B1BeforeThrone
	.4byte Room_DarkHyruleCastle_B1ToPrison
	.4byte Room_DarkHyruleCastle_B1BombWall
	.4byte Room_DarkHyruleCastle_B1Keatons
	.4byte Room_DarkHyruleCastle_B1ToPrisonFirebar
	.4byte Room_DarkHyruleCastle_B1Cannons
	.4byte Room_DarkHyruleCastle_B1Left
	.4byte Room_DarkHyruleCastle_B1Right
	.4byte Room_DarkHyruleCastle_B1Map
	.4byte Room_DarkHyruleCastle_B2ToPrison
	.4byte Room_DarkHyruleCastle_B2Prison
	.4byte Room_DarkHyruleCastle_B2Dropdown

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
	.4byte Room_MinishHouseInteriors_SouthHyruleField
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
	.4byte Room_HouseInteriors2_StockwellLakeHouse
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
	.4byte Room_HouseInteriors4_MayorLakeCabin
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
	.4byte Room_TreeInteriors_Waveblade
	.4byte Room_TreeInteriors_14
	.4byte Room_TreeInteriors_BoomerangNorthwest
	.4byte Room_TreeInteriors_BoomerangNortheast
	.4byte Room_TreeInteriors_BoomerangSouthwest
	.4byte Room_TreeInteriors_BoomerangSoutheast
	.4byte Room_TreeInteriors_WesternWoodsHeartPiece
	.4byte Room_TreeInteriors_NorthHyruleFieldFairyFountain
	.4byte Room_TreeInteriors_MinishWoodsGreatFairy
	.4byte Room_TreeInteriors_1C
	.4byte Room_TreeInteriors_MinishWoodsBusinessScrub
	.4byte Room_TreeInteriors_1E
	.4byte Room_TreeInteriors_UnusedHeartContainer

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
	.4byte Room_CrenelCaves_LadderToSpringWater
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
	.4byte Room_MinishCracks_CastorWildsBow
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
	.4byte Area_EzloAuxCutscene_Main

Area_WindTribeTower:: @ 080D4F34
	.4byte Room_WindTribeTower_Entrance
	.4byte Room_WindTribeTower_Floor2
	.4byte Room_WindTribeTower_Floor3
	.4byte Room_WindTribeTower_Floor4

Area_WindTribeTowerRoof:: @ 080D4F44
	.4byte Area_WindTribeTowerRoof_Main

Area_GoronCave:: @ 080D4F48
	.4byte Room_GoronCave_Stairs
	.4byte Room_GoronCave_Main

Area_Caves:: @ 080D4F50
	.4byte Room_Caves_Boomerang
	.4byte Room_Caves_ToGraveyard
	.4byte Room_Caves_2
	.4byte Room_Caves_3
	.4byte Room_Caves_4
	.4byte Room_Caves_5
	.4byte Room_Caves_6
	.4byte Room_Caves_TrilbyKeeseChest
	.4byte Room_Caves_TrilbyFairyFountain
	.4byte Room_Caves_SouthHyruleFieldFairyFountain
	.4byte Room_Caves_A
	.4byte Room_Caves_HyruleTownWaterfall
	.4byte Room_Caves_LonLonRanch
	.4byte Room_Caves_LonLonRanchSecret
	.4byte Room_Caves_TrilbyHighlands
	.4byte Room_Caves_LonLonRanchWallet
	.4byte Room_Caves_SouthHyruleFieldRupee
	.4byte Room_Caves_TrilbyRupee
	.4byte Room_Caves_TrilbyMittsFairyFountain
	.4byte Room_Caves_HillsKeeseChest
	.4byte Room_Caves_BottleBusinessScrub
	.4byte Room_Caves_HeartPieceHallway
	.4byte Room_Caves_NorthHyruleFieldFairyFountain
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
	.4byte Area_MinishPaths            @ 0x11
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
	.space 36

@ Entities in Rooms
Entities_ArmosInteriors_RuinsEntranceNorth_0:: @ 080D5360
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x670000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x670000
	manager subtype=0x27
	entity_list_end

Enemies_ArmosInteriors_RuinsEntranceNorth:: @ 080D53A0
	entity_list_end

TileEntities_ArmosInteriors_RuinsEntranceNorth:: @ 080D53B0
	tile_entity_list_end

Room_ArmosInteriors_RuinsEntranceNorth:: @ 080D53B8
	.4byte Entities_ArmosInteriors_RuinsEntranceNorth_0
	.4byte 00000000
	.4byte Enemies_ArmosInteriors_RuinsEntranceNorth
	.4byte TileEntities_ArmosInteriors_RuinsEntranceNorth
	.4byte 00000000
	.4byte 00000000
	.4byte sub_unk3_ArmosInteriors_RuinsEntranceNorth
	.4byte sub_StateChange_ArmosInteriors_RuinsEntranceNorth

Entities_ArmosInteriors_RuinsEntranceSouth_0:: @ 080D53D8
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x680000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x680000
	manager subtype=0x27, paramA=0x1
	entity_list_end

Enemies_ArmosInteriors_RuinsEntranceSouth:: @ 080D5418
	entity_list_end

TileEntities_ArmosInteriors_RuinsEntranceSouth:: @ 080D5428
	tile_entity_list_end

Room_ArmosInteriors_RuinsEntranceSouth:: @ 080D5430
	.4byte Entities_ArmosInteriors_RuinsEntranceSouth_0
	.4byte 00000000
	.4byte Enemies_ArmosInteriors_RuinsEntranceSouth
	.4byte TileEntities_ArmosInteriors_RuinsEntranceSouth
	.4byte 00000000
	.4byte 00000000
	.4byte sub_unk3_ArmosInteriors_RuinsEntranceSouth
	.4byte sub_StateChange_ArmosInteriors_RuinsEntranceSouth

Entities_ArmosInteriors_RuinsLeft_0:: @ 080D5450
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x690000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x690000
	manager subtype=0x27, paramA=0x2
	entity_list_end

Enemies_ArmosInteriors_RuinsLeft:: @ 080D5490
	entity_list_end

TileEntities_ArmosInteriors_RuinsLeft:: @ 080D54A0
	tile_entity_list_end

Room_ArmosInteriors_RuinsLeft:: @ 080D54A8
	.4byte Entities_ArmosInteriors_RuinsLeft_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_RuinsLeft
	.4byte TileEntities_ArmosInteriors_RuinsLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_RuinsLeft
	.4byte sub_StateChange_ArmosInteriors_RuinsLeft

Entities_ArmosInteriors_RuinsMiddleLeft_0:: @ 080D54C8
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x6a0000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x6a0000
	manager subtype=0x27, paramA=0x3
	entity_list_end

Enemies_ArmosInteriors_RuinsMiddleLeft:: @ 080D5508
	entity_list_end

TileEntities_ArmosInteriors_RuinsMiddleLeft:: @ 080D5518
	tile_entity_list_end

Room_ArmosInteriors_RuinsMiddleLeft:: @ 080D5520
	.4byte Entities_ArmosInteriors_RuinsMiddleLeft_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_RuinsMiddleLeft
	.4byte TileEntities_ArmosInteriors_RuinsMiddleLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_RuinsMiddleLeft
	.4byte sub_StateChange_ArmosInteriors_RuinsMiddleLeft

Entities_ArmosInteriors_RuinsMiddleRight_0:: @ 080D5540
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x6b0000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x6b0000
	manager subtype=0x27, paramA=0x4
	entity_list_end


Enemies_ArmosInteriors_RuinsMiddleRight:: @ 080D5580
	entity_list_end

TileEntities_ArmosInteriors_RuinsMiddleRight:: @ 080D5590
	tile_entity_list_end

Room_ArmosInteriors_RuinsMiddleRight:: @ 080D5598
	.4byte Entities_ArmosInteriors_RuinsMiddleRight_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_RuinsMiddleRight
	.4byte TileEntities_ArmosInteriors_RuinsMiddleRight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_RuinsMiddleRight
	.4byte sub_StateChange_ArmosInteriors_RuinsMiddleRight

Entities_ArmosInteriors_RuinsRight_0:: @ 080D55B8
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x6c0000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x6c0000
	manager subtype=0x27, paramA=0x5
	entity_list_end

Enemies_ArmosInteriors_RuinsRight:: @ 080D55F8
	entity_list_end

TileEntities_ArmosInteriors_RuinsRight:: @ 080D5608
	tile_entity_list_end

Room_ArmosInteriors_RuinsRight:: @ 080D5610
	.4byte Entities_ArmosInteriors_RuinsRight_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_RuinsRight
	.4byte TileEntities_ArmosInteriors_RuinsRight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_RuinsRight
	.4byte sub_StateChange_ArmosInteriors_RuinsRight

Entities_ArmosInteriors_6_0:: @ 080D5630
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x6d0000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x6d0000
	manager subtype=0x27, paramA=0x6
	entity_list_end

Enemies_ArmosInteriors_6:: @ 080D5670
	entity_list_end

TileEntities_ArmosInteriors_6:: @ 080D5680
	tile_entity_list_end

Room_ArmosInteriors_6:: @ 080D5688
	.4byte Entities_ArmosInteriors_6_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_6
	.4byte TileEntities_ArmosInteriors_6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_6
	.4byte sub_StateChange_ArmosInteriors_6

Entities_ArmosInteriors_RuinsGrassPath_0:: @ 080D56A8
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x6e0000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x6e0000
	manager subtype=0x27, paramA=0x7
	entity_list_end

Enemies_ArmosInteriors_RuinsGrassPath:: @ 080D56E8
	entity_list_end

TileEntities_ArmosInteriors_RuinsGrassPath:: @ 080D56F8
	tile_entity_list_end

Room_ArmosInteriors_RuinsGrassPath:: @ 080D5700
	.4byte Entities_ArmosInteriors_RuinsGrassPath_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_RuinsGrassPath
	.4byte TileEntities_ArmosInteriors_RuinsGrassPath
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_RuinsGrassPath
	.4byte sub_StateChange_ArmosInteriors_RuinsGrassPath

Entities_ArmosInteriors_8_0:: @ 080D5720
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x6f0000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x6f0000
	manager subtype=0x27, paramA=0x8
	entity_list_end

Enemies_ArmosInteriors_8:: @ 080D5760
	entity_list_end

TileEntities_ArmosInteriors_8:: @ 080D5770
	tile_entity_list_end

Room_ArmosInteriors_8:: @ 080D5778
	.4byte Entities_ArmosInteriors_8_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_8
	.4byte TileEntities_ArmosInteriors_8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_8
	.4byte sub_StateChange_ArmosInteriors_8

Entities_ArmosInteriors_FortressOfWindsLeft_0:: @ 080D5798
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x700000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x700000
	manager subtype=0x27, paramA=0x9
	entity_list_end

Enemies_ArmosInteriors_FortressOfWindsLeft:: @ 080D57D8
	entity_list_end

TileEntities_ArmosInteriors_FortressOfWindsLeft:: @ 080D57E8
	tile_entity_list_end

Room_ArmosInteriors_FortressOfWindsLeft:: @ 080D57F0
	.4byte Entities_ArmosInteriors_FortressOfWindsLeft_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_FortressOfWindsLeft
	.4byte TileEntities_ArmosInteriors_FortressOfWindsLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_FortressOfWindsLeft
	.4byte sub_StateChange_ArmosInteriors_FortressOfWindsLeft

Entities_ArmosInteriors_FortressOfWindsRight_0:: @ 080D5810
	object_raw subtype=0x2f, x=0x78, y=0x38, paramC=0x710000
	object_raw subtype=0x2a, x=0x78, y=0x18, paramA=0x4, paramC=0x710000
	manager subtype=0x27, paramA=0xa
	entity_list_end

Enemies_ArmosInteriors_FortressOfWindsRight:: @ 080D5850
	entity_list_end

TileEntities_ArmosInteriors_FortressOfWindsRight:: @ 080D5860
	tile_entity_list_end

Room_ArmosInteriors_FortressOfWindsRight:: @ 080D5868
	.4byte Entities_ArmosInteriors_FortressOfWindsRight_0
	.4byte 0x00000000
	.4byte Enemies_ArmosInteriors_FortressOfWindsRight
	.4byte TileEntities_ArmosInteriors_FortressOfWindsRight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_ArmosInteriors_FortressOfWindsRight
	.4byte sub_StateChange_ArmosInteriors_FortressOfWindsRight

Entities_CrenelMinishPaths_CrenelBean_0:: @ 080D5888
	object_raw subtype=0x6b, x=0x68, y=0x68, paramA=0x3
	entity_list_end

Entities_CrenelMinishPaths_CrenelBean_1:: @ 080D58A8
	object_raw subtype=0x62, x=0x98, y=0xa8, paramA=0x1
	object_raw subtype=0x62, x=0x88, y=0x158
	object_raw subtype=0x62, x=0x68, y=0x1f8, paramA=0x1, paramB=0x1
	object_raw subtype=0x62, x=0x68, y=0x288
	manager subtype=0x2, unknown=0x18
	entity_list_end

Enemies_CrenelMinishPaths_CrenelBean:: @ 080D5908
	enemy_raw subtype=0x11, x=0x48, y=0x2b8, paramB=0x10160000, paramC=0x2900020
	enemy_raw subtype=0x11, x=0xa8, y=0x2b8, paramB=0x10160000, paramC=0x2900020
	entity_list_end

TileEntities_CrenelMinishPaths_CrenelBean:: @ 080D5938
	tile_entity type=0x7, paramB=0x3700
	tile_entity_list_end

Room_CrenelMinishPaths_CrenelBean:: @ 080D5948
	.4byte Entities_CrenelMinishPaths_CrenelBean_0
	.4byte Entities_CrenelMinishPaths_CrenelBean_1
	.4byte Enemies_CrenelMinishPaths_CrenelBean
	.4byte TileEntities_CrenelMinishPaths_CrenelBean
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelMinishPaths_CrenelBean
	.4byte sub_StateChange_CrenelMinishPaths_CrenelBean

Entities_CrenelMinishPaths_CrenelWater_0:: @ 080D5968
	entity_list_end

Entities_CrenelMinishPaths_CrenelWater_1:: @ 080D5978
	object_raw subtype=0x62, x=0x28, y=0x78, paramA=0x3, paramB=0x1
	object_raw subtype=0x62, x=0x58, y=0x88, paramA=0x3
	object_raw subtype=0x62, x=0xa8, y=0x78, paramA=0x3, paramB=0x3
	object_raw subtype=0x62, x=0xc8, y=0x78, paramA=0x3
	object_raw subtype=0x62, x=0x98, y=0xf8, paramA=0x2
	object_raw subtype=0x62, x=0x58, y=0x188, paramA=0x2, paramB=0x1
	object_raw subtype=0x62, x=0x98, y=0x238, paramA=0x2
	object_raw subtype=0x62, x=0x58, y=0x2d8, paramA=0x2, paramB=0x1
	object_raw subtype=0x6e, x=0x78, y=0x40
	manager subtype=0x2, unknown=0x18
	entity_list_end

Enemies_CrenelMinishPaths_CrenelWater:: @ 080D5A28
	enemy_raw subtype=0x32, x=0x88, y=0x298
	enemy_raw subtype=0x32, x=0x48, y=0x258
	enemy_raw subtype=0x32, x=0x78, y=0x1d8
	enemy_raw subtype=0x32, x=0xb8, y=0x178
	enemy_raw subtype=0x32, x=0x48, y=0x128
	enemy_raw subtype=0x32, x=0x88, y=0xc8
.ifdef EU
	enemy_raw subtype=0x21, x=0x38, y=0x1, paramB=0x652e0000
	enemy_raw subtype=0x21, x=0xa8, y=0x1, paramA=0x1, paramB=0x652e0000
	enemy_raw subtype=0x21, x=0x78, y=0x1, paramA=0x2, paramB=0x652e0000
.endif
	entity_list_end

TileEntities_CrenelMinishPaths_CrenelWater:: @ 080D5A98
	tile_entity type=0x7, paramB=0x3700
	tile_entity_list_end

Room_CrenelMinishPaths_CrenelWater:: @ 080D5AA8
	.4byte Entities_CrenelMinishPaths_CrenelWater_0
	.4byte Entities_CrenelMinishPaths_CrenelWater_1
	.4byte Enemies_CrenelMinishPaths_CrenelWater
	.4byte TileEntities_CrenelMinishPaths_CrenelWater
	.4byte sub_unk1_CrenelMinishPaths_CrenelWater
	.4byte 0x00000000
	.4byte sub_unk3_CrenelMinishPaths_CrenelWater
	.4byte sub_StateChange_CrenelMinishPaths_CrenelWater

Entities_CrenelMinishPaths_Rainfall_0:: @ 080D5AC8
	ezlo_hint x=8, y=4, rx=3, ry=9, msg=0xb1c, flag=0xc1
	entity_list_end

Entities_CrenelMinishPaths_Rainfall_1:: @ 080D5AE8
	manager subtype=0x1c
	manager subtype=0x8, unknown=0x18
	entity_list_end

Enemies_CrenelMinishPaths_Rainfall:: @ 080D5B18
	entity_list_end

TileEntities_CrenelMinishPaths_Rainfall:: @ 080D5B28
	tile_entity type=0x7, paramB=0x1e00
	tile_entity_list_end

Room_CrenelMinishPaths_Rainfall:: @ 080D5B38
	.4byte Entities_CrenelMinishPaths_Rainfall_0
	.4byte Entities_CrenelMinishPaths_Rainfall_1
	.4byte Enemies_CrenelMinishPaths_Rainfall
	.4byte TileEntities_CrenelMinishPaths_Rainfall
	.4byte sub_unk1_CrenelMinishPaths_Rainfall
	.4byte 0x00000000
	.4byte sub_unk3_CrenelMinishPaths_Rainfall
	.4byte sub_StateChange_CrenelMinishPaths_Rainfall

Entities_CrenelMinishPaths_MelarisMine_0:: @ 080D5B58
	entity_list_end

Entities_CrenelMinishPaths_MelarisMine_1:: @ 080D5B68
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x12, paramB=0xb
	manager subtype=0x8, unknown=0x18
	entity_list_end

Enemies_CrenelMinishPaths_MelarisMine:: @ 080D5B98
	enemy_raw subtype=0x32, x=0x2b8, y=0x58
	enemy_raw subtype=0x32, x=0x278, y=0x88
	enemy_raw subtype=0x32, x=0x208, y=0x58
	enemy_raw subtype=0x32, x=0x198, y=0x48
	enemy_raw subtype=0x32, x=0xd8, y=0x58
	enemy_raw subtype=0x32, x=0xe8, y=0x98
	enemy_raw subtype=0x32, x=0x38, y=0x68
	enemy_raw subtype=0x32, x=0x2c8, y=0x98
	entity_list_end

TileEntities_CrenelMinishPaths_MelarisMine:: @ 080D5C28
	tile_entity type=0x7, paramB=0x3700
	tile_entity_list_end

Room_CrenelMinishPaths_MelarisMine:: @ 080D5C38
	.4byte Entities_CrenelMinishPaths_MelarisMine_0
	.4byte Entities_CrenelMinishPaths_MelarisMine_1
	.4byte Enemies_CrenelMinishPaths_MelarisMine
	.4byte TileEntities_CrenelMinishPaths_MelarisMine
	.4byte sub_unk1_CrenelMinishPaths_MelarisMine
	.4byte 0x00000000
	.4byte sub_unk3_CrenelMinishPaths_MelarisMine
	.4byte sub_StateChange_CrenelMinishPaths_MelarisMine

Entities_MinishPaths_ToMinishVillage_0:: @ 080D5C58
	entity_list_end

Entities_MinishPaths_ToMinishVillage_1:: @ 080D5C68
	object_raw subtype=0x9a, x=0x50, y=0x70, collision=1, paramA=0x2
	object_raw subtype=0x9a, x=0x90, y=0x160, collision=1
	object_raw subtype=0x9a, x=0xa0, y=0x230, collision=1, paramA=0x3
	object_raw subtype=0x9a, x=0x60, y=0x2a0, collision=1, paramA=0x1
	object_raw subtype=0x3f, x=0x68, y=0x108, collision=1, paramA=0x1
	object_raw subtype=0x3f, x=0x78, y=0x1b8, collision=1
	object_raw subtype=0x3f, x=0xa8, y=0x2f8, collision=1, paramA=0x1
	manager subtype=0x2, unknown=0x18
	entity_list_end

Enemies_MinishPaths_ToMinishVillage:: @ 080D5CF8
	entity_list_end

TileEntities_MinishPaths_ToMinishVillage:: @ 080D5D08
	tile_entity type=0x7, paramB=0x1d00
	tile_entity_list_end

Room_MinishPaths_ToMinishVillage:: @ 080D5D18
	.4byte Entities_MinishPaths_ToMinishVillage_0
	.4byte Entities_MinishPaths_ToMinishVillage_1
	.4byte Enemies_MinishPaths_ToMinishVillage
	.4byte TileEntities_MinishPaths_ToMinishVillage
	.4byte sub_unk1_MinishPaths_ToMinishVillage
	.4byte 0x00000000
	.4byte sub_unk3_MinishPaths_ToMinishVillage
	.4byte sub_StateChange_MinishPaths_ToMinishVillage

Entities_MinishPaths_CastorWilds_0:: @ 080D5D38
	object_raw subtype=0x14, x=0x78, y=0x48, paramB=0x100
	object_raw subtype=0x14, x=0x78, y=0x2d8, paramB=0x100
	entity_list_end

Entities_MinishPaths_CastorWilds_1:: @ 080D5D68
	object_raw subtype=0x78, x=0xa0, y=0x90, collision=1, paramB=0x1
	object_raw subtype=0x78, x=0x70, y=0x190, collision=1
	object_raw subtype=0x78, x=0xa0, y=0x220, collision=1, paramB=0x2
	manager subtype=0x2, unknown=0x18
	entity_list_end

Enemies_MinishPaths_CastorWilds:: @ 080D5DB8
	entity_list_end

TileEntities_MinishPaths_CastorWilds:: @ 080D5DC8
	tile_entity type=0x7, paramB=0x1f00
	tile_entity_list_end

Room_MinishPaths_CastorWilds:: @ 080D5DD8
	.4byte Entities_MinishPaths_CastorWilds_0
	.4byte Entities_MinishPaths_CastorWilds_1
	.4byte Enemies_MinishPaths_CastorWilds
	.4byte TileEntities_MinishPaths_CastorWilds
	.4byte sub_unk1_MinishPaths_CastorWilds
	.4byte 0x00000000
	.4byte sub_unk3_MinishPaths_CastorWilds
	.4byte sub_StateChange_MinishPaths_CastorWilds

Entities_MinishPaths_HyruleTown_0:: @ 080D5DF8
	object_raw subtype=0x0, x=0x58, y=0x44, collision=1, paramA=0x63, paramB=0x400, paramC=0x7e0000
	entity_list_end

Entities_MinishPaths_HyruleTown_1:: @ 080D5E18
	object_raw subtype=0x78, x=0x40, y=0x60, collision=1, paramA=0x1, paramB=0x3
	object_raw subtype=0x78, x=0x18, y=0x68, collision=2, paramA=0x1, paramB=0x1
	object_raw subtype=0x78, x=0xd0, y=0x98, collision=2, paramA=0x1, paramB=0x4
	object_raw subtype=0x78, x=0x10, y=0xc8, collision=2, paramA=0x1, paramB=0x5
	object_raw subtype=0x78, x=0xd8, y=0x100, collision=2, paramA=0x1
	object_raw subtype=0x78, x=0xc8, y=0x140, collision=1, paramA=0x1, paramB=0x2
	object_raw subtype=0x78, x=0x8, y=0x148, collision=2, paramA=0x1, paramB=0x1
	object_raw subtype=0x78, x=0xe0, y=0x188, collision=2, paramA=0x1, paramB=0x4
	object_raw subtype=0x78, x=0x18, y=0x1a0, collision=2, paramA=0x1, paramB=0x1
	object_raw subtype=0x78, x=0xd8, y=0x200, collision=2, paramA=0x1
	object_raw subtype=0x78, x=0x38, y=0x218, collision=1, paramA=0x1, paramB=0x3
	object_raw subtype=0x78, x=0xd8, y=0x240, collision=2, paramA=0x1
	object_raw subtype=0x78, x=0x20, y=0x280, collision=2, paramA=0x1, paramB=0x5
	object_raw subtype=0x78, x=0xd0, y=0x298, collision=2, paramA=0x1, paramB=0x4
	object_raw subtype=0x78, x=0x18, y=0x2d8, collision=2, paramA=0x1, paramB=0x1
	manager subtype=0x2, unknown=0x18
	entity_list_end

Enemies_MinishPaths_HyruleTown:: @ 080D5F28
	enemy_raw subtype=0x40, x=0x80, y=0x1f0, paramB=0x40140000, paramC=0x1000020
	entity_list_end

TileEntities_MinishPaths_HyruleTown:: @ 080D5F48
	tile_entity type=0x2, paramA=0x7f, paramB=0x6f5c, paramC=0x83
	tile_entity type=0x2, paramA=0x80, paramB=0x705c, paramC=0x8a
	tile_entity type=0x2, paramA=0x81, paramB=0x6f5c, paramC=0x14b
	tile_entity type=0x7, paramB=0x2000
	tile_entity_list_end

Room_MinishPaths_HyruleTown:: @ 080D5F70
	.4byte Entities_MinishPaths_HyruleTown_0
	.4byte Entities_MinishPaths_HyruleTown_1
	.4byte Enemies_MinishPaths_HyruleTown
	.4byte TileEntities_MinishPaths_HyruleTown
	.4byte sub_unk1_MinishPaths_HyruleTown
	.4byte 0x00000000
	.4byte sub_unk3_MinishPaths_HyruleTown
	.4byte sub_StateChange_MinishPaths_HyruleTown

Entities_MinishPaths_LonLonRanch_0:: @ 080D5F90
	object_raw subtype=0x0, x=0x78, y=0x54, collision=1, paramA=0x63, paramB=0x400, paramC=0xba0000
	entity_list_end

Entities_MinishPaths_LonLonRanch_1:: @ 080D5FB0
	object_raw subtype=0x78, x=0x10, y=0x78, collision=2, paramA=0x2
	object_raw subtype=0x78, x=0xe0, y=0x128, collision=2, paramA=0x2, paramB=0x3
	object_raw subtype=0x78, x=0x10, y=0x1e8, collision=2, paramA=0x2, paramB=0x1
	object_raw subtype=0x78, x=0xe0, y=0x288, collision=2, paramA=0x2, paramB=0x2
	manager subtype=0x2, unknown=0x18
	entity_list_end

Enemies_MinishPaths_LonLonRanch:: @ 080D6010
	enemy_raw subtype=0xf, x=0x88, y=0x118, paramB=0x2c160000, paramC=0x200020
	enemy_raw subtype=0xf, x=0x68, y=0x298, paramB=0x2c160000, paramC=0x1900020
	enemy_raw subtype=0x11, x=0xa8, y=0x1d8, collision=1, paramA=0x1
	enemy_raw subtype=0x11, x=0x68, y=0x1a8, collision=1, paramA=0x1
	enemy_raw subtype=0x11, x=0x98, y=0x48, collision=1, paramA=0x1
	entity_list_end

TileEntities_MinishPaths_LonLonRanch:: @ 080D6070
	tile_entity_list_end

Room_MinishPaths_LonLonRanch:: @ 080D6078
	.4byte Entities_MinishPaths_LonLonRanch_0
	.4byte Entities_MinishPaths_LonLonRanch_1
	.4byte Enemies_MinishPaths_LonLonRanch
	.4byte TileEntities_MinishPaths_LonLonRanch
	.4byte sub_unk1_MinishPaths_LonLonRanch
	.4byte 0x00000000
	.4byte sub_unk3_MinishPaths_LonLonRanch
	.4byte sub_StateChange_MinishPaths_LonLonRanch

Entities_MinishPaths_MayorsCabin_0:: @ 080D6098
	object_raw subtype=0x14, x=0x78, y=0x58, paramB=0x100
	object_raw subtype=0x14, x=0x78, y=0x2b8, paramB=0x100
	entity_list_end

Entities_MinishPaths_MayorsCabin_1:: @ 080D60C8
	object_raw subtype=0x78, x=0x28, y=0x90, collision=2, paramA=0x3
	object_raw subtype=0x78, x=0xe8, y=0x88, collision=2, paramA=0x3, paramB=0x2
	object_raw subtype=0x78, x=0x28, y=0x148, collision=2, paramA=0x3, paramB=0x3
	object_raw subtype=0x78, x=0xc8, y=0x188, collision=2, paramA=0x3, paramB=0x1
	object_raw subtype=0x78, x=0x28, y=0x298, collision=2, paramA=0x3
	manager subtype=0x2, unknown=0x18
	entity_list_end

Entities_MinishPaths_MayorsCabin_gUnk_080D6138:: @ 080D6138
	enemy_raw subtype=0x11, x=0x48, y=0x148
	enemy_raw subtype=0x11, x=0xa8, y=0x148
	enemy_raw subtype=0x11, x=0x78, y=0x158
	enemy_raw subtype=0x11, x=0x98, y=0x188
	enemy_raw subtype=0x11, x=0x58, y=0x198
	entity_list_end

TileEntities_MinishPaths_MayorsCabin:: @ 080D6198
	tile_entity_list_end

Room_MinishPaths_MayorsCabin:: @ 080D61A0
	.4byte Entities_MinishPaths_MayorsCabin_0
	.4byte Entities_MinishPaths_MayorsCabin_1
	.4byte 0x00000000
	.4byte TileEntities_MinishPaths_MayorsCabin
	.4byte sub_unk1_MinishPaths_MayorsCabin
	.4byte 0x00000000
	.4byte sub_unk3_MinishPaths_MayorsCabin
	.4byte sub_StateChange_MinishPaths_MayorsCabin

Entities_HouseInteriors1_Mayor_0:: @ 080D61C0
	npc_raw subtype=0x4b, x=0x88, y=0x60, script=script_Mayor
	object_raw subtype=0x4c, x=0x7c, y=0x48, collision=1
	object_raw subtype=0x4c, x=0x94, y=0x48, collision=1
	ezlo_hint x=0xa, y=0x12, rx=0x3, ry=0x1, msg=0xb55, flag=0xc4
	entity_list_end

Entities_HouseInteriors1_Mayor_080D6210:: @ 080D6210
	object_raw subtype=0x5c, x=0x38, y=0x28, collision=1, paramB=0x3080, paramC=0x1b0000
	object_raw subtype=0x5c, x=0x58, y=0x28, collision=1, paramA=0x1, paramB=0x3040, paramC=0x1c0000
	object_raw subtype=0x5c, x=0xb8, y=0x28, collision=1, paramB=0x3041, paramC=0x1d0000
	object_raw subtype=0x5c, x=0xd8, y=0x28, collision=1, paramA=0x1, paramB=0x3041, paramC=0x1e0000
	entity_list_end

Entities_HouseInteriors1_Mayor_1:: @ 080D6260
	object_raw subtype=0x4f, x=0x68, y=0xb8, paramA=0x4, paramB=0x2
	object_raw subtype=0x4f, x=0x108, y=0x68, paramA=0x5, paramB=0x1
	object_raw subtype=0x4e, x=0x38, y=0x28, collision=1, paramB=0x800
	object_raw subtype=0x4d, x=0x88, y=0x68, collision=1, paramA=0x1b
	object_raw subtype=0x4d, x=0x88, y=0x58, collision=1, paramA=0x1b, paramB=0x1
	object_raw subtype=0x38, x=0x30, y=0x6e, unknown=0x0, paramA=0x1a
	entity_list_end

Enemies_HouseInteriors1_Mayor:: @ 080D62D0
	entity_list_end

TileEntities_HouseInteriors1_Mayor:: @ 080D62E0
	tile_entity_list_end

gUnk_additional_8_HouseInteriors1_Mayor:: @ 080D62E8
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors1_Mayor.bin"

Room_HouseInteriors1_Mayor:: @ 080D62FC
	.4byte Entities_HouseInteriors1_Mayor_0
	.4byte Entities_HouseInteriors1_Mayor_1
	.4byte Enemies_HouseInteriors1_Mayor
	.4byte TileEntities_HouseInteriors1_Mayor
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_Mayor
	.4byte sub_StateChange_HouseInteriors1_Mayor
	.4byte gUnk_additional_8_HouseInteriors1_Mayor

Entities_HouseInteriors1_PostOffice_0:: @ 080D6320
	npc_raw subtype=0xa, x=0x48, y=0x38, script=script_Stamp
	entity_list_end

gUnk_080D6340:: @ 080D6340
	npc_raw subtype=0xc, x=0x68, y=0x38, script=script_Marcy
	entity_list_end

gUnk_080D6360:: @ 080D6360
	object_raw subtype=0x60, x=0x88, y=0x40
	entity_list_end

gUnk_080D6380:: @ 080D6380
	object_raw subtype=0x60, x=0x98, y=0x40, paramA=0x1
	entity_list_end

gUnk_080D63A0:: @ 080D63A0
	object_raw subtype=0x60, x=0xa8, y=0x40, paramA=0x2
	entity_list_end

gUnk_080D63C0:: @ 080D63C0
	object_raw subtype=0x60, x=0xb8, y=0x40, paramA=0x3
	entity_list_end

gUnk_080D63E0:: @ 080D63E0
	object_raw subtype=0x60, x=0x88, y=0x68, paramA=0x4
	entity_list_end

gUnk_080D6400:: @ 080D6400
	object_raw subtype=0x60, x=0x98, y=0x68, paramA=0x5
	entity_list_end

gUnk_080D6420:: @ 080D6420
	object_raw subtype=0x60, x=0xa8, y=0x68, paramA=0x6
	entity_list_end

gUnk_080D6440:: @ 080D6440
	object_raw subtype=0x60, x=0xb8, y=0x68, paramA=0x7
	entity_list_end

Entities_HouseInteriors1_PostOffice_1:: @ 080D6460
	object_raw subtype=0x4f, x=0x78, y=0xa8, paramA=0x4, paramB=0x2
	object_raw subtype=0x4d, x=0x40, y=0x28, collision=1, paramA=0x19
	object_raw subtype=0x4d, x=0x60, y=0x28, collision=1, paramA=0x19
	object_raw subtype=0x4d, x=0x80, y=0x28, collision=1, paramA=0x19
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1, paramA=0x1
	object_raw subtype=0x4d, x=0xa8, y=0x28, collision=1, paramA=0x1
	object_raw subtype=0x4d, x=0xb8, y=0x28, collision=1, paramA=0x1
	entity_list_end

Enemies_HouseInteriors1_PostOffice:: @ 080D64E0
	entity_list_end

TileEntities_HouseInteriors1_PostOffice:: @ 080D64F0
	tile_entity_list_end

gUnk_080D64F8:: @ 080D64F8
	.incbin "data_080D5360/gUnk_080D64F8.bin"

gUnk_080D6508:: @ 080D6508
	.incbin "data_080D5360/gUnk_080D6508.bin"

Room_HouseInteriors1_PostOffice:: @ 080D6518
	.4byte Entities_HouseInteriors1_PostOffice_0
	.4byte Entities_HouseInteriors1_PostOffice_1
	.4byte Enemies_HouseInteriors1_PostOffice
	.4byte TileEntities_HouseInteriors1_PostOffice
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_PostOffice
	.4byte sub_StateChange_HouseInteriors1_PostOffice

Entities_HouseInteriors1_Library2F_0:: @ 080D6538
	ezlo_hint x=0x16, y=0xe, rx=0x1, ry=0x2, msg=0xb57, flag=0xc5
	entity_list_end

gUnk_080D6558:: @ 080D6558
	npc_raw subtype=0x1a, x=0xa8, y=0x48, unknown=0xf, script=0x0
	entity_list_end

gUnk_080D6578:: @ 080D6578
	npc_raw subtype=0x1a, x=0x38, y=0x40, paramA=0x2, script=script_Sturgeon
	entity_list_end

Entities_HouseInteriors1_Library2F_1:: @ 080D6598
	object_raw subtype=0x4d, x=0xa8, y=0x28, collision=1, paramB=0x1
	object_raw subtype=0x4d, x=0x48, y=0x68, collision=1, paramB=0x1
	object_raw subtype=0x4d, x=0xa8, y=0x68, collision=1, paramB=0x1
	object_raw subtype=0x4f, x=0x78, y=0xa8, paramA=0x4, paramB=0x2
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0x5
	object_raw subtype=0x4e, x=0x48, y=0x90, collision=1, paramB=0x802
	manager subtype=0x6, paramA=0x9
	entity_list_end

gUnk_080D6618:: @ 080D6618
	object_raw subtype=0x4d, x=0x48, y=0x28, collision=1, paramA=0x25, paramB=0x1
	entity_list_end

gUnk_080D6638:: @ 080D6638
	object_raw subtype=0x4d, x=0x48, y=0x28, collision=1, paramA=0x25
	entity_list_end

Enemies_HouseInteriors1_Library2F:: @ 080D6658
	entity_list_end

TileEntities_HouseInteriors1_Library2F:: @ 080D6668
	tile_entity_list_end

gUnk_additional_8_HouseInteriors1_Library2F:: @ 080D6670
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors1_Library2F.bin"

gUnk_additional_9_HouseInteriors1_Library2F:: @ 080D6684
	exit_region_raw centerX=0x48, centerY=0x34, halfWidth=0x18, halfHeight=0x4, exitIndex=0xa, bitfield=0x1
	exit_region_list_end

gUnk_additional_a_HouseInteriors1_Library2F:: @ 080D6694
	exit_raw transition=0x1, destX=0xa8, destY=0x1a8, destArea=0x2d, destRoom=0x10, unknownA=0x1

Room_HouseInteriors1_Library2F:: @ 080D66A8
	.4byte Entities_HouseInteriors1_Library2F_0
	.4byte Entities_HouseInteriors1_Library2F_1
	.4byte Enemies_HouseInteriors1_Library2F
	.4byte TileEntities_HouseInteriors1_Library2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_Library2F
	.4byte sub_StateChange_HouseInteriors1_Library2F
	.4byte gUnk_additional_8_HouseInteriors1_Library2F
	.4byte gUnk_additional_9_HouseInteriors1_Library2F
	.4byte gUnk_additional_a_HouseInteriors1_Library2F

Entities_HouseInteriors1_Library1F_0:: @ 080D66D4
	npc_raw subtype=0x3d, x=0x128, y=0xa8, script=script_LibrarianRight
	entity_list_end

gUnk_additional_8_HouseInteriors1_Library1F:: @ 080D66F4
	npc_raw subtype=0x3d, x=0xa8, y=0xa8, paramA=0x1, script=script_LibrarianLeft
	entity_list_end

gUnk_080D6714:: @ 080D6714
	npc_raw subtype=0x6, x=0x38, y=0x40, paramB=0x400, script=script_LibraryVisitor
	entity_list_end

gUnk_additional_9_HouseInteriors1_Library1F:: @ 080D6734
	npc_raw subtype=0x3d, x=0xa8, y=0xa8, paramA=0x1, script=script_LibrarianLeftWithQuest
	object_raw subtype=0x8c, x=0x98, y=0x90, collision=1, paramB=0x3
	object_raw subtype=0x8c, x=0xac, y=0x90, collision=1, paramA=0x1, paramB=0x3
	object_raw subtype=0x8c, x=0xc0, y=0x90, collision=1, paramA=0x2, paramB=0x3
	entity_list_end

gUnk_080D6784:: @ 080D6784
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69AllBooksCollected
	npc_raw subtype=0x1a, x=0x68, y=0x18, paramA=0x1, script=script_SturgeonAllBooksCollected
	entity_list_end

Entities_HouseInteriors1_Library1F_1:: @ 080D67B4
	object_raw subtype=0x4d, x=0x38, y=0x28, collision=1
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1
	object_raw subtype=0x4d, x=0x38, y=0x68, collision=1
	object_raw subtype=0x4d, x=0x98, y=0x68, collision=1
	object_raw subtype=0x4d, x=0xb0, y=0x98, collision=1, paramA=0x3c
	object_raw subtype=0x4d, x=0x120, y=0x68, collision=1, paramA=0x2
	object_raw subtype=0x5c, x=0xd0, y=0x8, collision=1, paramB=0x3000
	object_raw subtype=0x5c, x=0xf0, y=0x8, collision=1, paramA=0x1, paramB=0x3001
	object_raw subtype=0x5c, x=0x110, y=0x8, collision=1, paramB=0x3002
	object_raw subtype=0x5c, x=0x130, y=0x8, collision=1, paramA=0x1, paramB=0x3000
	object_raw subtype=0x5a, x=0x114, y=0x68, collision=1, paramB=0x1
	object_raw subtype=0x5a, x=0x12c, y=0x68, collision=1, paramB=0x1
	object_raw subtype=0x4f, x=0xe8, y=0xf8, paramA=0x4, paramB=0x2
	object_raw subtype=0x4f, x=0x68, y=0x8, paramA=0x5
	entity_list_end

Enemies_HouseInteriors1_Library1F:: @ 080D68A4
	entity_list_end

TileEntities_HouseInteriors1_Library1F:: @ 080D68B4
	tile_entity type=0x5, paramB=0x1c00, paramC=0x192, paramD=0x61c
	tile_entity type=0x5, paramB=0x1c00, paramC=0x191, paramD=0x61c
	tile_entity_list_end

Room_HouseInteriors1_Library1F:: @ 080D68CC
	.4byte Entities_HouseInteriors1_Library1F_0
	.4byte Entities_HouseInteriors1_Library1F_1
	.4byte Enemies_HouseInteriors1_Library1F
	.4byte TileEntities_HouseInteriors1_Library1F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_Library1F
	.4byte sub_StateChange_HouseInteriors1_Library1F
	.4byte gUnk_additional_8_HouseInteriors1_Library1F
	.4byte gUnk_additional_9_HouseInteriors1_Library1F

Entities_HouseInteriors1_Inn1F_0:: @ 080D68F4
	npc_raw subtype=0x47, x=0x40, y=0x38, script=script_Emma
	npc_raw subtype=0x6, x=0xb8, y=0x48, paramA=0x9, paramB=0x400, script=script_Townsperson2
	entity_list_end

gUnk_080D6924:: @ 080D6924
	npc_raw subtype=0x7, x=0xe8, y=0x38, paramA=0x7, paramB=0x400, script=script_Kid4
	npc_raw subtype=0x7, x=0xe8, y=0x68, paramA=0x8, paramB=0x400, script=script_Kid4
	entity_list_end

Entities_HouseInteriors1_Inn1F_1:: @ 080D6954
	object_raw subtype=0x4f, x=0x68, y=0x98, paramA=0x4, paramB=0x2
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0x5
	object_raw subtype=0x4f, x=0xb8, y=0x8, paramA=0x5
	object_raw subtype=0x4f, x=0xf8, y=0x8, paramA=0x5
	entity_list_end

Enemies_HouseInteriors1_Inn1F:: @ 080D69A4
	entity_list_end

TileEntities_HouseInteriors1_Inn1F:: @ 080D69B4
	tile_entity_list_end

Room_HouseInteriors1_Inn1F:: @ 080D69BC
	.4byte Entities_HouseInteriors1_Inn1F_0
	.4byte Entities_HouseInteriors1_Inn1F_1
	.4byte Enemies_HouseInteriors1_Inn1F
	.4byte TileEntities_HouseInteriors1_Inn1F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_Inn1F
	.4byte sub_StateChange_HouseInteriors1_Inn1F

Entities_HouseInteriors1_InnWestRoom_0:: @ 080D69DC
	entity_list_end

Entities_HouseInteriors1_InnWestRoom_1:: @ 080D69EC
	object_raw subtype=0x4f, x=0x98, y=0x98, paramA=0x5, paramB=0x2
	object_raw subtype=0x4c, x=0x6c, y=0x28, collision=1, paramA=0x2
	object_raw subtype=0x4c, x=0x84, y=0x28, collision=1, paramB=0x1
	entity_list_end

Enemies_HouseInteriors1_InnWestRoom:: @ 080D6A2C
	entity_list_end

TileEntities_HouseInteriors1_InnWestRoom:: @ 080D6A3C
	tile_entity_list_end

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
	.4byte Entities_HouseInteriors1_InnWestRoom_0
	.4byte Entities_HouseInteriors1_InnWestRoom_1
	.4byte Enemies_HouseInteriors1_InnWestRoom
	.4byte TileEntities_HouseInteriors1_InnWestRoom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_InnWestRoom
	.4byte sub_StateChange_HouseInteriors1_InnWestRoom

Entities_HouseInteriors1_InnMiddleRoom_0:: @ 080D6AA0
	entity_list_end

Entities_HouseInteriors1_InnMiddleRoom_1:: @ 080D6AB0
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x5, paramB=0x2
	object_raw subtype=0x4d, x=0xa8, y=0x48, collision=1, paramA=0x6
	entity_list_end

Enemies_HouseInteriors1_InnMiddleRoom:: @ 080D6AE0
	entity_list_end

TileEntities_HouseInteriors1_InnMiddleRoom:: @ 080D6AF0
	tile_entity_list_end

gUnk_080D6AF8:: @ 080D6AF8
	.incbin "data_080D5360/gUnk_080D6AF8.bin"

gUnk_080D6B08:: @ 080D6B08
	.incbin "data_080D5360/gUnk_080D6B08.bin"

gUnk_080D6B18:: @ 080D6B18
	.4byte gUnk_080D6AF8
	.4byte gUnk_080D6B08

Room_HouseInteriors1_InnMiddleRoom:: @ 080D6B20
	.4byte Entities_HouseInteriors1_InnMiddleRoom_0
	.4byte Entities_HouseInteriors1_InnMiddleRoom_1
	.4byte Enemies_HouseInteriors1_InnMiddleRoom
	.4byte TileEntities_HouseInteriors1_InnMiddleRoom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_InnMiddleRoom
	.4byte sub_StateChange_HouseInteriors1_InnMiddleRoom

Entities_HouseInteriors1_InnEastRoom_0:: @ 080D6B40
	entity_list_end

Entities_HouseInteriors1_InnEastRoom_1:: @ 080D6B50
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x5, paramB=0x2
	entity_list_end

Enemies_HouseInteriors1_InnEastRoom:: @ 080D6B70
	entity_list_end

TileEntities_HouseInteriors1_InnEastRoom:: @ 080D6B80
	tile_entity_list_end

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
	.4byte Entities_HouseInteriors1_InnEastRoom_0
	.4byte Entities_HouseInteriors1_InnEastRoom_1
	.4byte Enemies_HouseInteriors1_InnEastRoom
	.4byte TileEntities_HouseInteriors1_InnEastRoom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_InnEastRoom
	.4byte sub_StateChange_HouseInteriors1_InnEastRoom

Entities_HouseInteriors1_InnWest2F_0:: @ 080D6BE4
	entity_list_end

UpperInn_Oracles:: @ 080D6BF4
	npc_raw subtype=0x17, x=0x70, y=0x48, script=script_Din
	npc_raw subtype=0x18, x=0x88, y=0x48, script=script_Nayru
	npc_raw subtype=0x19, x=0xa0, y=0x48, script=script_Farore
	entity_list_end

UpperInn_NoFarore:: @ 080D6C34
	npc_raw subtype=0x17, x=0x7c, y=0x48, script=script_Din2
	npc_raw subtype=0x18, x=0x94, y=0x48, script=script_Nayru2
	entity_list_end

UpperInn_NoDin:: @ 080D6C64
	npc_raw subtype=0x18, x=0x7c, y=0x48, script=script_Nayru2
	npc_raw subtype=0x19, x=0x94, y=0x48, script=script_Farore2
	entity_list_end

UpperInn_NoNayru:: @ 080D6C94
	npc_raw subtype=0x17, x=0x7c, y=0x48, script=script_Din2
	npc_raw subtype=0x19, x=0x94, y=0x48, script=script_Farore2
	entity_list_end

UpperInn_Din:: @ 080D6CC4
	npc_raw subtype=0x17, x=0x88, y=0x48, script=script_DinAlone
	entity_list_end

UpperInn_Nayru:: @ 080D6CE4
	npc_raw subtype=0x18, x=0x88, y=0x48, script=script_NayruAlone
	entity_list_end

UpperInn_Farore:: @ 080D6D04
	npc_raw subtype=0x19, x=0x88, y=0x48, script=script_FaroreAlone
	entity_list_end

Entities_HouseInteriors1_InnWest2F_1:: @ 080D6D24
	object_raw subtype=0x4f, x=0x68, y=0x98, paramA=0x4, paramB=0x2
	object_raw subtype=0x4f, x=0xe8, y=0x48, paramA=0x5, paramB=0x1
	object_raw subtype=0x5, x=0x48, y=0x78
	object_raw subtype=0x5, x=0x48, y=0x58
	object_raw subtype=0x5, x=0x48, y=0x68
	entity_list_end

Enemies_HouseInteriors1_InnWest2F:: @ 080D6D84
	entity_list_end

TileEntities_HouseInteriors1_InnWest2F:: @ 080D6D94
	tile_entity_list_end

Room_HouseInteriors1_InnWest2F:: @ 080D6D9C
	.4byte Entities_HouseInteriors1_InnWest2F_0
	.4byte Entities_HouseInteriors1_InnWest2F_1
	.4byte Enemies_HouseInteriors1_InnWest2F
	.4byte TileEntities_HouseInteriors1_InnWest2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_InnWest2F
	.4byte sub_StateChange_HouseInteriors1_InnWest2F

Entities_HouseInteriors1_InnEast2F_0:: @ 080D6DBC
	manager subtype=0x16, paramA=0x8
	entity_list_end

gUnk_additional_8_HouseInteriors1_InnEast2F:: @ 080D6DDC
	delayed_entity_raw subtype=0x13, x=0x76, y=0xc0, layer=1, paramA=0x1, paramB=0x2, paramC=script_SittingPerson, conditions=0x3f8
	delayed_entity_raw subtype=0x7, x=0x68, y=0x98, layer=1, paramC=script_Kid4, paramD=0x4, conditions=0x300
	delayed_entity_raw subtype=0x7, x=0x48, y=0x98, layer=1, paramA=0x6, paramC=script_Kid4, paramD=0x4, conditions=0x300
	delayed_entity_raw subtype=0x7, x=0x48, y=0x98, layer=1, paramA=0x6, paramC=script_KidInn, paramD=0x4, conditions=0x10
	delayed_entity_raw subtype=0x7, x=0x38, y=0xc8, layer=1, paramA=0x7, paramC=script_KidInn, paramD=0x4, conditions=0x10
	delayed_entity_raw subtype=0x7, x=0x58, y=0xd8, layer=1, paramA=0x8, paramC=script_KidInn, paramD=0x4, conditions=0x10
	delayed_entity_raw subtype=0x6, x=0x58, y=0xa8, layer=1, paramA=0x14, paramC=script_Townsperson2, paramD=0x4, conditions=0x3c0
	delayed_entity_raw subtype=0x6, x=0x48, y=0x168, layer=1, paramA=0x10, paramC=script_Townsperson2, paramD=0x4, conditions=0x300
	entity_list_end

Entities_HouseInteriors1_InnEast2F_1:: @ 080D6E6C
	object_raw subtype=0x4f, x=0x8, y=0x48, paramA=0x5, paramB=0x3
	object_raw subtype=0x4f, x=0x78, y=0x108, paramA=0x5, paramB=0x2
	object_raw subtype=0x4f, x=0x78, y=0x118, paramA=0x1e
	object_raw subtype=0x4f, x=0x78, y=0x128, paramA=0x5
	object_raw subtype=0x4f, x=0x48, y=0x1b8, paramA=0x4, paramB=0x2
	object_raw subtype=0x5, x=0xc8, y=0x58
	object_raw subtype=0x5, x=0x28, y=0xe8
	object_raw subtype=0x5, x=0xc8, y=0xe8, collision=1, paramA=0x5c, paramB=0x7002, paramC=0x270000
	manager subtype=0x23, x=0x28, y=0x198, paramA=0x2, paramB=0x2, paramC=0x9a0000
	manager subtype=0x23, x=0xc8, y=0x198, paramA=0x2, paramB=0x2, paramC=0x9b0000
	manager subtype=0x2e, unknown=0x0, paramC=0x49a0000
	object_raw subtype=0x5d, x=0x48, y=0x1a8, paramB=0x102, paramC=0x49a0000
	entity_list_end

Enemies_HouseInteriors1_InnEast2F:: @ 080D6F3C
	entity_list_end

TileEntities_HouseInteriors1_InnEast2F:: @ 080D6F4C
	tile_entity_list_end

Room_HouseInteriors1_InnEast2F:: @ 080D6F54
	.4byte Entities_HouseInteriors1_InnEast2F_0
	.4byte Entities_HouseInteriors1_InnEast2F_1
	.4byte Enemies_HouseInteriors1_InnEast2F
	.4byte TileEntities_HouseInteriors1_InnEast2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_InnEast2F
	.4byte sub_StateChange_HouseInteriors1_InnEast2F
	.4byte gUnk_additional_8_HouseInteriors1_InnEast2F

Entities_HouseInteriors1_InnMinishHeartPiece_0:: @ 080D6F78
	object_raw subtype=0x0, x=0x58, y=0x34, collision=1, paramA=0x63, paramB=0x400, paramC=0xb80000
	entity_list_end

Entities_HouseInteriors1_InnMinishHeartPiece_1:: @ 080D6F98
	object_raw subtype=0x4e, x=0x98, y=0x20, collision=1, paramB=0x800
	object_raw subtype=0x38, x=0xc0, y=0x2e, unknown=0x0, paramA=0x28, paramB=0x1
	entity_list_end

Enemies_HouseInteriors1_InnMinishHeartPiece:: @ 080D6FC8
	entity_list_end

TileEntities_HouseInteriors1_InnMinishHeartPiece:: @ 080D6FD8
	tile_entity_list_end

gUnk_additional_8_HouseInteriors1_InnMinishHeartPiece:: @ 080D6FE0
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors1_InnMinishHeartPiece.bin"

Room_HouseInteriors1_InnMinishHeartPiece:: @ 080D6FF4
	.4byte Entities_HouseInteriors1_InnMinishHeartPiece_0
	.4byte Entities_HouseInteriors1_InnMinishHeartPiece_1
	.4byte Enemies_HouseInteriors1_InnMinishHeartPiece
	.4byte TileEntities_HouseInteriors1_InnMinishHeartPiece
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_InnMinishHeartPiece
	.4byte sub_StateChange_HouseInteriors1_InnMinishHeartPiece
	.4byte gUnk_additional_8_HouseInteriors1_InnMinishHeartPiece

Entities_HouseInteriors1_SchoolWest_0:: @ 080D7018
	object_raw subtype=0x5f, x=0x78, y=0x48
	entity_list_end

gUnk_080D7038:: @ 080D7038
	npc_raw subtype=0x48, x=0x78, y=0x78, paramA=0x1, script=script_Teachers
	entity_list_end

Entities_HouseInteriors1_SchoolWest_1:: @ 080D7058
	object_raw subtype=0x4f, x=0x78, y=0xe8, paramA=0x4, paramB=0x2
	object_raw subtype=0x4f, x=0xe8, y=0x58, paramA=0x5, paramB=0x1
	object_raw subtype=0x5, x=0x38, y=0x28
	object_raw subtype=0x5, x=0x28, y=0x28
	object_raw subtype=0x5, x=0x28, y=0x38
	object_raw subtype=0x5, x=0xc8, y=0x28
	object_raw subtype=0x5, x=0xb8, y=0x28
	object_raw subtype=0x5, x=0xc8, y=0x38
	entity_list_end

Enemies_HouseInteriors1_SchoolWest:: @ 080D70E8
	entity_list_end

TileEntities_HouseInteriors1_SchoolWest:: @ 080D70F8
	tile_entity_list_end

Room_HouseInteriors1_SchoolWest:: @ 080D7100
	.4byte Entities_HouseInteriors1_SchoolWest_0
	.4byte Entities_HouseInteriors1_SchoolWest_1
	.4byte Enemies_HouseInteriors1_SchoolWest
	.4byte TileEntities_HouseInteriors1_SchoolWest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_SchoolWest
	.4byte sub_StateChange_HouseInteriors1_SchoolWest

Entities_HouseInteriors1_SchoolEast_0:: @ 080D7120
	object_raw subtype=0x38, x=0xe0, y=0x2e, unknown=0x0, paramA=0x2a
	entity_list_end

gUnk_080D7140:: @ 080D7140
	npc_raw subtype=0x7, x=0x48, y=0x40, paramA=0x1, paramB=0x200, script=script_Kid6
	npc_raw subtype=0x7, x=0x48, y=0x70, paramA=0x2, paramB=0x200, script=script_Kid6
	entity_list_end

gUnk_080D7170:: @ 080D7170
	npc_raw subtype=0x7, x=0xa8, y=0x40, paramB=0x200, script=script_Kid5
	npc_raw subtype=0x7, x=0x78, y=0x40, paramA=0x3, paramB=0x200, script=script_Kid7
	entity_list_end

gUnk_080D71A0:: @ 080D71A0
	npc_raw subtype=0x7, x=0x68, y=0x68, paramA=0x1, paramB=0x400, script=script_Kid4
	npc_raw subtype=0x7, x=0x98, y=0x48, paramA=0x2, paramB=0x400, script=script_Kid4
	entity_list_end

gUnk_080D71D0:: @ 080D71D0
	npc_raw subtype=0x48, x=0x110, y=0x48, script=script_Teachers
	entity_list_end

gUnk_080D71F0:: @ 080D71F0
	npc_raw subtype=0x48, x=0xe8, y=0x58, script=script_Teachers
	npc_raw subtype=0x48, x=0x28, y=0x48, paramA=0x1, script=script_Teachers
	entity_list_end

Entities_HouseInteriors1_SchoolEast_1:: @ 080D7220
	object_raw subtype=0x4f, x=0x8, y=0x58, paramA=0x5, paramB=0x3
	object_raw subtype=0x4f, x=0xd8, y=0xa8, paramA=0x4, paramB=0x2
	object_raw subtype=0x4e, x=0x38, y=0x90, collision=1, paramB=0x802
	object_raw subtype=0x4e, x=0x108, y=0x90, collision=1, paramB=0x902
	entity_list_end

Enemies_HouseInteriors1_SchoolEast:: @ 080D7270
	entity_list_end

TileEntities_HouseInteriors1_SchoolEast:: @ 080D7280
	tile_entity_list_end

gUnk_additional_8_HouseInteriors1_SchoolEast:: @ 080D7288
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors1_SchoolEast.bin"

gUnk_additional_9_HouseInteriors1_SchoolEast:: @ 080D729C
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors1_SchoolEast.bin"

Room_HouseInteriors1_SchoolEast:: @ 080D72B0
	.4byte Entities_HouseInteriors1_SchoolEast_0
	.4byte Entities_HouseInteriors1_SchoolEast_1
	.4byte Enemies_HouseInteriors1_SchoolEast
	.4byte TileEntities_HouseInteriors1_SchoolEast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors1_SchoolEast
	.4byte sub_StateChange_HouseInteriors1_SchoolEast
	.4byte gUnk_additional_8_HouseInteriors1_SchoolEast
	.4byte gUnk_additional_9_HouseInteriors1_SchoolEast

Entities_HyruleCastle_0_0:: @ 080D72D8
	npc_raw subtype=0x15, x=0xb8, y=0x38, script=script_GuardAtEntry
	npc_raw subtype=0x15, x=0xf8, y=0x38, paramB=0x1, script=script_GuardAtEntry
	entity_list_end

Entities_HyruleCastle_0_1:: @ 080D7308
	object_raw subtype=0x8, x=0x168, y=0xd8, paramA=0x8
	entity_list_end

gUnk_080D7328:: @ 080D7328
	object_raw subtype=0x8, x=0x48, y=0xd8
	entity_list_end

gUnk_080D7348:: @ 080D7348
	npc_raw subtype=0x4e, script=script_Npc4EHyruleCastleEntrance
	entity_list_end

Enemies_HyruleCastle_0:: @ 080D7368
	entity_list_end

TileEntities_HyruleCastle_0:: @ 080D7378
	tile_entity_list_end

Room_HyruleCastle_0:: @ 080D7380
	.4byte Entities_HyruleCastle_0_0
	.4byte Entities_HyruleCastle_0_1
	.4byte Enemies_HyruleCastle_0
	.4byte TileEntities_HyruleCastle_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleCastle_0
	.4byte sub_StateChange_HyruleCastle_0

Entities_HyruleCastle_1_0:: @ 080D73A0
	entity_list_end

gUnk_080D73B0:: @ 080D73B0
	object_raw subtype=0x8, x=0x58, y=0x28
	object_raw subtype=0x8, x=0x198, y=0x28
	entity_list_end

gUnk_080D73E0:: @ 080D73E0
	npc_raw subtype=0x15, x=0xb8, y=0x58, unknown=0xf, collision=1, paramA=0x4, paramB=0x26, script=0x0
	npc_raw subtype=0x15, x=0xb8, y=0x1b8, unknown=0xf, collision=1, paramA=0x5, paramB=0x27, script=0x0
	entity_list_end

gUnk_080D7410:: @ 080D7410
	npc_raw subtype=0x4e, script=script_Npc4EUnfreezeCastleStaff
	npc_raw subtype=0x15, x=0xb8, y=0x1a8, paramB=0x28, script=script_GuardStoneOutro1
	npc_raw subtype=0x15, x=0xf8, y=0x1b8, paramB=0x29, script=script_GuardStoneOutro2
	npc_raw subtype=0x15, x=0x138, y=0x1d8, paramB=0x2a, script=script_GuardStoneOutro3
	npc_raw subtype=0x16, x=0xd8, y=0x1c8, script=script_MaidStoneOutro1
	npc_raw subtype=0x16, x=0x118, y=0x1b8, script=script_MaidStoneOutro2
	entity_list_end

Enemies_HyruleCastle_1:: @ 080D7480
	entity_list_end

TileEntities_HyruleCastle_1:: @ 080D7490
	tile_entity_list_end

Room_HyruleCastle_1:: @ 080D7498
	.4byte Entities_HyruleCastle_1_0
	.4byte 0x00000000
	.4byte Enemies_HyruleCastle_1
	.4byte TileEntities_HyruleCastle_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleCastle_1
	.4byte sub_StateChange_HyruleCastle_1

Entities_HyruleCastle_2_0:: @ 080D74B8
	entity_list_end

gUnk_080D74C8:: @ 080D74C8
	npc_raw subtype=0x4e, script=script_Npc4EIntroAssembly
	npc_raw subtype=0x15, x=0x78, y=0x98, paramB=0x2, script=script_GuardAtAssembly
	npc_raw subtype=0x15, x=0x78, y=0xb8, paramB=0x3, script=script_GuardAtAssembly
	npc_raw subtype=0x15, x=0x78, y=0xd8, paramB=0x4, script=script_GuardAtAssembly
	npc_raw subtype=0x15, x=0x98, y=0x98, paramB=0x5, script=script_GuardAtAssembly
	npc_raw subtype=0x15, x=0x98, y=0xb8, paramB=0x6, script=script_GuardAtAssembly
	npc_raw subtype=0x15, x=0x98, y=0xd8, paramB=0x7, script=script_GuardAtAssembly
	npc_raw subtype=0x24, x=0x88, y=0x58, script=script_KingDaltusAtAssembly
	npc_raw subtype=0x25, x=0x68, y=0x58, script=script_MinisterPothoAtAssembly
	npc_raw subtype=0x22, x=0xb8, y=0x78, script=script_SmithAtAssembly
	npc_raw subtype=0x28, x=0xb8, y=0x58, script=script_StoneZelda
	entity_list_end

gUnk_080D7588:: @ 080D7588
	npc_raw subtype=0x25, x=0x68, y=0x58, script=script_MinisterPotho
	npc_raw subtype=0x24, x=0x88, y=0x58, script=script_KingDaltus
	npc_raw subtype=0x22, x=0xa8, y=0x78, script=script_SmithAtCastle
	npc_raw subtype=0x28, x=0xb8, y=0x58, script=script_StoneZelda
	entity_list_end

gUnk_080D75D8:: @ 080D75D8
	npc_raw subtype=0x25, x=0x68, y=0x58, script=script_MinisterPotho
	npc_raw subtype=0x24, x=0x88, y=0x58, script=script_KingDaltus
	npc_raw subtype=0x28, x=0xb8, y=0x58, script=script_StoneZelda
	entity_list_end

gUnk_080D7618:: @ 080D7618
	npc_raw subtype=0x4e, script=script_Npc4EHyruleCastleThrone
	entity_list_end

Enemies_HyruleCastle_2:: @ 080D7638
	entity_list_end

TileEntities_HyruleCastle_2:: @ 080D7648
	tile_entity_list_end

Room_HyruleCastle_2:: @ 080D7650
	.4byte Entities_HyruleCastle_2_0
	.4byte 0x00000000
	.4byte Enemies_HyruleCastle_2
	.4byte TileEntities_HyruleCastle_2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleCastle_2
	.4byte sub_StateChange_HyruleCastle_2

Entities_HyruleCastle_3_0:: @ 080D7670
	object_raw subtype=0x8, x=0x48, y=0x298, paramA=0x3, paramC=0x4045ffff
	entity_list_end

gUnk_additional_8_HyruleCastle_3:: @ 080D7690
	object_raw subtype=0x8, x=0x88, y=0x278, paramC=0xffff
	object_raw subtype=0x8, x=0x68, y=0x18, paramC=0xffff
	object_raw subtype=0x8, x=0x1c8, y=0x18, paramC=0xffff
	entity_list_end

Enemies_HyruleCastle_3:: @ 080D76D0
	entity_list_end

TileEntities_HyruleCastle_3:: @ 080D76E0
	tile_entity_list_end

Room_HyruleCastle_3:: @ 080D76E8
	.4byte Entities_HyruleCastle_3_0
	.4byte 0x00000000
	.4byte Enemies_HyruleCastle_3
	.4byte TileEntities_HyruleCastle_3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleCastle_3
	.4byte sub_StateChange_HyruleCastle_3
	.4byte gUnk_additional_8_HyruleCastle_3

Entities_HyruleCastle_4_0:: @ 080D770C
	npc_raw subtype=0x16, x=0x58, y=0x50, script=script_CastleMaid
	entity_list_end

Enemies_HyruleCastle_4:: @ 080D772C
	entity_list_end

TileEntities_HyruleCastle_4:: @ 080D773C
	tile_entity_list_end

Room_HyruleCastle_4:: @ 080D7744
	.4byte Entities_HyruleCastle_4_0
	.4byte 0x00000000
	.4byte Enemies_HyruleCastle_4
	.4byte TileEntities_HyruleCastle_4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleCastle_4
	.4byte sub_StateChange_HyruleCastle_4

Entities_HyruleCastle_5_0:: @ 080D7764
	entity_list_end

Enemies_HyruleCastle_5:: @ 080D7774
	entity_list_end

TileEntities_HyruleCastle_5:: @ 080D7784
	tile_entity_list_end

Room_HyruleCastle_5:: @ 080D778C
	.4byte Entities_HyruleCastle_5_0
	.4byte 0x00000000
	.4byte Enemies_HyruleCastle_5
	.4byte TileEntities_HyruleCastle_5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleCastle_5
	.4byte sub_StateChange_HyruleCastle_5

Entities_87_Main_0:: @ 080D77AC
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_87_Main:: @ 080D77EC
	entity_list_end

TileEntities_87_Main:: @ 080D77FC
	tile_entity_list_end

Area_87_Main:: @ 080D7804
	.4byte Entities_87_Main_0
	.4byte 0x00000000
	.4byte Enemies_87_Main
	.4byte TileEntities_87_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_87_Main
	.4byte sub_StateChange_87_Main

Entities_45_Main_0:: @ 080D7824
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_45_Main:: @ 080D7864
	entity_list_end

TileEntities_45_Main:: @ 080D7874
	tile_entity_list_end

Area_45_Main:: @ 080D787C
	.4byte Entities_45_Main_0
	.4byte 0x00000000
	.4byte Enemies_45_Main
	.4byte TileEntities_45_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_45_Main
	.4byte sub_StateChange_45_Main

Entities_4D_Main_0:: @ 080D789C
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_4D_Main:: @ 080D78DC
	entity_list_end

TileEntities_4D_Main:: @ 080D78EC
	tile_entity_list_end

Area_4D_Main:: @ 080D78F4
	.4byte Entities_4D_Main_0
	.4byte 0x00000000
	.4byte Enemies_4D_Main
	.4byte TileEntities_4D_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_4D_Main
	.4byte sub_StateChange_4D_Main

Entities_57_Main_0:: @ 080D7914
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	object_raw subtype=0x55, x=0xe8, y=0xb8
	entity_list_end

Enemies_57_Main:: @ 080D7964
	entity_list_end

TileEntities_57_Main:: @ 080D7974
	tile_entity_list_end

Area_57_Main:: @ 080D797C
	.4byte Entities_57_Main_0
	.4byte 0x00000000
	.4byte Enemies_57_Main
	.4byte TileEntities_57_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_57_Main
	.4byte sub_StateChange_57_Main

Entities_5F_Main_0:: @ 080D799C
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_5F_Main:: @ 080D79DC
	entity_list_end

TileEntities_5F_Main:: @ 080D79EC
	tile_entity_list_end

Area_5F_Main:: @ 080D79F4
	.4byte Entities_5F_Main_0
	.4byte 0x00000000
	.4byte Enemies_5F_Main
	.4byte TileEntities_5F_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_5F_Main
	.4byte sub_StateChange_5F_Main

Entities_67_Main_0:: @ 080D7A14
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_67_Main:: @ 080D7A54
	entity_list_end

TileEntities_67_Main:: @ 080D7A64
	tile_entity_list_end

Area_67_Main:: @ 080D7A6C
	.4byte Entities_67_Main_0
	.4byte 0x00000000
	.4byte Enemies_67_Main
	.4byte TileEntities_67_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_67_Main
	.4byte sub_StateChange_67_Main

Entities_6F_Main_0:: @ 080D7A8C
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_6F_Main:: @ 080D7ACC
	entity_list_end

TileEntities_6F_Main:: @ 080D7ADC
	tile_entity_list_end

Area_6F_Main:: @ 080D7AE4
	.4byte Entities_6F_Main_0
	.4byte 0x00000000
	.4byte Enemies_6F_Main
	.4byte TileEntities_6F_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_6F_Main
	.4byte sub_StateChange_6F_Main

Entities_77_Main_0:: @ 080D7B04
	manager subtype=0x19
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_77_Main:: @ 080D7B54
	entity_list_end

TileEntities_77_Main:: @ 080D7B64
	tile_entity_list_end

Area_77_Main:: @ 080D7B6C
	.4byte Entities_77_Main_0
	.4byte 0x00000000
	.4byte Enemies_77_Main
	.4byte TileEntities_77_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_77_Main
	.4byte sub_StateChange_77_Main

Entities_7F_Main_0:: @ 080D7B8C
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_7F_Main:: @ 080D7BCC
	entity_list_end

TileEntities_7F_Main:: @ 080D7BDC
	tile_entity_list_end

Area_7F_Main:: @ 080D7BE4
	.4byte Entities_7F_Main_0
	.4byte 0x00000000
	.4byte Enemies_7F_Main
	.4byte TileEntities_7F_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_7F_Main
	.4byte sub_StateChange_7F_Main

Entities_8F_Main_0:: @ 080D7C04
	object_raw subtype=0x8, x=0x158, y=0x208, paramA=0x5, paramC=0x80000000
	object_raw subtype=0x8, x=0x188, y=0x208, paramA=0x7, paramC=0x80000000
	object_raw subtype=0x27, x=0xb8, y=0x88
	entity_list_end

Enemies_8F_Main:: @ 080D7C44
	entity_list_end

TileEntities_8F_Main:: @ 080D7C54
	tile_entity_list_end

Area_8F_Main:: @ 080D7C5C
	.4byte Entities_8F_Main_0
	.4byte 0x00000000
	.4byte Enemies_8F_Main
	.4byte TileEntities_8F_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_8F_Main
	.4byte sub_StateChange_8F_Main

Entities_GreatFairies_Entrance_0:: @ 080D7C7C
	object_raw subtype=0x41, x=0x68, y=0x198, paramA=0x1
	entity_list_end

Enemies_GreatFairies_Entrance:: @ 080D7C9C
	enemy_raw subtype=0x2c, x=0x58, y=0x88
	enemy_raw subtype=0x2c, x=0x78, y=0xa8
	enemy_raw subtype=0x2c, x=0x98, y=0x148
	entity_list_end

TileEntities_GreatFairies_Entrance:: @ 080D7CDC
	tile_entity_list_end

Room_GreatFairies_Entrance:: @ 080D7CE4
	.4byte Entities_GreatFairies_Entrance_0
	.4byte 0x00000000
	.4byte Enemies_GreatFairies_Entrance
	.4byte TileEntities_GreatFairies_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GreatFairies_Entrance
	.4byte sub_StateChange_GreatFairies_Entrance

Entities_GreatFairies_Exit_0:: @ 080D7D04
	object_raw subtype=0x3, x=0xa8, y=0x48, paramC=0x40450001
	object_raw subtype=0x8, x=0xd8, y=0x58, paramA=0x1, paramC=0x4045ffff
	entity_list_end

gUnk_080D7D34:: @ 080D7D34
	object_raw subtype=0x6a, x=0xd8, y=0x58, collision=1, paramA=0x5, paramB=0x302
	object_raw subtype=0x6a, x=0xcc, y=0x48, collision=1, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0xd0, y=0x68, collision=1, paramA=0x5, paramB=0x102
	entity_list_end

Enemies_GreatFairies_Exit:: @ 080D7D74
	enemy_raw subtype=0x2c, x=0x78, y=0x58
	entity_list_end

TileEntities_GreatFairies_Exit:: @ 080D7D94
	tile_entity_list_end

Room_GreatFairies_Exit:: @ 080D7D9C
	.4byte Entities_GreatFairies_Exit_0
	.4byte 0x00000000
	.4byte Enemies_GreatFairies_Exit
	.4byte TileEntities_GreatFairies_Exit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GreatFairies_Exit
	.4byte sub_StateChange_GreatFairies_Exit

Entities_Dojos_Grayblade_0:: @ 080D7DBC
	npc_raw subtype=0x30, x=0x78, y=0x28, paramA=0x2, script=script_BladeBrothers
	object_raw subtype=0x0, x=0x28, y=0x84, collision=1, paramA=0x63, paramB=0x400, paramC=0x800000
	entity_list_end

Entities_Dojos_Grayblade_1:: @ 080D7DEC
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x8, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x18, collision=1, paramA=0x7
	object_raw subtype=0x4d, x=0xa4, y=0x18, collision=1, paramA=0x7, paramB=0x3
	object_raw subtype=0x4d, x=0x10, y=0x38, collision=1, paramA=0x7, paramB=0x6
	object_raw subtype=0x4d, x=0x10, y=0x78, collision=1, paramA=0x7, paramB=0x7
	object_raw subtype=0x4d, x=0xe0, y=0x38, collision=1, paramA=0x7, paramB=0x4
	object_raw subtype=0x4d, x=0xe0, y=0x78, collision=1, paramA=0x7, paramB=0x5
	entity_list_end

Enemies_Dojos_Grayblade:: @ 080D7E6C
	entity_list_end

TileEntities_Dojos_Grayblade:: @ 080D7E7C
	tile_entity type=0x2, paramA=0x1, paramB=0x57, paramC=0x82, paramD=0x1
	tile_entity type=0x2, paramA=0x2, paramB=0x57, paramC=0x8c, paramD=0x1
	tile_entity type=0x7, paramB=0x3500
	tile_entity_list_end

Room_Dojos_Grayblade:: @ 080D7E9C
	.4byte Entities_Dojos_Grayblade_0
	.4byte Entities_Dojos_Grayblade_1
	.4byte Enemies_Dojos_Grayblade
	.4byte TileEntities_Dojos_Grayblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_Grayblade
	.4byte sub_StateChange_Dojos_Grayblade

Entities_Dojos_Splitblade_0:: @ 080D7EBC
	npc_raw subtype=0x30, x=0x78, y=0x28, paramA=0x6, script=script_BladeBrothers
	entity_list_end

Entities_Dojos_Splitblade_1:: @ 080D7EDC
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x9, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x18, collision=1, paramA=0x7, paramB=0x8
	object_raw subtype=0x4d, x=0xa4, y=0x18, collision=1, paramA=0x7, paramB=0x9
	object_raw subtype=0x4d, x=0x10, y=0x38, collision=1, paramA=0x7, paramB=0xc
	object_raw subtype=0x4d, x=0x10, y=0x78, collision=1, paramA=0x7, paramB=0xd
	object_raw subtype=0x4d, x=0xe0, y=0x38, collision=1, paramA=0x7, paramB=0xa
	object_raw subtype=0x4d, x=0xe0, y=0x78, collision=1, paramA=0x7, paramB=0xb
	entity_list_end

Enemies_Dojos_Splitblade:: @ 080D7F5C
	entity_list_end

TileEntities_Dojos_Splitblade:: @ 080D7F6C
	tile_entity type=0x7, paramB=0x3500
	tile_entity_list_end

Room_Dojos_Splitblade:: @ 080D7F7C
	.4byte Entities_Dojos_Splitblade_0
	.4byte Entities_Dojos_Splitblade_1
	.4byte Enemies_Dojos_Splitblade
	.4byte TileEntities_Dojos_Splitblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_Splitblade
	.4byte sub_StateChange_Dojos_Splitblade

Entities_Dojos_Greatblade_0:: @ 080D7F9C
	npc_raw subtype=0x30, x=0x78, y=0x28, paramA=0x7, script=script_BladeBrothers
	entity_list_end

Entities_Dojos_Greatblade_1:: @ 080D7FBC
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x9, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x18, collision=1, paramA=0x7
	object_raw subtype=0x4d, x=0xa4, y=0x18, collision=1, paramA=0x7, paramB=0x3
	object_raw subtype=0x4d, x=0x10, y=0x38, collision=1, paramA=0x7, paramB=0xc
	object_raw subtype=0x4d, x=0x10, y=0x78, collision=1, paramA=0x7, paramB=0xd
	object_raw subtype=0x4d, x=0xe0, y=0x38, collision=1, paramA=0x7, paramB=0xa
	object_raw subtype=0x4d, x=0xe0, y=0x78, collision=1, paramA=0x7, paramB=0xb
	entity_list_end

Enemies_Dojos_Greatblade:: @ 080D803C
	entity_list_end

TileEntities_Dojos_Greatblade:: @ 080D804C
	tile_entity type=0x7, paramB=0x3500
	tile_entity_list_end

Room_Dojos_Greatblade:: @ 080D805C
	.4byte Entities_Dojos_Greatblade_0
	.4byte Entities_Dojos_Greatblade_1
	.4byte Enemies_Dojos_Greatblade
	.4byte TileEntities_Dojos_Greatblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_Greatblade
	.4byte sub_StateChange_Dojos_Greatblade

Entities_Dojos_Scarblade_0:: @ 080D807C
	npc_raw subtype=0x30, x=0x78, y=0x28, paramA=0x5, script=script_BladeBrothers
	entity_list_end

Entities_Dojos_Scarblade_1:: @ 080D809C
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x9, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x18, collision=1, paramA=0x7, paramB=0x1
	object_raw subtype=0x4d, x=0xa4, y=0x18, collision=1, paramA=0x7, paramB=0x2
	object_raw subtype=0x4d, x=0x10, y=0x38, collision=1, paramA=0x7, paramB=0x6
	object_raw subtype=0x4d, x=0x10, y=0x78, collision=1, paramA=0x7, paramB=0x7
	object_raw subtype=0x4d, x=0xe0, y=0x38, collision=1, paramA=0x7, paramB=0x4
	object_raw subtype=0x4d, x=0xe0, y=0x78, collision=1, paramA=0x7, paramB=0x5
	entity_list_end

Enemies_Dojos_Scarblade:: @ 080D811C
	entity_list_end

TileEntities_Dojos_Scarblade:: @ 080D812C
	tile_entity type=0x7, paramB=0x3500
	tile_entity_list_end

Room_Dojos_Scarblade:: @ 080D813C
	.4byte Entities_Dojos_Scarblade_0
	.4byte Entities_Dojos_Scarblade_1
	.4byte Enemies_Dojos_Scarblade
	.4byte TileEntities_Dojos_Scarblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_Scarblade
	.4byte sub_StateChange_Dojos_Scarblade

Entities_Dojos_Swiftblade_0:: @ 080D815C
	npc_raw subtype=0x30, x=0x78, y=0x28, script=script_BladeBrothers
	object_raw subtype=0x0, x=0x28, y=0x84, collision=1, paramA=0x63, paramB=0x400, paramC=0x7f0000
	entity_list_end

Entities_Dojos_Swiftblade_1:: @ 080D818C
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x8, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x18, collision=1, paramA=0x7, paramB=0x2
	object_raw subtype=0x4d, x=0xa4, y=0x18, collision=1, paramA=0x7, paramB=0x3
	object_raw subtype=0x4d, x=0x10, y=0x38, collision=1, paramA=0x7, paramB=0xc
	object_raw subtype=0x4d, x=0x10, y=0x78, collision=1, paramA=0x7, paramB=0x6
	object_raw subtype=0x4d, x=0xe0, y=0x38, collision=1, paramA=0x7, paramB=0xa
	object_raw subtype=0x4d, x=0xe0, y=0x78, collision=1, paramA=0x7, paramB=0x4
	entity_list_end

Enemies_Dojos_Swiftblade:: @ 080D820C
	entity_list_end

TileEntities_Dojos_Swiftblade:: @ 080D821C
	tile_entity type=0x7, paramB=0x3500
	tile_entity_list_end

Room_Dojos_Swiftblade:: @ 080D822C
	.4byte Entities_Dojos_Swiftblade_0
	.4byte Entities_Dojos_Swiftblade_1
	.4byte Enemies_Dojos_Swiftblade
	.4byte TileEntities_Dojos_Swiftblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_Swiftblade
	.4byte sub_StateChange_Dojos_Swiftblade

Entities_Dojos_Grimblade_0:: @ 080D824C
	npc_raw subtype=0x30, x=0x78, y=0x28, paramA=0x4, script=script_BladeBrothers
	object_raw subtype=0x0, x=0x28, y=0x84, collision=1, paramA=0x63, paramB=0x400, paramC=0x830000
	entity_list_end

gUnk_080D827C:: @ 080D827C
	manager subtype=0x23, x=0x28, y=0x28, paramA=0x2, paramB=0x4002, paramC=0x80000000
	manager subtype=0x23, x=0xc8, y=0x28, paramA=0x2, paramB=0x4002, paramC=0x80010000
	manager subtype=0x2e, unknown=0x0, paramB=0x100, paramC=0x84000000
	manager subtype=0x11, paramC=0x84000003
	entity_list_end

Entities_Dojos_Grimblade_1:: @ 080D82CC
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x9, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x18, collision=1, paramA=0x7, paramB=0x8
	object_raw subtype=0x4d, x=0xa4, y=0x18, collision=1, paramA=0x7, paramB=0x9
	object_raw subtype=0x4d, x=0x10, y=0x38, collision=1, paramA=0x7, paramB=0xc
	object_raw subtype=0x4d, x=0x10, y=0x78, collision=1, paramA=0x7, paramB=0xd
	object_raw subtype=0x4d, x=0xe0, y=0x38, collision=1, paramA=0x7, paramB=0xa
	object_raw subtype=0x4d, x=0xe0, y=0x78, collision=1, paramA=0x7, paramB=0xb
	entity_list_end

Enemies_Dojos_Grimblade:: @ 080D834C
	entity_list_end

TileEntities_Dojos_Grimblade:: @ 080D835C
	tile_entity type=0x7, paramB=0x3500
	tile_entity type=0x9, paramB=0x8000
	tile_entity_list_end

Room_Dojos_Grimblade:: @ 080D8374
	.4byte Entities_Dojos_Grimblade_0
	.4byte Entities_Dojos_Grimblade_1
	.4byte Enemies_Dojos_Grimblade
	.4byte TileEntities_Dojos_Grimblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_Grimblade
	.4byte sub_StateChange_Dojos_Grimblade

Entities_Dojos_Waveblade_0:: @ 080D8394
	npc_raw subtype=0x30, x=0x78, y=0x28, paramA=0x3, script=script_BladeBrothers
	object_raw subtype=0x0, x=0x28, y=0x84, collision=1, paramA=0x63, paramB=0x400, paramC=0x820000
	entity_list_end

Entities_Dojos_Waveblade_1:: @ 080D83C4
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x8, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x18, collision=1, paramA=0x7
	object_raw subtype=0x4d, x=0xa4, y=0x18, collision=1, paramA=0x7, paramB=0x3
	object_raw subtype=0x4d, x=0x10, y=0x38, collision=1, paramA=0x7, paramB=0x6
	object_raw subtype=0x4d, x=0x10, y=0x78, collision=1, paramA=0x7, paramB=0x7
	object_raw subtype=0x4d, x=0xe0, y=0x38, collision=1, paramA=0x7, paramB=0x4
	object_raw subtype=0x4d, x=0xe0, y=0x78, collision=1, paramA=0x7, paramB=0x5
	entity_list_end

Enemies_Dojos_Waveblade:: @ 080D8444
	entity_list_end

TileEntities_Dojos_Waveblade:: @ 080D8454
	tile_entity type=0x7, paramB=0x3500
	tile_entity_list_end

Room_Dojos_Waveblade:: @ 080D8464
	.4byte Entities_Dojos_Waveblade_0
	.4byte Entities_Dojos_Waveblade_1
	.4byte Enemies_Dojos_Waveblade
	.4byte TileEntities_Dojos_Waveblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_Waveblade
	.4byte sub_StateChange_Dojos_Waveblade

Entities_Dojos_7_0:: @ 080D8484
	object_raw subtype=0x4c, x=0x8d, y=0x28, collision=1, paramA=0x2
	object_raw subtype=0x4c, x=0xa4, y=0x28, collision=1
	entity_list_end

Entities_Dojos_7_1:: @ 080D84B4
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x8, paramB=0x2
	object_raw subtype=0x4d, x=0x68, y=0x28, collision=1
	object_raw subtype=0x5, x=0xb8, y=0x38
	object_raw subtype=0x5, x=0xc8, y=0x38
	object_raw subtype=0x5, x=0xc8, y=0x48
	object_raw subtype=0x5, x=0x28, y=0x58
	object_raw subtype=0x5, x=0x28, y=0x68
	object_raw subtype=0x5, x=0x28, y=0x78
	entity_list_end

Enemies_Dojos_7:: @ 080D8544
	entity_list_end

TileEntities_Dojos_7:: @ 080D8554
	tile_entity_list_end

Room_Dojos_7:: @ 080D855C
	.4byte Entities_Dojos_7_0
	.4byte Entities_Dojos_7_1
	.4byte Enemies_Dojos_7
	.4byte TileEntities_Dojos_7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_7
	.4byte sub_StateChange_Dojos_7

Entities_Dojos_8_0:: @ 080D857C
	object_raw subtype=0x4c, x=0x5d, y=0x28, collision=1, paramA=0x2
	object_raw subtype=0x4c, x=0x74, y=0x28, collision=1
	entity_list_end

Entities_Dojos_8_1:: @ 080D85AC
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x8, paramB=0x2
	object_raw subtype=0x4d, x=0x2d, y=0x28, collision=1, paramA=0x3
	object_raw subtype=0x4d, x=0x44, y=0x28, collision=1, paramA=0x3
	object_raw subtype=0x5, x=0x88, y=0x28
	object_raw subtype=0x5, x=0x98, y=0x28
	object_raw subtype=0x5, x=0xa8, y=0x28
	entity_list_end

Enemies_Dojos_8:: @ 080D861C
	entity_list_end

TileEntities_Dojos_8:: @ 080D862C
	tile_entity_list_end

Room_Dojos_8:: @ 080D8634
	.4byte Entities_Dojos_8_0
	.4byte Entities_Dojos_8_1
	.4byte Enemies_Dojos_8
	.4byte TileEntities_Dojos_8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_8
	.4byte sub_StateChange_Dojos_8

Entities_Dojos_9_0:: @ 080D8654
	entity_list_end

Entities_Dojos_9_1:: @ 080D8664
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x8, paramB=0x2
	object_raw subtype=0x5, x=0x48, y=0x28
	object_raw subtype=0x5, x=0x58, y=0x28
	object_raw subtype=0x5, x=0x98, y=0x28
	object_raw subtype=0x5, x=0xa8, y=0x28
	object_raw subtype=0x4d, x=0x28, y=0x58, collision=1, paramA=0x1
	object_raw subtype=0x4d, x=0x28, y=0x68, collision=1, paramA=0x1
	object_raw subtype=0x4d, x=0xc8, y=0x58, collision=1, paramA=0x1
	object_raw subtype=0x4d, x=0xc8, y=0x68, collision=1, paramA=0x1
	entity_list_end

Enemies_Dojos_9:: @ 080D8704
	entity_list_end

TileEntities_Dojos_9:: @ 080D8714
	tile_entity_list_end

Room_Dojos_9:: @ 080D871C
	.4byte Entities_Dojos_9_0
	.4byte Entities_Dojos_9_1
	.4byte Enemies_Dojos_9
	.4byte TileEntities_Dojos_9
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_9
	.4byte sub_StateChange_Dojos_9

Entities_Dojos_ToGrimblade_0:: @ 080D873C
	entity_list_end

Entities_Dojos_ToGrimblade_1:: @ 080D874C
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0x9
	object_raw subtype=0x5, x=0x48, y=0x28
	object_raw subtype=0x5, x=0xa8, y=0x28
	object_raw subtype=0x41, x=0x78, y=0x58, paramA=0x1
	object_raw subtype=0x4c, x=0x28, y=0x58, collision=1, paramA=0x1
	object_raw subtype=0x4c, x=0x28, y=0x68, collision=1, paramA=0x1
	object_raw subtype=0x4c, x=0xc8, y=0x58, collision=1, paramA=0x1
	object_raw subtype=0x4c, x=0xc8, y=0x68, collision=1, paramA=0x1
	entity_list_end

Enemies_Dojos_ToGrimblade:: @ 080D87DC
	entity_list_end

TileEntities_Dojos_ToGrimblade:: @ 080D87EC
	tile_entity_list_end

Room_Dojos_ToGrimblade:: @ 080D87F4
	.4byte Entities_Dojos_ToGrimblade_0
	.4byte Entities_Dojos_ToGrimblade_1
	.4byte Enemies_Dojos_ToGrimblade
	.4byte TileEntities_Dojos_ToGrimblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_ToGrimblade
	.4byte sub_StateChange_Dojos_ToGrimblade

Entities_Dojos_ToSplitblade_0:: @ 080D8814
	entity_list_end

Entities_Dojos_ToSplitblade_1:: @ 080D8824
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0x9
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x8, paramB=0x2
	entity_list_end

Enemies_Dojos_ToSplitblade:: @ 080D8854
	entity_list_end

TileEntities_Dojos_ToSplitblade:: @ 080D8864
	tile_entity_list_end

Room_Dojos_ToSplitblade:: @ 080D886C
	.4byte Entities_Dojos_ToSplitblade_0
	.4byte Entities_Dojos_ToSplitblade_1
	.4byte Enemies_Dojos_ToSplitblade
	.4byte TileEntities_Dojos_ToSplitblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_ToSplitblade
	.4byte sub_StateChange_Dojos_ToSplitblade

Entities_Dojos_ToGreatblade_0:: @ 080D888C
	entity_list_end

Entities_Dojos_ToGreatblade_1:: @ 080D889C
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0x9
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x8, paramB=0x2
	entity_list_end

Enemies_Dojos_ToGreatblade:: @ 080D88CC
	entity_list_end

TileEntities_Dojos_ToGreatblade:: @ 080D88DC
	tile_entity_list_end

Room_Dojos_ToGreatblade:: @ 080D88E4
	.4byte Entities_Dojos_ToGreatblade_0
	.4byte Entities_Dojos_ToGreatblade_1
	.4byte Enemies_Dojos_ToGreatblade
	.4byte TileEntities_Dojos_ToGreatblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_ToGreatblade
	.4byte sub_StateChange_Dojos_ToGreatblade

Entities_Dojos_ToScarblade_0:: @ 080D8904
	entity_list_end

Entities_Dojos_ToScarblade_1:: @ 080D8914
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0x9
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x8, paramB=0x2
	entity_list_end

Enemies_Dojos_ToScarblade:: @ 080D8944
	entity_list_end

TileEntities_Dojos_ToScarblade:: @ 080D8954
	tile_entity_list_end

Room_Dojos_ToScarblade:: @ 080D895C
	.4byte Entities_Dojos_ToScarblade_0
	.4byte Entities_Dojos_ToScarblade_1
	.4byte Enemies_Dojos_ToScarblade
	.4byte TileEntities_Dojos_ToScarblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Dojos_ToScarblade
	.4byte sub_StateChange_Dojos_ToScarblade

Entities_GoronCave_Stairs_0:: @ 080D897C
	entity_list_end

Enemies_GoronCave_Stairs:: @ 080D898C
	entity_list_end

TileEntities_GoronCave_Stairs:: @ 080D899C
	tile_entity_list_end

Room_GoronCave_Stairs:: @ 080D89A4
	.4byte Entities_GoronCave_Stairs_0
	.4byte 0x00000000
	.4byte Enemies_GoronCave_Stairs
	.4byte TileEntities_GoronCave_Stairs
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GoronCave_Stairs
	.4byte sub_StateChange_GoronCave_Stairs

Entities_GoronCave_Main_0:: @ 080D89C4
	object_raw subtype=0xc, x=0x78, y=0x28, paramA=0x4, paramB=0x76
	entity_list_end

gUnk_080D89E4:: @ 080D89E4
	npc_raw subtype=0x32, x=0x68, y=0x228, script=script_GoronPunching
	entity_list_end

gUnk_080D8A04:: @ 080D8A04
	npc_raw subtype=0x32, x=0x48, y=0x178, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x68, y=0x178, paramA=0x1, script=script_GoronPunching
	entity_list_end

gUnk_080D8A34:: @ 080D8A34
	npc_raw subtype=0x32, x=0x48, y=0x178, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x68, y=0x178, paramA=0x1, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x88, y=0x178, paramA=0x2, script=script_GoronPunching
	entity_list_end

gUnk_080D8A74:: @ 080D8A74
	npc_raw subtype=0x32, x=0x28, y=0xd8, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x48, y=0xd8, paramA=0x1, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x68, y=0xd8, paramA=0x2, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x88, y=0xd8, paramA=0x3, script=script_GoronPunching
	entity_list_end

gUnk_080D8AC4:: @ 080D8AC4
	npc_raw subtype=0x32, x=0x28, y=0xd8, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x48, y=0xd8, paramA=0x1, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x68, y=0xd8, paramA=0x2, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x88, y=0xd8, paramA=0x3, script=script_GoronPunching
	npc_raw subtype=0x32, x=0xa8, y=0xd8, paramA=0x4, script=script_GoronPunching
	entity_list_end

gUnk_080D8B24:: @ 080D8B24
	npc_raw subtype=0x32, x=0x28, y=0x98, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x48, y=0x98, paramA=0x1, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x68, y=0x98, paramA=0x2, script=script_GoronPunching
	npc_raw subtype=0x32, x=0x88, y=0x98, paramA=0x3, script=script_GoronPunching
	npc_raw subtype=0x32, x=0xa8, y=0x98, paramA=0x4, script=script_GoronPunching
	npc_raw subtype=0x32, x=0xc8, y=0x98, paramA=0x5, script=script_GoronPunching
	entity_list_end

Enemies_GoronCave_Main:: @ 080D8B94
	entity_list_end

TileEntities_GoronCave_Main:: @ 080D8BA4
	tile_entity type=0x2, paramA=0x77, paramB=0x59, paramC=0x407
	tile_entity type=0x3, paramA=0x76, paramB=0x1f, paramC=0x78, paramD=0x28
	tile_entity_list_end

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
	.4byte Entities_GoronCave_Main_0
	.4byte 0x00000000
	.4byte Enemies_GoronCave_Main
	.4byte TileEntities_GoronCave_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GoronCave_Main
	.4byte sub_StateChange_GoronCave_Main

Entities_EzloAuxCutscene_Main_0:: @ 080D8ED0
	entity_list_end

Entities_EzloAuxCutscene_Main_1:: @ 080D8EE0
	object_raw subtype=0x4d, x=0x34, y=0x28, collision=1, paramA=0x3f
	object_raw subtype=0x4d, x=0x28, y=0x48, collision=1, paramA=0xc
	object_raw subtype=0x4d, x=0x80, y=0x24, collision=1, paramA=0x42
	object_raw subtype=0x4d, x=0xb0, y=0x4c, collision=1, paramA=0x43
	object_raw subtype=0x4d, x=0xc2, y=0x20, collision=1, paramA=0x40
	object_raw subtype=0x4d, x=0x38, y=0x88, collision=1, paramA=0x41
	object_raw subtype=0x4d, x=0x38, y=0xd8, collision=1, paramA=0x41
	object_raw subtype=0x4d, x=0xb8, y=0x88, collision=1, paramA=0x41
	object_raw subtype=0x4d, x=0xb8, y=0xd8, collision=1, paramA=0x41
	entity_list_end

Enemies_EzloAuxCutscene_Main:: @ 080D8F80
	entity_list_end

TileEntities_EzloAuxCutscene_Main:: @ 080D8F90
	tile_entity_list_end

Area_EzloAuxCutscene_Main:: @ 080D8F98
	.4byte Entities_EzloAuxCutscene_Main_0
	.4byte Entities_EzloAuxCutscene_Main_1
	.4byte Enemies_EzloAuxCutscene_Main
	.4byte TileEntities_EzloAuxCutscene_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_EzloAuxCutscene_Main
	.4byte sub_StateChange_EzloAuxCutscene_Main

Entities_RoyalValley_Main_0:: @ 080D8FB8
	manager subtype=0xf, paramA=0x7
	object_raw subtype=0x3, x=0xd8, y=0x98, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x3, x=0xe8, y=0xa8, paramA=0x1, paramC=0x80010000
	object_raw subtype=0x3, x=0x108, y=0xa8, paramA=0x1, paramC=0x80020000
.ifdef EU_JP
	manager subtype=0x11, paramC=0x88000054
.else
	manager subtype=0x11, paramC=0x88000056
.endif
	object_raw subtype=0x19, x=0x1a0, y=0x1a2, unknown=0x4f, collision=1, paramA=0x1, paramB=0x3, paramC=script_GraveyardHouseDoor
	npc_raw subtype=0x21, x=0x88, y=0x118, script=script_GhostBrothers
.ifdef EU_JP
	ezlo_hint x=0x38, y=0x4a, rx=0x1, ry=0x4, msg=0xb1d, flag=0x58
.else
	ezlo_hint x=0x38, y=0x4a, rx=0x1, ry=0x4, msg=0xb1d, flag=0x5a
.endif
	entity_list_end


gUnk_080D9048:: @ 080D9048
	.incbin "data_080D5360/gUnk_080D9048.bin"

gUnk_080D9098:: @ 080D9098
	npc_raw subtype=0x40, x=0xd8, y=0x188, paramA=0x1, script=script_DampeOuside
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69GetKeyBack
	entity_list_end

gUnk_080D90C8:: @ 080D90C8
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69CrowStealingKey
	object_raw subtype=0x97, x=0x1f0, y=0x1a0, unknown=0x4f, paramA=0x4, paramC=script_Object97FirstCrow
	object_raw subtype=0x97, x=0x1f0, y=0x1b0, unknown=0x4f, paramA=0x4, paramC=script_Object97SecondCrow
	entity_list_end

gUnk_080D9108:: @ 080D9108
	object_raw subtype=0x97, paramA=0x3, paramB=0x1
	entity_list_end

Entities_RoyalValley_Main_1:: @ 080D9128
.ifdef EU_JP
	object_raw subtype=0x71, x=0xf0, y=0x28, paramC=0x540000
	object_raw subtype=0x71, x=0x58, y=0x88, paramA=0x1, paramB=0x1, paramC=0x560000
	object_raw subtype=0x71, x=0x88, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0xc8, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0x108, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0x148, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0x188, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0xe8, y=0xf8, paramA=0x1, paramB=0x1, paramC=0x570000
.else
	object_raw subtype=0x71, x=0xf0, y=0x28, paramC=0x560000
	object_raw subtype=0x71, x=0x58, y=0x88, paramA=0x1, paramB=0x1, paramC=0x580000
	object_raw subtype=0x71, x=0x88, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0xc8, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0x108, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0x148, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0x188, y=0xc8, paramA=0x1
	object_raw subtype=0x71, x=0xe8, y=0xf8, paramA=0x1, paramB=0x1, paramC=0x590000
.endif
	object_raw subtype=0x71, x=0x68, y=0x118, paramA=0x1
	object_raw subtype=0x71, x=0xa8, y=0x118, paramA=0x1
	object_raw subtype=0x71, x=0x128, y=0x118, paramA=0x1
	entity_list_end

Enemies_RoyalValley_Main:: @ 080D91E8
	enemy_raw subtype=0x4e, x=0x78, y=0x358, paramA=0x1, paramB=0x14120000, paramC=0x3300040
	enemy_raw subtype=0x4e, x=0x188, y=0x378, paramA=0x1, paramB=0x1e180000, paramC=0x2a00110
	enemy_raw subtype=0x4e, x=0x198, y=0x2e8, paramA=0x1, paramB=0x1e180000, paramC=0x2a00110
	enemy_raw subtype=0x4e, x=0xe8, y=0xd8, paramA=0x1
	enemy_raw subtype=0x4e, x=0x88, y=0x1c8, paramA=0x1, paramB=0x16060000, paramC=0x1700070
	enemy_raw subtype=0x4e, x=0xe8, y=0x248, paramA=0x1, paramB=0x8160000, paramC=0x2300060
	enemy_raw subtype=0x45, x=0xf0, y=0x340
	enemy_raw subtype=0x45, x=0x80, y=0x390
	entity_list_end

TileEntities_RoyalValley_Main:: @ 080D9278
	tile_entity type=0x9
.ifdef EU_JP
	tile_entity type=0x4, paramA=0x59, paramB=0x1, paramC=0x198, paramD=0x2a8
.else
	tile_entity type=0x4, paramA=0x5b, paramB=0x1, paramC=0x198, paramD=0x2a8
.endif
	tile_entity_list_end

Room_RoyalValley_Main:: @ 080D9290
	.4byte Entities_RoyalValley_Main_0
	.4byte Entities_RoyalValley_Main_1
	.4byte Enemies_RoyalValley_Main
	.4byte TileEntities_RoyalValley_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalValley_Main
	.4byte sub_StateChange_RoyalValley_Main

Entities_RoyalValley_ForestMaze_0:: @ 080D92B0
	enemy_raw subtype=0x4e, x=0x78, y=0x48
	entity_list_end

Enemies_RoyalValley_ForestMaze:: @ 080D92D0
	entity_list_end

TileEntities_RoyalValley_ForestMaze:: @ 080D92E0
	tile_entity type=0x9
	tile_entity type=0x5, paramB=0x3d00, paramC=0x49, paramD=0x63d
	tile_entity type=0x5, paramB=0x3e00, paramC=0x18c, paramD=0x63e
	tile_entity type=0x5, paramB=0x3f00, paramC=0x42, paramD=0x63f
	tile_entity type=0x5, paramB=0x4000, paramC=0x182, paramD=0x640
	tile_entity type=0x5, paramB=0x4100, paramC=0x14b, paramD=0x641
	tile_entity type=0x5, paramB=0x4200, paramC=0x1c3, paramD=0x642
	tile_entity type=0x5, paramB=0x4300, paramC=0xc7, paramD=0x643
	tile_entity_list_end

gUnk_080D9328:: @ 080D9328
.ifdef EU_JP
	tile_entity type=0x2, paramA=0x5a, paramB=0xc83f, paramC=0x107
.else
	tile_entity type=0x2, paramA=0x5c, paramB=0xc83f, paramC=0x107
.endif
	tile_entity_list_end

gUnk_080D9338:: @ 080D9338
	.incbin "data_080D5360/gUnk_080D9338.bin"

gUnk_080D9340:: @ 080D9340
	.incbin "data_080D5360/gUnk_080D9340.bin"

gUnk_080D9348:: @ 080D9348
	.incbin "data_080D5360/gUnk_080D9348.bin"

Room_RoyalValley_ForestMaze:: @ 080D9368
	.4byte Entities_RoyalValley_ForestMaze_0
	.4byte 0x00000000
	.4byte Enemies_RoyalValley_ForestMaze
	.4byte TileEntities_RoyalValley_ForestMaze
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalValley_ForestMaze
	.4byte sub_StateChange_RoyalValley_ForestMaze

Entities_RoyalValleyGraves_HeartPiece_0:: @ 080D9388
	object_raw subtype=0x0, x=0x78, y=0x24, collision=1, paramA=0x63, paramB=0x400, paramC=0x5d0000
	entity_list_end

Enemies_RoyalValleyGraves_HeartPiece:: @ 080D93A8
	entity_list_end

TileEntities_RoyalValleyGraves_HeartPiece:: @ 080D93B8
	tile_entity_list_end

Room_RoyalValleyGraves_HeartPiece:: @ 080D93C0
	.4byte Entities_RoyalValleyGraves_HeartPiece_0
	.4byte 0x00000000
	.4byte Enemies_RoyalValleyGraves_HeartPiece
	.4byte TileEntities_RoyalValleyGraves_HeartPiece
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalValleyGraves_HeartPiece
	.4byte sub_StateChange_RoyalValleyGraves_HeartPiece

Entities_RoyalValleyGraves_Gina_0:: @ 080D93E0
	npc_raw subtype=0x43, x=0x78, y=0x58, script=script_Gina
	entity_list_end

Enemies_RoyalValleyGraves_Gina:: @ 080D9400
	entity_list_end

TileEntities_RoyalValleyGraves_Gina:: @ 080D9410
	tile_entity type=0x2, paramA=0x5e, paramB=0x643f, paramC=0x87
	tile_entity_list_end

Room_RoyalValleyGraves_Gina:: @ 080D9420
	.4byte Entities_RoyalValleyGraves_Gina_0
	.4byte 0x00000000
	.4byte Enemies_RoyalValleyGraves_Gina
	.4byte TileEntities_RoyalValleyGraves_Gina
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalValleyGraves_Gina
	.4byte sub_StateChange_RoyalValleyGraves_Gina

Entities_MinishRafters_Cafe_0:: @ 080D9440
	npc_raw subtype=0x38, x=0xd8, y=0x30, paramA=0x1, paramB=0x202, script=script_TownMinish2
	npc_raw subtype=0x38, x=0x38, y=0xa8, paramB=0x103, script=script_TownMinish1
	npc_raw subtype=0x38, x=0x5c, y=0xdc, paramB=0x104, script=script_TownMinish1
	npc_raw subtype=0x3, x=0x78, y=0xd6, unknown=0xf, paramB=0x324, script=0x0
	npc_raw subtype=0x3, x=0x128, y=0xa8, unknown=0xf, paramB=0x125, script=0x0
	npc_raw subtype=0x3, x=0x158, y=0xb4, unknown=0xf, paramB=0x226, script=0x0
	entity_list_end

Entities_MinishRafters_Cafe_1:: @ 080D94B0
	object_raw subtype=0x4f, x=0x1e8, y=0xb8, paramA=0x1c, paramB=0x1
	object_raw subtype=0x4f, x=0x38, y=0x8, paramA=0x1d
	object_raw subtype=0x4d, x=0x14, y=0x98, collision=1, paramA=0x36
	object_raw subtype=0x4d, x=0xbc, y=0x98, collision=1, paramA=0x36
	object_raw subtype=0x4d, x=0x178, y=0x28, collision=1, paramA=0x36, paramB=0x1
	object_raw subtype=0x4d, x=0x78, y=0x98, collision=1, paramA=0x35
	object_raw subtype=0x4d, x=0x178, y=0xe8, collision=1, paramA=0x35
	object_raw subtype=0x4d, x=0xd8, y=0xe8, collision=1, paramA=0x28
	object_raw subtype=0x4d, x=0x40, y=0xd8, collision=1, paramA=0x29
	object_raw subtype=0x4d, x=0x2c, y=0xf8, collision=1, paramA=0x2c
	manager subtype=0x9
	object_raw subtype=0xbc, x=0x10, y=0x88
	object_raw subtype=0xbc, x=0xb8, y=0x88
	object_raw subtype=0xbc, x=0x174, y=0x18
	manager subtype=0x1a, unknown=0x8, paramA=0x38
	entity_list_end

Enemies_MinishRafters_Cafe:: @ 080D95B0
	entity_list_end

TileEntities_MinishRafters_Cafe:: @ 080D95C0
	tile_entity type=0x9, paramB=0xc000
	tile_entity_list_end

Room_MinishRafters_Cafe:: @ 080D95D0
	.4byte Entities_MinishRafters_Cafe_0
	.4byte Entities_MinishRafters_Cafe_1
	.4byte Enemies_MinishRafters_Cafe
	.4byte TileEntities_MinishRafters_Cafe
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishRafters_Cafe
	.4byte sub_StateChange_MinishRafters_Cafe

Entities_MinishRafters_Stockwell_0:: @ 080D95F0
	entity_list_end

Entities_MinishRafters_Stockwell_1:: @ 080D9600
	object_raw subtype=0x4f, x=0x8, y=0xb8, paramA=0x1c, paramB=0x3
	object_raw subtype=0x4f, x=0x198, y=0x8, paramA=0x1d
	object_raw subtype=0x4d, x=0x68, y=0x88, collision=1, paramA=0x36, paramB=0x1
	object_raw subtype=0x4d, x=0x108, y=0xe8, collision=1, paramA=0x36, paramB=0x1
	object_raw subtype=0x4d, x=0x1a0, y=0xe8, collision=1, paramA=0x26
	object_raw subtype=0x4d, x=0x160, y=0x98, collision=1, paramA=0x34
	object_raw subtype=0x4d, x=0x190, y=0xf8, collision=1, paramA=0x34
	object_raw subtype=0x4d, x=0x70, y=0xc8, collision=1, paramA=0x32
	object_raw subtype=0x4d, x=0x100, y=0x78, collision=1, paramA=0x32
	object_raw subtype=0x4d, x=0x1e0, y=0xc8, collision=1, paramA=0x32
	object_raw subtype=0x4d, x=0x138, y=0x98, collision=1, paramA=0x27
	object_raw subtype=0x4d, x=0x88, y=0xe8, collision=1, paramA=0x31
	manager subtype=0x9, paramA=0x1
	object_raw subtype=0xbc, x=0x64, y=0x78
	object_raw subtype=0xbc, x=0x104, y=0xd8
	manager subtype=0x1a, unknown=0x8, paramA=0x39
	entity_list_end

Enemies_MinishRafters_Stockwell:: @ 080D9710
	enemy_raw subtype=0x11, x=0x188, y=0x68
	enemy_raw subtype=0x32, x=0x98, y=0xb8
	enemy_raw subtype=0x32, x=0xc8, y=0x98
	enemy_raw subtype=0x32, x=0x198, y=0x98
	enemy_raw subtype=0x32, x=0x78, y=0x78, paramA=0x1
	enemy_raw subtype=0x32, x=0x148, y=0xb8, paramA=0x1
	entity_list_end

TileEntities_MinishRafters_Stockwell:: @ 080D9780
	tile_entity type=0x9, paramB=0x8000
	tile_entity type=0x2, paramA=0x77, paramB=0xa3f, paramC=0x257
	tile_entity type=0x7, paramB=0x1700
	tile_entity_list_end

Room_MinishRafters_Stockwell:: @ 080D97A0
	.4byte Entities_MinishRafters_Stockwell_0
	.4byte Entities_MinishRafters_Stockwell_1
	.4byte Enemies_MinishRafters_Stockwell
	.4byte TileEntities_MinishRafters_Stockwell
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishRafters_Stockwell
	.4byte sub_StateChange_MinishRafters_Stockwell

Entities_MinishRafters_DrLeft_0:: @ 080D97C0
	npc_raw subtype=0x38, x=0x98, y=0x90, paramB=0x7, script=script_TownMinish1
	npc_raw subtype=0x38, x=0x158, y=0x68, paramB=0x208, script=script_TownMinish3
	npc_raw subtype=0x38, x=0x38, y=0x58, paramA=0x5, paramB=0x109, script=script_TownMinish1
	entity_list_end

gUnk_080D9800:: @ 080D9800
	object_raw subtype=0x4d, x=0x1a0, y=0x50, collision=1, paramA=0x37
	object_raw subtype=0x88, x=0x170, y=0x58
	entity_list_end

Entities_MinishRafters_DrLeft_1:: @ 080D9830
	object_raw subtype=0x4f, x=0xe8, y=0x8, paramA=0x1d
	object_raw subtype=0x4d, x=0x38, y=0x38, collision=1, paramA=0x36, paramB=0x1
	object_raw subtype=0x4d, x=0x150, y=0xc8, collision=1, paramA=0x36, paramB=0x1
	object_raw subtype=0x4d, x=0x188, y=0xd8, collision=1, paramA=0x2d
	object_raw subtype=0x4d, x=0xec, y=0xe8, collision=1, paramA=0x2e
	object_raw subtype=0x4d, x=0xd0, y=0xc8, collision=1, paramA=0x34
	object_raw subtype=0x4d, x=0x110, y=0xa8, collision=1, paramA=0x34
	object_raw subtype=0x4d, x=0x1b0, y=0xe8, collision=1, paramA=0x34
	object_raw subtype=0x4d, x=0x48, y=0xe8, collision=1, paramA=0x33
	object_raw subtype=0x4d, x=0x14, y=0xa8, collision=1, paramA=0x30
	object_raw subtype=0x4d, x=0x20, y=0xcc, collision=1, paramA=0x30, paramB=0x1
	object_raw subtype=0x4d, x=0x90, y=0xee, collision=1, paramA=0x2a
	object_raw subtype=0x4d, x=0xa0, y=0xde, collision=1, paramA=0x2a, paramB=0x1
	manager subtype=0x9, paramA=0x2
	manager subtype=0x1a, unknown=0x8, paramA=0x3a
	entity_list_end

Enemies_MinishRafters_DrLeft:: @ 080D9930
	entity_list_end

TileEntities_MinishRafters_DrLeft:: @ 080D9940
	tile_entity_list_end

Room_MinishRafters_DrLeft:: @ 080D9948
	.4byte Entities_MinishRafters_DrLeft_0
	.4byte Entities_MinishRafters_DrLeft_1
	.4byte Enemies_MinishRafters_DrLeft
	.4byte TileEntities_MinishRafters_DrLeft
	.4byte sub_unk1_MinishRafters_DrLeft
	.4byte 0x00000000
	.4byte sub_unk3_MinishRafters_DrLeft
	.4byte sub_StateChange_MinishRafters_DrLeft

Entities_MinishRafters_Bakery_0:: @ 080D9968
	npc_raw subtype=0x38, x=0x48, y=0x78, paramA=0x5, paramB=0x20e, script=script_TownMinish1
	npc_raw subtype=0x38, x=0x78, y=0xc8, paramA=0x4, paramB=0x20f, script=script_TownMinish1
	npc_raw subtype=0x38, x=0xe8, y=0xc8, paramA=0x3, paramB=0x210, script=script_TownMinish1
	npc_raw subtype=0x38, x=0x158, y=0x98, paramB=0x211, script=script_TownMinish1
	entity_list_end

Entities_MinishRafters_Bakery_1:: @ 080D99B8
	object_raw subtype=0x4f, x=0x48, y=0x8, paramA=0x1d
	object_raw subtype=0x4f, x=0x148, y=0x8, paramA=0x1d
	object_raw subtype=0x4d, x=0x48, y=0xe8, collision=1, paramA=0x36, paramB=0x1
	object_raw subtype=0x4d, x=0x118, y=0xc8, collision=1, paramA=0x36, paramB=0x1
	object_raw subtype=0x4d, x=0xd8, y=0xe8, collision=1, paramA=0x28, paramB=0x1
	object_raw subtype=0x4d, x=0xd8, y=0x78, collision=1, paramA=0x2b
	object_raw subtype=0x4d, x=0x148, y=0xe8, collision=1, paramA=0x2b
	object_raw subtype=0x4d, x=0x180, y=0xa8, collision=1, paramA=0x29
	object_raw subtype=0x4d, x=0x20, y=0xa8, collision=1, paramA=0x44
	object_raw subtype=0x4d, x=0x78, y=0xa8, collision=1, paramA=0x45
	object_raw subtype=0x4d, x=0x1b8, y=0xb8, collision=1, paramA=0x45, paramB=0x1
	manager subtype=0x9, paramA=0x3
	manager subtype=0x1a, unknown=0x8, paramA=0x3b
	entity_list_end

Enemies_MinishRafters_Bakery:: @ 080D9A98
	entity_list_end

TileEntities_MinishRafters_Bakery:: @ 080D9AA8
	tile_entity type=0x2, paramA=0xbd, paramB=0x58, paramC=0x2cb
	tile_entity_list_end

Room_MinishRafters_Bakery:: @ 080D9AB8
	.4byte Entities_MinishRafters_Bakery_0
	.4byte Entities_MinishRafters_Bakery_1
	.4byte Enemies_MinishRafters_Bakery
	.4byte TileEntities_MinishRafters_Bakery
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishRafters_Bakery
	.4byte sub_StateChange_MinishRafters_Bakery

Entities_CastorWilds_Main_0:: @ 080D9AD8
	object_raw subtype=0x5e, x=0x158, y=0xb8
	object_raw subtype=0x5e, x=0x398, y=0x308
.ifdef EU_JP
	manager subtype=0x20, x=0x218, y=0x328, paramB=0x12182e00, paramC=0x161318
	manager subtype=0x20, x=0x2b8, y=0x398, paramB=0x12a82e00, paramC=0x171398
	object_raw subtype=0x69, x=0x68, y=0x380, unknown=0x4f, paramC=script_Object69
	npc_raw subtype=0x2b, x=0x28, y=0x3a8, paramA=0x1, script=script_CastorWildsStatueRock
	npc_raw subtype=0x2b, x=0x40, y=0x354, script=script_CastorWildsStatueLeft
	npc_raw subtype=0x2b, x=0x70, y=0x354, script=script_CastorWildsStatueMiddle
	npc_raw subtype=0x2b, x=0xa0, y=0x354, script=script_CastorWildsStatueRight
	object_raw subtype=0x71, x=0x38, y=0x2d8, paramA=0x1, paramB=0x1, paramC=0x200000
	manager subtype=0x4
	manager subtype=0x20, x=0x2b8, y=0x148, paramB=0x12b82e00, paramC=0x1f1158
	manager subtype=0xe, unknown=0x1f, paramA=0x10, paramC=0xc0000
	ezlo_hint x=0x72, y=0x36, rx=0x2, ry=0xa, msg=0xb2e, flag=0x1b
	ezlo_hint x=0x74, y=0x2a, rx=0x4, ry=0x5, msg=0xb2f, flag=0x1d
	ezlo_hint x=0x2a, y=0x54, rx=0x4, ry=0x2, msg=0xb2f, flag=0x1d
	ezlo_hint x=0x4c, y=0x6e, rx=0x4, ry=0x3, msg=0xb2f, flag=0x1d
.ifndef EU
	ezlo_hint x=0x30, y=0x12, rx=0x3, ry=0x4, msg=0xb2f, flag=0x1d
.endif
	object_raw subtype=0x0, x=0x3d8, y=0x268, collision=1, paramA=0x5c, paramB=0x86e, paramC=0x220000
	object_raw subtype=0x0, x=0x3d8, y=0x288, collision=1, paramA=0x5c, paramB=0x86f, paramC=0x230000
	object_raw subtype=0x0, x=0x3d8, y=0x2a8, collision=1, paramA=0x5c, paramB=0x870, paramC=0x240000
.else
	manager subtype=0x20, x=0x218, y=0x328, paramB=0x12182e00, paramC=0x151318
	manager subtype=0x20, x=0x2b8, y=0x398, paramB=0x12a82e00, paramC=0x161398
	object_raw subtype=0x69, x=0x68, y=0x380, unknown=0x4f, paramC=script_Object69
	npc_raw subtype=0x2b, x=0x28, y=0x3a8, paramA=0x1, script=script_CastorWildsStatueRock
	npc_raw subtype=0x2b, x=0x40, y=0x354, script=script_CastorWildsStatueLeft
	npc_raw subtype=0x2b, x=0x70, y=0x354, script=script_CastorWildsStatueMiddle
	npc_raw subtype=0x2b, x=0xa0, y=0x354, script=script_CastorWildsStatueRight
	object_raw subtype=0x71, x=0x38, y=0x2d8, paramA=0x1, paramB=0x1, paramC=0x1f0000
	manager subtype=0x4
	manager subtype=0x20, x=0x2b8, y=0x148, paramB=0x12b82e00, paramC=0x1e1158
	manager subtype=0xe, unknown=0x1f, paramA=0x10, paramC=0x230000
	ezlo_hint x=0x72, y=0x36, rx=0x2, ry=0xa, msg=0xb2e, flag=0x1a
	ezlo_hint x=0x74, y=0x2a, rx=0x4, ry=0x5, msg=0xb2f, flag=0x1c
	ezlo_hint x=0x2a, y=0x54, rx=0x4, ry=0x2, msg=0xb2f, flag=0x1c
	ezlo_hint x=0x4c, y=0x6e, rx=0x4, ry=0x3, msg=0xb2f, flag=0x1c
	ezlo_hint x=0x30, y=0x12, rx=0x3, ry=0x4, msg=0xb2f, flag=0x1c
	object_raw subtype=0x0, x=0x3d8, y=0x268, collision=1, paramA=0x5c, paramB=0x86e, paramC=0x200000
	object_raw subtype=0x0, x=0x3d8, y=0x288, collision=1, paramA=0x5c, paramB=0x86f, paramC=0x210000
	object_raw subtype=0x0, x=0x3d8, y=0x2a8, collision=1, paramA=0x5c, paramB=0x870, paramC=0x220000
.endif
	entity_list_end

gUnk_080D9C38:: @ 080D9C38
	manager subtype=0x1e, x=0x350, y=0x1b0, paramB=0x200070, paramC=0x80000000
	manager subtype=0x1e, x=0x350, y=0x260, paramB=0x200070, paramC=0x80000000
	manager subtype=0x1e, x=0x380, y=0x1d0, paramB=0x100010, paramC=0x80000000
	manager subtype=0x1e, x=0x3c0, y=0x1d0, paramB=0x100010, paramC=0x80000000
	manager subtype=0x1e, x=0x330, y=0x1c0, paramB=0xa00050, paramC=0x80000000
	manager subtype=0xe, unknown=0x1f, paramA=0x13, paramC=0x80000000
	entity_list_end

gUnk_additional_13_CastorWilds_Main:: @ 080D9CA8
.ifdef EU_JP
	ezlo_hint x=0x70, y=0x3c, rx=0x5, ry=0x7, msg=0xb66, flag=0x1c
.else
	ezlo_hint x=0x70, y=0x3c, rx=0x5, ry=0x7, msg=0xb66, flag=0x1b
.endif
	entity_list_end

gUnk_080D9CC8:: @ 080D9CC8
	manager subtype=0x6, paramA=0x11
	entity_list_end

gUnk_080D9CE8:: @ 080D9CE8
	object_raw subtype=0xbb, x=0x228, y=0x398, unknown=0x4f, paramB=0x5, paramC=script_Windcrest
	entity_list_end

Entities_CastorWilds_Main_1:: @ 080D9D08
	manager subtype=0x6, paramA=0x8
	manager subtype=0x3, x=0x98, y=0xc0, unknown=0x0, paramB=0x102
	entity_list_end

Enemies_CastorWilds_Main:: @ 080D9D38
	enemy_raw subtype=0x2b, x=0x198, y=0x88, paramB=0x15110000, paramC=0x580178
	enemy_raw subtype=0x2b, x=0x160, y=0x298
	enemy_raw subtype=0x2b, x=0x278, y=0x368, paramB=0x11150000, paramC=0x32801e8
	enemy_raw subtype=0x2b, x=0x3c0, y=0x148, paramB=0xb130000, paramC=0x1480348
	enemy_raw subtype=0x2c, x=0x198, y=0x278
	enemy_raw subtype=0x2c, x=0x228, y=0xa8
	enemy_raw subtype=0x2c, x=0xf8, y=0x58
	enemy_raw subtype=0x2c, x=0x18, y=0x168
	enemy_raw subtype=0x2c, x=0xd8, y=0x248
	enemy_raw subtype=0x2c, x=0x268, y=0x378
	enemy_raw subtype=0x2c, x=0x258, y=0x2c8
	enemy_raw subtype=0x3, x=0x198, y=0x1f8, paramB=0x121e0000, paramC=0x1b00120
	enemy_raw subtype=0x3, x=0x338, y=0xb8, paramB=0x1a140000, paramC=0x4002c0
	enemy_raw subtype=0x3, x=0x168, y=0x358, paramB=0x142c0000, paramC=0x31000e0
	entity_list_end

gUnk_additional_10_CastorWilds_Main:: @ 080D9E28
	enemy_raw subtype=0x17, x=0xc8, y=0x1e8, paramA=0x2
	enemy_raw subtype=0x17, x=0xe8, y=0x1e8, paramA=0x2
	entity_list_end

TileEntities_CastorWilds_Main:: @ 080D9E58
.ifdef EU_JP
	tile_entity type=0x2, paramA=0xc, paramB=0x715c, paramC=0x6cd
.else
	tile_entity type=0x2, paramA=0x23, paramB=0x715c, paramC=0x6cd
.endif
	tile_entity_list_end

gUnk_additional_8_CastorWilds_Main:: @ 080D9E68
	exit_region_raw centerX=0x28, centerY=0x70, halfWidth=0x8, halfHeight=0x2, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0x28, centerY=0xa0, halfWidth=0x8, halfHeight=0x2, exitIndex=0xa, bitfield=0x1
	exit_region_raw centerX=0x28, centerY=0x48, halfWidth=0x3, halfHeight=0x3, exitIndex=0xb, bitfield=0x1
	exit_region_raw centerX=0x398, centerY=0x38, halfWidth=0x8, halfHeight=0x8, exitIndex=0xc, bitfield=0x11
	exit_region_raw centerX=0xc8, centerY=0x48, halfWidth=0x2, halfHeight=0x2, exitIndex=0xd, bitfield=0x1
	exit_region_raw centerX=0x38, centerY=0x138, halfWidth=0x2, halfHeight=0x2, exitIndex=0xe, bitfield=0x1
	exit_region_raw centerX=0x168, centerY=0x2d8, halfWidth=0x2, halfHeight=0x2, exitIndex=0xf, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_CastorWilds_Main:: @ 080D9EA8
	exit_raw transition=0x1, destX=0x78, destY=0x18, destArea=0x11, destRoom=0x1, unknownA=0x1, unknownC=0x4

gUnk_additional_a_CastorWilds_Main:: @ 080D9EBC
	exit_raw transition=0x1, destX=0x78, destY=0x318, destArea=0x11, destRoom=0x1, unknownA=0x1

gUnk_additional_b_CastorWilds_Main:: @ 080D9ED0
	exit_raw transition=0x1, destX=0x98, destY=0x30, destArea=0x27, destRoom=0x6, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_c_CastorWilds_Main:: @ 080D9EE4
	exit_raw transition=0x1, destX=0x78, destY=0x88, destArea=0x25, destRoom=0xd, unknownA=0x1

gUnk_additional_d_CastorWilds_Main:: @ 080D9EF8
	exit_raw transition=0x1, destX=0x78, destY=0x38, destArea=0x27, destRoom=0x9, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_e_CastorWilds_Main:: @ 080D9F0C
	exit_raw transition=0x1, destX=0x78, destY=0x38, destArea=0x27, destRoom=0xa, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_f_CastorWilds_Main:: @ 080D9F20
	exit_raw transition=0x1, destX=0x78, destY=0x38, destArea=0x27, destRoom=0xb, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_11_CastorWilds_Main:: @ 080D9F34
	exit_region_raw centerX=0x18, centerY=0x58, halfWidth=0x3, halfHeight=0x3, exitIndex=0x12, bitfield=0x1
	exit_region_list_end

gUnk_additional_12_CastorWilds_Main:: @ 080D9F44
	exit_raw transition=0x1, destX=0x78, destY=0x38, destArea=0x27, destRoom=0xd, unknownA=0x1, unknownB=0x2, unknownC=0x4

Room_CastorWilds_Main:: @ 080D9F58
	.4byte Entities_CastorWilds_Main_0
	.4byte Entities_CastorWilds_Main_1
	.4byte Enemies_CastorWilds_Main
	.4byte TileEntities_CastorWilds_Main
	.4byte sub_unk1_CastorWilds_Main
	.4byte 0x00000000
	.4byte sub_unk3_CastorWilds_Main
	.4byte sub_StateChange_CastorWilds_Main
	.4byte gUnk_additional_8_CastorWilds_Main
	.4byte gUnk_additional_9_CastorWilds_Main
	.4byte gUnk_additional_a_CastorWilds_Main
	.4byte gUnk_additional_b_CastorWilds_Main
	.4byte gUnk_additional_c_CastorWilds_Main
	.4byte gUnk_additional_d_CastorWilds_Main
	.4byte gUnk_additional_e_CastorWilds_Main
	.4byte gUnk_additional_f_CastorWilds_Main
	.4byte gUnk_additional_10_CastorWilds_Main
	.4byte gUnk_additional_11_CastorWilds_Main
	.4byte gUnk_additional_12_CastorWilds_Main
	.4byte gUnk_additional_13_CastorWilds_Main

Entities_CastorCaves_South_0:: @ 080D9FA8
	entity_list_end

Entities_CastorCaves_South_1:: @ 080D9FB8
	entity_list_end

Enemies_CastorCaves_South:: @ 080D9FC8
	enemy_raw subtype=0x2c, x=0xc8, y=0x58
	enemy_raw subtype=0x2c, x=0x48, y=0x78
	entity_list_end

TileEntities_CastorCaves_South:: @ 080D9FF8
	tile_entity type=0x2, paramA=0x34, paramB=0x6b5c, paramC=0x87
	tile_entity_list_end

Room_CastorCaves_South:: @ 080DA008
	.4byte Entities_CastorCaves_South_0
	.4byte Entities_CastorCaves_South_1
	.4byte Enemies_CastorCaves_South
	.4byte TileEntities_CastorCaves_South
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastorCaves_South
	.4byte sub_StateChange_CastorCaves_South

Entities_CastorCaves_North_0:: @ 080DA028
	entity_list_end

Entities_CastorCaves_North_1:: @ 080DA038
	entity_list_end

Enemies_CastorCaves_North:: @ 080DA048
	enemy_raw subtype=0x16, x=0x58, y=0x28, paramC=0x6a0000
	entity_list_end

TileEntities_CastorCaves_North:: @ 080DA068
	tile_entity type=0x2, paramA=0x36, paramB=0x6a5c, paramC=0x90
	tile_entity type=0xb, paramA=0x10
	tile_entity_list_end

Room_CastorCaves_North:: @ 080DA080
	.4byte Entities_CastorCaves_North_0
	.4byte Entities_CastorCaves_North_1
	.4byte Enemies_CastorCaves_North
	.4byte TileEntities_CastorCaves_North
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastorCaves_North
	.4byte sub_StateChange_CastorCaves_North

Entities_CastorCaves_WindRuins_0:: @ 080DA0A0
	entity_list_end

Entities_CastorCaves_WindRuins_1:: @ 080DA0B0
	entity_list_end

Enemies_CastorCaves_WindRuins:: @ 080DA0C0
	entity_list_end

TileEntities_CastorCaves_WindRuins:: @ 080DA0D0
	tile_entity type=0x2, paramA=0x37, paramB=0x725c, paramC=0x87
	tile_entity_list_end

Room_CastorCaves_WindRuins:: @ 080DA0E0
	.4byte Entities_CastorCaves_WindRuins_0
	.4byte Entities_CastorCaves_WindRuins_1
	.4byte Enemies_CastorCaves_WindRuins
	.4byte TileEntities_CastorCaves_WindRuins
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastorCaves_WindRuins
	.4byte sub_StateChange_CastorCaves_WindRuins

Entities_CastorCaves_Darknut_0:: @ 080DA100
	object_raw subtype=0x5, x=0x78, y=0x48, collision=1
	object_raw subtype=0x5, x=0x88, y=0x58, collision=1
	object_raw subtype=0x5, x=0x88, y=0x48, collision=1, paramA=0x5d
	object_raw subtype=0x5, x=0x78, y=0x58, collision=1
	entity_list_end

Entities_CastorCaves_Darknut_1:: @ 080DA150
	entity_list_end

Enemies_CastorCaves_Darknut:: @ 080DA160
	enemy_raw subtype=0x2c, x=0xa8, y=0x28
	enemy_raw subtype=0x2c, x=0x48, y=0x58
	entity_list_end

TileEntities_CastorCaves_Darknut:: @ 080DA190
	tile_entity_list_end

Room_CastorCaves_Darknut:: @ 080DA198
	.4byte Entities_CastorCaves_Darknut_0
	.4byte Entities_CastorCaves_Darknut_1
	.4byte Enemies_CastorCaves_Darknut
	.4byte TileEntities_CastorCaves_Darknut
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastorCaves_Darknut
	.4byte sub_StateChange_CastorCaves_Darknut

Entities_CastorCaves_HeartPiece_0:: @ 080DA1B8
	object_raw subtype=0x0, x=0x78, y=0x24, collision=1, paramA=0x63, paramB=0x400, paramC=0x380000
	entity_list_end

Enemies_CastorCaves_HeartPiece:: @ 080DA1D8
	entity_list_end

TileEntities_CastorCaves_HeartPiece:: @ 080DA1E8
	tile_entity_list_end

Room_CastorCaves_HeartPiece:: @ 080DA1F0
	.4byte Entities_CastorCaves_HeartPiece_0
	.4byte 0x00000000
	.4byte Enemies_CastorCaves_HeartPiece
	.4byte TileEntities_CastorCaves_HeartPiece
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastorCaves_HeartPiece
	.4byte sub_StateChange_CastorCaves_HeartPiece

Entities_CastorDarknut_Main_0:: @ 080DA210
	object_raw subtype=0xc, x=0x88, y=0x68, paramA=0x1, paramC=0x390000
	entity_list_end

gUnk_080DA230:: @ 080DA230
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69DarknutFight
	object_raw subtype=0xc, x=0x88, y=0x68, paramA=0x1, paramC=0x390000
	entity_list_end

gUnk_080DA260:: @ 080DA260
	object_raw subtype=0x8, x=0x88, y=0xb8, paramA=0x12, paramC=0x39ffff
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x398000
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb10, flag=0x39, flag2=0x8000
	entity_list_end

Entities_CastorDarknut_Main_1:: @ 080DA2A0
	entity_list_end

Enemies_CastorDarknut_Main:: @ 080DA2B0
	entity_list_end

TileEntities_CastorDarknut_Main:: @ 080DA2C0
	tile_entity type=0x2, paramA=0x3a, paramB=0x6c5c, paramC=0x188
	tile_entity type=0xd, paramB=0x2d00
	tile_entity_list_end

gUnk_additional_8_CastorDarknut_Main:: @ 080DA2D8
	enemy_raw subtype=0x5, x=0x88, y=0x50, unknown=0x2f
	entity_list_end

Room_CastorDarknut_Main:: @ 080DA2F8
	.4byte Entities_CastorDarknut_Main_0
	.4byte Entities_CastorDarknut_Main_1
	.4byte Enemies_CastorDarknut_Main
	.4byte TileEntities_CastorDarknut_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastorDarknut_Main
	.4byte sub_StateChange_CastorDarknut_Main
	.4byte gUnk_additional_8_CastorDarknut_Main

Entities_CastorDarknut_Hall_0:: @ 080DA31C
	entity_list_end

Entities_CastorDarknut_Hall_1:: @ 080DA32C
	entity_list_end

Enemies_CastorDarknut_Hall:: @ 080DA33C
	enemy_raw subtype=0x2c, x=0x58, y=0x48
	enemy_raw subtype=0x2c, x=0x58, y=0x58
	enemy_raw subtype=0x2c, x=0x1c8, y=0x78
	entity_list_end

TileEntities_CastorDarknut_Hall:: @ 080DA37C
	tile_entity_list_end

Room_CastorDarknut_Hall:: @ 080DA384
	.4byte Entities_CastorDarknut_Hall_0
	.4byte Entities_CastorDarknut_Hall_1
	.4byte Enemies_CastorDarknut_Hall
	.4byte TileEntities_CastorDarknut_Hall
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastorDarknut_Hall
	.4byte sub_StateChange_CastorDarknut_Hall

Entities_GreatFairies_Graveyard_0:: @ 080DA3A4
	object_raw subtype=0x69, x=0x78, y=0x48, unknown=0x4f, paramC=script_GreatFairyArrows
	object_raw subtype=0x1b, x=0x78, y=0x48, collision=2, paramA=0x16
	entity_list_end

Enemies_GreatFairies_Graveyard:: @ 080DA3D4
	entity_list_end

TileEntities_GreatFairies_Graveyard:: @ 080DA3E4
	tile_entity_list_end

Room_GreatFairies_Graveyard:: @ 080DA3EC
	.4byte Entities_GreatFairies_Graveyard_0
	.4byte 0x00000000
	.4byte Enemies_GreatFairies_Graveyard
	.4byte TileEntities_GreatFairies_Graveyard
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GreatFairies_Graveyard
	.4byte sub_StateChange_GreatFairies_Graveyard

Entities_GreatFairies_MinishWoods_0:: @ 080DA40C
	object_raw subtype=0x69, x=0x78, y=0x48, unknown=0x4f, paramC=script_GreatFairyRupees
	object_raw subtype=0x1b, x=0x78, y=0x48, collision=2, paramA=0xb
	entity_list_end

Enemies_GreatFairies_MinishWoods:: @ 080DA43C
	entity_list_end

TileEntities_GreatFairies_MinishWoods:: @ 080DA44C
	tile_entity_list_end

Room_GreatFairies_MinishWoods:: @ 080DA454
	.4byte Entities_GreatFairies_MinishWoods_0
	.4byte 0x00000000
	.4byte Enemies_GreatFairies_MinishWoods
	.4byte TileEntities_GreatFairies_MinishWoods
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GreatFairies_MinishWoods
	.4byte sub_StateChange_GreatFairies_MinishWoods

Entities_GreatFairies_MtCrenel_0:: @ 080DA474
	object_raw subtype=0x69, x=0x78, y=0x48, unknown=0x4f, paramC=script_GreatFairyBombs
	object_raw subtype=0x1b, x=0x78, y=0x48, collision=2
	entity_list_end

Enemies_GreatFairies_MtCrenel:: @ 080DA4A4
	entity_list_end

TileEntities_GreatFairies_MtCrenel:: @ 080DA4B4
	tile_entity_list_end

Room_GreatFairies_MtCrenel:: @ 080DA4BC
	.4byte Entities_GreatFairies_MtCrenel_0
	.4byte 0x00000000
	.4byte Enemies_GreatFairies_MtCrenel
	.4byte TileEntities_GreatFairies_MtCrenel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GreatFairies_MtCrenel
	.4byte sub_StateChange_GreatFairies_MtCrenel

Entities_GardenFountains_East_0:: @ 080DA4DC
	object_raw subtype=0x0, x=0x78, y=0x24, collision=1, paramA=0x63, paramB=0x400, paramC=0x940000
	entity_list_end

Enemies_GardenFountains_East:: @ 080DA4FC
	entity_list_end

TileEntities_GardenFountains_East:: @ 080DA50C
	tile_entity_list_end

Room_GardenFountains_East:: @ 080DA514
	.4byte Entities_GardenFountains_East_0
	.4byte 0x00000000
	.4byte Enemies_GardenFountains_East
	.4byte TileEntities_GardenFountains_East
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GardenFountains_East
	.4byte sub_StateChange_GardenFountains_East

Entities_GardenFountains_West_0:: @ 080DA534
	object_raw subtype=0x40, x=0x78, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x68, y=0x48, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x98, y=0x48, paramA=0x60, paramB=0x1
.ifndef EU_JP
	manager subtype=0x1e, x=0x60, y=0x60, paramB=0x300030, paramC=0xc80000
.endif
	entity_list_end

Enemies_GardenFountains_West:: @ 080DA584
	entity_list_end

TileEntities_GardenFountains_West:: @ 080DA594
	tile_entity type=0x7, paramB=0x3a00
	tile_entity_list_end

Room_GardenFountains_West:: @ 080DA5A4
	.4byte Entities_GardenFountains_West_0
	.4byte 0x00000000
	.4byte Enemies_GardenFountains_West
	.4byte TileEntities_GardenFountains_West
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_GardenFountains_West
	.4byte sub_StateChange_GardenFountains_West

Entities_MinishHouseInteriors_GentariMain_0:: @ 080DA5C4
	npc_raw subtype=0x1, x=0x78, y=0x30, script=script_Gentari
	object_raw subtype=0x58, x=0x18, y=0x50, paramC=0x830000
	entity_list_end

Entities_MinishHouseInteriors_GentariMain_1:: @ 080DA5F4
	object_raw subtype=0x6f, x=0x8, y=0x50, paramA=0x2
	object_raw subtype=0x6f, x=0x78, y=0x90, paramA=0x1
	entity_list_end

Enemies_MinishHouseInteriors_GentariMain:: @ 080DA624
	entity_list_end

TileEntities_MinishHouseInteriors_GentariMain:: @ 080DA634
	tile_entity_list_end

Room_MinishHouseInteriors_GentariMain:: @ 080DA63C
	.4byte Entities_MinishHouseInteriors_GentariMain_0
	.4byte Entities_MinishHouseInteriors_GentariMain_1
	.4byte Enemies_MinishHouseInteriors_GentariMain
	.4byte TileEntities_MinishHouseInteriors_GentariMain
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_GentariMain
	.4byte sub_StateChange_MinishHouseInteriors_GentariMain

Entities_MinishHouseInteriors_GentariExit_0:: @ 080DA65C
	entity_list_end

Entities_MinishHouseInteriors_GentariExit_1:: @ 080DA66C
	manager subtype=0x6, paramA=0x8
	object_raw subtype=0x6f, x=0x48, y=0x50, paramA=0x3
	object_raw subtype=0x6f, x=0xe0, y=0x50, paramA=0x4
	entity_list_end

Enemies_MinishHouseInteriors_GentariExit:: @ 080DA6AC
	entity_list_end

TileEntities_MinishHouseInteriors_GentariExit:: @ 080DA6BC
	tile_entity_list_end

gUnk_additional_8_MinishHouseInteriors_GentariExit:: @ 
	exit_region_raw centerX=0x44, centerY=0x50, halfWidth=0x4, halfHeight=0x8, exitIndex=0x9, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_MinishHouseInteriors_GentariExit:: @ 080DA6D4
	exit_raw transition=0x1, destX=0x28, destY=0x70, destArea=0x1, unknownA=0x1, unknownC=0x6

Room_MinishHouseInteriors_GentariExit:: @ 080DA6E8
	.4byte Entities_MinishHouseInteriors_GentariExit_0
	.4byte Entities_MinishHouseInteriors_GentariExit_1
	.4byte Enemies_MinishHouseInteriors_GentariExit
	.4byte TileEntities_MinishHouseInteriors_GentariExit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_GentariExit
	.4byte sub_StateChange_MinishHouseInteriors_GentariExit
	.4byte gUnk_additional_8_MinishHouseInteriors_GentariExit
	.4byte gUnk_additional_9_MinishHouseInteriors_GentariExit

Entities_MinishHouseInteriors_Festari_0:: @ 080DA710
	npc_raw subtype=0x2, x=0xe8, y=0x48, script=script_Festari
	entity_list_end

Entities_MinishHouseInteriors_Festari_1:: @ 080DA730
	object_raw subtype=0x6f, x=0xe8, y=0xe0, paramA=0x5
	object_raw subtype=0x6f, x=0xe8, y=0x20, paramA=0x6
	entity_list_end

Enemies_MinishHouseInteriors_Festari:: @ 080DA760
	entity_list_end

TileEntities_MinishHouseInteriors_Festari:: @ 080DA770
	tile_entity_list_end

gUnk_additional_8_MinishHouseInteriors_Festari:: @ 080DA778
	.incbin "data_080D5360/gUnk_additional_8_MinishHouseInteriors_Festari.bin"

gUnk_additional_9_MinishHouseInteriors_Festari:: @ 080DA790
	.incbin "data_080D5360/gUnk_additional_9_MinishHouseInteriors_Festari.bin"

gUnk_additional_a_MinishHouseInteriors_Festari:: @ 080DA7A4
	.incbin "data_080D5360/gUnk_additional_a_MinishHouseInteriors_Festari.bin"

Room_MinishHouseInteriors_Festari:: @ 080DA7B8
	.4byte Entities_MinishHouseInteriors_Festari_0
	.4byte Entities_MinishHouseInteriors_Festari_1
	.4byte Enemies_MinishHouseInteriors_Festari
	.4byte TileEntities_MinishHouseInteriors_Festari
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_Festari
	.4byte sub_StateChange_MinishHouseInteriors_Festari
	.4byte gUnk_additional_8_MinishHouseInteriors_Festari
	.4byte gUnk_additional_9_MinishHouseInteriors_Festari
	.4byte gUnk_additional_a_MinishHouseInteriors_Festari

Entities_MinishHouseInteriors_Red_0:: @ 080DA7E4
	npc_raw subtype=0x3, x=0x80, y=0x58, unknown=0xf, paramB=0x21c, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_Red_1:: @ 080DA804
	object_raw subtype=0x6f, x=0x80, y=0x90, paramA=0x7
	entity_list_end

Enemies_MinishHouseInteriors_Red:: @ 080DA824
	entity_list_end

TileEntities_MinishHouseInteriors_Red:: @ 080DA834
	tile_entity_list_end

Room_MinishHouseInteriors_Red:: @ 080DA83C
	.4byte Entities_MinishHouseInteriors_Red_0
	.4byte Entities_MinishHouseInteriors_Red_1
	.4byte Enemies_MinishHouseInteriors_Red
	.4byte TileEntities_MinishHouseInteriors_Red
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_Red
	.4byte sub_StateChange_MinishHouseInteriors_Red

Entities_MinishHouseInteriors_Green_0:: @ 080DA85C
	npc_raw subtype=0x3, x=0x80, y=0x58, unknown=0xf, paramB=0x21d, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_Green_1:: @ 080DA87C
	object_raw subtype=0x6f, x=0x80, y=0x90, paramA=0x7
	entity_list_end

Enemies_MinishHouseInteriors_Green:: @ 080DA89C
	entity_list_end

TileEntities_MinishHouseInteriors_Green:: @ 080DA8AC
	tile_entity_list_end

Room_MinishHouseInteriors_Green:: @ 080DA8B4
	.4byte Entities_MinishHouseInteriors_Green_0
	.4byte Entities_MinishHouseInteriors_Green_1
	.4byte Enemies_MinishHouseInteriors_Green
	.4byte TileEntities_MinishHouseInteriors_Green
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_Green
	.4byte sub_StateChange_MinishHouseInteriors_Green

Entities_MinishHouseInteriors_Blue_0:: @ 080DA8D4
	npc_raw subtype=0x3, x=0x80, y=0x58, unknown=0xf, paramB=0x21e, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_Blue_1:: @ 080DA8F4
	object_raw subtype=0x6f, x=0x80, y=0x90, paramA=0x7
	entity_list_end

Enemies_MinishHouseInteriors_Blue:: @ 080DA914
	entity_list_end

TileEntities_MinishHouseInteriors_Blue:: @ 080DA924
	tile_entity_list_end

Room_MinishHouseInteriors_Blue:: @ 080DA92C
	.4byte Entities_MinishHouseInteriors_Blue_0
	.4byte Entities_MinishHouseInteriors_Blue_1
	.4byte Enemies_MinishHouseInteriors_Blue
	.4byte TileEntities_MinishHouseInteriors_Blue
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_Blue
	.4byte sub_StateChange_MinishHouseInteriors_Blue

Entities_MinishHouseInteriors_SideArea_0:: @ 080DA94C
	npc_raw subtype=0x3, x=0x80, y=0x58, unknown=0xf, paramB=0x218, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_SideArea_1:: @ 080DA96C
	object_raw subtype=0x6f, x=0x80, y=0x90, paramA=0x7
	entity_list_end

Enemies_MinishHouseInteriors_SideArea:: @ 080DA98C
	entity_list_end

TileEntities_MinishHouseInteriors_SideArea:: @ 080DA99C
	tile_entity_list_end

Room_MinishHouseInteriors_SideArea:: @ 080DA9A4
	.4byte Entities_MinishHouseInteriors_SideArea_0
	.4byte Entities_MinishHouseInteriors_SideArea_1
	.4byte Enemies_MinishHouseInteriors_SideArea
	.4byte TileEntities_MinishHouseInteriors_SideArea
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_SideArea
	.4byte sub_StateChange_MinishHouseInteriors_SideArea

Entities_MinishHouseInteriors_ShoeMinish_0:: @ 080DA9C4
	npc_raw subtype=0x3, x=0x78, y=0x48, unknown=0xf, paramB=0x21a, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_ShoeMinish_1:: @ 080DA9E4
	object_raw subtype=0x6f, x=0x78, y=0x90, paramA=0x8
	entity_list_end

Enemies_MinishHouseInteriors_ShoeMinish:: @ 080DAA04
	entity_list_end

TileEntities_MinishHouseInteriors_ShoeMinish:: @ 080DAA14
	tile_entity_list_end

Room_MinishHouseInteriors_ShoeMinish:: @ 080DAA1C
	.4byte Entities_MinishHouseInteriors_ShoeMinish_0
	.4byte Entities_MinishHouseInteriors_ShoeMinish_1
	.4byte Enemies_MinishHouseInteriors_ShoeMinish
	.4byte TileEntities_MinishHouseInteriors_ShoeMinish
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_ShoeMinish
	.4byte sub_StateChange_MinishHouseInteriors_ShoeMinish

Entities_MinishHouseInteriors_PotMinish_0:: @ 080DAA3C
	npc_raw subtype=0x3, x=0x78, y=0x38, unknown=0xf, paramB=0x21b, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_PotMinish_1:: @ 080DAA5C
	object_raw subtype=0x6f, x=0x78, y=0xe0, paramA=0x9
	object_raw subtype=0xa4, x=0x28, y=0x50, paramB=0x1
	object_raw subtype=0xa4, x=0xc8, y=0x50
	entity_list_end

Enemies_MinishHouseInteriors_PotMinish:: @ 080DAA9C
	entity_list_end

TileEntities_MinishHouseInteriors_PotMinish:: @ 080DAAAC
	tile_entity_list_end

Room_MinishHouseInteriors_PotMinish:: @ 080DAAB4
	.4byte Entities_MinishHouseInteriors_PotMinish_0
	.4byte Entities_MinishHouseInteriors_PotMinish_1
	.4byte Enemies_MinishHouseInteriors_PotMinish
	.4byte TileEntities_MinishHouseInteriors_PotMinish
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_PotMinish
	.4byte sub_StateChange_MinishHouseInteriors_PotMinish

Entities_MinishHouseInteriors_BarrelMinish_0:: @ 080DAAD4
	npc_raw subtype=0x3, x=0x38, y=0xf8, unknown=0xf, paramB=0x217, script=0x0
	object_raw subtype=0x4c, x=0x68, y=0x58, collision=1, paramA=0x1
	object_raw subtype=0x4c, x=0x68, y=0x68, collision=1, paramA=0x1
	object_raw subtype=0x4c, x=0x78, y=0x78, collision=1, paramA=0x1
	object_raw subtype=0x4c, x=0x88, y=0x58, collision=1, paramA=0x1
	object_raw subtype=0x4c, x=0x88, y=0x68, collision=1, paramA=0x1
	entity_list_end

gUnk_080DAB44:: @ 080DAB44
	object_raw subtype=0x6a, x=0x30, y=0x40, paramA=0x7
	entity_list_end

gUnk_080DAB64:: @ 080DAB64
	npc_raw subtype=0x3, x=0xc0, y=0x48, unknown=0xf, paramB=0x216, script=0x0
	entity_list_end

gUnk_080DAB84:: @ 080DAB84
	object_raw subtype=0x7f, x=0xa0, y=0x58, paramA=0x5, paramB=0x2
	object_raw subtype=0x7f, x=0xa0, y=0x78, paramA=0x5, paramB=0x2
	object_raw subtype=0x7f, x=0xa0, y=0x98, paramA=0x5, paramB=0x2
	entity_list_end

gUnk_080DABC4:: @ 080DABC4
	object_raw subtype=0x7f, x=0xc0, y=0x58, paramA=0x4, paramB=0x2
	object_raw subtype=0x7f, x=0xc0, y=0x78, paramA=0x4, paramB=0x2
	object_raw subtype=0x7f, x=0xc0, y=0x98, paramA=0x4, paramB=0x2
	entity_list_end

gUnk_080DAC04:: @ 080DAC04
	object_raw subtype=0x7f, x=0x48, y=0x20, paramA=0x1, paramB=0x2
	object_raw subtype=0x7f, x=0x68, y=0x20, paramA=0x1, paramB=0x2
	object_raw subtype=0x7f, x=0x88, y=0x20, paramA=0x1, paramB=0x2
	object_raw subtype=0x7f, x=0xa8, y=0x20, paramA=0x1, paramB=0x2
	entity_list_end

gUnk_080DAC54:: @ 080DAC54
	object_raw subtype=0x7f, x=0xa0, y=0x58, paramA=0x5
	object_raw subtype=0x7f, x=0xa0, y=0x78, paramA=0x5
	object_raw subtype=0x7f, x=0xa0, y=0x98, paramA=0x5
	entity_list_end

gUnk_080DAC94:: @ 080DAC94
	object_raw subtype=0x7f, x=0xc0, y=0x58, paramA=0x4
	object_raw subtype=0x7f, x=0xc0, y=0x78, paramA=0x4
	object_raw subtype=0x7f, x=0xc0, y=0x98, paramA=0x4
	entity_list_end

gUnk_080DACD4:: @ 080DACD4
	object_raw subtype=0x7f, x=0x48, y=0x20, paramA=0x1
	object_raw subtype=0x7f, x=0x68, y=0x20, paramA=0x1
	object_raw subtype=0x7f, x=0x88, y=0x20, paramA=0x1
	object_raw subtype=0x7f, x=0xa8, y=0x20, paramA=0x1
	entity_list_end

gUnk_080DAD24:: @ 080DAD24
	object_raw subtype=0x7f, x=0xa0, y=0x58, paramA=0x5, paramB=0x1
	object_raw subtype=0x7f, x=0xa0, y=0x78, paramA=0x5, paramB=0x1
	object_raw subtype=0x7f, x=0xa0, y=0x98, paramA=0x5, paramB=0x1
	entity_list_end

gUnk_080DAD64:: @ 080DAD64
	object_raw subtype=0x7f, x=0xc0, y=0x58, paramA=0x4, paramB=0x1
	object_raw subtype=0x7f, x=0xc0, y=0x78, paramA=0x4, paramB=0x1
	object_raw subtype=0x7f, x=0xc0, y=0x98, paramA=0x4, paramB=0x1
	entity_list_end

gUnk_080DADA4:: @ 080DADA4
	object_raw subtype=0x7f, x=0x48, y=0x20, paramA=0x1, paramB=0x1
	object_raw subtype=0x7f, x=0x68, y=0x20, paramA=0x1, paramB=0x1
	object_raw subtype=0x7f, x=0x88, y=0x20, paramA=0x1, paramB=0x1
	object_raw subtype=0x7f, x=0xa8, y=0x20, paramA=0x1, paramB=0x1
	entity_list_end

Entities_MinishHouseInteriors_BarrelMinish_1:: @ 080DADF4
	object_raw subtype=0x4d, x=0x58, y=0xf8, collision=1, paramA=0xb, paramB=0x1
	object_raw subtype=0x6f, x=0x78, y=0x160, paramA=0xa
	object_raw subtype=0x7f, x=0x30, y=0x58
	object_raw subtype=0x7f, x=0x30, y=0x78, paramA=0x3
	object_raw subtype=0x7f, x=0x30, y=0x98, paramA=0x2
	object_raw subtype=0x7f, x=0x50, y=0x58
	object_raw subtype=0x7f, x=0x50, y=0x78, paramA=0x3
	object_raw subtype=0x7f, x=0x50, y=0x98, paramA=0x2
	manager subtype=0x1, unknown=0x18, paramA=0x8
	entity_list_end

Enemies_MinishHouseInteriors_BarrelMinish:: @ 080DAE94
	entity_list_end

TileEntities_MinishHouseInteriors_BarrelMinish:: @ 080DAEA4
	tile_entity_list_end

gUnk_additional_8_MinishHouseInteriors_BarrelMinish:: @ 080DAEAC
	.incbin "data_080D5360/gUnk_additional_8_MinishHouseInteriors_BarrelMinish.bin"

Room_MinishHouseInteriors_BarrelMinish:: @ 080DAEB4
	.4byte Entities_MinishHouseInteriors_BarrelMinish_0
	.4byte Entities_MinishHouseInteriors_BarrelMinish_1
	.4byte Enemies_MinishHouseInteriors_BarrelMinish
	.4byte TileEntities_MinishHouseInteriors_BarrelMinish
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_BarrelMinish
	.4byte sub_StateChange_MinishHouseInteriors_BarrelMinish
	.4byte gUnk_additional_8_MinishHouseInteriors_BarrelMinish

Entities_MinishHouseInteriors_MelariMinesSouthwest_0:: @ 080DAED8
	entity_list_end

gUnk_080DAEE8:: @ 080DAEE8
	npc_raw subtype=0x2f, x=0x58, y=0x58, paramB=0x100, script=script_MelariInRoom
	entity_list_end

Entities_MinishHouseInteriors_MelariMinesSouthwest_1:: @ 080DAF08
	object_raw subtype=0x6f, x=0x78, y=0x10, paramA=0xc
	object_raw subtype=0xa4, x=0x54, y=0x80, paramA=0x1
	entity_list_end

Enemies_MinishHouseInteriors_MelariMinesSouthwest:: @ 080DAF38
	entity_list_end

TileEntities_MinishHouseInteriors_MelariMinesSouthwest:: @ 080DAF48
	tile_entity_list_end

Room_MinishHouseInteriors_MelariMinesSouthwest:: @ 080DAF50
	.4byte Entities_MinishHouseInteriors_MelariMinesSouthwest_0
	.4byte Entities_MinishHouseInteriors_MelariMinesSouthwest_1
	.4byte Enemies_MinishHouseInteriors_MelariMinesSouthwest
	.4byte TileEntities_MinishHouseInteriors_MelariMinesSouthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_MelariMinesSouthwest
	.4byte sub_StateChange_MinishHouseInteriors_MelariMinesSouthwest

Entities_MinishHouseInteriors_MelariMinesSoutheast_0:: @ 080DAF70
	entity_list_end

gUnk_080DAF80:: @ 080DAF80
	npc_raw subtype=0x2d, x=0xa8, y=0x48, paramA=0x4, paramB=0x7, script=script_MountainMinish1
	entity_list_end

Entities_MinishHouseInteriors_MelariMinesSoutheast_1:: @ 080DAFA0
	object_raw subtype=0x6f, x=0x78, y=0x10, paramA=0xd
	object_raw subtype=0xa4, x=0x48, y=0x20, paramA=0x2
	entity_list_end

Enemies_MinishHouseInteriors_MelariMinesSoutheast:: @ 080DAFD0
	entity_list_end

TileEntities_MinishHouseInteriors_MelariMinesSoutheast:: @ 080DAFE0
	tile_entity_list_end

Room_MinishHouseInteriors_MelariMinesSoutheast:: @ 080DAFE8
	.4byte Entities_MinishHouseInteriors_MelariMinesSoutheast_0
	.4byte Entities_MinishHouseInteriors_MelariMinesSoutheast_1
	.4byte Enemies_MinishHouseInteriors_MelariMinesSoutheast
	.4byte TileEntities_MinishHouseInteriors_MelariMinesSoutheast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_MelariMinesSoutheast
	.4byte sub_StateChange_MinishHouseInteriors_MelariMinesSoutheast

Entities_MinishHouseInteriors_MelariMinesEast_0:: @ 080DB008
	entity_list_end

gUnk_080DB018:: @ 080DB018
	npc_raw subtype=0x2d, x=0x130, y=0x58, paramA=0x4, paramB=0x8, script=script_MountainMinish1
	entity_list_end

Entities_MinishHouseInteriors_MelariMinesEast_1:: @ 080DB038
	object_raw subtype=0x6f, x=0x10, y=0x50, paramA=0xe
	object_raw subtype=0xa4, x=0x58, y=0x68, paramA=0x3
	object_raw subtype=0xa4, x=0xb8, y=0x68, paramA=0x3
	object_raw subtype=0xa4, x=0x130, y=0x30, paramA=0x3
	entity_list_end

Enemies_MinishHouseInteriors_MelariMinesEast:: @ 080DB088
	entity_list_end

TileEntities_MinishHouseInteriors_MelariMinesEast:: @ 080DB098
	tile_entity_list_end

Room_MinishHouseInteriors_MelariMinesEast:: @ 080DB0A0
	.4byte Entities_MinishHouseInteriors_MelariMinesEast_0
	.4byte Entities_MinishHouseInteriors_MelariMinesEast_1
	.4byte Enemies_MinishHouseInteriors_MelariMinesEast
	.4byte TileEntities_MinishHouseInteriors_MelariMinesEast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_MelariMinesEast
	.4byte sub_StateChange_MinishHouseInteriors_MelariMinesEast

Entities_MinishHouseInteriors_HyruleFieldSouthwest_0:: @ 080DB0C0
	npc_raw subtype=0x3, x=0x78, y=0x48, unknown=0xf, paramB=0x20c, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_HyruleFieldSouthwest_1:: @ 080DB0E0
	object_raw subtype=0x6f, x=0x78, y=0x90
	entity_list_end

Enemies_MinishHouseInteriors_HyruleFieldSouthwest:: @ 080DB100
	entity_list_end

TileEntities_MinishHouseInteriors_HyruleFieldSouthwest:: @ 080DB110
	tile_entity_list_end

Room_MinishHouseInteriors_HyruleFieldSouthwest:: @ 080DB118
	.4byte Entities_MinishHouseInteriors_HyruleFieldSouthwest_0
	.4byte Entities_MinishHouseInteriors_HyruleFieldSouthwest_1
	.4byte Enemies_MinishHouseInteriors_HyruleFieldSouthwest
	.4byte TileEntities_MinishHouseInteriors_HyruleFieldSouthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_HyruleFieldSouthwest
	.4byte sub_StateChange_MinishHouseInteriors_HyruleFieldSouthwest

Entities_MinishHouseInteriors_SouthHyruleField_0:: @ 080DB138
	npc_raw subtype=0x3, x=0x78, y=0x48, unknown=0xf, paramB=0x20d, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_SouthHyruleField_1:: @ 080DB158
	object_raw subtype=0x6f, x=0x78, y=0x90
	entity_list_end

Enemies_MinishHouseInteriors_SouthHyruleField:: @ 080DB178
	entity_list_end

TileEntities_MinishHouseInteriors_SouthHyruleField:: @ 080DB188
	tile_entity_list_end

Room_MinishHouseInteriors_SouthHyruleField:: @ 080DB190
	.4byte Entities_MinishHouseInteriors_SouthHyruleField_0
	.4byte Entities_MinishHouseInteriors_SouthHyruleField_1
	.4byte Enemies_MinishHouseInteriors_SouthHyruleField
	.4byte TileEntities_MinishHouseInteriors_SouthHyruleField
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_SouthHyruleField
	.4byte sub_StateChange_MinishHouseInteriors_SouthHyruleField

Entities_MinishHouseInteriors_NextToKnuckle_0:: @ 080DB1B0
	npc_raw subtype=0x3, x=0x78, y=0x48, unknown=0xf, paramB=0x20e, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_NextToKnuckle_1:: @ 080DB1D0
	object_raw subtype=0x6f, x=0x78, y=0x90
	entity_list_end

Enemies_MinishHouseInteriors_NextToKnuckle:: @ 080DB1F0
	entity_list_end

TileEntities_MinishHouseInteriors_NextToKnuckle:: @ 080DB200
	tile_entity_list_end

Room_MinishHouseInteriors_NextToKnuckle:: @ 080DB208
	.4byte Entities_MinishHouseInteriors_NextToKnuckle_0
	.4byte Entities_MinishHouseInteriors_NextToKnuckle_1
	.4byte Enemies_MinishHouseInteriors_NextToKnuckle
	.4byte TileEntities_MinishHouseInteriors_NextToKnuckle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_NextToKnuckle
	.4byte sub_StateChange_MinishHouseInteriors_NextToKnuckle

Entities_MinishHouseInteriors_Librari_0:: @ 080DB228
	entity_list_end

gUnk_080DB238:: @ 080DB238
	npc_raw subtype=0x39, x=0x78, y=0x48, script=script_LibrariLater
	entity_list_end

Entities_MinishHouseInteriors_Librari_1:: @ 080DB258
	object_raw subtype=0x6f, x=0x78, y=0x90
	entity_list_end

Enemies_MinishHouseInteriors_Librari:: @ 080DB278
	entity_list_end

TileEntities_MinishHouseInteriors_Librari:: @ 080DB288
	tile_entity_list_end

Room_MinishHouseInteriors_Librari:: @ 080DB290
	.4byte Entities_MinishHouseInteriors_Librari_0
	.4byte Entities_MinishHouseInteriors_Librari_1
	.4byte Enemies_MinishHouseInteriors_Librari
	.4byte TileEntities_MinishHouseInteriors_Librari
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_Librari
	.4byte sub_StateChange_MinishHouseInteriors_Librari

Entities_MinishHouseInteriors_HyruleFieldExit_0:: @ 080DB2B0
	npc_raw subtype=0x3, x=0x78, y=0x48, unknown=0xf, paramB=0x20f, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_HyruleFieldExit_1:: @ 080DB2D0
	object_raw subtype=0x6f, x=0x78, y=0x90
	entity_list_end

Enemies_MinishHouseInteriors_HyruleFieldExit:: @ 080DB2F0
	entity_list_end

TileEntities_MinishHouseInteriors_HyruleFieldExit:: @ 080DB300
	tile_entity_list_end

Room_MinishHouseInteriors_HyruleFieldExit:: @ 080DB308
	.4byte Entities_MinishHouseInteriors_HyruleFieldExit_0
	.4byte Entities_MinishHouseInteriors_HyruleFieldExit_1
	.4byte Enemies_MinishHouseInteriors_HyruleFieldExit
	.4byte TileEntities_MinishHouseInteriors_HyruleFieldExit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_HyruleFieldExit
	.4byte sub_StateChange_MinishHouseInteriors_HyruleFieldExit

Entities_MinishHouseInteriors_HyruleTown_0:: @ 080DB328
	npc_raw subtype=0x38, x=0x78, y=0x48, paramA=0x2, paramB=0x212, script=script_TownMinish1
	entity_list_end

Entities_MinishHouseInteriors_HyruleTown_1:: @ 080DB348
	object_raw subtype=0x6f, x=0x78, y=0x90
	entity_list_end

Enemies_MinishHouseInteriors_HyruleTown:: @ 080DB368
	entity_list_end

TileEntities_MinishHouseInteriors_HyruleTown:: @ 080DB378
	tile_entity_list_end

Room_MinishHouseInteriors_HyruleTown:: @ 080DB380
	.4byte Entities_MinishHouseInteriors_HyruleTown_0
	.4byte Entities_MinishHouseInteriors_HyruleTown_1
	.4byte Enemies_MinishHouseInteriors_HyruleTown
	.4byte TileEntities_MinishHouseInteriors_HyruleTown
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_HyruleTown
	.4byte sub_StateChange_MinishHouseInteriors_HyruleTown

Entities_MinishHouseInteriors_MinishWoodsBomb_0:: @ 080DB3A0
	npc_raw subtype=0x3, x=0x78, y=0x48, unknown=0xf, paramB=0x200, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_MinishWoodsBomb_1:: @ 080DB3C0
	object_raw subtype=0x6f, x=0x78, y=0x90
	entity_list_end

Enemies_MinishHouseInteriors_MinishWoodsBomb:: @ 080DB3E0
	entity_list_end

TileEntities_MinishHouseInteriors_MinishWoodsBomb:: @ 080DB3F0
	tile_entity_list_end

Room_MinishHouseInteriors_MinishWoodsBomb:: @ 080DB3F8
	.4byte Entities_MinishHouseInteriors_MinishWoodsBomb_0
	.4byte Entities_MinishHouseInteriors_MinishWoodsBomb_1
	.4byte Enemies_MinishHouseInteriors_MinishWoodsBomb
	.4byte TileEntities_MinishHouseInteriors_MinishWoodsBomb
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_MinishWoodsBomb
	.4byte sub_StateChange_MinishHouseInteriors_MinishWoodsBomb

Entities_MinishHouseInteriors_LakeHyliaOcarina_0:: @ 080DB418
	npc_raw subtype=0x3, x=0x78, y=0x40, unknown=0xf, paramB=0x210, script=0x0
	entity_list_end

Entities_MinishHouseInteriors_LakeHyliaOcarina_1:: @ 080DB438
	object_raw subtype=0x6f, x=0x78, y=0x90
	entity_list_end

Enemies_MinishHouseInteriors_LakeHyliaOcarina:: @ 080DB458
	entity_list_end

TileEntities_MinishHouseInteriors_LakeHyliaOcarina:: @ 080DB468
	tile_entity_list_end

Room_MinishHouseInteriors_LakeHyliaOcarina:: @ 080DB470
	.4byte Entities_MinishHouseInteriors_LakeHyliaOcarina_0
	.4byte Entities_MinishHouseInteriors_LakeHyliaOcarina_1
	.4byte Enemies_MinishHouseInteriors_LakeHyliaOcarina
	.4byte TileEntities_MinishHouseInteriors_LakeHyliaOcarina
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishHouseInteriors_LakeHyliaOcarina
	.4byte sub_StateChange_MinishHouseInteriors_LakeHyliaOcarina

Entities_TownMinishHoles_MayorsHouse_0:: @ 080DB490
	entity_list_end

gUnk_080DB4A0:: @ 080DB4A0
	npc_raw subtype=0x38, x=0x68, y=0x48, paramB=0x205, script=script_TownMinish1
	npc_raw subtype=0x38, x=0x88, y=0x48, paramA=0x3, paramB=0x206, script=script_TownMinish1
	entity_list_end

gUnk_080DB4D0:: @ 080DB4D0
	npc_raw subtype=0x38, x=0x68, y=0x48, paramB=0x205, script=script_TownMinish4
	npc_raw subtype=0x38, x=0x88, y=0x48, paramA=0x3, paramB=0x206, script=script_TownMinish5
	entity_list_end

Entities_TownMinishHoles_MayorsHouse_1:: @ 080DB500
	object_raw subtype=0x6f, x=0x78, y=0x90, paramA=0xf
	object_raw subtype=0xa4, x=0x48, y=0x20, paramB=0x1
	entity_list_end

Enemies_TownMinishHoles_MayorsHouse:: @ 080DB530
	entity_list_end

TileEntities_TownMinishHoles_MayorsHouse:: @ 080DB540
	tile_entity_list_end

Room_TownMinishHoles_MayorsHouse:: @ 080DB548
	.4byte Entities_TownMinishHoles_MayorsHouse_0
	.4byte Entities_TownMinishHoles_MayorsHouse_1
	.4byte Enemies_TownMinishHoles_MayorsHouse
	.4byte TileEntities_TownMinishHoles_MayorsHouse
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_MayorsHouse
	.4byte sub_StateChange_TownMinishHoles_MayorsHouse

Entities_TownMinishHoles_WestOracle_0:: @ 080DB568
	npc_raw subtype=0x38, x=0x78, y=0x48, paramA=0x2, paramB=0x213, script=script_TownMinish1
	entity_list_end

Entities_TownMinishHoles_WestOracle_1:: @ 080DB588
	object_raw subtype=0x6f, x=0xe8, y=0x50, paramA=0x10
	entity_list_end

Enemies_TownMinishHoles_WestOracle:: @ 080DB5A8
	entity_list_end

TileEntities_TownMinishHoles_WestOracle:: @ 080DB5B8
	tile_entity_list_end

Room_TownMinishHoles_WestOracle:: @ 080DB5C0
	.4byte Entities_TownMinishHoles_WestOracle_0
	.4byte Entities_TownMinishHoles_WestOracle_1
	.4byte Enemies_TownMinishHoles_WestOracle
	.4byte TileEntities_TownMinishHoles_WestOracle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_WestOracle
	.4byte sub_StateChange_TownMinishHoles_WestOracle

Entities_TownMinishHoles_DrLeft_0:: @ 080DB5E0
	npc_raw subtype=0x38, x=0x58, y=0x40, paramB=0x20a, script=script_TownMinish6
	entity_list_end

Entities_TownMinishHoles_DrLeft_1:: @ 080DB600
	object_raw subtype=0x6f, x=0x78, y=0x90, paramA=0x11
	object_raw subtype=0xa4, x=0x46, y=0x1e, paramB=0x1
	entity_list_end

Enemies_TownMinishHoles_DrLeft:: @ 080DB630
	entity_list_end

TileEntities_TownMinishHoles_DrLeft:: @ 080DB640
	tile_entity_list_end

Room_TownMinishHoles_DrLeft:: @ 080DB648
	.4byte Entities_TownMinishHoles_DrLeft_0
	.4byte Entities_TownMinishHoles_DrLeft_1
	.4byte Enemies_TownMinishHoles_DrLeft
	.4byte TileEntities_TownMinishHoles_DrLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_DrLeft
	.4byte sub_StateChange_TownMinishHoles_DrLeft

Entities_TownMinishHoles_Carpenter_0:: @ 080DB668
	npc_raw subtype=0x38, x=0x78, y=0x58, paramB=0x10b, script=script_TownMinish1
	entity_list_end

Entities_TownMinishHoles_Carpenter_1:: @ 080DB688
	object_raw subtype=0x6f, x=0xe0, y=0x50, paramA=0x12
	object_raw subtype=0xa4, x=0xa8, y=0x20
	entity_list_end

Enemies_TownMinishHoles_Carpenter:: @ 080DB6B8
	entity_list_end

TileEntities_TownMinishHoles_Carpenter:: @ 080DB6C8
	tile_entity_list_end

Room_TownMinishHoles_Carpenter:: @ 080DB6D0
	.4byte Entities_TownMinishHoles_Carpenter_0
	.4byte Entities_TownMinishHoles_Carpenter_1
	.4byte Enemies_TownMinishHoles_Carpenter
	.4byte TileEntities_TownMinishHoles_Carpenter
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_Carpenter
	.4byte sub_StateChange_TownMinishHoles_Carpenter

Entities_TownMinishHoles_Cafe_0:: @ 080DB6F0
	npc_raw subtype=0x38, x=0x88, y=0x68, paramA=0x5, paramB=0x20c, script=script_TownMinish1
	npc_raw subtype=0x38, x=0xa8, y=0x48, paramA=0x4, paramB=0x20d, script=script_TownMinish1
	entity_list_end

Entities_TownMinishHoles_Cafe_1:: @ 080DB720
	object_raw subtype=0x6f, x=0x10, y=0x50, paramA=0x13
	object_raw subtype=0xa4, x=0xae, y=0x20
	entity_list_end

Enemies_TownMinishHoles_Cafe:: @ 080DB750
	entity_list_end

TileEntities_TownMinishHoles_Cafe:: @ 080DB760
	tile_entity_list_end

Room_TownMinishHoles_Cafe:: @ 080DB768
	.4byte Entities_TownMinishHoles_Cafe_0
	.4byte Entities_TownMinishHoles_Cafe_1
	.4byte Enemies_TownMinishHoles_Cafe
	.4byte TileEntities_TownMinishHoles_Cafe
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_Cafe
	.4byte sub_StateChange_TownMinishHoles_Cafe

Entities_TownMinishHoles_5_0:: @ 080DB788
	entity_list_end

Entities_TownMinishHoles_5_1:: @ 080DB798
	object_raw subtype=0x6f, x=0xe8, y=0x50, paramA=0x14
	object_raw subtype=0xa4, x=0x48, y=0x20, paramB=0x1
	entity_list_end

Enemies_TownMinishHoles_5:: @ 080DB7C8
	entity_list_end

TileEntities_TownMinishHoles_5:: @ 080DB7D8
	tile_entity_list_end

Room_TownMinishHoles_5:: @ 080DB7E0
	.4byte Entities_TownMinishHoles_5_0
	.4byte Entities_TownMinishHoles_5_1
	.4byte Enemies_TownMinishHoles_5
	.4byte TileEntities_TownMinishHoles_5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_5
	.4byte sub_StateChange_TownMinishHoles_5

Entities_TownMinishHoles_LibraryBookshelf_0:: @ 080DB800
	npc_raw subtype=0x38, x=0xc0, y=0xd0, paramB=0x201, script=script_TownMinish1
	entity_list_end

gUnk_additional_a_TownMinishHoles_LibraryBookshelf:: @ 080DB820
	npc_raw subtype=0x38, x=0x80, y=0x158, paramA=0x2, paramB=0x200, script=script_TownMinish1
	entity_list_end

Entities_TownMinishHoles_LibraryBookshelf_1:: @ 080DB840
	object_raw subtype=0x65, x=0x20, y=0x78, paramA=0x2
	object_raw subtype=0x65, x=0x60, y=0xf8, paramA=0x1
	object_raw subtype=0x65, x=0xa0, y=0xf8, paramA=0x1
	object_raw subtype=0x65, x=0x120, y=0x78, paramA=0x1
	object_raw subtype=0x46, x=0x60, y=0x120
	object_raw subtype=0x46, x=0x40, y=0xa8, paramA=0x1
	object_raw subtype=0x46, x=0x20, y=0xa0, paramA=0x2
	object_raw subtype=0x46, x=0xa0, y=0x120, paramB=0x1
	object_raw subtype=0x46, x=0x120, y=0xa0, paramB=0x1
	manager subtype=0x6, paramA=0x8
	entity_list_end

gUnk_080DB8F0:: @ 080DB8F0
	object_raw subtype=0x5d, x=0xf8, y=0xc8, paramA=0x2
	entity_list_end

gUnk_080DB910:: @ 080DB910
	.incbin "data_080D5360/gUnk_080DB910.bin"

Enemies_TownMinishHoles_LibraryBookshelf:: @ 080DB980
	entity_list_end

TileEntities_TownMinishHoles_LibraryBookshelf:: @ 080DB990
	tile_entity_list_end

gUnk_additional_8_TownMinishHoles_LibraryBookshelf:: @ 080DB998
	exit_region_raw centerX=0xf2, centerY=0xc8, halfWidth=0xc, halfHeight=0x4, exitIndex=0x9, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_TownMinishHoles_LibraryBookshelf:: @ 080DB9A8
	exit_raw transition=0x1, destX=0x78, destY=0xc8, destArea=0x2d, destRoom=0x11, unknownA=0x1

Room_TownMinishHoles_LibraryBookshelf:: @ 080DB9BC
	.4byte Entities_TownMinishHoles_LibraryBookshelf_0
	.4byte Entities_TownMinishHoles_LibraryBookshelf_1
	.4byte Enemies_TownMinishHoles_LibraryBookshelf
	.4byte TileEntities_TownMinishHoles_LibraryBookshelf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_LibraryBookshelf
	.4byte sub_StateChange_TownMinishHoles_LibraryBookshelf
	.4byte gUnk_additional_8_TownMinishHoles_LibraryBookshelf
	.4byte gUnk_additional_9_TownMinishHoles_LibraryBookshelf
	.4byte gUnk_additional_a_TownMinishHoles_LibraryBookshelf

Entities_TownMinishHoles_LibrariBookHouse_0:: @ 080DB9E8
	npc_raw subtype=0x39, x=0x78, y=0x58, script=script_Librari
	entity_list_end

gUnk_080DBA08:: @ 080DBA08
	npc_raw subtype=0x38, x=0x90, y=0x80, paramA=0x2, paramB=0x200, script=script_TownMinish1
	entity_list_end

Entities_TownMinishHoles_LibrariBookHouse_1:: @ 080DBA28
	object_raw subtype=0x6f, x=0x78, y=0xd8, paramA=0xb
	object_raw subtype=0x86, x=0x78, y=0x80
	object_raw subtype=0xa4, x=0x90, y=0x40
	entity_list_end

Enemies_TownMinishHoles_LibrariBookHouse:: @ 080DBA68
	entity_list_end

TileEntities_TownMinishHoles_LibrariBookHouse:: @ 080DBA78
	tile_entity_list_end

Room_TownMinishHoles_LibrariBookHouse:: @ 080DBA80
	.4byte Entities_TownMinishHoles_LibrariBookHouse_0
	.4byte Entities_TownMinishHoles_LibrariBookHouse_1
	.4byte Enemies_TownMinishHoles_LibrariBookHouse
	.4byte TileEntities_TownMinishHoles_LibrariBookHouse
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_LibrariBookHouse
	.4byte sub_StateChange_TownMinishHoles_LibrariBookHouse

Entities_TownMinishHoles_RemShoeShop_0:: @ 080DBAA0
	object_raw subtype=0x7c, x=0x48, y=0xe8, paramA=0x1
	object_raw subtype=0x4d, x=0x118, y=0x128, collision=1, paramA=0x1f
	entity_list_end

gUnk_080DBAD0:: @ 080DBAD0
	npc_raw subtype=0x38, x=0x68, y=0x88, paramB=0x200, script=script_RemTownMinish
	npc_raw subtype=0x38, x=0x98, y=0xa8, paramB=0x200, script=script_RemTownMinish
	npc_raw subtype=0x38, x=0xd8, y=0x78, paramB=0x200, script=script_RemTownMinish
	entity_list_end

gUnk_080DBB10:: @ 080DBB10
	npc_raw subtype=0x38, x=0x92, y=0xe8, paramB=0x200, script=script_RemTownMinish
	npc_raw subtype=0x38, x=0xb8, y=0xb8, paramB=0x200, script=script_RemTownMinish
	npc_raw subtype=0x38, x=0xee, y=0xd0, paramB=0x200, script=script_RemTownMinish
	entity_list_end

gUnk_080DBB50:: @ 080DBB50
	object_raw subtype=0x7c, x=0xf8, y=0xe0, paramB=0x1
	entity_list_end

gUnk_080DBB70:: @ 080DBB70
	object_raw subtype=0x7c, x=0xa0, y=0x78
	entity_list_end

gUnk_080DBB90:: @ 080DBB90
	object_raw subtype=0x69, unknown=0x48, paramC=script_Object69Rem
	entity_list_end

Enemies_TownMinishHoles_RemShoeShop:: @ 080DBBB0
	entity_list_end

TileEntities_TownMinishHoles_RemShoeShop:: @ 080DBBC0
	tile_entity_list_end

Room_TownMinishHoles_RemShoeShop:: @ 080DBBC8
	.4byte Entities_TownMinishHoles_RemShoeShop_0
	.4byte 0x00000000
	.4byte Enemies_TownMinishHoles_RemShoeShop
	.4byte TileEntities_TownMinishHoles_RemShoeShop
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TownMinishHoles_RemShoeShop
	.4byte sub_StateChange_TownMinishHoles_RemShoeShop

Entities_MinishCaves_BeanPesto_0:: @ 080DBBE8
	entity_list_end

Enemies_MinishCaves_BeanPesto:: @ 080DBBF8
	enemy_raw subtype=0x11, x=0x48, y=0x168, paramB=0x101c0000, paramC=0x1200030
	enemy_raw subtype=0x11, x=0xa8, y=0x168, paramB=0x101c0000, paramC=0x1200030
	enemy_raw subtype=0x11, x=0xe8, y=0x138, paramB=0x101c0000, paramC=0x1200030
	entity_list_end

TileEntities_MinishCaves_BeanPesto:: @ 080DBC38
	tile_entity type=0x2, paramA=0x60, paramB=0x715c, paramC=0xc9
	tile_entity_list_end

Room_MinishCaves_BeanPesto:: @ 080DBC48
	.4byte Entities_MinishCaves_BeanPesto_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_BeanPesto
	.4byte TileEntities_MinishCaves_BeanPesto
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_BeanPesto
	.4byte sub_StateChange_MinishCaves_BeanPesto

Entities_MinishCaves_SoutheastWater1_0:: @ 080DBC68
	entity_list_end

Enemies_MinishCaves_SoutheastWater1:: @ 080DBC78
	entity_list_end

TileEntities_MinishCaves_SoutheastWater1:: @ 080DBC88
	tile_entity type=0x2, paramA=0x85, paramB=0x6f5c, paramC=0xc3
	tile_entity_list_end

Room_MinishCaves_SoutheastWater1:: @ 080DBC98
	.4byte Entities_MinishCaves_SoutheastWater1_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_SoutheastWater1
	.4byte TileEntities_MinishCaves_SoutheastWater1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_SoutheastWater1
	.4byte sub_StateChange_MinishCaves_SoutheastWater1

Entities_MinishCaves_SoutheastWater2_0:: @ 080DBCB8
	object_raw subtype=0x0, x=0x78, y=0x34, collision=1, paramA=0x63, paramB=0x400, paramC=0x840000
	entity_list_end

Enemies_MinishCaves_SoutheastWater2:: @ 080DBCD8
	enemy_raw subtype=0x40, x=0xb8, y=0xd8
	enemy_raw subtype=0x40, x=0x48, y=0xd8
	manager subtype=0x28, unknown=0x3, paramB=0x2
	enemy_raw subtype=0x32, x=0x50, y=0x70, paramA=0x1
	enemy_raw subtype=0x32, x=0xa0, y=0x70, paramA=0x1
	enemy_raw subtype=0x32, x=0x50, y=0xa0, paramA=0x1
	enemy_raw subtype=0x32, x=0xa0, y=0xa0, paramA=0x1
	entity_list_end

TileEntities_MinishCaves_SoutheastWater2:: @ 080DBD58
	tile_entity_list_end

Room_MinishCaves_SoutheastWater2:: @ 080DBD60
	.4byte Entities_MinishCaves_SoutheastWater2_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_SoutheastWater2
	.4byte TileEntities_MinishCaves_SoutheastWater2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_SoutheastWater2
	.4byte sub_StateChange_MinishCaves_SoutheastWater2

Entities_MinishCaves_Ruins_0:: @ 080DBD80
	object_raw subtype=0x0, x=0x148, y=0x34, collision=1, paramA=0x63, paramB=0x400, paramC=0x7e0000
	entity_list_end

Enemies_MinishCaves_Ruins:: @ 080DBDA0
	enemy_raw subtype=0x11, x=0x148, y=0x68, paramB=0xe180000, paramC=0x3800e8
	enemy_raw subtype=0x11, x=0x1a8, y=0x88, paramB=0xe180000, paramC=0x3800e8
	enemy_raw subtype=0x11, x=0x248, y=0x68, paramB=0xe080000, paramC=0x400200
	enemy_raw subtype=0x11, x=0x58, y=0x88, paramB=0x10080000, paramC=0x300030
	entity_list_end

TileEntities_MinishCaves_Ruins:: @ 080DBDF0
	tile_entity type=0x2, paramA=0x69, paramB=0xa3f, paramC=0xd4
	tile_entity_list_end

Room_MinishCaves_Ruins:: @ 080DBE00
	.4byte Entities_MinishCaves_Ruins_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_Ruins
	.4byte TileEntities_MinishCaves_Ruins
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_Ruins
	.4byte sub_StateChange_MinishCaves_Ruins

Entities_MinishCaves_OutsideLinksHouse_0:: @ 080DBE20
	object_raw subtype=0x0, x=0x78, y=0x34, collision=1, paramA=0x63, paramB=0x400, paramC=0x810000
	entity_list_end

Enemies_MinishCaves_OutsideLinksHouse:: @ 080DBE40
	entity_list_end

TileEntities_MinishCaves_OutsideLinksHouse:: @ 080DBE50
	tile_entity_list_end

Room_MinishCaves_OutsideLinksHouse:: @ 080DBE58
	.4byte Entities_MinishCaves_OutsideLinksHouse_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_OutsideLinksHouse
	.4byte TileEntities_MinishCaves_OutsideLinksHouse
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_OutsideLinksHouse
	.4byte sub_StateChange_MinishCaves_OutsideLinksHouse

Entities_MinishCaves_MinishWoodsNorth1_0:: @ 080DBE78
	entity_list_end

Enemies_MinishCaves_MinishWoodsNorth1:: @ 080DBE88
	enemy_raw subtype=0x10, x=0xa0, y=0x68, paramB=0x3c00
	enemy_raw subtype=0x10, x=0x38, y=0xd8, paramB=0x3c00
	enemy_raw subtype=0x10, x=0x38, y=0xb8, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x58, y=0x98
	entity_list_end

TileEntities_MinishCaves_MinishWoodsNorth1:: @ 080DBED8
	tile_entity type=0x2, paramA=0x62, paramB=0x705c, paramC=0x205
	tile_entity_list_end

Room_MinishCaves_MinishWoodsNorth1:: @ 080DBEE8
	.4byte Entities_MinishCaves_MinishWoodsNorth1_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_MinishWoodsNorth1
	.4byte TileEntities_MinishCaves_MinishWoodsNorth1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_MinishWoodsNorth1
	.4byte sub_StateChange_MinishCaves_MinishWoodsNorth1

Entities_MinishCaves_MinishWoodsNorth2_0:: @ 080DBF08
	entity_list_end

Enemies_MinishCaves_MinishWoodsNorth2:: @ 080DBF18
	enemy_raw subtype=0x10, x=0x50, y=0x58, paramB=0x3c00
	enemy_raw subtype=0x10, x=0x58, y=0x88, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x90, y=0xa8, paramB=0x1e00
	entity_list_end

TileEntities_MinishCaves_MinishWoodsNorth2:: @ 080DBF58
	tile_entity_list_end

Room_MinishCaves_MinishWoodsNorth2:: @ 080DBF60
	.4byte Entities_MinishCaves_MinishWoodsNorth2_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_MinishWoodsNorth2
	.4byte TileEntities_MinishCaves_MinishWoodsNorth2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_MinishWoodsNorth2
	.4byte sub_StateChange_MinishCaves_MinishWoodsNorth2

Entities_MinishCaves_LakeHyliaNorth_0:: @ 080DBF80
	entity_list_end

Enemies_MinishCaves_LakeHyliaNorth:: @ 080DBF90
	enemy_raw subtype=0x11, x=0x198, y=0xb8, paramB=0x16100000, paramC=0x300130
	enemy_raw subtype=0x11, x=0x158, y=0x68, paramB=0x60c0000, paramC=0x400100
	enemy_raw subtype=0x11, x=0x128, y=0x138, paramB=0x140c0000, paramC=0x1000100
	enemy_raw subtype=0x11, x=0x118, y=0x198, paramB=0x140c0000, paramC=0x1000100
	enemy_raw subtype=0x11, x=0x68, y=0x148, paramB=0x160a0000, paramC=0xb00030
	enemy_raw subtype=0x11, x=0x68, y=0x198, paramB=0xc0a0000, paramC=0x1400030
	enemy_raw subtype=0x11, x=0x68, y=0x78, paramB=0xe080000, paramC=0x400040
	enemy_raw subtype=0x10, x=0x38, y=0x178, paramB=0x3c00
	enemy_raw subtype=0x10, x=0x38, y=0x148, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x38, y=0xf8, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x38, y=0xc8, paramB=0x1e00
	manager subtype=0x23, x=0x1b8, y=0x38, paramA=0x2, paramB=0x2001
	manager subtype=0x23, x=0xf8, y=0x1a8, paramA=0x2, paramB=0x2001
	manager subtype=0x23, x=0x38, y=0x1a8, paramA=0x2, paramB=0x2001
	manager subtype=0x23, x=0x88, y=0x38, paramA=0x2, paramB=0x2001
	entity_list_end

TileEntities_MinishCaves_LakeHyliaNorth:: @ 080DC090
	tile_entity type=0x2, paramA=0x72, paramB=0x6e5c, paramC=0xd5
	tile_entity type=0x9, paramB=0x8000
	tile_entity_list_end

Room_MinishCaves_LakeHyliaNorth:: @ 080DC0A8
	.4byte Entities_MinishCaves_LakeHyliaNorth_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_LakeHyliaNorth
	.4byte TileEntities_MinishCaves_LakeHyliaNorth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_LakeHyliaNorth
	.4byte sub_StateChange_MinishCaves_LakeHyliaNorth

Entities_MinishCaves_LakeHyliaLibrari_0:: @ 080DC0C8
	entity_list_end

Entities_MinishCaves_LakeHyliaLibrari_1:: @ 080DC0D8
	object_raw subtype=0x4d, x=0x48, y=0x58, collision=1, paramA=0xb, paramB=0x1
	object_raw subtype=0x4d, x=0x378, y=0x58, collision=1, paramA=0xb, paramB=0x1
	entity_list_end

Enemies_MinishCaves_LakeHyliaLibrari:: @ 080DC108
	projectile_raw subtype=0x1e, x=0x1d0, y=0x18, unknown=0x3, paramA=0x6, paramC=0x100fea0
	projectile_raw subtype=0x1e, x=0x1e0, y=0x18, unknown=0x3, paramA=0x6, paramC=0x1000160
	enemy_raw subtype=0x11, x=0x1f8, y=0x58, paramB=0xc120000, paramC=0x2001b0
	enemy_raw subtype=0x11, x=0x278, y=0x58, paramB=0xc120000, paramC=0x200230
	entity_list_end

TileEntities_MinishCaves_LakeHyliaLibrari:: @ 080DC158
	tile_entity_list_end

Room_MinishCaves_LakeHyliaLibrari:: @ 080DC160
	.4byte Entities_MinishCaves_LakeHyliaLibrari_0
	.4byte Entities_MinishCaves_LakeHyliaLibrari_1
	.4byte Enemies_MinishCaves_LakeHyliaLibrari
	.4byte TileEntities_MinishCaves_LakeHyliaLibrari
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_LakeHyliaLibrari
	.4byte sub_StateChange_MinishCaves_LakeHyliaLibrari

Entities_MinishCaves_MinishWoodsSouthwest_0:: @ 080DC180
	object_raw subtype=0x0, x=0x248, y=0x74, collision=1, paramA=0x63, paramB=0x400, paramC=0x7a0000
	entity_list_end

Enemies_MinishCaves_MinishWoodsSouthwest:: @ 080DC1A0
	enemy_raw subtype=0x10, x=0x88, y=0x80, paramB=0x3c00
	enemy_raw subtype=0x10, x=0x58, y=0x40, paramB=0x3c00
	enemy_raw subtype=0x11, x=0x78, y=0x68, paramB=0xa0c0000, paramC=0x300020
	enemy_raw subtype=0x11, x=0x88, y=0x28, paramB=0x4120000, paramC=0x200030
	enemy_raw subtype=0x11, x=0x1e8, y=0x28, paramB=0x4040000, paramC=0x200180
	enemy_raw subtype=0x11, x=0x228, y=0x78, paramB=0xc0c0000, paramC=0x3001e0
	enemy_raw subtype=0x32, x=0x1e0, y=0xa0, paramA=0x1
	enemy_raw subtype=0x32, x=0x200, y=0xc0, paramA=0x1
	enemy_raw subtype=0x32, x=0x1e0, y=0xf0, paramA=0x1
	entity_list_end

TileEntities_MinishCaves_MinishWoodsSouthwest:: @ 080DC240
	tile_entity type=0x2, paramA=0x73, paramB=0x715c, paramC=0x253
	tile_entity type=0x2, paramA=0x74, paramB=0x725c, paramC=0x19e
	tile_entity type=0x2, paramA=0x75, paramB=0x705c, paramC=0xa3
	tile_entity_list_end

Room_MinishCaves_MinishWoodsSouthwest:: @ 080DC260
	.4byte Entities_MinishCaves_MinishWoodsSouthwest_0
	.4byte 0x00000000
	.4byte Enemies_MinishCaves_MinishWoodsSouthwest
	.4byte TileEntities_MinishCaves_MinishWoodsSouthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCaves_MinishWoodsSouthwest
	.4byte sub_StateChange_MinishCaves_MinishWoodsSouthwest

Entities_MinishVillage_Main_0:: @ 080DC280
	manager subtype=0x7, unknown=0x18, paramA=0x8
	enemy_raw subtype=0x6, x=0x118, y=0x268, collision=1
	enemy_raw subtype=0x6, x=0x268, y=0x118, collision=1
	enemy_raw subtype=0x6, x=0x178, y=0x108, collision=1, paramA=0x1
	enemy_raw subtype=0x6, x=0xd8, y=0x198, collision=1, paramA=0x1
	enemy_raw subtype=0x6, x=0x258, y=0x248, collision=1, paramA=0x1
	enemy_raw subtype=0x6, x=0x2f8, y=0x328, collision=1, paramA=0x1
	enemy_raw subtype=0x6, x=0x388, y=0x78, collision=1, paramA=0x1
	enemy_raw subtype=0x6, x=0x38, y=0x128, collision=1, paramA=0x2
	enemy_raw subtype=0x6, x=0x2d8, y=0x158, collision=1, paramA=0x2
	enemy_raw subtype=0x6, x=0x278, y=0x1b8, collision=1, paramA=0x2
	enemy_raw subtype=0x6, x=0x208, y=0x1d8, collision=1, paramA=0x2
	enemy_raw subtype=0x6, x=0x18, y=0x268, collision=1, paramA=0x2
	enemy_raw subtype=0x6, x=0x138, y=0x328, collision=1, paramA=0x2
	enemy_raw subtype=0x6, x=0x2e8, y=0xf8, collision=1, paramA=0x3
	enemy_raw subtype=0x6, x=0x288, y=0x2c8, collision=1, paramA=0x3
	entity_list_end

gUnk_080DC390:: @ 080DC390
	npc_raw subtype=0x3, x=0x1e8, y=0x2e8, unknown=0xf, collision=1, paramB=0x21a, script=0x0
	npc_raw subtype=0x3, x=0x48, y=0x258, unknown=0xf, collision=1, paramB=0x21b, script=0x0
	npc_raw subtype=0x3, x=0x128, y=0x238, unknown=0xf, collision=1, paramB=0x21c, script=0x0
	npc_raw subtype=0x3, x=0x168, y=0x1e8, unknown=0xf, collision=1, paramB=0x21d, script=0x0
	npc_raw subtype=0x3, x=0x1a8, y=0x21a, unknown=0xf, collision=1, paramB=0x21e, script=0x0
	entity_list_end

gUnk_080DC3F0:: @ 080DC3F0
	npc_raw subtype=0x3, x=0x340, y=0x1e8, unknown=0xf, collision=1, paramB=0x316, script=0x0
	npc_raw subtype=0x3, x=0x340, y=0x1f8, unknown=0xf, collision=1, paramB=0x317, script=0x0
	npc_raw subtype=0x3, x=0x378, y=0x298, unknown=0xf, collision=1, paramB=0x221, script=0x0
	entity_list_end

gUnk_080DC430:: @ 080DC430
	npc_raw subtype=0x3, x=0x378, y=0x1f8, unknown=0xf, collision=1, paramB=0x219, script=0x0
	npc_raw subtype=0x3, x=0x238, y=0xf8, unknown=0xf, collision=1, paramB=0x11f, script=0x0
	npc_raw subtype=0x3, x=0x258, y=0xf8, unknown=0xf, collision=1, paramB=0x320, script=0x0
	entity_list_end

gUnk_080DC470:: @ 080DC470
	npc_raw subtype=0x3, x=0x218, y=0x348, unknown=0xf, collision=1, paramB=0x222, script=0x0
	object_raw subtype=0x4d, x=0x1fc, y=0x338, collision=1, paramA=0x18
	object_raw subtype=0x4d, x=0x1f4, y=0x368, collision=1, paramA=0x18
	object_raw subtype=0x4d, x=0x21c, y=0x368, collision=1, paramA=0x18
	entity_list_end

gUnk_080DC4C0:: @ 080DC4C0
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69VillageIntro
	npc_raw subtype=0x3, x=0x208, y=0x2f0, unknown=0xf, collision=1, paramB=0x227, script=0x0
	npc_raw subtype=0x3, x=0x198, y=0x330, unknown=0xf, collision=1, paramB=0x128, script=0x0
	npc_raw subtype=0x3, x=0x278, y=0x330, unknown=0xf, collision=1, paramB=0x329, script=0x0
	npc_raw subtype=0x3, x=0x198, y=0x330, unknown=0xf, collision=1, paramB=0x12a, script=0x0
	npc_raw subtype=0x3, x=0x278, y=0x330, unknown=0xf, collision=1, paramB=0x32b, script=0x0
	entity_list_end

gUnk_080DC530:: @ 080DC530
	npc_raw subtype=0x3, x=0x278, y=0xd8, unknown=0xf, collision=1, paramB=0x223, script=0x0
	entity_list_end

Enemies_MinishVillage_Main:: @ 080DC550
	entity_list_end

TileEntities_MinishVillage_Main:: @ 080DC560
	tile_entity_list_end

Room_MinishVillage_Main:: @ 080DC568
	.4byte Entities_MinishVillage_Main_0
	.4byte 0x00000000
	.4byte Enemies_MinishVillage_Main
	.4byte TileEntities_MinishVillage_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishVillage_Main
	.4byte sub_StateChange_MinishVillage_Main

Entities_MinishVillage_SideHouse_0:: @ 080DC588
	object_raw subtype=0x0, x=0x70, y=0x6c, collision=1, paramA=0x63, paramB=0x400, paramC=0xc20000
	entity_list_end

Enemies_MinishVillage_SideHouse:: @ 080DC5A8
	entity_list_end

TileEntities_MinishVillage_SideHouse:: @ 080DC5B8
	tile_entity_list_end

Room_MinishVillage_SideHouse:: @ 080DC5C0
	.4byte Entities_MinishVillage_SideHouse_0
	.4byte 0x00000000
	.4byte Enemies_MinishVillage_SideHouse
	.4byte TileEntities_MinishVillage_SideHouse
	.4byte 0x00000000
	.4byte sub_unk2_MinishVillage_SideHouse
	.4byte sub_unk3_MinishVillage_SideHouse
	.4byte sub_StateChange_MinishVillage_SideHouse

Entities_CastleGardenMinishHoles_East_0:: @ 080DC5E0
	entity_list_end

Enemies_CastleGardenMinishHoles_East:: @ 080DC5F0
	entity_list_end

TileEntities_CastleGardenMinishHoles_East:: @ 080DC600
	tile_entity type=0x2, paramA=0x64, paramB=0x323f, paramC=0x147
	tile_entity_list_end

Room_CastleGardenMinishHoles_East:: @ 080DC610
	.4byte Entities_CastleGardenMinishHoles_East_0
	.4byte 0x00000000
	.4byte Enemies_CastleGardenMinishHoles_East
	.4byte TileEntities_CastleGardenMinishHoles_East
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastleGardenMinishHoles_East
	.4byte sub_StateChange_CastleGardenMinishHoles_East

Entities_CastleGardenMinishHoles_West_0:: @ 080DC630
	entity_list_end

Enemies_CastleGardenMinishHoles_West:: @ 080DC640
	entity_list_end

TileEntities_CastleGardenMinishHoles_West:: @ 080DC650
	tile_entity type=0x2, paramA=0x65, paramB=0x323f, paramC=0x147
	tile_entity_list_end

Room_CastleGardenMinishHoles_West:: @ 080DC660
	.4byte Entities_CastleGardenMinishHoles_West_0
	.4byte 0x00000000
	.4byte Enemies_CastleGardenMinishHoles_West
	.4byte TileEntities_CastleGardenMinishHoles_West
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastleGardenMinishHoles_West
	.4byte sub_StateChange_CastleGardenMinishHoles_West

Entities_37_0_0:: @ 080DC680
	entity_list_end

Enemies_37_0:: @ 080DC690
	entity_list_end

TileEntities_37_0:: @ 080DC6A0
	tile_entity type=0x2, paramA=0x66, paramB=0x643f, paramC=0x147
	tile_entity_list_end

Room_37_0:: @ 080DC6B0
	.4byte Entities_37_0_0
	.4byte 0x00000000
	.4byte Enemies_37_0
	.4byte TileEntities_37_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_37_0
	.4byte sub_StateChange_37_0

Entities_37_1_0:: @ 080DC6D0
	entity_list_end

Enemies_37_1:: @ 080DC6E0
	entity_list_end

TileEntities_37_1:: @ 080DC6F0
	tile_entity type=0x2, paramA=0x67, paramB=0x643f, paramC=0x147
	tile_entity_list_end

Room_37_1:: @ 080DC700
	.4byte Entities_37_1_0
	.4byte 0x00000000
	.4byte Enemies_37_1
	.4byte TileEntities_37_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_37_1
	.4byte sub_StateChange_37_1

Entities_MinishCracks_LonLonRanchNorth_0:: @ 080DC720
	entity_list_end

Entities_MinishCracks_LonLonRanchNorth_1:: @ 080DC730
	object_raw subtype=0x4d, x=0x78, y=0x28, collision=1, paramA=0xb
	object_raw subtype=0x4d, x=0x40, y=0x28, collision=1, paramA=0xd
	object_raw subtype=0x4d, x=0xb0, y=0x28, collision=1, paramA=0xd
	entity_list_end

Enemies_MinishCracks_LonLonRanchNorth:: @ 080DC770
	entity_list_end

TileEntities_MinishCracks_LonLonRanchNorth:: @ 080DC780
	tile_entity type=0x2, paramA=0xb2, paramB=0x6f5c, paramC=0x107, paramD=0x1
	tile_entity_list_end

Room_MinishCracks_LonLonRanchNorth:: @ 080DC790
	.4byte Entities_MinishCracks_LonLonRanchNorth_0
	.4byte Entities_MinishCracks_LonLonRanchNorth_1
	.4byte Enemies_MinishCracks_LonLonRanchNorth
	.4byte TileEntities_MinishCracks_LonLonRanchNorth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_LonLonRanchNorth
	.4byte sub_StateChange_MinishCracks_LonLonRanchNorth

Entities_MinishCracks_LakeHyliaEast_0:: @ 080DC7B0
	npc_raw subtype=0x3, x=0x48, y=0x58, unknown=0xf, paramB=0x212, script=0x0
	entity_list_end

Entities_MinishCracks_LakeHyliaEast_1:: @ 080DC7D0
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1, paramA=0xb
	object_raw subtype=0x4d, x=0x4c, y=0x28, collision=1, paramA=0xe
	object_raw subtype=0x4d, x=0x70, y=0x28, collision=1, paramA=0xf
	object_raw subtype=0x4d, x=0x38, y=0x28, collision=1, paramA=0xc
	object_raw subtype=0x4d, x=0x28, y=0x58, collision=1, paramA=0xd
	entity_list_end

Enemies_MinishCracks_LakeHyliaEast:: @ 080DC830
	entity_list_end

TileEntities_MinishCracks_LakeHyliaEast:: @ 080DC840
	tile_entity_list_end

Room_MinishCracks_LakeHyliaEast:: @ 080DC848
	.4byte Entities_MinishCracks_LakeHyliaEast_0
	.4byte Entities_MinishCracks_LakeHyliaEast_1
	.4byte Enemies_MinishCracks_LakeHyliaEast
	.4byte TileEntities_MinishCracks_LakeHyliaEast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_LakeHyliaEast
	.4byte sub_StateChange_MinishCracks_LakeHyliaEast

Entities_MinishCracks_HyruleCastleGarden_0:: @ 080DC868
	npc_raw subtype=0x3, x=0xa8, y=0x58, unknown=0xf, paramB=0x214, script=0x0
	entity_list_end

Entities_MinishCracks_HyruleCastleGarden_1:: @ 080DC888
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1, paramA=0xb
	object_raw subtype=0x4d, x=0x70, y=0x28, collision=1, paramA=0xf
	object_raw subtype=0x4d, x=0x28, y=0x58, collision=1, paramA=0xc
	object_raw subtype=0x4d, x=0xc8, y=0x38, collision=1, paramA=0xc
	entity_list_end

Enemies_MinishCracks_HyruleCastleGarden:: @ 080DC8D8
	entity_list_end

TileEntities_MinishCracks_HyruleCastleGarden:: @ 080DC8E8
	tile_entity_list_end

Room_MinishCracks_HyruleCastleGarden:: @ 080DC8F0
	.4byte Entities_MinishCracks_HyruleCastleGarden_0
	.4byte Entities_MinishCracks_HyruleCastleGarden_1
	.4byte Enemies_MinishCracks_HyruleCastleGarden
	.4byte TileEntities_MinishCracks_HyruleCastleGarden
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_HyruleCastleGarden
	.4byte sub_StateChange_MinishCracks_HyruleCastleGarden

Entities_MinishCracks_MtCrenel_0:: @ 080DC910
	npc_raw subtype=0x3, x=0x38, y=0x38, unknown=0xf, paramB=0x211, script=0x0
	entity_list_end

Entities_MinishCracks_MtCrenel_1:: @ 080DC930
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1, paramA=0xb
	object_raw subtype=0x4d, x=0x6c, y=0x28, collision=1, paramA=0xe
	object_raw subtype=0x4d, x=0x28, y=0x48, collision=1, paramA=0xd
	object_raw subtype=0x4d, x=0x78, y=0x68, collision=1, paramA=0xc
	entity_list_end

Enemies_MinishCracks_MtCrenel:: @ 080DC980
	entity_list_end

TileEntities_MinishCracks_MtCrenel:: @ 080DC990
	tile_entity type=0x2, paramA=0x11, paramB=0x6f5c, paramC=0x85, paramD=0x1
	tile_entity_list_end

Room_MinishCracks_MtCrenel:: @ 080DC9A0
	.4byte Entities_MinishCracks_MtCrenel_0
	.4byte Entities_MinishCracks_MtCrenel_1
	.4byte Enemies_MinishCracks_MtCrenel
	.4byte TileEntities_MinishCracks_MtCrenel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_MtCrenel
	.4byte sub_StateChange_MinishCracks_MtCrenel

Entities_MinishCracks_EastHyruleCastle_0:: @ 080DC9C0
	npc_raw subtype=0x3, x=0x78, y=0x48, unknown=0xf, paramB=0x213, script=0x0
	entity_list_end

Entities_MinishCracks_EastHyruleCastle_1:: @ 080DC9E0
	object_raw subtype=0x4d, x=0x58, y=0x28, collision=1, paramA=0xb
	object_raw subtype=0x4d, x=0x74, y=0x28, collision=1, paramA=0xe
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1, paramA=0xf
	object_raw subtype=0x4d, x=0xc8, y=0x68, collision=1, paramA=0xc
	entity_list_end

Enemies_MinishCracks_EastHyruleCastle:: @ 080DCA30
	entity_list_end

TileEntities_MinishCracks_EastHyruleCastle:: @ 080DCA40
	tile_entity_list_end

Room_MinishCracks_EastHyruleCastle:: @ 080DCA48
	.4byte Entities_MinishCracks_EastHyruleCastle_0
	.4byte Entities_MinishCracks_EastHyruleCastle_1
	.4byte Enemies_MinishCracks_EastHyruleCastle
	.4byte TileEntities_MinishCracks_EastHyruleCastle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_EastHyruleCastle
	.4byte sub_StateChange_MinishCracks_EastHyruleCastle

Entities_MinishCracks_5_0:: @ 080DCA68
	entity_list_end

Entities_MinishCracks_5_1:: @ 080DCA78
	object_raw subtype=0x4d, x=0x70, y=0x28, collision=1, paramA=0xf
	object_raw subtype=0x4d, x=0x28, y=0x38, collision=1, paramA=0xc
	object_raw subtype=0x4d, x=0xc8, y=0x38, collision=1, paramA=0xc
	entity_list_end

Enemies_MinishCracks_5:: @ 080DCAB8
	entity_list_end

TileEntities_MinishCracks_5:: @ 080DCAC8
	tile_entity_list_end

Room_MinishCracks_5:: @ 080DCAD0
	.4byte Entities_MinishCracks_5_0
	.4byte Entities_MinishCracks_5_1
	.4byte Enemies_MinishCracks_5
	.4byte TileEntities_MinishCracks_5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_5
	.4byte sub_StateChange_MinishCracks_5

Entities_MinishCracks_CastorWildsBow_0:: @ 080DCAF0
	object_raw subtype=0xc, x=0x78, y=0x48, paramA=0x2, paramB=0x10, paramC=0x80000000
	entity_list_end

gUnk_080DCB10:: @ 080DCB10
	manager subtype=0x1e, paramB=0xa000f0, paramC=0x80010000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x80008001
	entity_list_end

Entities_MinishCracks_CastorWildsBow_1:: @ 080DCB40
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1, paramA=0xb
	entity_list_end

gUnk_additional_8_MinishCracks_CastorWildsBow:: @ 080DCB60
	enemy_raw subtype=0x32, x=0x78, y=0x48, collision=1, paramA=0x1
	enemy_raw subtype=0x32, x=0x78, y=0x48, collision=1, paramA=0x1
	enemy_raw subtype=0x32, x=0x78, y=0x48, collision=1, paramA=0x1
	enemy_raw subtype=0x32, x=0x78, y=0x48, collision=1, paramA=0x1
	enemy_raw subtype=0x32, x=0x78, y=0x48, collision=1, paramA=0x1
	entity_list_end

TileEntities_MinishCracks_CastorWildsBow:: @ 080DCBC0
	tile_entity type=0x3, paramA=0x10, paramB=0x9, paramC=0x78, paramD=0x48
	tile_entity type=0x7, paramB=0x1700
	tile_entity_list_end

Room_MinishCracks_CastorWildsBow:: @ 080DCBD8
	.4byte Entities_MinishCracks_CastorWildsBow_0
	.4byte Entities_MinishCracks_CastorWildsBow_1
	.4byte 0x00000000
	.4byte TileEntities_MinishCracks_CastorWildsBow
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_CastorWildsBow
	.4byte sub_StateChange_MinishCracks_CastorWildsBow
	.4byte gUnk_additional_8_MinishCracks_CastorWildsBow

Entities_MinishCracks_RuinsEntrance_0:: @ 080DCBFC
	npc_raw subtype=0x3, x=0xa8, y=0x48, unknown=0xf, paramB=0x215, script=0x0
	entity_list_end

Entities_MinishCracks_RuinsEntrance_1:: @ 080DCC1C
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1, paramA=0xb
	object_raw subtype=0x4d, x=0x6c, y=0x28, collision=1, paramA=0xe
	object_raw subtype=0x4d, x=0xc8, y=0x48, collision=1, paramA=0xd
	object_raw subtype=0x4d, x=0x38, y=0x68, collision=1, paramA=0xc
	entity_list_end

Enemies_MinishCracks_RuinsEntrance:: @ 080DCC6C
	entity_list_end

TileEntities_MinishCracks_RuinsEntrance:: @ 080DCC7C
	tile_entity type=0x2, paramA=0x12, paramB=0x705c, paramC=0x85, paramD=0x1
	tile_entity_list_end

Room_MinishCracks_RuinsEntrance:: @ 080DCC8C
	.4byte Entities_MinishCracks_RuinsEntrance_0
	.4byte Entities_MinishCracks_RuinsEntrance_1
	.4byte Enemies_MinishCracks_RuinsEntrance
	.4byte TileEntities_MinishCracks_RuinsEntrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_RuinsEntrance
	.4byte sub_StateChange_MinishCracks_RuinsEntrance

Entities_MinishCracks_MinishWoodsSouth_0:: @ 080DCCAC
	entity_list_end

Entities_MinishCracks_MinishWoodsSouth_1:: @ 080DCCBC
	object_raw subtype=0x4d, x=0x78, y=0x28, collision=1, paramA=0xb
	entity_list_end

Enemies_MinishCracks_MinishWoodsSouth:: @ 080DCCDC
	entity_list_end

TileEntities_MinishCracks_MinishWoodsSouth:: @ 080DCCEC
	tile_entity type=0x2, paramA=0xa3, paramB=0x715c, paramC=0x107, paramD=0x1
	tile_entity_list_end

Room_MinishCracks_MinishWoodsSouth:: @ 080DCCFC
	.4byte Entities_MinishCracks_MinishWoodsSouth_0
	.4byte Entities_MinishCracks_MinishWoodsSouth_1
	.4byte Enemies_MinishCracks_MinishWoodsSouth
	.4byte TileEntities_MinishCracks_MinishWoodsSouth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_MinishWoodsSouth
	.4byte sub_StateChange_MinishCracks_MinishWoodsSouth

Entities_MinishCracks_CastorWildsNorth_0:: @ 080DCD1C
	entity_list_end

Entities_MinishCracks_CastorWildsNorth_1:: @ 080DCD2C
	object_raw subtype=0x4d, x=0x58, y=0x28, collision=1, paramA=0xb
	entity_list_end

Enemies_MinishCracks_CastorWildsNorth:: @ 080DCD4C
	entity_list_end

TileEntities_MinishCracks_CastorWildsNorth:: @ 080DCD5C
	tile_entity type=0x2, paramA=0x13, paramB=0x725c, paramC=0x107, paramD=0x1
	tile_entity type=0x7, paramB=0x1700
	tile_entity_list_end

Room_MinishCracks_CastorWildsNorth:: @ 080DCD74
	.4byte Entities_MinishCracks_CastorWildsNorth_0
	.4byte Entities_MinishCracks_CastorWildsNorth_1
	.4byte Enemies_MinishCracks_CastorWildsNorth
	.4byte TileEntities_MinishCracks_CastorWildsNorth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_CastorWildsNorth
	.4byte sub_StateChange_MinishCracks_CastorWildsNorth

Entities_MinishCracks_CastorWildsWest_0:: @ 080DCD94
	entity_list_end

Entities_MinishCracks_CastorWildsWest_1:: @ 080DCDA4
	object_raw subtype=0x4d, x=0x88, y=0x28, collision=1, paramA=0xb
	entity_list_end

Enemies_MinishCracks_CastorWildsWest:: @ 080DCDC4
	entity_list_end

TileEntities_MinishCracks_CastorWildsWest:: @ 080DCDD4
	tile_entity type=0x2, paramA=0x14, paramB=0x6e5c, paramC=0x107, paramD=0x1
	tile_entity type=0x7, paramB=0x1700
	tile_entity_list_end

Room_MinishCracks_CastorWildsWest:: @ 080DCDEC
	.4byte Entities_MinishCracks_CastorWildsWest_0
	.4byte Entities_MinishCracks_CastorWildsWest_1
	.4byte Enemies_MinishCracks_CastorWildsWest
	.4byte TileEntities_MinishCracks_CastorWildsWest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_CastorWildsWest
	.4byte sub_StateChange_MinishCracks_CastorWildsWest

Entities_MinishCracks_CastorWildsMiddle_0:: @ 080DCE0C
	entity_list_end

Entities_MinishCracks_CastorWildsMiddle_1:: @ 080DCE1C
	object_raw subtype=0x4d, x=0x68, y=0x28, collision=1, paramA=0xb
	entity_list_end

Enemies_MinishCracks_CastorWildsMiddle:: @ 080DCE3C
	entity_list_end

TileEntities_MinishCracks_CastorWildsMiddle:: @ 080DCE4C
	tile_entity type=0x2, paramA=0x15, paramB=0x6f5c, paramC=0x107, paramD=0x1
	tile_entity type=0x7, paramB=0x1700
	tile_entity_list_end

Room_MinishCracks_CastorWildsMiddle:: @ 080DCE64
	.4byte Entities_MinishCracks_CastorWildsMiddle_0
	.4byte Entities_MinishCracks_CastorWildsMiddle_1
	.4byte Enemies_MinishCracks_CastorWildsMiddle
	.4byte TileEntities_MinishCracks_CastorWildsMiddle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_CastorWildsMiddle
	.4byte sub_StateChange_MinishCracks_CastorWildsMiddle

Entities_MinishCracks_RuinsTektite_0:: @ 080DCE84
	entity_list_end

Entities_MinishCracks_RuinsTektite_1:: @ 080DCE94
	object_raw subtype=0x4d, x=0x78, y=0x28, collision=1, paramA=0xb
	entity_list_end

Enemies_MinishCracks_RuinsTektite:: @ 080DCEB4
	entity_list_end

TileEntities_MinishCracks_RuinsTektite:: @ 080DCEC4
	tile_entity type=0x2, paramA=0xa4, paramB=0x705c, paramC=0x107, paramD=0x1
	tile_entity type=0x7, paramB=0x1700
	tile_entity_list_end

Room_MinishCracks_RuinsTektite:: @ 080DCEDC
	.4byte Entities_MinishCracks_RuinsTektite_0
	.4byte Entities_MinishCracks_RuinsTektite_1
	.4byte Enemies_MinishCracks_RuinsTektite
	.4byte TileEntities_MinishCracks_RuinsTektite
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_RuinsTektite
	.4byte sub_StateChange_MinishCracks_RuinsTektite

Entities_MinishCracks_CastorWildsNextToBow_0:: @ 080DCEFC
	entity_list_end

Entities_MinishCracks_CastorWildsNextToBow_1:: @ 080DCF0C
	object_raw subtype=0x4d, x=0x78, y=0x28, collision=1, paramA=0xb
	entity_list_end

Enemies_MinishCracks_CastorWildsNextToBow:: @ 080DCF2C
	entity_list_end

TileEntities_MinishCracks_CastorWildsNextToBow:: @ 080DCF3C
	tile_entity type=0x2, paramA=0xa5, paramB=0x6e5c, paramC=0x107, paramD=0x1
	tile_entity type=0x7, paramB=0x1700
	tile_entity_list_end

Room_MinishCracks_CastorWildsNextToBow:: @ 080DCF54
	.4byte Entities_MinishCracks_CastorWildsNextToBow_0
	.4byte Entities_MinishCracks_CastorWildsNextToBow_1
	.4byte Enemies_MinishCracks_CastorWildsNextToBow
	.4byte TileEntities_MinishCracks_CastorWildsNextToBow
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_CastorWildsNextToBow
	.4byte sub_StateChange_MinishCracks_CastorWildsNextToBow

Entities_MinishCracks_E_0:: @ 080DCF74
	entity_list_end

Entities_MinishCracks_E_1:: @ 080DCF84
	entity_list_end

Enemies_MinishCracks_E:: @ 080DCF94
	entity_list_end

TileEntities_MinishCracks_E:: @ 080DCFA4
	tile_entity_list_end

Room_MinishCracks_E:: @ 080DCFAC
	.4byte Entities_MinishCracks_E_0
	.4byte Entities_MinishCracks_E_1
	.4byte Enemies_MinishCracks_E
	.4byte TileEntities_MinishCracks_E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_E
	.4byte sub_StateChange_MinishCracks_E

Entities_MinishCracks_F_0:: @ 080DCFCC
	entity_list_end

Entities_MinishCracks_F_1:: @ 080DCFDC
	entity_list_end

Enemies_MinishCracks_F:: @ 080DCFEC
	entity_list_end

TileEntities_MinishCracks_F:: @ 080DCFFC
	tile_entity_list_end

Room_MinishCracks_F:: @ 080DD004
	.4byte Entities_MinishCracks_F_0
	.4byte Entities_MinishCracks_F_1
	.4byte Enemies_MinishCracks_F
	.4byte TileEntities_MinishCracks_F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_F
	.4byte sub_StateChange_MinishCracks_F

Entities_MinishCracks_10_0:: @ 080DD024
	entity_list_end

Entities_MinishCracks_10_1:: @ 080DD034
	entity_list_end

Enemies_MinishCracks_10:: @ 080DD044
	entity_list_end

TileEntities_MinishCracks_10:: @ 080DD054
	tile_entity_list_end

Room_MinishCracks_10:: @ 080DD05C
	.4byte Entities_MinishCracks_10_0
	.4byte Entities_MinishCracks_10_1
	.4byte Enemies_MinishCracks_10
	.4byte TileEntities_MinishCracks_10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_10
	.4byte sub_StateChange_MinishCracks_10

Entities_MinishCracks_11_0:: @ 080DD07C
	entity_list_end

Entities_MinishCracks_11_1:: @ 080DD08C
	object_raw subtype=0x4d, x=0x98, y=0x28, collision=1, paramA=0xb
	object_raw subtype=0x4d, x=0x4c, y=0x28, collision=1, paramA=0xe
	object_raw subtype=0x4d, x=0x64, y=0x28, collision=1, paramA=0xe
	object_raw subtype=0x4d, x=0x28, y=0x48, collision=1, paramA=0xd
	object_raw subtype=0x4d, x=0x28, y=0x58, collision=1, paramA=0xd
	object_raw subtype=0x4d, x=0xc8, y=0x48, collision=1, paramA=0xd
	object_raw subtype=0x4d, x=0xc8, y=0x58, collision=1, paramA=0xd
	entity_list_end

Enemies_MinishCracks_11:: @ 080DD10C
	entity_list_end

TileEntities_MinishCracks_11:: @ 080DD11C
	tile_entity_list_end

Room_MinishCracks_11:: @ 080DD124
	.4byte Entities_MinishCracks_11_0
	.4byte Entities_MinishCracks_11_1
	.4byte Enemies_MinishCracks_11
	.4byte TileEntities_MinishCracks_11
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MinishCracks_11
	.4byte sub_StateChange_MinishCracks_11

Entities_MelarisMine_Main_0:: @ 080DD144
	npc_raw subtype=0x2d, x=0x168, y=0x48, script=script_MountainMinish2
	npc_raw subtype=0x2d, x=0x238, y=0x48, paramB=0x1, script=script_MountainMinish2
	npc_raw subtype=0x2d, x=0x268, y=0x138, paramA=0x6, paramB=0x2, script=script_MountainMinish1
	npc_raw subtype=0x2d, x=0x128, y=0x1e8, paramA=0x2, paramB=0x3, script=script_MountainMinish5
	object_raw subtype=0x0, x=0xe8, y=0xe8, collision=1, paramA=0x5c, paramB=0x771, paramC=0xb90000
	object_raw subtype=0x0, x=0x1f8, y=0x48, collision=1, paramA=0x56, paramB=0x700, paramC=0xba0000
	object_raw subtype=0x0, x=0xd8, y=0x48, collision=1, paramA=0x5c, paramB=0x772, paramC=0xbb0000
	object_raw subtype=0x0, x=0x288, y=0x78, collision=1, paramA=0x56, paramB=0x700, paramC=0xbc0000
	object_raw subtype=0x0, x=0x268, y=0x208, collision=1, paramA=0x56, paramB=0x700, paramC=0xbd0000
	object_raw subtype=0x0, x=0x198, y=0x1f8, collision=1, paramA=0x5c, paramB=0x774, paramC=0xbe0000
	object_raw subtype=0x0, x=0xa8, y=0x1e8, collision=1, paramA=0x56, paramB=0x700, paramC=0xbf0000
	object_raw subtype=0x0, x=0x148, y=0x148, collision=1, paramA=0x5c, paramB=0x76e, paramC=0xc00000
	entity_list_end

gUnk_additional_8_MelarisMine_Main:: @ 080DD214
	npc_raw subtype=0x2d, x=0x1ba, y=0x138, paramA=0x6, paramB=0x5, script=script_MountainMinish3
	npc_raw subtype=0x2d, x=0x1ba, y=0x148, paramA=0x6, paramB=0x6, script=script_MountainMinish3
	npc_raw subtype=0x2f, x=0x190, y=0x140, script=script_Melari
	object_raw subtype=0x6a, x=0x1a8, y=0x138, unknown=0x4f, paramA=0x8, paramC=script_Object6ABrokenSword
	object_raw subtype=0x6a, x=0x1a8, y=0x138, unknown=0x4f, paramA=0x9, paramC=script_Object6ARepairedSword
	entity_list_end

gUnk_additional_9_MelarisMine_Main:: @ 080DD274
	npc_raw subtype=0x2d, x=0x80, y=0x130, paramA=0x2, paramB=0x4, script=script_MountainMinish4
	entity_list_end

gUnk_080DD294:: @ 080DD294
	npc_raw subtype=0x2d, x=0xa0, y=0x130, paramA=0x4, paramB=0x4, script=script_MountainMinish1
	entity_list_end

Entities_MelarisMine_Main_1:: @ 080DD2B4
	object_raw subtype=0x50, x=0x28, y=0x18
	object_raw subtype=0x50, x=0x2a8, y=0x18, paramA=0x1
	object_raw subtype=0x50, x=0x30, y=0x228
	object_raw subtype=0x50, x=0x290, y=0x240, paramA=0x1
	entity_list_end

Enemies_MelarisMine_Main:: @ 080DD304
	entity_list_end

TileEntities_MelarisMine_Main:: @ 080DD314
	tile_entity_list_end

Room_MelarisMine_Main:: @ 080DD31C
	.4byte Entities_MelarisMine_Main_0
	.4byte Entities_MelarisMine_Main_1
	.4byte Enemies_MelarisMine_Main
	.4byte TileEntities_MelarisMine_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MelarisMine_Main
	.4byte sub_StateChange_MelarisMine_Main
	.4byte gUnk_additional_8_MelarisMine_Main
	.4byte gUnk_additional_9_MelarisMine_Main

Entities_CloudTops_House_0:: @ 080DD344
.ifdef EU_JP
	ezlo_hint x=0x38, y=0x2e, rx=0x5, ry=0x2, msg=0xb22, flag=0xd9
.else
	ezlo_hint x=0x38, y=0x2e, rx=0x5, ry=0x2, msg=0xb22, flag=0xdc
.endif
	entity_list_end

gUnk_080DD364:: @ 080DD364
	object_raw subtype=0xbb, x=0x1e8, y=0x1a8, unknown=0x4f, paramB=0x2, paramC=script_Windcrest
	entity_list_end

Entities_CloudTops_House_1:: @ 080DD384
	manager subtype=0x1d, unknown=0x8, paramA=0x1
	manager subtype=0x1a, unknown=0x8, paramA=0xe
	object_raw subtype=0x94, x=0x1b0, y=0x141
	object_raw subtype=0x94, x=0x220, y=0x141, paramA=0x1
	entity_list_end

Enemies_CloudTops_House:: @ 080DD3D4
	entity_list_end

TileEntities_CloudTops_House:: @ 080DD3E4
	tile_entity_list_end

Room_CloudTops_House:: @ 080DD3EC
	.4byte Entities_CloudTops_House_0
	.4byte Entities_CloudTops_House_1
	.4byte Enemies_CloudTops_House
	.4byte TileEntities_CloudTops_House
	.4byte sub_unk1_CloudTops_House
	.4byte 0x00000000
	.4byte sub_unk3_CloudTops_House
	.4byte sub_StateChange_CloudTops_House

Entities_CloudTops_Middle_0:: @ 080DD40C
.ifdef EU_JP
	object_raw subtype=0x0, x=0x38, y=0x28, collision=1, paramA=0x5c, paramB=0x773, paramC=0xe20000
	object_raw subtype=0x0, x=0x3c8, y=0x38, collision=1, paramA=0x5c, paramB=0x76f, paramC=0xe30000
	object_raw subtype=0x0, x=0x188, y=0x288, collision=1, paramA=0x5c, paramB=0x771, paramC=0xe40000
	object_raw subtype=0x0, x=0x3c8, y=0x2b8, collision=1, paramA=0x5c, paramB=0x774, paramC=0xe50000
	object_raw subtype=0x0, x=0x28, y=0x388, collision=1, paramA=0x5c, paramB=0x775, paramC=0xe60000
	object_raw subtype=0x0, x=0x2e8, y=0x388, collision=1, paramA=0x5c, paramB=0x76e, paramC=0xe70000
	object_raw subtype=0x0, x=0x3a8, y=0x378, collision=1, paramA=0x5c, paramB=0x772, paramC=0xe80000
	ezlo_hint x=0x2a, y=0x2e, rx=0x10, ry=0x2, msg=0xb22, flag=0xda
.else
	object_raw subtype=0x0, x=0x38, y=0x28, collision=1, paramA=0x5c, paramB=0x773, paramC=0xe50000
	object_raw subtype=0x0, x=0x3c8, y=0x38, collision=1, paramA=0x5c, paramB=0x76f, paramC=0xe60000
	object_raw subtype=0x0, x=0x188, y=0x288, collision=1, paramA=0x5c, paramB=0x771, paramC=0xe70000
	object_raw subtype=0x0, x=0x3c8, y=0x2b8, collision=1, paramA=0x5c, paramB=0x774, paramC=0xe80000
	object_raw subtype=0x0, x=0x28, y=0x388, collision=1, paramA=0x5c, paramB=0x775, paramC=0xe90000
	object_raw subtype=0x0, x=0x2e8, y=0x388, collision=1, paramA=0x5c, paramB=0x76e, paramC=0xea0000
	object_raw subtype=0x0, x=0x3a8, y=0x378, collision=1, paramA=0x5c, paramB=0x772, paramC=0xeb0000
	ezlo_hint x=0x2a, y=0x2e, rx=0x10, ry=0x2, msg=0xb22, flag=0xdd
.endif
	entity_list_end

Entities_CloudTops_Middle_1:: @ 080DD49C
	manager subtype=0x1d, unknown=0x8, paramA=0x1
	manager subtype=0x16, paramA=0x8, paramB=0x100
	manager subtype=0x1a, unknown=0x8, paramA=0xf
	manager subtype=0x1a, unknown=0x8, paramA=0x10
	manager subtype=0x1a, unknown=0x8, paramA=0x11
	manager subtype=0x1a, unknown=0x8, paramA=0x12
	manager subtype=0x1a, unknown=0x8, paramA=0x13
	manager subtype=0x1a, unknown=0x8, paramA=0x14
	manager subtype=0x1a, unknown=0x8, paramA=0x15
	manager subtype=0x1a, unknown=0x8, paramA=0x16
	manager subtype=0x1a, unknown=0x8, paramA=0x17
	manager subtype=0x1a, unknown=0x8, paramA=0x18
	manager subtype=0x1a, unknown=0x8, paramA=0x19
	manager subtype=0x1a, unknown=0x8, paramA=0x1a
	manager subtype=0x1a, unknown=0x8, paramA=0x1b
	manager subtype=0x1a, unknown=0x8, paramA=0x1c
	manager subtype=0x1a, unknown=0x8, paramA=0x1d
	manager subtype=0x1a, unknown=0x8, paramA=0x1e
	entity_list_end

gUnk_additional_8_CloudTops_Middle:: @ 080DD5CC
	delayed_entity_raw subtype=0x5e, x=0xb8, y=0xa0, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x188, y=0xe0, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x220, y=0xb0, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x2a8, y=0xe8, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x318, y=0xa0, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x208, y=0x140, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0xa8, y=0x1a0, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x288, y=0x220, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x128, y=0x268, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x348, y=0x248, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x388, y=0x2a0, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x268, y=0x330, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x118, y=0x120, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0xf8, y=0x1f8, layer=1, conditions=0xffff
	entity_list_end

Enemies_CloudTops_Middle:: @ 080DD6BC
	entity_list_end

TileEntities_CloudTops_Middle:: @ 080DD6CC
.ifdef EU_JP
	tile_entity type=0x2, paramA=0xdb, paramB=0x655c, paramC=0x73b
	tile_entity type=0x2, paramA=0xdc, paramB=0x675c, paramC=0xa94
	tile_entity type=0x2, paramA=0xdd, paramB=0x675c, paramC=0x305
	tile_entity type=0x2, paramA=0xde, paramB=0x323f, paramC=0x85
	tile_entity type=0x2, paramA=0xdf, paramB=0x323f, paramC=0x89
	tile_entity type=0x2, paramA=0xe0, paramB=0x323f, paramC=0xcc7
	tile_entity type=0x2, paramA=0xe1, paramB=0x323f, paramC=0xaa1
.else
	tile_entity type=0x2, paramA=0xde, paramB=0x655c, paramC=0x73b
	tile_entity type=0x2, paramA=0xdf, paramB=0x675c, paramC=0xa94
	tile_entity type=0x2, paramA=0xe0, paramB=0x675c, paramC=0x305
	tile_entity type=0x2, paramA=0xe1, paramB=0x323f, paramC=0x85
	tile_entity type=0x2, paramA=0xe2, paramB=0x323f, paramC=0x89
	tile_entity type=0x2, paramA=0xe3, paramB=0x323f, paramC=0xcc7
	tile_entity type=0x2, paramA=0xe4, paramB=0x323f, paramC=0xaa1
.endif
	tile_entity_list_end

Room_CloudTops_Middle:: @ 080DD70C
	.4byte Entities_CloudTops_Middle_0
	.4byte Entities_CloudTops_Middle_1
	.4byte Enemies_CloudTops_Middle
	.4byte TileEntities_CloudTops_Middle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CloudTops_Middle
	.4byte sub_StateChange_CloudTops_Middle
	.4byte gUnk_additional_8_CloudTops_Middle

gUnk_080DD730:: @ 080DD730
	object_raw subtype=0xa3, x=0x1e8, y=0x1b8
	entity_list_end

gUnk_080DD750:: @ 080DD750
	object_raw subtype=0x69, x=0x1e8, y=0x1b8, unknown=0x4f, paramC=script_Object69GreatWhirlwindRevealed
	npc_raw subtype=0x49, x=0x268, y=0x1d8, paramA=0x1, paramB=0x60b, script=script_WindTribespeopleGreatWhirlwindRevealed2
	npc_raw subtype=0x49, x=0x1a8, y=0x1f8, paramA=0x3, paramB=0x40a, script=script_WindTribespeopleGreatWhirlwindRevealed1
	entity_list_end

Entities_CloudTops_Bottom_0:: @ 080DD790
	manager subtype=0x16, paramA=0x9, paramB=0x18
.ifdef EU_JP
	manager subtype=0x17, x=0x208, y=0x38, paramA=0x5c, paramB=0x10466, paramC=0xf000f1
	manager subtype=0x17, x=0x238, y=0x2e8, paramA=0x5c, paramB=0x10466, paramC=0xf200f3
	ezlo_hint x=0x30, y=0x3a, rx=0x2, ry=0x3, msg=0xb21, flag=0xea
.else
	manager subtype=0x17, x=0x208, y=0x38, paramA=0x5c, paramB=0x10466, paramC=0xf300f4
	manager subtype=0x17, x=0x238, y=0x2e8, paramA=0x5c, paramB=0x10466, paramC=0xf500f6
	ezlo_hint x=0x30, y=0x3a, rx=0x2, ry=0x3, msg=0xb21, flag=0xed
.endif
	entity_list_end

gUnk_080DD7E0:: @ 080DD7E0
	manager subtype=0xb, unknown=0x0, paramB=0xa, paramC=0x80000000
.ifdef EU_JP
	object_raw subtype=0xa3, x=0x208, y=0x38, paramB=0xf0
	manager subtype=0xe, unknown=0x1f, paramA=0xc, paramC=0xf00000
.else
	object_raw subtype=0xa3, x=0x208, y=0x38, paramB=0xf3
	manager subtype=0xe, unknown=0x1f, paramA=0xc, paramC=0xf30000
.endif
	entity_list_end

gUnk_additional_c_CloudTops_Bottom:: @ 080DD820
	object_raw subtype=0xf, x=0x248, y=0x48, paramA=0x43, paramB=0x40
	entity_list_end

gUnk_080DD840:: @ 080DD840
.ifdef EU_JP
	manager subtype=0xb, unknown=0x0, paramB=0xb, paramC=0x80080000
	object_raw subtype=0xa3, x=0x238, y=0x2e8, paramB=0x8f2
	manager subtype=0xe, unknown=0x1f, paramA=0xd, paramC=0xf00000
	entity_list_end
.else
	manager subtype=0xb, unknown=0x0, paramB=0xb, paramC=0x80080000
	object_raw subtype=0xa3, x=0x238, y=0x2e8, paramB=0x8f5
	manager subtype=0xe, unknown=0x1f, paramA=0xd, paramC=0xf30000
	entity_list_end
.endif

gUnk_additional_d_CloudTops_Bottom:: @ 080DD880
	object_raw subtype=0xf, x=0x268, y=0x2d8, paramA=0x43, paramB=0x40
	entity_list_end

Entities_CloudTops_Bottom_1:: @ 080DD8A0
	manager subtype=0x1d, unknown=0x8, paramA=0x1
	manager subtype=0x16, paramA=0x8, paramB=0x100
	manager subtype=0x1a, unknown=0x8, paramA=0x1f
	object_raw subtype=0x82, x=0x1e8, y=0x1b8, paramB=0x2, paramC=0x40240000
	entity_list_end

gUnk_additional_8_CloudTops_Bottom:: @ 080DD8F0
.ifdef EU
	delayed_entity_raw subtype=0x5e, x=0x308, y=0x198, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x48, y=0x148, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x338, y=0x48, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x388, y=0x118, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0xe8, y=0x368, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x178, y=0x2c8, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x188, y=0x388, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x1e8, y=0x398, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x338, y=0x2e8, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x378, y=0x398, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x398, y=0x1a8, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x248, y=0x48, layer=1, paramB=0x1, paramC=script_HiddenWhirlwind1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x268, y=0x2d8, layer=1, paramB=0x1, paramC=script_HiddenWhirlwind2, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x3a8, y=0x40, layer=1, paramA=0x12, paramB=0x1, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x138, y=0x2c0, layer=1, paramA=0x12, paramB=0x2, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x48, y=0x30, layer=1, paramA=0x12, paramB=0x3, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x2f8, y=0x1d0, layer=1, paramA=0x12, paramB=0x4, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x3a8, y=0x2d0, layer=1, paramA=0x12, paramB=0x5, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x228, y=0x1a0, layer=2, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x1c8, y=0x1e0, layer=2, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x1b8, y=0x1a0, layer=2, paramB=0x2, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x218, y=0x1c0, layer=2, paramB=0x3, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x228, y=0x1e0, layer=2, paramB=0x4, conditions=0xffff
	entity_list_end
.else
	delayed_entity_raw subtype=0x5e, x=0x308, y=0x198, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x48, y=0x148, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x338, y=0x48, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x388, y=0x118, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0xe8, y=0x368, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x178, y=0x2c8, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x188, y=0x388, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x338, y=0x2e8, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x378, y=0x398, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x398, y=0x1a8, layer=1, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x248, y=0x48, layer=1, paramB=0x1, paramC=script_HiddenWhirlwind1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x268, y=0x2d8, layer=1, paramB=0x1, paramC=script_HiddenWhirlwind2, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x1e8, y=0x398, layer=1, paramB=0x1, paramC=script_HiddenWhirlwind2, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x3a8, y=0x40, layer=1, paramA=0x12, paramB=0x1, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x138, y=0x2c0, layer=1, paramA=0x12, paramB=0x2, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x48, y=0x30, layer=1, paramA=0x12, paramB=0x3, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x2f8, y=0x1d0, layer=1, paramA=0x12, paramB=0x4, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x6a, x=0x3a8, y=0x2d0, layer=1, paramA=0x12, paramB=0x5, paramC=script_Object6AMysteriousCloud, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x228, y=0x1a0, layer=2, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x1c8, y=0x1e0, layer=2, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x1b8, y=0x1a0, layer=2, paramB=0x2, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x218, y=0x1c0, layer=2, paramB=0x3, conditions=0xffff
	delayed_entity_raw subtype=0xbe, x=0x228, y=0x1e0, layer=2, paramB=0x4, conditions=0xffff
	entity_list_end
.endif

gUnk_additional_9_CloudTops_Bottom:: @ 080DDA70
	delayed_entity_raw subtype=0x4e, x=0x3a8, y=0x48, layer=1, paramA=0x1, paramC=script_Npc4EFirstCloud, conditions=0xffff
	delayed_entity_raw subtype=0x4e, x=0x138, y=0x2c8, layer=1, paramA=0x2, paramC=script_Npc4EFirstCloud, conditions=0xffff
	delayed_entity_raw subtype=0x4e, x=0x48, y=0x38, layer=1, paramA=0x3, paramC=script_Npc4EFirstCloud, conditions=0xffff
	delayed_entity_raw subtype=0x4e, x=0x2f8, y=0x1d8, layer=1, paramA=0x4, paramC=script_Npc4EFirstCloud, conditions=0xffff
	delayed_entity_raw subtype=0x4e, x=0x3a8, y=0x2d8, layer=1, paramA=0x5, paramC=script_Npc4EFirstCloud, conditions=0xffff
	delayed_entity_raw subtype=0x49, x=0x2d8, y=0x1d8, layer=1, paramA=0x1, paramB=0xb, paramC=script_WindTribespeople7, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x49, x=0x1a8, y=0x1f8, layer=1, paramA=0x3, paramB=0xa, paramC=script_WindTribespeople7, paramD=0x4, conditions=0xffff
	entity_list_end

Enemies_CloudTops_Bottom:: @ 080DDAF0
	enemy_raw subtype=0x3f, x=0x388, y=0x148, paramB=0x1e100000, paramC=0xe00350
	enemy_raw subtype=0x3f, x=0x338, y=0x3a8, paramB=0xe1c0000, paramC=0x36002f0
	enemy_raw subtype=0x3f, x=0x138, y=0x388, paramB=0xc1a0000, paramC=0x37000c0
	enemy_raw subtype=0x3f, x=0x168, y=0x378, paramB=0xc1a0000, paramC=0x37000c0
	enemy_raw subtype=0x47, x=0x160, y=0x300
	enemy_raw subtype=0x47, x=0x50, y=0xd0
	entity_list_end

TileEntities_CloudTops_Bottom:: @ 080DDB60
	tile_entity_list_end

gUnk_additional_a_CloudTops_Bottom:: @ 080DDB68
	enemy_raw subtype=0x3f, x=0x1b8, y=0x58, paramB=0x101e0000, paramC=0x200180
	enemy_raw subtype=0x3f, x=0x208, y=0x68, paramB=0x101e0000, paramC=0x200180
	entity_list_end

gUnk_additional_b_CloudTops_Bottom:: @ 080DDB98
	enemy_raw subtype=0x3f, x=0x238, y=0x308, paramB=0xa1a0000, paramC=0x3000380
	enemy_raw subtype=0x3f, x=0x258, y=0x358, paramB=0xa1a0000, paramC=0x3000380
	entity_list_end

Room_CloudTops_Bottom:: @ 080DDBC8
	.4byte Entities_CloudTops_Bottom_0
	.4byte Entities_CloudTops_Bottom_1
	.4byte Enemies_CloudTops_Bottom
	.4byte TileEntities_CloudTops_Bottom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CloudTops_Bottom
	.4byte sub_StateChange_CloudTops_Bottom
	.4byte gUnk_additional_8_CloudTops_Bottom
	.4byte gUnk_additional_9_CloudTops_Bottom
	.4byte gUnk_additional_a_CloudTops_Bottom
	.4byte gUnk_additional_b_CloudTops_Bottom
	.4byte gUnk_additional_c_CloudTops_Bottom
	.4byte gUnk_additional_d_CloudTops_Bottom

Entities_Ruins_Entrance_0:: @ 080DDC00
.ifdef EU_JP
	manager subtype=0x20, x=0xb8, y=0x1e8, paramB=0x10a82e00, paramC=0x2611e8
.else
	manager subtype=0x20, x=0xb8, y=0x1e8, paramB=0x10a82e00, paramC=0x2511e8
.endif
	entity_list_end

Entities_Ruins_Entrance_1:: @ 080DDC20
	manager subtype=0x6, paramA=0x8
	manager subtype=0x3, x=0x38, y=0x1e0, unknown=0x0, paramB=0x102
	entity_list_end

Enemies_Ruins_Entrance:: @ 080DDC50
	enemy_raw subtype=0x2a, x=0x78, y=0xe8, paramB=0x121a000a, paramC=0xb00010
	enemy_raw subtype=0x2a, x=0x88, y=0x198, paramB=0x401c010b, paramC=0x1600010
	enemy_raw subtype=0x2, x=0x28, y=0x68, paramB=0x14060000, paramC=0x200010
	enemy_raw subtype=0x2, x=0x28, y=0x118, paramB=0x12060000, paramC=0xb00010
	enemy_raw subtype=0x2, x=0xd8, y=0x188, paramB=0xe040000, paramC=0x16000c0
	enemy_raw subtype=0x26, x=0x38, y=0x1a8
	enemy_raw subtype=0x26, x=0x88, y=0x1f8
	entity_list_end

TileEntities_Ruins_Entrance:: @ 080DDCD0
.ifdef EU_JP
	tile_entity type=0x4, paramA=0x27, paramB=0x1, paramC=0xc8, paramD=0x38
.else
	tile_entity type=0x4, paramA=0x26, paramB=0x1, paramC=0xc8, paramD=0x38
.endif
	tile_entity_list_end

gUnk_additional_8_Ruins_Entrance:: @ 080DDCE0
	exit_region_raw centerX=0x48, centerY=0x188, halfWidth=0x3, halfHeight=0x3, exitIndex=0x9, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_Ruins_Entrance:: @ 080DDCF0
	exit_raw transition=0x1, destX=0x98, destY=0x28, destArea=0x27, destRoom=0x7, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_a_Ruins_Entrance:: @ 080DDD04
	.incbin "data_080D5360/gUnk_additional_a_Ruins_Entrance.bin"

gUnk_additional_b_Ruins_Entrance:: @ 080DDD18
	.incbin "data_080D5360/gUnk_additional_b_Ruins_Entrance.bin"

gUnk_additional_c_Ruins_Entrance:: @ 080DDD2C
	.incbin "data_080D5360/gUnk_additional_c_Ruins_Entrance.bin"

Room_Ruins_Entrance:: @ 080DDD40
	.4byte Entities_Ruins_Entrance_0
	.4byte Entities_Ruins_Entrance_1
	.4byte Enemies_Ruins_Entrance
	.4byte TileEntities_Ruins_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Ruins_Entrance
	.4byte sub_StateChange_Ruins_Entrance
	.4byte gUnk_additional_8_Ruins_Entrance
	.4byte gUnk_additional_9_Ruins_Entrance
	.4byte gUnk_additional_a_Ruins_Entrance
	.4byte gUnk_additional_b_Ruins_Entrance
	.4byte gUnk_additional_c_Ruins_Entrance

Entities_Ruins_Beanstalk_0:: @ 080DDD74
	entity_list_end

Entities_Ruins_Beanstalk_1:: @ 080DDD84
.ifdef EU_JP
	object_raw subtype=0x2c, x=0x48, y=0x48, paramA=0x7, paramB=0xaf00
.else
	object_raw subtype=0x2c, x=0x48, y=0x48, paramA=0x7, paramB=0xb100
.endif
	manager subtype=0x6, paramA=0x8
	entity_list_end

Enemies_Ruins_Beanstalk:: @ 080DDDB4
	enemy_raw subtype=0x2, x=0x48, y=0x68, paramB=0x60c0000, paramC=0x600020
	enemy_raw subtype=0x26, x=0x28, y=0x88
	enemy_raw subtype=0x26, x=0xb8, y=0x88
	entity_list_end

TileEntities_Ruins_Beanstalk:: @ 080DDDF4
	tile_entity_list_end

gUnk_additional_8_Ruins_Beanstalk:: @ 080DDDFC
	exit_region_raw centerX=0x48, centerY=0x4, halfWidth=0x8, halfHeight=0x4, exitIndex=0x9, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_Ruins_Beanstalk:: @ 080DDE0C
	exit_raw transition=0x1, destX=0x78, destY=0x98, destArea=0xd, destRoom=0x12, unknownA=0x1

Room_Ruins_Beanstalk:: @ 080DDE20
	.4byte Entities_Ruins_Beanstalk_0
	.4byte Entities_Ruins_Beanstalk_1
	.4byte Enemies_Ruins_Beanstalk
	.4byte TileEntities_Ruins_Beanstalk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Ruins_Beanstalk
	.4byte sub_StateChange_Ruins_Beanstalk
	.4byte gUnk_additional_8_Ruins_Beanstalk
	.4byte gUnk_additional_9_Ruins_Beanstalk

Entities_Ruins_TripleTektites_0:: @ 080DDE48
.ifdef EU_JP
	manager subtype=0xb, unknown=0x0, paramB=0xa, paramC=0x280000
	manager subtype=0x2e, unknown=0x0, paramC=0x280000
	manager subtype=0xf, x=0x58, y=0x28, paramA=0x9, paramC=0x280000
.else
	manager subtype=0xb, unknown=0x0, paramB=0xa, paramC=0x270000
	manager subtype=0x2e, unknown=0x0, paramC=0x270000
	manager subtype=0xf, x=0x58, y=0x28, paramA=0x9, paramC=0x270000
.endif
	entity_list_end

gUnk_080DDE88:: @ 080DDE88
	manager subtype=0x6, paramA=0x8
	entity_list_end

Entities_Ruins_TripleTektites_1:: @ 080DDEA8
	entity_list_end

Enemies_Ruins_TripleTektites:: @ 080DDEB8
	entity_list_end

gUnk_additional_a_Ruins_TripleTektites:: @ 080DDEC8
	enemy_raw subtype=0x26, x=0x38, y=0x38
	enemy_raw subtype=0x26, x=0x88, y=0x28
	enemy_raw subtype=0x26, x=0xa8, y=0x38
	entity_list_end

TileEntities_Ruins_TripleTektites:: @ 080DDF08
	tile_entity_list_end

gUnk_additional_8_Ruins_TripleTektites:: @ 080DDF10
	exit_region_raw centerX=0xc8, centerY=0x58, halfWidth=0x3, halfHeight=0x3, exitIndex=0x9, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_Ruins_TripleTektites:: @ 080DDF20
	exit_raw transition=0x1, destX=0x78, destY=0x38, destArea=0x27, destRoom=0xc, unknownA=0x1, unknownB=0x2, unknownC=0x4

Room_Ruins_TripleTektites:: @ 080DDF34
	.4byte Entities_Ruins_TripleTektites_0
	.4byte Entities_Ruins_TripleTektites_1
	.4byte Enemies_Ruins_TripleTektites
	.4byte TileEntities_Ruins_TripleTektites
	.4byte sub_unk1_Ruins_TripleTektites
	.4byte 0x00000000
	.4byte sub_unk3_Ruins_TripleTektites
	.4byte sub_StateChange_Ruins_TripleTektites
	.4byte gUnk_additional_8_Ruins_TripleTektites
	.4byte gUnk_additional_9_Ruins_TripleTektites
	.4byte gUnk_additional_a_Ruins_TripleTektites

Entities_Ruins_LadderToTektites_0:: @ 080DDF60
	entity_list_end

Entities_Ruins_LadderToTektites_1:: @ 080DDF70
	entity_list_end

Enemies_Ruins_LadderToTektites:: @ 080DDF80
	enemy_raw subtype=0x26, x=0x48, y=0x28, paramB=0xe1a0000, paramC=0x200010
	enemy_raw subtype=0x26, x=0xc8, y=0x28, paramB=0xe1a0000, paramC=0x200010
	enemy_raw subtype=0x26, x=0x88, y=0x78, paramB=0xe1a0000, paramC=0x200010
	entity_list_end

TileEntities_Ruins_LadderToTektites:: @ 080DDFC0
	tile_entity_list_end

Room_Ruins_LadderToTektites:: @ 080DDFC8
	.4byte Entities_Ruins_LadderToTektites_0
	.4byte Entities_Ruins_LadderToTektites_1
	.4byte Enemies_Ruins_LadderToTektites
	.4byte TileEntities_Ruins_LadderToTektites
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Ruins_LadderToTektites
	.4byte sub_StateChange_Ruins_LadderToTektites

Entities_Ruins_FortressEntrance_0:: @ 080DDFE8
.ifdef EU_JP
	manager subtype=0x20, x=0x88, y=0x58, paramB=0x10782e00, paramC=0x2b1058
.else
	manager subtype=0x20, x=0x88, y=0x58, paramB=0x10782e00, paramC=0x2a1058
.endif
	entity_list_end

gUnk_080DE008:: @ 080DE008
	object_raw subtype=0x69, unknown=0x4f, paramC=script_EzloTalkFoW
	entity_list_end

Entities_Ruins_FortressEntrance_1:: @ 080DE028
	manager subtype=0x3, x=0x48, y=0x40, unknown=0x0, paramB=0x102
	entity_list_end

Enemies_Ruins_FortressEntrance:: @ 080DE048
	enemy_raw subtype=0x2a, x=0xa8, y=0x98, paramB=0x1a100708, paramC=0x200090
	enemy_raw subtype=0x26, x=0xc8, y=0x58
	enemy_raw subtype=0x26, x=0xf8, y=0x28
	enemy_raw subtype=0x26, x=0x118, y=0xd8
	enemy_raw subtype=0x2, x=0x178, y=0xb8, paramB=0x12140000, paramC=0xa00150
	enemy_raw subtype=0x2, x=0x1d8, y=0xb8, paramB=0x12140000, paramC=0xa00150
	enemy_raw subtype=0x2c, x=0x48, y=0x98, paramB=0x20c0000, paramC=0x900010
	enemy_raw subtype=0x2c, x=0x48, y=0xc8, paramB=0x20e0000, paramC=0xc00010
	enemy_raw subtype=0x2c, x=0xa8, y=0xd8, paramB=0x4080000, paramC=0xd00080
	entity_list_end

TileEntities_Ruins_FortressEntrance:: @ 080DE0E8
.ifdef EU_JP
	tile_entity type=0xa, paramA=0x1, paramB=0x2c, paramC=0x183, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2d, paramC=0x204, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2e, paramC=0x283, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2f, paramC=0x2c8, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x30, paramC=0x344, paramD=0x1d
.else
	tile_entity type=0xa, paramA=0x1, paramB=0x2b, paramC=0x183, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2c, paramC=0x204, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2d, paramC=0x283, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2e, paramC=0x2c8, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2f, paramC=0x344, paramD=0x1d
.endif
	tile_entity_list_end

gUnk_additional_8_Ruins_FortressEntrance:: @ 080DE118
	.incbin "data_080D5360/gUnk_additional_8_Ruins_FortressEntrance.bin"

Room_Ruins_FortressEntrance:: @ 080DE12C
	.4byte Entities_Ruins_FortressEntrance_0
	.4byte Entities_Ruins_FortressEntrance_1
	.4byte Enemies_Ruins_FortressEntrance
	.4byte TileEntities_Ruins_FortressEntrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Ruins_FortressEntrance
	.4byte sub_StateChange_Ruins_FortressEntrance
	.4byte gUnk_additional_8_Ruins_FortressEntrance

Entities_Ruins_Armos_0:: @ 080DE150
.ifdef EU_JP
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x800000f9
	manager subtype=0x35, x=0x160, y=0x48, paramB=0x781400, paramC=0xf90031
	manager subtype=0xf, x=0x158, y=0x48, paramA=0x9, paramC=0x310000
	manager subtype=0xf, x=0x168, y=0x48, paramA=0x9, paramC=0x310000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x800100fa
	manager subtype=0x35, x=0x1c0, y=0x18, paramB=0x781400, paramC=0xfa0032
	manager subtype=0xf, x=0x1b8, y=0x18, paramA=0x9, paramC=0x320000
	manager subtype=0xf, x=0x1c8, y=0x18, paramA=0x9, paramC=0x320000
.else
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x80000032
	manager subtype=0x35, x=0x160, y=0x48, paramB=0x781400, paramC=0x320030
	manager subtype=0xf, x=0x158, y=0x48, paramA=0x9, paramC=0x300000
	manager subtype=0xf, x=0x168, y=0x48, paramA=0x9, paramC=0x300000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x80010033
	manager subtype=0x35, x=0x1c0, y=0x18, paramB=0x781400, paramC=0x330031
	manager subtype=0xf, x=0x1b8, y=0x18, paramA=0x9, paramC=0x310000
	manager subtype=0xf, x=0x1c8, y=0x18, paramA=0x9, paramC=0x310000
.endif
	entity_list_end

gUnk_080DE1E0:: @ 080DE1E0
	manager subtype=0xb, unknown=0x0, paramB=0xd, paramC=0x80000000
	entity_list_end

gUnk_080DE200:: @ 080DE200
	manager subtype=0xb, unknown=0x0, paramB=0xe, paramC=0x80010000
	entity_list_end

Entities_Ruins_Armos_1:: @ 080DE220
	manager subtype=0x3, x=0xa8, y=0x30, unknown=0x0, paramB=0x102
	entity_list_end

Enemies_Ruins_Armos:: @ 080DE240
	enemy_raw subtype=0x2a, x=0x48, y=0x58, paramA=0x1, paramB=0x122c0208, paramC=0x100010
	entity_list_end

gUnk_additional_d_Ruins_Armos:: @ 080DE260
	enemy_raw subtype=0x2a, x=0x88, y=0x58, paramB=0x122c0309, paramC=0x100010
	enemy_raw subtype=0x2a, x=0xc8, y=0x58, paramB=0x122c040a, paramC=0x100010
	enemy_raw subtype=0x2a, x=0x108, y=0x58, paramB=0x122c050b, paramC=0x100010
	manager subtype=0x28, unknown=0x3, paramB=0xd
	entity_list_end

gUnk_additional_e_Ruins_Armos:: @ 080DE2B0
	enemy_raw subtype=0x35, x=0x1c8, y=0x58, paramA=0x1
	enemy_raw subtype=0x35, x=0x1b8, y=0x98, paramA=0x1
	manager subtype=0x28, unknown=0x3, paramB=0xe
	enemy_raw subtype=0x2c, x=0x58, y=0xc8, paramB=0x83c0000, paramC=0xb00010
	enemy_raw subtype=0x2c, x=0x1c8, y=0x78, paramB=0x1c0c0000, paramC=0x100190
	enemy_raw subtype=0x2c, x=0x1c8, y=0xd8, paramB=0x1c0c0000, paramC=0x100190
	entity_list_end

TileEntities_Ruins_Armos:: @ 080DE320
.ifdef EU_JP
	.ifdef EU
	tile_entity type=0x2, paramA=0x33, paramB=0x58, paramC=0x55
	.else
	tile_entity type=0x2, paramA=0x33, paramB=0x57, paramC=0x55
	.endif
	tile_entity type=0x2, paramA=0x34, paramB=0x323f, paramC=0x56
.else
	tile_entity type=0x2, paramA=0x34, paramB=0x57, paramC=0x55
	tile_entity type=0x2, paramA=0x35, paramB=0x323f, paramC=0x56
.endif
	tile_entity_list_end

gUnk_additional_8_Ruins_Armos:: @ 080DE338
	.incbin "data_080D5360/gUnk_additional_8_Ruins_Armos.bin"

gUnk_additional_9_Ruins_Armos:: @ 080DE34C
	.incbin "data_080D5360/gUnk_additional_9_Ruins_Armos.bin"

gUnk_additional_a_Ruins_Armos:: @ 080DE360
	.incbin "data_080D5360/gUnk_additional_a_Ruins_Armos.bin"

gUnk_additional_b_Ruins_Armos:: @ 080DE374
	.incbin "data_080D5360/gUnk_additional_b_Ruins_Armos.bin"

gUnk_additional_c_Ruins_Armos:: @ 080DE388
	.incbin "data_080D5360/gUnk_additional_c_Ruins_Armos.bin"

Room_Ruins_Armos:: @ 080DE39C
	.4byte Entities_Ruins_Armos_0
	.4byte Entities_Ruins_Armos_1
	.4byte Enemies_Ruins_Armos
	.4byte TileEntities_Ruins_Armos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Ruins_Armos
	.4byte sub_StateChange_Ruins_Armos
	.4byte gUnk_additional_8_Ruins_Armos
	.4byte gUnk_additional_9_Ruins_Armos
	.4byte gUnk_additional_a_Ruins_Armos
	.4byte gUnk_additional_b_Ruins_Armos
	.4byte gUnk_additional_c_Ruins_Armos
	.4byte gUnk_additional_d_Ruins_Armos
	.4byte gUnk_additional_e_Ruins_Armos

Entities_DeepwoodShrine_Madderpillar_0:: @ 080DE3D8
	manager subtype=0x1e, x=0x40, y=0x40, paramB=0x70009d, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x170000
	manager subtype=0x2e, x=0x25, unknown=0x0, paramB=0x100, paramC=0x170000
	object_raw subtype=0xc, x=0x90, y=0x78, paramA=0x2, paramB=0x1b, paramC=0x170000
	object_raw subtype=0x8, x=0xe8, y=0x58, paramA=0x1, paramC=0x1effff
	projectile_raw subtype=0x15, x=0xe8, y=0x98, unknown=0xf, paramA=0x1, paramC=0x190000
	projectile_raw subtype=0x15, x=0xc8, y=0xb8, unknown=0xf, paramA=0x2, paramC=0x1a0000
	projectile_raw subtype=0x15, x=0x58, y=0x38, unknown=0xf
	projectile_raw subtype=0x15, x=0x78, y=0x38, unknown=0xf
	projectile_raw subtype=0x15, x=0xa8, y=0x38, unknown=0xf
	projectile_raw subtype=0x15, x=0x68, y=0xb8, unknown=0xf, paramA=0x2
	projectile_raw subtype=0x15, x=0x88, y=0xb8, unknown=0xf, paramA=0x2
	projectile_raw subtype=0x15, x=0x38, y=0x78, unknown=0xf, paramA=0x3
	projectile_raw subtype=0x15, x=0x38, y=0x98, unknown=0xf, paramA=0x3
	entity_list_end

gUnk_080DE4C8:: @ 080DE4C8
	manager subtype=0xf, unknown=0x0, paramA=0xd, paramC=0x170000
	entity_list_end

gUnk_additional_8_DeepwoodShrine_Madderpillar:: @ 080DE4E8
	enemy_raw subtype=0x18, x=0x98, y=0x88
	manager subtype=0x2e, x=0x2d, unknown=0x0, paramB=0x100, paramC=0x80000000
	object_raw subtype=0x8, x=0xe8, y=0x58, paramA=0x5, paramC=0x8000ffff
	ezlo_hint type=0x3, x=0x8, y=0x8, rx=0xa, ry=0x7, msg=0xb00, flag=0x17, flag2=0x8000
	entity_list_end

TileEntities_DeepwoodShrine_Madderpillar:: @ 080DE538
	tile_entity type=0x1, paramA=0x1
	tile_entity type=0x3, paramA=0x1b, paramB=0x11, paramC=0x90, paramD=0x78
	tile_entity_list_end

Room_DeepwoodShrine_Madderpillar:: @ 080DE550
	.4byte Entities_DeepwoodShrine_Madderpillar_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte TileEntities_DeepwoodShrine_Madderpillar
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Madderpillar
	.4byte sub_StateChange_DeepwoodShrine_Madderpillar
	.4byte gUnk_additional_8_DeepwoodShrine_Madderpillar

Entities_DeepwoodShrine_BluePortal_0:: @ 080DE574
	object_raw subtype=0x3, x=0x108, y=0x98, paramC=0x1c0000
	object_raw subtype=0x8, x=0xe8, y=0xc8, paramA=0x2, paramC=0x1cffff
	object_raw subtype=0x3, x=0xc8, y=0x98, paramC=0x1d0000
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x1d0054
	object_raw subtype=0x34, x=0xe8, y=0x58, paramB=0xb48, paramC=0x540209
	object_raw subtype=0x3, x=0x58, y=0x68, paramC=0x1f0000
	object_raw subtype=0xc, x=0x68, y=0x38, paramA=0x1, paramC=0x1f0000
	object_raw subtype=0x3, x=0x88, y=0x68, paramC=0x200000
	object_raw subtype=0xc, x=0x78, y=0x38, paramA=0x1, paramC=0x200000
	object_raw subtype=0x8, x=0x28, y=0x58, paramA=0xb, paramC=0x1effff
	object_raw subtype=0x5, x=0x68, y=0x68, collision=1
	object_raw subtype=0x5, x=0x88, y=0x98, collision=1
	object_raw subtype=0x5, x=0x38, y=0x38, collision=1
	object_raw subtype=0x5, x=0x38, y=0xb8, collision=1, paramA=0x5f
	object_raw subtype=0x5, x=0x58, y=0x78, collision=1, paramA=0x5f
	manager subtype=0x1e, x=0x120, y=0x78, paramB=0x100040, paramC=0x80000000
	manager subtype=0xf
	manager subtype=0xd, x=0x192, y=0x1, paramA=0x8, paramC=0x80010000
	manager subtype=0xd, x=0x195, y=0x1, paramA=0x9, paramC=0x80020000
	manager subtype=0xd, x=0x252, y=0x1, paramA=0xa, paramC=0x80030000
	manager subtype=0xd, x=0x255, y=0x1, paramA=0xb, paramC=0x80040000
	object_raw subtype=0x0, x=0xe8, y=0x34, collision=2, paramA=0x63, paramB=0x400, paramC=0x4f0000
	entity_list_end

gUnk_additional_8_DeepwoodShrine_BluePortal:: @ 080DE6E4
	enemy_raw subtype=0x12, x=0x128, y=0x68
	entity_list_end

gUnk_additional_9_DeepwoodShrine_BluePortal:: @ 080DE704
	enemy_raw subtype=0x12, x=0x158, y=0x68
	entity_list_end

gUnk_additional_a_DeepwoodShrine_BluePortal:: @ 080DE724
	enemy_raw subtype=0x12, x=0x128, y=0x98
	entity_list_end

gUnk_additional_b_DeepwoodShrine_BluePortal:: @ 080DE744
	enemy_raw subtype=0x12, x=0x158, y=0x98
	entity_list_end

Enemies_DeepwoodShrine_BluePortal:: @ 080DE764
	enemy_raw subtype=0x12, x=0x58, y=0x68
	enemy_raw subtype=0x12, x=0x98, y=0x68
	entity_list_end

TileEntities_DeepwoodShrine_BluePortal:: @ 080DE794
	tile_entity type=0x1, paramA=0x2
	tile_entity type=0x2, paramA=0x22, paramB=0xa3f, paramC=0xc6
	tile_entity type=0x2, paramA=0x23, paramB=0xa3f, paramC=0xc7
	tile_entity_list_end

Room_DeepwoodShrine_BluePortal:: @ 080DE7B4
	.4byte Entities_DeepwoodShrine_BluePortal_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_BluePortal
	.4byte TileEntities_DeepwoodShrine_BluePortal
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_BluePortal
	.4byte sub_StateChange_DeepwoodShrine_BluePortal
	.4byte gUnk_additional_8_DeepwoodShrine_BluePortal
	.4byte gUnk_additional_9_DeepwoodShrine_BluePortal
	.4byte gUnk_additional_a_DeepwoodShrine_BluePortal
	.4byte gUnk_additional_b_DeepwoodShrine_BluePortal

Entities_DeepwoodShrine_StairsToB1_0:: @ 080DE7E4
	object_raw subtype=0x5, x=0x108, y=0xb8
	object_raw subtype=0x5, x=0x118, y=0xb8, paramA=0x5f
	entity_list_end

gUnk_080DE814:: @ 080DE814
	manager subtype=0xd, x=0x285, y=0x1, paramA=0x8, paramC=0x4b0000
	entity_list_end

gUnk_additional_8_DeepwoodShrine_StairsToB1:: @ 080DE834
	object_raw subtype=0x3, x=0x58, y=0xa8, paramC=0x4c0000
	object_raw subtype=0xc, x=0x58, y=0x88, paramB=0x1e00, paramC=0x4c0000
	entity_list_end

Enemies_DeepwoodShrine_StairsToB1:: @ 080DE864
	enemy_raw subtype=0x32, x=0x78, y=0x48
	enemy_raw subtype=0x32, x=0xe8, y=0x58
	entity_list_end

TileEntities_DeepwoodShrine_StairsToB1:: @ 080DE894
	tile_entity type=0x1, paramA=0x3
	tile_entity type=0x2, paramA=0x24, paramB=0x143f, paramC=0x205
	tile_entity_list_end

Room_DeepwoodShrine_StairsToB1:: @ 080DE8AC
	.4byte Entities_DeepwoodShrine_StairsToB1_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_StairsToB1
	.4byte TileEntities_DeepwoodShrine_StairsToB1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_StairsToB1
	.4byte sub_StateChange_DeepwoodShrine_StairsToB1
	.4byte gUnk_additional_8_DeepwoodShrine_StairsToB1

Entities_DeepwoodShrine_PotBridge_0:: @ 080DE8D0
	manager subtype=0x20, x=0x48, y=0x48, paramB=0x10c80500, paramC=0x261048
	object_raw subtype=0x3, x=0xc8, y=0x48, paramA=0x1, paramC=0x80000000
	manager subtype=0x5, x=0xa, y=0x6, paramB=0x12, paramC=0x80000001
	ezlo_hint x=0xe, y=0x8, rx=0x3, ry=0x1, msg=0xb36, flag=0x25
	manager subtype=0x1e, x=0x70, y=0xb0, paramB=0x100030, paramC=0x510000
	entity_list_end

Enemies_DeepwoodShrine_PotBridge:: @ 080DE930
	enemy_raw subtype=0x10, x=0xc8, y=0x78
	enemy_raw subtype=0x10, x=0xd8, y=0x58
	enemy_raw subtype=0x11, x=0x78, y=0x78, paramB=0x1
	entity_list_end

TileEntities_DeepwoodShrine_PotBridge:: @ 080DE970
	tile_entity type=0x1, paramA=0x4
	tile_entity_list_end

Room_DeepwoodShrine_PotBridge:: @ 080DE980
	.4byte Entities_DeepwoodShrine_PotBridge_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_PotBridge
	.4byte TileEntities_DeepwoodShrine_PotBridge
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_PotBridge
	.4byte sub_StateChange_DeepwoodShrine_PotBridge

Entities_DeepwoodShrine_DoubleStatue_0:: @ 080DE9A0
	ezlo_hint x=0x6, y=0xa, rx=0xb, ry=0x1, msg=0xb33, flag=0x50
	object_raw subtype=0x3, x=0x68, y=0x68, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x3, x=0xa8, y=0x68, paramA=0x1, paramC=0x80010000
	object_raw subtype=0xc, x=0x88, y=0x58, paramA=0x1, paramC=0x84000000
	object_raw subtype=0x27, x=0x58, y=0x68
	object_raw subtype=0x27, x=0xb8, y=0x68
	manager subtype=0x1e, x=0x70, y=0x10, paramB=0x200030, paramC=0x260000
	entity_list_end

Enemies_DeepwoodShrine_DoubleStatue:: @ 080DEA20
	entity_list_end

TileEntities_DeepwoodShrine_DoubleStatue:: @ 080DEA30
	tile_entity type=0x1, paramA=0x5
	tile_entity type=0x2, paramA=0x27, paramB=0x53, paramC=0x148
	tile_entity_list_end

Room_DeepwoodShrine_DoubleStatue:: @ 080DEA48
	.4byte Entities_DeepwoodShrine_DoubleStatue_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_DoubleStatue
	.4byte TileEntities_DeepwoodShrine_DoubleStatue
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_DoubleStatue
	.4byte sub_StateChange_DeepwoodShrine_DoubleStatue

Entities_DeepwoodShrine_Map_0:: @ 080DEA68
	object_raw subtype=0xc, x=0x80, y=0x28, paramA=0x4, paramB=0x29
	object_raw subtype=0x5, x=0x28, y=0x28
	object_raw subtype=0x5, x=0x48, y=0x28
	object_raw subtype=0x5, x=0x38, y=0x28
	object_raw subtype=0x32, x=0x38, y=0xc8
	object_raw subtype=0x0, x=0xc8, y=0x44, collision=1, paramA=0x63, paramB=0x400, paramC=0x520000
	entity_list_end

Enemies_DeepwoodShrine_Map:: @ 080DEAD8
	enemy_raw subtype=0x32, x=0x68, y=0x138
	entity_list_end

TileEntities_DeepwoodShrine_Map:: @ 080DEAF8
	tile_entity type=0x1, paramA=0x6
	tile_entity type=0x3, paramA=0x29, paramB=0x50, paramC=0x80, paramD=0x28
	tile_entity_list_end

Room_DeepwoodShrine_Map:: @ 080DEB10
	.4byte Entities_DeepwoodShrine_Map_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Map
	.4byte TileEntities_DeepwoodShrine_Map
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Map
	.4byte sub_StateChange_DeepwoodShrine_Map

Entities_DeepwoodShrine_Barrel_0:: @ 080DEB30
	object_raw subtype=0x8, x=0x1b8, y=0x48, paramA=0x9, paramC=0x2affff
	object_raw subtype=0x8, x=0xe8, y=0x28, paramC=0x1c
	object_raw subtype=0x25, x=0xe8, y=0xc8
	ezlo_hint x=0x4, y=0x18, rx=0x19, ry=0x2, msg=0xb34, flag=0x2c
	object_raw subtype=0x3, x=0x28, y=0xb8, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x3, x=0x28, y=0xd8, paramA=0x1, paramC=0x80010000
	manager subtype=0x11, paramC=0x84000015
	object_raw subtype=0x3, x=0x1a8, y=0xb8, paramC=0x160000
	object_raw subtype=0x27, x=0x38, y=0xb8
	manager subtype=0xd, x=0x144, y=0x1, paramA=0x8, paramC=0x80020000
	entity_list_end

gUnk_additional_8_DeepwoodShrine_Barrel:: @ 080DEBE0
	object_raw subtype=0x3, x=0x48, y=0x58, paramC=0x80030000
	object_raw subtype=0xc, x=0x48, y=0x38, paramB=0x1e00, paramC=0x80030000
	entity_list_end

Enemies_DeepwoodShrine_Barrel:: @ 080DEC10
	enemy_raw subtype=0x12, x=0x58, y=0x58
	enemy_raw subtype=0x12, x=0x88, y=0x48
	enemy_raw subtype=0x12, x=0x178, y=0x138
	entity_list_end

TileEntities_DeepwoodShrine_Barrel:: @ 080DEC50
	tile_entity type=0x1, paramA=0x7
	tile_entity type=0x2, paramA=0x2b, paramB=0xa3f, paramC=0xc4
	tile_entity_list_end

Room_DeepwoodShrine_Barrel:: @ 080DEC68
	.4byte Entities_DeepwoodShrine_Barrel_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Barrel
	.4byte TileEntities_DeepwoodShrine_Barrel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Barrel
	.4byte sub_StateChange_DeepwoodShrine_Barrel
	.4byte gUnk_additional_8_DeepwoodShrine_Barrel

Entities_DeepwoodShrine_Button_0:: @ 080DEC8C
	object_raw subtype=0x3, x=0x38, y=0xc8, paramC=0x2d0000
	manager subtype=0x5, x=0x4, y=0x8, paramB=0x8a, paramC=0x2d0001
	object_raw subtype=0x8, x=0xe8, y=0x48, paramA=0x1, paramC=0x2f
	object_raw subtype=0x5, x=0x38, y=0x158
	object_raw subtype=0x5, x=0x48, y=0x158
	object_raw subtype=0x5, x=0x58, y=0x158
	object_raw subtype=0x5, x=0xb8, y=0x158
	object_raw subtype=0x5, x=0xc8, y=0x158
	object_raw subtype=0x5, x=0xd8, y=0x158
	object_raw subtype=0x32, x=0xc8, y=0x88
	object_raw subtype=0x32, x=0x48, y=0xd8
	entity_list_end

Enemies_DeepwoodShrine_Button:: @ 080DED4C
	entity_list_end

TileEntities_DeepwoodShrine_Button:: @ 080DED5C
	tile_entity type=0x1, paramA=0x8
	tile_entity_list_end

Room_DeepwoodShrine_Button:: @ 080DED6C
	.4byte Entities_DeepwoodShrine_Button_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Button
	.4byte TileEntities_DeepwoodShrine_Button
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Button
	.4byte sub_StateChange_DeepwoodShrine_Button

Entities_DeepwoodShrine_Mulldozer_0:: @ 080DED8C
	manager subtype=0x1e, x=0x30, y=0x60, paramB=0x2000b0, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x2f8000
	object_raw subtype=0x8, x=0x88, y=0x98, paramA=0x12, paramC=0xffff
	object_raw subtype=0x8, x=0x28, y=0x48, paramA=0x83, paramC=0x53ffff
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x2f0053
	manager subtype=0x17, x=0x88, y=0x58, paramA=0x53, paramB=0x10200, paramC=0x530030
	entity_list_end

gUnk_additional_8_DeepwoodShrine_Mulldozer:: @ 080DEDFC
	enemy_raw subtype=0x32, x=0x58, y=0x78, unknown=0x2f
	enemy_raw subtype=0x32, x=0xb8, y=0x78, unknown=0x2f
	enemy_raw subtype=0x32, x=0x88, y=0x38, unknown=0x2f
	entity_list_end

Enemies_DeepwoodShrine_Mulldozer:: @ 080DEE3C
	entity_list_end

TileEntities_DeepwoodShrine_Mulldozer:: @ 080DEE4C
	tile_entity type=0x1, paramA=0x9
	tile_entity_list_end

Room_DeepwoodShrine_Mulldozer:: @ 080DEE5C
	.4byte Entities_DeepwoodShrine_Mulldozer_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Mulldozer
	.4byte TileEntities_DeepwoodShrine_Mulldozer
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Mulldozer
	.4byte sub_StateChange_DeepwoodShrine_Mulldozer
	.4byte gUnk_additional_8_DeepwoodShrine_Mulldozer

Entities_DeepwoodShrine_Pillars_0:: @ 080DEE80
	object_raw subtype=0x3, x=0x98, y=0x48, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x8, x=0x88, y=0x18, paramA=0x80, paramC=0x8000002f
	manager subtype=0x2e, unknown=0x0, paramA=0x1, paramB=0xa00, paramC=0x80000000
	object_raw subtype=0x27, x=0x48, y=0x48
	object_raw subtype=0x27, x=0x78, y=0x48
	entity_list_end

Enemies_DeepwoodShrine_Pillars:: @ 080DEEE0
	enemy_raw subtype=0x10, x=0x38, y=0x58, paramA=0x1
	enemy_raw subtype=0x10, x=0xd8, y=0x78, paramA=0x1
	enemy_raw subtype=0x10, x=0x78, y=0xa3
	enemy_raw subtype=0x10, x=0xa8, y=0xa3
	enemy_raw subtype=0x10, x=0xb8, y=0xa3
	enemy_raw subtype=0x10, x=0x48, y=0xa3
	entity_list_end

TileEntities_DeepwoodShrine_Pillars:: @ 080DEF50
	tile_entity type=0x1, paramA=0xa
	tile_entity_list_end

Room_DeepwoodShrine_Pillars:: @ 080DEF60
	.4byte Entities_DeepwoodShrine_Pillars_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Pillars
	.4byte TileEntities_DeepwoodShrine_Pillars
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Pillars
	.4byte sub_StateChange_DeepwoodShrine_Pillars

Entities_DeepwoodShrine_Lever_0:: @ 080DEF80
	object_raw subtype=0x54, x=0x108, y=0x24, paramB=0x200000, paramC=0x80000000
	manager subtype=0x11, paramC=0x80000032
	manager subtype=0x5, x=0xf, y=0x8, paramB=0x8b, paramC=0x320001
	ezlo_hint x=0x1e, y=0x6, rx=0x3, ry=0x2, msg=0xb32, flag=0x33
	object_raw subtype=0x32, x=0x88, y=0x88
	object_raw subtype=0x5, x=0x118, y=0xd8, collision=1
	object_raw subtype=0x5, x=0x38, y=0xc8, collision=1
	object_raw subtype=0x5, x=0x38, y=0xd8, collision=1
	object_raw subtype=0x5, x=0x48, y=0xd8, collision=1
	object_raw subtype=0x5, x=0x38, y=0x38, collision=1
	object_raw subtype=0x5, x=0x38, y=0x38, collision=1
	entity_list_end

Enemies_DeepwoodShrine_Lever:: @ 080DF040
	enemy_raw subtype=0x10, x=0x38, y=0x68, paramB=0x3c00
	enemy_raw subtype=0x10, x=0xe8, y=0xc8, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x100, y=0xb8
	entity_list_end

TileEntities_DeepwoodShrine_Lever:: @ 080DF080
	tile_entity type=0x1, paramA=0xb
	tile_entity_list_end

Room_DeepwoodShrine_Lever:: @ 080DF090
	.4byte Entities_DeepwoodShrine_Lever_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Lever
	.4byte TileEntities_DeepwoodShrine_Lever
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Lever
	.4byte sub_StateChange_DeepwoodShrine_Lever

Entities_DeepwoodShrine_Entrance_0:: @ 080DF0B0
	ezlo_hint x=0x6, y=0x16, rx=0xf, ry=0x3, msg=0xb12, flag=0x37
	projectile_raw subtype=0x15, x=0x48, y=0x68, unknown=0xf, paramC=0x340000
	projectile_raw subtype=0x15, x=0x108, y=0x68, unknown=0xf, paramC=0x350000
	object_raw subtype=0x34, x=0x98, y=0x88, paramB=0x148, paramC=0x36014e
	object_raw subtype=0x34, x=0xb8, y=0x88, paramA=0x1, paramB=0x1148, paramC=0x3602d4
	object_raw subtype=0x27, x=0x98, y=0x38
	object_raw subtype=0x27, x=0xa8, y=0x48
	object_raw subtype=0x27, x=0xb8, y=0x38
	object_raw subtype=0x5, x=0x38, y=0x98, collision=1, paramA=0x5f
	object_raw subtype=0x5, x=0x38, y=0xa8, collision=1, paramA=0x5f
	object_raw subtype=0x5, x=0x118, y=0x98, collision=1, paramA=0x5f
	object_raw subtype=0x5, x=0x118, y=0xa8, collision=1, paramA=0x5f
	entity_list_end

gUnk_additional_8_DeepwoodShrine_Entrance:: @ 080DF180
	.incbin "data_080D5360/gUnk_additional_8_DeepwoodShrine_Entrance.bin"

Enemies_DeepwoodShrine_Entrance:: @ 080DF190
	entity_list_end

TileEntities_DeepwoodShrine_Entrance:: @ 080DF1A0
	tile_entity type=0x1, paramA=0xc
	tile_entity_list_end

Room_DeepwoodShrine_Entrance:: @ 080DF1B0
	.4byte Entities_DeepwoodShrine_Entrance_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Entrance
	.4byte TileEntities_DeepwoodShrine_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Entrance
	.4byte sub_StateChange_DeepwoodShrine_Entrance
	.4byte gUnk_additional_8_DeepwoodShrine_Entrance

Entities_DeepwoodShrine_Torch_0:: @ 080DF1D4
	object_raw subtype=0x8, x=0xa8, y=0x28, paramA=0x8, paramC=0x3c0000
	ezlo_hint x=0x12, y=0x6, rx=0x3, ry=0x1, msg=0xb6b, flag=0x55
	object_raw subtype=0x3, x=0x68, y=0x68, paramC=0x380000
	object_raw subtype=0x3, x=0x68, y=0xa8, paramC=0x390000
	object_raw subtype=0x3, x=0xe8, y=0x68, paramC=0x3a0000
	object_raw subtype=0x3, x=0xe8, y=0xa8, paramC=0x3b0000
	manager subtype=0x23, x=0x78, y=0x68, paramB=0x2001, paramC=0x380000
	manager subtype=0x23, x=0x78, y=0xa8, paramB=0x2001, paramC=0x390000
	manager subtype=0x23, x=0xd8, y=0x68, paramB=0x2001, paramC=0x3a0000
	manager subtype=0x23, x=0xd8, y=0xa8, paramB=0x2001, paramC=0x3b0000
	manager subtype=0x35, x=0xa8, y=0x88, paramB=0x3c3c00, paramC=0xc38004d
	object_raw subtype=0xc, x=0xa8, y=0x88, paramA=0x1, paramC=0x4d0000
	entity_list_end

Enemies_DeepwoodShrine_Torch:: @ 080DF2A4
	enemy_raw subtype=0x10, x=0x58, y=0x48, paramA=0x1, paramB=0x12160000, paramC=0x400050
	enemy_raw subtype=0x10, x=0x88, y=0x58, paramA=0x1, paramB=0x12160000, paramC=0x400050
	enemy_raw subtype=0x10, x=0xd8, y=0x88, paramA=0x1, paramB=0x12160000, paramC=0x400050
	enemy_raw subtype=0x10, x=0xb8, y=0xb8, paramA=0x1, paramB=0x12160000, paramC=0x400050
	enemy_raw subtype=0x10, x=0x68, y=0xc8, paramA=0x1, paramB=0x12160000, paramC=0x400050
	entity_list_end

TileEntities_DeepwoodShrine_Torch:: @ 080DF304
	tile_entity type=0x1, paramA=0xd
	tile_entity type=0x2, paramA=0x3d, paramB=0x53, paramC=0x20a
	tile_entity type=0x9, paramB=0x8000
	tile_entity_list_end

Room_DeepwoodShrine_Torch:: @ 080DF324
	.4byte Entities_DeepwoodShrine_Torch_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Torch
	.4byte TileEntities_DeepwoodShrine_Torch
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Torch
	.4byte sub_StateChange_DeepwoodShrine_Torch

Entities_DeepwoodShrine_BossKey_0:: @ 080DF344
	object_raw subtype=0x32, x=0x48, y=0x78
	object_raw subtype=0x32, x=0x98, y=0x38
	object_raw subtype=0x32, x=0x128, y=0x38
	object_raw subtype=0x32, x=0x108, y=0x78
	object_raw subtype=0xc, x=0xb0, y=0x68, paramA=0x4, paramB=0x3f
	object_raw subtype=0x5, x=0x38, y=0x28
	object_raw subtype=0x5, x=0x58, y=0x28
	object_raw subtype=0x5, x=0xb8, y=0x28
	object_raw subtype=0x5, x=0xc8, y=0x28
	object_raw subtype=0x5, x=0x148, y=0x88
	object_raw subtype=0x5, x=0x158, y=0x88
	object_raw subtype=0x5, x=0x38, y=0x28
	object_raw subtype=0x5, x=0x58, y=0x28
	object_raw subtype=0x3, x=0x128, y=0xb8, paramC=0x3e0000
	object_raw subtype=0x34, x=0x148, y=0xb8, paramA=0x1, paramB=0xb48, paramC=0x3e020b
	entity_list_end

Enemies_DeepwoodShrine_BossKey:: @ 080DF444
	entity_list_end

TileEntities_DeepwoodShrine_BossKey:: @ 080DF454
	tile_entity type=0x1, paramA=0xe
	tile_entity type=0x3, paramA=0x3f, paramB=0x52, paramC=0xb0, paramD=0x68
	tile_entity_list_end

Room_DeepwoodShrine_BossKey:: @ 080DF46C
	.4byte Entities_DeepwoodShrine_BossKey_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_BossKey
	.4byte TileEntities_DeepwoodShrine_BossKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_BossKey
	.4byte sub_StateChange_DeepwoodShrine_BossKey

Entities_DeepwoodShrine_Compass_0:: @ 080DF48C
.ifdef EU_JP
	object_raw subtype=0x3, x=0x48, y=0x48, paramA=0x1, paramC=0x430000
	object_raw subtype=0xc, x=0x48, y=0x78, paramA=0x1, paramC=0x430000
	object_raw subtype=0x5, x=0x38, y=0x38
	object_raw subtype=0x5, x=0x38, y=0x48
	object_raw subtype=0x5, x=0x38, y=0x58
	object_raw subtype=0x5, x=0x48, y=0x38
	object_raw subtype=0x5, x=0x48, y=0x58
	object_raw subtype=0x5, x=0x58, y=0x38
	object_raw subtype=0x5, x=0x58, y=0x58
	manager subtype=0x20, x=0x58, y=0x48, paramB=0x10480500, paramC=0x431048
	object_raw subtype=0xc, x=0x100, y=0x38, paramA=0x4, paramB=0x42
	object_raw subtype=0x14, x=0xa8, y=0x88, paramA=0x1, paramB=0x40
	manager subtype=0x1e, x=0xf0, y=0xd0, paramB=0x200040, paramC=0x440000
	.ifdef DEMO_JP
	ezlo_hint x=0x14, y=0x6, rx=0x3, ry=0x4, msg=0xb6f, flag=0x56, flag2=0x43
	.endif
	entity_list_end
.else
	object_raw subtype=0x3, x=0x48, y=0x48, paramA=0x1, paramC=0x430000
	object_raw subtype=0xc, x=0x48, y=0x78, paramA=0x1, paramC=0x430000
	object_raw subtype=0x5, x=0x38, y=0x38
	object_raw subtype=0x5, x=0x38, y=0x48
	object_raw subtype=0x5, x=0x38, y=0x58
	object_raw subtype=0x5, x=0x48, y=0x38
	object_raw subtype=0x5, x=0x48, y=0x58
	object_raw subtype=0x5, x=0x58, y=0x38
	object_raw subtype=0x5, x=0x58, y=0x58
	manager subtype=0x20, x=0x58, y=0x48, paramB=0x10480500, paramC=0x431048
	object_raw subtype=0xc, x=0x100, y=0x38, paramA=0x4, paramB=0x42
	object_raw subtype=0x14, x=0xa8, y=0x88, paramA=0x1, paramB=0x40
	manager subtype=0x1e, x=0xf0, y=0xd0, paramB=0x200040, paramC=0x440000
	ezlo_hint x=0x14, y=0x6, rx=0x3, ry=0x4, msg=0xb6f, flag=0x56, flag2=0x43
	entity_list_end
.endif

Enemies_DeepwoodShrine_Compass:: @ 080DF57C
	enemy_raw subtype=0x11, x=0x78, y=0x78, paramB=0x1
	entity_list_end

TileEntities_DeepwoodShrine_Compass:: @ 080DF59C
	tile_entity type=0x1, paramA=0xf
	tile_entity type=0x2, paramA=0x41, paramB=0x53, paramC=0x1c4
	tile_entity type=0x3, paramA=0x42, paramB=0x51, paramC=0x100, paramD=0x38
	tile_entity_list_end

Room_DeepwoodShrine_Compass:: @ 080DF5BC
	.4byte Entities_DeepwoodShrine_Compass_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_Compass
	.4byte TileEntities_DeepwoodShrine_Compass
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_Compass
	.4byte sub_StateChange_DeepwoodShrine_Compass

Entities_DeepwoodShrine_13_0:: @ 080DF5DC
	object_raw subtype=0x8, x=0xe8, y=0x48, paramA=0x11, paramC=0xffff
	object_raw subtype=0x32, x=0x78, y=0x68
	entity_list_end

Enemies_DeepwoodShrine_13:: @ 080DF60C
	entity_list_end

TileEntities_DeepwoodShrine_13:: @ 080DF61C
	tile_entity type=0x1, paramA=0x10
	tile_entity_list_end

Room_DeepwoodShrine_13:: @ 080DF62C
	.4byte Entities_DeepwoodShrine_13_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_13
	.4byte TileEntities_DeepwoodShrine_13
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_13
	.4byte sub_StateChange_DeepwoodShrine_13

Entities_DeepwoodShrine_LilyPadWest_0:: @ 080DF64C
	object_raw subtype=0x8, x=0x48, y=0x28, paramA=0x8, paramC=0x45ffff
	ezlo_hint x=0x16, y=0x14, rx=0x1, ry=0x5, msg=0xb37, flag=0x46
	object_raw subtype=0x14, x=0x78, y=0xc8, paramA=0xff
	entity_list_end

Enemies_DeepwoodShrine_LilyPadWest:: @ 080DF68C
	enemy_raw subtype=0x10, x=0xe8, y=0x68
	enemy_raw subtype=0x10, x=0x138, y=0x38, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x148, y=0x68, paramB=0x3200
	enemy_raw subtype=0x10, x=0x168, y=0x38, paramB=0x1400
	enemy_raw subtype=0x11, x=0x158, y=0xa8, paramB=0x1
	enemy_raw subtype=0x11, x=0x178, y=0x108, paramB=0x1
	entity_list_end

TileEntities_DeepwoodShrine_LilyPadWest:: @ 080DF6FC
	tile_entity type=0x1, paramA=0x11
	tile_entity_list_end

Room_DeepwoodShrine_LilyPadWest:: @ 080DF70C
	.4byte Entities_DeepwoodShrine_LilyPadWest_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_LilyPadWest
	.4byte TileEntities_DeepwoodShrine_LilyPadWest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_LilyPadWest
	.4byte sub_StateChange_DeepwoodShrine_LilyPadWest

Entities_DeepwoodShrine_LilyPadEast_0:: @ 080DF72C
.ifdef EU_JP
	manager subtype=0x20, x=0x48, y=0x18, paramB=0x20680500, paramC=0x442038
	object_raw subtype=0x3, x=0x68, y=0x38, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x33, x=0xb8, y=0x48, paramC=0x80000000
	object_raw subtype=0x33, x=0xc8, y=0x48, paramC=0x80000000
	object_raw subtype=0x33, x=0xd8, y=0x48, paramC=0x80000000
	object_raw subtype=0x33, x=0xe8, y=0x48, paramC=0x80000000
	manager subtype=0x2e, unknown=0x0, paramA=0x1, paramB=0xa00, paramC=0x80000000
	object_raw subtype=0x5, x=0x18, y=0x18, paramA=0x5f
	object_raw subtype=0x5, x=0x18, y=0x28, paramA=0x5f
	object_raw subtype=0x5, x=0x18, y=0x38
	object_raw subtype=0x5, x=0x28, y=0x18
	object_raw subtype=0x5, x=0x28, y=0x28
	object_raw subtype=0x5, x=0x28, y=0x38
	object_raw subtype=0x5, x=0x38, y=0x18
	object_raw subtype=0x5, x=0x38, y=0x28
	.ifdef DEMO_JP
	manager subtype=0x1e, x=0xb0, paramB=0x100040, paramC=0x560000
	.endif
.else
	manager subtype=0x20, x=0x48, y=0x18, paramB=0x20680500, paramC=0x442038
	object_raw subtype=0x3, x=0x68, y=0x38, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x33, x=0xb8, y=0x48, paramC=0x80000000
	object_raw subtype=0x33, x=0xc8, y=0x48, paramC=0x80000000
	object_raw subtype=0x33, x=0xd8, y=0x48, paramC=0x80000000
	object_raw subtype=0x33, x=0xe8, y=0x48, paramC=0x80000000
	manager subtype=0x2e, unknown=0x0, paramA=0x1, paramB=0xa00, paramC=0x80000000
	object_raw subtype=0x5, x=0x18, y=0x18, paramA=0x5f
	object_raw subtype=0x5, x=0x18, y=0x28, paramA=0x5f
	object_raw subtype=0x5, x=0x18, y=0x38
	object_raw subtype=0x5, x=0x28, y=0x18
	object_raw subtype=0x5, x=0x28, y=0x28
	object_raw subtype=0x5, x=0x28, y=0x38
	object_raw subtype=0x5, x=0x38, y=0x18
	object_raw subtype=0x5, x=0x38, y=0x28
	manager subtype=0x1e, x=0xb0, paramB=0x400040, paramC=0x560000
.endif
	entity_list_end
	
Enemies_DeepwoodShrine_LilyPadEast:: @ 080DF83C
	enemy_raw subtype=0x11, x=0x88, y=0x98, paramB=0x1
	entity_list_end

TileEntities_DeepwoodShrine_LilyPadEast:: @ 080DF85C
	tile_entity type=0x1, paramA=0x12
	tile_entity_list_end

Room_DeepwoodShrine_LilyPadEast:: @ 080DF86C
	.4byte Entities_DeepwoodShrine_LilyPadEast_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_LilyPadEast
	.4byte TileEntities_DeepwoodShrine_LilyPadEast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_LilyPadEast
	.4byte sub_StateChange_DeepwoodShrine_LilyPadEast

Entities_DeepwoodShrineBoss_Main_0:: @ 080DF88C
	object_raw subtype=0x39, x=0x88, y=0xc8, paramA=0x6, paramC=0xffff
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x40020000
	manager subtype=0xe, y=0x3c, paramA=0x9, paramB=0x1, paramC=0x40020000
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb01, flag=0x4002
	object_raw subtype=0x5, x=0x38, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0xd8, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0x38, y=0xb8, paramA=0x5f
	object_raw subtype=0x5, x=0xd8, y=0xb8, paramA=0x5f
	entity_list_end

gUnk_additional_9_DeepwoodShrineBoss_Main:: @ 080DF91C
	object_raw subtype=0xac, x=0x88, y=0x68, paramA=0x40
	manager subtype=0xe, y=0x3c, unknown=0x1f, paramA=0xa, paramC=0x80000000
	entity_list_end

gUnk_additional_a_DeepwoodShrineBoss_Main:: @ 080DF94C
	object_raw subtype=0x34, x=0x88, y=0x98, paramA=0x2, paramB=0x4a, paramC=0x400201c7
	object_raw subtype=0x47, x=0x88, y=0x58, paramC=0x40020047
	entity_list_end

gUnk_additional_8_DeepwoodShrineBoss_Main:: @ 080DF97C
	enemy_raw subtype=0x13, x=0x88, y=0x78
	entity_list_end

TileEntities_DeepwoodShrineBoss_Main:: @ 080DF99C
	tile_entity type=0x1, paramA=0x13
	tile_entity_list_end

Room_DeepwoodShrineBoss_Main:: @ 080DF9AC
	.4byte Entities_DeepwoodShrineBoss_Main_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte TileEntities_DeepwoodShrineBoss_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrineBoss_Main
	.4byte sub_StateChange_DeepwoodShrineBoss_Main
	.4byte gUnk_additional_8_DeepwoodShrineBoss_Main
	.4byte gUnk_additional_9_DeepwoodShrineBoss_Main
	.4byte gUnk_additional_a_DeepwoodShrineBoss_Main

Entities_DeepwoodShrine_PreBoss_0:: @ 080DF9D8
	object_raw subtype=0x39, x=0xa8, y=0x38, paramC=0x49ffff
	object_raw subtype=0x32, x=0xa8, y=0x98
	object_raw subtype=0x5, x=0x88, y=0x48, paramA=0x5f
	object_raw subtype=0x5, x=0x88, y=0x58, paramA=0x5f
	object_raw subtype=0x5, x=0xc8, y=0x48, paramA=0x5f
	object_raw subtype=0x5, x=0xc8, y=0x58, paramA=0x5f
	entity_list_end

Enemies_DeepwoodShrine_PreBoss:: @ 080DFA48
	entity_list_end

TileEntities_DeepwoodShrine_PreBoss:: @ 080DFA58
	tile_entity type=0x1, paramA=0x14
	tile_entity type=0x2, paramA=0x4a, paramB=0x56, paramC=0x244
	tile_entity_list_end

Room_DeepwoodShrine_PreBoss:: @ 080DFA70
	.4byte Entities_DeepwoodShrine_PreBoss_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_PreBoss
	.4byte TileEntities_DeepwoodShrine_PreBoss
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_PreBoss
	.4byte sub_StateChange_DeepwoodShrine_PreBoss

Entities_DeepwoodShrine_InsideBarrel_0:: @ 080DFA90
	manager subtype=0xc
	object_raw subtype=0x26, x=0x18, y=0x50
	object_raw subtype=0x26, x=0xd8, y=0x50, paramA=0x1
	object_raw subtype=0x36, x=0x78, y=0x50
	object_raw subtype=0x26, x=0x50, y=0x50, paramA=0x3
	object_raw subtype=0x26, x=0x78, y=0x50, paramA=0x4
	object_raw subtype=0x26, x=0xa0, y=0x50, paramA=0x5
	manager subtype=0x1a, unknown=0x8
	ezlo_hint x=0x4, y=0xa, rx=0xc, ry=0x1, msg=0xb35, flag=0x4e, flag2=0x415
	entity_list_end

Enemies_DeepwoodShrine_InsideBarrel:: @ 080DFB30
	entity_list_end

TileEntities_DeepwoodShrine_InsideBarrel:: @ 080DFB40
	tile_entity_list_end

Room_DeepwoodShrine_InsideBarrel:: @ 080DFB48
	.4byte Entities_DeepwoodShrine_InsideBarrel_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrine_InsideBarrel
	.4byte TileEntities_DeepwoodShrine_InsideBarrel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrine_InsideBarrel
	.4byte sub_StateChange_DeepwoodShrine_InsideBarrel

Entities_DeepwoodShrineEntry_Main_0:: @ 080DFB68
	entity_list_end

gUnk_080DFB78:: @ 080DFB78
	object_raw subtype=0x69, unknown=0x4f, paramC=script_EzloTalkDWS
	entity_list_end

Enemies_DeepwoodShrineEntry_Main:: @ 080DFB98
	entity_list_end

TileEntities_DeepwoodShrineEntry_Main:: @ 080DFBA8
	tile_entity_list_end

Room_DeepwoodShrineEntry_Main:: @ 080DFBB0
	.4byte Entities_DeepwoodShrineEntry_Main_0
	.4byte 0x00000000
	.4byte Enemies_DeepwoodShrineEntry_Main
	.4byte TileEntities_DeepwoodShrineEntry_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DeepwoodShrineEntry_Main
	.4byte sub_StateChange_DeepwoodShrineEntry_Main

Entities_CaveOfFlames_AfterCane_0:: @ 080DFBD0
	object_raw subtype=0x8, x=0x88, y=0x38, paramA=0x8, paramC=0x14ffff
	object_raw subtype=0x8, x=0x88, y=0xe8, paramA=0x2, paramC=0x15ffff
	object_raw subtype=0x3, x=0x68, y=0xd8, paramC=0x150000
	object_raw subtype=0x34, x=0x68, y=0x88, paramB=0x350, paramC=0x1501c6
	object_raw subtype=0x59, paramB=0x8
	object_raw subtype=0x5, x=0x118, y=0x48, paramA=0x5f
	object_raw subtype=0x5, x=0x118, y=0x98, paramA=0x5f
	manager subtype=0x1e, x=0x50, y=0xc0, paramB=0x200070, paramC=0x3b0000
	ezlo_hint x=0xa, y=0xe, rx=0x4, ry=0x4, msg=0xb68, flag=0x43
	entity_list_end

Entities_CaveOfFlames_AfterCane_1:: @ 080DFC70
	manager subtype=0x14, unknown=0x8
	object_raw subtype=0x4f, x=0x88, y=0x100, paramA=0xd, paramB=0x2
	entity_list_end

Enemies_CaveOfFlames_AfterCane:: @ 080DFCA0
	entity_list_end

TileEntities_CaveOfFlames_AfterCane:: @ 080DFCB0
	tile_entity type=0x1, paramA=0x1
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_AfterCane:: @ 080DFCC0
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_AfterCane.bin"

Room_CaveOfFlames_AfterCane:: @ 080DFCF0
	.4byte Entities_CaveOfFlames_AfterCane_0
	.4byte Entities_CaveOfFlames_AfterCane_1
	.4byte Enemies_CaveOfFlames_AfterCane
	.4byte TileEntities_CaveOfFlames_AfterCane
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_AfterCane
	.4byte sub_StateChange_CaveOfFlames_AfterCane
	.4byte gUnk_additional_8_CaveOfFlames_AfterCane

Entities_CaveOfFlames_SpinyChus_0:: @ 080DFD14
	object_raw subtype=0x55, x=0x128, y=0x78, paramA=0x1
	object_raw subtype=0x6c, x=0x128, y=0xe8, paramA=0x2
	object_raw subtype=0x6d, x=0x118, y=0x98, paramA=0x1, paramB=0x20382108, paramC=0x170017
	manager subtype=0x1e, x=0x70, y=0x60, paramB=0x300020, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x168000
	object_raw subtype=0xc, x=0x80, y=0x78, paramA=0x2, paramB=0x19, paramC=0x160000
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb02, flag=0x16, flag2=0x8000
	object_raw subtype=0x8, x=0x38, y=0x78, paramA=0x3, paramC=0x160000
	entity_list_end

Entities_CaveOfFlames_SpinyChus_1:: @ 080DFDA4
	object_raw subtype=0x4f, x=0xf8, y=0x100, paramA=0xd, paramB=0x2
	object_raw subtype=0x4f, x=0x128, y=0x100, paramA=0xd, paramB=0x2
	entity_list_end

Enemies_CaveOfFlames_SpinyChus:: @ 080DFDD4
	entity_list_end

TileEntities_CaveOfFlames_SpinyChus:: @ 080DFDE4
	tile_entity type=0xd, paramB=0x2d00
	tile_entity type=0x2, paramA=0x18, paramB=0x53, paramC=0xd0, paramD=0x1
	tile_entity type=0x3, paramA=0x19, paramB=0x12, paramC=0x80, paramD=0x78
	tile_entity type=0x1, paramA=0x2
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_SpinyChus:: @ 080DFE0C
	enemy_raw subtype=0xb, x=0x80, y=0x48, paramA=0x1, paramB=0x800
	enemy_raw subtype=0xb, x=0xa8, y=0x58, paramA=0x1, paramB=0x1000
	enemy_raw subtype=0xb, x=0xb0, y=0x78, paramA=0x1, paramB=0x1800
	enemy_raw subtype=0xb, x=0xa8, y=0x98, paramA=0x1, paramB=0x2000
	enemy_raw subtype=0xb, x=0x80, y=0xa8, paramA=0x1, paramB=0x2800
	enemy_raw subtype=0xb, x=0x58, y=0x98, paramA=0x1, paramB=0x3000
	enemy_raw subtype=0xb, x=0x50, y=0x78, paramA=0x1, paramB=0x3800
	enemy_raw subtype=0xb, x=0x58, y=0x58, paramA=0x1, paramB=0x4000
	entity_list_end

Room_CaveOfFlames_SpinyChus:: @ 080DFE9C
	.4byte Entities_CaveOfFlames_SpinyChus_0
	.4byte Entities_CaveOfFlames_SpinyChus_1
	.4byte Enemies_CaveOfFlames_SpinyChus
	.4byte TileEntities_CaveOfFlames_SpinyChus
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_SpinyChus
	.4byte sub_StateChange_CaveOfFlames_SpinyChus
	.4byte gUnk_additional_8_CaveOfFlames_SpinyChus

Entities_CaveOfFlames_CartToSpinyChus_0:: @ 080DFEC0
	object_raw subtype=0x55, x=0x98, y=0x68, paramA=0x1, paramB=0x1
	object_raw subtype=0x6c, x=0x298, y=0x28
	object_raw subtype=0x8, x=0x88, y=0x28, paramC=0x15ffff
	object_raw subtype=0x5, x=0x218, y=0x98
	object_raw subtype=0x5, x=0x228, y=0x88
	object_raw subtype=0x5, x=0x238, y=0x98, paramA=0x5f
	entity_list_end

Entities_CaveOfFlames_CartToSpinyChus_1:: @ 080DFF30
	object_raw subtype=0x4f, x=0x88, y=0x10, paramA=0xd
	object_raw subtype=0x4f, x=0x88, y=0xc0, paramA=0xd, paramB=0x2
	object_raw subtype=0x4f, x=0x268, y=0x10, paramA=0xd
	object_raw subtype=0x4f, x=0x298, y=0x10, paramA=0xd
	object_raw subtype=0x4f, x=0x228, y=0xc8, paramA=0xd, paramB=0x4
	entity_list_end

Enemies_CaveOfFlames_CartToSpinyChus:: @ 080DFF90
	enemy_raw subtype=0x1f, x=0x38, y=0x38, paramA=0x2, paramC=0x280048
	enemy_raw subtype=0x1f, x=0xd8, y=0x38, paramA=0x2, paramC=0x280048
	enemy_raw subtype=0x1f, x=0x38, y=0x98, paramA=0x2, paramC=0x280048
	enemy_raw subtype=0x1f, x=0xd8, y=0x98, paramA=0x2, paramC=0x280048
	enemy_raw subtype=0x8, x=0x138, y=0x68
	enemy_raw subtype=0x8, x=0x158, y=0x68
	enemy_raw subtype=0x8, x=0x178, y=0x68
	enemy_raw subtype=0x1, x=0x248, y=0x68, paramA=0x1
	enemy_raw subtype=0x1, x=0x258, y=0x78, paramA=0x1
	entity_list_end

TileEntities_CaveOfFlames_CartToSpinyChus:: @ 080E0030
	tile_entity type=0x4, paramA=0x1a, paramB=0x2, paramC=0x228, paramD=0xa8
	tile_entity type=0x1, paramA=0x3
	tile_entity_list_end

Room_CaveOfFlames_CartToSpinyChus:: @ 080E0048
	.4byte Entities_CaveOfFlames_CartToSpinyChus_0
	.4byte Entities_CaveOfFlames_CartToSpinyChus_1
	.4byte Enemies_CaveOfFlames_CartToSpinyChus
	.4byte TileEntities_CaveOfFlames_CartToSpinyChus
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_CartToSpinyChus
	.4byte sub_StateChange_CaveOfFlames_CartToSpinyChus

Entities_CaveOfFlames_Entrance_0:: @ 080E0068
	ezlo_hint x=0x6, y=0x10, rx=0xb, ry=0x3, msg=0xb13, flag=0x1b
	object_raw subtype=0x5, x=0x38, y=0xa8, paramA=0x5f
	object_raw subtype=0x5, x=0x48, y=0xa8, paramA=0x5f
	object_raw subtype=0x5, x=0xc8, y=0xa8, paramA=0x5f
	object_raw subtype=0x5, x=0xd8, y=0xa8, paramA=0x5f
	object_raw subtype=0x34, x=0x68, y=0x78, paramB=0x50, paramC=0x80000206
	object_raw subtype=0x34, x=0xa8, y=0x78, paramA=0x1, paramB=0x1750, paramC=0x8001010f
	entity_list_end

Entities_CaveOfFlames_Entrance_1:: @ 080E00E8
	object_raw subtype=0x4f, x=0x88, y=0x10, paramA=0xd
	object_raw subtype=0x4f, x=0x100, y=0x68, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0x88, y=0xd0, paramA=0xd, paramB=0x2
	entity_list_end

Enemies_CaveOfFlames_Entrance:: @ 080E0128
	entity_list_end

TileEntities_CaveOfFlames_Entrance:: @ 080E0138
	tile_entity type=0x1, paramA=0x4
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_Entrance:: @ 080E0148
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_Entrance.bin"

Room_CaveOfFlames_Entrance:: @ 080E0188
	.4byte Entities_CaveOfFlames_Entrance_0
	.4byte Entities_CaveOfFlames_Entrance_1
	.4byte Enemies_CaveOfFlames_Entrance
	.4byte TileEntities_CaveOfFlames_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_Entrance
	.4byte sub_StateChange_CaveOfFlames_Entrance
	.4byte gUnk_additional_8_CaveOfFlames_Entrance

Entities_CaveOfFlames_MainCart_0:: @ 080E01AC
	object_raw subtype=0x8, x=0x258, y=0x38, paramA=0x9, paramC=0x1dffff
	object_raw subtype=0x8, x=0x2a8, y=0x38, paramA=0xb, paramC=0x1dffff
	object_raw subtype=0x55, x=0x2f8, y=0x68, paramA=0x2, paramB=0x100
	ezlo_hint x=0x56, y=0xc, rx=0xa, ry=0x2, msg=0xb38, flag=0x1e
	object_raw subtype=0x6c, x=0x28, y=0x38, paramA=0x3
	object_raw subtype=0x6c, x=0x28, y=0xd8, paramA=0x3
	object_raw subtype=0x2f, x=0x178, y=0x58, paramC=0x1c0000
	manager subtype=0x1f, x=0x138, y=0x98, paramA=0x2, paramB=0x20000, paramC=0x1c0000
	object_raw subtype=0x13, x=0x138, y=0x78, paramA=0x3, paramB=0xff02, paramC=0x1c0000
	object_raw subtype=0x13, x=0x138, y=0xb8, paramA=0x3, paramB=0xff00, paramC=0x1c0000
	entity_list_end

Entities_CaveOfFlames_MainCart_1:: @ 080E025C
	object_raw subtype=0x4f, x=0x10, y=0x38, paramA=0xd, paramB=0x3
	object_raw subtype=0x4f, x=0x10, y=0xd8, paramA=0xd, paramB=0x3
	object_raw subtype=0x4f, x=0x270, y=0x38, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0x270, y=0xd8, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0x290, y=0x38, paramA=0xd, paramB=0x3
	object_raw subtype=0x4f, x=0x290, y=0xd8, paramA=0xd, paramB=0x3
	entity_list_end

Enemies_CaveOfFlames_MainCart:: @ 080E02CC
	enemy_raw subtype=0x1, x=0xd8, y=0x28, paramA=0x1
	enemy_raw subtype=0x1, x=0xc8, y=0xe8, paramA=0x1
	enemy_raw subtype=0x1, x=0x128, y=0xb8, paramA=0x1
	enemy_raw subtype=0x22, x=0x98, y=0x78
	enemy_raw subtype=0x22, x=0x1b8, y=0x88
	enemy_raw subtype=0x20, x=0x2c8, y=0x78
	enemy_raw subtype=0x20, x=0x338, y=0xb8
	entity_list_end

TileEntities_CaveOfFlames_MainCart:: @ 080E034C
	tile_entity type=0x1, paramA=0x5
	tile_entity_list_end

Room_CaveOfFlames_MainCart:: @ 080E035C
	.4byte Entities_CaveOfFlames_MainCart_0
	.4byte Entities_CaveOfFlames_MainCart_1
	.4byte Enemies_CaveOfFlames_MainCart
	.4byte TileEntities_CaveOfFlames_MainCart
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_MainCart
	.4byte sub_StateChange_CaveOfFlames_MainCart

Entities_CaveOfFlames_NorthEntrance_0:: @ 080E037C
	object_raw subtype=0x8, x=0xe8, y=0x58, paramA=0x1, paramC=0x31ffff
	object_raw subtype=0x5, x=0x38, y=0x28
	object_raw subtype=0x5, x=0xd8, y=0x28
	object_raw subtype=0x5, x=0x38, y=0x98, paramA=0x5f
	object_raw subtype=0x5, x=0xd8, y=0x98, paramA=0x5f
	object_raw subtype=0x0, x=0x78, y=0x48, collision=2, paramA=0x54, paramB=0x400, paramC=0x3e0000
	object_raw subtype=0x0, x=0x88, y=0x48, collision=2, paramA=0x54, paramB=0x400, paramC=0x3f0000
	object_raw subtype=0x0, x=0x98, y=0x48, collision=2, paramA=0x54, paramB=0x400, paramC=0x400000
	object_raw subtype=0x0, x=0x78, y=0x58, collision=2, paramA=0x54, paramB=0x400, paramC=0x410000
	object_raw subtype=0x0, x=0x98, y=0x58, collision=2, paramA=0x54, paramB=0x400, paramC=0x420000
	entity_list_end

Entities_CaveOfFlames_NorthEntrance_1:: @ 080E042C
	object_raw subtype=0x4f, x=0x88, paramA=0xd
	object_raw subtype=0x4f, x=0x88, y=0xc0, paramA=0xd, paramB=0x2
	object_raw subtype=0x4f, x=0x100, y=0x58, paramA=0xd, paramB=0x1
	entity_list_end

Enemies_CaveOfFlames_NorthEntrance:: @ 080E046C
	enemy_raw subtype=0x17, x=0x88, y=0x58
	entity_list_end

TileEntities_CaveOfFlames_NorthEntrance:: @ 080E048C
	tile_entity type=0x1, paramA=0x6
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_NorthEntrance:: @ 080E049C
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_NorthEntrance.bin"

Room_CaveOfFlames_NorthEntrance:: @ 080E04AC
	.4byte Entities_CaveOfFlames_NorthEntrance_0
	.4byte Entities_CaveOfFlames_NorthEntrance_1
	.4byte Enemies_CaveOfFlames_NorthEntrance
	.4byte TileEntities_CaveOfFlames_NorthEntrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_NorthEntrance
	.4byte sub_StateChange_CaveOfFlames_NorthEntrance
	.4byte gUnk_additional_8_CaveOfFlames_NorthEntrance

Entities_CaveOfFlames_CartWest_0:: @ 080E04D0
	object_raw subtype=0x6c, x=0x1b8, y=0x38, paramA=0x1
	object_raw subtype=0x6c, x=0x1f8, y=0x38, paramA=0x3
	object_raw subtype=0x6c, x=0x288, y=0x38, paramA=0x1
	object_raw subtype=0x6c, x=0x288, y=0xd8, paramA=0x1
	object_raw subtype=0x55, x=0x238, y=0xd8, paramA=0x2, paramB=0x100
	ezlo_hint x=0x40, y=0x16, rx=0x1, ry=0x4, msg=0xb39, flag=0x21
	object_raw subtype=0x8, x=0xb8, y=0xf8, paramA=0x2, paramC=0x24ffff
	object_raw subtype=0x8, x=0xb8, y=0xf8, paramA=0x12, paramC=0xffff
	object_raw subtype=0x5, x=0x168, y=0xc8
	object_raw subtype=0x5, x=0x168, y=0xe8
	object_raw subtype=0x5, x=0x168, y=0xd8, paramA=0x5d
	object_raw subtype=0x0, x=0x258, y=0x4c, collision=2, paramA=0x63, paramB=0x400, paramC=0x3c0000
	entity_list_end

Entities_CaveOfFlames_CartWest_1:: @ 080E05A0
	object_raw subtype=0x4f, x=0x88, paramA=0xd
	object_raw subtype=0x4f, x=0x100, y=0x48, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0x110, y=0x48, paramA=0xd, paramB=0x3
	object_raw subtype=0x4f, x=0x100, y=0xd8, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0x110, y=0xd8, paramA=0xd, paramB=0x3
	object_raw subtype=0x4f, x=0x1d0, y=0x38, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0x1e0, y=0x38, paramA=0xd, paramB=0x3
	object_raw subtype=0x4f, x=0x1d0, y=0xc8, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0x1e0, y=0xc8, paramA=0xd, paramB=0x3
	object_raw subtype=0x4f, x=0x2a0, y=0x38, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0x2a0, y=0xd8, paramA=0xd, paramB=0x1
	object_raw subtype=0x4f, x=0xb8, y=0x110, paramA=0xd, paramB=0x2
	object_raw subtype=0x4f, x=0x8, y=0xc8, paramA=0xd, paramB=0x5
	entity_list_end

Enemies_CaveOfFlames_CartWest:: @ 080E0680
	enemy_raw subtype=0x1, x=0x188, y=0xc8, paramA=0x1
	enemy_raw subtype=0x1, x=0x198, y=0xd8, paramA=0x1
	enemy_raw subtype=0x22, x=0x78, y=0xb8
	enemy_raw subtype=0x22, x=0xb8, y=0xb8
	enemy_raw subtype=0x22, x=0x148, y=0xc8
	enemy_raw subtype=0x1e, x=0x58, y=0x38
	enemy_raw subtype=0x1e, x=0xb8, y=0x48
	enemy_raw subtype=0x8, x=0x228, y=0x38, paramB=0x60c0000, paramC=0x200210
	enemy_raw subtype=0x8, x=0x248, y=0x38, paramB=0x60c0000, paramC=0x200210
	enemy_raw subtype=0x8, x=0x268, y=0x38, paramB=0x60c0000, paramC=0x200210
	enemy_raw subtype=0x8, x=0x248, y=0xd8, paramB=0x60c0000, paramC=0xc00210
	enemy_raw subtype=0x8, x=0x268, y=0xd8, paramB=0x60c0000, paramC=0xc00210
	entity_list_end

TileEntities_CaveOfFlames_CartWest:: @ 080E0750
	tile_entity type=0x4, paramA=0x1f, paramB=0x2, paramC=0x28, paramD=0xc8
	tile_entity type=0x4, paramA=0x1a, paramB=0x2, paramC=0x228, paramD=0x18
	tile_entity type=0x1, paramA=0x7
	tile_entity_list_end

Room_CaveOfFlames_CartWest:: @ 080E0770
	.4byte Entities_CaveOfFlames_CartWest_0
	.4byte Entities_CaveOfFlames_CartWest_1
	.4byte Enemies_CaveOfFlames_CartWest
	.4byte TileEntities_CaveOfFlames_CartWest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_CartWest
	.4byte sub_StateChange_CaveOfFlames_CartWest

Entities_CaveOfFlames_Helmasaur_0:: @ 080E0790
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x220000
	object_raw subtype=0x74, x=0x78, y=0x88, collision=2, paramC=0x220000
	manager subtype=0x3, x=0x78, y=0x88, unknown=0x0, paramA=0x3, paramB=0x200
	ezlo_hint x=0x6, y=0x6, rx=0x9, ry=0xb, msg=0xb3b, flag=0x23, flag2=0x4063
	entity_list_end

Entities_CaveOfFlames_Helmasaur_1:: @ 080E07E0
	object_raw subtype=0x4f, x=0xe8, y=0xc8, paramA=0xd, paramB=0x5
	entity_list_end

Enemies_CaveOfFlames_Helmasaur:: @ 080E0800
	entity_list_end

TileEntities_CaveOfFlames_Helmasaur:: @ 080E0810
	tile_entity type=0x4, paramA=0x1f, paramB=0x2, paramC=0xc8, paramD=0xc8
	tile_entity type=0x1, paramA=0x8
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_Helmasaur:: @ 080E0828
	enemy_raw subtype=0x20, x=0x58, y=0x48
	enemy_raw subtype=0x20, x=0x78, y=0x68
	enemy_raw subtype=0x20, x=0x98, y=0x58
	enemy_raw subtype=0x20, x=0x78, y=0xa8
	entity_list_end

Room_CaveOfFlames_Helmasaur:: @ 080E0878
	.4byte Entities_CaveOfFlames_Helmasaur_0
	.4byte Entities_CaveOfFlames_Helmasaur_1
	.4byte Enemies_CaveOfFlames_Helmasaur
	.4byte TileEntities_CaveOfFlames_Helmasaur
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_Helmasaur
	.4byte sub_StateChange_CaveOfFlames_Helmasaur
	.4byte gUnk_additional_8_CaveOfFlames_Helmasaur

Entities_CaveOfFlames_Rollobite_0:: @ 080E089C
	object_raw subtype=0x59, paramB=0x8
	object_raw subtype=0x5e, x=0xb8, y=0xc8
	object_raw subtype=0x5e, x=0xc8, y=0x148
	object_raw subtype=0x6d, x=0x118, y=0x48, paramA=0x1, paramB=0x20482088, paramC=0x250026
	object_raw subtype=0x3, x=0x138, y=0x38, paramC=0x240002
	object_raw subtype=0x8, x=0xb8, y=0x28, paramC=0x24ffff
	object_raw subtype=0x5, x=0x58, y=0xa8
	object_raw subtype=0x5, x=0x68, y=0xa8
	object_raw subtype=0x5, x=0x68, y=0xb8
	entity_list_end

Entities_CaveOfFlames_Rollobite_1:: @ 080E093C
	manager subtype=0x14, unknown=0x8
	object_raw subtype=0x4f, x=0xb8, y=0x10, paramA=0xd
	entity_list_end

Enemies_CaveOfFlames_Rollobite:: @ 080E096C
	enemy_raw subtype=0x4, x=0x78, y=0xe8
	enemy_raw subtype=0x4, x=0x68, y=0x128
	enemy_raw subtype=0x4, x=0x58, y=0xd8
	enemy_raw subtype=0x4, x=0x68, y=0x148
	entity_list_end

TileEntities_CaveOfFlames_Rollobite:: @ 080E09BC
	tile_entity type=0x2, paramA=0x26, paramB=0x53, paramC=0x108, paramD=0x1
	tile_entity type=0x2, paramA=0x27, paramB=0x57, paramC=0x3c8
	tile_entity type=0x1, paramA=0x9
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_Rollobite:: @ 080E09DC
	.4byte gUnk_080E09FC
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_Rollobite.bin"

gUnk_080E09FC:: @ 080E09FC
	.incbin "data_080D5360/gUnk_080E09FC.bin"

Room_CaveOfFlames_Rollobite:: @ 080E0A20
	.4byte Entities_CaveOfFlames_Rollobite_0
	.4byte Entities_CaveOfFlames_Rollobite_1
	.4byte Enemies_CaveOfFlames_Rollobite
	.4byte TileEntities_CaveOfFlames_Rollobite
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_Rollobite
	.4byte sub_StateChange_CaveOfFlames_Rollobite
	.4byte gUnk_additional_8_CaveOfFlames_Rollobite

Entities_CaveOfFlames_MinishLava_0:: @ 080E0A44
	object_raw subtype=0xc, x=0x120, y=0x38, paramA=0x4, paramB=0x2a
	object_raw subtype=0x74, x=0xf8, y=0xa8, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0xf8, y=0xa8, unknown=0x0, paramA=0x3, paramB=0x103
	object_raw subtype=0x3, x=0x58, y=0x138, paramC=0x280000
	object_raw subtype=0x8, x=0x48, y=0x178, paramA=0x3, paramC=0x280000
	object_raw subtype=0x59, paramB=0x8
	ezlo_hint x=0xa, y=0x24, rx=0xf, ry=0x2, msg=0xb3a, flag=0x44
	object_raw subtype=0x5, x=0xe8, y=0x138
	object_raw subtype=0x5, x=0xf8, y=0x138
	object_raw subtype=0x5, x=0xe8, y=0x148
	object_raw subtype=0x5, x=0xf8, y=0x148
	entity_list_end

Entities_CaveOfFlames_MinishLava_1:: @ 080E0B04
	manager subtype=0x14, unknown=0x8
	entity_list_end

Enemies_CaveOfFlames_MinishLava:: @ 080E0B24
	enemy_raw subtype=0x1, x=0xf8, y=0x48, paramA=0x1
	enemy_raw subtype=0x1, x=0xa8, y=0xa8, paramA=0x1
	enemy_raw subtype=0x1, x=0xc8, y=0xa8, paramA=0x1
	entity_list_end

TileEntities_CaveOfFlames_MinishLava:: @ 080E0B64
	tile_entity type=0x2, paramA=0x29, paramB=0x715c, paramC=0x3c5
	tile_entity type=0x3, paramA=0x2a, paramB=0x50, paramC=0x120, paramD=0x38
	tile_entity type=0x1, paramA=0xa
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_MinishLava:: @ 080E0B84
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_MinishLava.bin"

Room_CaveOfFlames_MinishLava:: @ 080E0C14
	.4byte Entities_CaveOfFlames_MinishLava_0
	.4byte Entities_CaveOfFlames_MinishLava_1
	.4byte Enemies_CaveOfFlames_MinishLava
	.4byte TileEntities_CaveOfFlames_MinishLava
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_MinishLava
	.4byte sub_StateChange_CaveOfFlames_MinishLava
	.4byte gUnk_additional_8_CaveOfFlames_MinishLava

Entities_CaveOfFlames_MinishSpikes_0:: @ 080E0C38
	object_raw subtype=0x55, x=0xf8, y=0x78, paramB=0x201
	object_raw subtype=0x74, x=0x248, y=0x98, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x248, y=0x98, unknown=0x0, paramA=0x3, paramB=0x100
	object_raw subtype=0x74, x=0x48, y=0x48, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x48, y=0x48, unknown=0x0, paramA=0x3, paramB=0x102
	object_raw subtype=0x2f, x=0x238, y=0x68, paramC=0x2b0000
	object_raw subtype=0x13, x=0x218, y=0x68, paramA=0x3, paramB=0xff02, paramC=0x2b0000
	manager subtype=0x1f, x=0x218, y=0x48, paramA=0x1, paramB=0x10000, paramC=0x2b0000
	object_raw subtype=0x6c, x=0x128, y=0x48, paramA=0x1
	object_raw subtype=0x6c, x=0x178, y=0x48, paramA=0x3
	object_raw subtype=0x6c, x=0x218, y=0xc8, paramA=0x2
	object_raw subtype=0x6c, x=0x218, y=0x108
	object_raw subtype=0x6c, x=0x248, y=0x1c8, paramA=0x2
	entity_list_end

Entities_CaveOfFlames_MinishSpikes_1:: @ 080E0D18
	entity_list_end

Enemies_CaveOfFlames_MinishSpikes:: @ 080E0D28
	enemy_raw subtype=0x1d, x=0xe8, y=0xb8
	enemy_raw subtype=0x1d, x=0x38, y=0x88
	enemy_raw subtype=0x1d, x=0x88, y=0x68
	enemy_raw subtype=0x2f, x=0x190, y=0x78, paramA=0x8
	enemy_raw subtype=0x2f, x=0x1c0, y=0x78, paramA=0x8
	enemy_raw subtype=0x2f, x=0x1a8, y=0xb8, paramA=0x9
	enemy_raw subtype=0x2f, x=0x1d8, y=0xb8, paramA=0x9
	enemy_raw subtype=0x8, x=0x218, y=0x138
	enemy_raw subtype=0x8, x=0x248, y=0x168
	enemy_raw subtype=0x8, x=0x248, y=0x188
	entity_list_end

TileEntities_CaveOfFlames_MinishSpikes:: @ 080E0DD8
	tile_entity type=0x2, paramA=0x2c, paramB=0x725c, paramC=0x45c
	tile_entity type=0x2, paramA=0x2d, paramB=0x735c, paramC=0x55e, paramD=0x1
	tile_entity type=0x1, paramA=0xb
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_MinishSpikes:: @ 080E0DF8
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_MinishSpikes.bin"

gUnk_additional_9_CaveOfFlames_MinishSpikes:: @ 080E0E16
	.incbin "data_080D5360/gUnk_additional_9_CaveOfFlames_MinishSpikes.bin"

Room_CaveOfFlames_MinishSpikes:: @ 080E0E34
	.4byte Entities_CaveOfFlames_MinishSpikes_0
	.4byte Entities_CaveOfFlames_MinishSpikes_1
	.4byte Enemies_CaveOfFlames_MinishSpikes
	.4byte TileEntities_CaveOfFlames_MinishSpikes
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_MinishSpikes
	.4byte sub_StateChange_CaveOfFlames_MinishSpikes
	.4byte gUnk_additional_8_CaveOfFlames_MinishSpikes
	.4byte gUnk_additional_9_CaveOfFlames_MinishSpikes

Entities_CaveOfFlames_RollobiteSwitch_0:: @ 080E0E5C
	object_raw subtype=0x55, x=0x248, y=0x68, paramB=0x200
	object_raw subtype=0x6c, x=0x248, y=0x28
	object_raw subtype=0x6d, x=0x268, y=0xa8, paramA=0x2, paramB=0x104811d8, paramC=0x2f002e
	manager subtype=0x2e, unknown=0x0, paramB=0xa00, paramC=0x2e003d
	object_raw subtype=0x33, x=0x1c8, y=0x98, paramA=0x1, paramC=0x3d0000
	object_raw subtype=0x33, x=0x1d8, y=0x98, paramA=0x1, paramC=0x3d0000
	object_raw subtype=0x33, x=0x1e8, y=0x98, paramA=0x1, paramC=0x3d0000
	entity_list_end

Entities_CaveOfFlames_RollobiteSwitch_1:: @ 080E0EDC
	entity_list_end

Enemies_CaveOfFlames_RollobiteSwitch:: @ 080E0EEC
	enemy_raw subtype=0x4, x=0x218, y=0x68, paramB=0x100c0000, paramC=0x500200
	enemy_raw subtype=0x4, x=0x228, y=0x88, paramB=0x100c0000, paramC=0x500200
	enemy_raw subtype=0x4, x=0x208, y=0xa8, paramB=0x100c0000, paramC=0x500200
	enemy_raw subtype=0x4, x=0x208, y=0x78, paramB=0x100c0000, paramC=0x500200
	entity_list_end

TileEntities_CaveOfFlames_RollobiteSwitch:: @ 080E0F3C
	tile_entity type=0x1, paramA=0xc
	tile_entity_list_end

Room_CaveOfFlames_RollobiteSwitch:: @ 080E0F4C
	.4byte Entities_CaveOfFlames_RollobiteSwitch_0
	.4byte Entities_CaveOfFlames_RollobiteSwitch_1
	.4byte Enemies_CaveOfFlames_RollobiteSwitch
	.4byte TileEntities_CaveOfFlames_RollobiteSwitch
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_RollobiteSwitch
	.4byte sub_StateChange_CaveOfFlames_RollobiteSwitch

Entities_CaveOfFlames_BeforeGleerok_0:: @ 080E0F6C
	object_raw subtype=0x5, x=0x48, y=0x98
	object_raw subtype=0x5, x=0x58, y=0x98
	object_raw subtype=0x5, x=0x48, y=0xa8
	object_raw subtype=0x5, x=0x108, y=0x88
	object_raw subtype=0x5, x=0xf8, y=0x98, paramA=0x5f
	object_raw subtype=0x5, x=0x108, y=0x98, paramA=0x60
	object_raw subtype=0x5, x=0x48, y=0x88, paramA=0x5f
	object_raw subtype=0x5, x=0x58, y=0xa8, paramA=0x60
	object_raw subtype=0x5, x=0xf8, y=0xa8, paramA=0x5f
	object_raw subtype=0x5, x=0x108, y=0xa8, paramA=0x5f
	entity_list_end

Entities_CaveOfFlames_BeforeGleerok_1:: @ 080E101C
	manager subtype=0x1a, unknown=0x8, paramA=0x1
	entity_list_end

gUnk_080E103C:: @ 080E103C
	.incbin "data_080D5360/gUnk_080E103C.bin"

Enemies_CaveOfFlames_BeforeGleerok:: @ 080E105C
	entity_list_end

TileEntities_CaveOfFlames_BeforeGleerok:: @ 080E106C
	tile_entity type=0x1, paramA=0xd
	tile_entity_list_end

Room_CaveOfFlames_BeforeGleerok:: @ 080E107C
	.4byte Entities_CaveOfFlames_BeforeGleerok_0
	.4byte Entities_CaveOfFlames_BeforeGleerok_1
	.4byte Enemies_CaveOfFlames_BeforeGleerok
	.4byte TileEntities_CaveOfFlames_BeforeGleerok
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_BeforeGleerok
	.4byte sub_StateChange_CaveOfFlames_BeforeGleerok

Entities_CaveOfFlames_PathBossKey_0:: @ 080E109C
	object_raw subtype=0x5e, x=0x48, y=0x98
	entity_list_end

Entities_CaveOfFlames_PathBossKey_1:: @ 080E10BC
	entity_list_end

Enemies_CaveOfFlames_PathBossKey:: @ 080E10CC
	enemy_raw subtype=0x8, x=0x48, y=0x28
	enemy_raw subtype=0x8, x=0x78, y=0xe8
	entity_list_end

TileEntities_CaveOfFlames_PathBossKey:: @ 080E10FC
	tile_entity type=0x1, paramA=0xe
	tile_entity_list_end

Room_CaveOfFlames_PathBossKey:: @ 080E110C
	.4byte Entities_CaveOfFlames_PathBossKey_0
	.4byte Entities_CaveOfFlames_PathBossKey_1
	.4byte Enemies_CaveOfFlames_PathBossKey
	.4byte TileEntities_CaveOfFlames_PathBossKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_PathBossKey
	.4byte sub_StateChange_CaveOfFlames_PathBossKey

Entities_CaveOfFlames_PathBossKey2_0:: @ 080E112C
	object_raw subtype=0x5e, x=0xd8, y=0x68
	entity_list_end

Entities_CaveOfFlames_PathBossKey2_1:: @ 080E114C
	entity_list_end

Enemies_CaveOfFlames_PathBossKey2:: @ 080E115C
	enemy_raw subtype=0x2f, x=0xf8, y=0x68, paramA=0x8
	enemy_raw subtype=0x2f, x=0x68, y=0x78, paramA=0x9
	enemy_raw subtype=0x2f, x=0x108, y=0x88, paramA=0x8
	entity_list_end

TileEntities_CaveOfFlames_PathBossKey2:: @ 080E119C
	tile_entity type=0x2, paramA=0x30, paramB=0x745c, paramC=0x190
	tile_entity type=0x1, paramA=0xf
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_PathBossKey2:: @ 080E11B4
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_PathBossKey2.bin"

gUnk_additional_9_CaveOfFlames_PathBossKey2:: @ 080E11D2
	.incbin "data_080D5360/gUnk_additional_9_CaveOfFlames_PathBossKey2.bin"

Room_CaveOfFlames_PathBossKey2:: @ 080E11F0
	.4byte Entities_CaveOfFlames_PathBossKey2_0
	.4byte Entities_CaveOfFlames_PathBossKey2_1
	.4byte Enemies_CaveOfFlames_PathBossKey2
	.4byte TileEntities_CaveOfFlames_PathBossKey2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_PathBossKey2
	.4byte sub_StateChange_CaveOfFlames_PathBossKey2
	.4byte gUnk_additional_8_CaveOfFlames_PathBossKey2
	.4byte gUnk_additional_9_CaveOfFlames_PathBossKey2

Entities_CaveOfFlames_Compass_0:: @ 080E1218
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x310000
	ezlo_hint x=0x6, y=0xa, rx=0x9, ry=0x2, msg=0xb27, flag=0x33
	object_raw subtype=0xc, x=0x78, y=0x68, paramA=0x2, paramB=0x32, paramC=0x310000
	object_raw subtype=0x8, x=0x28, y=0x58, paramA=0x3, paramC=0x31ffff
	entity_list_end

Entities_CaveOfFlames_Compass_1:: @ 080E1268
	object_raw subtype=0x4f, x=0x10, y=0x58, paramA=0xd, paramB=0x3
	object_raw subtype=0x4f, x=0x78, y=0xc0, paramA=0xd, paramB=0x8
	entity_list_end

Enemies_CaveOfFlames_Compass:: @ 080E1298
	entity_list_end

TileEntities_CaveOfFlames_Compass:: @ 080E12A8
	tile_entity type=0x3, paramA=0x32, paramB=0x51, paramC=0x78, paramD=0x68
	tile_entity type=0x1, paramA=0x10
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_Compass:: @ 080E12C0
	enemy_raw subtype=0x1e, x=0x48, y=0x48
	enemy_raw subtype=0x1e, x=0xa8, y=0x48
	entity_list_end

Room_CaveOfFlames_Compass:: @ 080E12F0
	.4byte Entities_CaveOfFlames_Compass_0
	.4byte Entities_CaveOfFlames_Compass_1
	.4byte Enemies_CaveOfFlames_Compass
	.4byte TileEntities_CaveOfFlames_Compass
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_Compass
	.4byte sub_StateChange_CaveOfFlames_Compass
	.4byte gUnk_additional_8_CaveOfFlames_Compass

Entities_CaveOfFlames_Bobomb_0:: @ 080E1314
	object_raw subtype=0x5, x=0x68, y=0x68
	object_raw subtype=0x5, x=0x78, y=0x68
	object_raw subtype=0x5, x=0x88, y=0x68
	object_raw subtype=0x5, x=0x78, y=0x78
	object_raw subtype=0x5, x=0x88, y=0x78
	object_raw subtype=0x5, x=0x68, y=0x78, paramA=0x5d
	entity_list_end

Entities_CaveOfFlames_Bobomb_1:: @ 080E1384
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0xd, paramB=0x4
	object_raw subtype=0x4f, x=0x10, y=0x68, paramA=0xd, paramB=0x3
	entity_list_end

Enemies_CaveOfFlames_Bobomb:: @ 080E13B4
	enemy_raw subtype=0x22, x=0x48, y=0x48
	enemy_raw subtype=0x22, x=0x48, y=0x78
	enemy_raw subtype=0x22, x=0xa8, y=0x48
	enemy_raw subtype=0x22, x=0x98, y=0x98
	entity_list_end

TileEntities_CaveOfFlames_Bobomb:: @ 080E1404
	tile_entity type=0x4, paramA=0x34, paramB=0x2, paramC=0x78, paramD=0x28
	tile_entity type=0x1, paramA=0x11
	tile_entity_list_end

Room_CaveOfFlames_Bobomb:: @ 080E141C
	.4byte Entities_CaveOfFlames_Bobomb_0
	.4byte Entities_CaveOfFlames_Bobomb_1
	.4byte Enemies_CaveOfFlames_Bobomb
	.4byte TileEntities_CaveOfFlames_Bobomb
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_Bobomb
	.4byte sub_StateChange_CaveOfFlames_Bobomb

Entities_CaveOfFlames_BossDoor_0:: @ 080E143C
	object_raw subtype=0x59, paramB=0x8
	object_raw subtype=0x5e, x=0x268, y=0x78
	object_raw subtype=0x5e, x=0x248, y=0x158
	object_raw subtype=0x5e, x=0x1a0, y=0x178
	object_raw subtype=0x5e, x=0x128, y=0x198
	object_raw subtype=0x5e, x=0xd8, y=0x188
	object_raw subtype=0x5e, x=0x48, y=0x168
	object_raw subtype=0x5e, x=0xa8, y=0x148
	object_raw subtype=0xc, x=0xe0, y=0xa8, paramA=0x4, paramB=0x39
	object_raw subtype=0x39, x=0xa8, y=0x28, paramC=0x36ffff
	object_raw subtype=0x5, x=0x168, y=0x98
	object_raw subtype=0x5, x=0x178, y=0x98
	object_raw subtype=0x5, x=0x168, y=0xa8
	object_raw subtype=0x5, x=0x168, y=0xb8
	object_raw subtype=0x5, x=0x178, y=0xa8, paramA=0x5f
	object_raw subtype=0x5, x=0x178, y=0xb8, paramA=0x5f
	object_raw subtype=0x3, x=0xf8, y=0x68, paramC=0x350000
	object_raw subtype=0x34, x=0xf8, y=0x48, paramA=0x1, paramB=0x350, paramC=0x3501ca
	entity_list_end

Entities_CaveOfFlames_BossDoor_1:: @ 080E156C
	manager subtype=0x14, unknown=0x8
	entity_list_end

Enemies_CaveOfFlames_BossDoor:: @ 080E158C
	entity_list_end

TileEntities_CaveOfFlames_BossDoor:: @ 080E159C
	tile_entity type=0x2, paramA=0x37, paramB=0x755c, paramC=0x684
	tile_entity type=0x2, paramA=0x38, paramB=0x58, paramC=0x6a6, paramD=0x1
	tile_entity type=0x3, paramA=0x39, paramB=0x52, paramC=0xe0, paramD=0xa8
	tile_entity type=0x1, paramA=0x12
	tile_entity_list_end

gUnk_additional_8_CaveOfFlames_BossDoor:: @ 080E15C4
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor.bin"
	.4byte gUnk_080E1674
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor_1.bin"
	.4byte gUnk_080E16AA
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor_2.bin"
	.4byte gUnk_080E16CE
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor_3.bin"
	.4byte gUnk_080E16EC
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor_4.bin"
	.4byte gUnk_080E170A
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor_5.bin"
	.4byte gUnk_080E16EC
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor_6.bin"
	.4byte gUnk_080E170A
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor_7.bin"
	.4byte gUnk_080E16EC
	.incbin "data_080D5360/gUnk_additional_8_CaveOfFlames_BossDoor_8.bin"

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
	.4byte Entities_CaveOfFlames_BossDoor_0
	.4byte Entities_CaveOfFlames_BossDoor_1
	.4byte Enemies_CaveOfFlames_BossDoor
	.4byte TileEntities_CaveOfFlames_BossDoor
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_BossDoor
	.4byte sub_StateChange_CaveOfFlames_BossDoor
	.4byte gUnk_additional_8_CaveOfFlames_BossDoor

Entities_CaveOfFlames_18_0:: @ 080E174C
	entity_list_end

Entities_CaveOfFlames_18_1:: @ 080E175C
	entity_list_end

Enemies_CaveOfFlames_18:: @ 080E176C
	entity_list_end

TileEntities_CaveOfFlames_18:: @ 080E177C
	tile_entity_list_end

Room_CaveOfFlames_18:: @ 080E1784
	.4byte Entities_CaveOfFlames_18_0
	.4byte Entities_CaveOfFlames_18_1
	.4byte Enemies_CaveOfFlames_18
	.4byte TileEntities_CaveOfFlames_18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlames_18
	.4byte sub_StateChange_CaveOfFlames_18

Entities_CaveOfFlamesBoss_Main_0:: @ 080E17A4
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x40030000
	manager subtype=0xe, y=0x168, paramA=0x9, paramB=0x1, paramC=0x40030000
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb03, flag=0x4003
	entity_list_end

gUnk_additional_9_CaveOfFlamesBoss_Main:: @ 080E17E4
	object_raw subtype=0xac, x=0xc0, y=0x90, paramA=0x41
	manager subtype=0xe, y=0x3c, unknown=0x1f, paramA=0xa, paramC=0x80000000
	entity_list_end

gUnk_additional_a_CaveOfFlamesBoss_Main:: @ 080E1814
	object_raw subtype=0x34, x=0xc0, y=0x38, collision=1, paramA=0x2, paramB=0x206, paramC=0x40030246
	object_raw subtype=0x47, x=0xa8, y=0x38, paramC=0x4003003a
	entity_list_end

gUnk_additional_8_CaveOfFlamesBoss_Main:: @ 080E1844
	enemy_raw subtype=0x24, x=0xc0, y=0x98
	entity_list_end

TileEntities_CaveOfFlamesBoss_Main:: @ 080E1864
	tile_entity type=0x1, paramA=0x13
	tile_entity_list_end

Room_CaveOfFlamesBoss_Main:: @ 080E1874
	.4byte Entities_CaveOfFlamesBoss_Main_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte TileEntities_CaveOfFlamesBoss_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CaveOfFlamesBoss_Main
	.4byte sub_StateChange_CaveOfFlamesBoss_Main
	.4byte gUnk_additional_8_CaveOfFlamesBoss_Main
	.4byte gUnk_additional_9_CaveOfFlamesBoss_Main
	.4byte gUnk_additional_a_CaveOfFlamesBoss_Main

Entities_FortressOfWinds_Eyegore_0:: @ 080E18A0
	object_raw subtype=0x3, x=0x58, y=0x88, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x3, x=0x98, y=0x88, paramA=0x1, paramC=0x80010000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x1b0000
	object_raw subtype=0xc, x=0x80, y=0x68, paramA=0x2, paramB=0x1c, paramC=0x1b0000
	enemy_raw subtype=0x43, x=0xd8, y=0x38
	enemy_raw subtype=0x43, x=0x28, y=0x98
	enemy_raw subtype=0x43, x=0x28, y=0x38, paramB=0x5e
	enemy_raw subtype=0x43, x=0xd8, y=0x98, paramB=0x5e
	entity_list_end

Enemies_FortressOfWinds_Eyegore:: @ 080E1930
	entity_list_end

TileEntities_FortressOfWinds_Eyegore:: @ 080E1940
	tile_entity type=0x3, paramA=0x1c, paramB=0x51, paramC=0x80, paramD=0x68
	tile_entity type=0x1, paramA=0x1
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Eyegore:: @ 080E1958
	enemy_raw subtype=0x2b, x=0x60, y=0x50, paramB=0xe188400, paramC=0x300020
	enemy_raw subtype=0x2b, x=0xa0, y=0x50, paramB=0xe188400, paramC=0x300020
	manager subtype=0x28, unknown=0x3, paramB=0x8
	entity_list_end

Room_FortressOfWinds_Eyegore:: @ 080E1998
	.4byte Entities_FortressOfWinds_Eyegore_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_Eyegore
	.4byte TileEntities_FortressOfWinds_Eyegore
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Eyegore
	.4byte sub_StateChange_FortressOfWinds_Eyegore
	.4byte gUnk_additional_8_FortressOfWinds_Eyegore

Entities_FortressOfWinds_BeforeMazaal_0:: @ 080E19BC
	enemy_raw subtype=0x43, x=0x68, y=0x68
	enemy_raw subtype=0x43, x=0xb8, y=0x68
	enemy_raw subtype=0x43, x=0x58, y=0x58, paramB=0x5e
	enemy_raw subtype=0x43, x=0x68, y=0x58, paramB=0x5f
	enemy_raw subtype=0x43, x=0x58, y=0x68, paramB=0x5f
	enemy_raw subtype=0x43, x=0x58, y=0x78, paramB=0x5e
	enemy_raw subtype=0x43, x=0x68, y=0x78, paramB=0x5e
	enemy_raw subtype=0x43, x=0xa8, y=0x58, paramB=0x5f
	enemy_raw subtype=0x43, x=0xb8, y=0x58, paramB=0x5f
	enemy_raw subtype=0x43, x=0xa8, y=0x68, paramB=0x5f
	enemy_raw subtype=0x43, x=0xa8, y=0x78, paramB=0x5e
	enemy_raw subtype=0x43, x=0xb8, y=0x78, paramB=0x5e
	entity_list_end

Enemies_FortressOfWinds_BeforeMazaal:: @ 080E1A8C
	enemy_raw subtype=0x1c, x=0x68, y=0x48, paramB=0x810
	enemy_raw subtype=0x1c, x=0xa8, y=0x88, paramB=0x800
	entity_list_end

TileEntities_FortressOfWinds_BeforeMazaal:: @ 080E1ABC
	tile_entity type=0x1, paramA=0x2
	tile_entity_list_end

Room_FortressOfWinds_BeforeMazaal:: @ 080E1ACC
	.4byte Entities_FortressOfWinds_BeforeMazaal_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_BeforeMazaal
	.4byte TileEntities_FortressOfWinds_BeforeMazaal
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_BeforeMazaal
	.4byte sub_StateChange_FortressOfWinds_BeforeMazaal

Entities_FortressOfWinds_EastKeyLever_0:: @ 080E1AEC
	object_raw subtype=0x3, x=0x168, y=0x108, paramA=0x1, paramC=0x80000001
	object_raw subtype=0x3, x=0x1a8, y=0x108, paramA=0x1, paramC=0x80010001
	manager subtype=0x11, paramC=0x8400001e
	object_raw subtype=0x8, x=0x188, y=0xb8, paramA=0x2, paramC=0x1effff
	object_raw subtype=0x8, x=0x188, y=0xf8, paramC=0x1effff
	object_raw subtype=0x74, x=0x188, y=0x68, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x188, y=0x68, unknown=0x0, paramA=0x3, paramB=0x102
	object_raw subtype=0x74, x=0x38, y=0x118, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x38, y=0x118, unknown=0x0, paramA=0x3, paramB=0x102
	object_raw subtype=0x8, x=0x1f8, y=0xf8, paramA=0x8, paramC=0x1dffff
	object_raw subtype=0x8, x=0x1f8, y=0xb8, paramA=0xa, paramC=0x1dffff
	object_raw subtype=0x54, x=0x88, y=0xf4, paramB=0x200000, paramC=0x80020000
	manager subtype=0x11, paramC=0x80020020
	manager subtype=0xf, x=0xa8, y=0x148, paramA=0x2, paramC=0x200000
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x20001f
	ezlo_hint x=0xc, y=0x20, rx=0x4, ry=0x7, msg=0xb3d, flag=0x46, flag2=0x1f
	enemy_raw subtype=0x43, x=0x1d8, y=0x108
	enemy_raw subtype=0x43, x=0x1d8, y=0x118
	enemy_raw subtype=0x43, x=0x218, y=0x108
	enemy_raw subtype=0x43, x=0x218, y=0x118
	enemy_raw subtype=0x43, x=0x1c8, y=0x158
	enemy_raw subtype=0x43, x=0x1c8, y=0x168
	enemy_raw subtype=0x43, x=0xd8, y=0x108
	enemy_raw subtype=0x43, x=0x108, y=0x108
	enemy_raw subtype=0x43, x=0xe8, y=0x108, paramA=0x1
	enemy_raw subtype=0x43, x=0xf8, y=0x108, paramA=0x1
	enemy_raw subtype=0x43, x=0x1e8, y=0x118, paramA=0x1
	enemy_raw subtype=0x43, x=0x1f8, y=0x118, paramA=0x1
	enemy_raw subtype=0x43, x=0x208, y=0x118, paramA=0x1
	enemy_raw subtype=0x43, x=0x228, y=0x158, paramA=0x2
	enemy_raw subtype=0x43, x=0x228, y=0x168, paramA=0x2
	entity_list_end

Entities_FortressOfWinds_EastKeyLever_1:: @ 080E1CEC
	manager subtype=0x1a, unknown=0x8, paramA=0x2
	manager subtype=0x1a, unknown=0x8, paramA=0x3
	entity_list_end

Enemies_FortressOfWinds_EastKeyLever:: @ 080E1D1C
	enemy_raw subtype=0x2a, x=0x88, y=0x108, paramB=0xe140908, paramC=0x1000070
	enemy_raw subtype=0x2a, x=0xc8, y=0x108, paramB=0xe140a09, paramC=0x1000070
	entity_list_end

TileEntities_FortressOfWinds_EastKeyLever:: @ 080E1D4C
	tile_entity type=0x1, paramA=0x3
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_EastKeyLever:: @ 080E1D5C
	.incbin "data_080D5360/gUnk_additional_8_FortressOfWinds_EastKeyLever.bin"

gUnk_additional_9_FortressOfWinds_EastKeyLever:: @ 080E1D70
	.incbin "data_080D5360/gUnk_additional_9_FortressOfWinds_EastKeyLever.bin"

Room_FortressOfWinds_EastKeyLever:: @ 080E1D84
	.4byte Entities_FortressOfWinds_EastKeyLever_0
	.4byte Entities_FortressOfWinds_EastKeyLever_1
	.4byte Enemies_FortressOfWinds_EastKeyLever
	.4byte TileEntities_FortressOfWinds_EastKeyLever
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_EastKeyLever
	.4byte sub_StateChange_FortressOfWinds_EastKeyLever
	.4byte gUnk_additional_8_FortressOfWinds_EastKeyLever
	.4byte gUnk_additional_9_FortressOfWinds_EastKeyLever

Entities_FortressOfWinds_PitPlatforms_0:: @ 080E1DAC
	object_raw subtype=0x23, x=0x56, y=0x28, paramB=0x5a00, paramC=0x80000021
	object_raw subtype=0x23, x=0x9a, y=0x28, paramB=0x5a00, paramC=0x80010021
	manager subtype=0x11, paramC=0x84000021
	object_raw subtype=0x8, x=0x78, y=0x28, paramC=0x21ffff
	object_raw subtype=0x23, x=0xf8, y=0x40, paramA=0x1, paramB=0x5a00, paramC=0x80020022
	object_raw subtype=0x23, x=0xf8, y=0x90, paramA=0x1, paramB=0x5a00, paramC=0x80030022
	manager subtype=0x11, paramC=0x84020022
	object_raw subtype=0x8, x=0xf8, y=0x68, paramA=0x1, paramC=0x22ffff
	object_raw subtype=0x16, x=0x50, y=0x90, paramA=0x2, paramB=0x8
	object_raw subtype=0x16, x=0x30, y=0x60, paramA=0x2, paramB=0x9
	object_raw subtype=0x16, x=0xc0, y=0x40, paramA=0x2, paramB=0xa
	enemy_raw subtype=0x43, x=0x88, y=0x38
	enemy_raw subtype=0x43, x=0x68, y=0x88
	enemy_raw subtype=0x43, x=0xe8, y=0x78
	enemy_raw subtype=0x43, x=0x68, y=0x38, paramB=0x5e
	enemy_raw subtype=0x43, x=0x88, y=0x88, paramB=0x5e
	enemy_raw subtype=0x43, x=0xe8, y=0x58, paramB=0x5e
	entity_list_end

Enemies_FortressOfWinds_PitPlatforms:: @ 080E1ECC
	entity_list_end

TileEntities_FortressOfWinds_PitPlatforms:: @ 080E1EDC
	tile_entity type=0x1, paramA=0x4
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_PitPlatforms:: @ 080E1EEC
	.incbin "data_080D5360/gUnk_additional_8_FortressOfWinds_PitPlatforms.bin"

gUnk_additional_9_FortressOfWinds_PitPlatforms:: @ 080E1F0A
	.incbin "data_080D5360/gUnk_additional_9_FortressOfWinds_PitPlatforms.bin"

gUnk_additional_a_FortressOfWinds_PitPlatforms:: @ 080E1F28
	.incbin "data_080D5360/gUnk_additional_a_FortressOfWinds_PitPlatforms.bin"

Room_FortressOfWinds_PitPlatforms:: @ 080E1F48
	.4byte Entities_FortressOfWinds_PitPlatforms_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_PitPlatforms
	.4byte TileEntities_FortressOfWinds_PitPlatforms
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_PitPlatforms
	.4byte sub_StateChange_FortressOfWinds_PitPlatforms
	.4byte gUnk_additional_8_FortressOfWinds_PitPlatforms
	.4byte gUnk_additional_9_FortressOfWinds_PitPlatforms
	.4byte gUnk_additional_a_FortressOfWinds_PitPlatforms

Entities_FortressOfWinds_WestKeyLever_0:: @ 080E1F74
	manager subtype=0x1a, unknown=0x8, paramA=0x4
	object_raw subtype=0x54, x=0xd8, y=0x24, paramB=0x200000, paramC=0x80000000
	manager subtype=0x11, paramC=0x80000024
	manager subtype=0xf, x=0x98, y=0x68, paramA=0x1, paramC=0x240000
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x240023
	ezlo_hint x=0x18, y=0x6, rx=0x3, ry=0x5, msg=0xb3d, flag=0x46, flag2=0x23
	enemy_raw subtype=0x43, x=0x48, y=0x48
	enemy_raw subtype=0x43, x=0x38, y=0x88
	enemy_raw subtype=0x43, x=0x48, y=0x88
	enemy_raw subtype=0x43, x=0x38, y=0x98
	enemy_raw subtype=0x43, x=0x48, y=0x98
	enemy_raw subtype=0x43, x=0x48, y=0x38
	enemy_raw subtype=0x43, x=0x38, y=0x48
	enemy_raw subtype=0x43, x=0x38, y=0x38
	object_raw subtype=0x39, x=0x198, y=0x28, paramC=0x26ffff
	manager subtype=0xd, x=0x11a, y=0x1, paramC=0x250000
	object_raw subtype=0x34, x=0x198, y=0x68, paramA=0x1, paramB=0x2158, paramC=0x250188
	entity_list_end

Enemies_FortressOfWinds_WestKeyLever:: @ 080E2094
	enemy_raw subtype=0x2c, x=0x68, y=0x38
	enemy_raw subtype=0x2c, x=0x58, y=0x58
	enemy_raw subtype=0x2c, x=0x88, y=0x98
	entity_list_end

TileEntities_FortressOfWinds_WestKeyLever:: @ 080E20D4
	tile_entity type=0x1, paramA=0x5
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_WestKeyLever:: @ 080E20E4
	.incbin "data_080D5360/gUnk_additional_8_FortressOfWinds_WestKeyLever.bin"

gUnk_additional_9_FortressOfWinds_WestKeyLever:: @ 080E2104
	.incbin "data_080D5360/gUnk_additional_9_FortressOfWinds_WestKeyLever.bin"

gUnk_additional_a_FortressOfWinds_WestKeyLever:: @ 080E2118
	.incbin "data_080D5360/gUnk_additional_a_FortressOfWinds_WestKeyLever.bin"

Room_FortressOfWinds_WestKeyLever:: @ 080E212C
	.4byte Entities_FortressOfWinds_WestKeyLever_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_WestKeyLever
	.4byte TileEntities_FortressOfWinds_WestKeyLever
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_WestKeyLever
	.4byte sub_StateChange_FortressOfWinds_WestKeyLever
	.4byte gUnk_additional_8_FortressOfWinds_WestKeyLever
	.4byte gUnk_additional_9_FortressOfWinds_WestKeyLever
	.4byte gUnk_additional_a_FortressOfWinds_WestKeyLever

Entities_FortressOfWinds_Darknut_0:: @ 080E2158
	manager subtype=0x1e, x=0x70, y=0x80, paramB=0x200030, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x278000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x270048
	object_raw subtype=0x34, x=0x88, y=0x68, paramB=0x2158, paramC=0x480186
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb04, flag=0x27, flag2=0x8000
	enemy_raw subtype=0x43, x=0x48, y=0x28
	enemy_raw subtype=0x43, x=0x38, y=0x38
	enemy_raw subtype=0x43, x=0xc8, y=0x28
	enemy_raw subtype=0x43, x=0xd8, y=0x38
	enemy_raw subtype=0x43, x=0x38, y=0x88
	enemy_raw subtype=0x43, x=0x48, y=0x98
	enemy_raw subtype=0x43, x=0xd8, y=0x88
	enemy_raw subtype=0x43, x=0xc8, y=0x98
	enemy_raw subtype=0x43, x=0xd8, y=0x28
	enemy_raw subtype=0x43, x=0x38, y=0x98
	enemy_raw subtype=0x43, x=0x38, y=0x28
	enemy_raw subtype=0x43, x=0xd8, y=0x98
	entity_list_end

Entities_FortressOfWinds_Darknut_1:: @ 080E2278
	object_raw subtype=0x4f, x=0x100, y=0x78, paramA=0x19, paramB=0x1
	object_raw subtype=0x4f, x=0x88, y=0xc0, paramA=0x19, paramB=0x2
	entity_list_end

Enemies_FortressOfWinds_Darknut:: @ 080E22A8
	entity_list_end

TileEntities_FortressOfWinds_Darknut:: @ 080E22B8
	tile_entity type=0xd, paramB=0x2d00
	tile_entity type=0x1, paramA=0x8
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Darknut:: @ 080E22D0
	enemy_raw subtype=0x5, x=0x88, y=0x58, unknown=0x2f, paramA=0x1, paramB=0x10160000, paramC=0x200030
	object_raw subtype=0x8, x=0x88, y=0xa8, paramA=0x2, paramC=0x48ffff
	object_raw subtype=0x8, x=0xe8, y=0x78, paramA=0x1, paramC=0x48ffff
	entity_list_end

Room_FortressOfWinds_Darknut:: @ 080E2310
	.4byte Entities_FortressOfWinds_Darknut_0
	.4byte Entities_FortressOfWinds_Darknut_1
	.4byte Enemies_FortressOfWinds_Darknut
	.4byte TileEntities_FortressOfWinds_Darknut
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Darknut
	.4byte sub_StateChange_FortressOfWinds_Darknut
	.4byte gUnk_additional_8_FortressOfWinds_Darknut

Entities_FortressOfWinds_EyeBridge_0:: @ 080E2334
	object_raw subtype=0x23, x=0x28, y=0x58, paramA=0x3, paramC=0x80000028
	object_raw subtype=0x23, x=0x28, y=0x98, paramA=0x3, paramC=0x80010028
	manager subtype=0x11, paramC=0x84000028
	manager subtype=0x5, x=0xa, y=0x7, paramB=0x13, paramC=0x280002
	enemy_raw subtype=0x43, x=0xd8, y=0x98
	enemy_raw subtype=0x43, x=0x38, y=0x48
	enemy_raw subtype=0x43, x=0x38, y=0xa8
	enemy_raw subtype=0x43, x=0xd8, y=0x88
	enemy_raw subtype=0x43, x=0xd8, y=0xa8, paramB=0x5e
	entity_list_end

Entities_FortressOfWinds_EyeBridge_1:: @ 080E23D4
	object_raw subtype=0x4f, x=0x10, y=0x78, paramA=0x19, paramB=0x3
	entity_list_end

Enemies_FortressOfWinds_EyeBridge:: @ 080E23F4
	enemy_raw subtype=0x1a, paramB=0xe0c0202, paramC=0x400080
	entity_list_end

TileEntities_FortressOfWinds_EyeBridge:: @ 080E2414
	tile_entity type=0x1, paramA=0x9
	tile_entity_list_end

Room_FortressOfWinds_EyeBridge:: @ 080E2424
	.4byte Entities_FortressOfWinds_EyeBridge_0
	.4byte Entities_FortressOfWinds_EyeBridge_1
	.4byte Enemies_FortressOfWinds_EyeBridge
	.4byte TileEntities_FortressOfWinds_EyeBridge
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_EyeBridge
	.4byte sub_StateChange_FortressOfWinds_EyeBridge

Entities_FortressOfWinds_Pit_0:: @ 080E2444
	object_raw subtype=0x8, x=0x68, y=0x178, paramA=0xa, paramC=0x36ffff
	object_raw subtype=0x8, x=0xa8, y=0x178, paramA=0xa, paramC=0x37ffff
	object_raw subtype=0x16, x=0x68, y=0x88, paramA=0x3, paramB=0x8
	object_raw subtype=0x54, x=0xc8, y=0x17c, paramB=0x200002, paramC=0x80000000
	manager subtype=0x5, x=0xa, y=0x7, paramB=0x2a, paramC=0x80000001
	manager subtype=0x5, x=0xb, y=0x7, paramB=0x2a, paramC=0x80000001
	ezlo_hint x=0x12, y=0x8, rx=0x4, ry=0x2, msg=0xb3c, flag=0x29
	object_raw subtype=0xae, x=0x58, y=0x78
	object_raw subtype=0xae, x=0x78, y=0x78
	object_raw subtype=0xae, x=0x68, y=0xa8
	object_raw subtype=0xae, x=0x58, y=0xd8
	object_raw subtype=0xae, x=0x78, y=0xd8
	object_raw subtype=0xae, x=0x68, y=0x108
	entity_list_end

Enemies_FortressOfWinds_Pit:: @ 080E2524
	entity_list_end

TileEntities_FortressOfWinds_Pit:: @ 080E2534
	tile_entity type=0x1, paramA=0xa
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Pit:: @ 080E2544
	.incbin "data_080D5360/gUnk_additional_8_FortressOfWinds_Pit.bin"

Room_FortressOfWinds_Pit:: @ 080E2564
	.4byte Entities_FortressOfWinds_Pit_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_Pit
	.4byte TileEntities_FortressOfWinds_Pit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Pit
	.4byte sub_StateChange_FortressOfWinds_Pit
	.4byte gUnk_additional_8_FortressOfWinds_Pit

Entities_FortressOfWinds_Wallmaster_0:: @ 080E2588
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x2a0000
	object_raw subtype=0x74, x=0x88, y=0x68, collision=2, paramC=0x2a0000
	manager subtype=0x3, x=0x88, y=0x68, unknown=0x0, paramA=0x3, paramB=0x201
	enemy_raw subtype=0x43, x=0x38, y=0x28
	enemy_raw subtype=0x43, x=0xc8, y=0x28
	enemy_raw subtype=0x43, x=0xd8, y=0x28
	enemy_raw subtype=0x43, x=0x38, y=0xa8
	enemy_raw subtype=0x43, x=0x48, y=0xa8
	enemy_raw subtype=0x43, x=0xd8, y=0xa8
	enemy_raw subtype=0x43, x=0x48, y=0x28
	enemy_raw subtype=0x43, x=0xc8, y=0xa8
	enemy_raw subtype=0x43, x=0x58, y=0x58
	enemy_raw subtype=0x43, x=0xb8, y=0x78
	enemy_raw subtype=0x43, x=0x88, y=0x98
	entity_list_end

Entities_FortressOfWinds_Wallmaster_1:: @ 080E2678
	object_raw subtype=0x4f, x=0x100, y=0x38, paramA=0x19, paramB=0x1
	entity_list_end

Enemies_FortressOfWinds_Wallmaster:: @ 080E2698
	entity_list_end

TileEntities_FortressOfWinds_Wallmaster:: @ 080E26A8
	tile_entity type=0x1, paramA=0xb
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Wallmaster:: @ 080E26B8
	enemy_raw subtype=0x23, x=0x48, y=0x28, paramB=0xe160000, paramC=0x400030
	enemy_raw subtype=0x23, x=0x58, y=0xa8, paramB=0xe160000, paramC=0x400030
	enemy_raw subtype=0x23, x=0xa8, y=0x58, paramB=0xe160000, paramC=0x400030
	entity_list_end

Room_FortressOfWinds_Wallmaster:: @ 080E26F8
	.4byte Entities_FortressOfWinds_Wallmaster_0
	.4byte Entities_FortressOfWinds_Wallmaster_1
	.4byte Enemies_FortressOfWinds_Wallmaster
	.4byte TileEntities_FortressOfWinds_Wallmaster
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Wallmaster
	.4byte sub_StateChange_FortressOfWinds_Wallmaster
	.4byte gUnk_additional_8_FortressOfWinds_Wallmaster

Entities_FortressOfWinds_Clone_0:: @ 080E271C
	object_raw subtype=0x3, x=0xa8, y=0xc8, paramA=0x1, paramC=0x80000002
	object_raw subtype=0x3, x=0xc8, y=0xc8, paramA=0x1, paramC=0x80010002
	object_raw subtype=0x3, x=0xa8, y=0x108, paramA=0x1, paramC=0x80020002
	object_raw subtype=0x3, x=0xc8, y=0x108, paramA=0x1, paramC=0x80030002
	manager subtype=0x11, paramC=0x8c00002b
	manager subtype=0x17, x=0xb8, y=0xe8, paramA=0x53, paramB=0x20200, paramC=0x2d002e
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x2b002d
	object_raw subtype=0x27, x=0x98, y=0xe8
	object_raw subtype=0x27, x=0xd8, y=0xe8
	object_raw subtype=0x8, x=0x38, y=0x178, paramA=0xa, paramC=0x2cffff
	enemy_raw subtype=0x43, x=0x28, y=0x88
	enemy_raw subtype=0x43, x=0x38, y=0x88
	enemy_raw subtype=0x43, x=0x28, y=0x98
	enemy_raw subtype=0x43, x=0x38, y=0x98
	enemy_raw subtype=0x43, x=0x28, y=0xd8, paramA=0x1
	enemy_raw subtype=0x43, x=0x38, y=0xe8, paramA=0x1
	entity_list_end

Entities_FortressOfWinds_Clone_1:: @ 080E282C
	object_raw subtype=0x4f, x=0x38, y=0x190, paramA=0x19, paramB=0x2
	object_raw subtype=0x4f, y=0x38, paramA=0x19, paramB=0x3
	object_raw subtype=0x4f, x=0x38, y=0x190, paramA=0x19, paramB=0x2
	entity_list_end

Enemies_FortressOfWinds_Clone:: @ 080E286C
	enemy_raw subtype=0x2c, x=0xa8, y=0x48, paramB=0xc0a0000, paramC=0x2000a0
	enemy_raw subtype=0x2c, x=0xc8, y=0x68, paramB=0xc0a0000, paramC=0x2000a0
	projectile_raw subtype=0x1e, x=0xa8, y=0x130, unknown=0x3, paramA=0x3, paramC=0x80ff7f
	projectile_raw subtype=0x1e, x=0xd0, y=0x130, unknown=0x3, paramA=0x3, paramC=0x80ff7f
	entity_list_end

TileEntities_FortressOfWinds_Clone:: @ 080E28BC
	tile_entity type=0x1, paramA=0xc
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Clone:: @ 080E28CC
	.incbin "data_080D5360/gUnk_additional_8_FortressOfWinds_Clone.bin"

Room_FortressOfWinds_Clone:: @ 080E28EC
	.4byte Entities_FortressOfWinds_Clone_0
	.4byte Entities_FortressOfWinds_Clone_1
	.4byte Enemies_FortressOfWinds_Clone
	.4byte TileEntities_FortressOfWinds_Clone
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Clone
	.4byte sub_StateChange_FortressOfWinds_Clone
	.4byte gUnk_additional_8_FortressOfWinds_Clone

Entities_FortressOfWinds_SpikeTraps_0:: @ 080E2910
	object_raw subtype=0x3, x=0xd8, y=0x68, paramC=0x2f0000
	object_raw subtype=0x8, x=0x98, y=0xa8, paramA=0x2, paramC=0x2fffff
	entity_list_end

Entities_FortressOfWinds_SpikeTraps_1:: @ 080E2940
	object_raw subtype=0x4f, x=0x88, paramA=0x19
	object_raw subtype=0x4f, x=0x98, y=0xc0, paramA=0x19, paramB=0x2
	entity_list_end

Enemies_FortressOfWinds_SpikeTraps:: @ 080E2970
	enemy_raw subtype=0x2f, x=0xe8, y=0x28, paramA=0x8
	enemy_raw subtype=0x2f, x=0xd8, y=0x38, paramA=0x9
	enemy_raw subtype=0x2f, x=0x48, y=0x88, paramA=0xa
	enemy_raw subtype=0x2f, x=0x38, y=0x98, paramA=0xb
	entity_list_end

TileEntities_FortressOfWinds_SpikeTraps:: @ 080E29C0
	tile_entity type=0x1, paramA=0xd
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_SpikeTraps:: @ 080E29D0
	.incbin "data_080D5360/gUnk_additional_8_FortressOfWinds_SpikeTraps.bin"

gUnk_additional_9_FortressOfWinds_SpikeTraps:: @ 080E2A06
	.incbin "data_080D5360/gUnk_additional_9_FortressOfWinds_SpikeTraps.bin"

gUnk_additional_a_FortressOfWinds_SpikeTraps:: @ 080E2A3C
	.incbin "data_080D5360/gUnk_additional_a_FortressOfWinds_SpikeTraps.bin"

gUnk_additional_b_FortressOfWinds_SpikeTraps:: @ 080E2A72
	.incbin "data_080D5360/gUnk_additional_b_FortressOfWinds_SpikeTraps.bin"

Room_FortressOfWinds_SpikeTraps:: @ 080E2AA8
	.4byte Entities_FortressOfWinds_SpikeTraps_0
	.4byte Entities_FortressOfWinds_SpikeTraps_1
	.4byte Enemies_FortressOfWinds_SpikeTraps
	.4byte TileEntities_FortressOfWinds_SpikeTraps
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_SpikeTraps
	.4byte sub_StateChange_FortressOfWinds_SpikeTraps
	.4byte gUnk_additional_8_FortressOfWinds_SpikeTraps
	.4byte gUnk_additional_9_FortressOfWinds_SpikeTraps
	.4byte gUnk_additional_a_FortressOfWinds_SpikeTraps
	.4byte gUnk_additional_b_FortressOfWinds_SpikeTraps

Entities_FortressOfWinds_Mazaal_0:: @ 080E2AD8
	object_raw subtype=0x89, x=0xb8, y=0x38, paramA=0x8, paramB=0x9
	object_raw subtype=0x5, x=0x28, y=0xa8, paramA=0x5e
	object_raw subtype=0x5, x=0x38, y=0xa8, paramA=0x5e
	object_raw subtype=0x5, x=0x138, y=0xa8, paramA=0x5e
	object_raw subtype=0x5, x=0x148, y=0xa8, paramA=0x5e
	object_raw subtype=0x74, x=0x38, y=0x38, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x38, y=0x38, unknown=0x0, paramA=0x3, paramB=0x102
	object_raw subtype=0x74, x=0x138, y=0x38, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x138, y=0x38, unknown=0x0, paramA=0x3, paramB=0x102
	object_raw subtype=0x8, x=0xb8, y=0xb8, paramA=0x12, paramC=0x8000ffff
	object_raw subtype=0x8, x=0xb8, y=0x18, paramC=0x31ffff
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb05, flag=0x31
	entity_list_end

Enemies_FortressOfWinds_Mazaal:: @ 080E2BA8
	entity_list_end

TileEntities_FortressOfWinds_Mazaal:: @ 080E2BB8
	tile_entity type=0x1, paramA=0xe
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Mazaal:: @ 080E2BC8
	.incbin "data_080D5360/gUnk_additional_8_FortressOfWinds_Mazaal.bin"

gUnk_additional_9_FortressOfWinds_Mazaal:: @ 080E2BE8
	.incbin "data_080D5360/gUnk_additional_9_FortressOfWinds_Mazaal.bin"

Room_FortressOfWinds_Mazaal:: @ 080E2C08
	.4byte Entities_FortressOfWinds_Mazaal_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_Mazaal
	.4byte TileEntities_FortressOfWinds_Mazaal
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Mazaal
	.4byte sub_StateChange_FortressOfWinds_Mazaal
	.4byte gUnk_additional_8_FortressOfWinds_Mazaal
	.4byte gUnk_additional_9_FortressOfWinds_Mazaal

Entities_FortressOfWinds_Stalfos_0:: @ 080E2C30
	object_raw subtype=0x8, x=0xe8, y=0x98, paramA=0x11, paramC=0x49ffff
	object_raw subtype=0x8, x=0x88, y=0xb8, paramA=0x2, paramC=0x490000
	object_raw subtype=0x8, x=0x98, y=0x18, paramC=0x2f
	manager subtype=0x1e, x=0x70, y=0x60, paramB=0x500030, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x308000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x300049
	enemy_raw subtype=0x43, x=0x68, y=0x28, paramB=0x5f
	enemy_raw subtype=0x43, x=0x78, y=0x28, paramB=0x5d
	entity_list_end

Entities_FortressOfWinds_Stalfos_1:: @ 080E2CC0
	object_raw subtype=0x4f, x=0x98, paramA=0x19
	entity_list_end

Enemies_FortressOfWinds_Stalfos:: @ 080E2CE0
	entity_list_end

TileEntities_FortressOfWinds_Stalfos:: @ 080E2CF0
	tile_entity type=0x1, paramA=0xf
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Stalfos:: @ 080E2D00
	enemy_raw subtype=0x42, x=0x68, y=0x68, unknown=0x2f, paramB=0xa120000, paramC=0x600040
	enemy_raw subtype=0x42, x=0xa8, y=0x68, unknown=0x2f, paramB=0xa120000, paramC=0x600040
	enemy_raw subtype=0x42, x=0x68, y=0xa8, unknown=0x2f, paramB=0xa120000, paramC=0x600040
	enemy_raw subtype=0x42, x=0xa8, y=0xa8, unknown=0x2f, paramB=0xa120000, paramC=0x600040
	manager subtype=0x28, unknown=0x3, paramB=0x8
	entity_list_end

Room_FortressOfWinds_Stalfos:: @ 080E2D60
	.4byte Entities_FortressOfWinds_Stalfos_0
	.4byte Entities_FortressOfWinds_Stalfos_1
	.4byte Enemies_FortressOfWinds_Stalfos
	.4byte TileEntities_FortressOfWinds_Stalfos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Stalfos
	.4byte sub_StateChange_FortressOfWinds_Stalfos
	.4byte gUnk_additional_8_FortressOfWinds_Stalfos

Entities_FortressOfWinds_EntranceMoleMitts_0:: @ 080E2D84
	object_raw subtype=0x23, x=0x28, y=0x68, paramA=0x3, paramC=0x330033
	object_raw subtype=0x8, x=0x28, y=0x98, paramA=0x3, paramC=0x330000
	enemy_raw subtype=0x43, x=0xc8, y=0x68
	enemy_raw subtype=0x43, x=0xd8, y=0x68
	enemy_raw subtype=0x43, x=0xd8, y=0x88
	enemy_raw subtype=0x43, x=0xc8, y=0x78, paramA=0x1
	enemy_raw subtype=0x43, x=0xd8, y=0x78, paramA=0x1
	enemy_raw subtype=0x43, x=0xc8, y=0x88, paramB=0x5e
.ifdef USA_DEMOS
	enemy_raw subtype=0x43, x=0x78, y=0x28
	enemy_raw subtype=0x43, x=0x98, y=0x28
.endif
	entity_list_end

Enemies_FortressOfWinds_EntranceMoleMitts:: @ 080E2E34
	entity_list_end

TileEntities_FortressOfWinds_EntranceMoleMitts:: @ 080E2E44
	tile_entity type=0x4, paramA=0x34, paramB=0x2, paramC=0x88, paramD=0x18
	tile_entity type=0x1, paramA=0x10
	tile_entity_list_end

Room_FortressOfWinds_EntranceMoleMitts:: @ 080E2E5C
	.4byte Entities_FortressOfWinds_EntranceMoleMitts_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_EntranceMoleMitts
	.4byte TileEntities_FortressOfWinds_EntranceMoleMitts
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_EntranceMoleMitts
	.4byte sub_StateChange_Dojos_Waveblade0

Entities_FortressOfWinds_Main2F_0:: @ 080E2E7C
	object_raw subtype=0x8, x=0x68, y=0x18, paramA=0x8, paramC=0x36ffff
	object_raw subtype=0x8, x=0xa8, y=0x18, paramA=0x8, paramC=0x37ffff
	object_raw subtype=0xc, x=0x88, y=0xc8, paramA=0x4, paramB=0x39
	enemy_raw subtype=0x43, x=0x38, y=0x168
	enemy_raw subtype=0x43, x=0xd8, y=0x168
	enemy_raw subtype=0x43, x=0x28, y=0x168, paramB=0x5e
	enemy_raw subtype=0x43, x=0xe8, y=0x168, paramB=0x5e
	enemy_raw subtype=0x43, x=0x68, y=0x48, paramA=0x2
	enemy_raw subtype=0x43, x=0xa8, y=0x48, paramA=0x2
	enemy_raw subtype=0x43, x=0x28, y=0x28
	enemy_raw subtype=0x43, x=0x28, y=0x38
	enemy_raw subtype=0x43, x=0xe8, y=0x28
	enemy_raw subtype=0x43, x=0xe8, y=0x38
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x350000
	manager subtype=0xb, unknown=0x0, paramB=0x9, paramC=0x380000
	entity_list_end

Enemies_FortressOfWinds_Main2F:: @ 080E2F7C
	enemy_raw subtype=0x42, x=0x38, y=0x118, paramB=0xe1a0000, paramC=0x1000020
	enemy_raw subtype=0x42, x=0x38, y=0x148, paramB=0xe1a0000, paramC=0x1000020
	enemy_raw subtype=0x42, x=0xd8, y=0x118, paramB=0xe1a0000, paramC=0x1000020
	enemy_raw subtype=0x42, x=0xd8, y=0x148, paramB=0xe1a0000, paramC=0x1000020
	manager subtype=0x28, unknown=0x3, paramB=0x2
	enemy_raw subtype=0x1f, x=0x28, y=0x68, paramA=0x2, paramC=0x100058
	enemy_raw subtype=0x1f, x=0xe8, y=0x68, paramA=0x2, paramC=0x100058
	entity_list_end

TileEntities_FortressOfWinds_Main2F:: @ 080E2FFC
	tile_entity type=0x3, paramA=0x39, paramB=0x50, paramC=0x88, paramD=0xc8
	tile_entity type=0x1, paramA=0x11
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Main2F:: @ 080E3014
	enemy_raw subtype=0x2b, x=0x30, y=0x90, paramB=0x1e1a0000, paramC=0x800020
	entity_list_end

gUnk_additional_9_FortressOfWinds_Main2F:: @ 080E3034
	enemy_raw subtype=0x2b, x=0xe0, y=0x90, paramB=0x1e1a0000, paramC=0x800020
	entity_list_end

Room_FortressOfWinds_Main2F:: @ 080E3054
	.4byte Entities_FortressOfWinds_Main2F_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_Main2F
	.4byte TileEntities_FortressOfWinds_Main2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Main2F
	.4byte sub_StateChange_Dojos_Waveblade1
	.4byte gUnk_additional_8_FortressOfWinds_Main2F
	.4byte gUnk_additional_9_FortressOfWinds_Main2F

Entities_FortressOfWinds_MinishHole_0:: @ 080E307C
	object_raw subtype=0x4e, x=0x78, y=0x20, collision=2, paramB=0x800
	object_raw subtype=0x74, x=0x48, y=0x78, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x48, y=0x78, unknown=0x0, paramA=0x3, paramB=0x101
	enemy_raw subtype=0x43, x=0xc8, y=0x98
	enemy_raw subtype=0x43, x=0xc8, y=0xa8
	entity_list_end

Enemies_FortressOfWinds_MinishHole:: @ 080E30DC
	enemy_raw subtype=0x23, x=0xa8, y=0x78, paramB=0xa140000, paramC=0x600070
	enemy_raw subtype=0x23, x=0xb8, y=0x88, paramB=0xa140000, paramC=0x600070
	entity_list_end

TileEntities_FortressOfWinds_MinishHole:: @ 080E310C
	tile_entity type=0x1, paramA=0x12
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_MinishHole:: @ 080E311C
	.incbin "data_080D5360/gUnk_additional_8_FortressOfWinds_MinishHole.bin"

Room_FortressOfWinds_MinishHole:: @ 080E3130
	.4byte Entities_FortressOfWinds_MinishHole_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_MinishHole
	.4byte TileEntities_FortressOfWinds_MinishHole
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_MinishHole
	.4byte sub_StateChange_Dojos_Waveblade2
	.4byte gUnk_additional_8_FortressOfWinds_MinishHole

Entities_FortressOfWinds_BossKey_0:: @ 080E3154
	object_raw subtype=0xc, x=0xc0, y=0x48, paramA=0x4, paramB=0x3a
	entity_list_end

Entities_FortressOfWinds_BossKey_1:: @ 080E3174
	object_raw subtype=0x4f, x=0x38, paramA=0x19
	entity_list_end

Enemies_FortressOfWinds_BossKey:: @ 080E3194
	entity_list_end

TileEntities_FortressOfWinds_BossKey:: @ 080E31A4
	tile_entity type=0x3, paramA=0x3a, paramB=0x52, paramC=0xc0, paramD=0x48
	tile_entity type=0x1, paramA=0x13
	tile_entity_list_end

Room_FortressOfWinds_BossKey:: @ 080E31BC
	.4byte Entities_FortressOfWinds_BossKey_0
	.4byte Entities_FortressOfWinds_BossKey_1
	.4byte Enemies_FortressOfWinds_BossKey
	.4byte TileEntities_FortressOfWinds_BossKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_BossKey
	.4byte sub_StateChange_Dojos_Waveblade3

Entities_FortressOfWinds_WestStairs2F_0:: @ 080E31DC
	entity_list_end

Entities_FortressOfWinds_WestStairs2F_1:: @ 080E31EC
	manager subtype=0x1a, unknown=0x8, paramA=0x5
	entity_list_end

Enemies_FortressOfWinds_WestStairs2F:: @ 080E320C
	enemy_raw subtype=0x8, x=0x48, y=0x68
	enemy_raw subtype=0x8, x=0xc8, y=0x68
	enemy_raw subtype=0x42, x=0xb8, y=0x58, paramB=0xe0e0000, paramC=0x300070
	enemy_raw subtype=0x42, x=0xd8, y=0x78, paramB=0xe0e0000, paramC=0x300070
	entity_list_end

TileEntities_FortressOfWinds_WestStairs2F:: @ 080E325C
	tile_entity type=0x1, paramA=0x14
	tile_entity_list_end

Room_FortressOfWinds_WestStairs2F:: @ 080E326C
	.4byte Entities_FortressOfWinds_WestStairs2F_0
	.4byte Entities_FortressOfWinds_WestStairs2F_1
	.4byte Enemies_FortressOfWinds_WestStairs2F
	.4byte TileEntities_FortressOfWinds_WestStairs2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_WestStairs2F
	.4byte sub_StateChange_Dojos_Waveblade4

Entities_FortressOfWinds_EastStairs2F_0:: @ 080E328C
	manager subtype=0x11, paramC=0x8000003b
	manager subtype=0x11, paramC=0x8001003c
	entity_list_end

Entities_FortressOfWinds_EastStairs2F_1:: @ 080E32BC
	object_raw subtype=0x54, x=0x40, y=0xac, paramB=0x200002, paramC=0x80000000
	object_raw subtype=0x8, x=0x88, y=0xa8, paramA=0x2, paramC=0x3b0000
	object_raw subtype=0x54, x=0xd0, y=0xac, paramB=0x200002, paramC=0x80010000
	object_raw subtype=0xc, x=0xc8, y=0x38, paramA=0x1, paramC=0x3c0000
	manager subtype=0x1a, unknown=0x8, paramA=0x6
	enemy_raw subtype=0x43, x=0x58, y=0x58
	enemy_raw subtype=0x43, x=0x58, y=0x68
	enemy_raw subtype=0x43, x=0x58, y=0x78
	enemy_raw subtype=0x43, x=0xb8, y=0x58
	enemy_raw subtype=0x43, x=0xb8, y=0x68
	enemy_raw subtype=0x43, x=0xb8, y=0x78
	enemy_raw subtype=0x43, x=0x38, y=0x68, paramA=0x2
	enemy_raw subtype=0x43, x=0xd8, y=0x68, paramA=0x2
	entity_list_end

Enemies_FortressOfWinds_EastStairs2F:: @ 080E339C
	enemy_raw subtype=0x1c, x=0x68, y=0x98, paramA=0x1, paramB=0x1018
	entity_list_end

TileEntities_FortressOfWinds_EastStairs2F:: @ 080E33BC
	tile_entity type=0x2, paramA=0x3d, paramB=0x715c, paramC=0xc4
	tile_entity type=0x2, paramA=0x3e, paramB=0x725c, paramC=0xcc
	tile_entity type=0x1, paramA=0x15
	tile_entity_list_end

Room_FortressOfWinds_EastStairs2F:: @ 080E33DC
	.4byte Entities_FortressOfWinds_EastStairs2F_0
	.4byte Entities_FortressOfWinds_EastStairs2F_1
	.4byte Enemies_FortressOfWinds_EastStairs2F
	.4byte TileEntities_FortressOfWinds_EastStairs2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_EastStairs2F
	.4byte sub_StateChange_Dojos_Waveblade5

Entities_FortressOfWinds_WestStairs1F_0:: @ 080E33FC
	ezlo_hint x=0x4, y=0x10, rx=0x8, ry=0x3, msg=0xb14, flag=0x40
	manager subtype=0x17, x=0x68, y=0x68, paramA=0x53, paramB=0x10400, paramC=0x24003f
	enemy_raw subtype=0x43, x=0x28, y=0x68, paramB=0x5f
	enemy_raw subtype=0x43, x=0x28, y=0x78, paramB=0x5f
	entity_list_end

Entities_FortressOfWinds_WestStairs1F_1:: @ 080E344C
	entity_list_end

Enemies_FortressOfWinds_WestStairs1F:: @ 080E345C
	entity_list_end

TileEntities_FortressOfWinds_WestStairs1F:: @ 080E346C
	tile_entity type=0x1, paramA=0x16
	tile_entity_list_end

Room_FortressOfWinds_WestStairs1F:: @ 080E347C
	.4byte Entities_FortressOfWinds_WestStairs1F_0
	.4byte Entities_FortressOfWinds_WestStairs1F_1
	.4byte Enemies_FortressOfWinds_WestStairs1F
	.4byte TileEntities_FortressOfWinds_WestStairs1F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_WestStairs1F
	.4byte sub_StateChange_Dojos_Waveblade6

Entities_FortressOfWinds_CenterStairs1F_0:: @ 080E349C
	ezlo_hint x=0x6, y=0x10, rx=0x9, ry=0x3, msg=0xb14, flag=0x40
	object_raw subtype=0x34, x=0x68, y=0x68, paramB=0x1058, paramC=0x80000188
	object_raw subtype=0x34, x=0x88, y=0x68, paramA=0x1, paramB=0x458, paramC=0x80010199
	enemy_raw subtype=0x43, x=0x38, y=0xa8, paramB=0x5f
	enemy_raw subtype=0x43, x=0xb8, y=0xa8, paramB=0x5f
	entity_list_end

Enemies_FortressOfWinds_CenterStairs1F:: @ 080E34FC
	entity_list_end

TileEntities_FortressOfWinds_CenterStairs1F:: @ 080E350C
	tile_entity type=0x1, paramA=0x17
	tile_entity_list_end

Room_FortressOfWinds_CenterStairs1F:: @ 080E351C
	.4byte Entities_FortressOfWinds_CenterStairs1F_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_CenterStairs1F
	.4byte TileEntities_FortressOfWinds_CenterStairs1F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_CenterStairs1F
	.4byte sub_StateChange_Dojos_Waveblade7

Entities_FortressOfWinds_EastStairs1F_0:: @ 080E353C
	ezlo_hint x=0x6, y=0x10, rx=0x8, ry=0x3, msg=0xb14, flag=0x40
	manager subtype=0x17, x=0x68, y=0x68, paramA=0x53, paramB=0x10400, paramC=0x200041
	entity_list_end

Enemies_FortressOfWinds_EastStairs1F:: @ 080E356C
	entity_list_end

TileEntities_FortressOfWinds_EastStairs1F:: @ 080E357C
	tile_entity type=0x1, paramA=0x18
	tile_entity_list_end

Room_FortressOfWinds_EastStairs1F:: @ 080E358C
	.4byte Entities_FortressOfWinds_EastStairs1F_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_EastStairs1F
	.4byte TileEntities_FortressOfWinds_EastStairs1F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_EastStairs1F
	.4byte sub_StateChange_Dojos_Waveblade8

Entities_FortressOfWinds_Wizzrobe_0:: @ 080E35AC
	object_raw subtype=0x8, x=0x78, y=0xb8, paramA=0x12, paramC=0x42ffff
	manager subtype=0x1e, x=0x30, y=0x70, paramB=0x200090, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x428000
	object_raw subtype=0xc, x=0x78, y=0x68, paramA=0x1, paramC=0x420000
	entity_list_end

Enemies_FortressOfWinds_Wizzrobe:: @ 080E35FC
	enemy_raw subtype=0x49, x=0x42, y=0xf0c3, collision=1, paramA=0x2d, paramB=0x10128000, paramC=0x302030
	enemy_raw subtype=0x49, x=0x42, y=0xf0cb, collision=1, paramA=0x2d, paramB=0x10128000, paramC=0x302030
	enemy_raw subtype=0x49, x=0x42, y=0xf283, collision=1, paramA=0x2d, paramB=0x10128000, paramC=0x302030
	enemy_raw subtype=0x49, x=0x42, y=0xf28b, collision=1, paramA=0x2d, paramB=0x10128000, paramC=0x302030
	entity_list_end

TileEntities_FortressOfWinds_Wizzrobe:: @ 080E364C
	tile_entity type=0x2, paramA=0x43, paramB=0x503f, paramC=0x187
	tile_entity type=0x1, paramA=0x19
	tile_entity_list_end

gUnk_additional_8_FortressOfWinds_Wizzrobe:: @ 080E3664
	enemy_raw subtype=0x27, x=0x48, y=0x68, paramB=0x10120000, paramC=0x300030
	enemy_raw subtype=0x27, x=0xa8, y=0x68, paramB=0x10120000, paramC=0x300030
	entity_list_end

Room_FortressOfWinds_Wizzrobe:: @ 080E3694
	.4byte Entities_FortressOfWinds_Wizzrobe_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_Wizzrobe
	.4byte TileEntities_FortressOfWinds_Wizzrobe
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_Wizzrobe
	.4byte sub_StateChange_Dojos_Waveblade9
	.4byte gUnk_additional_8_FortressOfWinds_Wizzrobe

Entities_FortressOfWinds_HeartPiece_0:: @ 080E36B8
	object_raw subtype=0x74, x=0xb8, y=0x48, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0xb8, y=0x48, unknown=0x0, paramA=0x3, paramB=0x103
	object_raw subtype=0x0, x=0x58, y=0x44, collision=1, paramA=0x63, paramB=0x400, paramC=0x470000
	entity_list_end

Enemies_FortressOfWinds_HeartPiece:: @ 080E36F8
	enemy_raw subtype=0x1c, x=0xb8, y=0xa8, paramB=0x1000
	entity_list_end

TileEntities_FortressOfWinds_HeartPiece:: @ 080E3718
	tile_entity type=0x1, paramA=0x1a
	tile_entity_list_end

Room_FortressOfWinds_HeartPiece:: @ 080E3728
	.4byte Entities_FortressOfWinds_HeartPiece_0
	.4byte 0x00000000
	.4byte Enemies_FortressOfWinds_HeartPiece
	.4byte TileEntities_FortressOfWinds_HeartPiece
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWinds_HeartPiece
	.4byte sub_StateChange_Dojos_70

Entities_InnerMazaal_Main_0:: @ 080E3748
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb05, flag=0x31
	entity_list_end

Enemies_InnerMazaal_Main:: @ 080E3768
	enemy_raw subtype=0x37, x=0x88, y=0x58
	entity_list_end

TileEntities_InnerMazaal_Main:: @ 080E3788
	tile_entity_list_end

Room_InnerMazaal_Main:: @ 080E3790
	.4byte Entities_InnerMazaal_Main_0
	.4byte 0x00000000
	.4byte Enemies_InnerMazaal_Main
	.4byte TileEntities_InnerMazaal_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_InnerMazaal_Main
	.4byte sub_StateChange_Dojos_71

Entities_FortressOfWindsTop_Main_0:: @ 080E37B0
	npc_raw subtype=0x4e, x=0xa0, y=0x58, script=script_Npc4EWindRuinsTextBoard
	npc_raw subtype=0x4e, x=0xa0, y=0x58, script=script_Npc4EReceiveOcarina
	object_raw subtype=0x95, x=0xe8, y=0x108, collision=2, paramA=0x3
	object_raw subtype=0x95, x=0x38, y=0xd8, collision=2, paramA=0x4
	object_raw subtype=0x95, x=0x108, y=0xd8, collision=2, paramA=0x5
	object_raw subtype=0x95, x=0x38, y=0x88, collision=2, paramA=0x3
	object_raw subtype=0x95, x=0x98, y=0x148, collision=2, paramA=0x7
	entity_list_end

gUnk_080E3830:: @ 080E3830
	.incbin "data_080D5360/gUnk_080E3830.bin"

gUnk_080E3850:: @ 080E3850
	object_raw subtype=0x95, x=0xa0, y=0xb0, paramA=0x2
	entity_list_end

Entities_FortressOfWindsTop_Main_1:: @ 080E3870
	object_raw subtype=0x72, x=0xa0, y=0x58
	manager subtype=0x1b, unknown=0x8, paramA=0x3
	entity_list_end

Enemies_FortressOfWindsTop_Main:: @ 080E38A0
	entity_list_end

TileEntities_FortressOfWindsTop_Main:: @ 080E38B0
	tile_entity type=0x7, paramB=0x1800
	tile_entity_list_end

Room_FortressOfWindsTop_Main:: @ 080E38C0
	.4byte Entities_FortressOfWindsTop_Main_0
	.4byte Entities_FortressOfWindsTop_Main_1
	.4byte Enemies_FortressOfWindsTop_Main
	.4byte TileEntities_FortressOfWindsTop_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_FortressOfWindsTop_Main
	.4byte sub_StateChange_FortressOfWindsTop_Main

Entities_TempleOfDroplets_WestHole_0:: @ 080E38E0
	object_raw subtype=0x12, x=0x88, y=0x68, paramC=0x4e0000
	manager subtype=0x15, x=0x88, y=0x68, unknown=0x8, paramB=0xfff8, paramC=0x4e0000
	manager subtype=0x1a, unknown=0x8, paramA=0x8
	entity_list_end

Enemies_TempleOfDroplets_WestHole:: @ 080E3920
	enemy_raw subtype=0x32, x=0x38, y=0x68, paramA=0x1
	enemy_raw subtype=0x32, x=0xb8, y=0x48, paramA=0x1
	enemy_raw subtype=0x32, x=0xb8, y=0x98, paramA=0x1
	entity_list_end

TileEntities_TempleOfDroplets_WestHole:: @ 080E3960
	tile_entity type=0x1, paramA=0x1
	tile_entity_list_end

Room_TempleOfDroplets_WestHole:: @ 080E3970
	.4byte Entities_TempleOfDroplets_WestHole_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_WestHole
	.4byte TileEntities_TempleOfDroplets_WestHole
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_WestHole
	.4byte sub_StateChange_TempleOfDroplets_WestHole

Entities_TempleOfDroplets_NorthSplit_0:: @ 080E3990
	object_raw subtype=0x5, x=0x38, y=0x38
	object_raw subtype=0x5, x=0xd8, y=0x38
	object_raw subtype=0x5, x=0x38, y=0x98
	object_raw subtype=0x5, x=0xd8, y=0x98
	object_raw subtype=0x8, x=0x28, y=0x68, paramA=0xb, paramC=0x2affff
	entity_list_end

Enemies_TempleOfDroplets_NorthSplit:: @ 080E39F0
	enemy_raw subtype=0x3a, x=0x48, y=0x38
	enemy_raw subtype=0x3a, x=0xc8, y=0x38
	enemy_raw subtype=0x3a, x=0x48, y=0x98
	enemy_raw subtype=0x3a, x=0xc8, y=0x98
	enemy_raw subtype=0x49, y=0xf148, collision=1, paramB=0xe160000, paramC=0x302030
	enemy_raw subtype=0x49, y=0xf187, collision=1, paramB=0xe160000, paramC=0x302030
	enemy_raw subtype=0x49, y=0xf189, collision=1, paramB=0xe160000, paramC=0x302030
	enemy_raw subtype=0x49, y=0xf1c8, collision=1, paramB=0xe160000, paramC=0x302030
	entity_list_end

TileEntities_TempleOfDroplets_NorthSplit:: @ 080E3A80
	tile_entity type=0x1, paramA=0x2
	tile_entity_list_end

Room_TempleOfDroplets_NorthSplit:: @ 080E3A90
	.4byte Entities_TempleOfDroplets_NorthSplit_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_NorthSplit
	.4byte TileEntities_TempleOfDroplets_NorthSplit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_NorthSplit
	.4byte sub_StateChange_TempleOfDroplets_NorthSplit

Entities_TempleOfDroplets_EastHole_0:: @ 080E3AB0
	object_raw subtype=0x12, x=0x88, y=0x68, paramC=0x510000
	manager subtype=0x15, x=0x88, y=0x68, unknown=0x8, paramB=0xfff8, paramC=0x510000
	manager subtype=0x1a, unknown=0x8, paramA=0x9
	entity_list_end

Enemies_TempleOfDroplets_EastHole:: @ 080E3AF0
	enemy_raw subtype=0x32, x=0xa8, y=0x48
	enemy_raw subtype=0x32, x=0x58, y=0x88
	enemy_raw subtype=0x32, x=0xd8, y=0x88
	entity_list_end

TileEntities_TempleOfDroplets_EastHole:: @ 080E3B30
	tile_entity type=0x1, paramA=0x3
	tile_entity_list_end

Room_TempleOfDroplets_EastHole:: @ 080E3B40
	.4byte Entities_TempleOfDroplets_EastHole_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_EastHole
	.4byte TileEntities_TempleOfDroplets_EastHole
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_EastHole
	.4byte sub_StateChange_TempleOfDroplets_EastHole

Entities_TempleOfDroplets_Entrance_0:: @ 080E3B60
	ezlo_hint x=0x18, y=0x1a, rx=0x9, ry=0x3, msg=0xb17, flag=0x2b
	ezlo_hint x=0x14, y=0x26, rx=0x1, ry=0x5, msg=0xb3e, flag=0x7f
	ezlo_hint x=0x2c, y=0x26, rx=0x1, ry=0x5, msg=0xb3e, flag=0x7f
	object_raw subtype=0x84, x=0x78, y=0xb8
	object_raw subtype=0x84, x=0x98, y=0xb8
	object_raw subtype=0x84, x=0x88, y=0xc8
	object_raw subtype=0x84, x=0x88, y=0xf8
	object_raw subtype=0x84, x=0x178, y=0xc8
	object_raw subtype=0x84, x=0x188, y=0xd8
	object_raw subtype=0x84, x=0x198, y=0xe8
	object_raw subtype=0x84, x=0x188, y=0x118
	object_raw subtype=0x31, x=0xcc, y=0x150
	object_raw subtype=0x39, x=0x108, y=0x178, paramA=0x2, paramC=0x2cffff
	object_raw subtype=0x34, x=0xd8, y=0xe8, paramB=0x560, paramC=0x9c0148
	object_raw subtype=0x34, x=0x138, y=0xe8, paramA=0x1, paramB=0x3060, paramC=0x7001c7
	manager subtype=0x15, x=0x108, y=0xc8, unknown=0x8, paramA=0x6, paramB=0x10ff78
	entity_list_end

Enemies_TempleOfDroplets_Entrance:: @ 080E3C70
	entity_list_end

TileEntities_TempleOfDroplets_Entrance:: @ 080E3C80
	tile_entity type=0x1, paramA=0x4
	tile_entity_list_end

Room_TempleOfDroplets_Entrance:: @ 080E3C90
	.4byte Entities_TempleOfDroplets_Entrance_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_Entrance
	.4byte TileEntities_TempleOfDroplets_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_Entrance
	.4byte sub_StateChange_TempleOfDroplets_Entrance

Entities_TempleOfDroplets_NorthwestStairs_0:: @ 080E3CB0
	entity_list_end

Entities_TempleOfDroplets_NorthwestStairs_1:: @ 080E3CC0
	object_raw subtype=0x4f, x=0xa8, y=0xc0, paramA=0x1a, paramB=0x2
	entity_list_end

Enemies_TempleOfDroplets_NorthwestStairs:: @ 080E3CE0
	enemy_raw subtype=0x32, x=0x58, y=0x58, paramA=0x1
	enemy_raw subtype=0x32, x=0xb8, y=0x58, paramA=0x1
	entity_list_end

TileEntities_TempleOfDroplets_NorthwestStairs:: @ 080E3D10
	tile_entity type=0x1, paramA=0x5
	tile_entity_list_end

Room_TempleOfDroplets_NorthwestStairs:: @ 080E3D20
	.4byte Entities_TempleOfDroplets_NorthwestStairs_0
	.4byte Entities_TempleOfDroplets_NorthwestStairs_1
	.4byte Enemies_TempleOfDroplets_NorthwestStairs
	.4byte TileEntities_TempleOfDroplets_NorthwestStairs
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_NorthwestStairs
	.4byte sub_StateChange_TempleOfDroplets_NorthwestStairs

Entities_TempleOfDroplets_ScissorsMiniboss_0:: @ 080E3D40
	manager subtype=0x1e, x=0xb0, y=0x20, paramB=0x200030, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x2e8000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x2e009c
	object_raw subtype=0x8, x=0xc8, y=0x18, paramA=0x10, paramC=0x9cffff
	object_raw subtype=0x8, x=0x58, y=0x98, paramA=0x2, paramC=0x9cffff
	object_raw subtype=0x34, x=0x88, y=0x58, paramB=0x360, paramC=0x9c038d
	entity_list_end

Entities_TempleOfDroplets_ScissorsMiniboss_1:: @ 080E3DB0
	object_raw subtype=0x4f, x=0xc8, paramA=0x1a
	object_raw subtype=0x4f, x=0x58, y=0xb0, paramA=0x1a, paramB=0x2
	object_raw subtype=0x4f, x=0x58, y=0xc8, paramA=0x1a, paramB=0x4
	entity_list_end

Enemies_TempleOfDroplets_ScissorsMiniboss:: @ 080E3DF0
	entity_list_end

TileEntities_TempleOfDroplets_ScissorsMiniboss:: @ 080E3E00
	tile_entity type=0x1, paramA=0x6
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_ScissorsMiniboss:: @ 080E3E10
	enemy_raw subtype=0x40, x=0x58, y=0x58, unknown=0x2f
	enemy_raw subtype=0x40, x=0xb8, y=0x58, unknown=0x2f
	enemy_raw subtype=0x40, x=0x88, y=0x88, unknown=0x2f
	manager subtype=0x28, unknown=0x3, paramB=0x8
	entity_list_end

Room_TempleOfDroplets_ScissorsMiniboss:: @ 080E3E60
	.4byte Entities_TempleOfDroplets_ScissorsMiniboss_0
	.4byte Entities_TempleOfDroplets_ScissorsMiniboss_1
	.4byte Enemies_TempleOfDroplets_ScissorsMiniboss
	.4byte TileEntities_TempleOfDroplets_ScissorsMiniboss
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_ScissorsMiniboss
	.4byte sub_StateChange_TempleOfDroplets_ScissorsMiniboss
	.4byte gUnk_additional_8_TempleOfDroplets_ScissorsMiniboss

Entities_TempleOfDroplets_WaterfallNorthwest_0:: @ 080E3E84
	object_raw subtype=0x8, x=0xb8, y=0x168, paramA=0x9, paramC=0x2f0030
	object_raw subtype=0x0, x=0x58, y=0x48, collision=1, paramA=0x55, paramB=0x800, paramC=0x950000
	object_raw subtype=0x0, x=0x68, y=0x48, collision=1, paramA=0x55, paramB=0x800, paramC=0x960000
	object_raw subtype=0x0, x=0x78, y=0x48, collision=1, paramA=0x55, paramB=0x800, paramC=0x970000
	object_raw subtype=0x0, x=0x58, y=0x58, collision=1, paramA=0x55, paramB=0x800, paramC=0x980000
	object_raw subtype=0x0, x=0x68, y=0x58, collision=1, paramA=0x55, paramB=0x800, paramC=0x990000
	object_raw subtype=0x0, x=0x78, y=0x58, collision=1, paramA=0x55, paramB=0x800, paramC=0x9a0000
	entity_list_end

Entities_TempleOfDroplets_WaterfallNorthwest_1:: @ 080E3F04
	object_raw subtype=0x4f, x=0xd0, y=0x168, paramA=0x1a, paramB=0x1
	object_raw subtype=0x4f, x=0xe8, y=0x168, paramA=0x1a, paramB=0x5
	entity_list_end

Enemies_TempleOfDroplets_WaterfallNorthwest:: @ 080E3F34
	enemy_raw subtype=0x10, x=0x58, y=0x88, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x38, y=0xe8, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x58, y=0xf8
	entity_list_end

TileEntities_TempleOfDroplets_WaterfallNorthwest:: @ 080E3F74
	tile_entity type=0x1, paramA=0x7
	tile_entity_list_end

Room_TempleOfDroplets_WaterfallNorthwest:: @ 080E3F84
	.4byte Entities_TempleOfDroplets_WaterfallNorthwest_0
	.4byte Entities_TempleOfDroplets_WaterfallNorthwest_1
	.4byte Enemies_TempleOfDroplets_WaterfallNorthwest
	.4byte TileEntities_TempleOfDroplets_WaterfallNorthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_WaterfallNorthwest
	.4byte sub_StateChange_TempleOfDroplets_WaterfallNorthwest

Entities_TempleOfDroplets_WaterfallNortheast_0:: @ 080E3FA4
	object_raw subtype=0x8, x=0x18, y=0x168, paramA=0xb, paramC=0x30ffff
	entity_list_end

Entities_TempleOfDroplets_WaterfallNortheast_1:: @ 080E3FC4
	object_raw subtype=0x4f, x=0xa8, paramA=0x1a
	object_raw subtype=0x4f, y=0x168, paramA=0x1a, paramB=0x3
	object_raw subtype=0x4f, x=0x110, y=0x48, paramA=0x1a, paramB=0x1
	entity_list_end

Enemies_TempleOfDroplets_WaterfallNortheast:: @ 080E4004
	enemy_raw subtype=0x11, x=0x58, y=0x128, paramB=0x12080000, paramC=0x1000020
	enemy_raw subtype=0x11, x=0x38, y=0x138, paramB=0x12080000, paramC=0x1000020
	projectile_raw subtype=0x1e, x=0xa0, y=0x108, unknown=0x3, paramA=0x8, paramC=0x64ff90
	entity_list_end

TileEntities_TempleOfDroplets_WaterfallNortheast:: @ 080E4044
	tile_entity type=0x1, paramA=0x8
	tile_entity_list_end

Room_TempleOfDroplets_WaterfallNortheast:: @ 080E4054
	.4byte Entities_TempleOfDroplets_WaterfallNortheast_0
	.4byte Entities_TempleOfDroplets_WaterfallNortheast_1
	.4byte Enemies_TempleOfDroplets_WaterfallNortheast
	.4byte TileEntities_TempleOfDroplets_WaterfallNortheast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_WaterfallNortheast
	.4byte sub_StateChange_TempleOfDroplets_WaterfallNortheast

Entities_TempleOfDroplets_Element_0:: @ 080E4074
	ezlo_hint x=0x14, y=0x14, rx=0xd, ry=0x2, msg=0xb41, flag=0x80
	manager subtype=0x15, x=0x108, y=0x118, unknown=0x8, paramA=0x4, paramB=0xff78, paramC=0x340000
	object_raw subtype=0x8f, x=0x108, y=0xd8
	object_raw subtype=0x83, x=0x58, y=0x58, paramC=0x360000
	object_raw subtype=0x83, x=0x1b8, y=0x58, paramC=0x340000
	ezlo_hint x=0x32, y=0x6, rx=0x5, ry=0x5, msg=0xb42, flag=0x81, flag2=0x8064
	object_raw subtype=0x85, x=0x160, y=0x120, paramB=0x8, paramC=0x310000
	object_raw subtype=0x5, x=0xc8, y=0x38
	object_raw subtype=0x5, x=0x148, y=0x38
	object_raw subtype=0x5, x=0xb8, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0x158, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0xa8, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0x168, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0x1a8, y=0x108
	object_raw subtype=0x5, x=0x1b8, y=0x108
	object_raw subtype=0x5, x=0x1a8, y=0x148
	object_raw subtype=0x5, x=0x1b8, y=0x148
	enemy_raw subtype=0x3a, x=0xa8, y=0x88
	enemy_raw subtype=0x3a, x=0xa8, y=0x98
	enemy_raw subtype=0x3a, x=0xa8, y=0xa8
	enemy_raw subtype=0x3a, x=0x168, y=0x88
	enemy_raw subtype=0x3a, x=0x168, y=0x98
	enemy_raw subtype=0x3a, x=0x168, y=0xa8
	enemy_raw subtype=0x3a, x=0x58, y=0x108
	enemy_raw subtype=0x3a, x=0x68, y=0x108
	enemy_raw subtype=0x3a, x=0x58, y=0x148
	enemy_raw subtype=0x3a, x=0x68, y=0x148
	entity_list_end

Entities_TempleOfDroplets_Element_1:: @ 080E4234
	object_raw subtype=0x4f, x=0x10, y=0x48, paramA=0x1a, paramB=0x3
	manager subtype=0x6, paramA=0xa
	entity_list_end

Enemies_TempleOfDroplets_Element:: @ 080E4264
	entity_list_end

TileEntities_TempleOfDroplets_Element:: @ 080E4274
	tile_entity type=0x1, paramA=0x9
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_Element:: @ 080E4284
	.incbin "data_080D5360/gUnk_additional_8_TempleOfDroplets_Element.bin"

gUnk_additional_9_TempleOfDroplets_Element:: @ 080E428E
	.incbin "data_080D5360/gUnk_additional_9_TempleOfDroplets_Element.bin"

gUnk_additional_a_TempleOfDroplets_Element:: @ 080E4298
	exit_region_raw centerX=0x108, centerY=0x19e, halfWidth=0x38, halfHeight=0x4, exitIndex=0xb, bitfield=0x11
	exit_region_list_end

gUnk_additional_b_TempleOfDroplets_Element:: @ 080E42A8
	exit_raw transition=0x1, destX=0x108, destY=0x18, destArea=0x60, destRoom=0xe, unknownA=0x1, unknownC=0x4

Room_TempleOfDroplets_Element:: @ 080E42BC
	.4byte Entities_TempleOfDroplets_Element_0
	.4byte Entities_TempleOfDroplets_Element_1
	.4byte Enemies_TempleOfDroplets_Element
	.4byte TileEntities_TempleOfDroplets_Element
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_Element
	.4byte sub_StateChange_TempleOfDroplets_Element
	.4byte gUnk_additional_8_TempleOfDroplets_Element
	.4byte gUnk_additional_9_TempleOfDroplets_Element
	.4byte gUnk_additional_a_TempleOfDroplets_Element
	.4byte gUnk_additional_b_TempleOfDroplets_Element

Entities_TempleOfDroplets_IceCorner_0:: @ 080E42EC
	entity_list_end

Entities_TempleOfDroplets_IceCorner_1:: @ 080E42FC
	object_raw subtype=0x4f, x=0x58, y=0x10, paramA=0x1a
	entity_list_end

Enemies_TempleOfDroplets_IceCorner:: @ 080E431C
	entity_list_end

TileEntities_TempleOfDroplets_IceCorner:: @ 080E432C
	tile_entity type=0x2, paramA=0x38, paramB=0x715c, paramC=0x14a
	tile_entity type=0x1, paramA=0xa
	tile_entity_list_end

Room_TempleOfDroplets_IceCorner:: @ 080E4344
	.4byte Entities_TempleOfDroplets_IceCorner_0
	.4byte Entities_TempleOfDroplets_IceCorner_1
	.4byte Enemies_TempleOfDroplets_IceCorner
	.4byte TileEntities_TempleOfDroplets_IceCorner
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_IceCorner
	.4byte sub_StateChange_TempleOfDroplets_IceCorner

Entities_TempleOfDroplets_IcePitMaze_0:: @ 080E4364
	object_raw subtype=0x5, x=0xc8, y=0x1f8
	object_raw subtype=0x5, x=0xc8, y=0x208, collision=1, paramA=0x5c, paramB=0x7302, paramC=0x390000
	entity_list_end

Enemies_TempleOfDroplets_IcePitMaze:: @ 080E4394
	enemy_raw subtype=0x11, x=0x78, y=0xb8, paramB=0x120e0001, paramC=0x800050
	enemy_raw subtype=0x11, x=0x98, y=0xd8, paramB=0x120e0001, paramC=0x800050
	enemy_raw subtype=0x2f, x=0x68, y=0x168, paramA=0x8
	enemy_raw subtype=0x2f, x=0x68, y=0x178, paramA=0x9
	enemy_raw subtype=0x2f, x=0x68, y=0x188, paramA=0xa
	enemy_raw subtype=0x2f, x=0x68, y=0x198, paramA=0xb
	enemy_raw subtype=0x2f, x=0x68, y=0x1a8, paramA=0xc
	enemy_raw subtype=0x2f, x=0x78, y=0x1a8, paramA=0xd
	enemy_raw subtype=0x2f, x=0x88, y=0x1a8, paramA=0xe
	enemy_raw subtype=0x2f, x=0x98, y=0x1a8, paramA=0xf
	enemy_raw subtype=0x2f, x=0xa8, y=0x1a8, paramA=0x10
	enemy_raw subtype=0x2f, x=0xa8, y=0x198, paramA=0x11
	enemy_raw subtype=0x2f, x=0xa8, y=0x188, paramA=0x12
	enemy_raw subtype=0x2f, x=0xa8, y=0x178, paramA=0x13
	enemy_raw subtype=0x2f, x=0xa8, y=0x168, paramA=0x14
	entity_list_end

TileEntities_TempleOfDroplets_IcePitMaze:: @ 080E4494
	tile_entity type=0x2, paramA=0x3a, paramB=0x725c, paramC=0x406
	tile_entity type=0x1, paramA=0xb
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_IcePitMaze:: @ 080E44AC
	.incbin "data_080D5360/gUnk_additional_8_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_9_TempleOfDroplets_IcePitMaze:: @ 080E44CA
	.incbin "data_080D5360/gUnk_additional_9_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_a_TempleOfDroplets_IcePitMaze:: @ 080E44EE
	.incbin "data_080D5360/gUnk_additional_a_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_b_TempleOfDroplets_IcePitMaze:: @ 080E4512
	.incbin "data_080D5360/gUnk_additional_b_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_c_TempleOfDroplets_IcePitMaze:: @ 080E4536
	.incbin "data_080D5360/gUnk_additional_c_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_d_TempleOfDroplets_IcePitMaze:: @ 080E4554
	.incbin "data_080D5360/gUnk_additional_d_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_e_TempleOfDroplets_IcePitMaze:: @ 080E4578
	.incbin "data_080D5360/gUnk_additional_e_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_f_TempleOfDroplets_IcePitMaze:: @ 080E459C
	.incbin "data_080D5360/gUnk_additional_f_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_10_TempleOfDroplets_IcePitMaze:: @ 080E45C0
	.incbin "data_080D5360/gUnk_additional_10_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_11_TempleOfDroplets_IcePitMaze:: @ 080E45DE
	.incbin "data_080D5360/gUnk_additional_11_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_12_TempleOfDroplets_IcePitMaze:: @ 080E4602
	.incbin "data_080D5360/gUnk_additional_12_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_13_TempleOfDroplets_IcePitMaze:: @ 080E4626
	.incbin "data_080D5360/gUnk_additional_13_TempleOfDroplets_IcePitMaze.bin"

gUnk_additional_14_TempleOfDroplets_IcePitMaze:: @ 080E464A
	.incbin "data_080D5360/gUnk_additional_14_TempleOfDroplets_IcePitMaze.bin"

Room_TempleOfDroplets_IcePitMaze:: @ 080E4668
	.4byte Entities_TempleOfDroplets_IcePitMaze_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_IcePitMaze
	.4byte TileEntities_TempleOfDroplets_IcePitMaze
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_IcePitMaze
	.4byte sub_StateChange_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_8_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_9_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_a_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_b_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_c_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_d_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_e_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_f_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_10_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_11_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_12_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_13_TempleOfDroplets_IcePitMaze
	.4byte gUnk_additional_14_TempleOfDroplets_IcePitMaze

Entities_TempleOfDroplets_HoleToBlueChuchu_0:: @ 080E46BC
	object_raw subtype=0x12, x=0xb8, y=0x68, paramC=0x6c0000
	manager subtype=0x15, x=0xb8, y=0x68, unknown=0x8, paramB=0xffc8, paramC=0x6c0000
	manager subtype=0x1a, unknown=0x8, paramA=0xa
	entity_list_end

Enemies_TempleOfDroplets_HoleToBlueChuchu:: @ 080E46FC
	entity_list_end

TileEntities_TempleOfDroplets_HoleToBlueChuchu:: @ 080E470C
	tile_entity type=0x1, paramA=0xc
	tile_entity_list_end

Room_TempleOfDroplets_HoleToBlueChuchu:: @ 080E471C
	.4byte Entities_TempleOfDroplets_HoleToBlueChuchu_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_HoleToBlueChuchu
	.4byte TileEntities_TempleOfDroplets_HoleToBlueChuchu
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_HoleToBlueChuchu
	.4byte sub_StateChange_TempleOfDroplets_HoleToBlueChuchu

Entities_TempleOfDroplets_WaterfallSoutheast_0:: @ 080E473C
	object_raw subtype=0x3, x=0x98, y=0x58, paramC=0x3b0002
	object_raw subtype=0x33, x=0x28, y=0x58, paramA=0x3, paramC=0x3b0000
	object_raw subtype=0x33, x=0x38, y=0x58, paramA=0x3, paramC=0x3b0000
	object_raw subtype=0x33, x=0x48, y=0x58, paramA=0x3, paramC=0x3b0000
	object_raw subtype=0x33, x=0x58, y=0x58, paramA=0x3, paramC=0x3b0000
	object_raw subtype=0x33, x=0x68, y=0x58, paramA=0x3, paramC=0x3b0000
	object_raw subtype=0x33, x=0x78, y=0x58, paramA=0x3, paramC=0x3b0000
	object_raw subtype=0x14, x=0x48, y=0x88
	entity_list_end

Enemies_TempleOfDroplets_WaterfallSoutheast:: @ 080E47CC
	entity_list_end

TileEntities_TempleOfDroplets_WaterfallSoutheast:: @ 080E47DC
	tile_entity type=0x1, paramA=0xd
	tile_entity_list_end

Room_TempleOfDroplets_WaterfallSoutheast:: @ 080E47EC
	.4byte Entities_TempleOfDroplets_WaterfallSoutheast_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_WaterfallSoutheast
	.4byte TileEntities_TempleOfDroplets_WaterfallSoutheast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_WaterfallSoutheast
	.4byte sub_StateChange_TempleOfDroplets_WaterfallSoutheast

Entities_TempleOfDroplets_WaterfallSouthwest_0:: @ 080E480C
	object_raw subtype=0x3, x=0xc8, y=0x78, paramC=0x3c0002
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x3c003d
	object_raw subtype=0x33, x=0x68, y=0xb8, paramA=0x3, paramC=0x3d0000
	object_raw subtype=0x33, x=0x78, y=0xb8, paramA=0x3, paramC=0x3d0000
	object_raw subtype=0x33, x=0x88, y=0xb8, paramA=0x3, paramC=0x3d0000
	object_raw subtype=0x32, x=0xa8, y=0x98
	manager subtype=0x1a, unknown=0x8, paramA=0xc
	object_raw subtype=0xc, x=0xe8, y=0xe8, paramA=0x4, paramB=0x3f
	object_raw subtype=0x0, x=0xb8, y=0x38, collision=1, paramA=0x54, paramB=0x400, paramC=0x850000
	object_raw subtype=0x0, x=0xb8, y=0x58, collision=1, paramA=0x54, paramB=0x400, paramC=0x860000
	object_raw subtype=0x0, x=0xb8, y=0x78, collision=1, paramA=0x54, paramB=0x400, paramC=0x870000
	object_raw subtype=0x0, x=0xb8, y=0x98, collision=1, paramA=0x54, paramB=0x400, paramC=0x880000
	object_raw subtype=0x0, x=0xb8, y=0xb8, collision=1, paramA=0x54, paramB=0x400, paramC=0x890000
	manager subtype=0x2d
	entity_list_end

Enemies_TempleOfDroplets_WaterfallSouthwest:: @ 080E48FC
	entity_list_end

TileEntities_TempleOfDroplets_WaterfallSouthwest:: @ 080E490C
	tile_entity type=0x3, paramA=0x3f, paramB=0x50, paramC=0xe8, paramD=0xe8
	tile_entity type=0x1, paramA=0xe
	tile_entity_list_end

Room_TempleOfDroplets_WaterfallSouthwest:: @ 080E4924
	.4byte Entities_TempleOfDroplets_WaterfallSouthwest_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_WaterfallSouthwest
	.4byte TileEntities_TempleOfDroplets_WaterfallSouthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_WaterfallSouthwest
	.4byte sub_StateChange_TempleOfDroplets_WaterfallSouthwest

Entities_TempleOfDroplets_BigOcto_0:: @ 080E4944
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x40050000
	manager subtype=0x1e, x=0xd0, y=0x20, paramB=0x200070, paramC=0x80010000
	object_raw subtype=0x33, x=0xf8, y=0x18, paramA=0x4, paramB=0x1, paramC=0x80010000
	object_raw subtype=0x33, x=0x108, y=0x18, paramA=0x4, paramB=0x1, paramC=0x80010000
	object_raw subtype=0x33, x=0x118, y=0x18, paramA=0x4, paramB=0x1, paramC=0x80010000
	manager subtype=0xe, y=0x3c, paramA=0x9, paramB=0x1, paramC=0x40050000
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb07, flag=0x4005
	entity_list_end

gUnk_additional_9_TempleOfDroplets_BigOcto:: @ 080E49C4
	object_raw subtype=0xac, x=0x108, y=0x78, collision=1, paramA=0x42
	manager subtype=0xe, y=0x3c, unknown=0x1f, paramA=0xa, paramC=0x80000000
	entity_list_end

gUnk_additional_a_TempleOfDroplets_BigOcto:: @ 080E49F4
	object_raw subtype=0x34, x=0x108, y=0xa8, paramA=0x2, paramB=0x360, paramC=0x40050390
	object_raw subtype=0x47, x=0x108, y=0x58, paramC=0x40050040
	entity_list_end

gUnk_additional_8_TempleOfDroplets_BigOcto:: @ 080E4A24
	enemy_raw subtype=0x39, x=0x108, y=0xa8
	entity_list_end

TileEntities_TempleOfDroplets_BigOcto:: @ 080E4A44
	tile_entity type=0x9
	tile_entity type=0x1, paramA=0xf
	tile_entity_list_end

Room_TempleOfDroplets_BigOcto:: @ 080E4A5C
	.4byte Entities_TempleOfDroplets_BigOcto_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte TileEntities_TempleOfDroplets_BigOcto
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BigOcto
	.4byte sub_StateChange_TempleOfDroplets_BigOcto
	.4byte gUnk_additional_8_TempleOfDroplets_BigOcto
	.4byte gUnk_additional_9_TempleOfDroplets_BigOcto
	.4byte gUnk_additional_a_TempleOfDroplets_BigOcto

Entities_TempleOfDroplets_ToBigBlueChuchu_0:: @ 080E4A88
	object_raw subtype=0x85, x=0x40, y=0x70, paramC=0x420000
	object_raw subtype=0x85, x=0x40, y=0x90, paramC=0x430000
	object_raw subtype=0x85, x=0x80, y=0x70, paramC=0x440000
	object_raw subtype=0x85, x=0x80, y=0x90, paramC=0x450000
	object_raw subtype=0x8, x=0xc8, y=0xa8, paramA=0xa, paramC=0x41ffff
	object_raw subtype=0x5, x=0x28, y=0x78
	object_raw subtype=0x5, x=0x28, y=0x88
	object_raw subtype=0x5, x=0x28, y=0x68, paramA=0x5f
	object_raw subtype=0x5, x=0x28, y=0x98, paramA=0x5f
	entity_list_end

Enemies_TempleOfDroplets_ToBigBlueChuchu:: @ 080E4B28
	entity_list_end

TileEntities_TempleOfDroplets_ToBigBlueChuchu:: @ 080E4B38
	tile_entity type=0x1, paramA=0x10
	tile_entity_list_end

Room_TempleOfDroplets_ToBigBlueChuchu:: @ 080E4B48
	.4byte Entities_TempleOfDroplets_ToBigBlueChuchu_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_ToBigBlueChuchu
	.4byte TileEntities_TempleOfDroplets_ToBigBlueChuchu
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_ToBigBlueChuchu
	.4byte sub_StateChange_Dojos_72

Entities_TempleOfDroplets_BigBlueChuchu_0:: @ 080E4B68
	object_raw subtype=0xc, x=0x88, y=0x70, paramA=0x2, paramB=0x47, paramC=0x480000
	manager subtype=0x15, x=0x88, y=0x68, unknown=0x8, paramA=0x1, paramB=0xfff8, paramC=0x460000
	object_raw subtype=0x7b, x=0x98, y=0xb8, paramC=0x460000
	object_raw subtype=0x33, x=0xb8, y=0x18, paramA=0x4, paramB=0x1, paramC=0x80000000
	object_raw subtype=0x33, x=0xc8, y=0x18, paramA=0x4, paramB=0x1, paramC=0x80000000
	object_raw subtype=0x33, x=0xd8, y=0x18, paramA=0x4, paramB=0x1, paramC=0x80000000
	entity_list_end

gUnk_080E4BD8:: @ 080E4BD8
	manager subtype=0x1e, x=0xa0, y=0x20, paramB=0x200040, paramC=0x80000000
	entity_list_end

Entities_TempleOfDroplets_BigBlueChuchu_1:: @ 080E4BF8
	entity_list_end

gUnk_080E4C08:: @ 080E4C08
	.incbin "data_080D5360/gUnk_080E4C08.bin"

Enemies_TempleOfDroplets_BigBlueChuchu:: @ 080E4C38
	entity_list_end

TileEntities_TempleOfDroplets_BigBlueChuchu:: @ 080E4C48
	tile_entity type=0xd, paramB=0x2d00
	tile_entity type=0x3, paramA=0x47, paramB=0xf, paramC=0x88, paramD=0x70
	tile_entity type=0x1, paramA=0x11
	tile_entity_list_end

Room_TempleOfDroplets_BigBlueChuchu:: @ 080E4C68
	.4byte Entities_TempleOfDroplets_BigBlueChuchu_0
	.4byte Entities_TempleOfDroplets_BigBlueChuchu_1
	.4byte Enemies_TempleOfDroplets_BigBlueChuchu
	.4byte TileEntities_TempleOfDroplets_BigBlueChuchu
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BigBlueChuchu
	.4byte sub_StateChange_TempleOfDroplets_BigBlueChuchu

Entities_TempleOfDroplets_BigBlueChuchuKey_0:: @ 080E4C88
	object_raw subtype=0x7b, x=0x78, y=0x98, paramC=0x4b0000
	manager subtype=0x2e, unknown=0x0, paramB=0x1400, paramC=0x4a0049
	manager subtype=0xf, unknown=0x8, paramA=0x4
	object_raw subtype=0x85, x=0x78, y=0x68, paramA=0x1, paramB=0x8, paramC=0x4c0000
	entity_list_end

gUnk_080E4CD8:: @ 080E4CD8
	manager subtype=0x15, x=0x78, y=0x68, unknown=0x8, paramA=0x2, paramB=0x80008, paramC=0x4b0000
	entity_list_end

gUnk_080E4CF8:: @ 080E4CF8
	manager subtype=0x15, x=0x78, y=0x68, unknown=0x8, paramA=0x7, paramB=0x80008, paramC=0x4b0000
	entity_list_end

Enemies_TempleOfDroplets_BigBlueChuchuKey:: @ 080E4D18
	entity_list_end

TileEntities_TempleOfDroplets_BigBlueChuchuKey:: @ 080E4D28
	tile_entity type=0x2, paramA=0x4c, paramB=0x53, paramC=0x187
	tile_entity type=0x1, paramA=0x12
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_BigBlueChuchuKey:: @ 080E4D40
	.incbin "data_080D5360/gUnk_additional_8_TempleOfDroplets_BigBlueChuchuKey.bin"

Room_TempleOfDroplets_BigBlueChuchuKey:: @ 080E4D4C
	.4byte Entities_TempleOfDroplets_BigBlueChuchuKey_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_BigBlueChuchuKey
	.4byte TileEntities_TempleOfDroplets_BigBlueChuchuKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BigBlueChuchuKey
	.4byte sub_StateChange_TempleOfDroplets_BigBlueChuchuKey
	.4byte gUnk_additional_8_TempleOfDroplets_BigBlueChuchuKey

Entities_TempleOfDroplets_BossKey_0:: @ 080E4D70
	manager subtype=0x15, x=0x88, y=0x68, unknown=0x8, paramA=0x2, paramB=0xfff8, paramC=0x4e00a2
	object_raw subtype=0x7b, x=0x58, y=0x58, paramC=0x4e0000
	object_raw subtype=0x84, x=0x118, y=0x48, paramB=0x8
	object_raw subtype=0x84, x=0x128, y=0x68, paramA=0x2, paramB=0x8, paramC=0x4f0000
	object_raw subtype=0x84, x=0x128, y=0x88, paramB=0x8
	object_raw subtype=0x31, x=0x80, y=0x80, paramA=0x1
	entity_list_end

Enemies_TempleOfDroplets_BossKey:: @ 080E4DE0
	entity_list_end

TileEntities_TempleOfDroplets_BossKey:: @ 080E4DF0
	tile_entity type=0x1, paramA=0x13
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_BossKey:: @ 080E4E00
	.incbin "data_080D5360/gUnk_additional_8_TempleOfDroplets_BossKey.bin"

Room_TempleOfDroplets_BossKey:: @ 080E4E0C
	.4byte Entities_TempleOfDroplets_BossKey_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_BossKey
	.4byte TileEntities_TempleOfDroplets_BossKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BossKey
	.4byte sub_StateChange_Dojos_73
	.4byte gUnk_additional_8_TempleOfDroplets_BossKey

Entities_TempleOfDroplets_NorthSmallKey_0:: @ 080E4E30
	object_raw subtype=0x7b, x=0xd8, y=0x68, paramC=0x510000
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x510050
	manager subtype=0x15, x=0x88, y=0x68, unknown=0x8, paramA=0x2, paramB=0xfff8, paramC=0x5100a3
	object_raw subtype=0x84, x=0x48, y=0x48, paramA=0x1, paramB=0x8, paramC=0x520000
	ezlo_hint x=0x16, y=0x6, rx=0x3, ry=0x5, msg=0xb40, flag=0x53, flag2=0x50
	ezlo_hint x=0x6, y=0x6, rx=0x4, ry=0x5, msg=0xb3f, flag=0x84
	entity_list_end

Enemies_TempleOfDroplets_NorthSmallKey:: @ 080E4EA0
	entity_list_end

TileEntities_TempleOfDroplets_NorthSmallKey:: @ 080E4EB0
	tile_entity type=0x1, paramA=0x14
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_NorthSmallKey:: @ 080E4EC0
	.incbin "data_080D5360/gUnk_additional_8_TempleOfDroplets_NorthSmallKey.bin"

Room_TempleOfDroplets_NorthSmallKey:: @ 080E4ECC
	.4byte Entities_TempleOfDroplets_NorthSmallKey_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_NorthSmallKey
	.4byte TileEntities_TempleOfDroplets_NorthSmallKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_NorthSmallKey
	.4byte sub_StateChange_Dojos_74
	.4byte gUnk_additional_8_TempleOfDroplets_NorthSmallKey

Entities_TempleOfDroplets_BlockCloneButtonPuzzle_0:: @ 080E4EF0
	object_raw subtype=0x3, x=0x58, y=0x38, paramA=0x1, paramC=0x80000001
	object_raw subtype=0x3, x=0x58, y=0x68, paramA=0x1, paramC=0x80010001
	object_raw subtype=0x3, x=0x58, y=0x98, paramA=0x1, paramC=0x80020001
	manager subtype=0x11, paramC=0x88000054
	object_raw subtype=0x8, x=0x78, y=0xa8, paramA=0x2, paramC=0x54ffff
	object_raw subtype=0x84, x=0xb8, y=0x78
	object_raw subtype=0x84, x=0x148, y=0x98
	entity_list_end

Enemies_TempleOfDroplets_BlockCloneButtonPuzzle:: @ 080E4F70
	entity_list_end

TileEntities_TempleOfDroplets_BlockCloneButtonPuzzle:: @ 080E4F80
	tile_entity type=0x1, paramA=0x15
	tile_entity_list_end@ unaccounted bytes
	.byte 255
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0


Room_TempleOfDroplets_BlockCloneButtonPuzzle:: @ 080E4FA0
	.4byte Entities_TempleOfDroplets_BlockCloneButtonPuzzle_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_BlockCloneButtonPuzzle
	.4byte TileEntities_TempleOfDroplets_BlockCloneButtonPuzzle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BlockCloneButtonPuzzle
	.4byte sub_StateChange_Dojos_75

Entities_TempleOfDroplets_BlockClonePuzzle_0:: @ 080E4FC0
	entity_list_end

Enemies_TempleOfDroplets_BlockClonePuzzle:: @ 080E4FD0
	entity_list_end

TileEntities_TempleOfDroplets_BlockClonePuzzle:: @ 080E4FE0
	tile_entity type=0x1, paramA=0x16
	tile_entity_list_end

Room_TempleOfDroplets_BlockClonePuzzle:: @ 080E4FF0
	.4byte Entities_TempleOfDroplets_BlockClonePuzzle_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_BlockClonePuzzle
	.4byte TileEntities_TempleOfDroplets_BlockClonePuzzle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BlockClonePuzzle
	.4byte sub_StateChange_Dojos_76

Entities_TempleOfDroplets_BlockCloneIceBridge_0:: @ 080E5010
	object_raw subtype=0x85, x=0x50, y=0x70, paramC=0x560000
	entity_list_end

Entities_TempleOfDroplets_BlockCloneIceBridge_1:: @ 080E5030
	object_raw subtype=0x4f, x=0x88, paramA=0x1a
	object_raw subtype=0x4f, x=0x88, y=0x1a0, paramA=0x1a, paramB=0x2
	entity_list_end

Enemies_TempleOfDroplets_BlockCloneIceBridge:: @ 080E5060
	enemy_raw subtype=0x10, x=0x78, y=0x58, paramB=0x3c00
	enemy_raw subtype=0x10, x=0x88, y=0x68
	enemy_raw subtype=0x10, x=0x88, y=0x158, paramB=0x3c00
	enemy_raw subtype=0x10, x=0x98, y=0x138, paramB=0x1e00
	enemy_raw subtype=0x32, x=0x48, y=0x98, paramB=0xa120000, paramC=0x600040
	enemy_raw subtype=0x32, x=0x58, y=0x108, paramB=0xa120000, paramC=0x600040
	enemy_raw subtype=0x32, x=0xb8, y=0x98, paramA=0x1, paramB=0xa120000, paramC=0xf00040
	enemy_raw subtype=0x32, x=0x58, y=0x108, paramA=0x1, paramB=0xa120000, paramC=0xf00040
	entity_list_end

TileEntities_TempleOfDroplets_BlockCloneIceBridge:: @ 080E50F0
	tile_entity type=0x1, paramA=0x17
	tile_entity_list_end

Room_TempleOfDroplets_BlockCloneIceBridge:: @ 080E5100
	.4byte Entities_TempleOfDroplets_BlockCloneIceBridge_0
	.4byte Entities_TempleOfDroplets_BlockCloneIceBridge_1
	.4byte Enemies_TempleOfDroplets_BlockCloneIceBridge
	.4byte TileEntities_TempleOfDroplets_BlockCloneIceBridge
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BlockCloneIceBridge
	.4byte sub_StateChange_Dojos_77

Entities_TempleOfDroplets_StairsToScissorsMiniboss_0:: @ 080E5120
	object_raw subtype=0x5, x=0x38, y=0x78
	object_raw subtype=0x5, x=0x28, y=0x78, paramA=0x5f
	object_raw subtype=0x0, x=0x78, y=0x38, collision=1, paramA=0x54, paramB=0x400, paramC=0x8a0000
	object_raw subtype=0x0, x=0x98, y=0x38, collision=1, paramA=0x54, paramB=0x400, paramC=0x8b0000
	object_raw subtype=0x0, x=0xb8, y=0x38, collision=1, paramA=0x54, paramB=0x400, paramC=0x8c0000
	object_raw subtype=0x0, x=0xd8, y=0x38, collision=1, paramA=0x54, paramB=0x400, paramC=0x8d0000
	object_raw subtype=0x0, x=0xd8, y=0x58, collision=1, paramA=0x54, paramB=0x400, paramC=0x8e0000
	entity_list_end

Entities_TempleOfDroplets_StairsToScissorsMiniboss_1:: @ 080E51A0
	object_raw subtype=0x4f, x=0xc8, paramA=0x1a
	entity_list_end

Enemies_TempleOfDroplets_StairsToScissorsMiniboss:: @ 080E51C0
	enemy_raw subtype=0x10, x=0x88, y=0x38, paramA=0x1
	enemy_raw subtype=0x10, x=0xe8, y=0x38, paramA=0x1
	enemy_raw subtype=0x10, x=0x48, y=0x88
	enemy_raw subtype=0x10, x=0x98, y=0x88
	entity_list_end

TileEntities_TempleOfDroplets_StairsToScissorsMiniboss:: @ 080E5210
	tile_entity type=0x1, paramA=0x18
	tile_entity_list_end

Room_TempleOfDroplets_StairsToScissorsMiniboss:: @ 080E5220
	.4byte Entities_TempleOfDroplets_StairsToScissorsMiniboss_0
	.4byte Entities_TempleOfDroplets_StairsToScissorsMiniboss_1
	.4byte Enemies_TempleOfDroplets_StairsToScissorsMiniboss
	.4byte TileEntities_TempleOfDroplets_StairsToScissorsMiniboss
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_StairsToScissorsMiniboss
	.4byte sub_StateChange_Dojos_78

Entities_TempleOfDroplets_SpikeBar_0:: @ 080E5240
	entity_list_end

Entities_TempleOfDroplets_SpikeBar_1:: @ 080E5250
	object_raw subtype=0x4f, x=0xf0, y=0x78, paramA=0x1a, paramB=0x1
	object_raw subtype=0x4f, x=0xf0, y=0x218, paramA=0x1a, paramB=0x1
	entity_list_end

Enemies_TempleOfDroplets_SpikeBar:: @ 080E5280
	enemy_raw subtype=0x40, x=0x38, y=0x178, paramB=0x10100000, paramC=0x1700020
	enemy_raw subtype=0x40, x=0x28, y=0x1a8, paramB=0x10100000, paramC=0x1700020
	enemy_raw subtype=0x40, x=0x88, y=0x1b8, paramB=0x10100000, paramC=0x1700020
	enemy_raw subtype=0x40, x=0x78, y=0x1e8, paramB=0x10100000, paramC=0x1700020
	manager subtype=0x28, unknown=0x3, paramB=0x2
	projectile_raw subtype=0x1e, x=0x98, y=0x48, unknown=0x3, paramA=0x2, paramC=0x100ffa0
	projectile_raw subtype=0x1e, x=0x28, y=0x88, unknown=0x3, paramA=0x2, paramC=0x1000060
	projectile_raw subtype=0x1e, x=0x98, y=0xc8, unknown=0x3, paramA=0x2, paramC=0x100ffa0
	projectile_raw subtype=0x1e, x=0x28, y=0x108, unknown=0x3, paramA=0x2, paramC=0x1000060
	entity_list_end

TileEntities_TempleOfDroplets_SpikeBar:: @ 080E5320
	tile_entity type=0x1, paramA=0x19
	tile_entity_list_end

Room_TempleOfDroplets_SpikeBar:: @ 080E5330
	.4byte Entities_TempleOfDroplets_SpikeBar_0
	.4byte Entities_TempleOfDroplets_SpikeBar_1
	.4byte Enemies_TempleOfDroplets_SpikeBar
	.4byte TileEntities_TempleOfDroplets_SpikeBar
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_SpikeBar
	.4byte sub_StateChange_Dojos_79

Entities_TempleOfDroplets_Lanterns_0:: @ 080E5350
	manager subtype=0x23, x=0x48, y=0x38, paramA=0x3, paramB=0xc0002, paramC=0x80000057
	manager subtype=0x23, x=0x48, y=0x68, paramA=0x3, paramB=0xc0002, paramC=0x80010057
	manager subtype=0x23, x=0x48, y=0x98, paramA=0x3, paramB=0xc0002, paramC=0x80020057
	manager subtype=0x23, x=0x78, y=0x38, paramA=0x3, paramB=0xc0002, paramC=0x80030057
	manager subtype=0x23, x=0x78, y=0x68, paramA=0x3, paramB=0xc0002, paramC=0x80040057
	manager subtype=0x23, x=0x78, y=0x98, paramA=0x3, paramB=0xc0002, paramC=0x80050057
	manager subtype=0x23, x=0xa8, y=0x38, paramA=0x3, paramB=0xc0002, paramC=0x80060057
	manager subtype=0x23, x=0xa8, y=0x68, paramA=0x3, paramB=0xc0002, paramC=0x80070057
	manager subtype=0x23, x=0xa8, y=0x98, paramA=0x3, paramB=0xc0002, paramC=0x80080057
	manager subtype=0x11, paramC=0xa0000057
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0xa0000057
	object_raw subtype=0x8, x=0x28, y=0x78, paramA=0x3, paramC=0x57ffff
	entity_list_end

Entities_TempleOfDroplets_Lanterns_1:: @ 080E5420
	object_raw subtype=0x4f, x=0x10, y=0x78, paramA=0x1a, paramB=0x3
	entity_list_end

Enemies_TempleOfDroplets_Lanterns:: @ 080E5440
	entity_list_end

TileEntities_TempleOfDroplets_Lanterns:: @ 080E5450
	tile_entity type=0x1, paramA=0x1a
	tile_entity_list_end

Room_TempleOfDroplets_Lanterns:: @ 080E5460
	.4byte Entities_TempleOfDroplets_Lanterns_0
	.4byte Entities_TempleOfDroplets_Lanterns_1
	.4byte Enemies_TempleOfDroplets_Lanterns
	.4byte TileEntities_TempleOfDroplets_Lanterns
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_Lanterns
	.4byte sub_StateChange_Dojos_80

Entities_TempleOfDroplets_LilypadIceBlocks_0:: @ 080E5480
	object_raw subtype=0x14, x=0x1a8, y=0x68
	object_raw subtype=0x3, x=0x1c8, y=0x1b8, paramC=0x580001
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x58009d
	object_raw subtype=0x3, x=0x98, y=0x188, paramA=0x1, paramC=0x80000001
	manager subtype=0x2e, unknown=0x0, paramA=0x1, paramB=0xa00, paramC=0x80000000
	object_raw subtype=0x33, x=0x178, y=0x1c8, paramA=0x3, paramC=0x9d0000
	object_raw subtype=0x33, x=0x188, y=0x1c8, paramA=0x3, paramC=0x9d0000
	object_raw subtype=0x33, x=0x198, y=0x1c8, paramA=0x3, paramC=0x9d0000
	object_raw subtype=0x33, x=0x1a8, y=0x1c8, paramA=0x3, paramC=0x9d0000
	object_raw subtype=0x33, x=0x38, y=0x188, paramA=0x3, paramC=0x80000000
	object_raw subtype=0x33, x=0x48, y=0x188, paramA=0x3, paramC=0x80000000
	object_raw subtype=0x33, x=0x58, y=0x188, paramA=0x3, paramC=0x80000000
	object_raw subtype=0x84, x=0x98, y=0x178
	object_raw subtype=0x84, x=0xe8, y=0x188
	object_raw subtype=0x84, x=0xc8, y=0x198
	object_raw subtype=0x84, x=0x88, y=0x1b8
	object_raw subtype=0x84, x=0xd8, y=0x1c8
	manager subtype=0x1e, x=0x1c0, y=0x50, paramB=0x300020, paramC=0x590000
	object_raw subtype=0x85, x=0x168, y=0x138, paramA=0x1, paramC=0x5a0000
	object_raw subtype=0x5, x=0x148, y=0x58
	object_raw subtype=0x5, x=0x158, y=0x58
	object_raw subtype=0x5, x=0x148, y=0x68
	object_raw subtype=0x5, x=0x158, y=0x68
	object_raw subtype=0x5, x=0x148, y=0x78
	object_raw subtype=0x5, x=0x158, y=0x78
	object_raw subtype=0x5, x=0x68, y=0x68
	object_raw subtype=0x5, x=0x78, y=0x68
	object_raw subtype=0x5, x=0x68, y=0x78
	object_raw subtype=0x5, x=0x78, y=0x78
	entity_list_end

gUnk_080E5660:: @ 080E5660
	object_raw subtype=0x84, x=0xc8, y=0x148
	entity_list_end

gUnk_080E5680:: @ 080E5680
	object_raw subtype=0x84, x=0x98, y=0x188
	entity_list_end

Enemies_TempleOfDroplets_LilypadIceBlocks:: @ 080E56A0
	enemy_raw subtype=0x11, x=0x58, y=0x1c8, paramB=0x241c0000, paramC=0x1200030
	enemy_raw subtype=0x11, x=0xd8, y=0x208, paramB=0x241c0000, paramC=0x1200030
	enemy_raw subtype=0x11, x=0xe8, y=0x68, paramA=0x1, paramB=0x14280000, paramC=0x500050
	enemy_raw subtype=0x11, x=0x138, y=0xd8, paramA=0x1, paramB=0x14280000, paramC=0x500050
	enemy_raw subtype=0x32, x=0xf8, y=0x118, paramA=0x1
	enemy_raw subtype=0x32, x=0x138, y=0x138, paramA=0x1
	entity_list_end

TileEntities_TempleOfDroplets_LilypadIceBlocks:: @ 080E5710
	tile_entity type=0x2, paramA=0x5a, paramB=0x643f, paramC=0x4d6
	tile_entity type=0x2, paramA=0x5b, paramB=0x57, paramC=0x28f
	tile_entity type=0x1, paramA=0x1b
	tile_entity_list_end

Room_TempleOfDroplets_LilypadIceBlocks:: @ 080E5730
	.4byte Entities_TempleOfDroplets_LilypadIceBlocks_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_LilypadIceBlocks
	.4byte TileEntities_TempleOfDroplets_LilypadIceBlocks
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_LilypadIceBlocks
	.4byte sub_StateChange_TempleOfDroplets_LilypadIceBlocks

Entities_TempleOfDroplets_Pit_0:: @ 080E5750
	ezlo_hint x=0x4, y=0xa, rx=0x2, ry=0x3, msg=0xb45, flag=0x5c
	object_raw subtype=0x5, x=0x48, y=0x28
	object_raw subtype=0x5, x=0x48, y=0x38
	object_raw subtype=0x5, x=0x48, y=0x88
	object_raw subtype=0x5, x=0x58, y=0x88
	object_raw subtype=0x5, x=0x58, y=0x98
	object_raw subtype=0x5, x=0x48, y=0x98, paramA=0x5f
	object_raw subtype=0xbc, x=0x48, y=0x48
	entity_list_end

Enemies_TempleOfDroplets_Pit:: @ 080E57E0
	enemy_raw subtype=0x11, x=0xa8, y=0x88, paramB=0x100c0000, paramC=0x200090
	enemy_raw subtype=0x11, x=0xd8, y=0x38, paramB=0x100c0000, paramC=0x200090
	entity_list_end

TileEntities_TempleOfDroplets_Pit:: @ 080E5810
	tile_entity type=0x9
	tile_entity type=0x1, paramA=0x1c
	tile_entity_list_end

Room_TempleOfDroplets_Pit:: @ 080E5828
	.4byte Entities_TempleOfDroplets_Pit_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_Pit
	.4byte TileEntities_TempleOfDroplets_Pit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_Pit
	.4byte sub_StateChange_Dojos_81

Entities_TempleOfDroplets_FireBars_0:: @ 080E5848
	entity_list_end

Enemies_TempleOfDroplets_FireBars:: @ 080E5858
	projectile_raw subtype=0x1d, x=0x38, y=0x38, unknown=0x3
	projectile_raw subtype=0x1d, x=0x88, y=0x98, unknown=0x3
	enemy_raw subtype=0x32, x=0x68, y=0x58
	enemy_raw subtype=0x32, x=0x98, y=0x78
	entity_list_end

TileEntities_TempleOfDroplets_FireBars:: @ 080E58A8
	tile_entity type=0x9
	tile_entity type=0x1, paramA=0x1d
	tile_entity_list_end

Room_TempleOfDroplets_FireBars:: @ 080E58C0
	.4byte Entities_TempleOfDroplets_FireBars_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_FireBars
	.4byte TileEntities_TempleOfDroplets_FireBars
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_FireBars
	.4byte sub_StateChange_Dojos_82

Entities_TempleOfDroplets_LanternMaze_0:: @ 080E58E0
	manager subtype=0x23, x=0x28, y=0x98, paramA=0x2, paramB=0x1, paramC=0x610000
	object_raw subtype=0xbc, x=0x28, y=0x98, paramC=0x610000
	manager subtype=0xf, x=0x28, y=0x58, paramA=0x5, paramB=0x1, paramC=0x610000
	manager subtype=0x23, x=0xa8, y=0xb8, paramA=0x2, paramB=0x1, paramC=0x620000
	object_raw subtype=0xbc, x=0xa8, y=0xb8, paramC=0x620000
	manager subtype=0xf, x=0x88, y=0xa8, paramA=0x5, paramB=0x1, paramC=0x620000
	manager subtype=0x23, x=0x88, y=0x198, paramA=0x2, paramB=0x1, paramC=0x640000
	object_raw subtype=0xbc, x=0x88, y=0x198, paramC=0x640000
	manager subtype=0xf, x=0xc8, y=0x168, paramA=0x5, paramB=0x1, paramC=0x640000
	manager subtype=0x23, x=0xc8, y=0x238, paramA=0x2, paramB=0x1, paramC=0x650000
	object_raw subtype=0xbc, x=0xc8, y=0x238, paramC=0x650000
	manager subtype=0xf, x=0xb8, y=0x218, paramA=0x5, paramB=0x1, paramC=0x650000
	object_raw subtype=0x8, x=0x18, y=0x68, paramA=0xb, paramC=0x63ffff
	object_raw subtype=0x5, x=0x28, y=0x168
	object_raw subtype=0x5, x=0x28, y=0x108
	object_raw subtype=0x5, x=0xb8, y=0x238
	object_raw subtype=0x5, x=0x68, y=0x98, paramA=0x5f
	object_raw subtype=0x5, x=0x48, y=0x158, paramA=0x5d
	object_raw subtype=0x5, x=0x28, y=0x1b8, paramA=0x5d
	entity_list_end

Enemies_TempleOfDroplets_LanternMaze:: @ 080E5A20
	enemy_raw subtype=0x32, x=0x28, y=0xd8, paramA=0x1
	enemy_raw subtype=0x32, x=0x78, y=0x138, paramA=0x1
	enemy_raw subtype=0x32, x=0xc8, y=0x1d8, paramA=0x1
	enemy_raw subtype=0x32, x=0x48, y=0x1d8, paramA=0x1
	enemy_raw subtype=0x32, x=0x58, y=0x58
	enemy_raw subtype=0x32, x=0xc8, y=0xd8
	enemy_raw subtype=0x32, x=0xc8, y=0x118
	enemy_raw subtype=0x11, x=0xa8, y=0x68, paramB=0x1c160000, paramC=0x300020
	enemy_raw subtype=0x11, x=0xa8, y=0x48, paramB=0x1c160000, paramC=0x3000b0
	enemy_raw subtype=0x11, x=0x48, y=0xf8, paramB=0x1c160000, paramC=0xd00020
	enemy_raw subtype=0x11, x=0x88, y=0x158, paramB=0x1c160000, paramC=0xd00020
	enemy_raw subtype=0x11, x=0x48, y=0x1a8, paramB=0x1c160000, paramC=0x1600020
	enemy_raw subtype=0x11, x=0xa8, y=0x1f8, paramB=0x1c160000, paramC=0x1600020
	entity_list_end

TileEntities_TempleOfDroplets_LanternMaze:: @ 080E5B00
	tile_entity type=0x9
	tile_entity type=0x2, paramA=0x5d, paramB=0x6e5c, paramC=0xcc
	tile_entity type=0x2, paramA=0x5e, paramB=0x6f5c, paramC=0x203
	tile_entity type=0x2, paramA=0x5f, paramB=0x705c, paramC=0x706
	tile_entity type=0x4, paramA=0x60, paramB=0x1, paramC=0x18, paramD=0x138
	tile_entity type=0x1, paramA=0x1e
	tile_entity_list_end

Room_TempleOfDroplets_LanternMaze:: @ 080E5B38
	.4byte Entities_TempleOfDroplets_LanternMaze_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_LanternMaze
	.4byte TileEntities_TempleOfDroplets_LanternMaze
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_LanternMaze
	.4byte sub_StateChange_Dojos_83

Entities_TempleOfDroplets_Madderpillars_0:: @ 080E5B58
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x660000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x66009e
	object_raw subtype=0x8, x=0xd8, y=0x68, paramA=0x1, paramC=0x9effff
	projectile_raw subtype=0x15, x=0x78, y=0xa8, unknown=0xf, paramA=0x2, paramC=0x670000
	projectile_raw subtype=0x15, x=0x38, y=0xa8, unknown=0xf, paramA=0x2
	projectile_raw subtype=0x15, x=0xa8, y=0xa8, unknown=0xf, paramA=0x2
	projectile_raw subtype=0x15, x=0x38, y=0x28, unknown=0xf
	projectile_raw subtype=0x15, x=0x58, y=0x28, unknown=0xf
	projectile_raw subtype=0x15, x=0x78, y=0x28, unknown=0xf
	projectile_raw subtype=0x15, x=0xa8, y=0x28, unknown=0xf
	projectile_raw subtype=0x15, x=0x28, y=0x58, unknown=0xf, paramA=0x3
	projectile_raw subtype=0x15, x=0x28, y=0x88, unknown=0xf, paramA=0x3
	projectile_raw subtype=0x15, x=0xd8, y=0x48, unknown=0xf, paramA=0x1
	projectile_raw subtype=0x15, x=0xd8, y=0x88, unknown=0xf, paramA=0x1
	object_raw subtype=0xbc, x=0xbc, y=0x58
	object_raw subtype=0xbc, x=0xbc, y=0x78
	entity_list_end

Entities_TempleOfDroplets_Madderpillars_1:: @ 080E5C68
	object_raw subtype=0x4f, x=0x78, y=0xc0, paramA=0x1a, paramB=0x8
	object_raw subtype=0x4f, x=0xf0, y=0x68, paramA=0x1a, paramB=0x1
	entity_list_end

Enemies_TempleOfDroplets_Madderpillars:: @ 080E5C98
	entity_list_end

TileEntities_TempleOfDroplets_Madderpillars:: @ 080E5CA8
	tile_entity type=0x9
	tile_entity type=0x1, paramA=0x1f
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_Madderpillars:: @ 080E5CC0
	enemy_raw subtype=0x18, x=0x38, y=0x68
	enemy_raw subtype=0x18, x=0xb8, y=0x68
	entity_list_end

Room_TempleOfDroplets_Madderpillars:: @ 080E5CF0
	.4byte Entities_TempleOfDroplets_Madderpillars_0
	.4byte Entities_TempleOfDroplets_Madderpillars_1
	.4byte Enemies_TempleOfDroplets_Madderpillars
	.4byte TileEntities_TempleOfDroplets_Madderpillars
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_Madderpillars
	.4byte sub_StateChange_Dojos_84
	.4byte gUnk_additional_8_TempleOfDroplets_Madderpillars

Entities_TempleOfDroplets_AfterMadderpillars_0:: @ 080E5D14
	object_raw subtype=0x8, x=0x38, y=0x68, paramA=0x3, paramC=0x66ffff
	object_raw subtype=0x85, x=0xd8, y=0x98, paramA=0x1, paramC=0x7e0000
	entity_list_end

Entities_TempleOfDroplets_AfterMadderpillars_1:: @ 080E5D44
	object_raw subtype=0x4f, x=0x88, y=0x10, paramA=0x1a
	object_raw subtype=0x4f, x=0x20, y=0x68, paramA=0x1a, paramB=0x3
	object_raw subtype=0x4f, x=0x8, y=0x68, paramA=0x1a, paramB=0x5
	entity_list_end

Enemies_TempleOfDroplets_AfterMadderpillars:: @ 080E5D84
	entity_list_end

TileEntities_TempleOfDroplets_AfterMadderpillars:: @ 080E5D94
	tile_entity type=0x2, paramA=0x7e, paramB=0x705c, paramC=0x24d
	tile_entity type=0x1, paramA=0x20
	tile_entity_list_end

Room_TempleOfDroplets_AfterMadderpillars:: @ 080E5DAC
	.4byte Entities_TempleOfDroplets_AfterMadderpillars_0
	.4byte Entities_TempleOfDroplets_AfterMadderpillars_1
	.4byte Enemies_TempleOfDroplets_AfterMadderpillars
	.4byte TileEntities_TempleOfDroplets_AfterMadderpillars
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_AfterMadderpillars
	.4byte sub_StateChange_Dojos_85

Entities_TempleOfDroplets_BlueChuchuKeyLever_0:: @ 080E5DCC
	object_raw subtype=0x12, x=0xb8, y=0x68, paramC=0x4b0000
	object_raw subtype=0x7b, x=0xb8, y=0x98, paramC=0x6c0000
	manager subtype=0x1a, unknown=0x8, paramA=0xb
	object_raw subtype=0x5, x=0x58, y=0x28
	object_raw subtype=0x5, x=0x58, y=0x38
	object_raw subtype=0x5, x=0x58, y=0x48
	entity_list_end

gUnk_080E5E3C:: @ 080E5E3C
	manager subtype=0x15, x=0xb8, y=0x68, unknown=0x8, paramA=0x2, paramB=0xffc8, paramC=0x6c0000
	entity_list_end

gUnk_080E5E5C:: @ 080E5E5C
	manager subtype=0x15, x=0xb8, y=0x68, unknown=0x8, paramA=0x3, paramB=0xffc8, paramC=0x6c0000
	entity_list_end

Enemies_TempleOfDroplets_BlueChuchuKeyLever:: @ 080E5E7C
	entity_list_end

TileEntities_TempleOfDroplets_BlueChuchuKeyLever:: @ 080E5E8C
	tile_entity type=0x1, paramA=0x21
	tile_entity_list_end

Room_TempleOfDroplets_BlueChuchuKeyLever:: @ 080E5E9C
	.4byte Entities_TempleOfDroplets_BlueChuchuKeyLever_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_BlueChuchuKeyLever
	.4byte TileEntities_TempleOfDroplets_BlueChuchuKeyLever
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BlueChuchuKeyLever
	.4byte sub_StateChange_TempleOfDroplets_BlueChuchuKeyLever

Entities_TempleOfDroplets_MulldozerKey_0:: @ 080E5EBC
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x6d0000
	manager subtype=0x17, x=0x78, y=0x68, paramA=0x53, paramB=0x10200, paramC=0x6e006f
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x6d006e
	object_raw subtype=0xbc, x=0x68, y=0x68
	object_raw subtype=0xbc, x=0x88, y=0x68
	entity_list_end

Enemies_TempleOfDroplets_MulldozerKey:: @ 080E5F1C
	entity_list_end

TileEntities_TempleOfDroplets_MulldozerKey:: @ 080E5F2C
	tile_entity type=0x9
	tile_entity type=0x1, paramA=0x22
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_MulldozerKey:: @ 080E5F44
	enemy_raw subtype=0x32, x=0x58, y=0x58
	enemy_raw subtype=0x32, x=0x78, y=0x78
	enemy_raw subtype=0x32, x=0x98, y=0x58
	enemy_raw subtype=0x32, x=0x58, y=0x78, paramA=0x1
	enemy_raw subtype=0x32, x=0x78, y=0x58, paramA=0x1
	enemy_raw subtype=0x32, x=0x98, y=0x78, paramA=0x1
	entity_list_end

Room_TempleOfDroplets_MulldozerKey:: @ 080E5FB4
	.4byte Entities_TempleOfDroplets_MulldozerKey_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_MulldozerKey
	.4byte TileEntities_TempleOfDroplets_MulldozerKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_MulldozerKey
	.4byte sub_StateChange_Dojos_86
	.4byte gUnk_additional_8_TempleOfDroplets_MulldozerKey

Entities_TempleOfDroplets_BombWall_0:: @ 080E5FD8
	object_raw subtype=0x3, x=0xb8, y=0x98, paramC=0x700002
	object_raw subtype=0x34, x=0x78, y=0x78, paramA=0x1, paramB=0x360, paramC=0x700393
	object_raw subtype=0x5, x=0x58, y=0x48
	object_raw subtype=0x5, x=0x98, y=0x48
	object_raw subtype=0x5, x=0x58, y=0x58
	object_raw subtype=0x5, x=0x78, y=0x58
	object_raw subtype=0x5, x=0x98, y=0x58
	object_raw subtype=0x5, x=0x68, y=0x48
	object_raw subtype=0x5, x=0x88, y=0x48
	object_raw subtype=0x5, x=0x78, y=0x48, paramA=0x5f
	object_raw subtype=0x5, x=0x88, y=0x58, paramA=0x5f
	object_raw subtype=0x5, x=0x68, y=0x58, paramA=0x5d
	entity_list_end

Entities_TempleOfDroplets_BombWall_1:: @ 080E60A8
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0x1a, paramB=0x4
	object_raw subtype=0x4f, x=0x10, y=0x68, paramA=0x1a, paramB=0x3
	entity_list_end

Enemies_TempleOfDroplets_BombWall:: @ 080E60D8
	enemy_raw subtype=0x11, x=0x48, y=0x48, paramA=0x1, paramB=0xa0e0001, paramC=0x400040
	enemy_raw subtype=0x11, x=0xa8, y=0x48, paramA=0x1, paramB=0xa0e0001, paramC=0x400040
	enemy_raw subtype=0x11, x=0xa8, y=0x78, paramA=0x1, paramB=0xa0e0001, paramC=0x400040
	entity_list_end

TileEntities_TempleOfDroplets_BombWall:: @ 080E6118
	tile_entity type=0x4, paramA=0x71, paramB=0x2, paramC=0x78, paramD=0x28
	tile_entity type=0x1, paramA=0x23
	tile_entity_list_end

Room_TempleOfDroplets_BombWall:: @ 080E6130
	.4byte Entities_TempleOfDroplets_BombWall_0
	.4byte Entities_TempleOfDroplets_BombWall_1
	.4byte Enemies_TempleOfDroplets_BombWall
	.4byte TileEntities_TempleOfDroplets_BombWall
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_BombWall
	.4byte sub_StateChange_Dojos_87

Entities_TempleOfDroplets_LilypadWestB2_0:: @ 080E6150
	entity_raw type=0x5, subtype=0x0, x=0x600, unknown=0x0, paramB=0x543
	object_raw subtype=0x3, x=0x38, y=0x188, paramC=0x720001
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x7200a0
	object_raw subtype=0x33, x=0xb8, y=0x148, paramA=0x3, paramC=0xa00000
	object_raw subtype=0x33, x=0xb8, y=0x158, paramA=0x3, paramC=0xa00000
	object_raw subtype=0x33, x=0xb8, y=0x168, paramA=0x3, paramC=0xa00000
	object_raw subtype=0x33, x=0xb8, y=0x178, paramA=0x3, paramC=0xa00000
	object_raw subtype=0x33, x=0xb8, y=0x188, paramA=0x3, paramC=0xa00000
	object_raw subtype=0x14, x=0x78, y=0xa8, paramA=0x1, paramB=0x73
	object_raw subtype=0x0, x=0x68, y=0x88, collision=1, paramA=0x55, paramB=0x800, paramC=0x8f0000
	object_raw subtype=0x0, x=0x78, y=0x88, collision=1, paramA=0x55, paramB=0x800, paramC=0x900000
	object_raw subtype=0x0, x=0x88, y=0x88, collision=1, paramA=0x55, paramB=0x800, paramC=0x910000
	object_raw subtype=0x0, x=0x68, y=0x98, collision=1, paramA=0x55, paramB=0x800, paramC=0x920000
	object_raw subtype=0x0, x=0x78, y=0x98, collision=1, paramA=0x55, paramB=0x800, paramC=0x930000
	object_raw subtype=0x0, x=0x88, y=0x98, collision=1, paramA=0x55, paramB=0x800, paramC=0x940000
	entity_list_end

Enemies_TempleOfDroplets_LilypadWestB2:: @ 080E6250
	projectile_raw subtype=0x1e, x=0x78, y=0xe0, unknown=0x3, paramA=0x8, paramC=0xc000a8
	entity_list_end

TileEntities_TempleOfDroplets_LilypadWestB2:: @ 080E6270
	tile_entity type=0x5, paramB=0x5700, paramC=0x543, paramD=0x657
	tile_entity type=0x1, paramA=0x24
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_LilypadWestB2:: @ 080E6288
	.incbin "data_080D5360/gUnk_additional_8_TempleOfDroplets_LilypadWestB2.bin"

Room_TempleOfDroplets_LilypadWestB2:: @ 080E62A8
	.4byte Entities_TempleOfDroplets_LilypadWestB2_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_LilypadWestB2
	.4byte TileEntities_TempleOfDroplets_LilypadWestB2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_LilypadWestB2
	.4byte sub_StateChange_Dojos_88
	.4byte gUnk_additional_8_TempleOfDroplets_LilypadWestB2

Entities_TempleOfDroplets_CompassRoom_0:: @ 080E62CC
	object_raw subtype=0x8, x=0xa8, y=0xb8, paramA=0x2, paramC=0x7bffff
	object_raw subtype=0xc, x=0xe0, y=0x88, paramA=0x4, paramB=0x77
	object_raw subtype=0x85, x=0x68, y=0x98, paramA=0x1, paramC=0x760000
	object_raw subtype=0x85, x=0x90, y=0x70, paramC=0x740000
	object_raw subtype=0x85, x=0xb0, y=0x70, paramC=0x750000
	entity_list_end

Enemies_TempleOfDroplets_CompassRoom:: @ 080E632C
	enemy_raw subtype=0x32, x=0xc8, y=0x38
	enemy_raw subtype=0x32, x=0xd8, y=0x58
	entity_list_end

TileEntities_TempleOfDroplets_CompassRoom:: @ 080E635C
	tile_entity type=0x2, paramA=0x76, paramB=0x58, paramC=0x246
	tile_entity type=0x3, paramA=0x77, paramB=0x51, paramC=0xe0, paramD=0x88
	tile_entity type=0x1, paramA=0x25
	tile_entity_list_end

Room_TempleOfDroplets_CompassRoom:: @ 080E637C
	.4byte Entities_TempleOfDroplets_CompassRoom_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_CompassRoom
	.4byte TileEntities_TempleOfDroplets_CompassRoom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_CompassRoom
	.4byte sub_StateChange_Dojos_89

Entities_TempleOfDroplets_LanternScissors_0:: @ 080E639C
	manager subtype=0x23, x=0x78, y=0x38, paramA=0x3, paramB=0x54001, paramC=0x80000000
	manager subtype=0x23, x=0x48, y=0x68, paramA=0x3, paramB=0x54001, paramC=0x80010000
	manager subtype=0x23, x=0xa8, y=0x68, paramA=0x3, paramB=0x54001, paramC=0x80020000
	manager subtype=0x23, x=0x78, y=0x98, paramA=0x3, paramB=0x54001, paramC=0x80030000
	manager subtype=0x1e, x=0x36, y=0x20, paramB=0x900020, paramC=0x80050000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x788005
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x78009f
	object_raw subtype=0x8, x=0x28, y=0x38, paramA=0x13, paramC=0x9fffff
	object_raw subtype=0x8, x=0xc8, y=0x78, paramA=0x1, paramC=0x9fffff


Enemies_TempleOfDroplets_LanternScissors:: @ 080E642C
	entity_list_end

TileEntities_TempleOfDroplets_LanternScissors:: @ 080E643C
	tile_entity type=0x9
	tile_entity type=0x1, paramA=0x26
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_LanternScissors:: @ 080E6454
	enemy_raw subtype=0x40, x=0x68, y=0x58, unknown=0x2f
	enemy_raw subtype=0x40, x=0x78, y=0x88, unknown=0x2f
	enemy_raw subtype=0x40, x=0x88, y=0x68, unknown=0x2f
	manager subtype=0x28, unknown=0x3, paramB=0x8
	entity_list_end

Room_TempleOfDroplets_LanternScissors:: @ 080E64A4
	.4byte Entities_TempleOfDroplets_LanternScissors_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_LanternScissors
	.4byte TileEntities_TempleOfDroplets_LanternScissors
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_LanternScissors
	.4byte sub_StateChange_Dojos_90
	.4byte gUnk_additional_8_TempleOfDroplets_LanternScissors

Entities_TempleOfDroplets_LilypadMiddleB2_0:: @ 080E64C8
	object_raw subtype=0x0, x=0x98, y=0x98, collision=1, paramA=0x53, paramB=0x800, paramC=0x7a0000
	object_raw subtype=0x3, x=0x128, y=0x68, paramC=0x790001
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x7900a1
	object_raw subtype=0x33, x=0x138, y=0x28, paramA=0x3, paramC=0xa10000
	object_raw subtype=0x33, x=0x138, y=0x38, paramA=0x3, paramC=0xa10000
	object_raw subtype=0x33, x=0x138, y=0x48, paramA=0x3, paramC=0xa10000
	object_raw subtype=0x33, x=0x138, y=0x88, paramA=0x3, paramC=0xa10000
	object_raw subtype=0x33, x=0x138, y=0x98, paramA=0x3, paramC=0xa10000
	object_raw subtype=0x33, x=0x138, y=0xa8, paramA=0x3, paramC=0xa10000
	object_raw subtype=0x33, x=0x138, y=0xb8, paramA=0x3, paramC=0xa10000
	entity_list_end

Enemies_TempleOfDroplets_LilypadMiddleB2:: @ 080E6578
	enemy_raw subtype=0x11, x=0x168, y=0x58, paramB=0xe0e0000, paramC=0x300150
	enemy_raw subtype=0x11, x=0x168, y=0x58, paramB=0xe0e0000, paramC=0x8001a0
	entity_list_end

TileEntities_TempleOfDroplets_LilypadMiddleB2:: @ 080E65A8
	tile_entity type=0x1, paramA=0x27
	tile_entity_list_end

Room_TempleOfDroplets_LilypadMiddleB2:: @ 080E65B8
	.4byte Entities_TempleOfDroplets_LilypadMiddleB2_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_LilypadMiddleB2
	.4byte TileEntities_TempleOfDroplets_LilypadMiddleB2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_LilypadMiddleB2
	.4byte sub_StateChange_Dojos_91

Entities_TempleOfDroplets_LilypadEastB2_0:: @ 080E65D8
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x7b0000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x7b007c
	object_raw subtype=0x8, x=0xa8, y=0x28, paramC=0x7cffff
	projectile_raw subtype=0x15, x=0x80, y=0x28, unknown=0xf
	projectile_raw subtype=0x15, x=0xd0, y=0x28, unknown=0xf
	projectile_raw subtype=0x15, x=0xf8, y=0x58, unknown=0xf, paramA=0x1
	projectile_raw subtype=0x15, x=0xf8, y=0x78, unknown=0xf, paramA=0x1
	projectile_raw subtype=0x15, x=0xf8, y=0x98, unknown=0xf, paramA=0x1
	projectile_raw subtype=0x15, x=0x78, y=0xc8, unknown=0xf, paramA=0x2
	projectile_raw subtype=0x15, x=0x98, y=0xc8, unknown=0xf, paramA=0x2
	projectile_raw subtype=0x15, x=0xc8, y=0xc8, unknown=0xf, paramA=0x2
	entity_list_end

Enemies_TempleOfDroplets_LilypadEastB2:: @ 080E6698
	entity_list_end

TileEntities_TempleOfDroplets_LilypadEastB2:: @ 080E66A8
	tile_entity type=0x1, paramA=0x28
	tile_entity_list_end

gUnk_additional_8_TempleOfDroplets_LilypadEastB2:: @ 080E66B8
	enemy_raw subtype=0x18, x=0xa8, y=0x68
	entity_list_end

Room_TempleOfDroplets_LilypadEastB2:: @ 080E66D8
	.4byte Entities_TempleOfDroplets_LilypadEastB2_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_LilypadEastB2
	.4byte TileEntities_TempleOfDroplets_LilypadEastB2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_LilypadEastB2
	.4byte sub_StateChange_Dojos_92
	.4byte gUnk_additional_8_TempleOfDroplets_LilypadEastB2

Entities_TempleOfDroplets_FlameBarBlockPuzzle_0:: @ 080E66FC
	object_raw subtype=0x8, x=0x78, y=0x28, paramC=0x54ffff
	manager subtype=0xd, x=0x14a, y=0x1, paramC=0x550000
	object_raw subtype=0x8, x=0x48, y=0x78, paramA=0x3, paramC=0x55ffff
	entity_list_end

Enemies_TempleOfDroplets_FlameBarBlockPuzzle:: @ 080E673C
	projectile_raw subtype=0x1d, x=0x58, y=0x38, unknown=0x3
	projectile_raw subtype=0x1d, x=0x98, y=0x88, unknown=0x3
	entity_list_end

TileEntities_TempleOfDroplets_FlameBarBlockPuzzle:: @ 080E676C
	tile_entity type=0x1, paramA=0x82
	tile_entity_list_end
	
	entity_list_end

Room_TempleOfDroplets_FlameBarBlockPuzzle:: @ 080E678C
	.4byte Entities_TempleOfDroplets_FlameBarBlockPuzzle_0
	.4byte 0x00000000
	.4byte Enemies_TempleOfDroplets_FlameBarBlockPuzzle
	.4byte TileEntities_TempleOfDroplets_FlameBarBlockPuzzle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TempleOfDroplets_FlameBarBlockPuzzle
	.4byte sub_StateChange_Dojos_93

Entities_RoyalCrypt_KingGustaf_0:: @ 080E67AC
	object_raw subtype=0x5, x=0x78, y=0x38
	object_raw subtype=0x5, x=0x68, y=0x48
	object_raw subtype=0x5, x=0x78, y=0x48
	object_raw subtype=0x5, x=0x88, y=0x48
	object_raw subtype=0x5, x=0x58, y=0x58
	object_raw subtype=0x5, x=0x98, y=0x58
	object_raw subtype=0x5, x=0x48, y=0x68
	object_raw subtype=0x5, x=0x58, y=0x68
	object_raw subtype=0x5, x=0x68, y=0x68
	object_raw subtype=0x5, x=0x88, y=0x68
	object_raw subtype=0x5, x=0x98, y=0x68
	object_raw subtype=0x5, x=0xa8, y=0x68
	object_raw subtype=0x5, x=0x1b8, y=0x38
	object_raw subtype=0x5, x=0x1a8, y=0x48
	object_raw subtype=0x5, x=0x1b8, y=0x48
	object_raw subtype=0x5, x=0x1c8, y=0x48
	object_raw subtype=0x5, x=0x198, y=0x58
	object_raw subtype=0x5, x=0x188, y=0x68
	object_raw subtype=0x5, x=0x198, y=0x68
	object_raw subtype=0x5, x=0x1a8, y=0x68
	object_raw subtype=0x5, x=0x1c8, y=0x68
	object_raw subtype=0x5, x=0x1d8, y=0x68
	object_raw subtype=0x5, x=0x1e8, y=0x68
	object_raw subtype=0x5, x=0x1d8, y=0x58
	entity_list_end

gUnk_080E693C:: @ 080E693C
	npc_raw subtype=0x42, x=0x118, y=0x48, script=script_KingGustav
	object_raw subtype=0x6a, x=0x118, y=0x28, unknown=0x4f, paramA=0x12, paramB=0x9, paramC=script_Object6AKingsGravestone
	entity_list_end

Enemies_RoyalCrypt_KingGustaf:: @ 080E696C
	entity_list_end

TileEntities_RoyalCrypt_KingGustaf:: @ 080E697C
	tile_entity type=0x7, paramB=0x2c00
	tile_entity_list_end

Room_RoyalCrypt_KingGustaf:: @ 080E698C
	.4byte Entities_RoyalCrypt_KingGustaf_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_KingGustaf
	.4byte TileEntities_RoyalCrypt_KingGustaf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_KingGustaf
	.4byte sub_StateChange_RoyalCrypt_KingGustaf

Entities_RoyalCrypt_WaterRope_0:: @ 080E69AC
	manager subtype=0x23, x=0x28, y=0x48, paramA=0x2, paramB=0x4001, paramC=0x80000000
	manager subtype=0x23, x=0xe8, y=0x48, paramA=0x2, paramB=0x4001, paramC=0x80010000
	manager subtype=0x23, x=0x28, y=0xb8, paramA=0x2, paramB=0x4001, paramC=0x80020000
	manager subtype=0x23, x=0xe8, y=0xb8, paramA=0x2, paramB=0x4001, paramC=0x80030000
	enemy_raw subtype=0x49, x=0x19, y=0xf102, collision=1, paramA=0x5a, paramB=0x101a8c00, paramC=0x403020
	enemy_raw subtype=0x49, x=0x19, y=0xf10e, collision=1, paramA=0x64, paramB=0x101a8c00, paramC=0x403020
	enemy_raw subtype=0x49, x=0x19, y=0xf2c2, collision=1, paramA=0x6e, paramB=0x101a8c00, paramC=0x403020
	enemy_raw subtype=0x49, x=0x19, y=0xf2ce, collision=1, paramA=0x78, paramB=0x101a8c00, paramC=0x403020
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x198c00
	manager subtype=0xf, x=0x58, y=0x78, paramA=0xc, paramC=0x198c00
	manager subtype=0xf, x=0xb8, y=0x78, paramA=0xc, paramC=0x198c00
	object_raw subtype=0x39, x=0x88, y=0x38, paramA=0x4, paramC=0x19ffff
	entity_list_end

Enemies_RoyalCrypt_WaterRope:: @ 080E6A7C
	entity_list_end

TileEntities_RoyalCrypt_WaterRope:: @ 080E6A8C
	tile_entity_list_end

gUnk_additional_8_RoyalCrypt_WaterRope:: @ 080E6A94
	object_raw subtype=0x8, x=0x88, y=0xc8, paramA=0x12, paramC=0x19ffff
	enemy_raw subtype=0x3b, x=0x58, y=0x78, unknown=0x2f
	enemy_raw subtype=0x3b, x=0xb8, y=0x78, unknown=0x2f
	entity_list_end

Room_RoyalCrypt_WaterRope:: @ 080E6AD4
	.4byte Entities_RoyalCrypt_WaterRope_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_WaterRope
	.4byte TileEntities_RoyalCrypt_WaterRope
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_WaterRope
	.4byte sub_StateChange_Dojos_94
	.4byte gUnk_additional_8_RoyalCrypt_WaterRope

Entities_RoyalCrypt_Gibdo_0:: @ 080E6AF8
	entity_list_end

Enemies_RoyalCrypt_Gibdo:: @ 080E6B08
	enemy_raw subtype=0x2c, x=0xa8, y=0x48
	enemy_raw subtype=0x2c, x=0xa8, y=0x68
	enemy_raw subtype=0x2c, x=0xa8, y=0x88
	entity_list_end

TileEntities_RoyalCrypt_Gibdo:: @ 080E6B48
	tile_entity_list_end

Room_RoyalCrypt_Gibdo:: @ 080E6B50
	.4byte Entities_RoyalCrypt_Gibdo_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_Gibdo
	.4byte TileEntities_RoyalCrypt_Gibdo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_Gibdo
	.4byte sub_StateChange_Dojos_95

Entities_RoyalCrypt_3_0:: @ 080E6B70
	object_raw subtype=0x3, x=0xb8, y=0x88, paramA=0x1, paramC=0x80000001
	object_raw subtype=0x3, x=0xc8, y=0x88, paramA=0x1, paramC=0x80010001
	object_raw subtype=0x3, x=0x108, y=0x88, paramA=0x1, paramC=0x80020001
	manager subtype=0x11, paramC=0x8800001b
	object_raw subtype=0x8, x=0xa8, y=0x18, paramC=0x1bffff
	object_raw subtype=0x8, x=0xa8, y=0xf8, paramA=0x12, paramC=0x1bffff
	entity_list_end

Enemies_RoyalCrypt_3:: @ 080E6BE0
	entity_list_end

TileEntities_RoyalCrypt_3:: @ 080E6BF0
	tile_entity_list_end

Room_RoyalCrypt_3:: @ 080E6BF8
	.4byte Entities_RoyalCrypt_3_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_3
	.4byte TileEntities_RoyalCrypt_3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_3
	.4byte sub_StateChange_Dojos_96

Entities_RoyalCrypt_KeyBlock_0:: @ 080E6C18
	object_raw subtype=0x3, x=0x68, y=0x78, paramA=0x1, paramC=0x80000001
	object_raw subtype=0x3, x=0x68, y=0x88, paramA=0x1, paramC=0x80010001
	object_raw subtype=0x3, x=0xa8, y=0x88, paramA=0x1, paramC=0x80020001
	manager subtype=0x11, paramC=0x880000b4
	manager subtype=0x17, x=0x90, y=0x50, paramA=0x53, paramB=0x10900, paramC=0xb400b6
	object_raw subtype=0x3, x=0x1a8, y=0x88, paramA=0x1, paramC=0x80030001
	object_raw subtype=0x3, x=0x1e8, y=0x78, paramA=0x1, paramC=0x80040001
	object_raw subtype=0x3, x=0x1e8, y=0x88, paramA=0x1, paramC=0x80050001
	manager subtype=0x11, paramC=0x880300b5
	manager subtype=0x17, x=0x1c0, y=0x50, paramA=0x53, paramB=0x10900, paramC=0xb500b7
	object_raw subtype=0x16, x=0x58, y=0x128, collision=1, paramA=0x3, paramB=0x8
	object_raw subtype=0x16, x=0x98, y=0x128, collision=1, paramA=0x3, paramB=0x8
	object_raw subtype=0xae, x=0x78, y=0xa8, paramA=0x3
	object_raw subtype=0xae, x=0x78, y=0xc0, paramA=0x2
	object_raw subtype=0xae, x=0x88, y=0xd8, paramA=0x3
	object_raw subtype=0xae, x=0x78, y=0xf8, paramA=0x4
	object_raw subtype=0xae, x=0x68, y=0x118, paramA=0x3
	object_raw subtype=0xae, x=0x78, y=0x130, paramA=0x2
	enemy_raw subtype=0x2f, x=0x1b8, y=0x98, paramA=0x9
	entity_list_end

Enemies_RoyalCrypt_KeyBlock:: @ 080E6D58
	entity_list_end

TileEntities_RoyalCrypt_KeyBlock:: @ 080E6D68
	tile_entity type=0xa, paramA=0x1, paramB=0x27, paramC=0x292, paramD=0x26
	tile_entity type=0xa, paramA=0x1, paramB=0x28, paramC=0x2d2, paramD=0x26
	tile_entity_list_end

gUnk_additional_8_RoyalCrypt_KeyBlock:: @ 080E6D80
	.incbin "data_080D5360/gUnk_additional_8_RoyalCrypt_KeyBlock.bin"

gUnk_additional_9_RoyalCrypt_KeyBlock:: @ 080E6D9E
	.incbin "data_080D5360/gUnk_additional_9_RoyalCrypt_KeyBlock.bin"

Room_RoyalCrypt_KeyBlock:: @ 080E6E04
	.4byte Entities_RoyalCrypt_KeyBlock_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_KeyBlock
	.4byte TileEntities_RoyalCrypt_KeyBlock
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_KeyBlock
	.4byte sub_StateChange_Dojos_97
	.4byte gUnk_additional_8_RoyalCrypt_KeyBlock
	.4byte gUnk_additional_9_RoyalCrypt_KeyBlock

Entities_RoyalCrypt_5_0:: @ 080E6E2C
	object_raw subtype=0x5, x=0x118, y=0x28
	object_raw subtype=0x5, x=0x118, y=0x38
	object_raw subtype=0x5, x=0x118, y=0x48
	object_raw subtype=0x5, x=0x138, y=0x28
	object_raw subtype=0x5, x=0x138, y=0x38
	object_raw subtype=0x5, x=0x138, y=0x48
	entity_list_end

Enemies_RoyalCrypt_5:: @ 080E6E9C
	enemy_raw subtype=0x17, x=0x1c8, y=0x38
	enemy_raw subtype=0x17, x=0x1b8, y=0x48
	enemy_raw subtype=0x17, x=0x1d8, y=0x48
	enemy_raw subtype=0x17, x=0x1c8, y=0x58
	entity_list_end

TileEntities_RoyalCrypt_5:: @ 080E6EEC
	tile_entity type=0x2, paramA=0x16, paramB=0x725c, paramC=0x88
	tile_entity type=0xa, paramA=0x1, paramB=0x29, paramC=0x105, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2a, paramC=0x10b, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2b, paramC=0x187, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x2c, paramC=0x189, paramD=0x1d
	tile_entity_list_end

Room_RoyalCrypt_5:: @ 080E6F1C
	.4byte Entities_RoyalCrypt_5_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_5
	.4byte TileEntities_RoyalCrypt_5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_5
	.4byte sub_StateChange_Dojos_98

Entities_RoyalCrypt_6_0:: @ 080E6F3C
	enemy_raw subtype=0x1f, x=0xb8, y=0x78, paramC=0x780068
	enemy_raw subtype=0x1f, x=0x198, y=0x78, paramC=0x780068
	object_raw subtype=0x5, x=0x1c8, y=0x28, collision=1, paramA=0x5d
	object_raw subtype=0x5, x=0x208, y=0x28, collision=1
	object_raw subtype=0x5, x=0x48, y=0x28, collision=1, paramA=0x5d
	object_raw subtype=0x5, x=0x88, y=0x28, collision=1
	entity_list_end

Enemies_RoyalCrypt_6:: @ 080E6FAC
	enemy_raw subtype=0x9, x=0x68, y=0x20
	enemy_raw subtype=0x9, x=0xa8, y=0x20
	enemy_raw subtype=0x9, x=0xe8, y=0x20
	enemy_raw subtype=0x9, x=0x128, y=0x20
	enemy_raw subtype=0x9, x=0x168, y=0x20
	enemy_raw subtype=0x9, x=0x1a8, y=0x20
	enemy_raw subtype=0x9, x=0x1e8, y=0x20
	enemy_raw subtype=0x3a, x=0x58, y=0x68
	enemy_raw subtype=0x3a, x=0x58, y=0x78
	enemy_raw subtype=0x3a, x=0x68, y=0x78
	enemy_raw subtype=0x3a, x=0x1e8, y=0x78
	enemy_raw subtype=0x3a, x=0x1f8, y=0x78
	enemy_raw subtype=0x3a, x=0x1f8, y=0x68
	entity_list_end

TileEntities_RoyalCrypt_6:: @ 080E708C
	tile_entity type=0x4, paramA=0x2f, paramB=0x1, paramC=0x68, paramD=0x18
	tile_entity type=0x4, paramA=0x30, paramB=0x1, paramC=0x1e8, paramD=0x18
	tile_entity_list_end

Room_RoyalCrypt_6:: @ 080E70A4
	.4byte Entities_RoyalCrypt_6_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_6
	.4byte TileEntities_RoyalCrypt_6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_6
	.4byte sub_StateChange_Dojos_99

Entities_RoyalCrypt_MushroomPit_0:: @ 080E70C4
	object_raw subtype=0x32, x=0x58, y=0xd8
	object_raw subtype=0x32, x=0x88, y=0xd8
	object_raw subtype=0x32, x=0xa8, y=0xd8
	object_raw subtype=0x8, x=0x88, y=0x38, paramA=0x8, paramC=0xb3ffff
	enemy_raw subtype=0x9, x=0x48, y=0x40
	enemy_raw subtype=0x9, x=0xc8, y=0x40
	entity_list_end

Enemies_RoyalCrypt_MushroomPit:: @ 080E7134
	entity_list_end

TileEntities_RoyalCrypt_MushroomPit:: @ 080E7144
	tile_entity_list_end

Room_RoyalCrypt_MushroomPit:: @ 080E714C
	.4byte Entities_RoyalCrypt_MushroomPit_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_MushroomPit
	.4byte TileEntities_RoyalCrypt_MushroomPit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_MushroomPit
	.4byte sub_StateChange_RoyalCrypt_MushroomPit

Entities_RoyalCrypt_Entrance_0:: @ 080E716C
	ezlo_hint x=0xe, y=0xe, rx=0x3, ry=0x1, msg=0xb18, flag=0xc0
	entity_list_end

gUnk_080E718C:: @ 080E718C
	object_raw subtype=0xc0, x=0x58, y=0x48, paramB=0x5d3b, paramC=0xc40000
	entity_list_end

gUnk_080E71AC:: @ 080E71AC
	object_raw subtype=0xc0, x=0xb8, y=0x48, paramA=0x1, paramB=0x533b, paramC=0xc50000
	entity_list_end

Enemies_RoyalCrypt_Entrance:: @ 080E71CC
	enemy_raw subtype=0x3b, x=0x58, y=0x48, unknown=0x2f, paramA=0x1
	enemy_raw subtype=0x3b, x=0xb8, y=0x48, unknown=0x2f, paramA=0x1
	entity_list_end

TileEntities_RoyalCrypt_Entrance:: @ 080E71FC
	tile_entity_list_end

Room_RoyalCrypt_Entrance:: @ 080E7204
	.4byte Entities_RoyalCrypt_Entrance_0
	.4byte 0x00000000
	.4byte Enemies_RoyalCrypt_Entrance
	.4byte TileEntities_RoyalCrypt_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_RoyalCrypt_Entrance
	.4byte sub_StateChange_RoyalCrypt_Entrance

Entities_PalaceOfWinds_0_0:: @ 080E7224
	manager subtype=0x19, unknown=0x8
	enemy_raw subtype=0x43, x=0x198, y=0x108
	enemy_raw subtype=0x43, x=0x218, y=0x108
	enemy_raw subtype=0x43, x=0x1a8, y=0x178
	enemy_raw subtype=0x43, x=0x1a8, y=0x188
	enemy_raw subtype=0x43, x=0x188, y=0x108, paramB=0x5f
	enemy_raw subtype=0x43, x=0x228, y=0x108, paramB=0x5f
	enemy_raw subtype=0x43, x=0x138, y=0x178, paramB=0x5f
	enemy_raw subtype=0x43, x=0x128, y=0x198, paramB=0x5f
	entity_list_end

gUnk_080E72C4:: @ 080E72C4
	object_raw subtype=0x82, x=0x1d8, y=0xc8, paramB=0x4
	entity_list_end

gUnk_additional_8_PalaceOfWinds_0:: @ 080E72E4
	object_raw subtype=0xac, x=0x1d8, y=0xc8, paramA=0x43
	manager subtype=0xe, y=0x3c, unknown=0x1f, paramA=0x9, paramC=0x80000000
	entity_list_end

gUnk_additional_9_PalaceOfWinds_0:: @ 080E7314
	object_raw subtype=0x34, x=0x1b8, y=0x108, paramA=0x2, paramB=0x31, paramC=0x400601c7
	object_raw subtype=0x47, x=0x1f8, y=0x108, paramC=0x4006007d
	entity_list_end

Enemies_PalaceOfWinds_0:: @ 080E7344
	entity_list_end

TileEntities_PalaceOfWinds_0:: @ 080E7354
	tile_entity type=0x1, paramA=0x1
	tile_entity_list_end

Room_PalaceOfWinds_0:: @ 080E7364
	.4byte Entities_PalaceOfWinds_0_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_0
	.4byte TileEntities_PalaceOfWinds_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_0
	.4byte sub_StateChange_PalaceOfWinds_0
	.4byte gUnk_additional_8_PalaceOfWinds_0
	.4byte gUnk_additional_9_PalaceOfWinds_0

Entities_PalaceOfWinds_1_0:: @ 080E738C
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_1:: @ 080E73AC
	object_raw subtype=0xc, x=0x78, y=0x48, paramA=0x4, paramB=0x34
	entity_list_end

TileEntities_PalaceOfWinds_1:: @ 080E73CC
	tile_entity type=0x3, paramA=0x34, paramB=0x52, paramC=0x78, paramD=0x48
	tile_entity type=0x1, paramA=0x2
	tile_entity_list_end

Room_PalaceOfWinds_1:: @ 080E73E4
	.4byte Entities_PalaceOfWinds_1_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_1
	.4byte TileEntities_PalaceOfWinds_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_1
	.4byte sub_StateChange_PalaceOfWinds_1

Entities_PalaceOfWinds_2_0:: @ 080E7404
	manager subtype=0x19, unknown=0x8
	manager subtype=0x1a, unknown=0x8, paramA=0x20
	object_raw subtype=0x29, x=0xa0, y=0x50, paramA=0x80
	enemy_raw subtype=0x43, x=0x38, y=0xa8
	enemy_raw subtype=0x43, x=0x38, y=0xb8
	enemy_raw subtype=0x43, x=0x48, y=0xb8
	enemy_raw subtype=0x43, x=0x48, y=0x58, paramA=0x2
	enemy_raw subtype=0x43, x=0x48, y=0x88, paramA=0x2
	enemy_raw subtype=0x43, x=0x98, y=0x98
	entity_list_end

Enemies_PalaceOfWinds_2:: @ 080E74A4
	entity_list_end

TileEntities_PalaceOfWinds_2:: @ 080E74B4
	tile_entity type=0x1, paramA=0x3
	tile_entity_list_end

Room_PalaceOfWinds_2:: @ 080E74C4
	.4byte Entities_PalaceOfWinds_2_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_2
	.4byte TileEntities_PalaceOfWinds_2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_2
	.4byte sub_StateChange_PalaceOfWinds_2

Entities_PalaceOfWinds_3_0:: @ 080E74E4
	manager subtype=0x19, unknown=0x8
	manager subtype=0x1a, unknown=0x8, paramA=0x21
	manager subtype=0x1a, unknown=0x8, paramA=0x22
	object_raw subtype=0x29, x=0x168, y=0x70, paramA=0x80
	object_raw subtype=0x29, x=0x230, y=0x70, paramA=0x80
	object_raw subtype=0x39, x=0x168, y=0x28, paramC=0x36ffff
	enemy_raw subtype=0x43, x=0x1c8, y=0x38
	enemy_raw subtype=0x43, x=0x1c8, y=0x48
	enemy_raw subtype=0x43, x=0x1c8, y=0x58
	enemy_raw subtype=0x43, x=0x1d8, y=0x38, paramA=0x3
	enemy_raw subtype=0x43, x=0x1d8, y=0x48, paramA=0x3
	enemy_raw subtype=0x43, x=0x1d8, y=0x58, paramA=0x3
	enemy_raw subtype=0x43, x=0xf8, y=0x38, paramA=0x1
	enemy_raw subtype=0x43, x=0xf8, y=0x48, paramA=0x1
	enemy_raw subtype=0x43, x=0xf8, y=0x58, paramA=0x1
	enemy_raw subtype=0x43, x=0x108, y=0x38
	enemy_raw subtype=0x43, x=0x108, y=0x58
	enemy_raw subtype=0x43, x=0x108, y=0x48, paramB=0x5f
	entity_list_end

Enemies_PalaceOfWinds_3:: @ 080E7614
	entity_list_end

TileEntities_PalaceOfWinds_3:: @ 080E7624
	tile_entity type=0x2, paramA=0x35, paramB=0x53, paramC=0x47
	tile_entity type=0x1, paramA=0x4
	tile_entity_list_end

Room_PalaceOfWinds_3:: @ 080E763C
	.4byte Entities_PalaceOfWinds_3_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_3
	.4byte TileEntities_PalaceOfWinds_3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_3
	.4byte sub_StateChange_PalaceOfWinds_3

Entities_PalaceOfWinds_4_0:: @ 080E765C
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_4:: @ 080E767C
	entity_list_end

TileEntities_PalaceOfWinds_4:: @ 080E768C
	tile_entity type=0x2, paramA=0x37, paramB=0x6e5c, paramC=0x107
	tile_entity type=0x1, paramA=0x5
	tile_entity_list_end

Room_PalaceOfWinds_4:: @ 080E76A4
	.4byte Entities_PalaceOfWinds_4_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_4
	.4byte TileEntities_PalaceOfWinds_4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_4
	.4byte sub_StateChange_PalaceOfWinds_4

Entities_PalaceOfWinds_5_0:: @ 080E76C4
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x3, x=0x48, y=0x38, paramC=0x380001
	object_raw subtype=0x9f, x=0x80, y=0x68, paramB=0xc0000, paramC=0x38
	object_raw subtype=0x5, x=0xc8, y=0x38
	object_raw subtype=0x5, x=0xb8, y=0x38, paramA=0x5f
	manager subtype=0x1e, x=0xb0, y=0x150, paramB=0x700020, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x3a8000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x3a0081
	entity_list_end

Enemies_PalaceOfWinds_5:: @ 080E7754
	entity_list_end

TileEntities_PalaceOfWinds_5:: @ 080E7764
	tile_entity type=0x1, paramA=0x6
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_5:: @ 080E7774
	enemy_raw subtype=0x29, x=0x78, y=0x158, paramB=0xe140000, paramC=0x1500030
	enemy_raw subtype=0x29, x=0x78, y=0x1b8, paramB=0xe140000, paramC=0x1500030
	enemy_raw subtype=0x15, x=0x48, y=0x188, unknown=0x2f, paramB=0xe140000, paramC=0x1500030
	enemy_raw subtype=0x15, x=0x78, y=0x188, unknown=0x2f, paramB=0xe140000, paramC=0x1500030
	object_raw subtype=0x8, x=0xd8, y=0x198, paramA=0x11, paramC=0x810000
	entity_list_end

Room_PalaceOfWinds_5:: @ 080E77D4
	.4byte Entities_PalaceOfWinds_5_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_5
	.4byte TileEntities_PalaceOfWinds_5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_5
	.4byte sub_StateChange_PalaceOfWinds_5
	.4byte gUnk_additional_8_PalaceOfWinds_5

Entities_PalaceOfWinds_6_0:: @ 080E77F8
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x3, x=0x48, y=0x48, paramA=0x1, paramC=0x80000001
	object_raw subtype=0x3, x=0x68, y=0x48, paramA=0x1, paramC=0x80010001
	object_raw subtype=0x3, x=0x48, y=0x68, paramA=0x1, paramC=0x80020001
	object_raw subtype=0x3, x=0x68, y=0x68, paramA=0x1, paramC=0x80030001
	manager subtype=0x11, paramC=0x8c00003b
	object_raw subtype=0x8, x=0x28, y=0x58, paramA=0x3, paramC=0x3bffff
	object_raw subtype=0x5, x=0x38, y=0x88
	object_raw subtype=0x5, x=0x48, y=0x88
	object_raw subtype=0x5, x=0x38, y=0x98
	object_raw subtype=0x5, x=0x48, y=0x98
	object_raw subtype=0x5, x=0xb8, y=0x88
	object_raw subtype=0x5, x=0xc8, y=0x88
	object_raw subtype=0x5, x=0xb8, y=0x98
	object_raw subtype=0x5, x=0xc8, y=0x98
	entity_list_end

Enemies_PalaceOfWinds_6:: @ 080E78F8
	enemy_raw subtype=0x42, x=0x88, y=0x58, paramB=0xe140000, paramC=0x300030
	enemy_raw subtype=0x42, x=0xa8, y=0x178, paramA=0x1, paramB=0xe140000, paramC=0x1500030
	enemy_raw subtype=0x42, x=0xb8, y=0x1a8, paramA=0x1, paramB=0xe140000, paramC=0x1500030
	entity_list_end

TileEntities_PalaceOfWinds_6:: @ 080E7938
	tile_entity type=0x1, paramA=0x7
	tile_entity_list_end

Room_PalaceOfWinds_6:: @ 080E7948
	.4byte Entities_PalaceOfWinds_6_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_6
	.4byte TileEntities_PalaceOfWinds_6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_6
	.4byte sub_StateChange_PalaceOfWinds_6

Entities_PalaceOfWinds_7_0:: @ 080E7968
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x8, x=0x78, y=0x28, paramA=0x8, paramC=0x3cffff
	object_raw subtype=0x3, x=0xb8, y=0x1b8, paramC=0x3d0001
	object_raw subtype=0x9f, x=0x80, y=0x188, paramA=0x2, paramB=0xc0000, paramC=0x3d
	object_raw subtype=0x5, x=0x38, y=0x1b8
	object_raw subtype=0x5, x=0x48, y=0x1b8
	entity_list_end

Enemies_PalaceOfWinds_7:: @ 080E79D8
	enemy_raw subtype=0x42, x=0x68, y=0x58, paramB=0xe140000, paramC=0x300030
	enemy_raw subtype=0x42, x=0x98, y=0x58, paramB=0xe140000, paramC=0x300030
	enemy_raw subtype=0x1c, x=0x58, y=0x38, paramB=0x800
	entity_list_end

TileEntities_PalaceOfWinds_7:: @ 080E7A18
	tile_entity type=0x2, paramA=0x3e, paramB=0x53, paramC=0x1c5
	tile_entity type=0x1, paramA=0x8
	tile_entity_list_end

Room_PalaceOfWinds_7:: @ 080E7A30
	.4byte Entities_PalaceOfWinds_7_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_7
	.4byte TileEntities_PalaceOfWinds_7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_7
	.4byte sub_StateChange_PalaceOfWinds_7

Entities_PalaceOfWinds_8_0:: @ 080E7A50
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x39, x=0x78, y=0x118, paramA=0x2, paramC=0x42ffff
	object_raw subtype=0x8, x=0x28, y=0x58, paramA=0xb, paramC=0x3fffff
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x400000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x400082
	manager subtype=0x17, x=0x78, y=0xa8, paramA=0x53, paramB=0x10200, paramC=0x820041
	entity_list_end

Enemies_PalaceOfWinds_8:: @ 080E7AC0
	entity_list_end

TileEntities_PalaceOfWinds_8:: @ 080E7AD0
	tile_entity type=0x1, paramA=0x9
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_8:: @ 080E7AE0
	enemy_raw subtype=0x4c, x=0x58, y=0xa8, paramB=0x1c120000, paramC=0x300030
	enemy_raw subtype=0x4c, x=0x98, y=0xa8, paramB=0x1c120000, paramC=0x300038
	entity_list_end

Room_PalaceOfWinds_8:: @ 080E7B10
	.4byte Entities_PalaceOfWinds_8_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_8
	.4byte TileEntities_PalaceOfWinds_8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_8
	.4byte sub_StateChange_PalaceOfWinds_8
	.4byte gUnk_additional_8_PalaceOfWinds_8

Entities_PalaceOfWinds_9_0:: @ 080E7B34
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x9d, x=0x78, y=0x58, paramA=0x1, paramC=0x80008000
	object_raw subtype=0x8, x=0x38, y=0x18, paramA=0x4, paramC=0x8000ffff
	entity_list_end

Enemies_PalaceOfWinds_9:: @ 080E7B74
	enemy_raw subtype=0x33, x=0x38, y=0x48
	enemy_raw subtype=0x33, x=0x38, y=0x68
	enemy_raw subtype=0x33, x=0x48, y=0x68
	enemy_raw subtype=0x33, x=0x58, y=0x68
	enemy_raw subtype=0x33, x=0x68, y=0x68
	enemy_raw subtype=0x33, x=0x78, y=0x68
	enemy_raw subtype=0x33, x=0x58, y=0x48
	enemy_raw subtype=0x33, x=0x78, y=0x38
	enemy_raw subtype=0x33, x=0x78, y=0x48
	enemy_raw subtype=0x33, x=0x88, y=0x38
	enemy_raw subtype=0x33, x=0x98, y=0x38
	enemy_raw subtype=0x33, x=0xa8, y=0x38
	enemy_raw subtype=0x33, x=0xb8, y=0x38
	enemy_raw subtype=0x33, x=0xb8, y=0x48
	enemy_raw subtype=0x33, x=0xb8, y=0x58
	entity_list_end

TileEntities_PalaceOfWinds_9:: @ 080E7C74
	tile_entity type=0x1, paramA=0xa
	tile_entity_list_end

Room_PalaceOfWinds_9:: @ 080E7C84
	.4byte Entities_PalaceOfWinds_9_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_9
	.4byte TileEntities_PalaceOfWinds_9
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_9
	.4byte sub_StateChange_PalaceOfWinds_9

Entities_PalaceOfWinds_10_0:: @ 080E7CA4
	manager subtype=0x19, unknown=0x8
	manager subtype=0x1a, unknown=0x8, paramA=0x23
	enemy_raw subtype=0x43, x=0x48, y=0x38, paramB=0x5f
	enemy_raw subtype=0x43, x=0xa8, y=0x38, paramB=0x5f
	enemy_raw subtype=0x43, x=0x58, y=0x38, paramB=0x5f
	enemy_raw subtype=0x43, x=0x98, y=0x38, paramB=0x5f
	ezlo_hint x=0x6, y=0x10, rx=0x9, ry=0x2, msg=0xb6a, flag=0x7f
	entity_list_end

Enemies_PalaceOfWinds_10:: @ 080E7D24
	entity_list_end

TileEntities_PalaceOfWinds_10:: @ 080E7D34
	tile_entity type=0x1, paramA=0xb
	tile_entity_list_end

Room_PalaceOfWinds_10:: @ 080E7D44
	.4byte Entities_PalaceOfWinds_10_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_10
	.4byte TileEntities_PalaceOfWinds_10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_10
	.4byte sub_StateChange_PalaceOfWinds_10

Entities_PalaceOfWinds_11_0:: @ 080E7D64
	manager subtype=0x19, unknown=0x8
	manager subtype=0x1a, unknown=0x8, paramA=0x24
	enemy_raw subtype=0x43, x=0x98, y=0x78
	enemy_raw subtype=0x43, x=0xa8, y=0x78, paramB=0x5d
	entity_list_end

Enemies_PalaceOfWinds_11:: @ 080E7DB4
	entity_list_end

TileEntities_PalaceOfWinds_11:: @ 080E7DC4
	tile_entity type=0x4, paramA=0x46, paramB=0x1, paramC=0xd8, paramD=0x58
	tile_entity type=0xa, paramA=0x1, paramB=0x43, paramC=0xc7, paramD=0x26
	tile_entity type=0xa, paramA=0x1, paramB=0x44, paramC=0x107, paramD=0x26
	tile_entity type=0x1, paramA=0xc
	tile_entity_list_end

Room_PalaceOfWinds_11:: @ 080E7DEC
	.4byte Entities_PalaceOfWinds_11_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_11
	.4byte TileEntities_PalaceOfWinds_11
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_11
	.4byte sub_StateChange_PalaceOfWinds_11

Entities_PalaceOfWinds_12_0:: @ 080E7E0C
	manager subtype=0x1e, x=0x20, y=0x60, paramB=0x2000b0, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x7e8000
	manager subtype=0x35, x=0x78, y=0x48, paramB=0x781e00, paramC=0x7e0084
	manager subtype=0x5, x=0x7, y=0x4, paramB=0x8c, paramC=0x840001
	object_raw subtype=0x34, x=0x78, y=0x88, paramB=0x3170, paramC=0x840160
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_12:: @ 080E7E7C
	entity_list_end

TileEntities_PalaceOfWinds_12:: @ 080E7E8C
	tile_entity type=0xd, paramB=0x2d00
	tile_entity type=0x1, paramA=0xd
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_12:: @ 080E7EA4
	enemy_raw subtype=0x5, x=0x78, y=0x58, unknown=0x2f, paramA=0x2
	entity_list_end

Room_PalaceOfWinds_12:: @ 080E7EC4
	.4byte Entities_PalaceOfWinds_12_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_12
	.4byte TileEntities_PalaceOfWinds_12
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_12
	.4byte sub_StateChange_PalaceOfWinds_12
	.4byte gUnk_additional_8_PalaceOfWinds_12

Entities_PalaceOfWinds_13_0:: @ 080E7EE8
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_13:: @ 080E7F08
	enemy_raw subtype=0x3b, x=0x78, y=0x58, paramB=0xe140000, paramC=0x100010
	enemy_raw subtype=0x3b, x=0xa8, y=0x58, paramB=0xe140000, paramC=0x100010
	entity_list_end

TileEntities_PalaceOfWinds_13:: @ 080E7F38
	tile_entity type=0x4, paramA=0x45, paramB=0x1, paramC=0xd8, paramD=0x38
	tile_entity type=0x1, paramA=0xe
	tile_entity_list_end

Room_PalaceOfWinds_13:: @ 080E7F50
	.4byte Entities_PalaceOfWinds_13_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_13
	.4byte TileEntities_PalaceOfWinds_13
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_13
	.4byte sub_StateChange_PalaceOfWinds_13

Entities_PalaceOfWinds_14_0:: @ 080E7F70
	manager subtype=0x19, unknown=0x8
	enemy_raw subtype=0x43, x=0x28, y=0x58, paramA=0x2
	enemy_raw subtype=0x43, x=0x68, y=0x78, paramA=0x2
	enemy_raw subtype=0x43, x=0x88, y=0xa8, paramA=0x2
	enemy_raw subtype=0x43, x=0xb8, y=0xa8
	enemy_raw subtype=0x43, x=0x28, y=0xb8
	enemy_raw subtype=0x43, x=0x58, y=0xe8
	entity_list_end

Enemies_PalaceOfWinds_14:: @ 080E7FF0
	enemy_raw subtype=0x28, x=0x58, y=0x98, paramB=0x18160000, paramC=0x400020
	enemy_raw subtype=0x28, x=0xb8, y=0x88, paramB=0x18160000, paramC=0x400020
	entity_list_end

TileEntities_PalaceOfWinds_14:: @ 080E8020
	tile_entity type=0x4, paramA=0x46, paramB=0x1, paramC=0x18, paramD=0x58
	tile_entity type=0x1, paramA=0xf
	tile_entity_list_end

Room_PalaceOfWinds_14:: @ 080E8038
	.4byte Entities_PalaceOfWinds_14_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_14
	.4byte TileEntities_PalaceOfWinds_14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_14
	.4byte sub_StateChange_PalaceOfWinds_14

Entities_PalaceOfWinds_15_0:: @ 080E8058
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x29, x=0x30, y=0x90, paramA=0x3
	object_raw subtype=0x29, x=0x190, y=0xc0, paramA=0x4
	object_raw subtype=0x29, x=0x280, y=0xc0, paramA=0x8
	manager subtype=0x2c, x=0x280, paramB=0x4010270, paramC=0x5000a0
	object_raw subtype=0x0, x=0x1a8, y=0x114, collision=1, paramA=0x63, paramB=0x400, paramC=0x800000
	entity_list_end

Enemies_PalaceOfWinds_15:: @ 080E80C8
	enemy_raw subtype=0x46, x=0x148, y=0x118, paramB=0x61e0000, paramC=0x1000130
	enemy_raw subtype=0x46, x=0x1e8, y=0x128, paramB=0x61e0000, paramC=0x1000130
	entity_list_end

TileEntities_PalaceOfWinds_15:: @ 080E80F8
	tile_entity type=0x2, paramA=0x47, paramB=0x715c, paramC=0x424, paramD=0x1
	tile_entity type=0x1, paramA=0x10
	tile_entity_list_end

Room_PalaceOfWinds_15:: @ 080E8110
	.4byte Entities_PalaceOfWinds_15_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_15
	.4byte TileEntities_PalaceOfWinds_15
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_15
	.4byte sub_StateChange_PalaceOfWinds_15

Entities_PalaceOfWinds_16_0:: @ 080E8130
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x29, x=0x168, y=0x100, paramA=0x8
	object_raw subtype=0x29, x=0x228, y=0x100, paramA=0x8
	manager subtype=0x2c, x=0x168, paramB=0x4010370, paramC=0x700168
	manager subtype=0x2c, x=0x228, paramB=0x4010370, paramC=0x700230
	enemy_raw subtype=0x43, x=0xf8, y=0xc8, paramB=0x5f
	enemy_raw subtype=0x43, x=0xf8, y=0xd8, paramB=0x5f
	enemy_raw subtype=0x43, x=0x108, y=0xc8, paramB=0x60
	enemy_raw subtype=0x43, x=0x108, y=0xd8
	enemy_raw subtype=0x43, x=0x28, y=0x158
	enemy_raw subtype=0x43, x=0x28, y=0x168
	enemy_raw subtype=0x43, x=0x128, y=0x108
	enemy_raw subtype=0x43, x=0x128, y=0x118
	enemy_raw subtype=0x43, x=0x188, y=0x138
	enemy_raw subtype=0x43, x=0x198, y=0x138
	enemy_raw subtype=0x43, x=0x198, y=0x148
	enemy_raw subtype=0x43, x=0x188, y=0x168
	enemy_raw subtype=0x43, x=0x198, y=0x168
	enemy_raw subtype=0x43, x=0x198, y=0x1a8
	enemy_raw subtype=0x43, x=0x198, y=0x1b8
	enemy_raw subtype=0x43, x=0x128, y=0xf8
	entity_list_end

Enemies_PalaceOfWinds_16:: @ 080E8290
	enemy_raw subtype=0x43, x=0x28, y=0x138, paramA=0x3
	enemy_raw subtype=0x43, x=0xf8, y=0x158, paramA=0x3
	enemy_raw subtype=0x43, x=0x108, y=0x158, paramA=0x3
	enemy_raw subtype=0x28, x=0x108, y=0x148, paramB=0x22320000, paramC=0xb00020
	enemy_raw subtype=0x29, x=0x38, y=0x128, paramB=0x22320000, paramC=0xb00020
	enemy_raw subtype=0x15, x=0x70, y=0x128, paramB=0x22320000, paramC=0xb00020
	enemy_raw subtype=0x15, x=0xd0, y=0x1a8, paramB=0x22320000, paramC=0xb00020
	enemy_raw subtype=0x15, x=0xd8, y=0x100, paramB=0x22320000, paramC=0xb00020
	enemy_raw subtype=0x15, x=0x160, y=0x158, paramB=0x22320000, paramC=0xb00020
	entity_list_end

TileEntities_PalaceOfWinds_16:: @ 080E8330
	tile_entity type=0x2, paramA=0x49, paramB=0x725c, paramC=0x44e
	tile_entity type=0x1, paramA=0x11
	tile_entity_list_end

Room_PalaceOfWinds_16:: @ 080E8348
	.4byte Entities_PalaceOfWinds_16_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_16
	.4byte TileEntities_PalaceOfWinds_16
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_16
	.4byte sub_StateChange_PalaceOfWinds_16

Entities_PalaceOfWinds_17_0:: @ 080E8368
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_17:: @ 080E8388
	enemy_raw subtype=0x47, x=0x18, y=0xa8
	enemy_raw subtype=0x47, x=0xa8, y=0xb8
	enemy_raw subtype=0x47, x=0x48, y=0x140
	entity_list_end

TileEntities_PalaceOfWinds_17:: @ 080E83C8
	tile_entity type=0x1, paramA=0x12
	tile_entity_list_end

Room_PalaceOfWinds_17:: @ 080E83D8
	.4byte Entities_PalaceOfWinds_17_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_17
	.4byte TileEntities_PalaceOfWinds_17
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_17
	.4byte sub_StateChange_PalaceOfWinds_17

Entities_PalaceOfWinds_18_0:: @ 080E83F8
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_18:: @ 080E8418
	entity_list_end

TileEntities_PalaceOfWinds_18:: @ 080E8428
	tile_entity type=0x1, paramA=0x13
	tile_entity_list_end

Room_PalaceOfWinds_18:: @ 080E8438
	.4byte Entities_PalaceOfWinds_18_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_18
	.4byte TileEntities_PalaceOfWinds_18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_18
	.4byte sub_StateChange_PalaceOfWinds_18

Entities_PalaceOfWinds_19_0:: @ 080E8458
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x9f, x=0x100, y=0x18, paramB=0x1e101e01
	object_raw subtype=0x9f, x=0x120, y=0x78, paramA=0x2, paramB=0x1e100f01
	object_raw subtype=0x9f, x=0x180, y=0x18, paramB=0x1e101e01
	object_raw subtype=0x9f, x=0x1a0, y=0x78, paramA=0x2, paramB=0x1e100f01
	object_raw subtype=0x9f, x=0x1b8, y=0x100, paramA=0x1, paramB=0x1e180f01
	entity_list_end

Enemies_PalaceOfWinds_19:: @ 080E84C8
	enemy_raw subtype=0x1, x=0x128, y=0xa8, paramA=0x2
	enemy_raw subtype=0x1, x=0x188, y=0xa8, paramA=0x2
	entity_list_end

TileEntities_PalaceOfWinds_19:: @ 080E84F8
	tile_entity type=0x1, paramA=0x14
	tile_entity_list_end

Room_PalaceOfWinds_19:: @ 080E8508
	.4byte Entities_PalaceOfWinds_19_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_19
	.4byte TileEntities_PalaceOfWinds_19
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_19
	.4byte sub_StateChange_PalaceOfWinds_19

Entities_PalaceOfWinds_20_0:: @ 080E8528
	manager subtype=0x19, unknown=0x8
	manager subtype=0x1a, unknown=0x8, paramA=0x25
	object_raw subtype=0x29, x=0x70, y=0xa0, paramA=0x80
	enemy_raw subtype=0x43, x=0x58, y=0x58
	enemy_raw subtype=0x43, x=0x68, y=0x68
	enemy_raw subtype=0x43, x=0x98, y=0x68
	enemy_raw subtype=0x43, x=0x28, y=0xa8
	enemy_raw subtype=0x43, x=0x58, y=0xe8
	enemy_raw subtype=0x43, x=0x68, y=0xe8
	entity_list_end

Enemies_PalaceOfWinds_20:: @ 080E85C8
	enemy_raw subtype=0x15, x=0x48, y=0x48, paramB=0x1a120000, paramC=0x200020
	enemy_raw subtype=0x15, x=0x88, y=0x48, paramB=0x1a120000, paramC=0x200020
	entity_list_end

TileEntities_PalaceOfWinds_20:: @ 080E85F8
	tile_entity type=0x1, paramA=0x15
	tile_entity_list_end

Room_PalaceOfWinds_20:: @ 080E8608
	.4byte Entities_PalaceOfWinds_20_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_20
	.4byte TileEntities_PalaceOfWinds_20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_20
	.4byte sub_StateChange_PalaceOfWinds_20

Entities_PalaceOfWinds_21_0:: @ 080E8628
	manager subtype=0x1a, unknown=0x8, paramA=0x26
	manager subtype=0x1a, unknown=0x8, paramA=0x27
	manager subtype=0x1a, unknown=0x8, paramA=0x28
	object_raw subtype=0x8, x=0x218, y=0x18, paramA=0x8, paramC=0x4affff
	object_raw subtype=0x8, x=0x218, y=0xd8, paramA=0x8, paramC=0x4bffff
	object_raw subtype=0x9d, x=0x1b8, y=0x38, paramA=0x1, paramC=0x8000004c
	manager subtype=0x11, paramC=0x8000004c
	object_raw subtype=0x8, x=0x138, y=0x48, paramA=0x1, paramC=0x4cffff
	object_raw subtype=0x8, x=0x198, y=0x48, paramA=0x3, paramC=0x4cffff
	manager subtype=0x23, x=0x268, y=0x48, paramA=0x2, paramB=0x1, paramC=0x4d0000
	manager subtype=0x23, x=0x2a8, y=0x48, paramA=0x2, paramB=0x1, paramC=0x4e0000
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x44d0086
	object_raw subtype=0x34, x=0x288, y=0x48, paramA=0x1, paramB=0x3170, paramC=0x86015d
	enemy_raw subtype=0x43, x=0x88, y=0xe8, paramA=0x2
	enemy_raw subtype=0x43, x=0xf8, y=0xe8, paramA=0x2
	enemy_raw subtype=0x43, x=0x2a8, y=0xb8, paramA=0x2
	enemy_raw subtype=0x43, x=0x78, y=0xe8
	enemy_raw subtype=0x43, x=0xe8, y=0xe8
	enemy_raw subtype=0x43, x=0x278, y=0xd8
	entity_list_end

Enemies_PalaceOfWinds_21:: @ 080E8768
	enemy_raw subtype=0x42, x=0x118, y=0xa8, paramA=0x1, paramB=0x20220000, paramC=0x200020
	enemy_raw subtype=0x3b, x=0x48, y=0x78, paramB=0x20220000, paramC=0x200020
	enemy_raw subtype=0x3b, x=0x58, y=0xa8, paramB=0x20220000, paramC=0x200020
	enemy_raw subtype=0x3b, x=0x278, y=0x88, paramB=0x20220000, paramC=0x2001a0
	enemy_raw subtype=0x3b, x=0x288, y=0xa8, paramB=0x20220000, paramC=0x2001a0
	enemy_raw subtype=0x33, x=0x148, y=0xe8, paramA=0x8
	entity_list_end

TileEntities_PalaceOfWinds_21:: @ 080E87D8
	tile_entity type=0x2, paramA=0x4f, paramB=0x59, paramC=0xdd
	tile_entity type=0xa, paramA=0x1, paramB=0x50, paramC=0x3d9, paramD=0x26
	tile_entity type=0xa, paramA=0x1, paramB=0x51, paramC=0x419, paramD=0x26
	tile_entity type=0x1, paramA=0x16
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_21:: @ 080E8800
	.incbin "data_080D5360/gUnk_additional_8_PalaceOfWinds_21.bin"

Room_PalaceOfWinds_21:: @ 080E8824
	.4byte Entities_PalaceOfWinds_21_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_21
	.4byte TileEntities_PalaceOfWinds_21
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_21
	.4byte sub_StateChange_PalaceOfWinds_21
	.4byte gUnk_additional_8_PalaceOfWinds_21

Entities_PalaceOfWinds_22_0:: @ 080E8848
	manager subtype=0x19, unknown=0x8
	manager subtype=0x1a, unknown=0x8, paramA=0x29
	object_raw subtype=0x29, x=0x80, y=0x50, paramA=0x80
	object_raw subtype=0x16, x=0xf8, y=0x58, paramA=0x3, paramB=0x8
	object_raw subtype=0xae, x=0x198, y=0xa8, paramA=0x4
	object_raw subtype=0xae, x=0x158, y=0xd8, paramA=0x4
	enemy_raw subtype=0x43, x=0xb8, y=0xc8
	enemy_raw subtype=0x43, x=0xc8, y=0xc8
	enemy_raw subtype=0x43, x=0xd8, y=0xd8
	enemy_raw subtype=0x43, x=0xe8, y=0xc8
	enemy_raw subtype=0x43, x=0xa8, y=0x118, paramB=0x5f
	enemy_raw subtype=0x43, x=0xa8, y=0x128, paramB=0x5f
	entity_list_end

Enemies_PalaceOfWinds_22:: @ 080E8918
	entity_list_end

TileEntities_PalaceOfWinds_22:: @ 080E8928
	tile_entity type=0x1, paramA=0x17
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_22:: @ 080E8938
	.incbin "data_080D5360/gUnk_additional_8_PalaceOfWinds_22.bin"

Room_PalaceOfWinds_22:: @ 080E8988
	.4byte Entities_PalaceOfWinds_22_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_22
	.4byte TileEntities_PalaceOfWinds_22
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_22
	.4byte sub_StateChange_PalaceOfWinds_22
	.4byte gUnk_additional_8_PalaceOfWinds_22

Entities_PalaceOfWinds_23_0:: @ 080E89AC
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x8, x=0x18, y=0xd8, paramA=0x3, paramC=0x58ffff
	entity_list_end

Enemies_PalaceOfWinds_23:: @ 080E89DC
	entity_list_end

TileEntities_PalaceOfWinds_23:: @ 080E89EC
	tile_entity type=0x1, paramA=0x18
	tile_entity_list_end

Room_PalaceOfWinds_23:: @ 080E89FC
	.4byte Entities_PalaceOfWinds_23_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_23
	.4byte TileEntities_PalaceOfWinds_23
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_23
	.4byte sub_StateChange_PalaceOfWinds_23

Entities_PalaceOfWinds_24_0:: @ 080E8A1C
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0xae, x=0x88, y=0xc8, paramA=0x3
	object_raw subtype=0xae, x=0xb8, y=0xc8, paramA=0x3
	object_raw subtype=0xae, x=0x58, y=0x128, paramA=0x3
	object_raw subtype=0xae, x=0x88, y=0x128, paramA=0x3
	object_raw subtype=0xae, x=0x88, y=0x180, paramA=0x5
	object_raw subtype=0xae, x=0xb8, y=0x180, paramA=0x5
	manager subtype=0x38, paramA=0x9
	manager subtype=0x38, paramA=0xa
	entity_list_end

Enemies_PalaceOfWinds_24:: @ 080E8ABC
	enemy_raw subtype=0x31, x=0xe8, y=0x38
	enemy_raw subtype=0x31, x=0xe8, y=0x58
	enemy_raw subtype=0x31, x=0xe8, y=0x78
	enemy_raw subtype=0x31, x=0x38, y=0x148
	enemy_raw subtype=0x31, x=0x38, y=0x168
	enemy_raw subtype=0x31, x=0x38, y=0x188
	entity_list_end

TileEntities_PalaceOfWinds_24:: @ 080E8B2C
	tile_entity type=0x1, paramA=0x19
	tile_entity_list_end

gUnk_additional_9_PalaceOfWinds_24:: @ 080E8B3C
	object_raw subtype=0x16, x=0x58, y=0x108, paramA=0x3, paramB=0x8
	object_raw subtype=0x16, x=0x58, y=0x138, paramA=0x3, paramB=0x8
	entity_list_end

gUnk_additional_a_PalaceOfWinds_24:: @ 080E8B6C
	object_raw subtype=0x16, x=0xb8, y=0x108, paramA=0x3, paramB=0x8
	object_raw subtype=0x16, x=0xb8, y=0x138, paramA=0x3, paramB=0x8
	entity_list_end

gUnk_additional_8_PalaceOfWinds_24:: @ 080E8B9C
	.incbin "data_080D5360/gUnk_additional_8_PalaceOfWinds_24.bin"

Room_PalaceOfWinds_24:: @ 080E8BC0
	.4byte Entities_PalaceOfWinds_24_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_24
	.4byte TileEntities_PalaceOfWinds_24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_24
	.4byte sub_StateChange_PalaceOfWinds_24
	.4byte gUnk_additional_8_PalaceOfWinds_24
	.4byte gUnk_additional_9_PalaceOfWinds_24
	.4byte gUnk_additional_a_PalaceOfWinds_24

Entities_PalaceOfWinds_25_0:: @ 080E8BEC
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x29, x=0x160, y=0x98, paramA=0x7
	manager subtype=0x2c, x=0x160, paramB=0x4011470, paramC=0xa00070
	object_raw subtype=0x8, x=0x1b8, y=0x48, paramA=0x9, paramC=0x53ffff
	object_raw subtype=0x16, x=0xd0, y=0x100, collision=1, paramA=0x3, paramB=0x8
	object_raw subtype=0xae, x=0x100, y=0xf8, paramA=0x6
	object_raw subtype=0xae, x=0x100, y=0x118, paramA=0x1
	entity_list_end

Enemies_PalaceOfWinds_25:: @ 080E8C6C
	entity_list_end

TileEntities_PalaceOfWinds_25:: @ 080E8C7C
	tile_entity type=0x1, paramA=0x1a
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_25:: @ 080E8C8C
	.incbin "data_080D5360/gUnk_additional_8_PalaceOfWinds_25.bin"

Room_PalaceOfWinds_25:: @ 080E8CB0
	.4byte Entities_PalaceOfWinds_25_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_25
	.4byte TileEntities_PalaceOfWinds_25
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_25
	.4byte sub_StateChange_PalaceOfWinds_25
	.4byte gUnk_additional_8_PalaceOfWinds_25

Entities_PalaceOfWinds_26_0:: @ 080E8CD4
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x8, x=0x18, y=0x48, paramA=0xb, paramC=0x53ffff
	object_raw subtype=0x9d, x=0x118, y=0x28, paramA=0x1, paramC=0x80000052
	object_raw subtype=0x9d, x=0x118, y=0x68, paramA=0x1, paramC=0x80010052
	object_raw subtype=0x9d, x=0x158, y=0x68, paramA=0x1, paramC=0x80020052
	manager subtype=0x11, paramC=0x88000052
	object_raw subtype=0x74, x=0x188, y=0x48, collision=1, paramC=0x520000
	manager subtype=0x3, x=0x188, y=0x48, unknown=0x0, paramA=0x3, paramB=0x102
	object_raw subtype=0x5, x=0x118, y=0xd8
	object_raw subtype=0x5, x=0x118, y=0xf8
	object_raw subtype=0x5, x=0x128, y=0xc8
	object_raw subtype=0x5, x=0x128, y=0xe8
	object_raw subtype=0x5, x=0x128, y=0x108
	object_raw subtype=0x5, x=0x138, y=0xd8
	object_raw subtype=0x5, x=0x138, y=0xf8
	object_raw subtype=0x5, x=0x148, y=0xc8
	object_raw subtype=0x5, x=0x148, y=0x108
	object_raw subtype=0x5, x=0x158, y=0xd8
	object_raw subtype=0x5, x=0x158, y=0xe8
	object_raw subtype=0x5, x=0x158, y=0xf8
	object_raw subtype=0x5, x=0x168, y=0xc8
	object_raw subtype=0x5, x=0x168, y=0xe8
	object_raw subtype=0x5, x=0x168, y=0x108
	object_raw subtype=0x5, x=0x178, y=0xd8
	object_raw subtype=0x5, x=0x178, y=0xf8
	object_raw subtype=0x5, x=0x188, y=0xc8
	object_raw subtype=0x5, x=0x188, y=0xe8
	object_raw subtype=0x5, x=0x188, y=0x108
	object_raw subtype=0x5, x=0x1a8, y=0xe8
	entity_list_end

Enemies_PalaceOfWinds_26:: @ 080E8EB4
	projectile_raw subtype=0x1e, x=0x88, y=0x20, unknown=0x3, paramA=0x4, paramC=0x80ff9f
	entity_list_end

TileEntities_PalaceOfWinds_26:: @ 080E8ED4
	tile_entity type=0x1, paramA=0x1b
	tile_entity_list_end

Room_PalaceOfWinds_26:: @ 080E8EE4
	.4byte Entities_PalaceOfWinds_26_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_26
	.4byte TileEntities_PalaceOfWinds_26
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_26
	.4byte sub_StateChange_PalaceOfWinds_26

Entities_PalaceOfWinds_27_0:: @ 080E8F04
	object_raw subtype=0x54, x=0x78, y=0x14, paramB=0x200000, paramC=0x80000000
	manager subtype=0x11, paramC=0x80000054
	object_raw subtype=0x8, x=0x48, y=0x78, paramA=0x2, paramC=0x54ffff
	entity_list_end

Enemies_PalaceOfWinds_27:: @ 080E8F44
	enemy_raw subtype=0x23, x=0x48, y=0x38, paramB=0xa160000, paramC=0x100010
	enemy_raw subtype=0x23, x=0x98, y=0x68, paramB=0xa160000, paramC=0x100010
	entity_list_end

TileEntities_PalaceOfWinds_27:: @ 080E8F74
	tile_entity type=0x1, paramA=0x1c
	tile_entity_list_end

Room_PalaceOfWinds_27:: @ 080E8F84
	.4byte Entities_PalaceOfWinds_27_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_27
	.4byte TileEntities_PalaceOfWinds_27
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_27
	.4byte sub_StateChange_PalaceOfWinds_27

Entities_PalaceOfWinds_28_0:: @ 080E8FA4
	manager subtype=0x1a, unknown=0x8, paramA=0x2a
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x560000
	object_raw subtype=0xc, x=0x78, y=0x28, paramA=0x2, paramB=0x57, paramC=0x560000
	entity_list_end

Enemies_PalaceOfWinds_28:: @ 080E8FE4
	entity_list_end

TileEntities_PalaceOfWinds_28:: @ 080E8FF4
	tile_entity type=0x3, paramA=0x57, paramB=0x50, paramC=0x78, paramD=0x28
	tile_entity type=0x1, paramA=0x1d
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_28:: @ 080E900C
	enemy_raw subtype=0x28, x=0x78, y=0x28, paramB=0xe160000, paramC=0x200020
	enemy_raw subtype=0x28, x=0x58, y=0x48, paramB=0xe160000, paramC=0x200020
	enemy_raw subtype=0x28, x=0x98, y=0x48, paramB=0xe160000, paramC=0x200020
	entity_list_end

Room_PalaceOfWinds_28:: @ 080E904C
	.4byte Entities_PalaceOfWinds_28_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_28
	.4byte TileEntities_PalaceOfWinds_28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_28
	.4byte sub_StateChange_PalaceOfWinds_28
	.4byte gUnk_additional_8_PalaceOfWinds_28

Entities_PalaceOfWinds_29_0:: @ 080E9070
	object_raw subtype=0x74, x=0xb8, y=0x78, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0xb8, y=0x78, unknown=0x0, paramA=0x3, paramB=0x103
	entity_list_end

Enemies_PalaceOfWinds_29:: @ 080E90A0
	enemy_raw subtype=0x1, x=0x58, y=0x38, paramA=0x2
	enemy_raw subtype=0x1, x=0x98, y=0x48, paramA=0x2
	entity_list_end

TileEntities_PalaceOfWinds_29:: @ 080E90D0
	tile_entity type=0x1, paramA=0x1e
	tile_entity_list_end

Room_PalaceOfWinds_29:: @ 080E90E0
	.4byte Entities_PalaceOfWinds_29_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_29
	.4byte TileEntities_PalaceOfWinds_29
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_29
	.4byte sub_StateChange_PalaceOfWinds_29

Entities_PalaceOfWinds_30_0:: @ 080E9100
	enemy_raw subtype=0x43, x=0x28, y=0x28
	enemy_raw subtype=0x43, x=0x68, y=0x28, paramB=0x5e
	entity_list_end

Enemies_PalaceOfWinds_30:: @ 080E9130
	projectile_raw subtype=0x1d, x=0x28, y=0x58, unknown=0x3
	enemy_raw subtype=0x42, x=0x58, y=0x48, paramB=0xc160000, paramC=0x200020
	enemy_raw subtype=0x42, x=0x78, y=0x68, paramB=0xc160000, paramC=0x200020
	entity_list_end

TileEntities_PalaceOfWinds_30:: @ 080E9170
	tile_entity type=0x1, paramA=0x1f
	tile_entity_list_end

Room_PalaceOfWinds_30:: @ 080E9180
	.4byte Entities_PalaceOfWinds_30_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_30
	.4byte TileEntities_PalaceOfWinds_30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_30
	.4byte sub_StateChange_PalaceOfWinds_30

Entities_PalaceOfWinds_31_0:: @ 080E91A0
	manager subtype=0x1a, unknown=0x8, paramA=0x2b
	object_raw subtype=0x5, x=0x48, y=0x48
	object_raw subtype=0x5, x=0x58, y=0x48
	object_raw subtype=0x5, x=0x98, y=0x48
	object_raw subtype=0x5, x=0xa8, y=0x48
	entity_list_end

Enemies_PalaceOfWinds_31:: @ 080E9200
	entity_list_end

TileEntities_PalaceOfWinds_31:: @ 080E9210
	tile_entity type=0x1, paramA=0x20
	tile_entity_list_end

Room_PalaceOfWinds_31:: @ 080E9220
	.4byte Entities_PalaceOfWinds_31_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_31
	.4byte TileEntities_PalaceOfWinds_31
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_31
	.4byte sub_StateChange_PalaceOfWinds_31

Entities_PalaceOfWinds_32_0:: @ 080E9240
	object_raw subtype=0x9d, x=0x68, y=0x48, paramA=0x1, paramC=0x580058
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x580087
	object_raw subtype=0x8, x=0xd8, y=0x38, paramA=0x1, paramC=0x87ffff
	manager subtype=0x17, x=0xc8, y=0x38, paramA=0x53, paramB=0x10200, paramC=0x870059
	enemy_raw subtype=0x43, x=0xc8, y=0x28
	enemy_raw subtype=0x43, x=0xb8, y=0x38
	enemy_raw subtype=0x43, x=0xc8, y=0x48
	enemy_raw subtype=0x43, x=0x48, y=0x78, paramB=0x5e
	entity_list_end

Enemies_PalaceOfWinds_32:: @ 080E92D0
	enemy_raw subtype=0x8, x=0x28, y=0x68
	enemy_raw subtype=0x8, x=0x78, y=0x58
	entity_list_end

TileEntities_PalaceOfWinds_32:: @ 080E9300
	tile_entity type=0x1, paramA=0x21
	tile_entity_list_end

Room_PalaceOfWinds_32:: @ 080E9310
	.4byte Entities_PalaceOfWinds_32_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_32
	.4byte TileEntities_PalaceOfWinds_32
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_32
	.4byte sub_StateChange_PalaceOfWinds_32

Entities_PalaceOfWinds_33_0:: @ 080E9330
	manager subtype=0x19, unknown=0x8
	manager subtype=0x1a, unknown=0x8, paramA=0x2c
	object_raw subtype=0x29, x=0x80, y=0xe0, paramA=0x8
	object_raw subtype=0x29, x=0x140, y=0xe0, paramA=0x80
	manager subtype=0x2c, x=0x80, paramB=0x4011670, paramC=0x500080
	ezlo_hint x=0x42, y=0x2e, rx=0x7, ry=0x3, msg=0xb48, flag=0x65
	object_raw subtype=0x16, x=0x60, y=0x180, collision=1, paramA=0x3, paramB=0x8
	entity_list_end

Enemies_PalaceOfWinds_33:: @ 080E93B0
	enemy_raw subtype=0x1, x=0x178, y=0xb8, paramA=0x2
	enemy_raw subtype=0x1, x=0x178, y=0x108, paramA=0x2
	enemy_raw subtype=0x31, x=0xc8, y=0xc8
	enemy_raw subtype=0x31, x=0xc8, y=0xe8
	enemy_raw subtype=0x33, x=0x268, y=0x98, paramA=0x9, paramB=0x1
	enemy_raw subtype=0x33, x=0x278, y=0x98, paramA=0xa, paramB=0x1
	enemy_raw subtype=0x17, x=0x1c8, y=0x178, collision=1, paramA=0x2
	object_raw subtype=0x0, x=0x1a8, y=0x178, collision=1, paramA=0x54, paramB=0x400, paramC=0x5a0000
	object_raw subtype=0x0, x=0x1b8, y=0x178, collision=1, paramA=0x54, paramB=0x400, paramC=0x5b0000
	object_raw subtype=0x0, x=0x1a8, y=0x188, collision=1, paramA=0x54, paramB=0x400, paramC=0x5c0000
	object_raw subtype=0x0, x=0x1b8, y=0x188, collision=1, paramA=0x54, paramB=0x400, paramC=0x5d0000
	object_raw subtype=0x0, x=0x1c8, y=0x188, collision=1, paramA=0x54, paramB=0x400, paramC=0x5e0000
	enemy_raw subtype=0x43, x=0x38, y=0xc8
	enemy_raw subtype=0x43, x=0x48, y=0xd8
	enemy_raw subtype=0x43, x=0x68, y=0xb8
	enemy_raw subtype=0x43, x=0x38, y=0xe8
	entity_list_end

TileEntities_PalaceOfWinds_33:: @ 080E94C0
	tile_entity type=0x1, paramA=0x22
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_33:: @ 080E94D0
	.incbin "data_080D5360/gUnk_additional_8_PalaceOfWinds_33.bin"

gUnk_additional_9_PalaceOfWinds_33:: @ 080E94EE
	.incbin "data_080D5360/gUnk_additional_9_PalaceOfWinds_33.bin"

gUnk_additional_a_PalaceOfWinds_33:: @ 080E9500
	.incbin "data_080D5360/gUnk_additional_a_PalaceOfWinds_33.bin"

Room_PalaceOfWinds_33:: @ 080E9518
	.4byte Entities_PalaceOfWinds_33_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_33
	.4byte TileEntities_PalaceOfWinds_33
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_33
	.4byte sub_StateChange_PalaceOfWinds_33
	.4byte gUnk_additional_8_PalaceOfWinds_33
	.4byte gUnk_additional_9_PalaceOfWinds_33
	.4byte gUnk_additional_a_PalaceOfWinds_33

Entities_PalaceOfWinds_34_0:: @ 080E9544
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x9d, x=0x38, y=0x158, paramA=0x1, paramC=0x80008004
	object_raw subtype=0x9d, x=0x58, y=0x158, paramA=0x1, paramC=0x80018004
	object_raw subtype=0x9d, x=0x78, y=0x158, paramA=0x1, paramC=0x80028004
	object_raw subtype=0x9d, x=0x98, y=0x158, paramA=0x1, paramC=0x80038004
	manager subtype=0x11, paramC=0x8c008004
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x678004
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x670085
	object_raw subtype=0x33, x=0x58, y=0xf8, paramA=0x5, paramB=0x1, paramC=0x80040000
	object_raw subtype=0x33, x=0x78, y=0xf8, paramA=0x5, paramB=0x1, paramC=0x80040000
	object_raw subtype=0x33, x=0x98, y=0xf8, paramA=0x5, paramB=0x1, paramC=0x80040000
	object_raw subtype=0x8, x=0xc8, y=0x138, paramA=0x1, paramC=0x85ffff
	object_raw subtype=0x8, x=0x108, y=0x138, paramA=0x3, paramC=0x85ffff
	object_raw subtype=0x9f, x=0x108, y=0x90, paramA=0x3, paramB=0x3c100f01, paramC=0x67
	object_raw subtype=0x9f, x=0x108, y=0xd0, paramA=0x3, paramB=0x3c100f01, paramC=0x67
	object_raw subtype=0x9f, x=0x108, y=0x110, paramA=0x3, paramB=0x3c100f01, paramC=0x67
	object_raw subtype=0x9f, x=0x108, y=0x1a0, paramA=0x3, paramB=0x3c100f01, paramC=0x67
	object_raw subtype=0x9f, x=0x108, y=0x1c0, paramA=0x3, paramB=0x3c100f01, paramC=0x67
	ezlo_hint x=0x22, y=0x26, rx=0x2, ry=0x3, msg=0xb49, flag=0x68
	entity_list_end

Enemies_PalaceOfWinds_34:: @ 080E9684
	entity_list_end

TileEntities_PalaceOfWinds_34:: @ 080E9694
	tile_entity type=0x1, paramA=0x23
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_34:: @ 080E96A4
	enemy_raw subtype=0x1e, x=0x38, y=0x118, unknown=0x2f
	enemy_raw subtype=0x1e, x=0xb8, y=0x118, unknown=0x2f
	entity_list_end

Room_PalaceOfWinds_34:: @ 080E96D4
	.4byte Entities_PalaceOfWinds_34_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_34
	.4byte TileEntities_PalaceOfWinds_34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_34
	.4byte sub_StateChange_PalaceOfWinds_34
	.4byte gUnk_additional_8_PalaceOfWinds_34

Entities_PalaceOfWinds_35_0:: @ 080E96F8
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x8, x=0xd8, y=0x48, paramA=0x9, paramC=0x6affff
	object_raw subtype=0x9d, x=0x38, y=0xd8, paramA=0x1, paramC=0x80000069
	object_raw subtype=0x9d, x=0x58, y=0xd8, paramA=0x1, paramC=0x80010069
	object_raw subtype=0x9d, x=0x78, y=0xd8, paramA=0x1, paramC=0x80020069
	object_raw subtype=0x9d, x=0x98, y=0xd8, paramA=0x1, paramC=0x80030069
	manager subtype=0x11, paramC=0x8c000069
	object_raw subtype=0x8, x=0x28, y=0xb8, paramA=0x3, paramC=0x69ffff
	object_raw subtype=0x5, x=0x88, y=0x28
	object_raw subtype=0x5, x=0x98, y=0x28
	object_raw subtype=0x5, x=0xa8, y=0x28
	object_raw subtype=0x5, x=0xb8, y=0x28
	object_raw subtype=0x5, x=0xc8, y=0x28
	entity_list_end

Enemies_PalaceOfWinds_35:: @ 080E97D8
	enemy_raw subtype=0x3, x=0x68, y=0x88, paramB=0x1e140000, paramC=0x300030
	enemy_raw subtype=0x3, x=0x88, y=0x98, paramB=0x1e140000, paramC=0x300030
	enemy_raw subtype=0x3, x=0xa8, y=0x78, paramB=0x1e140000, paramC=0x300030
	entity_list_end

TileEntities_PalaceOfWinds_35:: @ 080E9818
	tile_entity type=0x1, paramA=0x24
	tile_entity_list_end

Room_PalaceOfWinds_35:: @ 080E9828
	.4byte Entities_PalaceOfWinds_35_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_35
	.4byte TileEntities_PalaceOfWinds_35
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_35
	.4byte sub_StateChange_PalaceOfWinds_35

Entities_PalaceOfWinds_36_0:: @ 080E9848
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x8, x=0x28, y=0x48, paramA=0xb, paramC=0x6affff
	object_raw subtype=0x5e, x=0x58, y=0xd0
	object_raw subtype=0x5e, x=0x88, y=0xf8
	object_raw subtype=0x5e, x=0xb8, y=0x78
	object_raw subtype=0x5e, x=0xf8, y=0x108
	object_raw subtype=0x5e, x=0x118, y=0x68
	object_raw subtype=0x5e, x=0x158, y=0xc8
	enemy_raw subtype=0x33, x=0xa8, y=0x68, paramA=0x8, paramB=0x1
	enemy_raw subtype=0x33, x=0xa8, y=0xf8, paramA=0x9, paramB=0x1
	enemy_raw subtype=0x33, x=0x138, y=0xf8, paramA=0xa, paramB=0x1
	enemy_raw subtype=0x33, x=0x138, y=0x68, paramA=0xb, paramB=0x1
	entity_list_end

Enemies_PalaceOfWinds_36:: @ 080E9918
	entity_list_end

TileEntities_PalaceOfWinds_36:: @ 080E9928
	tile_entity type=0x1, paramA=0x25
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_36:: @ 080E9938
	.incbin "data_080D5360/gUnk_additional_8_PalaceOfWinds_36.bin"

gUnk_additional_9_PalaceOfWinds_36:: @ 080E996E
	.incbin "data_080D5360/gUnk_additional_9_PalaceOfWinds_36.bin"

gUnk_additional_a_PalaceOfWinds_36:: @ 080E99A4
	.incbin "data_080D5360/gUnk_additional_a_PalaceOfWinds_36.bin"

gUnk_additional_b_PalaceOfWinds_36:: @ 080E99DA
	.incbin "data_080D5360/gUnk_additional_b_PalaceOfWinds_36.bin"

Room_PalaceOfWinds_36:: @ 080E9A10
	.4byte Entities_PalaceOfWinds_36_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_36
	.4byte TileEntities_PalaceOfWinds_36
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_36
	.4byte sub_StateChange_PalaceOfWinds_36
	.4byte gUnk_additional_8_PalaceOfWinds_36
	.4byte gUnk_additional_9_PalaceOfWinds_36
	.4byte gUnk_additional_a_PalaceOfWinds_36
	.4byte gUnk_additional_b_PalaceOfWinds_36

Entities_PalaceOfWinds_37_0:: @ 080E9A40
	manager subtype=0x1a, unknown=0x8, paramA=0x2d
	entity_list_end

Enemies_PalaceOfWinds_37:: @ 080E9A60
	enemy_raw subtype=0x43, x=0x38, y=0x58
	enemy_raw subtype=0x43, x=0x48, y=0x58, paramA=0x2
	enemy_raw subtype=0x43, x=0x58, y=0x58
	enemy_raw subtype=0x43, x=0x78, y=0x28, paramA=0x2
	enemy_raw subtype=0x43, x=0x88, y=0x48
	entity_list_end

TileEntities_PalaceOfWinds_37:: @ 080E9AC0
	tile_entity type=0x1, paramA=0x26
	tile_entity_list_end

Room_PalaceOfWinds_37:: @ 080E9AD0
	.4byte Entities_PalaceOfWinds_37_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_37
	.4byte TileEntities_PalaceOfWinds_37
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_37
	.4byte sub_StateChange_PalaceOfWinds_37

Entities_PalaceOfWinds_38_0:: @ 080E9AF0
	manager subtype=0x1a, unknown=0x8, paramA=0x2f
	manager subtype=0x1a, unknown=0x8, paramA=0x2e
	object_raw subtype=0x8, x=0xd8, y=0x48, paramA=0x1, paramC=0x6bffff
	entity_list_end

Enemies_PalaceOfWinds_38:: @ 080E9B30
	enemy_raw subtype=0x42, x=0x58, y=0x48, paramA=0x1, paramB=0xc160000, paramC=0x200020
	enemy_raw subtype=0x42, x=0xa8, y=0x48, paramA=0x1, paramB=0xc160000, paramC=0x200020
	projectile_raw subtype=0x1d, x=0x68, y=0x28, unknown=0x3
	entity_list_end

TileEntities_PalaceOfWinds_38:: @ 080E9B70
	tile_entity type=0x1, paramA=0x27
	tile_entity_list_end

Room_PalaceOfWinds_38:: @ 080E9B80
	.4byte Entities_PalaceOfWinds_38_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_38
	.4byte TileEntities_PalaceOfWinds_38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_38
	.4byte sub_StateChange_PalaceOfWinds_38

Entities_PalaceOfWinds_39_0:: @ 080E9BA0
	manager subtype=0x1a, unknown=0x8, paramA=0x30
	object_raw subtype=0x9d, x=0x48, y=0x28, paramA=0x1, paramC=0x8000006b
	object_raw subtype=0x9d, x=0x78, y=0x28, paramA=0x1, paramC=0x8001006b
	manager subtype=0x11, paramC=0x8400006b
	object_raw subtype=0x8, x=0x28, y=0x48, paramA=0x3, paramC=0x6bffff
	entity_list_end

Enemies_PalaceOfWinds_39:: @ 080E9C00
	enemy_raw subtype=0x8, x=0xb8, y=0x48
	enemy_raw subtype=0x8, x=0xc8, y=0x58
	entity_list_end

TileEntities_PalaceOfWinds_39:: @ 080E9C30
	tile_entity type=0x1, paramA=0x28
	tile_entity_list_end

Room_PalaceOfWinds_39:: @ 080E9C40
	.4byte Entities_PalaceOfWinds_39_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_39
	.4byte TileEntities_PalaceOfWinds_39
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_39
	.4byte sub_StateChange_PalaceOfWinds_39

Entities_PalaceOfWinds_40_0:: @ 080E9C60
	manager subtype=0x1a, unknown=0x8, paramA=0x31
	object_raw subtype=0x8, x=0xd8, y=0x68, paramA=0x1, paramC=0x6dffff
	entity_list_end

Enemies_PalaceOfWinds_40:: @ 080E9C90
	enemy_raw subtype=0x1, x=0x58, y=0x68, paramA=0x2
	enemy_raw subtype=0x1, x=0xa8, y=0x78, paramA=0x2
	entity_list_end

TileEntities_PalaceOfWinds_40:: @ 080E9CC0
	tile_entity type=0x1, paramA=0x29
	tile_entity_list_end

Room_PalaceOfWinds_40:: @ 080E9CD0
	.4byte Entities_PalaceOfWinds_40_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_40
	.4byte TileEntities_PalaceOfWinds_40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_40
	.4byte sub_StateChange_PalaceOfWinds_40

Entities_PalaceOfWinds_41_0:: @ 080E9CF0
	manager subtype=0x1e, x=0x60, y=0x30, paramB=0x300030, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x6d8000
	object_raw subtype=0xc, x=0x78, y=0x38, paramA=0x1, paramC=0x6d0000
	object_raw subtype=0x8, x=0x28, y=0x68, paramA=0x3, paramC=0x6dffff
	object_raw subtype=0x8, x=0xc8, y=0x68, paramA=0x1, paramC=0x6dffff
	entity_list_end

Enemies_PalaceOfWinds_41:: @ 080E9D50
	entity_list_end

TileEntities_PalaceOfWinds_41:: @ 080E9D60
	tile_entity type=0x2, paramA=0x6e, paramB=0x6f5c, paramC=0xc7
	tile_entity type=0x1, paramA=0x2a
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_41:: @ 080E9D78
	enemy_raw subtype=0x27, x=0x38, y=0x48, paramB=0xa120000, paramC=0x300030
	enemy_raw subtype=0x29, x=0xb8, y=0x48, paramB=0xa120000, paramC=0x300030
	entity_list_end

Room_PalaceOfWinds_41:: @ 080E9DA8
	.4byte Entities_PalaceOfWinds_41_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_41
	.4byte TileEntities_PalaceOfWinds_41
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_41
	.4byte sub_StateChange_PalaceOfWinds_41
	.4byte gUnk_additional_8_PalaceOfWinds_41

Entities_PalaceOfWinds_42_0:: @ 080E9DCC
	object_raw subtype=0x8, x=0x18, y=0x68, paramA=0x3, paramC=0x6dffff
	entity_list_end

Enemies_PalaceOfWinds_42:: @ 080E9DEC
	enemy_raw subtype=0x3b, x=0x68, y=0x48, paramB=0xe160000, paramC=0x100020
	enemy_raw subtype=0x3b, x=0xb8, y=0x48, paramB=0xe160000, paramC=0x100020
	entity_list_end

TileEntities_PalaceOfWinds_42:: @ 080E9E1C
	tile_entity type=0x1, paramA=0x2b
	tile_entity_list_end

Room_PalaceOfWinds_42:: @ 080E9E2C
	.4byte Entities_PalaceOfWinds_42_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_42
	.4byte TileEntities_PalaceOfWinds_42
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_42
	.4byte sub_StateChange_PalaceOfWinds_42

Entities_PalaceOfWinds_43_0:: @ 080E9E4C
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_43:: @ 080E9E6C
	projectile_raw subtype=0x1e, x=0x38, y=0xa0, unknown=0x3, paramA=0x2, paramC=0x800090
	projectile_raw subtype=0x1e, x=0x78, y=0x60, unknown=0x3, paramA=0x2, paramC=0x80ffc0
	projectile_raw subtype=0x1e, x=0x88, y=0x60, unknown=0x3, paramA=0x2, paramC=0x800040
	entity_list_end

TileEntities_PalaceOfWinds_43:: @ 080E9EAC
	tile_entity type=0x2, paramA=0x6f, paramB=0x53, paramC=0x46, paramD=0x1
	tile_entity type=0x1, paramA=0x2c
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_43:: @ 080E9EC4
	.incbin "data_080D5360/gUnk_additional_8_PalaceOfWinds_43.bin"

gUnk_additional_9_PalaceOfWinds_43:: @ 080E9EE2
	.incbin "data_080D5360/gUnk_additional_9_PalaceOfWinds_43.bin"

gUnk_additional_a_PalaceOfWinds_43:: @ 080E9F00
	.incbin "data_080D5360/gUnk_additional_a_PalaceOfWinds_43.bin"

Room_PalaceOfWinds_43:: @ 080E9F20
	.4byte Entities_PalaceOfWinds_43_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_43
	.4byte TileEntities_PalaceOfWinds_43
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_43
	.4byte sub_StateChange_PalaceOfWinds_43
	.4byte gUnk_additional_8_PalaceOfWinds_43
	.4byte gUnk_additional_9_PalaceOfWinds_43
	.4byte gUnk_additional_a_PalaceOfWinds_43

Entities_PalaceOfWinds_44_0:: @ 080E9F4C
.ifdef EU
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x9d, x=0x128, y=0x168, paramC=0x800a0000
	manager subtype=0x5, x=0x7, y=0x15, paramB=0x8, paramC=0x800a0001
	manager subtype=0x5, x=0x17, y=0x12, paramB=0xe, paramC=0x800a0001
	manager subtype=0x5, x=0xa, y=0x19, paramB=0x10d, paramC=0x800a0001
	object_raw subtype=0x33, x=0x68, y=0x118, paramA=0x5, paramB=0x1, paramC=0x80000000
	object_raw subtype=0x33, x=0x78, y=0x118, paramA=0x5, paramB=0x1, paramC=0x80000000
	object_raw subtype=0x33, x=0x88, y=0x118, paramA=0x5, paramB=0x1, paramC=0x80000000
	object_raw subtype=0xc, x=0x78, y=0xd8, paramA=0x2, paramB=0x74, paramC=0x700000
	object_raw subtype=0x29, x=0x140, y=0xe0, paramA=0x8
	manager subtype=0x2c, x=0x140, paramB=0x4012170, paramC=0xe00140
	ezlo_hint x=0x26, y=0x1a, rx=0x4, ry=0x4, msg=0xb47, flag=0x75
.else
	object_raw subtype=0x29, x=0x140, y=0xe0, paramA=0x8
	manager subtype=0x2c, x=0x140, paramB=0x4012170, paramC=0xe00140
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x9d, x=0x128, y=0x168, paramC=0x800a0000
	manager subtype=0x5, x=0x7, y=0x15, paramB=0x8, paramC=0x800a0001
	manager subtype=0x5, x=0x17, y=0x12, paramB=0xe, paramC=0x800a0001
	manager subtype=0x5, x=0xa, y=0x19, paramB=0x10d, paramC=0x800a0001
	object_raw subtype=0x33, x=0x68, y=0x118, paramA=0x5, paramB=0x1, paramC=0x80000000
	object_raw subtype=0x33, x=0x78, y=0x118, paramA=0x5, paramB=0x1, paramC=0x80000000
	object_raw subtype=0x33, x=0x88, y=0x118, paramA=0x5, paramB=0x1, paramC=0x80000000
	object_raw subtype=0xc, x=0x78, y=0xd8, paramA=0x2, paramB=0x74, paramC=0x700000
	ezlo_hint x=0x26, y=0x1a, rx=0x4, ry=0x4, msg=0xb47, flag=0x75
.endif
	object_raw subtype=0x5, x=0x168, y=0xb8
	object_raw subtype=0x5, x=0x178, y=0xb8, paramA=0x5e
	enemy_raw subtype=0x43, x=0x68, y=0x188
	enemy_raw subtype=0x43, x=0x78, y=0x188
	enemy_raw subtype=0x43, x=0x68, y=0x198
	enemy_raw subtype=0x43, x=0x88, y=0x188, paramB=0x5f
	enemy_raw subtype=0x43, x=0x78, y=0x198, paramB=0x5f
	enemy_raw subtype=0x43, x=0x88, y=0x198, paramB=0x5d
	entity_list_end

gUnk_080EA09C:: @ 080EA09C
	manager subtype=0x1e, x=0x28, y=0xd8, paramB=0x2000c0, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x80018000
	manager subtype=0xb, unknown=0x0, paramB=0x9, paramC=0x80028001
	manager subtype=0xb, unknown=0x0, paramB=0xa, paramC=0x708002
	entity_list_end

Enemies_PalaceOfWinds_44:: @ 080EA0EC
	projectile_raw subtype=0x1e, x=0x118, y=0x180, unknown=0x3, paramA=0x2, paramC=0x800080
	entity_list_end

TileEntities_PalaceOfWinds_44:: @ 080EA10C
	tile_entity type=0x3, paramA=0x74, paramB=0x14, paramC=0x78, paramD=0xd8
	tile_entity type=0x1, paramA=0x2d
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_44:: @ 080EA124
	enemy_raw subtype=0x27, x=0x38, y=0xd8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0xb8, y=0xd8, paramB=0xe120000, paramC=0xa00030
	entity_list_end

gUnk_additional_9_PalaceOfWinds_44:: @ 080EA154
	enemy_raw subtype=0x27, x=0x38, y=0xd8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0xb8, y=0xd8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0x78, y=0xb8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0x78, y=0xf8, paramB=0xe120000, paramC=0xa00030
	entity_list_end

gUnk_additional_a_PalaceOfWinds_44:: @ 080EA1A4
	enemy_raw subtype=0x27, x=0x38, y=0xd8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0xb8, y=0xd8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0x68, y=0xb8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0x68, y=0xf8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0x88, y=0xb8, paramB=0xe120000, paramC=0xa00030
	enemy_raw subtype=0x27, x=0x88, y=0xf8, paramB=0xe120000, paramC=0xa00030
	entity_list_end

Room_PalaceOfWinds_44:: @ 080EA214
	.4byte Entities_PalaceOfWinds_44_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_44
	.4byte TileEntities_PalaceOfWinds_44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_44
	.4byte sub_StateChange_PalaceOfWinds_44
	.4byte gUnk_additional_8_PalaceOfWinds_44
	.4byte gUnk_additional_9_PalaceOfWinds_44
	.4byte gUnk_additional_a_PalaceOfWinds_44

Entities_PalaceOfWinds_45_0:: @ 080EA240
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_45:: @ 080EA260
	enemy_raw subtype=0x42, x=0x168, y=0x148, paramB=0x80c0000, paramC=0x1300140
	enemy_raw subtype=0x22, x=0x58, y=0xe8
	enemy_raw subtype=0x22, x=0x68, y=0x148
	enemy_raw subtype=0x22, x=0xd8, y=0x128
	enemy_raw subtype=0x22, x=0xc8, y=0x178
	projectile_raw subtype=0x1d, x=0x58, y=0x178, unknown=0x3
	projectile_raw subtype=0x1d, x=0xb8, y=0xd8, unknown=0x3
	entity_list_end

TileEntities_PalaceOfWinds_45:: @ 080EA2E0
	tile_entity type=0x2, paramA=0x76, paramB=0x705c, paramC=0x149
	tile_entity type=0x1, paramA=0x2e
	tile_entity_list_end

Room_PalaceOfWinds_45:: @ 080EA2F8
	.4byte Entities_PalaceOfWinds_45_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_45
	.4byte TileEntities_PalaceOfWinds_45
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_45
	.4byte sub_StateChange_PalaceOfWinds_45

Entities_PalaceOfWinds_46_0:: @ 080EA318
	manager subtype=0x19, unknown=0x8
	manager subtype=0x38, paramA=0x8
	object_raw subtype=0xae, x=0x68, y=0xc8, paramA=0x3
	object_raw subtype=0xae, x=0x78, y=0xd8
	object_raw subtype=0xae, x=0x78, y=0x108, paramA=0x4
	object_raw subtype=0xae, x=0x58, y=0x148, paramA=0x3
	object_raw subtype=0xae, x=0x78, y=0x150, paramA=0x2
	object_raw subtype=0xae, x=0x68, y=0x198, paramA=0x3
	object_raw subtype=0xae, x=0x90, y=0x198, paramA=0x1
	object_raw subtype=0xae, x=0x60, y=0x1c8, paramA=0x1
	object_raw subtype=0xae, x=0x88, y=0x1f8, paramA=0x3
	enemy_raw subtype=0x33, x=0x58, y=0xe8, paramA=0x9
	enemy_raw subtype=0x33, x=0x78, y=0x1c8
	enemy_raw subtype=0x33, x=0x88, y=0x1c8
	entity_list_end

Enemies_PalaceOfWinds_46:: @ 080EA408
	entity_list_end

TileEntities_PalaceOfWinds_46:: @ 080EA418
	tile_entity type=0x1, paramA=0x2f
	tile_entity_list_end

gUnk_additional_8_PalaceOfWinds_46:: @ 080EA428
	object_raw subtype=0x16, x=0x68, y=0x1b8, paramA=0x3, paramB=0xa
	object_raw subtype=0x16, x=0x90, y=0x1b0, paramA=0x2, paramB=0xa
	object_raw subtype=0x16, x=0x60, y=0x1e0, paramA=0x2, paramB=0xa
	object_raw subtype=0x16, x=0x88, y=0x1d8, paramA=0x3, paramB=0xa
	entity_list_end

gUnk_additional_9_PalaceOfWinds_46:: @ 080EA478
	.incbin "data_080D5360/gUnk_additional_9_PalaceOfWinds_46.bin"

gUnk_additional_a_PalaceOfWinds_46:: @ 080EA496
	.incbin "data_080D5360/gUnk_additional_a_PalaceOfWinds_46.bin"

Room_PalaceOfWinds_46:: @ 080EA4BC
	.4byte Entities_PalaceOfWinds_46_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_46
	.4byte TileEntities_PalaceOfWinds_46
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_46
	.4byte sub_StateChange_PalaceOfWinds_46
	.4byte gUnk_additional_8_PalaceOfWinds_46
	.4byte gUnk_additional_9_PalaceOfWinds_46
	.4byte gUnk_additional_a_PalaceOfWinds_46

Entities_PalaceOfWinds_47_0:: @ 080EA4E8
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0xa1, x=0x78, y=0x18
	entity_list_end

Enemies_PalaceOfWinds_47:: @ 080EA518
	entity_list_end

TileEntities_PalaceOfWinds_47:: @ 080EA528
	tile_entity type=0x1, paramA=0x30
	tile_entity_list_end

Room_PalaceOfWinds_47:: @ 080EA538
	.4byte Entities_PalaceOfWinds_47_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_47
	.4byte TileEntities_PalaceOfWinds_47
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_47
	.4byte sub_StateChange_PalaceOfWinds_47

Entities_PalaceOfWinds_48_0:: @ 080EA558
	manager subtype=0x19, unknown=0x8
	object_raw subtype=0x9d, x=0x48, y=0xa8, paramC=0x80000000
	object_raw subtype=0x9d, x=0xf8, y=0x118, paramC=0x80000000
	object_raw subtype=0x9d, x=0x118, y=0x98, paramC=0x80000000
	object_raw subtype=0x9d, x=0x188, y=0x108, paramC=0x80000000
	object_raw subtype=0x9d, x=0x118, y=0x38, paramC=0x80000000
	manager subtype=0x5, x=0x7, y=0xc, paramB=0xc, paramC=0x80000001
	manager subtype=0x5, x=0x10, y=0xf, paramB=0x8, paramC=0x80000001
	manager subtype=0x5, x=0x17, y=0xf, paramB=0x8, paramC=0x80000001
	manager subtype=0x5, x=0xf, y=0x4, paramB=0x10b, paramC=0x80000001
	manager subtype=0x5, x=0x8, y=0x11, paramB=0x109, paramC=0x80000001
	enemy_raw subtype=0x43, x=0x98, y=0x28
	enemy_raw subtype=0x43, x=0xa8, y=0x28
	enemy_raw subtype=0x43, x=0x78, y=0x28
	enemy_raw subtype=0x43, x=0x88, y=0x28, paramB=0x5e
	entity_list_end

Enemies_PalaceOfWinds_48:: @ 080EA658
	enemy_raw subtype=0x42, x=0x118, y=0x48, paramB=0x81a0000, paramC=0x2000e0
	enemy_raw subtype=0x42, x=0x138, y=0x48, paramB=0x81a0000, paramC=0x2000e0
	enemy_raw subtype=0x3, x=0x68, y=0x98, paramB=0x24160000, paramC=0x200010
	enemy_raw subtype=0x3, x=0x98, y=0x98, paramB=0x24160000, paramC=0x200010
	enemy_raw subtype=0x3, x=0xf8, y=0xd8, paramB=0x16220000, paramC=0x9000d0
	enemy_raw subtype=0x3, x=0x138, y=0xd8, paramB=0x16220000, paramC=0x9000d0
	enemy_raw subtype=0x3, x=0x178, y=0xd8, paramB=0x16220000, paramC=0x9000d0
	entity_list_end

TileEntities_PalaceOfWinds_48:: @ 080EA6D8
	tile_entity type=0x1, paramA=0x31
	tile_entity_list_end

Room_PalaceOfWinds_48:: @ 080EA6E8
	.4byte Entities_PalaceOfWinds_48_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_48
	.4byte TileEntities_PalaceOfWinds_48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_48
	.4byte sub_StateChange_PalaceOfWinds_48

Entities_PalaceOfWinds_49_0:: @ 080EA708
	ezlo_hint x=0x44, y=0x4, rx=0x3, ry=0x7, msg=0xb19, flag=0x77
	manager subtype=0x1a, unknown=0x8, paramA=0x32
	object_raw subtype=0x34, x=0x208, y=0x58, paramB=0xc70, paramC=0x840207
	object_raw subtype=0x34, x=0x1d8, y=0x58, paramA=0x1, paramB=0x1570, paramC=0x860128
	object_raw subtype=0x5, x=0x218, y=0x28
	object_raw subtype=0x5, x=0x218, y=0x88
	object_raw subtype=0x5, x=0x228, y=0x28, paramA=0x5f
	object_raw subtype=0x5, x=0x228, y=0x88, paramA=0x5f
	manager subtype=0x19, unknown=0x8
	entity_list_end

Enemies_PalaceOfWinds_49:: @ 080EA7A8
	entity_list_end

TileEntities_PalaceOfWinds_49:: @ 080EA7B8
	tile_entity type=0x1, paramA=0x32
	tile_entity_list_end

Room_PalaceOfWinds_49:: @ 080EA7C8
	.4byte Entities_PalaceOfWinds_49_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_49
	.4byte TileEntities_PalaceOfWinds_49
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_49
	.4byte sub_StateChange_PalaceOfWinds_49

Entities_PalaceOfWinds_50_0:: @ 080EA7E8
	ezlo_hint x=0x28, y=0x1e, rx=0x5, ry=0x3, msg=0xb1a, flag=0x78
	object_raw subtype=0xa1, x=0x168, y=0x128, paramB=0x1
	object_raw subtype=0xc, x=0x218, y=0x98, paramA=0x4, paramB=0x79
	enemy_raw subtype=0x43, x=0x198, y=0xb8, paramB=0x5f
	enemy_raw subtype=0x43, x=0x198, y=0xe8, paramB=0x5f
	enemy_raw subtype=0x43, x=0x138, y=0x118, paramB=0x5f
	enemy_raw subtype=0x43, x=0x198, y=0x118, paramB=0x5f
	enemy_raw subtype=0x43, x=0x38, y=0xd8
	enemy_raw subtype=0x43, x=0x1a8, y=0x28
	enemy_raw subtype=0x43, x=0x1d8, y=0xe8
	enemy_raw subtype=0x43, x=0x2a8, y=0xd8
	enemy_raw subtype=0x43, x=0x138, y=0xb8
	enemy_raw subtype=0x43, x=0x138, y=0xe8
	object_raw subtype=0xbc, x=0x158, y=0x28
	object_raw subtype=0xbc, x=0x178, y=0x28
	object_raw subtype=0xbc, x=0x138, y=0x98
	object_raw subtype=0xbc, x=0x198, y=0x98
	object_raw subtype=0xbc, x=0x138, y=0xc8
	object_raw subtype=0xbc, x=0x198, y=0xc8
	object_raw subtype=0xbc, x=0x138, y=0xf8
	object_raw subtype=0xbc, x=0x198, y=0xf8
	object_raw subtype=0xbc, x=0x1f8, y=0xb8
	object_raw subtype=0xbc, x=0x238, y=0xb8
	entity_list_end

Enemies_PalaceOfWinds_50:: @ 080EA968
	enemy_raw subtype=0x42, x=0x38, y=0xe8, paramA=0x1, paramB=0x34520000, paramC=0x200020
	enemy_raw subtype=0x42, x=0x298, y=0x78, paramA=0x1, paramB=0x34520000, paramC=0x200020
	enemy_raw subtype=0x3b, x=0x108, y=0x38, paramB=0x34520000, paramC=0x200020
	enemy_raw subtype=0x3b, x=0x208, y=0x38, paramB=0x34520000, paramC=0x200020
	entity_list_end

TileEntities_PalaceOfWinds_50:: @ 080EA9B8
	tile_entity type=0x3, paramA=0x79, paramB=0x51, paramC=0x218, paramD=0x98
	tile_entity type=0x2, paramA=0x7a, paramB=0x53, paramC=0x96, paramD=0x1
	tile_entity type=0x9
	tile_entity type=0x1, paramA=0x33
	tile_entity_list_end

Room_PalaceOfWinds_50:: @ 080EA9E0
	.4byte Entities_PalaceOfWinds_50_0
	.4byte 0x00000000
	.4byte Enemies_PalaceOfWinds_50
	.4byte TileEntities_PalaceOfWinds_50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWinds_50
	.4byte sub_StateChange_PalaceOfWinds_50

Entities_PalaceOfWindsBoss_Main_0:: @ 080EAA00
	object_raw subtype=0xba
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb09, flag=0x0
	entity_list_end

Entities_PalaceOfWindsBoss_Main_1:: @ 080EAA30
	entity_list_end

Enemies_PalaceOfWindsBoss_Main:: @ 080EAA40
	entity_list_end

TileEntities_PalaceOfWindsBoss_Main:: @ 080EAA50
	tile_entity_list_end

Room_PalaceOfWindsBoss_Main:: @ 080EAA58
	.4byte Entities_PalaceOfWindsBoss_Main_0
	.4byte Entities_PalaceOfWindsBoss_Main_1
	.4byte Enemies_PalaceOfWindsBoss_Main
	.4byte TileEntities_PalaceOfWindsBoss_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_PalaceOfWindsBoss_Main
	.4byte sub_StateChange_PalaceOfWindsBoss_Main

Entities_Vaati2_Main_0:: @ 080EAA78
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69V2Intro
	npc_raw subtype=0x3b, x=0xb0, y=0x88, unknown=0xf, script=0x0
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0c, flag=0x7b
	entity_list_end

Entities_Vaati2_Main_1:: @ 080EAAB8
	manager subtype=0x1d, unknown=0x8, paramA=0x1
	entity_list_end

Enemies_Vaati2_Main:: @ 080EAAD8
	enemy_raw subtype=0x4f, x=0xb0, y=0x88, paramB=0x101c0000, paramC=0x380040
	entity_list_end

TileEntities_Vaati2_Main:: @ 080EAAF8
	tile_entity_list_end

Room_Vaati2_Main:: @ 080EAB00
	.4byte Entities_Vaati2_Main_0
	.4byte Entities_Vaati2_Main_1
	.4byte Enemies_Vaati2_Main
	.4byte TileEntities_Vaati2_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Vaati2_Main
	.4byte sub_StateChange_Vaati2_Main

Entities_Vaati3_Main_0:: @ 080EAB20
	manager subtype=0x2f, unknown=0x8
	manager subtype=0x37, paramA=0x1
	npc_raw subtype=0x4e, script=script_Npc4EV3Defeated
	object_raw subtype=0x74, x=0xb0, y=0x28, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0xb0, y=0x28, unknown=0x0, paramA=0x3, paramB=0x102
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0d, flag=0x4051
	entity_list_end

Enemies_Vaati3_Main:: @ 080EAB90
	entity_list_end

TileEntities_Vaati3_Main:: @ 080EABA0
	tile_entity_list_end

Room_Vaati3_Main:: @ 080EABA8
	.4byte Entities_Vaati3_Main_0
	.4byte 0x00000000
	.4byte Enemies_Vaati3_Main
	.4byte TileEntities_Vaati3_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Vaati3_Main
	.4byte sub_StateChange_Vaati3_Main

Entities_DarkHyruleCastleBridge_Main_0:: @ 080EABC8
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69BallAndChainSoldierRoom
	object_raw subtype=0x39, x=0x88, y=0x118, paramA=0x6, paramC=0xffff
	entity_list_end

Entities_DarkHyruleCastleBridge_Main_1:: @ 080EABF8
	manager subtype=0x1b, unknown=0x8, paramA=0x6
	entity_list_end

Enemies_DarkHyruleCastleBridge_Main:: @ 080EAC18
	enemy_raw subtype=0x4d, x=0x88, y=0x58
	entity_list_end

TileEntities_DarkHyruleCastleBridge_Main:: @ 080EAC38
	tile_entity_list_end

Room_DarkHyruleCastleBridge_Main:: @ 080EAC40
	.4byte Entities_DarkHyruleCastleBridge_Main_0
	.4byte Entities_DarkHyruleCastleBridge_Main_1
	.4byte Enemies_DarkHyruleCastleBridge_Main
	.4byte TileEntities_DarkHyruleCastleBridge_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleBridge_Main
	.4byte sub_StateChange_DarkHyruleCastleBridge_Main

Entities_VaatisArms_First_0:: @ 080EAC60
	enemy_raw subtype=0x25, x=0x98, y=0x68
.ifdef USA_DEMOS
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0d, flag=0x0
.endif
	entity_list_end

Enemies_VaatisArms_First:: @ 080EAC90
	entity_list_end

TileEntities_VaatisArms_First:: @ 080EACA0
	tile_entity_list_end

Room_VaatisArms_First:: @ 080EACA8
	.4byte Entities_VaatisArms_First_0
	.4byte 0x00000000
	.4byte Enemies_VaatisArms_First
	.4byte TileEntities_VaatisArms_First
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VaatisArms_First
	.4byte sub_StateChange_VaatisArms_First

Entities_VaatisArms_Second_0:: @ 080EACC8
	enemy_raw subtype=0x25, x=0x98, y=0x68
.ifdef USA_DEMOS
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0d, flag=0x0
.endif
	entity_list_end

Enemies_VaatisArms_Second:: @ 080EACF8
	entity_list_end

TileEntities_VaatisArms_Second:: @ 080EAD08
	tile_entity type=0x9
	tile_entity_list_end

Room_VaatisArms_Second:: @ 080EAD18
	.4byte Entities_VaatisArms_Second_0
	.4byte 0x00000000
	.4byte Enemies_VaatisArms_Second
	.4byte TileEntities_VaatisArms_Second
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VaatisArms_Second
	.4byte sub_StateChange_VaatisArms_Second

Entities_DarkHyruleCastleOutside_ZeldaStatuePlatform_0:: @ 080EAD38
	entity_list_end

Entities_DarkHyruleCastleOutside_ZeldaStatuePlatform_1:: @ 080EAD48
	manager subtype=0x1b, unknown=0x8, paramA=0x4
	entity_list_end

gUnk_080EAD68:: @ 080EAD68
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69VaatiWithZelda
	npc_raw subtype=0x28, x=0x78, y=0x68, script=script_ZeldaStoneInDHC
	npc_raw subtype=0x27, x=0x78, y=0x96, paramA=0x1, script=script_VaatiWithZelda
	object_raw subtype=0xab, x=0x78, y=0x138
	entity_list_end

gUnk_080EADB8:: @ 080EADB8
	npc_raw subtype=0x4e, script=script_Npc4EAfterDefeatingV2
	npc_raw subtype=0x28, x=0x78, y=0x68, script=script_ZeldaAfterDefeatingV2
	entity_list_end

Enemies_DarkHyruleCastleOutside_ZeldaStatuePlatform:: @ 080EADE8
	entity_list_end

TileEntities_DarkHyruleCastleOutside_ZeldaStatuePlatform:: @ 080EADF8
	tile_entity_list_end

gUnk_080EAE00:: @ 080EAE00
	.incbin "data_080D5360/gUnk_080EAE00.bin"

Room_DarkHyruleCastleOutside_ZeldaStatuePlatform:: @ 080EAE20
	.4byte Entities_DarkHyruleCastleOutside_ZeldaStatuePlatform_0
	.4byte Entities_DarkHyruleCastleOutside_ZeldaStatuePlatform_1
	.4byte Enemies_DarkHyruleCastleOutside_ZeldaStatuePlatform
	.4byte TileEntities_DarkHyruleCastleOutside_ZeldaStatuePlatform
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_ZeldaStatuePlatform
	.4byte sub_StateChange_DarkHyruleCastleOutside_ZeldaStatuePlatform

Entities_DarkHyruleCastleOutside_Garden_0:: @ 080EAE40
	manager subtype=0x37
	entity_list_end

gUnk_080EAE60:: @ 080EAE60
	npc_raw subtype=0x25, x=0xb8, y=0x138, script=script_MinishterPothoStone
	npc_raw subtype=0x15, x=0x68, y=0x118, paramB=0x24, script=script_GuardStone1
	npc_raw subtype=0x15, x=0x88, y=0x180, paramB=0x25, script=script_GuardStone2
	ezlo_hint x=0x4, y=0x1e, rx=0xd, ry=0x9, msg=0xb25, flag=0x85
.ifndef EU
	manager subtype=0xf, paramA=0xe
.endif
	entity_list_end

gUnk_080EAEC0:: @ 080EAEC0
	npc_raw subtype=0x4e, script=script_Npc4EOutro
	npc_raw subtype=0xf, x=0x88, y=0x68, script=script_MinishEzloOutro
	npc_raw subtype=0x28, x=0x58, y=0x88, script=script_ZeldaOutro
	npc_raw subtype=0x4d, x=0x88, y=0x88, script=script_EzloCapOutro
	object_raw subtype=0x6a, x=0x88, y=0xa8, unknown=0x4f, paramA=0x1, paramC=script_Object6AMinishCapOutro
	entity_list_end

gUnk_080EAF20:: @ 080EAF20
	npc_raw subtype=0x4e, script=script_Npc4ESanctuaryEntrance
	entity_list_end

Entities_DarkHyruleCastleOutside_Garden_1:: @ 080EAF40
	object_raw subtype=0x3e, x=0x88, y=0x40, collision=1, paramA=0x2
	entity_list_end

Enemies_DarkHyruleCastleOutside_Garden:: @ 080EAF60
	entity_list_end

TileEntities_DarkHyruleCastleOutside_Garden:: @ 080EAF70
	tile_entity_list_end

Room_DarkHyruleCastleOutside_Garden:: @ 080EAF78
	.4byte Entities_DarkHyruleCastleOutside_Garden_0
	.4byte Entities_DarkHyruleCastleOutside_Garden_1
	.4byte Enemies_DarkHyruleCastleOutside_Garden
	.4byte TileEntities_DarkHyruleCastleOutside_Garden
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_Garden
	.4byte sub_StateChange_DarkHyruleCastleOutside_Garden

Entities_DarkHyruleCastleOutside_OutsideNorthwest_0:: @ 080EAF98
	object_raw subtype=0x5, x=0xb8, y=0xc8, paramA=0x5f
	object_raw subtype=0x5, x=0xc8, y=0xc8, paramA=0x5f


Enemies_DarkHyruleCastleOutside_OutsideNorthwest:: @ 080EAFB8
	entity_list_end

TileEntities_DarkHyruleCastleOutside_OutsideNorthwest:: @ 080EAFC8
	tile_entity_list_end

Room_DarkHyruleCastleOutside_OutsideNorthwest:: @ 080EAFD0
	.4byte Entities_DarkHyruleCastleOutside_OutsideNorthwest_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastleOutside_OutsideNorthwest
	.4byte TileEntities_DarkHyruleCastleOutside_OutsideNorthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_OutsideNorthwest
	.4byte sub_StateChange_Dojos_ToGrimblade0

Entities_DarkHyruleCastleOutside_OutsideNortheast_0:: @ 080EAFF0
	object_raw subtype=0x5e, x=0x88, y=0x118
	object_raw subtype=0x5e, x=0xb8, y=0x148
	object_raw subtype=0x5e, x=0x68, y=0x158
	object_raw subtype=0x5e, x=0xd8, y=0x198
	object_raw subtype=0x5e, x=0x98, y=0x1e8
	object_raw subtype=0x5e, x=0x68, y=0x208
	manager subtype=0x2b, paramA=0x8
	entity_list_end

Enemies_DarkHyruleCastleOutside_OutsideNortheast:: @ 080EB070
	enemy_raw subtype=0x46, x=0x58, y=0x198, paramA=0x1
	entity_list_end

TileEntities_DarkHyruleCastleOutside_OutsideNortheast:: @ 080EB090
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastleOutside_OutsideNortheast:: @ 080EB098
	.incbin "data_080D5360/gUnk_additional_8_DarkHyruleCastleOutside_OutsideNortheast.bin"

Room_DarkHyruleCastleOutside_OutsideNortheast:: @ 080EB0A4
	.4byte Entities_DarkHyruleCastleOutside_OutsideNortheast_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastleOutside_OutsideNortheast
	.4byte TileEntities_DarkHyruleCastleOutside_OutsideNortheast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_OutsideNortheast
	.4byte sub_StateChange_Dojos_ToGrimblade1
	.4byte gUnk_additional_8_DarkHyruleCastleOutside_OutsideNortheast

Entities_DarkHyruleCastleOutside_OutsideEast_0:: @ 080EB0C8
	object_raw subtype=0x5, x=0x48, y=0x88
	object_raw subtype=0x5, x=0x58, y=0x88
	object_raw subtype=0x5, x=0x48, y=0xb8
	object_raw subtype=0x5, x=0x58, y=0xb8
	entity_list_end

Enemies_DarkHyruleCastleOutside_OutsideEast:: @ 080EB118
	enemy_raw subtype=0x15, x=0x68, y=0x78, paramA=0x1
	enemy_raw subtype=0x15, x=0x78, y=0x48, paramA=0x1
	enemy_raw subtype=0x30, x=0x78, y=0xc8, paramA=0x1
	enemy_raw subtype=0x30, x=0x68, y=0xc8, paramA=0x1
	enemy_raw subtype=0x30, x=0x68, y=0xd8, paramA=0x1
	entity_list_end

TileEntities_DarkHyruleCastleOutside_OutsideEast:: @ 080EB178
	tile_entity_list_end

Room_DarkHyruleCastleOutside_OutsideEast:: @ 080EB180
	.4byte Entities_DarkHyruleCastleOutside_OutsideEast_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastleOutside_OutsideEast
	.4byte TileEntities_DarkHyruleCastleOutside_OutsideEast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_OutsideEast
	.4byte sub_StateChange_Dojos_ToGrimblade2

Entities_DarkHyruleCastleOutside_OutsideSouthwest_0:: @ 080EB1A0
	entity_list_end

Enemies_DarkHyruleCastleOutside_OutsideSouthwest:: @ 080EB1B0
	enemy_raw subtype=0x15, x=0xa8, y=0xe8, paramA=0x1
	entity_list_end

TileEntities_DarkHyruleCastleOutside_OutsideSouthwest:: @ 080EB1D0
	tile_entity_list_end

Room_DarkHyruleCastleOutside_OutsideSouthwest:: @ 080EB1D8
	.4byte Entities_DarkHyruleCastleOutside_OutsideSouthwest_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastleOutside_OutsideSouthwest
	.4byte TileEntities_DarkHyruleCastleOutside_OutsideSouthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_OutsideSouthwest
	.4byte sub_StateChange_Dojos_ToGrimblade3

Entities_DarkHyruleCastleOutside_OutsideSouth_0:: @ 080EB1F8
	object_raw subtype=0x9d, x=0x228, y=0xd8, paramA=0x1, paramC=0x80000082
	manager subtype=0x11, paramC=0x80000082
	manager subtype=0x5, x=0x23, y=0xf, paramB=0xd, paramC=0x820002
	object_raw subtype=0x9d, x=0x108, y=0xd8, paramA=0x1, paramC=0x80010083
	manager subtype=0x11, paramC=0x80010083
	manager subtype=0x5, x=0xf, y=0xf, paramB=0x7, paramC=0x830002
	object_raw subtype=0x5, x=0xc8, y=0xd8
	object_raw subtype=0x5, x=0xb8, y=0xd8, paramA=0x5e
	entity_list_end

Enemies_DarkHyruleCastleOutside_OutsideSouth:: @ 080EB288
	enemy_raw subtype=0x15, x=0x48, y=0xf8, paramA=0x1
	enemy_raw subtype=0x15, x=0x128, y=0xe8, paramA=0x1
	enemy_raw subtype=0x15, x=0x148, y=0x118, paramA=0x1
	enemy_raw subtype=0x15, x=0x298, y=0xe8, paramA=0x1
	enemy_raw subtype=0x46, x=0x1e8, y=0xe8, paramA=0x1
	enemy_raw subtype=0x46, x=0x208, y=0x108, paramA=0x1
	enemy_raw subtype=0x30, x=0x38, y=0xd8, paramA=0x1
	enemy_raw subtype=0x30, x=0x2c8, y=0xe8, paramA=0x1
	entity_list_end

TileEntities_DarkHyruleCastleOutside_OutsideSouth:: @ 080EB318
	tile_entity_list_end

Room_DarkHyruleCastleOutside_OutsideSouth:: @ 080EB320
	.4byte Entities_DarkHyruleCastleOutside_OutsideSouth_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastleOutside_OutsideSouth
	.4byte TileEntities_DarkHyruleCastleOutside_OutsideSouth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_OutsideSouth
	.4byte sub_StateChange_Dojos_ToGrimblade4

Entities_DarkHyruleCastleOutside_OutsideSoutheast_0:: @ 080EB340
	object_raw subtype=0x5e, x=0x78, y=0x48
	object_raw subtype=0x5e, x=0x98, y=0x78
	object_raw subtype=0x5e, x=0x68, y=0xa8
	object_raw subtype=0x5e, x=0xc8, y=0xb8
	object_raw subtype=0x5e, x=0xb8, y=0x108
	object_raw subtype=0x5e, x=0xb8, y=0x148
	object_raw subtype=0x5e, x=0x68, y=0x188
	object_raw subtype=0x5e, x=0x88, y=0x1c8
	object_raw subtype=0x5e, x=0xc8, y=0x218
	manager subtype=0x2b, paramA=0x8
	entity_list_end

Enemies_DarkHyruleCastleOutside_OutsideSoutheast:: @ 080EB3F0
	enemy_raw subtype=0x30, x=0x38, y=0x288, paramA=0x1
	enemy_raw subtype=0x30, x=0xb8, y=0x288, paramA=0x1
	entity_list_end

TileEntities_DarkHyruleCastleOutside_OutsideSoutheast:: @ 080EB420
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastleOutside_OutsideSoutheast:: @ 080EB428
	.incbin "data_080D5360/gUnk_additional_8_DarkHyruleCastleOutside_OutsideSoutheast.bin"

Room_DarkHyruleCastleOutside_OutsideSoutheast:: @ 080EB440
	.4byte Entities_DarkHyruleCastleOutside_OutsideSoutheast_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastleOutside_OutsideSoutheast
	.4byte TileEntities_DarkHyruleCastleOutside_OutsideSoutheast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_OutsideSoutheast
	.4byte sub_StateChange_Dojos_ToGrimblade5
	.4byte gUnk_additional_8_DarkHyruleCastleOutside_OutsideSoutheast

Entities_DarkHyruleCastleOutside_8_0:: @ 080EB464
	object_raw subtype=0x5e, x=0x98, y=0x138
	object_raw subtype=0x5e, x=0x58, y=0x1b8
	object_raw subtype=0x5e, x=0xa8, y=0x258
	entity_list_end

Enemies_DarkHyruleCastleOutside_8:: @ 080EB4A4
	enemy_raw subtype=0x8, x=0xb8, y=0x158
	enemy_raw subtype=0x8, x=0xb8, y=0x1d8
	enemy_raw subtype=0x33, x=0x48, y=0x110, paramA=0x8, paramB=0x1
	enemy_raw subtype=0x33, x=0xf8, y=0x190, paramA=0x9, paramB=0x1
	enemy_raw subtype=0x33, x=0x58, y=0x200, paramA=0xa, paramB=0x1
	entity_list_end

TileEntities_DarkHyruleCastleOutside_8:: @ 080EB504
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastleOutside_8:: @ 080EB50C
	.incbin "data_080D5360/gUnk_additional_8_DarkHyruleCastleOutside_8.bin"

gUnk_additional_9_DarkHyruleCastleOutside_8:: @ 080EB52A
	.incbin "data_080D5360/gUnk_additional_9_DarkHyruleCastleOutside_8.bin"

gUnk_additional_a_DarkHyruleCastleOutside_8:: @ 080EB548
	.incbin "data_080D5360/gUnk_additional_a_DarkHyruleCastleOutside_8.bin"

Room_DarkHyruleCastleOutside_8:: @ 080EB568
	.4byte Entities_DarkHyruleCastleOutside_8_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastleOutside_8
	.4byte TileEntities_DarkHyruleCastleOutside_8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastleOutside_8
	.4byte sub_StateChange_Dojos_ToGrimblade6
	.4byte gUnk_additional_8_DarkHyruleCastleOutside_8
	.4byte gUnk_additional_9_DarkHyruleCastleOutside_8
	.4byte gUnk_additional_a_DarkHyruleCastleOutside_8

Entities_DarkHyruleCastle_1FEntrance_0:: @ 080EB594
	object_raw subtype=0x8, x=0x228, y=0xd8, paramA=0x8, paramC=0x3dffff
	object_raw subtype=0x34, x=0x1c8, y=0x1c8, paramA=0x1, paramB=0x1488, paramC=0x8b0188
	object_raw subtype=0x34, x=0x168, y=0x1c8, paramB=0xa88, paramC=0x480188
	entity_list_end

gUnk_080EB5D4:: @ 080EB5D4
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69CastleEscape
	npc_raw subtype=0x28, x=0xd8, y=0x178, script=script_ZeldaCastleEscape
	entity_list_end

gUnk_080EB604:: @ 080EB604
	npc_raw subtype=0x4e, script=script_Npc4EDHCEntrance
	object_raw subtype=0x6a, x=0x1e8, y=0x1d8, collision=1, paramA=0x5, paramB=0x2
	object_raw subtype=0x6a, x=0x198, y=0x198, collision=1, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0x150, y=0x1c0, collision=1, paramA=0x5, paramB=0x202
	object_raw subtype=0x6a, x=0x1d8, y=0x198, collision=1, paramA=0x5, paramB=0x302
	entity_list_end

Enemies_DarkHyruleCastle_1FEntrance:: @ 080EB664
	entity_list_end

TileEntities_DarkHyruleCastle_1FEntrance:: @ 080EB674
	tile_entity type=0x1, paramA=0x1
	tile_entity_list_end

gUnk_080EB684:: @ 080EB684
	object_raw subtype=0x6a, x=0x178, y=0x1e8, collision=1, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0x198, y=0x1e8, collision=1, paramA=0x5, paramB=0x302
	object_raw subtype=0x6a, x=0x1b8, y=0x1e8, collision=1, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0x178, y=0xd8, collision=1, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0x198, y=0xd8, collision=1, paramA=0x5, paramB=0x302
	object_raw subtype=0x6a, x=0x1b8, y=0xd8, collision=1, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0x200, y=0x158, collision=1, paramA=0x5, paramB=0x102
	entity_list_end

Room_DarkHyruleCastle_1FEntrance:: @ 080EB704
	.4byte Entities_DarkHyruleCastle_1FEntrance_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FEntrance
	.4byte TileEntities_DarkHyruleCastle_1FEntrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FEntrance
	.4byte sub_StateChange_DarkHyruleCastle_1FEntrance

Entities_DarkHyruleCastle_3FTopLeftTower_0:: @ 080EB724
	entity_list_end

Enemies_DarkHyruleCastle_3FTopLeftTower:: @ 080EB734
	entity_list_end

TileEntities_DarkHyruleCastle_3FTopLeftTower:: @ 080EB744
	tile_entity type=0x2, paramA=0x3e, paramB=0x53, paramC=0x1c8
	tile_entity type=0x1, paramA=0x2
	tile_entity_list_end

Room_DarkHyruleCastle_3FTopLeftTower:: @ 080EB75C
	.4byte Entities_DarkHyruleCastle_3FTopLeftTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_3FTopLeftTower
	.4byte TileEntities_DarkHyruleCastle_3FTopLeftTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_3FTopLeftTower
	.4byte sub_StateChange_Dojos_ToGrimblade7

Entities_DarkHyruleCastle_3FTopRightTower_0:: @ 080EB77C
	entity_list_end

Enemies_DarkHyruleCastle_3FTopRightTower:: @ 080EB78C
	entity_list_end

TileEntities_DarkHyruleCastle_3FTopRightTower:: @ 080EB79C
	tile_entity type=0x2, paramA=0x3f, paramB=0x53, paramC=0x1c8
	tile_entity type=0x1, paramA=0x3
	tile_entity_list_end

Room_DarkHyruleCastle_3FTopRightTower:: @ 080EB7B4
	.4byte Entities_DarkHyruleCastle_3FTopRightTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_3FTopRightTower
	.4byte TileEntities_DarkHyruleCastle_3FTopRightTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_3FTopRightTower
	.4byte sub_StateChange_Dojos_ToGrimblade8

Entities_DarkHyruleCastle_3FBottomLeftTower_0:: @ 080EB7D4
	entity_list_end

Enemies_DarkHyruleCastle_3FBottomLeftTower:: @ 080EB7E4
	entity_list_end

TileEntities_DarkHyruleCastle_3FBottomLeftTower:: @ 080EB7F4
	tile_entity type=0x2, paramA=0x40, paramB=0x53, paramC=0x1c8
	tile_entity type=0x1, paramA=0x4
	tile_entity_list_end

Room_DarkHyruleCastle_3FBottomLeftTower:: @ 080EB80C
	.4byte Entities_DarkHyruleCastle_3FBottomLeftTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_3FBottomLeftTower
	.4byte TileEntities_DarkHyruleCastle_3FBottomLeftTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_3FBottomLeftTower
	.4byte sub_StateChange_Dojos_ToGrimblade9

Entities_DarkHyruleCastle_3FBottomRightTower_0:: @ 080EB82C
	entity_list_end

Enemies_DarkHyruleCastle_3FBottomRightTower:: @ 080EB83C
	entity_list_end

TileEntities_DarkHyruleCastle_3FBottomRightTower:: @ 080EB84C
	tile_entity type=0x2, paramA=0x41, paramB=0x53, paramC=0x1c8
	tile_entity type=0x1, paramA=0x5
	tile_entity_list_end

Room_DarkHyruleCastle_3FBottomRightTower:: @ 080EB864
	.4byte Entities_DarkHyruleCastle_3FBottomRightTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_3FBottomRightTower
	.4byte TileEntities_DarkHyruleCastle_3FBottomRightTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_3FBottomRightTower
	.4byte sub_StateChange_Dojos_ToSplitblade0

Entities_DarkHyruleCastle_3FKeatonHallToVaati_0:: @ 080EB884
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69KeatonsRoom
	object_raw subtype=0x3, x=0x78, y=0x48, paramA=0x1, paramC=0x80000001
	object_raw subtype=0x3, x=0x98, y=0x48, paramA=0x1, paramC=0x80010001
	object_raw subtype=0x3, x=0xb8, y=0x48, paramA=0x1, paramC=0x80020001
	object_raw subtype=0x3, x=0xd8, y=0x48, paramA=0x1, paramC=0x80030001
	object_raw subtype=0x39, x=0xa8, y=0x28, paramA=0x4, paramC=0x8c00ffff
	object_raw subtype=0x8, x=0xa8, y=0x188, paramA=0x12, paramC=0xffff
	entity_list_end

Enemies_DarkHyruleCastle_3FKeatonHallToVaati:: @ 080EB904
	enemy_raw subtype=0x30, x=0x98, y=0x58, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0xb8, y=0x58, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0x88, y=0x88, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0xa8, y=0x88, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0xc8, y=0x88, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0x88, y=0xb8, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0xa8, y=0xb8, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0xc8, y=0xb8, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0x98, y=0xe8, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	enemy_raw subtype=0x30, x=0xb8, y=0xe8, paramA=0x1, paramB=0x1c0e0000, paramC=0x300070
	entity_list_end

TileEntities_DarkHyruleCastle_3FKeatonHallToVaati:: @ 080EB9B4
	tile_entity type=0x1, paramA=0x6
	tile_entity_list_end

Room_DarkHyruleCastle_3FKeatonHallToVaati:: @ 080EB9C4
	.4byte Entities_DarkHyruleCastle_3FKeatonHallToVaati_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_3FKeatonHallToVaati
	.4byte TileEntities_DarkHyruleCastle_3FKeatonHallToVaati
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_3FKeatonHallToVaati
	.4byte sub_StateChange_Dojos_ToSplitblade1

Entities_DarkHyruleCastle_3FTripleDarknut_0:: @ 080EB9E4
	entity_list_end

gUnk_080EB9F4:: @ 080EB9F4
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69DarkNutsRoom
	manager subtype=0x1e, x=0x30, y=0xa0, paramB=0x2000f0, paramC=0x80000000
	manager subtype=0x35, x=0xa8, y=0x58, paramB=0x3c1e00, paramC=0x80008001
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x80028001
	manager subtype=0x35, x=0xa8, y=0x28, paramB=0x3c1e00, paramC=0x80028003
	object_raw subtype=0x8, x=0xa8, y=0x28, paramC=0x8003ffff
.ifndef EU
	object_raw subtype=0x5, x=0x38, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0x118, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0x38, y=0xc8, paramA=0x5f
	object_raw subtype=0x5, x=0x118, y=0xc8, paramA=0x5f
.endif
	entity_list_end

gUnk_080EBAA4:: @ 080EBAA4
	npc_raw subtype=0x27, x=0xa8, y=0x58, paramA=0x1, script=script_Vaati1Intro
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69V1Defeated
	object_raw subtype=0x8, x=0xa8, y=0x28, paramC=0xffff
	object_raw subtype=0x39, x=0xa8, y=0xd8, paramA=0x6, paramC=0xffff
	entity_list_end

gUnk_080EBAF4:: @ 080EBAF4
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69V2Defeated
	object_raw subtype=0x8, x=0xa8, y=0x28, paramC=0x80000000
	object_raw subtype=0x39, x=0xa8, y=0xd8, paramA=0x6, paramC=0x80000000
	entity_list_end

Enemies_DarkHyruleCastle_3FTripleDarknut:: @ 080EBB34
	enemy_raw subtype=0x4a, x=0xa8, y=0x58, paramB=0x10120000, paramC=0x380050
.ifndef EU
	object_raw subtype=0x5, x=0x38, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0x118, y=0x38, paramA=0x5f
	object_raw subtype=0x5, x=0x38, y=0xc8, paramA=0x5e
	object_raw subtype=0x5, x=0x118, y=0xc8, paramA=0x60
.endif
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0b, flag=0x0
	entity_list_end

TileEntities_DarkHyruleCastle_3FTripleDarknut:: @ 080EBBA4
	tile_entity type=0x1, paramA=0x7
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_3FTripleDarknut:: @ 080EBBB4
	enemy_raw subtype=0x5, x=0x88, y=0x58, unknown=0x2f, paramA=0x2
	enemy_raw subtype=0x5, x=0xa8, y=0x58, unknown=0x2f, paramA=0x3
	enemy_raw subtype=0x5, x=0xc8, y=0x58, unknown=0x2f, paramA=0x2
	manager subtype=0x28, unknown=0x3, paramB=0x8
	object_raw subtype=0x39, x=0xa8, y=0xd8, paramA=0x6, paramC=0xffff
	entity_list_end

Room_DarkHyruleCastle_3FTripleDarknut:: @ 080EBC14
	.4byte Entities_DarkHyruleCastle_3FTripleDarknut_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_3FTripleDarknut
	.4byte TileEntities_DarkHyruleCastle_3FTripleDarknut
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_3FTripleDarknut
	.4byte sub_StateChange_DarkHyruleCastle_3FTripleDarknut
	.4byte gUnk_additional_8_DarkHyruleCastle_3FTripleDarknut

Entities_DarkHyruleCastle_2FTopLeftTower_0:: @ 080EBC38
	manager subtype=0x1a, unknown=0x8, paramA=0x34
	object_raw subtype=0x3, x=0x58, y=0x78, paramC=0x420001
	object_raw subtype=0x8, x=0x88, y=0xb8, paramA=0x2, paramC=0x42ffff
	entity_list_end

Enemies_DarkHyruleCastle_2FTopLeftTower:: @ 080EBC78
	entity_list_end

TileEntities_DarkHyruleCastle_2FTopLeftTower:: @ 080EBC88
	tile_entity type=0x1, paramA=0x8
	tile_entity_list_end

Room_DarkHyruleCastle_2FTopLeftTower:: @ 080EBC98
	.4byte Entities_DarkHyruleCastle_2FTopLeftTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FTopLeftTower
	.4byte TileEntities_DarkHyruleCastle_2FTopLeftTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FTopLeftTower
	.4byte sub_StateChange_Dojos_ToSplitblade2

Entities_DarkHyruleCastle_2FTopLeftCorner_0:: @ 080EBCB8
	object_raw subtype=0x23, x=0x58, y=0x28, paramB=0xaa00, paramC=0x80000080
	object_raw subtype=0x23, x=0x78, y=0x28, paramB=0xaa00, paramC=0x80010080
	object_raw subtype=0x23, x=0x98, y=0x28, paramB=0xaa00, paramC=0x80020080
	object_raw subtype=0x23, x=0xb8, y=0x28, paramB=0xaa00, paramC=0x80030080
	manager subtype=0x11, paramC=0x8c000080
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x800092
	object_raw subtype=0x8, x=0x28, y=0x58, paramA=0x3, paramC=0x92ffff
	object_raw subtype=0x98, x=0x88, y=0xa8, unknown=0x3, paramB=0x10702
	object_raw subtype=0x98, x=0x88, y=0xa8, unknown=0x3, paramB=0x30702
	object_raw subtype=0x5, x=0x38, y=0xf8, paramA=0x5e
	object_raw subtype=0x5, x=0x38, y=0x128, paramA=0x5e
	object_raw subtype=0x5, x=0x38, y=0x158, paramA=0x5e
	object_raw subtype=0x5, x=0xd8, y=0xf8, paramA=0x5e
	object_raw subtype=0x5, x=0xd8, y=0x128, paramA=0x5e
	object_raw subtype=0x5, x=0xd8, y=0x158, paramA=0x5e
	entity_list_end

Enemies_DarkHyruleCastle_2FTopLeftCorner:: @ 080EBDB8
	enemy_raw subtype=0x42, x=0x78, y=0x108, paramA=0x1
	enemy_raw subtype=0x42, x=0x98, y=0x108, paramA=0x1
	enemy_raw subtype=0x42, x=0x78, y=0x128, paramA=0x1
	enemy_raw subtype=0x42, x=0x98, y=0x128, paramA=0x1
	enemy_raw subtype=0x1a, paramB=0x20160201, paramC=0x500030
	enemy_raw subtype=0x1a, paramB=0x20160302, paramC=0x500030
	entity_list_end

TileEntities_DarkHyruleCastle_2FTopLeftCorner:: @ 080EBE28
	tile_entity type=0x1, paramA=0x9
	tile_entity_list_end

Room_DarkHyruleCastle_2FTopLeftCorner:: @ 080EBE38
	.4byte Entities_DarkHyruleCastle_2FTopLeftCorner_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FTopLeftCorner
	.4byte TileEntities_DarkHyruleCastle_2FTopLeftCorner
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FTopLeftCorner
	.4byte sub_StateChange_Dojos_ToSplitblade3

Entities_DarkHyruleCastle_2FBossKey_0:: @ 080EBE58
	object_raw subtype=0xc, x=0x88, y=0x28, paramA=0x4, paramB=0x43
	object_raw subtype=0x5, x=0x38, y=0x28
	object_raw subtype=0x5, x=0x38, y=0x38
	object_raw subtype=0x5, x=0x38, y=0x48, paramA=0x5f
	object_raw subtype=0x5, x=0x38, y=0x58, paramA=0x5f
	object_raw subtype=0x5, x=0xd8, y=0x28
	object_raw subtype=0x5, x=0xd8, y=0x38
	object_raw subtype=0x5, x=0xd8, y=0x48
	object_raw subtype=0x5, x=0xd8, y=0x58
	entity_list_end

Enemies_DarkHyruleCastle_2FBossKey:: @ 080EBEF8
	entity_list_end

TileEntities_DarkHyruleCastle_2FBossKey:: @ 080EBF08
	tile_entity type=0x3, paramA=0x43, paramB=0x52, paramC=0x88, paramD=0x28
	tile_entity type=0xa, paramA=0x1, paramB=0x44, paramC=0x186, paramD=0x26
	tile_entity type=0xa, paramA=0x1, paramB=0x45, paramC=0x1c6, paramD=0x26
	tile_entity type=0xa, paramA=0x1, paramB=0x46, paramC=0x206, paramD=0x26
	tile_entity type=0xa, paramA=0x1, paramB=0x47, paramC=0x246, paramD=0x26
	tile_entity type=0x1, paramA=0xa
	tile_entity_list_end

Room_DarkHyruleCastle_2FBossKey:: @ 080EBF40
	.4byte Entities_DarkHyruleCastle_2FBossKey_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBossKey
	.4byte TileEntities_DarkHyruleCastle_2FBossKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBossKey
	.4byte sub_StateChange_Dojos_ToSplitblade4

Entities_DarkHyruleCastle_2FBlueWarp_0:: @ 080EBF60
	manager subtype=0x1e, x=0x30, y=0x50, paramB=0x2000b0, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x488000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x480086
	object_raw subtype=0x34, x=0x88, y=0x68, paramB=0x88, paramC=0x480716
	entity_list_end

Enemies_DarkHyruleCastle_2FBlueWarp:: @ 080EBFB0
	entity_list_end

TileEntities_DarkHyruleCastle_2FBlueWarp:: @ 080EBFC0
	tile_entity type=0xd, paramB=0x2e00
	tile_entity type=0x1, paramA=0xb
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FBlueWarp:: @ 080EBFD8
	enemy_raw subtype=0x5, x=0x88, y=0x38, unknown=0x2f, paramA=0x3, paramB=0xe160000, paramC=0x300030
	object_raw subtype=0x8, x=0x88, y=0xa8, paramA=0x12, paramC=0x86ffff
	object_raw subtype=0x39, x=0x88, y=0x28, paramA=0x4, paramC=0x86ffff
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69DHC
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0a, flag=0x86
	entity_list_end

Room_DarkHyruleCastle_2FBlueWarp:: @ 080EC038
	.4byte Entities_DarkHyruleCastle_2FBlueWarp_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBlueWarp
	.4byte TileEntities_DarkHyruleCastle_2FBlueWarp
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBlueWarp
	.4byte sub_StateChange_Dojos_ToSplitblade5
	.4byte gUnk_additional_8_DarkHyruleCastle_2FBlueWarp

Entities_DarkHyruleCastle_2FTopRightCornerGhini_0:: @ 080EC05C
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x490000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x490087
	object_raw subtype=0x8, x=0xe8, y=0x58, paramA=0x1, paramC=0x87ffff
	entity_list_end

Enemies_DarkHyruleCastle_2FTopRightCornerGhini:: @ 080EC09C
	entity_list_end

TileEntities_DarkHyruleCastle_2FTopRightCornerGhini:: @ 080EC0AC
	tile_entity type=0x1, paramA=0xc
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FTopRightCornerGhini:: @ 080EC0BC
	enemy_raw subtype=0x50, paramB=0xe160900, paramC=0x300030
	entity_list_end

gUnk_additional_9_DarkHyruleCastle_2FTopRightCornerGhini:: @ 080EC0DC
	.incbin "data_080D5360/gUnk_additional_9_DarkHyruleCastle_2FTopRightCornerGhini.bin"

Room_DarkHyruleCastle_2FTopRightCornerGhini:: @ 080EC0EC
	.4byte Entities_DarkHyruleCastle_2FTopRightCornerGhini_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FTopRightCornerGhini
	.4byte TileEntities_DarkHyruleCastle_2FTopRightCornerGhini
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FTopRightCornerGhini
	.4byte sub_StateChange_Dojos_ToSplitblade6
	.4byte gUnk_additional_8_DarkHyruleCastle_2FTopRightCornerGhini
	.4byte gUnk_additional_9_DarkHyruleCastle_2FTopRightCornerGhini

Entities_DarkHyruleCastle_2FTopRightCornerTorches_0:: @ 080EC114
	object_raw subtype=0x8, x=0x88, y=0x28, paramC=0x4bffff
	manager subtype=0x23, x=0x58, y=0x38, paramA=0x3, paramB=0x71001, paramC=0x8000004a
	manager subtype=0x23, x=0x48, y=0x58, paramA=0x3, paramB=0x71001, paramC=0x8001004a
	manager subtype=0x23, x=0x48, y=0x78, paramA=0x3, paramB=0x71001, paramC=0x8002004a
	manager subtype=0x23, x=0x58, y=0x98, paramA=0x3, paramB=0x71001, paramC=0x8003004a
	manager subtype=0x23, x=0xb8, y=0x38, paramA=0x3, paramB=0x71001, paramC=0x8004004a
	manager subtype=0x23, x=0xc8, y=0x58, paramA=0x3, paramB=0x71001, paramC=0x8005004a
	manager subtype=0x23, x=0xc8, y=0x78, paramA=0x3, paramB=0x71001, paramC=0x8006004a
	manager subtype=0x23, x=0xb8, y=0x98, paramA=0x3, paramB=0x71001, paramC=0x8007004a
	manager subtype=0x11, paramC=0x9c00004a
	manager subtype=0x2e, unknown=0x0, paramB=0xa00, paramC=0x4a004b
	object_raw subtype=0x98, x=0x88, y=0x68, unknown=0x3, paramB=0x10402
	object_raw subtype=0x98, x=0x88, y=0x68, unknown=0x3, paramB=0x30402
	entity_list_end

Enemies_DarkHyruleCastle_2FTopRightCornerTorches:: @ 080EC1F4
	entity_list_end

TileEntities_DarkHyruleCastle_2FTopRightCornerTorches:: @ 080EC204
	tile_entity type=0x9, paramB=0x8000
	tile_entity type=0x1, paramA=0xd
	tile_entity_list_end

Room_DarkHyruleCastle_2FTopRightCornerTorches:: @ 080EC21C
	.4byte Entities_DarkHyruleCastle_2FTopRightCornerTorches_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FTopRightCornerTorches
	.4byte TileEntities_DarkHyruleCastle_2FTopRightCornerTorches
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FTopRightCornerTorches
	.4byte sub_StateChange_Dojos_ToSplitblade7

Entities_DarkHyruleCastle_2FTopRightTower_0:: @ 080EC23C
	entity_list_end

Enemies_DarkHyruleCastle_2FTopRightTower:: @ 080EC24C
	object_raw subtype=0x8, x=0x18, y=0x58, paramA=0x3, paramC=0x4bffff
	enemy_raw subtype=0x1c, x=0xb8, y=0x78, paramB=0x810
	entity_list_end

TileEntities_DarkHyruleCastle_2FTopRightTower:: @ 080EC27C
	tile_entity type=0x1, paramA=0xe
	tile_entity_list_end

Room_DarkHyruleCastle_2FTopRightTower:: @ 080EC28C
	.4byte Entities_DarkHyruleCastle_2FTopRightTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FTopRightTower
	.4byte TileEntities_DarkHyruleCastle_2FTopRightTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FTopRightTower
	.4byte sub_StateChange_Dojos_ToSplitblade8

Entities_DarkHyruleCastle_2FTopLeftDarknut_0:: @ 080EC2AC
	object_raw subtype=0x39, x=0x88, y=0x28, paramA=0x4, paramC=0x88ffff
	entity_list_end

gUnk_080EC2CC:: @ 080EC2CC
	manager subtype=0xf, unknown=0x0, paramA=0xd
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x80010000
	manager subtype=0x1e, x=0x30, y=0x30, paramB=0x7000a8, paramC=0x80000000
	manager subtype=0x2e, x=0x2d, unknown=0x0, paramB=0x100, paramC=0x80000000
	manager subtype=0x2e, x=0x23, unknown=0x0, paramB=0x100, paramC=0x80010000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x8001004c
	manager subtype=0x35, x=0x88, y=0x28, paramB=0x3c1e00, paramC=0x4c0088
	entity_list_end

Enemies_DarkHyruleCastle_2FTopLeftDarknut:: @ 080EC34C
	entity_list_end

TileEntities_DarkHyruleCastle_2FTopLeftDarknut:: @ 080EC35C
	tile_entity type=0xd, paramB=0x2d00
	tile_entity type=0x1, paramA=0xf
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FTopLeftDarknut:: @ 080EC374
	enemy_raw subtype=0x5, x=0x88, y=0x68, paramA=0x2
	object_raw subtype=0x8, x=0x88, y=0xa8, paramA=0x12, paramC=0x4cffff
	object_raw subtype=0x8, x=0xe8, y=0x68, paramA=0x11, paramC=0x4cffff
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0f, flag=0x4c
	entity_list_end

Room_DarkHyruleCastle_2FTopLeftDarknut:: @ 080EC3C4
	.4byte Entities_DarkHyruleCastle_2FTopLeftDarknut_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FTopLeftDarknut
	.4byte TileEntities_DarkHyruleCastle_2FTopLeftDarknut
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FTopLeftDarknut
	.4byte sub_StateChange_DarkHyruleCastle_2FTopLeftDarknut
	.4byte gUnk_additional_8_DarkHyruleCastle_2FTopLeftDarknut

Entities_DarkHyruleCastle_2FSparks_0:: @ 080EC3E8
	object_raw subtype=0x5, x=0x38, y=0x98
	object_raw subtype=0x5, x=0x48, y=0x98
	object_raw subtype=0x5, x=0xc8, y=0x98
	object_raw subtype=0x5, x=0xd8, y=0x98
	entity_list_end

Enemies_DarkHyruleCastle_2FSparks:: @ 080EC438
	enemy_raw subtype=0x1c, x=0x68, y=0x78, paramB=0x810
	enemy_raw subtype=0x1c, x=0x78, y=0x78, paramB=0x810
	enemy_raw subtype=0x1c, x=0x88, y=0x78, paramB=0x810
	enemy_raw subtype=0x1c, x=0x98, y=0x78, paramB=0x810
	enemy_raw subtype=0x1c, x=0xa8, y=0x78, paramB=0x810
	entity_list_end

TileEntities_DarkHyruleCastle_2FSparks:: @ 080EC498
	tile_entity type=0x1, paramA=0x10
	tile_entity_list_end

Room_DarkHyruleCastle_2FSparks:: @ 080EC4A8
	.4byte Entities_DarkHyruleCastle_2FSparks_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FSparks
	.4byte TileEntities_DarkHyruleCastle_2FSparks
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FSparks
	.4byte sub_StateChange_Dojos_ToSplitblade9

Entities_DarkHyruleCastle_2FTopRightDarknuts_0:: @ 080EC4C8
	object_raw subtype=0x39, x=0x88, y=0x28, paramA=0x4, paramC=0x89ffff
	entity_list_end

gUnk_080EC4E8:: @ 080EC4E8
	manager subtype=0xf, unknown=0x0, paramA=0xd
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x80010000
	manager subtype=0x1e, x=0x38, y=0x30, paramB=0x7000a8, paramC=0x80000000
	manager subtype=0x2e, x=0x2d, unknown=0x0, paramB=0x100, paramC=0x80000000
	manager subtype=0x2e, x=0x23, unknown=0x0, paramB=0x100, paramC=0x80010000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x8001004d
	manager subtype=0x35, x=0x88, y=0x28, paramB=0x3c1e00, paramC=0x4d0089
	entity_list_end

Enemies_DarkHyruleCastle_2FTopRightDarknuts:: @ 080EC568
	entity_list_end

TileEntities_DarkHyruleCastle_2FTopRightDarknuts:: @ 080EC578
	tile_entity type=0xd, paramB=0x2d00
	tile_entity type=0x1, paramA=0x11
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FTopRightDarknuts:: @ 080EC590
	enemy_raw subtype=0x5, x=0x70, y=0x68, paramA=0x1
	enemy_raw subtype=0x5, x=0xa0, y=0x68
	manager subtype=0x28, unknown=0x3, paramB=0x8
	object_raw subtype=0x8, x=0x88, y=0xa8, paramA=0x12, paramC=0x4dffff
	object_raw subtype=0x8, x=0x28, y=0x68, paramA=0x13, paramC=0x4dffff
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0f, flag=0x4d
	entity_list_end

Room_DarkHyruleCastle_2FTopRightDarknuts:: @ 080EC600
	.4byte Entities_DarkHyruleCastle_2FTopRightDarknuts_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FTopRightDarknuts
	.4byte TileEntities_DarkHyruleCastle_2FTopRightDarknuts
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FTopRightDarknuts
	.4byte sub_StateChange_DarkHyruleCastle_2FTopRightDarknuts
	.4byte gUnk_additional_8_DarkHyruleCastle_2FTopRightDarknuts

Entities_DarkHyruleCastle_2FLeft_0:: @ 080EC624
	object_raw subtype=0x9d, x=0x40, y=0x20, paramA=0x1, paramC=0x8000004e
	object_raw subtype=0x9d, x=0xd0, y=0x20, paramA=0x1, paramC=0x8001004f
	manager subtype=0x11, paramC=0x8000004e
	manager subtype=0x11, paramC=0x8001004f
	object_raw subtype=0x8, x=0x88, y=0x28, paramC=0x44effff
	object_raw subtype=0x16, x=0x40, y=0x60, collision=1, paramA=0x2, paramB=0x8
	enemy_raw subtype=0x22, x=0x38, y=0xd8
	enemy_raw subtype=0x22, x=0x48, y=0xe8
	enemy_raw subtype=0x22, x=0xc8, y=0xd8
	enemy_raw subtype=0x22, x=0xd8, y=0xe8
	object_raw subtype=0x5, x=0x78, y=0x38
	object_raw subtype=0x5, x=0x98, y=0x38, paramA=0x5e
	entity_list_end

Enemies_DarkHyruleCastle_2FLeft:: @ 080EC6F4
	entity_list_end

TileEntities_DarkHyruleCastle_2FLeft:: @ 080EC704
	tile_entity type=0xa, paramA=0x1, paramB=0x50, paramC=0x287, paramD=0x26
	tile_entity type=0xa, paramA=0x1, paramB=0x51, paramC=0x288, paramD=0x26
	tile_entity type=0xa, paramA=0x1, paramB=0x52, paramC=0x289, paramD=0x26
	tile_entity type=0x1, paramA=0x13
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FLeft:: @ 080EC72C
	.incbin "data_080D5360/gUnk_additional_8_DarkHyruleCastle_2FLeft.bin"

Room_DarkHyruleCastle_2FLeft:: @ 080EC77C
	.4byte Entities_DarkHyruleCastle_2FLeft_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FLeft
	.4byte TileEntities_DarkHyruleCastle_2FLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FLeft
	.4byte sub_StateChange_Dojos_ToGreatblade0
	.4byte gUnk_additional_8_DarkHyruleCastle_2FLeft

Entities_DarkHyruleCastle_2FRight_0:: @ 080EC7A0
	object_raw subtype=0x98, x=0x78, y=0x88, unknown=0x3, paramB=0x10302
	entity_list_end

Enemies_DarkHyruleCastle_2FRight:: @ 080EC7C0
	entity_list_end

TileEntities_DarkHyruleCastle_2FRight:: @ 080EC7D0
	tile_entity type=0x1, paramA=0x13
	tile_entity_list_end

Room_DarkHyruleCastle_2FRight:: @ 080EC7E0
	.4byte Entities_DarkHyruleCastle_2FRight_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FRight
	.4byte TileEntities_DarkHyruleCastle_2FRight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FRight
	.4byte sub_StateChange_Dojos_ToGreatblade1

Entities_DarkHyruleCastle_2FBottomLeftDarknuts_0:: @ 080EC800
	object_raw subtype=0x39, x=0x88, y=0xa8, paramA=0x6, paramC=0x8affff
	entity_list_end

gUnk_080EC820:: @ 080EC820
	manager subtype=0xf, unknown=0x0, paramA=0xd
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x80010000
	manager subtype=0x1e, x=0x38, y=0x30, paramB=0x7000a8, paramC=0x80000000
	manager subtype=0x2e, x=0x2d, unknown=0x0, paramB=0x100, paramC=0x80000000
	manager subtype=0x2e, x=0x23, unknown=0x0, paramB=0x100, paramC=0x80010000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x80010053
	manager subtype=0x35, x=0x88, y=0xa8, paramB=0x3c1e00, paramC=0x53008a
	entity_list_end

Enemies_DarkHyruleCastle_2FBottomLeftDarknuts:: @ 080EC8A0
	entity_list_end

TileEntities_DarkHyruleCastle_2FBottomLeftDarknuts:: @ 080EC8B0
	tile_entity type=0xd, paramB=0x2d00
	tile_entity type=0x1, paramA=0x14
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FBottomLeftDarknuts:: @ 080EC8C8
	enemy_raw subtype=0x5, x=0x70, y=0x68
	enemy_raw subtype=0x5, x=0xa0, y=0x68, paramA=0x1
	manager subtype=0x28, unknown=0x3, paramB=0x8
	object_raw subtype=0x8, x=0x88, y=0x28, paramA=0x10, paramC=0x53ffff
	object_raw subtype=0x8, x=0xe8, y=0x68, paramA=0x11, paramC=0x53ffff
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0f, flag=0x53
	entity_list_end

Room_DarkHyruleCastle_2FBottomLeftDarknuts:: @ 080EC938
	.4byte Entities_DarkHyruleCastle_2FBottomLeftDarknuts_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBottomLeftDarknuts
	.4byte TileEntities_DarkHyruleCastle_2FBottomLeftDarknuts
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBottomLeftDarknuts
	.4byte sub_StateChange_DarkHyruleCastle_2FBottomLeftDarknuts
	.4byte gUnk_additional_8_DarkHyruleCastle_2FBottomLeftDarknuts

Entities_DarkHyruleCastle_2FBossDoor_0:: @ 080EC95C
	object_raw subtype=0x39, x=0x88, y=0x28, paramC=0x55ffff
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x540000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x54008b
	object_raw subtype=0x8, x=0x28, y=0x68, paramA=0x3, paramC=0x8bffff
	object_raw subtype=0x8, x=0xe8, y=0x68, paramA=0x1, paramC=0x8bffff
	object_raw subtype=0x34, x=0x88, y=0x68, paramA=0x1, paramB=0x88, paramC=0x8b071c
	entity_list_end

Enemies_DarkHyruleCastle_2FBossDoor:: @ 080EC9CC
	entity_list_end

TileEntities_DarkHyruleCastle_2FBossDoor:: @ 080EC9DC
	tile_entity type=0x1, paramA=0x15
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FBossDoor:: @ 080EC9EC
	enemy_raw subtype=0x4c, x=0x78, y=0x58, paramB=0xa120000, paramC=0x400040
	enemy_raw subtype=0x4c, x=0x98, y=0x58, paramB=0xa120000, paramC=0x400040
	entity_list_end

Room_DarkHyruleCastle_2FBossDoor:: @ 080ECA1C
	.4byte Entities_DarkHyruleCastle_2FBossDoor_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBossDoor
	.4byte TileEntities_DarkHyruleCastle_2FBossDoor
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBossDoor
	.4byte sub_StateChange_Dojos_ToGreatblade2
	.4byte gUnk_additional_8_DarkHyruleCastle_2FBossDoor

Entities_DarkHyruleCastle_2FBottomRightDarknut_0:: @ 080ECA40
	object_raw subtype=0x39, x=0x88, y=0xa8, paramA=0x6, paramC=0x8cffff
	entity_list_end

gUnk_080ECA60:: @ 080ECA60
	manager subtype=0xf, unknown=0x0, paramA=0xd
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x80010000
	manager subtype=0x1e, x=0x38, y=0x30, paramB=0x7000a8, paramC=0x80000000
	manager subtype=0x2e, x=0x2d, unknown=0x0, paramB=0x100, paramC=0x80000000
	manager subtype=0x2e, x=0x23, unknown=0x0, paramB=0x100, paramC=0x80010000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x80010056
	manager subtype=0x35, x=0x88, y=0xa8, paramB=0x3c1e00, paramC=0x56008c
	entity_list_end

Enemies_DarkHyruleCastle_2FBottomRightDarknut:: @ 080ECAE0
	entity_list_end

TileEntities_DarkHyruleCastle_2FBottomRightDarknut:: @ 080ECAF0
	tile_entity type=0x1, paramA=0x16
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FBottomRightDarknut:: @ 080ECB00
	enemy_raw subtype=0x5, x=0x88, y=0x68, paramA=0x2
	object_raw subtype=0x8, x=0x88, y=0x28, paramA=0x10, paramC=0x56ffff
	object_raw subtype=0x8, x=0x28, y=0x68, paramA=0x13, paramC=0x56ffff
	ezlo_hint type=0x3, x=0x0, y=0x0, rx=0x3f, ry=0x3f, msg=0xb0f, flag=0x4c
	entity_list_end

Room_DarkHyruleCastle_2FBottomRightDarknut:: @ 080ECB50
	.4byte Entities_DarkHyruleCastle_2FBottomRightDarknut_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBottomRightDarknut
	.4byte TileEntities_DarkHyruleCastle_2FBottomRightDarknut
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBottomRightDarknut
	.4byte sub_StateChange_DarkHyruleCastle_2FBottomRightDarknut
	.4byte gUnk_additional_8_DarkHyruleCastle_2FBottomRightDarknut

Entities_DarkHyruleCastle_2FBottomLeftCornerPuzzle_0:: @ 080ECB74
	manager subtype=0x30, x=0x38, y=0x58, paramB=0x6082101, paramC=0x80018000
	manager subtype=0x11, paramC=0x80000057
	object_raw subtype=0x3, x=0x38, y=0x38, paramA=0x1, paramC=0x80010001
	object_raw subtype=0x8, x=0xc8, y=0xb8, paramA=0x2, paramC=0x57ffff
	object_raw subtype=0x5, x=0xc8, y=0x58
	object_raw subtype=0x5, x=0xd8, y=0x58
	object_raw subtype=0x5, x=0xb8, y=0x68
	object_raw subtype=0x5, x=0xc8, y=0x68
	object_raw subtype=0x5, x=0xb8, y=0x58, paramA=0x5f
	object_raw subtype=0x5, x=0xd8, y=0x68, paramA=0x5f
	entity_list_end

Enemies_DarkHyruleCastle_2FBottomLeftCornerPuzzle:: @ 080ECC24
	entity_list_end

TileEntities_DarkHyruleCastle_2FBottomLeftCornerPuzzle:: @ 080ECC34
	tile_entity type=0x1, paramA=0x17
	tile_entity_list_end

Room_DarkHyruleCastle_2FBottomLeftCornerPuzzle:: @ 080ECC44
	.4byte Entities_DarkHyruleCastle_2FBottomLeftCornerPuzzle_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBottomLeftCornerPuzzle
	.4byte TileEntities_DarkHyruleCastle_2FBottomLeftCornerPuzzle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBottomLeftCornerPuzzle
	.4byte sub_StateChange_Dojos_ToGreatblade3

Entities_DarkHyruleCastle_2FEntrance_0:: @ 080ECC64
	object_raw subtype=0x9d, x=0x78, y=0x58, paramA=0x1, paramC=0x80000058
	object_raw subtype=0x9d, x=0x98, y=0x58, paramA=0x1, paramC=0x80010058
	object_raw subtype=0x9d, x=0x68, y=0x88, paramA=0x1, paramC=0x80020058
	object_raw subtype=0x9d, x=0xa8, y=0x88, paramA=0x1, paramC=0x80030058
	manager subtype=0x11, paramC=0x8c000058
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x580090
	manager subtype=0x35, x=0x88, y=0x38, paramB=0x5a1e00, paramC=0x900059
	object_raw subtype=0x39, x=0x88, y=0x38, paramA=0x4, paramC=0x59ffff
	entity_list_end

Enemies_DarkHyruleCastle_2FEntrance:: @ 080ECCF4
	entity_list_end

TileEntities_DarkHyruleCastle_2FEntrance:: @ 080ECD04
	tile_entity type=0x1, paramA=0x18
	tile_entity_list_end

Room_DarkHyruleCastle_2FEntrance:: @ 080ECD14
	.4byte Entities_DarkHyruleCastle_2FEntrance_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FEntrance
	.4byte TileEntities_DarkHyruleCastle_2FEntrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FEntrance
	.4byte sub_StateChange_Dojos_ToGreatblade4

Entities_DarkHyruleCastle_2FBottomLeftCorner_0:: @ 080ECD34
	object_raw subtype=0x9d, x=0x68, y=0x128, paramA=0x1, paramC=0x8000005a
	object_raw subtype=0x9d, x=0x88, y=0x108, paramA=0x1, paramC=0x8001005a
	object_raw subtype=0x9d, x=0x88, y=0x148, paramA=0x1, paramC=0x8002005a
	object_raw subtype=0x9d, x=0xa8, y=0x128, paramA=0x1, paramC=0x8003005a
	manager subtype=0x11, paramC=0x8c00005a
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x5a0091
	object_raw subtype=0x8, x=0xe8, y=0x128, paramA=0x1, paramC=0x91ffff
	object_raw subtype=0x98, x=0x58, y=0xa8, unknown=0x3, paramB=0x30302
	object_raw subtype=0x98, x=0x58, y=0xa8, unknown=0x3, paramB=0x10302
	object_raw subtype=0x98, x=0xb8, y=0xa8, unknown=0x3, paramB=0x30302
	object_raw subtype=0x98, x=0xb8, y=0xa8, unknown=0x3, paramB=0x10302
	entity_list_end

Enemies_DarkHyruleCastle_2FBottomLeftCorner:: @ 080ECDF4
	entity_list_end

TileEntities_DarkHyruleCastle_2FBottomLeftCorner:: @ 080ECE04
	tile_entity type=0x1, paramA=0x19
	tile_entity_list_end

Room_DarkHyruleCastle_2FBottomLeftCorner:: @ 080ECE14
	.4byte Entities_DarkHyruleCastle_2FBottomLeftCorner_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBottomLeftCorner
	.4byte TileEntities_DarkHyruleCastle_2FBottomLeftCorner
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBottomLeftCorner
	.4byte sub_StateChange_Dojos_ToGreatblade5

Entities_DarkHyruleCastle_2FBottomLeftTower_0:: @ 080ECE34
	entity_list_end

Enemies_DarkHyruleCastle_2FBottomLeftTower:: @ 080ECE44
	entity_list_end

TileEntities_DarkHyruleCastle_2FBottomLeftTower:: @ 080ECE54
	tile_entity type=0x1, paramA=0x1a
	tile_entity_list_end

Room_DarkHyruleCastle_2FBottomLeftTower:: @ 080ECE64
	.4byte Entities_DarkHyruleCastle_2FBottomLeftTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBottomLeftTower
	.4byte TileEntities_DarkHyruleCastle_2FBottomLeftTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBottomLeftTower
	.4byte sub_StateChange_Dojos_ToGreatblade6

Entities_DarkHyruleCastle_2FBottomLeftGhini_0:: @ 080ECE84
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x5b0000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x5b008d
	object_raw subtype=0x8, x=0x88, y=0xa8, paramA=0x2, paramC=0x8dffff
	entity_list_end

Enemies_DarkHyruleCastle_2FBottomLeftGhini:: @ 080ECEC4
	entity_list_end

TileEntities_DarkHyruleCastle_2FBottomLeftGhini:: @ 080ECED4
	tile_entity type=0x1, paramA=0x1b
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_2FBottomLeftGhini:: @ 080ECEE4
	enemy_raw subtype=0x50, paramB=0xa160900, paramC=0x300030
	entity_list_end

gUnk_additional_9_DarkHyruleCastle_2FBottomLeftGhini:: @ 080ECF04
	.incbin "data_080D5360/gUnk_additional_9_DarkHyruleCastle_2FBottomLeftGhini.bin"

Room_DarkHyruleCastle_2FBottomLeftGhini:: @ 080ECF14
	.4byte Entities_DarkHyruleCastle_2FBottomLeftGhini_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBottomLeftGhini
	.4byte TileEntities_DarkHyruleCastle_2FBottomLeftGhini
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBottomLeftGhini
	.4byte sub_StateChange_Dojos_ToGreatblade7
	.4byte gUnk_additional_8_DarkHyruleCastle_2FBottomLeftGhini
	.4byte gUnk_additional_9_DarkHyruleCastle_2FBottomLeftGhini

Entities_DarkHyruleCastle_3FTopRightTower7_0:: @ 080ECF3C
	entity_list_end

Enemies_DarkHyruleCastle_3FTopRightTower7:: @ 080ECF4C
	entity_list_end

TileEntities_DarkHyruleCastle_3FTopRightTower7:: @ 080ECF5C
	tile_entity type=0x1, paramA=0x1c
	tile_entity_list_end

Room_DarkHyruleCastle_3FTopRightTower7:: @ 080ECF6C
	.4byte Entities_DarkHyruleCastle_3FTopRightTower7_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_3FTopRightTower7
	.4byte TileEntities_DarkHyruleCastle_3FTopRightTower7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_3FTopRightTower7
	.4byte sub_StateChange_Dojos_ToGreatblade8

Entities_DarkHyruleCastle_B1Entrance_0:: @ 080ECF8C
	ezlo_hint x=0x0, y=0x6, rx=0x11, ry=0x8, msg=0xb1b, flag=0x5c
	entity_list_end

Enemies_DarkHyruleCastle_B1Entrance:: @ 080ECFAC
	entity_list_end

TileEntities_DarkHyruleCastle_B1Entrance:: @ 080ECFBC
	tile_entity type=0x1, paramA=0x1d
	tile_entity_list_end

gUnk_080ECFCC:: @ 080ECFCC
	object_raw subtype=0x6a, x=0x108, y=0x30, collision=1, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0x108, y=0x50, collision=1, paramA=0x5, paramB=0x302
	object_raw subtype=0x6a, x=0x108, y=0x70, collision=1, paramA=0x5, paramB=0x102
	entity_list_end

Room_DarkHyruleCastle_B1Entrance:: @ 080ED00C
	.4byte Entities_DarkHyruleCastle_B1Entrance_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_B1Entrance
	.4byte TileEntities_DarkHyruleCastle_B1Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1Entrance
	.4byte sub_StateChange_DarkHyruleCastle_B1Entrance

Entities_DarkHyruleCastle_2FBottomRightTower_0:: @ 080ED02C
	object_raw subtype=0x8, x=0x68, y=0x108, paramC=0x5dffff
	object_raw subtype=0x3, x=0xb8, y=0x148, paramC=0x5d0001
	object_raw subtype=0x5, x=0x58, y=0x168
	object_raw subtype=0x5, x=0x68, y=0x168, paramA=0x5e
	object_raw subtype=0x5, x=0xa8, y=0x168
	object_raw subtype=0x5, x=0xb8, y=0x168
	manager subtype=0x1a, unknown=0x8, paramA=0x35
	entity_list_end

Enemies_DarkHyruleCastle_2FBottomRightTower:: @ 080ED0AC
	enemy_raw subtype=0x28, x=0x68, y=0x128, paramB=0x60e0000, paramC=0x1100050
	enemy_raw subtype=0x28, x=0xa8, y=0x128, paramB=0x60e0000, paramC=0x1100050
	entity_list_end

TileEntities_DarkHyruleCastle_2FBottomRightTower:: @ 080ED0DC
	tile_entity type=0x1, paramA=0x1e
	tile_entity_list_end@ unaccounted bytes
	.byte 255
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0


Room_DarkHyruleCastle_2FBottomRightTower:: @ 080ED0FC
	.4byte Entities_DarkHyruleCastle_2FBottomRightTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_2FBottomRightTower
	.4byte TileEntities_DarkHyruleCastle_2FBottomRightTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_2FBottomRightTower
	.4byte sub_StateChange_Dojos_ToGreatblade9

Entities_DarkHyruleCastle_1FTopLeftTower_0:: @ 080ED11C
	entity_list_end

Enemies_DarkHyruleCastle_1FTopLeftTower:: @ 080ED12C
	enemy_raw subtype=0x3b, x=0x58, y=0x68
	enemy_raw subtype=0x3b, x=0xb8, y=0x68
	entity_list_end

TileEntities_DarkHyruleCastle_1FTopLeftTower:: @ 080ED15C
	tile_entity type=0x9, paramB=0x8000
	tile_entity type=0x1, paramA=0x1f
	tile_entity_list_end

Room_DarkHyruleCastle_1FTopLeftTower:: @ 080ED174
	.4byte Entities_DarkHyruleCastle_1FTopLeftTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FTopLeftTower
	.4byte TileEntities_DarkHyruleCastle_1FTopLeftTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FTopLeftTower
	.4byte sub_StateChange_Dojos_ToScarblade0

Entities_DarkHyruleCastle_1FThroneRoom_0:: @ 080ED194
	manager subtype=0x1e, x=0x20, y=0x70, paramB=0x2000d0, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x5e8000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x5e008e
	object_raw subtype=0x8, x=0xe8, y=0x88, paramA=0x1, paramC=0x8effff
	entity_list_end

gUnk_080ED1E4:: @ 080ED1E4
	npc_raw subtype=0x4e, script=script_Npc4EDHCThrone
	object_raw subtype=0x6a, x=0xc0, y=0x40, collision=1, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0xa0, y=0x80, collision=1, paramA=0x5, paramB=0x202
	object_raw subtype=0x6a, x=0x50, y=0x60, collision=1, paramA=0x5, paramB=0x302
	entity_list_end

Entities_DarkHyruleCastle_1FThroneRoom_1:: @ 080ED234
	object_raw subtype=0x5f, x=0x88, y=0x48, paramA=0x1, paramC=0x5e0000
	entity_list_end

Enemies_DarkHyruleCastle_1FThroneRoom:: @ 080ED254
	entity_list_end

TileEntities_DarkHyruleCastle_1FThroneRoom:: @ 080ED264
	tile_entity type=0xd, paramB=0x2d00
	tile_entity type=0x1, paramA=0x20
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_1FThroneRoom:: @ 080ED27C
	enemy_raw subtype=0x5, x=0x88, y=0x68, unknown=0x2f, paramA=0x2
	object_raw subtype=0x39, x=0x88, y=0xa8, paramA=0x6, paramC=0x8effff
	entity_list_end

Room_DarkHyruleCastle_1FThroneRoom:: @ 080ED2AC
	.4byte Entities_DarkHyruleCastle_1FThroneRoom_0
	.4byte Entities_DarkHyruleCastle_1FThroneRoom_1
	.4byte Enemies_DarkHyruleCastle_1FThroneRoom
	.4byte TileEntities_DarkHyruleCastle_1FThroneRoom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FThroneRoom
	.4byte sub_StateChange_DarkHyruleCastle_1FThroneRoom
	.4byte gUnk_additional_8_DarkHyruleCastle_1FThroneRoom

Entities_DarkHyruleCastle_1FCompass_0:: @ 080ED2D0
	object_raw subtype=0xc, x=0x50, y=0x28, collision=1, paramA=0x4, paramB=0x5f
	entity_list_end

Enemies_DarkHyruleCastle_1FCompass:: @ 080ED2F0
	entity_list_end

TileEntities_DarkHyruleCastle_1FCompass:: @ 080ED300
	tile_entity type=0x3, paramA=0x5f, paramB=0x51, paramC=0x50, paramD=0x28
	tile_entity type=0x1, paramA=0x21
	tile_entity_list_end

Room_DarkHyruleCastle_1FCompass:: @ 080ED318
	.4byte Entities_DarkHyruleCastle_1FCompass_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FCompass
	.4byte TileEntities_DarkHyruleCastle_1FCompass
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FCompass
	.4byte sub_StateChange_Dojos_ToScarblade1

Entities_DarkHyruleCastle_1FTopRightTower_0:: @ 080ED338
	entity_list_end

Enemies_DarkHyruleCastle_1FTopRightTower:: @ 080ED348
	enemy_raw subtype=0xd, x=0x68, y=0x78
	enemy_raw subtype=0xd, x=0xa8, y=0x78
	entity_list_end

TileEntities_DarkHyruleCastle_1FTopRightTower:: @ 080ED378
	tile_entity type=0x1, paramA=0x22
	tile_entity_list_end

Room_DarkHyruleCastle_1FTopRightTower:: @ 080ED388
	.4byte Entities_DarkHyruleCastle_1FTopRightTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FTopRightTower
	.4byte TileEntities_DarkHyruleCastle_1FTopRightTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FTopRightTower
	.4byte sub_StateChange_Dojos_ToScarblade2

Entities_DarkHyruleCastle_1FBeforeThrone_0:: @ 080ED3A8
	entity_list_end

Enemies_DarkHyruleCastle_1FBeforeThrone:: @ 080ED3B8
	entity_list_end

TileEntities_DarkHyruleCastle_1FBeforeThrone:: @ 080ED3C8
	tile_entity type=0x1, paramA=0x23
	tile_entity_list_end

Room_DarkHyruleCastle_1FBeforeThrone:: @ 080ED3D8
	.4byte Entities_DarkHyruleCastle_1FBeforeThrone_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FBeforeThrone
	.4byte TileEntities_DarkHyruleCastle_1FBeforeThrone
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FBeforeThrone
	.4byte sub_StateChange_Dojos_ToScarblade3

Entities_DarkHyruleCastle_1FLoopTopLeft_0:: @ 080ED3F8
	enemy_raw subtype=0x3a, x=0x38, y=0x38
	enemy_raw subtype=0x3a, x=0x38, y=0x48
	enemy_raw subtype=0x3a, x=0x38, y=0x58
	enemy_raw subtype=0x3a, x=0x38, y=0x68
	enemy_raw subtype=0x3a, x=0x38, y=0x78
	enemy_raw subtype=0x3a, x=0x38, y=0x88
	entity_list_end

Entities_DarkHyruleCastle_1FLoopTopLeft_1:: @ 080ED468
	object_raw subtype=0x4f, x=0x100, y=0x48, paramA=0x21, paramB=0x1
	entity_list_end

Enemies_DarkHyruleCastle_1FLoopTopLeft:: @ 080ED488
	enemy_raw subtype=0x23, x=0x58, y=0x38, paramB=0xc160000, paramC=0x300030
	enemy_raw subtype=0x23, x=0xc8, y=0x88, paramB=0xc160000, paramC=0x400080
	entity_list_end

TileEntities_DarkHyruleCastle_1FLoopTopLeft:: @ 080ED4B8
	tile_entity type=0x1, paramA=0x24
	tile_entity_list_end

Room_DarkHyruleCastle_1FLoopTopLeft:: @ 080ED4C8
	.4byte Entities_DarkHyruleCastle_1FLoopTopLeft_0
	.4byte Entities_DarkHyruleCastle_1FLoopTopLeft_1
	.4byte Enemies_DarkHyruleCastle_1FLoopTopLeft
	.4byte TileEntities_DarkHyruleCastle_1FLoopTopLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FLoopTopLeft
	.4byte sub_StateChange_Dojos_ToScarblade4

Entities_DarkHyruleCastle_1FLoopTop_0:: @ 080ED4E8
	manager subtype=0x30, x=0x78, y=0x38, paramB=0x6051702, paramC=0x80018000
	manager subtype=0x11, paramC=0x80000060
	object_raw subtype=0x3, x=0x48, y=0x78, paramA=0x1, paramC=0x80010002
	object_raw subtype=0x8, x=0xe8, y=0x58, paramA=0x1, paramC=0x60ffff
	entity_list_end

Entities_DarkHyruleCastle_1FLoopTop_1:: @ 080ED538
	object_raw subtype=0x4f, x=0x10, y=0x48, paramA=0x21, paramB=0x3
	object_raw subtype=0x4f, x=0x100, y=0x58, paramA=0x21, paramB=0x1
	entity_list_end

Enemies_DarkHyruleCastle_1FLoopTop:: @ 080ED568
	entity_list_end

TileEntities_DarkHyruleCastle_1FLoopTop:: @ 080ED578
	tile_entity type=0x1, paramA=0x25
	tile_entity_list_end

Room_DarkHyruleCastle_1FLoopTop:: @ 080ED588
	.4byte Entities_DarkHyruleCastle_1FLoopTop_0
	.4byte Entities_DarkHyruleCastle_1FLoopTop_1
	.4byte Enemies_DarkHyruleCastle_1FLoopTop
	.4byte TileEntities_DarkHyruleCastle_1FLoopTop
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FLoopTop
	.4byte sub_StateChange_Dojos_ToScarblade5

Entities_DarkHyruleCastle_1FLoopTopRight_0:: @ 080ED5A8
	entity_list_end

Entities_DarkHyruleCastle_1FLoopTopRight_1:: @ 080ED5B8
	object_raw subtype=0x4f, x=0x10, y=0x58, paramA=0x21, paramB=0x3
	entity_list_end

Enemies_DarkHyruleCastle_1FLoopTopRight:: @ 080ED5D8
	enemy_raw subtype=0x15, x=0x88, y=0x78, paramA=0x1
	enemy_raw subtype=0x15, x=0xa8, y=0x48, paramA=0x1
	enemy_raw subtype=0x8, x=0x58, y=0x18, paramB=0x14140000, paramC=0x100030
	enemy_raw subtype=0x8, x=0x78, y=0x18, paramB=0x14140000, paramC=0x100030
	enemy_raw subtype=0x8, x=0x98, y=0x18, paramB=0x14140000, paramC=0x100030
	entity_list_end

TileEntities_DarkHyruleCastle_1FLoopTopRight:: @ 080ED638
	tile_entity type=0x1, paramA=0x26
	tile_entity_list_end

Room_DarkHyruleCastle_1FLoopTopRight:: @ 080ED648
	.4byte Entities_DarkHyruleCastle_1FLoopTopRight_0
	.4byte Entities_DarkHyruleCastle_1FLoopTopRight_1
	.4byte Enemies_DarkHyruleCastle_1FLoopTopRight
	.4byte TileEntities_DarkHyruleCastle_1FLoopTopRight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FLoopTopRight
	.4byte sub_StateChange_Dojos_ToScarblade6

Entities_DarkHyruleCastle_1FLoopLeft_0:: @ 080ED668
	manager subtype=0x2b, paramA=0x8, paramC=0x610000
	manager subtype=0x35, x=0x90, y=0x58, paramB=0x3c1e00, paramC=0x610062
	object_raw subtype=0x33, x=0x78, y=0x58, paramA=0x5, paramC=0x620000
	object_raw subtype=0x33, x=0x88, y=0x58, paramA=0x5, paramC=0x620000
	object_raw subtype=0x33, x=0x98, y=0x58, paramA=0x5, paramC=0x620000
	object_raw subtype=0x33, x=0xa8, y=0x58, paramA=0x5, paramC=0x620000
	ezlo_hint x=0x10, y=0xc, rx=0x1, ry=0x5, msg=0xb4a, flag=0x63
	entity_list_end

Enemies_DarkHyruleCastle_1FLoopLeft:: @ 080ED6E8
	entity_list_end

TileEntities_DarkHyruleCastle_1FLoopLeft:: @ 080ED6F8
	tile_entity type=0x1, paramA=0x27
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_1FLoopLeft:: @ 080ED708
	.incbin "data_080D5360/gUnk_additional_8_DarkHyruleCastle_1FLoopLeft.bin"

Room_DarkHyruleCastle_1FLoopLeft:: @ 080ED720
	.4byte Entities_DarkHyruleCastle_1FLoopLeft_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FLoopLeft
	.4byte TileEntities_DarkHyruleCastle_1FLoopLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FLoopLeft
	.4byte sub_StateChange_Dojos_ToScarblade7
	.4byte gUnk_additional_8_DarkHyruleCastle_1FLoopLeft

Entities_DarkHyruleCastle_1FLoopRight_0:: @ 080ED744
	object_raw subtype=0x3, x=0x38, y=0xc8, paramA=0x1, paramC=0x80000002
	object_raw subtype=0x3, x=0x48, y=0xc8, paramA=0x1, paramC=0x80010002
	object_raw subtype=0x3, x=0x98, y=0xc8, paramA=0x1, paramC=0x80020002
	object_raw subtype=0x3, x=0xa8, y=0xc8, paramA=0x1, paramC=0x80030002
	manager subtype=0x11, paramC=0x8c000064
	object_raw subtype=0xc, x=0x78, y=0xd8, paramA=0x1, paramC=0x640000
	entity_list_end

Enemies_DarkHyruleCastle_1FLoopRight:: @ 080ED7B4
	enemy_raw subtype=0x2f, x=0x68, y=0x68, paramA=0x8
	entity_list_end

TileEntities_DarkHyruleCastle_1FLoopRight:: @ 080ED7D4
	tile_entity type=0x2, paramA=0x65, paramB=0x53, paramC=0x347, paramD=0x1
	tile_entity type=0x1, paramA=0x28
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_1FLoopRight:: @ 080ED7EC
	.incbin "data_080D5360/gUnk_additional_8_DarkHyruleCastle_1FLoopRight.bin"

Room_DarkHyruleCastle_1FLoopRight:: @ 080ED8CC
	.4byte Entities_DarkHyruleCastle_1FLoopRight_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FLoopRight
	.4byte TileEntities_DarkHyruleCastle_1FLoopRight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FLoopRight
	.4byte sub_StateChange_Dojos_ToScarblade8
	.4byte gUnk_additional_8_DarkHyruleCastle_1FLoopRight

Entities_DarkHyruleCastle_1FLoopBottomLeft_0:: @ 080ED8F0
	entity_list_end

Enemies_DarkHyruleCastle_1FLoopBottomLeft:: @ 080ED900
	enemy_raw subtype=0x27, x=0x68, y=0x48, paramB=0xa180000, paramC=0x200050
	enemy_raw subtype=0x27, x=0xa8, y=0x68, paramB=0xa180000, paramC=0x200050
	entity_list_end

TileEntities_DarkHyruleCastle_1FLoopBottomLeft:: @ 080ED930
	tile_entity type=0x1, paramA=0x29
	tile_entity_list_end

Room_DarkHyruleCastle_1FLoopBottomLeft:: @ 080ED940
	.4byte Entities_DarkHyruleCastle_1FLoopBottomLeft_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FLoopBottomLeft
	.4byte TileEntities_DarkHyruleCastle_1FLoopBottomLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FLoopBottomLeft
	.4byte sub_StateChange_Dojos_ToScarblade9

Entities_DarkHyruleCastle_1FLoopBottom_0:: @ 080ED960
	entity_list_end

Enemies_DarkHyruleCastle_1FLoopBottom:: @ 080ED970
	enemy_raw subtype=0x15, x=0x38, y=0x48, paramA=0x1
	enemy_raw subtype=0x15, x=0xc8, y=0x48, paramA=0x1
	enemy_raw subtype=0x8, x=0x58, y=0x8, paramB=0xe1a0000
	enemy_raw subtype=0x8, x=0x78, y=0x8, paramB=0xe1a0000
	enemy_raw subtype=0x8, x=0x98, y=0x8, paramB=0xe1a0000
	enemy_raw subtype=0x8, x=0xb8, y=0x8, paramB=0xe1a0000
	entity_list_end

TileEntities_DarkHyruleCastle_1FLoopBottom:: @ 080ED9E0
	tile_entity type=0x1, paramA=0x2a
	tile_entity_list_end

Room_DarkHyruleCastle_1FLoopBottom:: @ 080ED9F0
	.4byte Entities_DarkHyruleCastle_1FLoopBottom_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FLoopBottom
	.4byte TileEntities_DarkHyruleCastle_1FLoopBottom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FLoopBottom
	.4byte sub_StateChange_GoronCave_Stairs0

Entities_DarkHyruleCastle_1FLoopBottomRight_0:: @ 080EDA10
	entity_list_end

Enemies_DarkHyruleCastle_1FLoopBottomRight:: @ 080EDA20
	enemy_raw subtype=0x46, x=0x78, y=0x48, paramA=0x1
	enemy_raw subtype=0x8, x=0xc8, y=0x38, paramB=0xa180000, paramC=0x200010
	enemy_raw subtype=0x8, x=0xc8, y=0x58, paramB=0xa180000, paramC=0x200010
	entity_list_end

TileEntities_DarkHyruleCastle_1FLoopBottomRight:: @ 080EDA60
	tile_entity type=0x1, paramA=0x2b
	tile_entity_list_end

Room_DarkHyruleCastle_1FLoopBottomRight:: @ 080EDA70
	.4byte Entities_DarkHyruleCastle_1FLoopBottomRight_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FLoopBottomRight
	.4byte TileEntities_DarkHyruleCastle_1FLoopBottomRight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FLoopBottomRight
	.4byte sub_StateChange_GoronCave_Stairs1

Entities_DarkHyruleCastle_1FBottomLeftTower_0:: @ 080EDA90
	object_raw subtype=0x5, x=0x78, y=0x68, paramA=0x5d
	object_raw subtype=0x5, x=0x78, y=0x78, paramA=0x5d
	object_raw subtype=0x5, x=0x98, y=0x68, paramA=0x5d
	object_raw subtype=0x5, x=0x88, y=0x68, paramA=0x5e
	object_raw subtype=0x5, x=0x88, y=0x78, paramA=0x5e
	object_raw subtype=0x5, x=0x98, y=0x78, paramA=0x5e
	entity_list_end

Enemies_DarkHyruleCastle_1FBottomLeftTower:: @ 080EDB00
	entity_list_end

TileEntities_DarkHyruleCastle_1FBottomLeftTower:: @ 080EDB10
	tile_entity type=0x1, paramA=0x2c
	tile_entity_list_end

Room_DarkHyruleCastle_1FBottomLeftTower:: @ 080EDB20
	.4byte Entities_DarkHyruleCastle_1FBottomLeftTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FBottomLeftTower
	.4byte TileEntities_DarkHyruleCastle_1FBottomLeftTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FBottomLeftTower
	.4byte sub_StateChange_GoronCave_Stairs2

Entities_DarkHyruleCastle_1FBottomRightTower_0:: @ 080EDB40
	entity_list_end

Enemies_DarkHyruleCastle_1FBottomRightTower:: @ 080EDB50
	enemy_raw subtype=0x3b, x=0x68, y=0x88
	enemy_raw subtype=0x3b, x=0x88, y=0x98
	enemy_raw subtype=0x3b, x=0xa8, y=0x88
	entity_list_end

TileEntities_DarkHyruleCastle_1FBottomRightTower:: @ 080EDB90
	tile_entity type=0x9, paramB=0x8000
	tile_entity type=0x1, paramA=0x2d
	tile_entity_list_end

Room_DarkHyruleCastle_1FBottomRightTower:: @ 080EDBA8
	.4byte Entities_DarkHyruleCastle_1FBottomRightTower_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_1FBottomRightTower
	.4byte TileEntities_DarkHyruleCastle_1FBottomRightTower
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_1FBottomRightTower
	.4byte sub_StateChange_GoronCave_Stairs3

Entities_DarkHyruleCastle_B1BelowThrone_0:: @ 080EDBC8
	entity_list_end

Enemies_DarkHyruleCastle_B1BelowThrone:: @ 080EDBD8
	enemy_raw subtype=0x3b, x=0xb8, y=0x98
	enemy_raw subtype=0x8, x=0x98, y=0x68, paramB=0x14140000, paramC=0x100050
	enemy_raw subtype=0x8, x=0x88, y=0x78, paramB=0x14140000, paramC=0x100050
	enemy_raw subtype=0x8, x=0xa8, y=0x78, paramB=0x14140000, paramC=0x100050
	entity_list_end

TileEntities_DarkHyruleCastle_B1BelowThrone:: @ 080EDC28
	tile_entity type=0x9, paramB=0x8000
	tile_entity type=0x1, paramA=0x2e
	tile_entity_list_end

Room_DarkHyruleCastle_B1BelowThrone:: @ 080EDC40
	.4byte Entities_DarkHyruleCastle_B1BelowThrone_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_B1BelowThrone
	.4byte TileEntities_DarkHyruleCastle_B1BelowThrone
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1BelowThrone
	.4byte sub_StateChange_GoronCave_Stairs4

Entities_DarkHyruleCastle_B1BelowCompass_0:: @ 080EDC60
	entity_list_end

Enemies_DarkHyruleCastle_B1BelowCompass:: @ 080EDC70
	enemy_raw subtype=0x3b, x=0x68, y=0x88
	enemy_raw subtype=0x3b, x=0x98, y=0x98
	entity_list_end

TileEntities_DarkHyruleCastle_B1BelowCompass:: @ 080EDCA0
	tile_entity type=0x9, paramB=0x8000
	tile_entity type=0x1, paramA=0x2f
	tile_entity_list_end

Room_DarkHyruleCastle_B1BelowCompass:: @ 080EDCB8
	.4byte Entities_DarkHyruleCastle_B1BelowCompass_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_B1BelowCompass
	.4byte TileEntities_DarkHyruleCastle_B1BelowCompass
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1BelowCompass
	.4byte sub_StateChange_GoronCave_Stairs5

Entities_DarkHyruleCastle_B1BeforeThrone_0:: @ 080EDCD8
	entity_list_end

Entities_DarkHyruleCastle_B1BeforeThrone_1:: @ 080EDCE8
	object_raw subtype=0x4f, x=0x88, y=0xc0, paramA=0x21, paramB=0x2
	entity_list_end

Enemies_DarkHyruleCastle_B1BeforeThrone:: @ 080EDD08
	enemy_raw subtype=0x1f, x=0x58, y=0x38, paramA=0x2, paramC=0x280028
	enemy_raw subtype=0x1f, x=0xb8, y=0x38, paramA=0x2, paramC=0x280028
	enemy_raw subtype=0x1f, x=0x58, y=0x98, paramA=0x2, paramC=0x280028
	enemy_raw subtype=0x1f, x=0xb8, y=0x98, paramA=0x2, paramC=0x280028
	entity_list_end

TileEntities_DarkHyruleCastle_B1BeforeThrone:: @ 080EDD58
	tile_entity type=0x1, paramA=0x30
	tile_entity_list_end

Room_DarkHyruleCastle_B1BeforeThrone:: @ 080EDD68
	.4byte Entities_DarkHyruleCastle_B1BeforeThrone_0
	.4byte Entities_DarkHyruleCastle_B1BeforeThrone_1
	.4byte Enemies_DarkHyruleCastle_B1BeforeThrone
	.4byte TileEntities_DarkHyruleCastle_B1BeforeThrone
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1BeforeThrone
	.4byte sub_StateChange_GoronCave_Stairs6

Entities_DarkHyruleCastle_B1ToPrison_0:: @ 080EDD88
	enemy_raw subtype=0x43, x=0x68, y=0x68, paramA=0x2
	enemy_raw subtype=0x43, x=0x88, y=0x68, paramA=0x3
	enemy_raw subtype=0x43, x=0xa8, y=0x68, paramA=0x2
	entity_list_end

Entities_DarkHyruleCastle_B1ToPrison_1:: @ 080EDDC8
	object_raw subtype=0x4f, x=0x58, y=0x10, paramA=0x21
	object_raw subtype=0x4f, x=0xb8, y=0x10, paramA=0x21
	object_raw subtype=0x4f, x=0x108, y=0x88, paramA=0x21, paramB=0x5
	entity_list_end

Enemies_DarkHyruleCastle_B1ToPrison:: @ 080EDE08
	enemy_raw subtype=0x9, x=0xb8, y=0x30, paramA=0x4
	enemy_raw subtype=0x34, x=0x88, y=0x88
	enemy_raw subtype=0x34, x=0x98, y=0x88, paramA=0x1
	entity_list_end

TileEntities_DarkHyruleCastle_B1ToPrison:: @ 080EDE48
	tile_entity type=0x4, paramA=0x66, paramB=0x2, paramC=0xe8, paramD=0x88
	tile_entity type=0x1, paramA=0x31
	tile_entity_list_end

Room_DarkHyruleCastle_B1ToPrison:: @ 080EDE60
	.4byte Entities_DarkHyruleCastle_B1ToPrison_0
	.4byte Entities_DarkHyruleCastle_B1ToPrison_1
	.4byte Enemies_DarkHyruleCastle_B1ToPrison
	.4byte TileEntities_DarkHyruleCastle_B1ToPrison
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1ToPrison
	.4byte sub_StateChange_GoronCave_Stairs7

Entities_DarkHyruleCastle_B1BombWall_0:: @ 080EDE80
	object_raw subtype=0x74, x=0x48, y=0x48, collision=2, paramC=0xffff0000
	manager subtype=0x3, x=0x48, y=0x48, unknown=0x0, paramA=0x3, paramB=0x202
	entity_list_end

Entities_DarkHyruleCastle_B1BombWall_1:: @ 080EDEB0
	object_raw subtype=0x4f, x=0x88, y=0x10, paramA=0x21
	object_raw subtype=0x4f, x=0x8, y=0x88, paramA=0x21, paramB=0x5
	object_raw subtype=0x4f, x=0x108, y=0x88, paramA=0x21, paramB=0x5
	entity_list_end

Enemies_DarkHyruleCastle_B1BombWall:: @ 080EDEF0
	projectile_raw subtype=0x1d, x=0x78, y=0x88, unknown=0x3
	projectile_raw subtype=0x1d, x=0xd8, y=0x48, unknown=0x3
	entity_list_end

TileEntities_DarkHyruleCastle_B1BombWall:: @ 080EDF20
	tile_entity type=0x4, paramA=0x66, paramB=0x2, paramC=0x28, paramD=0x88
	tile_entity type=0x4, paramA=0x67, paramB=0x2, paramC=0xe8, paramD=0x88
	tile_entity type=0x1, paramA=0x32
	tile_entity_list_end

Room_DarkHyruleCastle_B1BombWall:: @ 080EDF40
	.4byte Entities_DarkHyruleCastle_B1BombWall_0
	.4byte Entities_DarkHyruleCastle_B1BombWall_1
	.4byte Enemies_DarkHyruleCastle_B1BombWall
	.4byte TileEntities_DarkHyruleCastle_B1BombWall
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1BombWall
	.4byte sub_StateChange_GoronCave_Stairs8

Entities_DarkHyruleCastle_B1Keatons_0:: @ 080EDF60
	object_raw subtype=0x5, x=0xb8, y=0x38
	object_raw subtype=0x5, x=0xc8, y=0x38
	object_raw subtype=0x5, x=0x38, y=0x38
	object_raw subtype=0x5, x=0x48, y=0x38
	entity_list_end

Entities_DarkHyruleCastle_B1Keatons_1:: @ 080EDFB0
	object_raw subtype=0x4f, x=0x8, y=0x88, paramA=0x21, paramB=0x5
	entity_list_end

Enemies_DarkHyruleCastle_B1Keatons:: @ 080EDFD0
	enemy_raw subtype=0x30, x=0x48, y=0x48, paramA=0x1
	enemy_raw subtype=0x30, x=0x68, y=0x48, paramA=0x1
	enemy_raw subtype=0x30, x=0x88, y=0x48, paramA=0x1
	enemy_raw subtype=0x30, x=0xa8, y=0x48, paramA=0x1
	enemy_raw subtype=0x30, x=0x48, y=0x68, paramA=0x1
	enemy_raw subtype=0x30, x=0x68, y=0x68, paramA=0x1
	enemy_raw subtype=0x30, x=0x88, y=0x68, paramA=0x1
	enemy_raw subtype=0x30, x=0xa8, y=0x68, paramA=0x1
	entity_list_end

TileEntities_DarkHyruleCastle_B1Keatons:: @ 080EE060
	tile_entity type=0x4, paramA=0x67, paramB=0x2, paramC=0x28, paramD=0x88
	tile_entity type=0x1, paramA=0x33
	tile_entity_list_end

Room_DarkHyruleCastle_B1Keatons:: @ 080EE078
	.4byte Entities_DarkHyruleCastle_B1Keatons_0
	.4byte Entities_DarkHyruleCastle_B1Keatons_1
	.4byte Enemies_DarkHyruleCastle_B1Keatons
	.4byte TileEntities_DarkHyruleCastle_B1Keatons
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1Keatons
	.4byte sub_StateChange_GoronCave_Stairs9

Entities_DarkHyruleCastle_B1ToPrisonFirebar_0:: @ 080EE098
	object_raw subtype=0x98, x=0xa8, y=0x78, unknown=0x3, paramB=0x602
	object_raw subtype=0x98, x=0xa8, y=0x78, unknown=0x3, paramB=0x20602
	object_raw subtype=0x98, x=0xa8, y=0x78, unknown=0x3, paramB=0x10602
	object_raw subtype=0x98, x=0xa8, y=0x78, unknown=0x3, paramB=0x30602
	object_raw subtype=0x98, x=0x88, y=0xf8, unknown=0x3, paramB=0x302
	object_raw subtype=0x98, x=0x88, y=0xf8, unknown=0x3, paramB=0x20302
	object_raw subtype=0x98, x=0xc8, y=0xf8, unknown=0x3, paramB=0x10302
	object_raw subtype=0x98, x=0xc8, y=0xf8, unknown=0x3, paramB=0x30302
	manager subtype=0x1a, unknown=0x8, paramA=0x36
	entity_list_end

Enemies_DarkHyruleCastle_B1ToPrisonFirebar:: @ 080EE138
	entity_list_end

TileEntities_DarkHyruleCastle_B1ToPrisonFirebar:: @ 080EE148
	tile_entity type=0x1, paramA=0x34
	tile_entity_list_end

Room_DarkHyruleCastle_B1ToPrisonFirebar:: @ 080EE158
	.4byte Entities_DarkHyruleCastle_B1ToPrisonFirebar_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_B1ToPrisonFirebar
	.4byte TileEntities_DarkHyruleCastle_B1ToPrisonFirebar
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1ToPrisonFirebar
	.4byte sub_StateChange_Ruins_Beanstalk0

Entities_DarkHyruleCastle_B1Cannons_0:: @ 080EE178
	manager subtype=0x2b, paramA=0x8, paramC=0x680000
	manager subtype=0x35, x=0x88, y=0x30, paramB=0x3c1e00, paramC=0x680069
	object_raw subtype=0x33, x=0x68, y=0x38, paramA=0x5, paramC=0x690000
	object_raw subtype=0x33, x=0x78, y=0x38, paramA=0x5, paramC=0x690000
	object_raw subtype=0x33, x=0x88, y=0x38, paramA=0x5, paramC=0x690000
	object_raw subtype=0x33, x=0x98, y=0x38, paramA=0x5, paramC=0x690000
	enemy_raw subtype=0x43, x=0x68, y=0xd8, paramA=0x2
	enemy_raw subtype=0x43, x=0x98, y=0xd8, paramA=0x2
	enemy_raw subtype=0x43, x=0x68, y=0x108, paramA=0x2
	enemy_raw subtype=0x43, x=0x98, y=0x108, paramA=0x2
	entity_list_end

Enemies_DarkHyruleCastle_B1Cannons:: @ 080EE228
	entity_list_end

TileEntities_DarkHyruleCastle_B1Cannons:: @ 080EE238
	tile_entity type=0x1, paramA=0x35
	tile_entity_list_end

gUnk_additional_8_DarkHyruleCastle_B1Cannons:: @ 080EE248
	.incbin "data_080D5360/gUnk_additional_8_DarkHyruleCastle_B1Cannons.bin"

Room_DarkHyruleCastle_B1Cannons:: @ 080EE260
	.4byte Entities_DarkHyruleCastle_B1Cannons_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_B1Cannons
	.4byte TileEntities_DarkHyruleCastle_B1Cannons
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1Cannons
	.4byte sub_StateChange_Ruins_Beanstalk1
	.4byte gUnk_additional_8_DarkHyruleCastle_B1Cannons

Entities_DarkHyruleCastle_B1Left_0:: @ 080EE284
	object_raw subtype=0x8, x=0x58, y=0xa8, paramA=0xa, paramC=0x6affff
	entity_list_end

Entities_DarkHyruleCastle_B1Left_1:: @ 080EE2A4
	object_raw subtype=0x4f, x=0x58, y=0xc0, paramA=0x21, paramB=0x2
	object_raw subtype=0x4f, x=0x10, y=0x48, paramA=0x21, paramB=0x3
	entity_list_end

Enemies_DarkHyruleCastle_B1Left:: @ 080EE2D4
	enemy_raw subtype=0x9, x=0x30, y=0x48, paramA=0x7
	enemy_raw subtype=0x15, x=0x58, y=0x48, paramA=0x1
	entity_list_end

TileEntities_DarkHyruleCastle_B1Left:: @ 080EE304
	tile_entity type=0x1, paramA=0x36
	tile_entity_list_end

gUnk_080EE314:: @ 080EE314
	object_raw subtype=0x6a, x=0x38, y=0x8, collision=2, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0x58, y=0x8, collision=2, paramA=0x5, paramB=0x302
	object_raw subtype=0x6a, x=0x78, y=0x8, collision=2, paramA=0x5, paramB=0x102
	entity_list_end

Room_DarkHyruleCastle_B1Left:: @ 080EE354
	.4byte Entities_DarkHyruleCastle_B1Left_0
	.4byte Entities_DarkHyruleCastle_B1Left_1
	.4byte Enemies_DarkHyruleCastle_B1Left
	.4byte TileEntities_DarkHyruleCastle_B1Left
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1Left
	.4byte sub_StateChange_DarkHyruleCastle_B1Left

Entities_DarkHyruleCastle_B1Right_0:: @ 080EE374
	entity_list_end

Entities_DarkHyruleCastle_B1Right_1:: @ 080EE384
	object_raw subtype=0x4f, x=0xb8, y=0xc0, paramA=0x21, paramB=0x2
	entity_list_end

Enemies_DarkHyruleCastle_B1Right:: @ 080EE3A4
	enemy_raw subtype=0x8, x=0xf8, y=0x28, paramB=0x101e0000, paramC=0x200010
	enemy_raw subtype=0x8, x=0xf8, y=0x48, paramB=0x101e0000, paramC=0x200010
	enemy_raw subtype=0x8, x=0xf8, y=0x68, paramB=0x101e0000, paramC=0x200010
	enemy_raw subtype=0x8, x=0xf8, y=0x88, paramB=0x101e0000, paramC=0x200010
	entity_list_end

TileEntities_DarkHyruleCastle_B1Right:: @ 080EE3F4
	tile_entity type=0x1, paramA=0x37
	tile_entity_list_end

Room_DarkHyruleCastle_B1Right:: @ 080EE404
	.4byte Entities_DarkHyruleCastle_B1Right_0
	.4byte Entities_DarkHyruleCastle_B1Right_1
	.4byte Enemies_DarkHyruleCastle_B1Right
	.4byte TileEntities_DarkHyruleCastle_B1Right
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1Right
	.4byte sub_StateChange_Ruins_Beanstalk2

Entities_DarkHyruleCastle_B1Map_0:: @ 080EE424
	object_raw subtype=0x5, x=0x168, y=0x38, paramA=0x60
	object_raw subtype=0x5, x=0x168, y=0x48, paramA=0x60
	object_raw subtype=0x5, x=0x168, y=0x58, paramA=0x5e
	object_raw subtype=0x5, x=0x1c8, y=0x38, paramA=0x5e
	object_raw subtype=0x5, x=0x1c8, y=0x48, paramA=0x5d
	object_raw subtype=0x5, x=0x1c8, y=0x58, paramA=0x5d
	object_raw subtype=0xc, x=0x198, y=0x98, paramA=0x4, paramB=0x6b
	entity_list_end

Entities_DarkHyruleCastle_B1Map_1:: @ 080EE4A4
	object_raw subtype=0x4f, x=0x58, y=0x10, paramA=0x21
	object_raw subtype=0x4f, x=0x108, y=0xc0, paramA=0x21
	object_raw subtype=0x4f, x=0x228, y=0xc0, paramA=0x21
	object_raw subtype=0x4f, x=0x2d8, y=0x10, paramA=0x21
	entity_list_end

Enemies_DarkHyruleCastle_B1Map:: @ 080EE4F4
	enemy_raw subtype=0x27, x=0x38, y=0x58, paramB=0x8100000, paramC=0x300030
	enemy_raw subtype=0x27, x=0xa8, y=0x58, paramB=0x8100000, paramC=0x300030
	enemy_raw subtype=0x27, x=0x88, y=0x108, paramB=0x8180000, paramC=0xe00070
	enemy_raw subtype=0x27, x=0x128, y=0x108, paramB=0x8180000, paramC=0xe00070
	enemy_raw subtype=0x42, x=0x98, y=0xa8
	enemy_raw subtype=0xd, x=0x188, y=0x108
	enemy_raw subtype=0xd, x=0x1a8, y=0x108
	enemy_raw subtype=0x27, x=0x288, y=0x58, paramB=0x8100000, paramC=0x300280
	enemy_raw subtype=0x27, x=0x2f8, y=0x58, paramB=0x8100000, paramC=0x300280
	enemy_raw subtype=0x27, x=0x208, y=0x108, paramB=0x8180000, paramC=0xe00200
	enemy_raw subtype=0x27, x=0x2b8, y=0x108, paramB=0x8180000, paramC=0xe00200
	enemy_raw subtype=0x42, x=0x298, y=0xa8
	entity_list_end

TileEntities_DarkHyruleCastle_B1Map:: @ 080EE5C4
	tile_entity type=0x3, paramA=0x6b, paramB=0x50, paramC=0x198, paramD=0x98
	tile_entity type=0x1, paramA=0x38
	tile_entity_list_end

gUnk_080EE5DC:: @ 080EE5DC
	object_raw subtype=0x6a, x=0x128, y=0xf0, collision=2, paramA=0x5, paramB=0x102
	object_raw subtype=0x6a, x=0x130, y=0x110, collision=2, paramA=0x5, paramB=0x302
	object_raw subtype=0x6a, x=0x128, y=0x130, collision=2, paramA=0x5, paramB=0x102
	entity_list_end

Room_DarkHyruleCastle_B1Map:: @ 080EE61C
	.4byte Entities_DarkHyruleCastle_B1Map_0
	.4byte Entities_DarkHyruleCastle_B1Map_1
	.4byte Enemies_DarkHyruleCastle_B1Map
	.4byte TileEntities_DarkHyruleCastle_B1Map
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B1Map
	.4byte sub_StateChange_DarkHyruleCastle_B1Map

Entities_DarkHyruleCastle_B2ToPrison_0:: @ 080EE63C
	entity_list_end

Enemies_DarkHyruleCastle_B2ToPrison:: @ 080EE64C
	entity_list_end

TileEntities_DarkHyruleCastle_B2ToPrison:: @ 080EE65C
	tile_entity type=0x1, paramA=0x39
	tile_entity_list_end

Room_DarkHyruleCastle_B2ToPrison:: @ 080EE66C
	.4byte Entities_DarkHyruleCastle_B2ToPrison_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_B2ToPrison
	.4byte TileEntities_DarkHyruleCastle_B2ToPrison
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B2ToPrison
	.4byte sub_StateChange_Ruins_Beanstalk3

Entities_DarkHyruleCastle_B2Prison_0:: @ 080EE68C
	object_raw subtype=0x74, x=0x88, y=0x38, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x88, y=0x38, unknown=0x0, paramA=0x3, paramB=0x103
	object_raw subtype=0x3, x=0xa8, y=0x28, paramC=0x6d0001
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x6d008f
	manager subtype=0x35, x=0xe0, y=0x68, paramB=0x3c1e00, paramC=0x8f0081
	object_raw subtype=0xb1, x=0x80, y=0x78, paramC=0x810000
	object_raw subtype=0xb1, x=0x140, y=0x78, paramC=0x810000
	npc_raw subtype=0x24, x=0x120, y=0x58, script=script_KingDaltusStone
	entity_list_end

gUnk_080EE71C:: @ 080EE71C
	npc_raw subtype=0x25, x=0x138, y=0x38, script=script_MinisterPothoCell
	npc_raw subtype=0x15, x=0x128, y=0x88, paramB=0x24, script=script_GuardCellLeft
	npc_raw subtype=0x15, x=0x168, y=0x88, paramB=0x25, script=script_GuardCellRight
	entity_list_end

Enemies_DarkHyruleCastle_B2Prison:: @ 080EE75C
	entity_list_end

TileEntities_DarkHyruleCastle_B2Prison:: @ 080EE76C
	tile_entity type=0x1, paramA=0x3a
	tile_entity_list_end@ unaccounted bytes
	.byte 255
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0


Room_DarkHyruleCastle_B2Prison:: @ 080EE78C
	.4byte Entities_DarkHyruleCastle_B2Prison_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_B2Prison
	.4byte TileEntities_DarkHyruleCastle_B2Prison
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B2Prison
	.4byte sub_StateChange_DarkHyruleCastle_B2Prison

Entities_DarkHyruleCastle_B2Dropdown_0:: @ 080EE7AC
	entity_list_end

Enemies_DarkHyruleCastle_B2Dropdown:: @ 080EE7BC
	enemy_raw subtype=0x1c, x=0x48, y=0x58, paramB=0x810
	entity_list_end

TileEntities_DarkHyruleCastle_B2Dropdown:: @ 080EE7DC
	tile_entity type=0x1, paramA=0x3b
	tile_entity_list_end

Room_DarkHyruleCastle_B2Dropdown:: @ 080EE7EC
	.4byte Entities_DarkHyruleCastle_B2Dropdown_0
	.4byte 0x00000000
	.4byte Enemies_DarkHyruleCastle_B2Dropdown
	.4byte TileEntities_DarkHyruleCastle_B2Dropdown
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DarkHyruleCastle_B2Dropdown
	.4byte sub_StateChange_Ruins_Beanstalk4

Entities_HyruleTown_0_0:: @ 080EE80C
	object_raw subtype=0x77, x=0x1f8, y=0x128
.ifdef EU_JP
	object_raw subtype=0x4c, x=0x138, y=0x138, collision=1, paramA=0x1, paramB=0xf001, paramC=0xc70000
.else
	object_raw subtype=0x4c, x=0x138, y=0x138, collision=1, paramA=0x1, paramB=0xf001, paramC=0xca0000
.endif
	enemy_raw subtype=0x41, x=0x388, y=0x3a8
	object_raw subtype=0xb7, x=0x2f8, y=0x278
	manager subtype=0x1a, unknown=0x8, paramA=0x3c
	manager subtype=0x16, paramA=0xf
	npc_raw subtype=0x4, x=0x1f8, y=0x1d8, script=script_Postman
	entity_list_end

gUnk_080EE88C:: @ 080EE88C
	npc_raw subtype=0x4e, script=script_Npc4EFirstKinstone
	entity_list_end

gUnk_080EE8AC:: @ 080EE8AC
	npc_raw subtype=0x53, x=0x158, y=0x328, script=script_HurdyGurdyManFirstKinstone
	npc_raw subtype=0x7, x=0x148, y=0x328, paramA=0x6, script=script_KidKinstone1
	npc_raw subtype=0x7, x=0x134, y=0x328, paramA=0x7, script=script_KidKinstone2
	npc_raw subtype=0x7, x=0x120, y=0x328, paramA=0x8, script=script_KidKinstone3
	entity_list_end

gUnk_080EE8FC:: @ 080EE8FC
	manager subtype=0x16, paramA=0x8, paramB=0x52
	entity_list_end

gUnk_080EE91C:: @ 080EE91C
	manager subtype=0x16, paramA=0x2d, paramB=0x54
	entity_list_end

gUnk_080EE93C:: @ 080EE93C
	manager subtype=0x16, paramA=0x2e, paramB=0x56
	entity_list_end

gUnk_080EE95C:: @ 080EE95C
	manager subtype=0x16, paramA=0x2f, paramB=0x59
	entity_list_end

gUnk_080EE97C:: @ 080EE97C
	manager subtype=0x16, paramA=0x30, paramB=0x59
	entity_list_end

gUnk_080EE99C:: @ 080EE99C
	manager subtype=0x16, paramA=0x31, paramB=0x59
	entity_list_end

gUnk_080EE9BC:: @ 080EE9BC
	manager subtype=0x16, paramA=0x32, paramB=0x59
	entity_list_end

gUnk_080EE9DC:: @ 080EE9DC
	manager subtype=0x16, paramA=0x34, paramB=0x5b
	entity_list_end

gUnk_080EE9FC:: @ 080EE9FC
	manager subtype=0x16, paramA=0x35, paramB=0x5b
	entity_list_end

gUnk_080EEA1C:: @ 080EEA1C
	manager subtype=0x16, paramA=0x36, paramB=0x5b
	entity_list_end

gUnk_080EEA3C:: @ 080EEA3C
	manager subtype=0x16, paramA=0x37, paramB=0x5b
	entity_list_end

gUnk_080EEA5C:: @ 080EEA5C
	manager subtype=0x16, paramA=0x38, paramB=0x5d
	entity_list_end

gUnk_080EEA7C:: @ 080EEA7C
	manager subtype=0x16, paramA=0x39, paramB=0x5f
	entity_list_end

gUnk_080EEA9C:: @ 080EEA9C
	manager subtype=0x16, paramA=0x3a, paramB=0x63
	entity_list_end

gUnk_080EEABC:: @ 080EEABC
	manager subtype=0x33
	entity_list_end

Entities_HyruleTown_0_1:: @ 080EEADC
	manager subtype=0x12
	manager subtype=0x13
	manager subtype=0x4
	manager subtype=0x6, paramA=0xd
	manager subtype=0x21, paramA=0xe
	object_raw subtype=0x19, paramB=0xc00
.ifdef EU_JP
	object_raw subtype=0x38, x=0x170, y=0x3e, unknown=0x0, paramA=0xc5
	object_raw subtype=0x38, x=0x2b0, y=0x3e, unknown=0x0, paramA=0xc6, paramB=0x1
.else
	object_raw subtype=0x38, x=0x170, y=0x3e, unknown=0x0, paramA=0xc8
	object_raw subtype=0x38, x=0x2b0, y=0x3e, unknown=0x0, paramA=0xc9, paramB=0x1
.endif
	entity_list_end

gUnk_080EEB6C:: @ 080EEB6C
	object_raw subtype=0x2d, x=0x28, y=0x206
	entity_list_end

gUnk_080EEB8C:: @ 080EEB8C
	object_raw subtype=0x2d, x=0x2f8, y=0x2b6
	entity_list_end

gUnk_080EEBAC:: @ 080EEBAC
	object_raw subtype=0xbb, x=0x278, y=0x58, unknown=0x4f, paramB=0x3, paramC=script_Windcrest
	entity_list_end

Entities_HyruleTown_1_0:: @ 080EEBCC
	manager subtype=0x16, paramA=0x9
	npc_raw subtype=0x4e, script=script_Npc4EIntroTown
	npc_raw subtype=0x28, x=0xc8, y=0x3c8, script=script_ZeldaIntroTown
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69IntroTown
	object_raw subtype=0x95, x=0x144, y=0x4c, collision=2, paramA=0x4
	object_raw subtype=0x95, x=0x178, y=0xa8, collision=2, paramA=0x7
	object_raw subtype=0xbb, x=0x148, y=0x58, unknown=0x4f, paramB=0x3, paramC=script_Windcrest
	entity_list_end

Entities_HyruleTown_1_1:: @ 080EEC4C
	manager subtype=0x12
	manager subtype=0x13
	object_raw subtype=0x19, paramB=0x800
	object_raw subtype=0x77, x=0xc8, y=0x128
.ifdef EU_JP
	object_raw subtype=0x38, x=0x40, y=0x3e, unknown=0x0, paramA=0xc5
	object_raw subtype=0x38, x=0x180, y=0x3e, unknown=0x0, paramA=0xc6, paramB=0x1
.else
	object_raw subtype=0x38, x=0x40, y=0x3e, unknown=0x0, paramA=0xc8
	object_raw subtype=0x38, x=0x180, y=0x3e, unknown=0x0, paramA=0xc9, paramB=0x1
.endif
	entity_list_end 
gUnk_080EECBC:: @ 080EECBC
	enemy_raw subtype=0x53, x=0x220, y=0x250
	entity_list_end

TileEntities_HyruleTown_0:: @ 080EECDC
	tile_entity type=0x5, paramB=0x100, paramC=0x342, paramD=0x601
	tile_entity type=0x5, paramB=0x100, paramC=0x19d, paramD=0x601
	tile_entity type=0x5, paramB=0x800, paramC=0xbdd, paramD=0x608
	tile_entity type=0x5, paramB=0x800, paramC=0xbca, paramD=0x608
	tile_entity type=0x5, paramB=0x1200, paramC=0x302, paramD=0x612
	tile_entity type=0x5, paramB=0x100, paramC=0x18a, paramD=0x601
.ifdef EU_JP
.ifdef DEMO_JP
	tile_entity type=0x5, paramB=0x2000, paramC=0x66b, paramD=0x620
.endif
	tile_entity type=0x2, paramA=0xc8, paramB=0x6f5c, paramC=0x836, paramD=0x1
	tile_entity type=0x2, paramA=0xc9, paramB=0x6e5c, paramC=0x16d, paramD=0x1
.else
	tile_entity type=0x5, paramB=0x2000, paramC=0x66b, paramD=0x620
	tile_entity type=0x2, paramA=0xcb, paramB=0x6f5c, paramC=0x836, paramD=0x1
	tile_entity type=0x2, paramA=0xcc, paramB=0x6e5c, paramC=0x16d, paramD=0x1
.endif
	tile_entity_list_end

gUnk_080EED2C:: @ 080EED2C
	.incbin "data_080D5360/gUnk_080EED2C.bin"

gUnk_080EED7A:: @ 080EED7A
	.incbin "data_080D5360/gUnk_080EED7A.bin"

gUnk_080EED8C:: @ 080EED8C
	.incbin "data_080D5360/gUnk_080EED8C.bin"

gUnk_additional_d_HyruleTown_0:: @ 080EED98
	exit_region_raw centerX=0xe0, centerY=0x52, halfWidth=0x3, halfHeight=0x2, exitIndex=0x10, bitfield=0x1
	exit_region_raw centerX=0x9c, centerY=0x12e, halfWidth=0x3, halfHeight=0x2, exitIndex=0x11, bitfield=0x1
	exit_region_raw centerX=0x8c, centerY=0x29e, halfWidth=0x4, halfHeight=0x2, exitIndex=0x12, bitfield=0x1
	exit_region_raw centerX=0x174, centerY=0x192, halfWidth=0x2, halfHeight=0x2, exitIndex=0x14, bitfield=0x1
	exit_region_raw centerX=0x2c2, centerY=0x1ec, halfWidth=0x2, halfHeight=0x2, exitIndex=0x15, bitfield=0x1
	exit_region_raw centerX=0x3ac, centerY=0x17e, halfWidth=0x4, halfHeight=0x2, exitIndex=0x16, bitfield=0x1
	exit_region_raw centerX=0x38e, centerY=0x334, halfWidth=0x2, halfHeight=0x2, exitIndex=0x17, bitfield=0x1
	exit_region_raw centerX=0x398, centerY=0x60, halfWidth=0x8, halfHeight=0x2, exitIndex=0x18, bitfield=0x1
	exit_region_raw centerX=0x2a, centerY=0x20d, halfWidth=0x8, halfHeight=0x2, exitIndex=0x19, bitfield=0x1
	exit_region_raw centerX=0x1b2, centerY=0x2b4, halfWidth=0x8, halfHeight=0x2, exitIndex=0x1a, bitfield=0x2
	exit_region_raw centerX=0x242, centerY=0x2b4, halfWidth=0x8, halfHeight=0x2, exitIndex=0x1b, bitfield=0x2
	exit_region_raw centerX=0x2da, centerY=0x2bc, halfWidth=0x8, halfHeight=0x2, exitIndex=0x1c, bitfield=0x2
	exit_region_raw centerX=0x2fa, centerY=0x2bc, halfWidth=0x8, halfHeight=0x2, exitIndex=0x1d, bitfield=0x2
	exit_region_raw centerX=0x352, centerY=0x2bc, halfWidth=0x8, halfHeight=0x2, exitIndex=0x1e, bitfield=0x2
	exit_region_raw centerX=0x3aa, centerY=0x31c, halfWidth=0x8, halfHeight=0x2, exitIndex=0x1f, bitfield=0x2
	exit_region_list_end

gUnk_additional_10_HyruleTown_0:: @ 080EEE18
	exit_raw transition=0x1, destX=0x60, destY=0x128, destArea=0x62, destRoom=0x15, unknownA=0x1

gUnk_additional_11_HyruleTown_0:: @ 080EEE2C
	exit_raw transition=0x1, destX=0x78, destY=0x24, destArea=0x22, unknownA=0x1, unknownB=0x1, unknownC=0x4

gUnk_additional_12_HyruleTown_0:: @ 080EEE40
	exit_raw transition=0x1, destX=0x68, destY=0x44, destArea=0x28, unknownA=0x1, unknownB=0x1, unknownC=0x4

gUnk_additional_13_HyruleTown_0:: @ 080EEE54
	exit_raw transition=0x1, destX=0x24, destY=0x58, destArea=0x23, destRoom=0x2, unknownA=0x1, unknownB=0x1, unknownC=0x2

gUnk_additional_14_HyruleTown_0:: @ 080EEE68
	exit_raw transition=0x1, destX=0x108, destY=0xf0, destArea=0x62, unknownA=0x1

gUnk_additional_15_HyruleTown_0:: @ 080EEE7C
	exit_raw transition=0x1, destX=0xc8, destY=0x78, destArea=0x23, destRoom=0x3, unknownA=0x1, unknownB=0x1, unknownC=0x6

gUnk_additional_16_HyruleTown_0:: @ 080EEE90
	exit_raw transition=0x1, destX=0x98, destY=0x24, destArea=0x21, destRoom=0xa, unknownA=0x1, unknownB=0x1, unknownC=0x4

gUnk_additional_17_HyruleTown_0:: @ 080EEEA4
	exit_raw transition=0x1, destX=0x28, destY=0x60, destArea=0x22, destRoom=0xc, unknownA=0x1, unknownB=0x1, unknownC=0x2

gUnk_additional_18_HyruleTown_0:: @ 080EEEB8
	exit_raw transition=0x1, destX=0x80, destY=0x318, destArea=0x11, destRoom=0x2, unknownA=0x1

gUnk_additional_19_HyruleTown_0:: @ 080EEECC
	exit_raw transition=0x1, destX=0x48, destY=0x56, destArea=0x22, destRoom=0x4, unknownA=0x1, unknownB=0x1, unknownC=0x4

gUnk_additional_1a_HyruleTown_0:: @ 080EEEE0
	exit_raw transition=0x1, destX=0x1c8, destY=0xc0, destArea=0x2e, unknownA=0x1, unknownC=0x6

gUnk_additional_1b_HyruleTown_0:: @ 080EEEF4
	exit_raw transition=0x1, destX=0x28, destY=0xc0, destArea=0x2e, destRoom=0x1, unknownA=0x1, unknownC=0x2

gUnk_additional_1c_HyruleTown_0:: @ 080EEF08
	exit_raw transition=0x1, destX=0x48, destY=0x36, destArea=0x22, destRoom=0x6, unknownA=0x1, unknownB=0x1, unknownC=0x4

gUnk_additional_1d_HyruleTown_0:: @ 080EEF1C
	exit_raw transition=0x1, destX=0x98, destY=0x36, destArea=0x22, destRoom=0x6, unknownA=0x1, unknownB=0x1, unknownC=0x4

gUnk_additional_1e_HyruleTown_0:: @ 080EEF30
	exit_raw transition=0x1, destX=0xb8, destY=0x56, destArea=0x22, destRoom=0x7, unknownA=0x1, unknownB=0x1, unknownC=0x4

gUnk_additional_1f_HyruleTown_0:: @ 080EEF44
	exit_raw transition=0x1, destX=0x58, destY=0x36, destArea=0x22, destRoom=0xc, unknownA=0x1, unknownB=0x1, unknownC=0x4

gUnk_additional_e_HyruleTown_0:: @ 080EEF58
	minish_entrance x=0x124, y=0x50, actionDelay=0x20
	minish_entrance x=0x2f8, y=0x70, actionDelay=0x21
	minish_entrance x=0x7c, y=0x168, actionDelay=0x22
	minish_entrance x=0x56, y=0x1c0, unknown=0x4, actionDelay=0x23
	minish_entrance x=0x56, y=0x1c0, unknown=0x6, actionDelay=0x24
	minish_entrance x=0x56, y=0x1c0, unknown=0x5, actionDelay=0x25
	minish_entrance x=0x54, y=0x248, actionDelay=0x26
	minish_entrance x=0x180, y=0x2f0, actionDelay=0x27
	minish_entrance x=0x2d0, y=0x2f8, actionDelay=0x28
	minish_entrance x=0x344, y=0x70, actionDelay=0x2c
	.4byte 0

gUnk_additional_20_HyruleTown_0:: @ 080EEFAC
	.incbin "data_080D5360/gUnk_additional_20_HyruleTown_0.bin"

gUnk_additional_21_HyruleTown_0:: @ 080EEFC0
	.incbin "data_080D5360/gUnk_additional_21_HyruleTown_0.bin"

gUnk_additional_22_HyruleTown_0:: @ 080EEFD4
	.incbin "data_080D5360/gUnk_additional_22_HyruleTown_0.bin"

gUnk_additional_23_HyruleTown_0:: @ 080EEFE8
	.incbin "data_080D5360/gUnk_additional_23_HyruleTown_0.bin"

gUnk_additional_24_HyruleTown_0:: @ 080EEFFC
	.incbin "data_080D5360/gUnk_additional_24_HyruleTown_0.bin"

gUnk_additional_25_HyruleTown_0:: @ 080EF010
	.incbin "data_080D5360/gUnk_additional_25_HyruleTown_0.bin"

gUnk_additional_26_HyruleTown_0:: @ 080EF024
	.incbin "data_080D5360/gUnk_additional_26_HyruleTown_0.bin"

gUnk_additional_27_HyruleTown_0:: @ 080EF038
	.incbin "data_080D5360/gUnk_additional_27_HyruleTown_0.bin"

gUnk_additional_28_HyruleTown_0:: @ 080EF04C
	.incbin "data_080D5360/gUnk_additional_28_HyruleTown_0.bin"

gUnk_additional_29_HyruleTown_0:: @ 080EF060
	.incbin "data_080D5360/gUnk_additional_29_HyruleTown_0.bin"

gUnk_additional_2a_HyruleTown_0:: @ 080EF074
	.incbin "data_080D5360/gUnk_additional_2a_HyruleTown_0.bin"

gUnk_additional_2b_HyruleTown_0:: @ 080EF088
	.incbin "data_080D5360/gUnk_additional_2b_HyruleTown_0.bin"

gUnk_additional_2c_HyruleTown_0:: @ 080EF09C
	.incbin "data_080D5360/gUnk_additional_2c_HyruleTown_0.bin"

gUnk_additional_f_HyruleTown_0:: @ 080EF0B0
	delayed_entity_raw subtype=0x6, x=0x298, y=0x268, layer=1, paramA=0x8, paramC=script_Townsperson1, paramD=0x4, conditions=0x1c
	delayed_entity_raw subtype=0x6, x=0x238, y=0x118, layer=1, paramA=0xa, paramC=script_Townsperson2, paramD=0x4, conditions=0x1fc
	delayed_entity_raw subtype=0x6, x=0x1a8, y=0x308, layer=1, paramA=0xb, paramC=script_Townsperson2, paramD=0x4, conditions=0x1fc
	delayed_entity_raw subtype=0x6, x=0x2ec, y=0x2a8, layer=1, paramA=0x6, paramC=script_Townsperson1, paramD=0x2, conditions=0x3c
	delayed_entity_raw subtype=0x6, x=0x1d8, y=0x228, layer=1, paramA=0x6, paramC=script_Townsperson2, paramD=0x4, conditions=0xc0
	delayed_entity_raw subtype=0x6, x=0x328, y=0x168, layer=1, paramA=0x1, paramC=script_Townsperson2, paramD=0x4, conditions=0xfc
	delayed_entity_raw subtype=0x6, x=0x1c8, y=0x278, layer=1, paramA=0x2, paramC=script_Townsperson2, paramD=0x4, conditions=0xfc
	delayed_entity_raw subtype=0x6, x=0x58, y=0x328, layer=1, paramA=0x11, paramC=script_Townsperson2, paramD=0x4, conditions=0x1fc
	delayed_entity_raw subtype=0x6, x=0x88, y=0x1a8, layer=1, paramA=0x12, paramC=script_Townsperson1, paramD=0x6, conditions=0xfc
	delayed_entity_raw subtype=0x6, x=0x1e8, y=0x1a8, layer=1, paramA=0x13, paramC=script_Townsperson2, paramD=0x4, conditions=0x1e0
	delayed_entity_raw subtype=0x6, x=0x238, y=0x308, layer=1, paramA=0x10, paramC=script_Townsperson2, paramD=0x2, conditions=0xfc
	delayed_entity_raw subtype=0x48, x=0x2c8, y=0xac, layer=1, paramA=0x1, paramC=script_Teachers, paramD=0x4, conditions=0x3c
	delayed_entity_raw subtype=0x45, x=0x358, y=0x378, layer=1, paramC=script_Anju, paramD=0x6, conditions=0x3fc
	delayed_entity_raw subtype=0x2c, x=0x168, y=0x13c, layer=1, paramA=0x1, paramD=0x20, conditions=0x1fc
	delayed_entity_raw subtype=0x2c, x=0x13c, y=0x158, layer=1, paramA=0x2, paramD=0x20, conditions=0x1fc
	delayed_entity_raw subtype=0x2c, x=0x1c8, y=0x34e, layer=2, paramA=0x5, paramD=0x60, conditions=0x1fc
	delayed_entity_raw subtype=0x7, x=0x368, y=0xd8, layer=1, paramA=0x6, paramC=script_Kid1, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x188, y=0x268, layer=1, paramA=0x6, paramC=script_Kid2, paramD=0x6, conditions=0x20
	delayed_entity_raw subtype=0x7, x=0x328, y=0x268, layer=1, paramA=0x6, paramC=script_Kid4, paramD=0x4, conditions=0x40
	delayed_entity_raw subtype=0x7, x=0x158, y=0x78, layer=2, paramA=0x6, paramC=script_Kid2, paramD=0x4, conditions=0x80
	delayed_entity_raw subtype=0x7, x=0x158, y=0x1b8, layer=1, paramA=0x7, paramC=script_Kid2, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x280, y=0x268, layer=1, paramA=0x7, paramC=script_Kid2, conditions=0x20
	delayed_entity_raw subtype=0x7, x=0x308, y=0x238, layer=1, paramA=0x7, paramC=script_Kid4, paramD=0x4, conditions=0x40
	delayed_entity_raw subtype=0x7, x=0x168, y=0x78, layer=2, paramA=0x7, paramC=script_Kid2, paramD=0x4, conditions=0x80
	delayed_entity_raw subtype=0x7, x=0x168, y=0x1b8, layer=1, paramA=0x8, paramC=script_Kid2, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x2b0, y=0x268, layer=1, paramA=0x8, paramC=script_Kid2, conditions=0x20
	delayed_entity_raw subtype=0x7, x=0x2d8, y=0x248, layer=1, paramA=0x8, paramC=script_Kid4, paramD=0x4, conditions=0x40
	delayed_entity_raw subtype=0x7, x=0x178, y=0x78, layer=2, paramA=0x8, paramC=script_Kid2, paramD=0x4, conditions=0x80
	delayed_entity_raw subtype=0x35, x=0x398, y=0x2c8, layer=1, paramA=0x1, paramB=0x1, conditions=0x1fc
	delayed_entity_raw subtype=0x35, x=0x78, y=0x220, layer=1, paramA=0x2, paramB=0x2, conditions=0x1fc
	delayed_entity_raw subtype=0xb, x=0x218, y=0x1c8, layer=1, paramC=script_MaidTown, conditions=0xfc
	delayed_entity_raw subtype=0x6, x=0x304, y=0x2a8, layer=1, paramA=0x7, paramC=script_Townsperson1, paramD=0x6, conditions=0x3c
	delayed_entity_raw subtype=0x12, x=0x1d0, y=0x1f8, layer=1, paramC=script_Brocco, conditions=0x1fc
	delayed_entity_raw subtype=0x14, x=0x1d0, y=0x248, layer=1, paramC=script_Pina, conditions=0x1fc
	delayed_entity_raw subtype=0x7, x=0x318, y=0xa8, layer=1, paramC=script_Kid3, paramD=0x4, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x338, y=0x98, layer=1, paramA=0x1, paramC=script_Kid3, paramD=0x4, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x358, y=0xa8, layer=1, paramA=0x2, paramC=script_Kid3, paramD=0x4, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x378, y=0x88, layer=1, paramA=0x3, paramC=script_Kid3, paramD=0x4, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x398, y=0x98, layer=1, paramA=0x4, paramC=script_Kid3, paramD=0x4, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x3b8, y=0x88, layer=1, paramA=0x5, paramC=script_Kid3, paramD=0x4, conditions=0xc
	delayed_entity_raw subtype=0x7, x=0x378, y=0x98, layer=1, paramC=script_Kid4, paramD=0x4, conditions=0x40
	delayed_entity_raw subtype=0x7, x=0x3a8, y=0x98, layer=1, paramA=0x3, paramC=script_Kid4, paramD=0x4, conditions=0x40
	delayed_entity_raw subtype=0x7, x=0x308, y=0x98, layer=1, paramA=0x4, paramC=script_Kid2, conditions=0x40
	delayed_entity_raw subtype=0x7, x=0x318, y=0x98, layer=1, paramA=0x5, paramC=script_Kid2, conditions=0x40
	delayed_entity_raw subtype=0x7, x=0x348, y=0x98, layer=1, paramA=0x1, paramC=script_Kid4, paramD=0x4, conditions=0x80
	delayed_entity_raw subtype=0x7, x=0x3a8, y=0x98, layer=1, paramA=0x2, paramC=script_Kid4, paramD=0x4, conditions=0x80
	delayed_entity_raw subtype=0x7, x=0x368, y=0x58, layer=1, paramA=0x4, paramC=script_Kid2, conditions=0x80
	delayed_entity_raw subtype=0x7, x=0x378, y=0x58, layer=1, paramA=0x5, paramC=script_Kid2, conditions=0x80
	delayed_entity_raw subtype=0x8, x=0x3e0, y=0xd8, layer=1, paramB=0x80, paramC=script_GuardEast, paramD=0x1, conditions=0xc
	delayed_entity_raw subtype=0x8, x=0x18, y=0x108, layer=1, paramB=0x81, paramC=script_GuardWest, paramD=0x1, conditions=0xc
	delayed_entity_raw subtype=0x8, x=0x68, y=0xf8, layer=1, paramB=0x82, paramC=script_GuardPatrolling, conditions=0x30
	delayed_entity_raw subtype=0x8, x=0x1f8, y=0x98, layer=1, paramB=0x83, paramC=script_GuardPatrolling, conditions=0x1f0
	delayed_entity_raw subtype=0x8, x=0x48, y=0x158, layer=1, paramB=0x84, paramC=script_GuardPatrolling, conditions=0x300
	delayed_entity_raw subtype=0x8, x=0x398, y=0xe8, layer=1, paramB=0x85, paramC=script_GuardPatrolling, conditions=0x30
	delayed_entity_raw subtype=0x8, x=0x398, y=0x128, layer=1, paramB=0x86, paramC=script_GuardPatrolling, conditions=0x300
	delayed_entity_raw subtype=0x8, x=0x48, y=0x2b8, layer=1, paramB=0x87, paramC=script_GuardPatrolling, conditions=0x210
	delayed_entity_raw subtype=0x8, x=0x118, y=0x248, layer=1, paramB=0x88, paramC=script_GuardPatrolling, conditions=0x1f0
	delayed_entity_raw subtype=0x8, x=0x208, y=0x318, layer=1, paramB=0x89, paramC=script_GuardPatrolling, conditions=0x3f0
	delayed_entity_raw subtype=0x8, x=0x388, y=0x2f8, layer=1, paramB=0x8a, paramC=script_GuardPatrolling, conditions=0x230
	delayed_entity_raw subtype=0x8, x=0x1c8, y=0x288, layer=1, paramB=0x8b, paramC=script_GuardPatrolling, conditions=0x300
	delayed_entity_raw subtype=0x8, x=0x1f8, y=0x1b8, layer=1, paramB=0x8c, paramC=script_GuardPatrolling, conditions=0x200
	delayed_entity_raw subtype=0x8, x=0x188, y=0x338, layer=1, paramB=0x8d, paramC=script_GuardPatrolling, conditions=0x200
	delayed_entity_raw subtype=0x8, x=0x238, y=0x118, layer=1, paramB=0x8e, paramC=script_GuardPatrolling, conditions=0x200
	delayed_entity_raw subtype=0x8, x=0x168, y=0xb8, layer=1, paramB=0x8f, paramC=script_GuardLibrary, conditions=0x200
	delayed_entity_raw subtype=0x8, x=0x1f8, y=0x50, layer=1, paramB=0x90, paramC=script_GuardNorth, paramD=0x1, conditions=0xc
	delayed_entity_raw subtype=0x8, x=0x48, y=0x2c8, layer=1, paramB=0x91, paramC=script_GuardPatrolling, conditions=0x20
	delayed_entity_raw subtype=0x13, x=0x13b, y=0x2c8, layer=1, paramB=0x3, paramC=script_SittingPerson, paramD=0x1, conditions=0x3c0
	delayed_entity_raw subtype=0x13, x=0x167, y=0x2e2, layer=1, paramA=0x3, paramB=0x4, paramC=script_SittingPerson, conditions=0x80
	delayed_entity_raw subtype=0x4e, x=0x368, y=0x1b6, layer=1, paramC=script_InnDoor, conditions=0x6
	delayed_entity_raw subtype=0x4e, x=0x388, y=0x256, layer=1, paramC=script_InnDoor, conditions=0x6
	delayed_entity_raw subtype=0x4e, x=0x178, y=0x252, layer=1, paramC=script_SimonsDoor, conditions=0x1e
	delayed_entity_raw subtype=0x4e, x=0x178, y=0x292, layer=1, paramC=script_PhonographDoor, conditions=0x3fe
	delayed_entity_raw subtype=0x52, x=0x50, y=0x398, layer=1, paramC=script_SmallTownMinish, conditions=0x1f0
	delayed_entity_raw subtype=0x52, x=0x188, y=0x1aa, layer=1, paramA=0x1, paramB=0x1, paramC=script_SmallTownMinish, conditions=0x1f0
	delayed_entity_raw subtype=0x52, x=0x3c8, y=0x2f8, layer=1, paramA=0x2, paramB=0x2, paramC=script_SmallTownMinish, conditions=0x1f0
	delayed_entity_raw subtype=0x52, x=0x138, y=0x10a, layer=1, paramA=0x3, paramB=0x3, paramC=script_SmallTownMinish, conditions=0x1e0
	delayed_entity_raw subtype=0x52, x=0x338, y=0x3a, layer=2, paramA=0x4, paramB=0x4, paramC=script_SmallTownMinish, conditions=0x1c0
	delayed_entity_raw subtype=0x54, x=0x3c0, y=0x31c, layer=2, conditions=0x1fc
	delayed_entity_raw subtype=0x55, x=0x11c, y=0x364, layer=1, conditions=0x1fc
	delayed_entity_raw subtype=0x10, x=0x48, y=0x80, layer=2, conditions=0x3fe
	entity_list_end
	delayed_entity_raw subtype=0x0

gUnk_additional_8_HyruleTown_0:: @ 080EF5D0
	delayed_entity_raw subtype=0x21, x=0x388, y=0x338, layer=1, paramA=0x1, paramC=script_Ghost, conditions=0x3fc
	entity_list_end

gUnk_additional_2d_HyruleTown_0:: @ 080EF5F0
	delayed_entity_raw subtype=0x33, x=0x220, y=0x1f8, layer=1, paramC=script_GoronMerchant, conditions=0x3f0
	entity_list_end

gUnk_additional_2e_HyruleTown_0:: @ 080EF610
	delayed_entity_raw subtype=0x11, x=0x220, y=0x248, layer=1, paramA=0x1, paramC=script_Beedle, conditions=0x3f0
	delayed_entity_raw subtype=0x50, x=0x220, y=0x250, layer=1, conditions=0x3f0
	entity_list_end

gUnk_additional_2f_HyruleTown_0:: @ 080EF640
	delayed_entity_raw subtype=0x34, x=0x2b8, y=0x378, layer=1, paramC=script_GormanFirstHouse, conditions=0x3f0
	entity_list_end

gUnk_additional_30_HyruleTown_0:: @ 080EF660
	delayed_entity_raw subtype=0x34, x=0x68, y=0x1c8, layer=1, paramC=script_GormanSecondHouse, conditions=0x3f0
	entity_list_end

gUnk_additional_31_HyruleTown_0:: @ 080EF680
	delayed_entity_raw subtype=0x34, x=0x138, y=0x108, layer=1, paramC=script_GormanCats, conditions=0x1f0
	entity_list_end

gUnk_additional_32_HyruleTown_0:: @ 080EF6A0
	delayed_entity_raw subtype=0x34, x=0x40, y=0x1d0, layer=1, paramC=script_GormanFirstHouse, conditions=0x3f0
	entity_list_end

gUnk_additional_34_HyruleTown_0:: @ 080EF6C0
	delayed_entity_raw subtype=0x4f, x=0x2f8, y=0x360, layer=1, conditions=0x3ff
	entity_list_end

gUnk_additional_35_HyruleTown_0:: @ 080EF6E0
	delayed_entity_raw subtype=0x4f, x=0x2f8, y=0x360, layer=1, paramA=0x1, conditions=0x3f0
	entity_list_end

gUnk_additional_36_HyruleTown_0:: @ 080EF700
	delayed_entity_raw subtype=0x4f, x=0x2f8, y=0x360, layer=1, paramA=0x2, conditions=0x3f0
	entity_list_end

gUnk_additional_37_HyruleTown_0:: @ 080EF720
	delayed_entity_raw subtype=0x4f, x=0x2f8, y=0x360, layer=1, paramA=0x3, conditions=0x3f0
	entity_list_end

gUnk_additional_38_HyruleTown_0:: @ 080EF740
	delayed_entity_raw subtype=0x2a, x=0x80, y=0x88, layer=1, paramA=0x2, paramC=script_Carpenter, conditions=0x3e0
	entity_list_end

gUnk_additional_39_HyruleTown_0:: @ 080EF760
	delayed_entity_raw subtype=0x1e, x=0x1a8, y=0xf8, layer=1, paramA=0x1, paramC=script_MalonHyruleTown, conditions=0x3f0
	delayed_entity_raw subtype=0x1f, x=0x1c0, y=0xf8, layer=1, conditions=0x3f0
	delayed_entity_raw subtype=0x20, x=0x1d0, y=0xf8, layer=1, conditions=0x3f0
	entity_list_end

gUnk_additional_3a_HyruleTown_0:: @ 080EF7A0
	delayed_entity_raw subtype=0x6, x=0x168, y=0xb8, layer=1, paramC=script_Townsperson1, paramD=0x4, conditions=0x3c
	entity_list_end

gUnk_additional_9_HyruleTown_1:: @ 080EF7C0
	delayed_entity_raw subtype=0x6, x=0xe8, y=0x2f8, layer=1, paramA=0x8, paramC=script_TownsperonIntro, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0xa0, y=0x248, layer=1, paramA=0x1, paramC=script_TownsperonIntro, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x7, x=0x90, y=0x258, layer=1, paramA=0x4, paramC=script_KidIntro1, conditions=0xffff
	delayed_entity_raw subtype=0x7, x=0xb0, y=0x258, layer=1, paramC=script_KidIntro1, conditions=0xffff
	delayed_entity_raw subtype=0x12, x=0xa0, y=0x1f8, layer=1, paramC=script_Brocco, conditions=0xffff
	delayed_entity_raw subtype=0x11, x=0xf0, y=0x1f8, layer=1, paramC=script_BeedleIntro, conditions=0xffff
	delayed_entity_raw subtype=0x14, x=0xf0, y=0x248, layer=1, paramC=script_PinaIntro, conditions=0xffff
	delayed_entity_raw subtype=0x7, x=0xbe, y=0x198, layer=1, paramA=0x7, paramC=script_KidIntro2, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x7, x=0xd2, y=0x198, layer=1, paramA=0x8, paramC=script_KidIntro2, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0x78, y=0x198, layer=1, paramC=script_TownsperonIntro, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0x60, y=0x210, layer=1, paramA=0x2, paramC=script_TownsperonIntro, paramD=0x2, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0x60, y=0x250, layer=1, paramA=0xa, paramC=script_TownsperonIntro, paramD=0x2, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0x60, y=0x290, layer=1, paramA=0xb, paramC=script_TownsperonIntro, paramD=0x2, conditions=0xffff
	delayed_entity_raw subtype=0x3a, x=0x118, y=0x19a, layer=1, paramB=0x3, paramC=script_PercyIntro, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0x128, y=0x1f0, layer=1, paramA=0x6, paramC=script_TownsperonIntro, paramD=0x6, conditions=0xffff
	delayed_entity_raw subtype=0x49, x=0x104, y=0xd0, layer=1, paramA=0x3, paramB=0x8, paramC=script_WindtribespeopleIntro, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x49, x=0xf0, y=0xd0, layer=1, paramA=0x1, paramB=0x9, paramC=script_WindtribespeopleIntro, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0x128, y=0x1c8, layer=1, paramA=0x4, paramC=script_TownsperonIntro, paramD=0x6, conditions=0xffff
	delayed_entity_raw subtype=0x8, x=0xe8, y=0xa8, layer=1, paramB=0x23, paramC=script_GuardIntro, paramD=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x7, x=0x98, y=0xc8, layer=1, paramA=0x6, paramC=script_KidIntro1, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0xb0, y=0x220, layer=1, paramA=0x5, paramC=script_TownsperonIntro, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0xf0, y=0x298, layer=1, paramA=0x7, paramC=script_TownsperonIntro, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0x88, y=0x1e0, layer=1, paramA=0xd, paramC=script_TownsperonIntro, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x6, x=0x98, y=0x1e0, layer=1, paramA=0xe, paramC=script_TownsperonIntro, paramD=0x4, conditions=0xffff
	delayed_entity_raw subtype=0x7, x=0x98, y=0xe8, layer=1, paramA=0x7, paramC=script_KidIntro3, conditions=0xffff
	delayed_entity_raw subtype=0x7, x=0xa8, y=0xe8, layer=1, paramA=0x8, paramC=script_KidIntro3, conditions=0xffff
	entity_list_end

gUnk_additional_9_HyruleTown_0:: @ 080EF970
	.incbin "data_080D5360/gUnk_additional_9_HyruleTown_0.bin"

gUnk_additional_a_HyruleTown_0:: @ 080EF998
	.incbin "data_080D5360/gUnk_additional_a_HyruleTown_0.bin"

gUnk_additional_b_HyruleTown_0:: @ 080EF9C0
	.incbin "data_080D5360/gUnk_additional_b_HyruleTown_0.bin"

gUnk_additional_c_HyruleTown_0:: @ 080EF9E4
	.incbin "data_080D5360/gUnk_additional_c_HyruleTown_0.bin"
	.4byte script_DrLeftDoor
	.incbin "data_080D5360/gUnk_additional_c_HyruleTown_0_1.bin"
	.4byte script_FirstHouseDoor
	.incbin "data_080D5360/gUnk_additional_c_HyruleTown_0_2.bin"

gUnk_additional_8_HyruleTown_1:: @ 080EFAA4
	.incbin "data_080D5360/gUnk_additional_8_HyruleTown_1.bin"

Room_HyruleTown_0:: @ 080EFAEC
	.4byte Entities_HyruleTown_0_0
	.4byte Entities_HyruleTown_0_1
	.4byte 0x00000000
	.4byte TileEntities_HyruleTown_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTown_0
	.4byte sub_StateChange_HyruleTown_0
	.4byte gUnk_additional_8_HyruleTown_0
	.4byte gUnk_additional_9_HyruleTown_0
	.4byte gUnk_additional_a_HyruleTown_0
	.4byte gUnk_additional_b_HyruleTown_0
	.4byte gUnk_additional_c_HyruleTown_0
	.4byte gUnk_additional_d_HyruleTown_0
	.4byte gUnk_additional_e_HyruleTown_0
	.4byte gUnk_additional_f_HyruleTown_0
	.4byte gUnk_additional_10_HyruleTown_0
	.4byte gUnk_additional_11_HyruleTown_0
	.4byte gUnk_additional_12_HyruleTown_0
	.4byte gUnk_additional_13_HyruleTown_0
	.4byte gUnk_additional_14_HyruleTown_0
	.4byte gUnk_additional_15_HyruleTown_0
	.4byte gUnk_additional_16_HyruleTown_0
	.4byte gUnk_additional_17_HyruleTown_0
	.4byte gUnk_additional_18_HyruleTown_0
	.4byte gUnk_additional_19_HyruleTown_0
	.4byte gUnk_additional_1a_HyruleTown_0
	.4byte gUnk_additional_1b_HyruleTown_0
	.4byte gUnk_additional_1c_HyruleTown_0
	.4byte gUnk_additional_1d_HyruleTown_0
	.4byte gUnk_additional_1e_HyruleTown_0
	.4byte gUnk_additional_1f_HyruleTown_0
	.4byte gUnk_additional_20_HyruleTown_0
	.4byte gUnk_additional_21_HyruleTown_0
	.4byte gUnk_additional_22_HyruleTown_0
	.4byte gUnk_additional_23_HyruleTown_0
	.4byte gUnk_additional_24_HyruleTown_0
	.4byte gUnk_additional_25_HyruleTown_0
	.4byte gUnk_additional_26_HyruleTown_0
	.4byte gUnk_additional_27_HyruleTown_0
	.4byte gUnk_additional_28_HyruleTown_0
	.4byte gUnk_additional_29_HyruleTown_0
	.4byte gUnk_additional_2a_HyruleTown_0
	.4byte gUnk_additional_2b_HyruleTown_0
	.4byte gUnk_additional_2c_HyruleTown_0
	.4byte gUnk_additional_2d_HyruleTown_0
	.4byte gUnk_additional_2e_HyruleTown_0
	.4byte gUnk_additional_2f_HyruleTown_0
	.4byte gUnk_additional_30_HyruleTown_0
	.4byte gUnk_additional_31_HyruleTown_0
	.4byte gUnk_additional_32_HyruleTown_0
	.4byte 0x00000000
	.4byte gUnk_additional_34_HyruleTown_0
	.4byte gUnk_additional_35_HyruleTown_0
	.4byte gUnk_additional_36_HyruleTown_0
	.4byte gUnk_additional_37_HyruleTown_0
	.4byte gUnk_additional_38_HyruleTown_0
	.4byte gUnk_additional_39_HyruleTown_0
	.4byte gUnk_additional_3a_HyruleTown_0

Room_HyruleTown_1:: @ 080EFBD8
	.4byte Entities_HyruleTown_1_0
	.4byte Entities_HyruleTown_1_1
	.4byte 0x00000000
	.4byte TileEntities_HyruleTown_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_StateChange_HyruleTown_0
	.4byte gUnk_additional_8_HyruleTown_1
	.4byte gUnk_additional_9_HyruleTown_1

Room_HyruleTown_2:: @ 080EFC00
	.4byte Entities_HyruleTown_0_0
	.4byte Entities_HyruleTown_0_1
	.4byte 0
	.4byte TileEntities_HyruleTown_0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte sub_StateChange_HyruleTown_0

Room_HyruleTown_3:: @ 080EFC20
	.4byte Entities_HyruleTown_0_0
	.4byte Entities_HyruleTown_0_1
	.4byte 0x00000000
	.4byte TileEntities_HyruleTown_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_StateChange_HyruleTown_0

Room_HyruleTown_4:: @ 080EFC40
	.4byte Entities_HyruleTown_0_0
	.4byte Entities_HyruleTown_0_1
	.4byte 0x00000000
	.4byte TileEntities_HyruleTown_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_StateChange_HyruleTown_0

Room_HyruleTown_5:: @ 080EFC60
	.4byte Entities_HyruleTown_0_0
	.4byte Entities_HyruleTown_0_1
	.4byte 0x00000000
	.4byte TileEntities_HyruleTown_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_StateChange_HyruleTown_0

Room_HyruleTown_6:: @ 080EFC80
	.4byte Entities_HyruleTown_0_0
	.4byte Entities_HyruleTown_0_1
	.4byte 0x00000000
	.4byte TileEntities_HyruleTown_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_StateChange_HyruleTown_0

Room_HyruleTown_7:: @ 080EFCA0
	.4byte Entities_HyruleTown_0_0
	.4byte Entities_HyruleTown_0_1
	.4byte 0x00000000
	.4byte TileEntities_HyruleTown_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_StateChange_HyruleTown_0

Room_HyruleTown_8:: @ 080EFCC0
	.4byte Entities_HyruleTown_0_0
	.4byte Entities_HyruleTown_0_1
	.4byte 0x00000000
	.4byte TileEntities_HyruleTown_0
	.4byte sub_unk1_HyruleTown_8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_StateChange_HyruleTown_0

Entities_HyruleTownMinishCaves_Entrance_0:: @ 080EFCE0
	ezlo_hint x=0x1c, y=0x1c, rx=0x5, ry=0x1, msg=0xb15, flag=0xbe
	object_raw subtype=0x5, x=0x48, y=0x78
	object_raw subtype=0x5, x=0x58, y=0x78
	object_raw subtype=0x5, x=0x68, y=0x78
	object_raw subtype=0x5, x=0x48, y=0x88
	object_raw subtype=0x5, x=0x68, y=0x88
	object_raw subtype=0x5, x=0x48, y=0x98
	object_raw subtype=0x5, x=0x58, y=0x98
	object_raw subtype=0x5, x=0x68, y=0x98
	object_raw subtype=0x0, x=0x58, y=0x88, collision=1, paramA=0x63, paramB=0x400, paramC=0xc30000
	entity_list_end

Enemies_HyruleTownMinishCaves_Entrance:: @ 080EFD90
	enemy_raw subtype=0x10, x=0xf8, y=0x48, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x118, y=0xb8, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x138, y=0xd8, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x138, y=0x78, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x128, y=0x98, paramA=0x1, paramB=0x1e00
	entity_list_end

TileEntities_HyruleTownMinishCaves_Entrance:: @ 080EFDF0
	tile_entity_list_end

Room_HyruleTownMinishCaves_Entrance:: @ 080EFDF8
	.4byte Entities_HyruleTownMinishCaves_Entrance_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownMinishCaves_Entrance
	.4byte TileEntities_HyruleTownMinishCaves_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_Entrance
	.4byte sub_StateChange_HyruleTownMinishCaves_Entrance

Entities_HyruleTownMinishCaves_NorthRoom_0:: @ 080EFE18
	object_raw subtype=0x8, x=0x158, y=0x88, paramA=0x1, paramC=0xeffff
	entity_list_end

Entities_HyruleTownMinishCaves_NorthRoom_1:: @ 080EFE38
	object_raw subtype=0x4f, x=0x170, y=0x88, paramA=0x1a, paramB=0x1
	entity_list_end

Enemies_HyruleTownMinishCaves_NorthRoom:: @ 080EFE58
	entity_list_end

TileEntities_HyruleTownMinishCaves_NorthRoom:: @ 080EFE68
	tile_entity type=0x2, paramA=0xc, paramB=0x57, paramC=0x92
	tile_entity_list_end

Room_HyruleTownMinishCaves_NorthRoom:: @ 080EFE78
	.4byte Entities_HyruleTownMinishCaves_NorthRoom_0
	.4byte Entities_HyruleTownMinishCaves_NorthRoom_1
	.4byte Enemies_HyruleTownMinishCaves_NorthRoom
	.4byte TileEntities_HyruleTownMinishCaves_NorthRoom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_NorthRoom
	.4byte sub_StateChange_HyruleTownMinishCaves_NorthRoom

Entities_HyruleTownMinishCaves_PacciJump_0:: @ 080EFE98
	object_raw subtype=0x5, x=0x38, y=0xe8
	object_raw subtype=0x5, x=0x48, y=0xe8, paramA=0x5f
	object_raw subtype=0x5, x=0x58, y=0xe8, paramA=0x5f
	object_raw subtype=0x5, x=0xb8, y=0xe8
	object_raw subtype=0x5, x=0xc8, y=0xe8
	object_raw subtype=0x5, x=0xd8, y=0xe8, paramA=0x60
	entity_list_end

Entities_HyruleTownMinishCaves_PacciJump_1:: @ 080EFF08
	object_raw subtype=0x4f, x=0x88, paramA=0x1a
	entity_list_end

Enemies_HyruleTownMinishCaves_PacciJump:: @ 080EFF28
	enemy_raw subtype=0x1f, x=0x38, y=0x68, paramA=0x2, paramC=0x48
	enemy_raw subtype=0x1f, x=0xd8, y=0x68, paramA=0x2, paramC=0x48
	enemy_raw subtype=0x32, x=0x78, y=0xa8
	enemy_raw subtype=0x32, x=0x98, y=0xc8
	entity_list_end

TileEntities_HyruleTownMinishCaves_PacciJump:: @ 080EFF78
	tile_entity_list_end

Room_HyruleTownMinishCaves_PacciJump:: @ 080EFF80
	.4byte Entities_HyruleTownMinishCaves_PacciJump_0
	.4byte Entities_HyruleTownMinishCaves_PacciJump_1
	.4byte Enemies_HyruleTownMinishCaves_PacciJump
	.4byte TileEntities_HyruleTownMinishCaves_PacciJump
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_PacciJump
	.4byte sub_StateChange_HyruleTownMinishCaves_PacciJump

Entities_HyruleTownMinishCaves_MulldozerFight_0:: @ 080EFFA0
	object_raw subtype=0x8, x=0x28, y=0x88, paramA=0x3, paramC=0xeffff
	object_raw subtype=0x8, x=0x88, y=0xc8, paramA=0x12, paramC=0xeffff
	manager subtype=0x1e, x=0x60, y=0x50, paramB=0x400050, paramC=0x80000000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0xe8000
	object_raw subtype=0xc, x=0x88, y=0x68, paramA=0x2, paramB=0xf, paramC=0xe0000
	entity_list_end

Entities_HyruleTownMinishCaves_MulldozerFight_1:: @ 080F0000
	object_raw subtype=0x4f, x=0x10, y=0x88, paramA=0x1a, paramB=0x3
	object_raw subtype=0x4f, x=0x88, y=0xe0, paramA=0x1a, paramB=0x2
	entity_list_end

Enemies_HyruleTownMinishCaves_MulldozerFight:: @ 080F0030
	entity_list_end

TileEntities_HyruleTownMinishCaves_MulldozerFight:: @ 080F0040
	tile_entity type=0x3, paramA=0xf, paramB=0x45, paramC=0x88, paramD=0x68
	tile_entity_list_end

gUnk_additional_8_HyruleTownMinishCaves_MulldozerFight:: @ 080F0050
	enemy_raw subtype=0x32, x=0x48, y=0x38, paramA=0x1
	enemy_raw subtype=0x32, x=0xc8, y=0x38, paramA=0x1
	enemy_raw subtype=0x32, x=0x48, y=0xa8, paramA=0x1
	enemy_raw subtype=0x32, x=0xc8, y=0xa8, paramA=0x1
	entity_list_end

Room_HyruleTownMinishCaves_MulldozerFight:: @ 080F00A0
	.4byte Entities_HyruleTownMinishCaves_MulldozerFight_0
	.4byte Entities_HyruleTownMinishCaves_MulldozerFight_1
	.4byte Enemies_HyruleTownMinishCaves_MulldozerFight
	.4byte TileEntities_HyruleTownMinishCaves_MulldozerFight
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_MulldozerFight
	.4byte sub_StateChange_HyruleTownMinishCaves_MulldozerFight
	.4byte gUnk_additional_8_HyruleTownMinishCaves_MulldozerFight

Entities_HyruleTownMinishCaves_WestChest_0:: @ 080F00C4
	entity_list_end

Enemies_HyruleTownMinishCaves_WestChest:: @ 080F00D4
	entity_list_end

TileEntities_HyruleTownMinishCaves_WestChest:: @ 080F00E4
.ifdef EU
	tile_entity type=0x2, paramA=0x10, paramB=0x59, paramC=0x1c7
.else
	tile_entity type=0x2, paramA=0x10, paramB=0x58, paramC=0x1c7
.endif
	tile_entity_list_end

Room_HyruleTownMinishCaves_WestChest:: @ 080F00F4
	.4byte Entities_HyruleTownMinishCaves_WestChest_0
	.4byte 0
	.4byte Enemies_HyruleTownMinishCaves_WestChest
	.4byte TileEntities_HyruleTownMinishCaves_WestChest
	.4byte 0
	.4byte 0
	.4byte sub_unk3_HyruleTownMinishCaves_WestChest
	.4byte sub_StateChange_HyruleTownMinishCaves_WestChest

Entities_HyruleTownMinishCaves_Flippers_0:: @ 080F0114
	object_raw subtype=0x8, x=0xd8, y=0xb8, paramA=0x12, paramC=0xffff
	manager subtype=0x1e, x=0x90, y=0x70, paramB=0x400090, paramC=0x110000
	manager subtype=0xb, unknown=0x0, paramB=0x8, paramC=0x120011
	object_raw subtype=0xc, x=0xd8, y=0x28, paramA=0x2, paramB=0x14, paramC=0x120000
.ifndef EU
	ezlo_hint x=0x12, y=0xa, rx=0x9, ry=0x4, msg=0xb6d, flag=0xc7, flag2=0x14
.endif
	object_raw subtype=0x0, x=0x60, y=0x28, collision=1, paramA=0x57, paramB=0x800, paramC=0x130000
	entity_list_end

Enemies_HyruleTownMinishCaves_Flippers:: @ 080F0184
	entity_list_end

TileEntities_HyruleTownMinishCaves_Flippers:: @ 080F0194
	tile_entity type=0x3, paramA=0x14, paramB=0x46, paramC=0xd8, paramD=0x28
	tile_entity_list_end

gUnk_additional_8_HyruleTownMinishCaves_Flippers:: @ 080F01A4
	enemy_raw subtype=0x40, x=0xc8, y=0x48, unknown=0x2f, paramB=0xe0e0000, paramC=0x3000a0
	enemy_raw subtype=0x40, x=0xe8, y=0x48, unknown=0x2f, paramB=0xe0e0000, paramC=0x3000a0
	entity_list_end

Room_HyruleTownMinishCaves_Flippers:: @ 080F01D4
	.4byte Entities_HyruleTownMinishCaves_Flippers_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownMinishCaves_Flippers
	.4byte TileEntities_HyruleTownMinishCaves_Flippers
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_Flippers
	.4byte sub_StateChange_HyruleTownMinishCaves_Flippers
	.4byte gUnk_additional_8_HyruleTownMinishCaves_Flippers

Entities_HyruleTownMinishCaves_Librari_0:: @ 080F01F8
	entity_list_end

Enemies_HyruleTownMinishCaves_Librari:: @ 080F0208
	ezlo_hint x=0x14, y=0x4, rx=0x5, ry=0x3, msg=0xb16, flag=0xbf
	entity_list_end

TileEntities_HyruleTownMinishCaves_Librari:: @ 080F0228
	tile_entity_list_end

Room_HyruleTownMinishCaves_Librari:: @ 080F0230
	.4byte Entities_HyruleTownMinishCaves_Librari_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownMinishCaves_Librari
	.4byte TileEntities_HyruleTownMinishCaves_Librari
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_Librari
	.4byte sub_StateChange_HyruleTownMinishCaves_Librari

Entities_HyruleTownMinishCaves_WestFrozenChest_0:: @ 080F0250
	object_raw subtype=0x85, x=0x78, y=0x48, paramA=0x1, paramC=0x150000
	entity_list_end

Enemies_HyruleTownMinishCaves_WestFrozenChest:: @ 080F0270
	entity_list_end

TileEntities_HyruleTownMinishCaves_WestFrozenChest:: @ 080F0280
	tile_entity type=0x2, paramA=0x15, paramB=0x643f, paramC=0x107
	tile_entity_list_end

Room_HyruleTownMinishCaves_WestFrozenChest:: @ 080F0290
	.4byte Entities_HyruleTownMinishCaves_WestFrozenChest_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownMinishCaves_WestFrozenChest
	.4byte TileEntities_HyruleTownMinishCaves_WestFrozenChest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_WestFrozenChest
	.4byte sub_StateChange_HyruleTownMinishCaves_WestFrozenChest

Entities_HyruleTownMinishCaves_CrossIntersection_0:: @ 080F02B0
	object_raw subtype=0x5, x=0xc8, y=0x58
	object_raw subtype=0x5, x=0xc8, y=0x68
	object_raw subtype=0x5, x=0xe8, y=0x68
	object_raw subtype=0x5, x=0xd8, y=0x58, paramA=0x5f
	object_raw subtype=0x5, x=0xe8, y=0x58, paramA=0x5f
	object_raw subtype=0x5, x=0xd8, y=0x68, paramA=0x60
	entity_list_end

Enemies_HyruleTownMinishCaves_CrossIntersection:: @ 080F0320
	enemy_raw subtype=0x10, x=0xb8, y=0x38, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x108, y=0x48, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0xb8, y=0x78, paramA=0x1, paramB=0x1e00
	entity_list_end

TileEntities_HyruleTownMinishCaves_CrossIntersection:: @ 080F0360
	tile_entity_list_end

Room_HyruleTownMinishCaves_CrossIntersection:: @ 080F0368
	.4byte Entities_HyruleTownMinishCaves_CrossIntersection_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownMinishCaves_CrossIntersection
	.4byte TileEntities_HyruleTownMinishCaves_CrossIntersection
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_CrossIntersection
	.4byte sub_StateChange_HyruleTownMinishCaves_CrossIntersection

Entities_HyruleTownMinishCaves_SoutheastCorner_0:: @ 080F0388
	object_raw subtype=0x32, x=0x58, y=0x58
	entity_list_end

Enemies_HyruleTownMinishCaves_SoutheastCorner:: @ 080F03A8
	enemy_raw subtype=0x10, x=0xa8, y=0x48, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0xe8, y=0x58, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0xd8, y=0x38, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0x98, y=0x68, paramA=0x1, paramB=0x1e00
	enemy_raw subtype=0x10, x=0xc8, y=0x88, paramA=0x1, paramB=0x1e00
	entity_list_end

TileEntities_HyruleTownMinishCaves_SoutheastCorner:: @ 080F0408
	tile_entity_list_end

Room_HyruleTownMinishCaves_SoutheastCorner:: @ 080F0410
	.4byte Entities_HyruleTownMinishCaves_SoutheastCorner_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownMinishCaves_SoutheastCorner
	.4byte TileEntities_HyruleTownMinishCaves_SoutheastCorner
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_SoutheastCorner
	.4byte sub_StateChange_HyruleTownMinishCaves_SoutheastCorner

Entities_HyruleTownMinishCaves_Entrance2_0:: @ 080F0430
	entity_list_end

Enemies_HyruleTownMinishCaves_Entrance2:: @ 080F0440
	entity_list_end

TileEntities_HyruleTownMinishCaves_Entrance2:: @ 080F0450
	tile_entity_list_end

Room_HyruleTownMinishCaves_Entrance2:: @ 080F0458
	.4byte Entities_HyruleTownMinishCaves_Entrance2_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownMinishCaves_Entrance2
	.4byte TileEntities_HyruleTownMinishCaves_Entrance2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownMinishCaves_Entrance2
	.4byte sub_StateChange_HyruleTownMinishCaves_Entrance2

Entities_HyruleTownUnderground_Main_0:: @ 080F0478
	manager subtype=0x20, x=0x138, y=0xe8, paramB=0x11682e00, paramC=0x210e8
	manager subtype=0x20, x=0x1a8, y=0xf8, paramB=0x11682e00, paramC=0x310f8
	manager subtype=0x20, x=0x168, y=0x118, paramB=0x11682e00, paramC=0x41108
	object_raw subtype=0x6d, x=0x168, y=0xa8, paramA=0x1, paramB=0x11781168, paramC=0x50005
	object_raw subtype=0x27, x=0x168, y=0xd8
	object_raw subtype=0x41, x=0x288, y=0x108, paramA=0x1
	object_raw subtype=0x41, x=0x48, y=0x108, paramA=0x1
	entity_list_end

Enemies_HyruleTownUnderground_Main:: @ 080F04F8
	enemy_raw subtype=0x8, x=0x88, y=0xc8
	enemy_raw subtype=0x8, x=0xe8, y=0x128
	enemy_raw subtype=0x8, x=0x128, y=0x98
	enemy_raw subtype=0x8, x=0x198, y=0xb8
	enemy_raw subtype=0x8, x=0x228, y=0x128
	enemy_raw subtype=0x8, x=0x238, y=0xc8
	enemy_raw subtype=0x8, x=0x158, y=0x1e8
	enemy_raw subtype=0x8, x=0x1e8, y=0x1a8
	entity_list_end

TileEntities_HyruleTownUnderground_Main:: @ 080F0588
	tile_entity type=0x2, paramA=0x6, paramB=0x58, paramC=0x156
	tile_entity type=0x2, paramA=0x7, paramB=0x58, paramC=0x3ca
	tile_entity type=0x2, paramA=0x9, paramB=0x58, paramC=0x719
	tile_entity type=0x2, paramA=0xa, paramB=0x59, paramC=0x5d6
	tile_entity type=0x2, paramA=0x8, paramB=0x705c, paramC=0x3e2
	tile_entity_list_end

Room_HyruleTownUnderground_Main:: @ 080F05B8
	.4byte Entities_HyruleTownUnderground_Main_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownUnderground_Main
	.4byte TileEntities_HyruleTownUnderground_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownUnderground_Main
	.4byte sub_StateChange_HyruleTownUnderground_Main

Entities_HyruleTownUnderground_Well_0:: @ 080F05D8
	object_raw subtype=0x41, x=0x78, y=0x38, paramA=0x1
	entity_list_end

Enemies_HyruleTownUnderground_Well:: @ 080F05F8
	entity_list_end

TileEntities_HyruleTownUnderground_Well:: @ 080F0608
	tile_entity_list_end

Room_HyruleTownUnderground_Well:: @ 080F0610
	.4byte Entities_HyruleTownUnderground_Well_0
	.4byte 0x00000000
	.4byte Enemies_HyruleTownUnderground_Well
	.4byte TileEntities_HyruleTownUnderground_Well
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleTownUnderground_Well
	.4byte sub_StateChange_HyruleTownUnderground_Well

Entities_CastleGarden_Main_0:: @ 080F0630
.ifdef EU_JP
	ezlo_hint x=0x3c, y=0x6, rx=0x3, ry=0x1, msg=0xb58, flag=0x14
.else
	ezlo_hint x=0x3c, y=0x6, rx=0x3, ry=0x1, msg=0xb58, flag=0x13
.endif
	entity_list_end

gUnk_080F0650:: @ 080F0650
	npc_raw subtype=0x25, x=0x1e8, y=0x40, script=script_MinisterPothoIntroCastle
	npc_raw subtype=0x15, x=0x228, y=0x88, paramB=0x10c, script=script_GuardGarden4
	npc_raw subtype=0x15, x=0x1c8, y=0xc8, paramB=0x10d, script=script_GuardGarden4
	npc_raw subtype=0x15, x=0x1d8, y=0x1e8, paramB=0xe, script=script_GardGarden5
	npc_raw subtype=0x15, x=0x218, y=0x1e8, paramB=0xf, script=script_GuardEntry1
	entity_list_end

gUnk_080F06B0:: @ 080F06B0
	npc_raw subtype=0x4e, script=script_Npc4EIntroCastle
	npc_raw subtype=0x28, x=0x1c8, y=0x88, script=script_ZeldaIntroCastle
	entity_list_end

gUnk_080F06E0:: @ 080F06E0
	npc_raw subtype=0x24, x=0x1f8, y=0x28, script=script_KingDaltusIntroCeremony
	npc_raw subtype=0x15, x=0x1e8, y=0x68, paramB=0x10, script=script_GuardCarryingChest
	npc_raw subtype=0x15, x=0x208, y=0x68, paramA=0x1, paramB=0x11, script=script_GuardCarryingChest
	npc_raw subtype=0x15, x=0x1e8, y=0x48, paramA=0x2, paramB=0x12, script=script_GuardCarryingChest
	npc_raw subtype=0x15, x=0x208, y=0x48, paramA=0x3, paramB=0x13, script=script_GuardCarryingChest
	npc_raw subtype=0x15, x=0x1e8, y=0x1e8, paramA=0x4, paramB=0x14, script=script_GuardEntryLeft
	npc_raw subtype=0x15, x=0x208, y=0x1e8, paramA=0x5, paramB=0x15, script=script_GuardEntryRight
	npc_raw subtype=0x27, x=0x1f8, y=0x230, paramA=0x1, script=script_VaatiIntroCeremony
	entity_list_end

gUnk_080F0770:: @ 080F0770
	object_raw subtype=0x6a, x=0x1f8, y=0x78, unknown=0x4f, paramA=0xe, paramC=script_Object6AMonsterFromChest
	object_raw subtype=0x6a, x=0x1f8, y=0x78, unknown=0x4f, paramA=0xe, paramB=0x1001, paramC=script_Object6AMonsterFromChest
	object_raw subtype=0x6a, x=0x1f8, y=0x78, unknown=0x4f, paramA=0xe, paramB=0x2002, paramC=script_Object6AMonsterFromChest
	object_raw subtype=0x6a, x=0x1f8, y=0x78, unknown=0x4f, paramA=0xe, paramB=0x3003, paramC=script_Object6AMonsterFromChest
	object_raw subtype=0x6a, x=0x1f8, y=0x78, unknown=0x4f, paramA=0xe, paramB=0x4004, paramC=script_Object6AMonsterFromChest
	object_raw subtype=0x6a, x=0x1f8, y=0x78, unknown=0x4f, paramA=0xe, paramB=0x5005, paramC=script_Object6AMonsterFromChest
	object_raw subtype=0x6a, x=0x1f8, y=0x78, unknown=0x4f, paramA=0xe, paramB=0x6006, paramC=script_Object6AMonsterFromChest
	object_raw subtype=0x6a, x=0x1f8, y=0x78, unknown=0x4f, paramA=0xe, paramB=0x7007, paramC=script_Object6AMonsterFromChest
	entity_list_end

gUnk_080F0800:: @ 080F0800
	npc_raw subtype=0x15, x=0x188, y=0xa0, paramB=0x16, script=script_GuardGarden1
	npc_raw subtype=0x15, x=0x128, y=0x19b, paramB=0x17, script=script_GuardGarden3
	npc_raw subtype=0x15, x=0x268, y=0xa0, paramB=0x18, script=script_GuardGarden2
	npc_raw subtype=0x15, x=0x2c8, y=0x19b, paramB=0x19, script=script_GuardGarden3
	entity_list_end

gUnk_080F0850:: @ 080F0850
	npc_raw subtype=0x15, x=0x188, y=0xa0, paramB=0x1c, script=script_GuardEntry3
	entity_list_end

gUnk_080F0870:: @ 080F0870
	npc_raw subtype=0x15, x=0x128, y=0x19b, paramB=0x22, script=script_GuardGarden6
	entity_list_end

gUnk_080F0890:: @ 080F0890
	npc_raw subtype=0x15, x=0x128, y=0x198, unknown=0xf, collision=1, paramB=0x1e, script=0x0
	npc_raw subtype=0x15, x=0x98, y=0xc8, unknown=0xf, collision=1, paramA=0x1, paramB=0x1f, script=0x0
	npc_raw subtype=0x15, x=0x68, y=0x168, unknown=0xf, collision=1, paramA=0x2, paramB=0x20, script=0x0
	npc_raw subtype=0x15, x=0x48, y=0x168, unknown=0xf, collision=1, paramA=0x3, paramB=0x21, script=0x0
	npc_raw subtype=0x4e, script=script_GuardGarden7
	entity_list_end

gUnk_080F08F0:: @ 080F08F0
	npc_raw subtype=0x15, x=0x1ec, y=0x38, paramB=0x1a, script=script_GuardEntry2
	npc_raw subtype=0x15, x=0x204, y=0x38, paramB=0x1b, script=script_GuardEntry2
	entity_list_end

gUnk_080F0920:: @ 080F0920
	npc_raw subtype=0x4e, script=script_GuardGarden8
	entity_list_end

Entities_CastleGarden_Main_1:: @ 080F0940
	manager subtype=0x6, paramA=0x8
.ifdef EU_JP
	object_raw subtype=0x57, x=0x68, y=0x68, paramC=0xd0000
	object_raw subtype=0x57, x=0x3a8, y=0x178, paramC=0xf0000
	object_raw subtype=0x9c, x=0x348, y=0xe0, paramC=0x100000
.else
	object_raw subtype=0x57, x=0x68, y=0x68, paramC=0xc0000
	object_raw subtype=0x57, x=0x3a8, y=0x178, paramC=0xe0000
	object_raw subtype=0x9c, x=0x348, y=0xe0, paramC=0xf0000
.endif
	manager subtype=0x3, x=0x348, y=0xf0, unknown=0x0, paramB=0x102
	entity_list_end

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

Enemies_CastleGarden_Main:: @ 080F0A00
	entity_list_end

TileEntities_CastleGarden_Main:: @ 080F0A10
.ifdef EU_JP
	tile_entity type=0xa, paramA=0x1, paramB=0xe, paramC=0x179, paramD=0x168
	tile_entity type=0x2, paramA=0x12, paramB=0x643f, paramC=0x782
	tile_entity type=0x2, paramA=0x13, paramB=0x59, paramC=0x78a
.else
	tile_entity type=0xa, paramA=0x1, paramB=0xd, paramC=0x179, paramD=0x168
	tile_entity type=0x2, paramA=0x11, paramB=0x643f, paramC=0x782
	tile_entity type=0x2, paramA=0x12, paramB=0x59, paramC=0x78a
.endif
	tile_entity_list_end

gUnk_additional_8_CastleGarden_Main:: @ 080F0A30
	exit_region_raw centerX=0x3a8, centerY=0x48, halfWidth=0x3, halfHeight=0x3, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0x308, centerY=0x28, halfWidth=0x3, halfHeight=0x3, exitIndex=0xa, bitfield=0x1
	exit_region_raw centerX=0xe8, centerY=0x28, halfWidth=0x3, halfHeight=0x3, exitIndex=0xb, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_CastleGarden_Main:: @ 080F0A50
	exit_raw transition=0x1, destX=0x98, destY=0x30, destArea=0x27, destRoom=0x2, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_a_CastleGarden_Main:: @ 080F0A64
	exit_raw transition=0x1, destX=0x78, destY=0xb8, destArea=0x36, unknownA=0x1

gUnk_additional_b_CastleGarden_Main:: @ 080F0A78
	exit_raw transition=0x1, destX=0x78, destY=0xb8, destArea=0x36, destRoom=0x1, unknownA=0x1

gUnk_additional_c_CastleGarden_Main:: @ 080F0A8C
	.incbin "data_080D5360/gUnk_additional_c_CastleGarden_Main.bin"

gUnk_additional_d_CastleGarden_Main:: @ 080F0AAC
	.incbin "data_080D5360/gUnk_additional_d_CastleGarden_Main.bin"

gUnk_additional_e_CastleGarden_Main:: @ 080F0AC0
	.incbin "data_080D5360/gUnk_additional_e_CastleGarden_Main.bin"

gUnk_additional_f_CastleGarden_Main:: @ 080F0AD4
	.incbin "data_080D5360/gUnk_additional_f_CastleGarden_Main.bin"

Room_CastleGarden_Main:: @ 080F0AE8
	.4byte Entities_CastleGarden_Main_0
	.4byte Entities_CastleGarden_Main_1
	.4byte Enemies_CastleGarden_Main
	.4byte TileEntities_CastleGarden_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastleGarden_Main
	.4byte sub_StateChange_CastleGarden_Main
	.4byte gUnk_additional_8_CastleGarden_Main
	.4byte gUnk_additional_9_CastleGarden_Main
	.4byte gUnk_additional_a_CastleGarden_Main
	.4byte gUnk_additional_b_CastleGarden_Main
	.4byte gUnk_additional_c_CastleGarden_Main
	.4byte gUnk_additional_d_CastleGarden_Main
	.4byte gUnk_additional_e_CastleGarden_Main
	.4byte gUnk_additional_f_CastleGarden_Main

Entities_SimonsSimulation_Main_0:: @ 080F0B28
	object_raw subtype=0x69, x=0x98, y=0x88, unknown=0x4f, paramC=script_Object69SimonsSimulation
	entity_list_end

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

gUnk_additional_8_SimonsSimulation_Main:: @ 080F0E9C
	.incbin "data_080D5360/gUnk_additional_8_SimonsSimulation_Main.bin"

gUnk_additional_9_SimonsSimulation_Main:: @ 080F0FBC
	.incbin "data_080D5360/gUnk_additional_9_SimonsSimulation_Main.bin"

gUnk_additional_a_SimonsSimulation_Main:: @ 080F109C
	.incbin "data_080D5360/gUnk_additional_a_SimonsSimulation_Main.bin"

gUnk_additional_b_SimonsSimulation_Main:: @ 080F11EC
	.incbin "data_080D5360/gUnk_additional_b_SimonsSimulation_Main.bin"

gUnk_additional_c_SimonsSimulation_Main:: @ 080F12FC
	.incbin "data_080D5360/gUnk_additional_c_SimonsSimulation_Main.bin"

gUnk_additional_d_SimonsSimulation_Main:: @ 080F140C
	.incbin "data_080D5360/gUnk_additional_d_SimonsSimulation_Main.bin"

gUnk_additional_e_SimonsSimulation_Main:: @ 080F14DC
	.incbin "data_080D5360/gUnk_additional_e_SimonsSimulation_Main.bin"

gUnk_additional_f_SimonsSimulation_Main:: @ 080F15FC
	.incbin "data_080D5360/gUnk_additional_f_SimonsSimulation_Main.bin"

gUnk_additional_10_SimonsSimulation_Main:: @ 080F170C
	.incbin "data_080D5360/gUnk_additional_10_SimonsSimulation_Main.bin"

gUnk_additional_11_SimonsSimulation_Main:: @ 080F17DC
	.incbin "data_080D5360/gUnk_additional_11_SimonsSimulation_Main.bin"

gUnk_additional_12_SimonsSimulation_Main:: @ 080F188C
	.incbin "data_080D5360/gUnk_additional_12_SimonsSimulation_Main.bin"

gUnk_additional_13_SimonsSimulation_Main:: @ 080F195C
	.incbin "data_080D5360/gUnk_additional_13_SimonsSimulation_Main.bin"

gUnk_additional_14_SimonsSimulation_Main:: @ 080F1A2C
	.incbin "data_080D5360/gUnk_additional_14_SimonsSimulation_Main.bin"

gUnk_additional_15_SimonsSimulation_Main:: @ 080F1ADC
	.incbin "data_080D5360/gUnk_additional_15_SimonsSimulation_Main.bin"

gUnk_additional_16_SimonsSimulation_Main:: @ 080F1B8C
	.incbin "data_080D5360/gUnk_additional_16_SimonsSimulation_Main.bin"

Area_SimonsSimulation_Main:: @ 080F1BEC
	.4byte Entities_SimonsSimulation_Main_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_SimonsSimulation_Main
	.4byte sub_StateChange_SimonsSimulation_Main
	.4byte gUnk_additional_8_SimonsSimulation_Main
	.4byte gUnk_additional_9_SimonsSimulation_Main
	.4byte gUnk_additional_a_SimonsSimulation_Main
	.4byte gUnk_additional_b_SimonsSimulation_Main
	.4byte gUnk_additional_c_SimonsSimulation_Main
	.4byte gUnk_additional_d_SimonsSimulation_Main
	.4byte gUnk_additional_e_SimonsSimulation_Main
	.4byte gUnk_additional_f_SimonsSimulation_Main
	.4byte gUnk_additional_10_SimonsSimulation_Main
	.4byte gUnk_additional_11_SimonsSimulation_Main
	.4byte gUnk_additional_12_SimonsSimulation_Main
	.4byte gUnk_additional_13_SimonsSimulation_Main
	.4byte gUnk_additional_14_SimonsSimulation_Main
	.4byte gUnk_additional_15_SimonsSimulation_Main
	.4byte gUnk_additional_16_SimonsSimulation_Main

Entities_HouseInteriors2_Stranger_0:: @ 080F1C48
	npc_raw subtype=0x49, x=0x88, y=0x48, script=script_WindTribespeopleVisitor
	entity_list_end

gUnk_080F1C68:: @ 080F1C68
	npc_raw subtype=0x52, x=0x7a, y=0x22, paramB=0x5, script=script_SmallTownMinish
	entity_list_end

gUnk_080F1C88:: @ 080F1C88
	npc_raw subtype=0x52, x=0x72, y=0x22, paramB=0x6, script=script_SmallTownMinish
	entity_list_end

Entities_HouseInteriors2_Stranger_1:: @ 080F1CA8
	object_raw subtype=0x4d, x=0x8c, y=0x28, collision=1, paramA=0x24
	object_raw subtype=0x4d, x=0xa4, y=0x28, collision=1, paramA=0x23
	object_raw subtype=0x4e, x=0x40, y=0x80, collision=1, paramB=0x802
	object_raw subtype=0x4e, x=0x78, y=0x20, collision=1, paramB=0x900
	object_raw subtype=0x4f, x=0x78, y=0x98, paramB=0x2
	entity_list_end

Enemies_HouseInteriors2_Stranger:: @ 080F1D08
	entity_list_end

TileEntities_HouseInteriors2_Stranger:: @ 080F1D18
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_Stranger:: @ 080F1D20
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_Stranger.bin"

gUnk_additional_9_HouseInteriors2_Stranger:: @ 080F1D34
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors2_Stranger.bin"

Room_HouseInteriors2_Stranger:: @ 080F1D48
	.4byte Entities_HouseInteriors2_Stranger_0
	.4byte Entities_HouseInteriors2_Stranger_1
	.4byte Enemies_HouseInteriors2_Stranger
	.4byte TileEntities_HouseInteriors2_Stranger
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_Stranger
	.4byte sub_StateChange_HouseInteriors2_Stranger
	.4byte gUnk_additional_8_HouseInteriors2_Stranger
	.4byte gUnk_additional_9_HouseInteriors2_Stranger

Entities_HouseInteriors2_WestOracle_0:: @ 080F1D70
	manager subtype=0x26, paramA=0x9, paramB=0x28ff
	entity_list_end

gUnk_080F1D90:: @ 080F1D90
	npc_raw subtype=0x17, x=0x78, y=0x68, script=script_DinMovedIn
	entity_list_end

gUnk_080F1DB0:: @ 080F1DB0
	npc_raw subtype=0x18, x=0x78, y=0x68, script=script_NayruMovedIn
	entity_list_end

gUnk_080F1DD0:: @ 080F1DD0
	npc_raw subtype=0x19, x=0x78, y=0x68, script=script_FaroreMovedIn
	entity_list_end

Entities_HouseInteriors2_WestOracle_1:: @ 080F1DF0
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramB=0x2
	object_raw subtype=0x4e, x=0x8, y=0x38, collision=1, paramB=0xa03
	object_raw subtype=0x4e, x=0xb8, y=0xa0, collision=1, paramB=0x802
	object_raw subtype=0x5, x=0x58, y=0x48, paramB=0x1, paramC=0x330000
	object_raw subtype=0x5, x=0x68, y=0x48, paramB=0x1, paramC=0x340000
	object_raw subtype=0x4d, x=0x48, y=0x48, collision=1, paramA=0x6
	entity_list_end

Enemies_HouseInteriors2_WestOracle:: @ 080F1E60
	entity_list_end

TileEntities_HouseInteriors2_WestOracle:: @ 080F1E70
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_WestOracle:: @ 080F1E78
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_WestOracle.bin"

gUnk_additional_a_HouseInteriors2_WestOracle:: @ 080F1E8C
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors2_WestOracle.bin"

gUnk_additional_9_HouseInteriors2_WestOracle:: @ 080F1EA0
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors2_WestOracle.bin"

Room_HouseInteriors2_WestOracle:: @ 080F1EC0
	.4byte Entities_HouseInteriors2_WestOracle_0
	.4byte Entities_HouseInteriors2_WestOracle_1
	.4byte Enemies_HouseInteriors2_WestOracle
	.4byte TileEntities_HouseInteriors2_WestOracle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_WestOracle
	.4byte sub_StateChange_HouseInteriors2_WestOracle
	.4byte gUnk_additional_8_HouseInteriors2_WestOracle
	.4byte gUnk_additional_9_HouseInteriors2_WestOracle
	.4byte gUnk_additional_a_HouseInteriors2_WestOracle

Entities_HouseInteriors2_2_0:: @ 080F1EEC
	manager subtype=0x26, paramA=0xa, paramB=0x28ff
	entity_list_end

Entities_HouseInteriors2_2_1:: @ 080F1F0C
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramB=0x2
	object_raw subtype=0x4e, x=0xb8, y=0xa0, collision=1, paramB=0x802
	object_raw subtype=0x4e, x=0x8, y=0x48, collision=1, paramB=0x903
	object_raw subtype=0x4d, x=0xb8, y=0x48, collision=1
	object_raw subtype=0x4d, x=0x88, y=0x48, collision=1
	object_raw subtype=0x5, x=0xa8, y=0x58
	object_raw subtype=0x5, x=0xb8, y=0x58
	object_raw subtype=0x5, x=0xc8, y=0x58
	entity_list_end

Enemies_HouseInteriors2_2:: @ 080F1F9C
	entity_list_end

TileEntities_HouseInteriors2_2:: @ 080F1FAC
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_2:: @ 080F1FB4
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_2.bin"

gUnk_additional_9_HouseInteriors2_2:: @ 080F1FC8
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors2_2.bin"

gUnk_additional_a_HouseInteriors2_2:: @ 080F1FDC
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors2_2.bin"

Room_HouseInteriors2_2:: @ 080F1FEC
	.4byte Entities_HouseInteriors2_2_0
	.4byte Entities_HouseInteriors2_2_1
	.4byte Enemies_HouseInteriors2_2
	.4byte TileEntities_HouseInteriors2_2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_2
	.4byte sub_StateChange_Ruins_Beanstalk5
	.4byte gUnk_additional_8_HouseInteriors2_2
	.4byte gUnk_additional_9_HouseInteriors2_2
	.4byte gUnk_additional_a_HouseInteriors2_2

Entities_HouseInteriors2_3_0:: @ 080F2018
	manager subtype=0x26, paramA=0xa, paramB=0x28ff
	entity_list_end

Entities_HouseInteriors2_3_1:: @ 080F2038
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramB=0x2
	object_raw subtype=0x4e, x=0xb8, y=0xa0, collision=1, paramB=0x802
	object_raw subtype=0x4e, x=0x8, y=0x48, collision=1, paramB=0x903
	object_raw subtype=0x4c, x=0x9c, y=0x48, collision=1
	object_raw subtype=0x4c, x=0xb4, y=0x48, collision=1
	object_raw subtype=0x5, x=0xc8, y=0x48
	object_raw subtype=0x5, x=0xc8, y=0x58
	entity_list_end

Enemies_HouseInteriors2_3:: @ 080F20B8
	entity_list_end

TileEntities_HouseInteriors2_3:: @ 080F20C8
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_3:: @ 080F20D0
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_3.bin"

gUnk_additional_9_HouseInteriors2_3:: @ 080F20E4
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors2_3.bin"

gUnk_additional_a_HouseInteriors2_3:: @ 080F20F8
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors2_3.bin"

Room_HouseInteriors2_3:: @ 080F2108
	.4byte Entities_HouseInteriors2_3_0
	.4byte Entities_HouseInteriors2_3_1
	.4byte Enemies_HouseInteriors2_3
	.4byte TileEntities_HouseInteriors2_3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_3
	.4byte sub_StateChange_Ruins_Beanstalk6
	.4byte gUnk_additional_8_HouseInteriors2_3
	.4byte gUnk_additional_9_HouseInteriors2_3
	.4byte gUnk_additional_a_HouseInteriors2_3

Entities_HouseInteriors2_DrLeft_0:: @ 080F2134
	npc_raw subtype=0x41, x=0x78, y=0x68, script=script_DrLeft
	manager subtype=0x26, paramA=0xd, paramB=0x28ff
	object_raw subtype=0x8d, x=0x48, y=0x48, paramC=0x840000
	entity_list_end

gUnk_080F2174:: @ 080F2174
	npc_raw subtype=0x41, x=0x78, y=0x6c, unknown=0xf, paramA=0x1, script=0x0
	entity_list_end

gUnk_080F2194:: @ 080F2194
	object_raw subtype=0x8c, x=0x98, y=0x58, collision=1, paramA=0x1, paramB=0x1, paramC=0x6f0000
	entity_list_end

gUnk_080F21B4:: @ 080F21B4
	object_raw subtype=0x5d, x=0x78, y=0xa8, paramA=0x1, paramB=0x102
	entity_list_end

Entities_HouseInteriors2_DrLeft_1:: @ 080F21D4
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramB=0x2
	object_raw subtype=0x4e, x=0x88, y=0x28, collision=1, paramB=0x800
	object_raw subtype=0x4e, x=0xb0, y=0xa0, collision=1, paramB=0x902
	object_raw subtype=0x4e, x=0xa8, y=0x40, collision=1, paramB=0xa00
	object_raw subtype=0x4d, x=0xb8, y=0x78, collision=1
	object_raw subtype=0x4d, x=0x78, y=0x70, collision=1, paramA=0x3b
	object_raw subtype=0x93, x=0x84, y=0x70
	manager subtype=0x6, paramA=0xb
	entity_list_end

Enemies_HouseInteriors2_DrLeft:: @ 080F2264
	entity_list_end

TileEntities_HouseInteriors2_DrLeft:: @ 080F2274
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_DrLeft:: @ 080F227C
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_DrLeft.bin"

gUnk_additional_9_HouseInteriors2_DrLeft:: @ 080F2290
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors2_DrLeft.bin"

gUnk_additional_a_HouseInteriors2_DrLeft:: @ 080F22A4
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors2_DrLeft.bin"

gUnk_additional_d_HouseInteriors2_DrLeft:: @ 080F22B8
	.incbin "data_080D5360/gUnk_additional_d_HouseInteriors2_DrLeft.bin"

gUnk_additional_b_HouseInteriors2_DrLeft:: @ 080F22D0
	exit_region_raw centerX=0x48, centerY=0x4a, halfWidth=0x8, halfHeight=0x2, exitIndex=0xc, bitfield=0x1
	exit_region_list_end

gUnk_additional_c_HouseInteriors2_DrLeft:: @ 080F22E0
	exit_raw transition=0x1, destX=0x34, destY=0x20c, destArea=0x2, unknownA=0x1, unknownB=0x1, unknownC=0x2

Room_HouseInteriors2_DrLeft:: @ 080F22F4
	.4byte Entities_HouseInteriors2_DrLeft_0
	.4byte Entities_HouseInteriors2_DrLeft_1
	.4byte Enemies_HouseInteriors2_DrLeft
	.4byte TileEntities_HouseInteriors2_DrLeft
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_DrLeft
	.4byte sub_StateChange_HouseInteriors2_DrLeft
	.4byte gUnk_additional_8_HouseInteriors2_DrLeft
	.4byte gUnk_additional_9_HouseInteriors2_DrLeft
	.4byte gUnk_additional_a_HouseInteriors2_DrLeft
	.4byte gUnk_additional_b_HouseInteriors2_DrLeft
	.4byte gUnk_additional_c_HouseInteriors2_DrLeft
	.4byte gUnk_additional_d_HouseInteriors2_DrLeft

Entities_HouseInteriors2_Romio_0:: @ 080F232C
	npc_raw subtype=0x35, x=0x48, y=0x68, unknown=0xf, paramA=0x3, paramB=0x3, script=0x0
	object_raw subtype=0x8d, x=0x98, y=0x28, paramC=0x850000
	ezlo_hint type=0x2, x=0x16, y=0xa, rx=0x2, ry=0x2, msg=0xb24, flag=0xc3
	entity_list_end

gUnk_additional_c_HouseInteriors2_Romio:: @ 080F236C
	npc_raw subtype=0x6, x=0x78, y=0x48, paramA=0xd, paramB=0x400, script=script_TownspersonInDogHouse
	entity_list_end

gUnk_080F238C:: @ 080F238C
	npc_raw subtype=0x6, x=0xb8, y=0x74, paramA=0xd, paramB=0x400, script=script_DogPersonInCatHouse
	npc_raw subtype=0x6, x=0xa4, y=0x74, paramA=0xe, paramB=0x400, script=script_CatPersonTalkingToDogPerson
	entity_list_end

gUnk_080F23BC:: @ 080F23BC
	npc_raw subtype=0x7, x=0x88, y=0x48, paramA=0x4, paramB=0x400, script=script_Kid4
	entity_list_end

Entities_HouseInteriors2_Romio_1:: @ 080F23DC
	object_raw subtype=0x4f, x=0x78, y=0x98, paramB=0x2
	object_raw subtype=0x4e, x=0x38, y=0x80, collision=1, paramB=0xd02
	object_raw subtype=0x5, x=0x28, y=0x28
	object_raw subtype=0x5, x=0x68, y=0x28
	object_raw subtype=0x5, x=0x78, y=0x28
	manager subtype=0x6, paramA=0x9
	object_raw subtype=0x38, x=0xc0, y=0x4e, unknown=0x0, paramA=0x3c
	entity_list_end

Enemies_HouseInteriors2_Romio:: @ 080F245C
	entity_list_end

TileEntities_HouseInteriors2_Romio:: @ 080F246C
	tile_entity_list_end

gUnk_additional_d_HouseInteriors2_Romio:: @ 080F2474
	.incbin "data_080D5360/gUnk_additional_d_HouseInteriors2_Romio.bin"

gUnk_additional_8_HouseInteriors2_Romio:: @ 080F2488
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_Romio.bin"

gUnk_additional_9_HouseInteriors2_Romio:: @ 080F2498
	exit_region_raw centerX=0x48, centerY=0x2a, halfWidth=0x8, halfHeight=0x2, exitIndex=0xa, bitfield=0x1
	exit_region_raw centerX=0x98, centerY=0x2a, halfWidth=0x8, halfHeight=0x2, exitIndex=0xb, bitfield=0x1
	exit_region_list_end

gUnk_additional_a_HouseInteriors2_Romio:: @ 080F24B0
	exit_raw transition=0x1, destX=0x2e4, destY=0x2be, destArea=0x2, unknownA=0x2, unknownB=0x1, unknownC=0x2

gUnk_additional_b_HouseInteriors2_Romio: @ 080F24C4
	exit_raw transition=0x1, destX=0x304, destY=0x2be, destArea=0x2, unknownA=0x2, unknownB=0x1, unknownC=0x2

Room_HouseInteriors2_Romio:: @ 080F24D8
	.4byte Entities_HouseInteriors2_Romio_0
	.4byte Entities_HouseInteriors2_Romio_1
	.4byte Enemies_HouseInteriors2_Romio
	.4byte TileEntities_HouseInteriors2_Romio
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_Romio
	.4byte sub_StateChange_HouseInteriors2_Romio
	.4byte gUnk_additional_8_HouseInteriors2_Romio
	.4byte gUnk_additional_9_HouseInteriors2_Romio
	.4byte gUnk_additional_a_HouseInteriors2_Romio
	.4byte gUnk_additional_b_HouseInteriors2_Romio
	.4byte gUnk_additional_c_HouseInteriors2_Romio
	.4byte gUnk_additional_d_HouseInteriors2_Romio

Entities_HouseInteriors2_Julietta_0:: @ 080F2510
	npc_raw subtype=0x2c, x=0x38, y=0x78, unknown=0xf, collision=1, paramA=0x4, paramB=0x4000, script=0x0
	manager subtype=0x26, paramA=0xa, paramB=0x28ff
	object_raw subtype=0x8b, x=0x68, y=0x48, collision=1, paramB=0x1, paramC=0x3e0000
	ezlo_hint type=0x2, x=0x10, y=0xc, rx=0x5, ry=0x1, msg=0xb5a, flag=0xc6
	ezlo_hint type=0x2, x=0x6, y=0x8, rx=0x2, ry=0x1, msg=0xb5b, flag=0xc7
	entity_list_end

gUnk_080F2570:: @ 080F2570
	npc_raw subtype=0x6, x=0xb0, y=0x6d, paramA=0xe, paramB=0x400, script=script_CatPerson
	entity_list_end

gUnk_080F2590:: @ 080F2590
	npc_raw subtype=0x6, x=0x78, y=0x68, paramA=0x7, paramB=0x400, script=script_OldLadyCatHouse1
	npc_raw subtype=0x6, x=0x48, y=0x78, paramA=0xe, paramB=0x400, script=script_CatPerson
	entity_list_end

gUnk_080F25C0:: @ 080F25C0
	object_raw subtype=0x8c, x=0x6c, y=0x36, collision=1, paramC=0x6c0000
	object_raw subtype=0x5a, x=0xb0, y=0x80, collision=1, paramA=0x2, paramB=0x1
	ezlo_hint x=0x4, y=0x8, rx=0x6, ry=0x4, msg=0xb60, flag=0xcc
	entity_list_end

gUnk_080F2600:: @ 080F2600
	npc_raw subtype=0x7, x=0x28, y=0x98, paramA=0x3, paramB=0x400, script=script_Kid4
	entity_list_end

Entities_HouseInteriors2_Julietta_1:: @ 080F2620
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramB=0x2
	manager subtype=0x6, paramA=0x8
	object_raw subtype=0x5, x=0xb8, y=0x98
	object_raw subtype=0x5, x=0xc8, y=0x98
	entity_list_end

Enemies_HouseInteriors2_Julietta:: @ 080F2670
	entity_list_end

TileEntities_HouseInteriors2_Julietta:: @ 080F2680
	tile_entity type=0x5, paramB=0x1b00, paramC=0x20a, paramD=0x61b
	tile_entity type=0x5, paramB=0x1b00, paramC=0x20b, paramD=0x61b
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_Julietta:: @ 080F2698
	exit_region_raw centerX=0xb8, centerY=0x4a, halfWidth=0x8, halfHeight=0x2, exitIndex=0x9, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_HouseInteriors2_Julietta:: @ 080F26A8
	exit_raw transition=0x1, destX=0x348, destY=0x2be, destArea=0x2, unknownA=0x2, unknownB=0x1, unknownC=0x6

gUnk_additional_a_HouseInteriors2_Julietta:: @ 080F26BC
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors2_Julietta.bin"

Room_HouseInteriors2_Julietta:: @ 080F26CC
	.4byte Entities_HouseInteriors2_Julietta_0
	.4byte Entities_HouseInteriors2_Julietta_1
	.4byte Enemies_HouseInteriors2_Julietta
	.4byte TileEntities_HouseInteriors2_Julietta
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_Julietta
	.4byte sub_StateChange_HouseInteriors2_Julietta
	.4byte gUnk_additional_8_HouseInteriors2_Julietta
	.4byte gUnk_additional_9_HouseInteriors2_Julietta
	.4byte gUnk_additional_a_HouseInteriors2_Julietta

Entities_HouseInteriors2_Percy_0:: @ 080F26F8
	manager subtype=0x26, paramA=0x8, paramB=0xff
	entity_list_end

gUnk_additional_9_HouseInteriors2_Percy:: @ 080F2718
	npc_raw subtype=0x6, x=0x78, y=0x58, paramA=0xc, paramB=0x400, script=script_MoblinLadyDisguised
	manager subtype=0x23, x=0x68, y=0x48, paramA=0x2, paramB=0x4002, paramC=0x80000000
	manager subtype=0x23, x=0x88, y=0x48, paramA=0x2, paramB=0x4002, paramC=0x80010000
	entity_list_end

gUnk_additional_a_HouseInteriors2_Percy:: @ 080F2758
	npc_raw subtype=0x3c, x=0x78, y=0x58, script=script_MoblinLady
	manager subtype=0x23, x=0x68, y=0x48, paramB=0x2, paramC=0x430000
	manager subtype=0x23, x=0x88, y=0x48, paramB=0x2, paramC=0x430000
	entity_list_end

gUnk_080F2798:: @ 080F2798
	npc_raw subtype=0x3a, x=0x78, y=0x58, paramB=0x1, script=script_PercyInside
	manager subtype=0x23, x=0x68, y=0x48, paramB=0x2, paramC=0x430000
	manager subtype=0x23, x=0x88, y=0x48, paramB=0x2, paramC=0x430000
	entity_list_end

gUnk_080F27D8:: @ 080F27D8
	npc_raw subtype=0x3a, x=0x78, y=0x58, paramB=0x4, script=script_PercyInside
	manager subtype=0x23, x=0x68, y=0x48, paramB=0x2, paramC=0x430000
	manager subtype=0x23, x=0x88, y=0x48, paramB=0x2, paramC=0x430000
	entity_list_end

Entities_HouseInteriors2_Percy_1:: @ 080F2818
	object_raw subtype=0x4f, x=0x78, y=0xa8, paramB=0x2
	object_raw subtype=0x4d, x=0x68, y=0x28, collision=1
	entity_list_end

Enemies_HouseInteriors2_Percy:: @ 080F2848
	entity_list_end

TileEntities_HouseInteriors2_Percy:: @ 080F2858
	tile_entity_list_end

gUnk_080F2860:: @ 080F2860
	manager subtype=0x0, unknown=0x0, paramA=0x80


gUnk_additional_8_HouseInteriors2_Percy:: @ 080F2870
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_Percy.bin"

Room_HouseInteriors2_Percy:: @ 080F2888
	.4byte Entities_HouseInteriors2_Percy_0
	.4byte Entities_HouseInteriors2_Percy_1
	.4byte Enemies_HouseInteriors2_Percy
	.4byte TileEntities_HouseInteriors2_Percy
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_Percy
	.4byte sub_StateChange_HouseInteriors2_Percy
	.4byte gUnk_additional_8_HouseInteriors2_Percy
	.4byte gUnk_additional_9_HouseInteriors2_Percy
	.4byte gUnk_additional_a_HouseInteriors2_Percy

Entities_HouseInteriors2_EastOracle_0:: @ 080F28B4
	object_raw subtype=0x8d, x=0x38, y=0x28, paramC=0xa80000
	entity_list_end

gUnk_080F28D4:: @ 080F28D4
	npc_raw subtype=0x17, x=0x78, y=0x48, script=script_DinMovedIn
	entity_list_end

gUnk_080F28F4:: @ 080F28F4
	npc_raw subtype=0x18, x=0x78, y=0x48, script=script_NayruMovedIn
	entity_list_end

gUnk_080F2914:: @ 080F2914
	npc_raw subtype=0x19, x=0x78, y=0x48, script=script_FaroreMovedIn
	entity_list_end

Entities_HouseInteriors2_EastOracle_1:: @ 080F2934
	object_raw subtype=0x4f, x=0x78, y=0x98, paramB=0x2
	object_raw subtype=0x4d, x=0x58, y=0x28, collision=1, paramA=0x1
	object_raw subtype=0x4c, x=0x6c, y=0x28, collision=1, paramA=0x2, paramB=0x1
	object_raw subtype=0x4d, x=0x84, y=0x28, collision=1, paramA=0x3
	object_raw subtype=0x4c, x=0x9c, y=0x28, collision=1, paramA=0x3
	object_raw subtype=0x5, x=0xc8, y=0x68
	object_raw subtype=0x5, x=0xc8, y=0x78
	entity_list_end

Enemies_HouseInteriors2_EastOracle:: @ 080F29B4
	entity_list_end

TileEntities_HouseInteriors2_EastOracle:: @ 080F29C4
	tile_entity_list_end

Room_HouseInteriors2_EastOracle:: @ 080F29CC
	.4byte Entities_HouseInteriors2_EastOracle_0
	.4byte Entities_HouseInteriors2_EastOracle_1
	.4byte Enemies_HouseInteriors2_EastOracle
	.4byte TileEntities_HouseInteriors2_EastOracle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_EastOracle
	.4byte sub_StateChange_HouseInteriors2_EastOracle

Entities_HouseInteriors2_A_0:: @ 080F29EC
	manager subtype=0x26, paramA=0x8, paramB=0x8ff
	object_raw subtype=0x8d, x=0x38, y=0x28, paramC=0xa90000
	entity_list_end

Entities_HouseInteriors2_A_1:: @ 080F2A1C
	object_raw subtype=0x4f, x=0x78, y=0x98, paramB=0x2
	object_raw subtype=0x4d, x=0xb8, y=0x28, collision=1
	object_raw subtype=0x5, x=0x58, y=0x28
	object_raw subtype=0x5, x=0x68, y=0x28
	entity_list_end

Enemies_HouseInteriors2_A:: @ 080F2A6C
	entity_list_end

TileEntities_HouseInteriors2_A:: @ 080F2A7C
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_A:: @ 080F2A84
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_A.bin"

Room_HouseInteriors2_A:: @ 080F2A9C
	.4byte Entities_HouseInteriors2_A_0
	.4byte Entities_HouseInteriors2_A_1
	.4byte Enemies_HouseInteriors2_A
	.4byte TileEntities_HouseInteriors2_A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_A
	.4byte sub_StateChange_Ruins_Beanstalk7
	.4byte gUnk_additional_8_HouseInteriors2_A

Entities_HouseInteriors2_B_0:: @ 080F2AC0
	manager subtype=0x26, paramA=0x8, paramB=0xff
	object_raw subtype=0x8d, x=0x38, y=0x28, paramC=0xaa0000
	entity_list_end

Entities_HouseInteriors2_B_1:: @ 080F2AF0
	object_raw subtype=0x4f, x=0x78, y=0x98, paramB=0x2
	object_raw subtype=0x4d, x=0x58, y=0x28, collision=1, paramA=0x5
	object_raw subtype=0x5, x=0xb8, y=0x28
	object_raw subtype=0x5, x=0xc8, y=0x28
	entity_list_end

Enemies_HouseInteriors2_B:: @ 080F2B40
	entity_list_end

TileEntities_HouseInteriors2_B:: @ 080F2B50
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_B:: @ 080F2B58
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_B.bin"

Room_HouseInteriors2_B:: @ 080F2B78
	.4byte Entities_HouseInteriors2_B_0
	.4byte Entities_HouseInteriors2_B_1
	.4byte Enemies_HouseInteriors2_B
	.4byte TileEntities_HouseInteriors2_B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_B
	.4byte sub_StateChange_Ruins_Beanstalk8
	.4byte gUnk_additional_8_HouseInteriors2_B

Entities_HouseInteriors2_Cucco_0:: @ 080F2B9C
	enemy_raw subtype=0xc, x=0x70, y=0x40
	enemy_raw subtype=0xc, x=0x40, y=0x38
	enemy_raw subtype=0xc, x=0x58, y=0x48
	enemy_raw subtype=0xc, x=0x88, y=0x38
	enemy_raw subtype=0xc, x=0x68, y=0x50
	enemy_raw subtype=0xc, x=0xb8, y=0x58
	enemy_raw subtype=0xc, x=0xa0, y=0x78
	enemy_raw subtype=0xc, x=0x88, y=0x50
	enemy_raw subtype=0xc, x=0x70, y=0x70
	enemy_raw subtype=0xc, x=0xa0, y=0x40
.ifndef EU_JP
	manager subtype=0x1e, x=0x10, y=0x40, paramB=0x300030, paramC=0xd20000
.endif
	entity_list_end

	npc_raw subtype=0x45, x=0x98, y=0x38, script=script_AnjuInside
	entity_list_end

Entities_HouseInteriors2_Cucco_1:: @ 080F2C7C
	object_raw subtype=0x4f, x=0x78, y=0x98, paramB=0x2
	object_raw subtype=0x4e, x=0x20, y=0x60, collision=1, paramB=0xb03
	object_raw subtype=0x5, x=0xc8, y=0x58
	object_raw subtype=0x5, x=0xc8, y=0x68
	object_raw subtype=0x5, x=0xc8, y=0x78
	object_raw subtype=0x4d, x=0x30, y=0x28, collision=1, paramA=0x13
	object_raw subtype=0x4d, x=0x78, y=0x28, collision=1, paramA=0x1
	object_raw subtype=0x4d, x=0x88, y=0x28, collision=1, paramA=0x1
	manager subtype=0x6, paramA=0x9
	entity_list_end

Enemies_HouseInteriors2_Cucco:: @ 080F2D1C
	entity_list_end

TileEntities_HouseInteriors2_Cucco:: @ 080F2D2C
	tile_entity_list_end

gUnk_additional_b_HouseInteriors2_Cucco:: @ 080F2D34
	.incbin "data_080D5360/gUnk_additional_b_HouseInteriors2_Cucco.bin"

gUnk_additional_8_HouseInteriors2_Cucco:: @ 080F2D48
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_Cucco.bin"

gUnk_additional_9_HouseInteriors2_Cucco:: @ 080F2D58
	exit_region_raw centerX=0x58, centerY=0x2a, halfWidth=0x8, halfHeight=0x2, exitIndex=0xa, bitfield=0x1
	exit_region_list_end

gUnk_additional_a_HouseInteriors2_Cucco:: @ 080F2D68
	exit_raw transition=0x1, destX=0x3b4, destY=0x31c, destArea=0x2, unknownA=0x2, unknownB=0x1, unknownC=0x6

Room_HouseInteriors2_Cucco:: @ 080F2D7C
	.4byte Entities_HouseInteriors2_Cucco_0
	.4byte Entities_HouseInteriors2_Cucco_1
	.4byte Enemies_HouseInteriors2_Cucco
	.4byte TileEntities_HouseInteriors2_Cucco
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_Cucco
	.4byte sub_StateChange_Ruins_Beanstalk9
	.4byte gUnk_additional_8_HouseInteriors2_Cucco
	.4byte gUnk_additional_9_HouseInteriors2_Cucco
	.4byte gUnk_additional_a_HouseInteriors2_Cucco
	.4byte gUnk_additional_b_HouseInteriors2_Cucco

Entities_HouseInteriors2_LinksHouseEntrance_0:: @ 080F2DAC
	ezlo_hint x=0xc, y=0xe, rx=0x3, ry=0x1, msg=0xb51, flag=0xc8
	entity_list_end

Entities_HouseInteriors2_LinksHouseEntrance_1:: @ 080F2DCC
	object_raw subtype=0x4d, x=0x94, y=0x28, collision=1, paramA=0x3
	object_raw subtype=0x4d, x=0xa8, y=0x28, collision=1, paramA=0x6
	object_raw subtype=0x4f, x=0x78, y=0x98, paramB=0x2
	object_raw subtype=0x4f, x=0xe8, y=0x58, paramA=0x1, paramB=0x1
	object_raw subtype=0x4f, x=0x58, y=0x8, paramA=0x1
	entity_list_end

gUnk_080F2E2C:: @ 080F2E2C
	object_raw subtype=0x5d, x=0x78, y=0x88, paramA=0x4, paramB=0x100
	entity_list_end

Enemies_HouseInteriors2_LinksHouseEntrance:: @ 080F2E4C
	entity_list_end

TileEntities_HouseInteriors2_LinksHouseEntrance:: @ 080F2E5C
	tile_entity_list_end

Room_HouseInteriors2_LinksHouseEntrance:: @ 080F2E64
	.4byte Entities_HouseInteriors2_LinksHouseEntrance_0
	.4byte Entities_HouseInteriors2_LinksHouseEntrance_1
	.4byte Enemies_HouseInteriors2_LinksHouseEntrance
	.4byte TileEntities_HouseInteriors2_LinksHouseEntrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_LinksHouseEntrance
	.4byte sub_StateChange_HouseInteriors2_LinksHouseEntrance

Entities_HouseInteriors2_LinksHouseSmith_0:: @ 080F2E84
	entity_list_end

gUnk_080F2E94:: @ 080F2E94
	npc_raw subtype=0x22, x=0x80, y=0x50, script=script_SmithIntro2
	npc_raw subtype=0x28, x=0x60, y=0x50, script=script_ZeldaTalkToSmith
	entity_list_end

gUnk_080F2EC4:: @ 080F2EC4
	npc_raw subtype=0x22, x=0xb8, y=0x60, script=script_SmithAtLinksHouse
	entity_list_end

Entities_HouseInteriors2_LinksHouseSmith_1:: @ 080F2EE4
	object_raw subtype=0x5, x=0x28, y=0x28
	object_raw subtype=0x5, x=0x28, y=0x38
	object_raw subtype=0x4d, x=0x68, y=0x28, collision=1, paramA=0x5
	object_raw subtype=0x4d, x=0x78, y=0x28, collision=1, paramA=0x5
	object_raw subtype=0x4d, x=0x88, y=0x28, collision=1, paramA=0x5
	object_raw subtype=0x4d, x=0xb0, y=0x28, collision=1, paramA=0x9
	object_raw subtype=0x4d, x=0x98, y=0x58, collision=1, paramA=0x6
	object_raw subtype=0x4f, x=0x8, y=0x58, paramA=0x1, paramB=0x3
	entity_list_end

Enemies_HouseInteriors2_LinksHouseSmith:: @ 080F2F74
	entity_list_end

TileEntities_HouseInteriors2_LinksHouseSmith:: @ 080F2F84
	tile_entity type=0x2, paramA=0x16, paramB=0x56, paramC=0x85, paramD=0x1
	tile_entity_list_end

Room_HouseInteriors2_LinksHouseSmith:: @ 080F2F94
	.4byte Entities_HouseInteriors2_LinksHouseSmith_0
	.4byte Entities_HouseInteriors2_LinksHouseSmith_1
	.4byte Enemies_HouseInteriors2_LinksHouseSmith
	.4byte TileEntities_HouseInteriors2_LinksHouseSmith
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_LinksHouseSmith
	.4byte sub_StateChange_HouseInteriors2_LinksHouseSmith

Entities_HouseInteriors2_Dampe_0:: @ 080F2FB4
	object_raw subtype=0x8d, x=0xa8, y=0x28, paramC=0xac0000
	entity_list_end

gUnk_080F2FD4:: @ 080F2FD4
	npc_raw subtype=0x40, x=0x78, y=0x58, script=script_DampeInside2
	entity_list_end

Entities_HouseInteriors2_Dampe_1:: @ 080F2FF4
	object_raw subtype=0x4f, x=0x78, y=0x98, paramB=0x2
	object_raw subtype=0x5, x=0xc8, y=0x68
	object_raw subtype=0x5, x=0xc8, y=0x78
	object_raw subtype=0x5, x=0xa8, y=0x78
	object_raw subtype=0x5, x=0xb8, y=0x78
	object_raw subtype=0x4d, x=0xc8, y=0x28, collision=1, paramA=0x1
	entity_list_end

Enemies_HouseInteriors2_Dampe:: @ 080F3064
	entity_list_end

TileEntities_HouseInteriors2_Dampe:: @ 080F3074
	tile_entity_list_end

Room_HouseInteriors2_Dampe:: @ 080F307C
	.4byte Entities_HouseInteriors2_Dampe_0
	.4byte Entities_HouseInteriors2_Dampe_1
	.4byte Enemies_HouseInteriors2_Dampe
	.4byte TileEntities_HouseInteriors2_Dampe
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_Dampe
	.4byte sub_StateChange_HouseInteriors2_Dampe

Entities_HouseInteriors2_StockwellLakeHouse_0:: @ 080F309C
	manager subtype=0x26, paramA=0x8, paramB=0xff
	npc_raw subtype=0x35, x=0x68, y=0x48, script=script_ShopwellsDog
	entity_list_end

gUnk_080F30CC:: @ 080F30CC
	object_raw subtype=0x6a, x=0x98, y=0x58, paramA=0x6
	entity_list_end

Entities_HouseInteriors2_StockwellLakeHouse_1:: @ 080F30EC
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x20, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x28, collision=1, paramA=0x3
	object_raw subtype=0x4d, x=0x78, y=0x28, collision=1, paramA=0x1
	object_raw subtype=0x4d, x=0x88, y=0x28, collision=1, paramA=0x1
	object_raw subtype=0x38, x=0xc0, y=0x3e, unknown=0x0, paramA=0x45
	entity_list_end

Enemies_HouseInteriors2_StockwellLakeHouse:: @ 080F314C
	entity_list_end

TileEntities_HouseInteriors2_StockwellLakeHouse:: @ 080F315C
	tile_entity_list_end

gUnk_additional_8_HouseInteriors2_StockwellLakeHouse:: @ 080F3164
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors2_StockwellLakeHouse.bin"

Room_HouseInteriors2_StockwellLakeHouse:: @ 080F3174
	.4byte Entities_HouseInteriors2_StockwellLakeHouse_0
	.4byte Entities_HouseInteriors2_StockwellLakeHouse_1
	.4byte Enemies_HouseInteriors2_StockwellLakeHouse
	.4byte TileEntities_HouseInteriors2_StockwellLakeHouse
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_StockwellLakeHouse
	.4byte sub_StateChange_HouseInteriors2_StockwellLakeHouse
	.4byte gUnk_additional_8_HouseInteriors2_StockwellLakeHouse

Entities_HouseInteriors2_LinksHouseBedroom_0:: @ 080F3198
	ezlo_hint x=0x4, y=0x6, rx=0x7, ry=0x1, msg=0xb52, flag=0xc9
	ezlo_hint x=0xc, y=0x4, rx=0x1, ry=0x1, msg=0xb52, flag=0xc9
	ezlo_hint x=0x4, y=0xe, rx=0x1, ry=0x1, msg=0xb53, flag=0xca
	entity_list_end

gUnk_080F31D8:: @ 080F31D8
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69LinksHouseBed
	entity_list_end

Entities_HouseInteriors2_LinksHouseBedroom_1:: @ 080F31F8
	object_raw subtype=0x4f, x=0x58, y=0x8, paramA=0x1
	entity_list_end

Enemies_HouseInteriors2_LinksHouseBedroom:: @ 080F3218
	entity_list_end

TileEntities_HouseInteriors2_LinksHouseBedroom:: @ 080F3228
	tile_entity_list_end

Room_HouseInteriors2_LinksHouseBedroom:: @ 080F3230
	.4byte Entities_HouseInteriors2_LinksHouseBedroom_0
	.4byte Entities_HouseInteriors2_LinksHouseBedroom_1
	.4byte Enemies_HouseInteriors2_LinksHouseBedroom
	.4byte TileEntities_HouseInteriors2_LinksHouseBedroom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors2_LinksHouseBedroom
	.4byte sub_StateChange_HouseInteriors2_LinksHouseBedroom

Entities_HouseInteriors4_Carpenter_0:: @ 080F3250
	entity_list_end

gUnk_080F3260:: @ 080F3260
	npc_raw subtype=0x29, x=0x78, y=0x70, script=script_MutohInMill
	npc_raw subtype=0x2a, x=0x38, y=0x88, script=script_CarpenterOutsideTown
	npc_raw subtype=0x2a, x=0x58, y=0x88, paramA=0x1, script=script_CarpenterOutsideTown
	npc_raw subtype=0x2a, x=0x98, y=0x88, paramA=0x3, script=script_CarpenterOutsideTown
	entity_list_end
	npc_raw subtype=0x2a, x=0x60, y=0x58, paramA=0x2, script=script_CarpenterOutsideTown
	entity_list_end

Entities_HouseInteriors4_Carpenter_1:: @ 080F32D0
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x10, paramB=0x2
	manager subtype=0x26, paramA=0xa, paramB=0x28ff
	object_raw subtype=0x4d, x=0xa0, y=0x48, collision=1, paramA=0x17
	object_raw subtype=0x4e, x=0x8, y=0x68, collision=1, paramB=0x803
	object_raw subtype=0x4e, x=0x68, y=0x40, collision=1, paramB=0x900
	object_raw subtype=0x38, x=0xc0, y=0x6e, unknown=0x0, paramA=0x49, paramB=0x1
	object_raw subtype=0x5, x=0xb8, y=0x98
	object_raw subtype=0x5, x=0xc8, y=0x98
	entity_list_end

Enemies_HouseInteriors4_Carpenter:: @ 080F3360
	entity_list_end

TileEntities_HouseInteriors4_Carpenter:: @ 080F3370
	tile_entity_list_end

gUnk_additional_8_HouseInteriors4_Carpenter:: @ 080F3378
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors4_Carpenter.bin"

gUnk_additional_9_HouseInteriors4_Carpenter:: @ 080F338C
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors4_Carpenter.bin"

gUnk_additional_a_HouseInteriors4_Carpenter:: @ 080F33A0
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors4_Carpenter.bin"

Room_HouseInteriors4_Carpenter:: @ 080F33C8
	.4byte Entities_HouseInteriors4_Carpenter_0
	.4byte Entities_HouseInteriors4_Carpenter_1
	.4byte Enemies_HouseInteriors4_Carpenter
	.4byte TileEntities_HouseInteriors4_Carpenter
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors4_Carpenter
	.4byte sub_StateChange_HouseInteriors4_Carpenter
	.4byte gUnk_additional_8_HouseInteriors4_Carpenter
	.4byte gUnk_additional_9_HouseInteriors4_Carpenter
	.4byte gUnk_additional_a_HouseInteriors4_Carpenter

Entities_HouseInteriors4_Swiftblade_0:: @ 080F33F4
	npc_raw subtype=0x30, x=0x78, y=0x28, paramA=0x1, script=script_BladeBrothers
	entity_list_end

Entities_HouseInteriors4_Swiftblade_1:: @ 080F3414
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x10, paramB=0x2
	object_raw subtype=0x4d, x=0x4c, y=0x18, collision=1, paramA=0x7, paramB=0x1
	object_raw subtype=0x4d, x=0xa4, y=0x18, collision=1, paramA=0x7, paramB=0x2
	object_raw subtype=0x4d, x=0x10, y=0x38, collision=1, paramA=0x7, paramB=0xc
	object_raw subtype=0x4d, x=0x10, y=0x78, collision=1, paramA=0x7, paramB=0x6
	object_raw subtype=0x4d, x=0xe0, y=0x38, collision=1, paramA=0x7, paramB=0xb
	object_raw subtype=0x4d, x=0xe0, y=0x78, collision=1, paramA=0x7, paramB=0x5
	entity_list_end

gUnk_080F3494:: @ 080F3494
	.incbin "data_080D5360/gUnk_080F3494.bin"

Enemies_HouseInteriors4_Swiftblade:: @ 080F35A4
	entity_list_end

TileEntities_HouseInteriors4_Swiftblade:: @ 080F35B4
	tile_entity type=0x7, paramB=0x3500
	tile_entity_list_end

Room_HouseInteriors4_Swiftblade:: @ 080F35C4
	.4byte Entities_HouseInteriors4_Swiftblade_0
	.4byte Entities_HouseInteriors4_Swiftblade_1
	.4byte Enemies_HouseInteriors4_Swiftblade
	.4byte TileEntities_HouseInteriors4_Swiftblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors4_Swiftblade
	.4byte sub_StateChange_HouseInteriors4_Swiftblade

Entities_HouseInteriors4_RanchHouseWest_0:: @ 080F35E4
	manager subtype=0x26, paramA=0x9, paramB=0xff
	entity_list_end

gUnk_080F3604:: @ 080F3604
	npc_raw subtype=0x1e, x=0x68, y=0x58, script=scriptMalonInside
	entity_list_end

Entities_HouseInteriors4_RanchHouseWest_1:: @ 080F3624
	object_raw subtype=0x4f, x=0x68, y=0x98, paramA=0x10, paramB=0x2
	object_raw subtype=0x4f, x=0xc8, y=0x58, paramA=0x11, paramB=0x1
	object_raw subtype=0x4f, x=0xe0, y=0x58, paramA=0xf
	object_raw subtype=0x4e, x=0x38, y=0x80, collision=1, paramB=0x802
	object_raw subtype=0x38, x=0x30, y=0x5e, unknown=0x0, paramA=0x4c, paramB=0x1
	object_raw subtype=0x5, x=0xa8, y=0x38, paramA=0x37, paramB=0x2, paramC=0x4d0000
	object_raw subtype=0x5, x=0xa8, y=0x38
	object_raw subtype=0x5, x=0xa8, y=0x28
	object_raw subtype=0x5, x=0x98, y=0x38
	object_raw subtype=0x5, x=0xa8, y=0x78
	object_raw subtype=0x5, x=0x98, y=0x78
	entity_list_end

Enemies_HouseInteriors4_RanchHouseWest:: @ 080F36E4
	entity_list_end

TileEntities_HouseInteriors4_RanchHouseWest:: @ 080F36F4
	tile_entity_list_end

gUnk_080F36FC:: @ 080F36FC
	object_raw subtype=0x5d, x=0xb8, y=0x58, paramB=0x101
	object_raw subtype=0x5d, x=0x68, y=0x88, paramA=0x5, paramB=0x100
	entity_list_end

gUnk_additional_8_HouseInteriors4_RanchHouseWest:: @ 080F372C
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors4_RanchHouseWest.bin"

gUnk_additional_9_HouseInteriors4_RanchHouseWest:: @ 080F3740
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors4_RanchHouseWest.bin"

Room_HouseInteriors4_RanchHouseWest:: @ 080F3758
	.4byte Entities_HouseInteriors4_RanchHouseWest_0
	.4byte Entities_HouseInteriors4_RanchHouseWest_1
	.4byte Enemies_HouseInteriors4_RanchHouseWest
	.4byte TileEntities_HouseInteriors4_RanchHouseWest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors4_RanchHouseWest
	.4byte sub_StateChange_HouseInteriors4_RanchHouseWest
	.4byte gUnk_additional_8_HouseInteriors4_RanchHouseWest
	.4byte gUnk_additional_9_HouseInteriors4_RanchHouseWest

Entities_HouseInteriors4_RanchHouseEast_0:: @ 080F3780
	npc_raw subtype=0x31, x=0xb0, y=0x48, unknown=0xf, paramB=0x101, script=0x0
	manager subtype=0x26, paramA=0x9, paramB=0xff
	entity_list_end
	npc_raw subtype=0x1d, x=0x48, y=0x38, script=script_TalonInside
	entity_list_end

gUnk_080F37D0:: @ 080F37D0
	npc_raw subtype=0x1d, x=0x48, y=0x38, script=script_TalonInside2
	entity_list_end

Entities_HouseInteriors4_RanchHouseEast_1:: @ 080F37F0
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x10, paramB=0x2
	object_raw subtype=0x4f, x=0x8, y=0x58, paramA=0x11, paramB=0x3
	object_raw subtype=0x4d, x=0x70, y=0x28, collision=1, paramA=0x13
	object_raw subtype=0x4d, x=0x90, y=0x28, collision=1, paramA=0x13
	object_raw subtype=0x4d, x=0x80, y=0x38, collision=1, paramA=0x13
	object_raw subtype=0x4d, x=0x2a, y=0x28, collision=1, paramA=0x12
	object_raw subtype=0x4d, x=0x39, y=0x28, collision=1, paramA=0x12
	object_raw subtype=0x4d, x=0xac, y=0x28, collision=1, paramA=0x11
	object_raw subtype=0x4d, x=0xc4, y=0x28, collision=1, paramA=0x11
	object_raw subtype=0x5, x=0x28, y=0x78
	object_raw subtype=0x5, x=0x28, y=0x68
	object_raw subtype=0x4e, x=0xc8, y=0x80, collision=1, paramB=0x802
	entity_list_end

Enemies_HouseInteriors4_RanchHouseEast:: @ 080F38C0
	entity_list_end

TileEntities_HouseInteriors4_RanchHouseEast:: @ 080F38D0
	tile_entity_list_end

gUnk_additional_8_HouseInteriors4_RanchHouseEast:: @ 080F38D8
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors4_RanchHouseEast.bin"

gUnk_additional_9_HouseInteriors4_RanchHouseEast:: @ 080F38EC
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors4_RanchHouseEast.bin"

Room_HouseInteriors4_RanchHouseEast:: @ 080F38F4
	.4byte Entities_HouseInteriors4_RanchHouseEast_0
	.4byte Entities_HouseInteriors4_RanchHouseEast_1
	.4byte Enemies_HouseInteriors4_RanchHouseEast
	.4byte TileEntities_HouseInteriors4_RanchHouseEast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors4_RanchHouseEast
	.4byte sub_StateChange_HouseInteriors4_RanchHouseEast
	.4byte gUnk_additional_8_HouseInteriors4_RanchHouseEast
	.4byte gUnk_additional_9_HouseInteriors4_RanchHouseEast

Entities_HouseInteriors4_FarmHouse_0:: @ 080F391C
	manager subtype=0x26, paramA=0x8, paramB=0x8ff
	entity_list_end

Entities_HouseInteriors4_FarmHouse_1:: @ 080F393C
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x10, paramB=0x2
	object_raw subtype=0x4d, x=0x48, y=0x28, collision=1, paramA=0x5
	object_raw subtype=0x4d, x=0x58, y=0x28, collision=1, paramA=0x5
	object_raw subtype=0x4d, x=0x68, y=0x28, collision=1, paramA=0x6
	object_raw subtype=0x5, x=0x28, y=0x38
	object_raw subtype=0x5, x=0x28, y=0x48
	object_raw subtype=0x5, x=0xb8, y=0x78
	object_raw subtype=0x5, x=0xa8, y=0x78
	entity_list_end

Enemies_HouseInteriors4_FarmHouse:: @ 080F39CC
	entity_list_end

TileEntities_HouseInteriors4_FarmHouse:: @ 080F39DC
	tile_entity_list_end

gUnk_additional_8_HouseInteriors4_FarmHouse:: @ 080F39E4
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors4_FarmHouse.bin"

Room_HouseInteriors4_FarmHouse:: @ 080F39F4
	.4byte Entities_HouseInteriors4_FarmHouse_0
	.4byte Entities_HouseInteriors4_FarmHouse_1
	.4byte Enemies_HouseInteriors4_FarmHouse
	.4byte TileEntities_HouseInteriors4_FarmHouse
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors4_FarmHouse
	.4byte sub_StateChange_Ruins_LadderToTektites0
	.4byte gUnk_additional_8_HouseInteriors4_FarmHouse

Entities_HouseInteriors4_MayorLakeCabin_0:: @ 080F3A18
	manager subtype=0x26, paramA=0xa, paramB=0x28ff
	object_raw subtype=0x73, x=0xa8, y=0x58, paramB=0xb
	entity_list_end

gUnk_080F3A48:: @ 080F3A48
	object_raw subtype=0x8c, x=0x78, y=0x36, collision=1, paramA=0x2, paramC=0x720000
	entity_list_end

Entities_HouseInteriors4_MayorLakeCabin_1:: @ 080F3A68
	object_raw subtype=0x4f, x=0xb8, y=0x30, paramA=0x18
	object_raw subtype=0x4f, x=0x78, y=0xb8, paramA=0x10, paramB=0x2
	object_raw subtype=0x5, x=0xb8, y=0x98
	object_raw subtype=0x5, x=0xc8, y=0x98
	manager subtype=0x6, paramA=0x8
	object_raw subtype=0x80, x=0xb8, y=0x40
	object_raw subtype=0x8a, x=0x78, y=0x48
	object_raw subtype=0x8a, x=0x2c, y=0x48, paramA=0x1
	object_raw subtype=0x8a, x=0x30, y=0x80, paramA=0x2
	object_raw subtype=0x5a, x=0x30, y=0x80, collision=1, paramA=0x2, paramB=0x1
	entity_list_end

Enemies_HouseInteriors4_MayorLakeCabin:: @ 080F3B18
	entity_list_end

TileEntities_HouseInteriors4_MayorLakeCabin:: @ 080F3B28
	tile_entity type=0x5, paramB=0x1d00, paramC=0x202, paramD=0x61d
	tile_entity type=0x5, paramB=0x1d00, paramC=0x203, paramD=0x61d
	tile_entity_list_end

gUnk_additional_8_HouseInteriors4_MayorLakeCabin:: @ 080F3B40
	exit_region_raw centerX=0xb0, centerY=0x38, halfWidth=0x10, halfHeight=0x2, exitIndex=0x9, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_HouseInteriors4_MayorLakeCabin:: @ 080F3B50
	exit_raw transition=0x1, destX=0x78, destY=0x318, destArea=0x11, destRoom=0x4, unknownA=0x1

gUnk_additional_a_HouseInteriors4_MayorLakeCabin:: @ 080F3B64
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors4_MayorLakeCabin.bin"

gUnk_additional_b_HouseInteriors4_MayorLakeCabin:: @ 080F3B74
	.incbin "data_080D5360/gUnk_additional_b_HouseInteriors4_MayorLakeCabin.bin"

Room_HouseInteriors4_MayorLakeCabin:: @ 080F3BC4
	.4byte Entities_HouseInteriors4_MayorLakeCabin_0
	.4byte Entities_HouseInteriors4_MayorLakeCabin_1
	.4byte Enemies_HouseInteriors4_MayorLakeCabin
	.4byte TileEntities_HouseInteriors4_MayorLakeCabin
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors4_MayorLakeCabin
	.4byte sub_StateChange_HouseInteriors4_MayorLakeCabin
	.4byte gUnk_additional_8_HouseInteriors4_MayorLakeCabin
	.4byte gUnk_additional_9_HouseInteriors4_MayorLakeCabin
	.4byte gUnk_additional_a_HouseInteriors4_MayorLakeCabin
	.4byte gUnk_additional_b_HouseInteriors4_MayorLakeCabin

Entities_LakeHylia_Main_0:: @ 080F3BF4
	manager subtype=0x4
	object_raw subtype=0x0, x=0x210, y=0xec, collision=1, paramA=0x63, paramB=0x400, paramC=0x80000
	object_raw subtype=0x0, x=0xe8, y=0x28, collision=1, paramA=0x63, paramB=0x800, paramC=0x90000
	object_raw subtype=0x0, x=0x1a8, y=0x314, collision=1, paramA=0x63, paramB=0x400, paramC=0xa0000
	entity_list_end

gUnk_080F3C44:: @ 080F3C44
	npc_raw subtype=0x1b, x=0x148, y=0x108, paramA=0x3, script=script_TingleSiblings
	entity_list_end

gUnk_080F3C64:: @ 080F3C64
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69AfterToD
	npc_raw subtype=0x42, x=0x128, y=0x180, script=script_KingGustafHologram
	entity_list_end

gUnk_080F3C94:: @ 080F3C94
	manager subtype=0x6, paramA=0xc
	entity_list_end

Entities_LakeHylia_Main_1:: @ 080F3CB4
	manager subtype=0x6, paramA=0x8
	manager subtype=0x3, x=0xb8, y=0x1f0, unknown=0x0, paramB=0x102
	manager subtype=0x3, x=0x128, y=0x188, unknown=0x0, paramA=0x6, paramB=0x102
	object_raw subtype=0x9c, x=0x2a8, y=0x2d0, paramC=0x60000
	manager subtype=0x3, x=0x2a8, y=0x2e0, unknown=0x0, paramB=0x102
	object_raw subtype=0x19, x=0x120, y=0x44, collision=1, paramA=0x6, paramB=0x2
	object_raw subtype=0x19, x=0x2a0, y=0x384, collision=1, paramA=0x7, paramB=0x2
	manager subtype=0x20, x=0x28, y=0x218, paramB=0x10282e00, paramC=0x71208
	entity_list_end

Enemies_LakeHylia_Main:: @ 080F3D44
	enemy_raw subtype=0x1, x=0xa8, y=0x88, paramB=0xc1c0000, paramC=0x2700080
	enemy_raw subtype=0x0, x=0x118, y=0xa8, paramB=0xc1c0000, paramC=0x2700080
	enemy_raw subtype=0x1, x=0x68, y=0x1e8, paramB=0x1a0e0000, paramC=0x1500020
	enemy_raw subtype=0x0, x=0xd8, y=0x288, paramB=0xc1e0000, paramC=0x23000c0
	enemy_raw subtype=0x0, x=0xa8, y=0x2c8, paramB=0xe160000, paramC=0x2a00070
	enemy_raw subtype=0x1, x=0xf8, y=0x2e8, paramB=0xe160000, paramC=0x2a00070
	enemy_raw subtype=0x1, x=0x38, y=0x2c8, paramB=0x240e0000, paramC=0x2800020
	enemy_raw subtype=0x1, x=0x78, y=0x378, paramB=0x240e0000, paramC=0x2800020
	enemy_raw subtype=0x1, x=0xe8, y=0x378, paramB=0xa100000, paramC=0x3500090
	enemy_raw subtype=0x0, x=0x1f0, y=0x140, paramA=0x1
	enemy_raw subtype=0x0, x=0x278, y=0x128, paramA=0x1
	enemy_raw subtype=0x0, x=0x2d0, y=0x190, paramA=0x1
	enemy_raw subtype=0x0, x=0x258, y=0x1c0, paramA=0x1
	enemy_raw subtype=0x0, x=0x250, y=0x270, paramA=0x1
	enemy_raw subtype=0x0, x=0x200, y=0x2e0, paramA=0x1
	enemy_raw subtype=0x0, x=0x1b0, y=0x270, paramA=0x1
	enemy_raw subtype=0x15, x=0xd8, y=0x2d8
	enemy_raw subtype=0x3, x=0x1d8, y=0x228, paramB=0xe200000, paramC=0x1f001b0
	enemy_raw subtype=0x3, x=0x248, y=0x238, paramB=0xe200000, paramC=0x1f001b0
	enemy_raw subtype=0x0, x=0x120, y=0x200, paramA=0x1
	enemy_raw subtype=0x0, x=0x170, y=0x1f0, paramA=0x1
	entity_list_end

gUnk_080F3EA4:: @ 080F3EA4
	.incbin "data_080D5360/gUnk_080F3EA4.bin"

TileEntities_LakeHylia_Main:: @ 080F3FE4
	tile_entity type=0x5, paramB=0x1600, paramC=0xd86, paramD=0x616
	tile_entity_list_end

gUnk_additional_8_LakeHylia_Main:: @ 080F3FF4
	exit_region_raw centerX=0x2d8, centerY=0x108, halfWidth=0x3, halfHeight=0x3, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0x2a8, centerY=0x31e, halfWidth=0x3, halfHeight=0x3, exitIndex=0xa, bitfield=0x1
	exit_region_raw centerX=0x1b8, centerY=0x1c8, halfWidth=0x3, halfHeight=0x3, exitIndex=0xb, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_LakeHylia_Main:: @ 080F4014
	exit_raw transition=0x1, destX=0x98, destY=0x30, destArea=0x27, destRoom=0x1, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_a_LakeHylia_Main:: @ 080F4028
	exit_raw transition=0x1, destX=0x78, destY=0x18, destArea=0x11, destRoom=0x4, unknownA=0x1, unknownC=0x4

gUnk_additional_b_LakeHylia_Main:: @ 080F403C
	exit_raw transition=0x1, destX=0x378, destY=0x68, destArea=0x35, destRoom=0x8, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_c_LakeHylia_Main:: @ 080F4050
	exit_region_raw centerX=0x98, centerY=0x208, halfWidth=0x3, halfHeight=0x3, exitIndex=0xd, bitfield=0x1
	exit_region_list_end

gUnk_additional_d_LakeHylia_Main:: @ 080F4060
	exit_raw transition=0x1, destX=0x48, destY=0x68, destArea=0x35, destRoom=0x8, unknownA=0x1, unknownB=0x2, unknownC=0x4

Room_LakeHylia_Main:: @ 080F4074
	.4byte Entities_LakeHylia_Main_0
	.4byte Entities_LakeHylia_Main_1
	.4byte Enemies_LakeHylia_Main
	.4byte TileEntities_LakeHylia_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_LakeHylia_Main
	.4byte sub_StateChange_LakeHylia_Main
	.4byte gUnk_additional_8_LakeHylia_Main
	.4byte gUnk_additional_9_LakeHylia_Main
	.4byte gUnk_additional_a_LakeHylia_Main
	.4byte gUnk_additional_b_LakeHylia_Main
	.4byte gUnk_additional_c_LakeHylia_Main
	.4byte gUnk_additional_d_LakeHylia_Main

Entities_LakeHylia_Beanstalk_0:: @ 080F40AC
	entity_list_end

Entities_LakeHylia_Beanstalk_1:: @ 080F40BC
.ifdef EU_JP
	object_raw subtype=0x2c, x=0x228, y=0x58, paramA=0x7, paramB=0xae00
.else
	object_raw subtype=0x2c, x=0x228, y=0x58, paramA=0x7, paramB=0xb000
.endif
	manager subtype=0x6, paramA=0x8
	entity_list_end

Enemies_LakeHylia_Beanstalk:: @ 080F40EC
	enemy_raw subtype=0x0, x=0x1f0, y=0x140, paramA=0x1
	enemy_raw subtype=0x0, x=0x278, y=0x128, paramA=0x1
	enemy_raw subtype=0x0, x=0x2d0, y=0x190, paramA=0x1
	enemy_raw subtype=0x0, x=0x258, y=0x1c0, paramA=0x1
	enemy_raw subtype=0x0, x=0x250, y=0x270, paramA=0x1
	enemy_raw subtype=0x0, x=0x200, y=0x2e0, paramA=0x1
	enemy_raw subtype=0x0, x=0x1b0, y=0x270, paramA=0x1
	enemy_raw subtype=0x0, x=0x170, y=0x1f0, paramA=0x1
	enemy_raw subtype=0x0, x=0x120, y=0x200, paramA=0x1
	entity_list_end

TileEntities_LakeHylia_Beanstalk:: @ 080F418C
	tile_entity_list_end

gUnk_additional_8_LakeHylia_Beanstalk:: @ 080F4194
	exit_region_raw centerX=0x228, centerY=0x4, halfWidth=0x8, halfHeight=0x4, exitIndex=0x9, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_LakeHylia_Beanstalk:: @ 080F41A4
	exit_raw transition=0x1, destX=0x78, destY=0x98, destArea=0xd, destRoom=0x11, unknownA=0x1

Room_LakeHylia_Beanstalk:: @ 080F41B8
	.4byte Entities_LakeHylia_Beanstalk_0
	.4byte Entities_LakeHylia_Beanstalk_1
	.4byte Enemies_LakeHylia_Beanstalk
	.4byte TileEntities_LakeHylia_Beanstalk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_LakeHylia_Beanstalk
	.4byte sub_StateChange_Ruins_LadderToTektites1
	.4byte gUnk_additional_8_LakeHylia_Beanstalk
	.4byte gUnk_additional_9_LakeHylia_Beanstalk

Entities_LakeWoodsCave_Main_0:: @ 080F41E0
	npc_raw subtype=0x4e, x=0x308, y=0x178, paramA=0x9, script=script_MysteriousWall
	manager subtype=0x4
	object_raw subtype=0x41, x=0x248, y=0x198, paramA=0x1
	entity_list_end

Enemies_LakeWoodsCave_Main:: @ 080F4220
	enemy_raw subtype=0x14, x=0x2b8, y=0x288, collision=1
	enemy_raw subtype=0x14, x=0x2a8, y=0x298, collision=1
	enemy_raw subtype=0x14, x=0x2b8, y=0x2c8, collision=1
	enemy_raw subtype=0x14, x=0x2b8, y=0x198, collision=1
	enemy_raw subtype=0x17, x=0x248, y=0x228, collision=1
	entity_list_end

TileEntities_LakeWoodsCave_Main:: @ 080F4280
	tile_entity type=0x2, paramA=0x33, paramB=0x715c, paramC=0xa1b
	tile_entity type=0x2, paramA=0x34, paramB=0x57, paramC=0x9ea
	tile_entity type=0x2, paramA=0x35, paramB=0x725c, paramC=0x9eb
	tile_entity_list_end

Room_LakeWoodsCave_Main:: @ 080F42A0
	.4byte Entities_LakeWoodsCave_Main_0
	.4byte 0x00000000
	.4byte Enemies_LakeWoodsCave_Main
	.4byte TileEntities_LakeWoodsCave_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_LakeWoodsCave_Main
	.4byte sub_StateChange_Ruins_LadderToTektites2

Entities_HyliaDigCaves_Middle_0:: @ 080F42C0
	manager subtype=0x4
	entity_list_end

Enemies_HyliaDigCaves_Middle:: @ 080F42E0
	entity_list_end

TileEntities_HyliaDigCaves_Middle:: @ 080F42F0
	tile_entity type=0x2, paramA=0x36, paramB=0x57, paramC=0x146
	tile_entity_list_end

Room_HyliaDigCaves_Middle:: @ 080F4300
	.4byte Entities_HyliaDigCaves_Middle_0
	.4byte 0x00000000
	.4byte Enemies_HyliaDigCaves_Middle
	.4byte TileEntities_HyliaDigCaves_Middle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyliaDigCaves_Middle
	.4byte sub_StateChange_Ruins_LadderToTektites3

Entities_HyliaDigCaves_North_0:: @ 080F4320
	npc_raw subtype=0x4e, x=0x1c8, y=0xc8, paramA=0xa, script=script_MysteriousWall
	manager subtype=0x4
	object_raw subtype=0x41, x=0x248, y=0x78, paramA=0x1
	object_raw subtype=0x41, x=0x308, y=0x78, paramA=0x1
	object_raw subtype=0x41, x=0x398, y=0x58, paramA=0x1
	entity_list_end

Enemies_HyliaDigCaves_North:: @ 080F4380
	enemy_raw subtype=0x14, x=0x178, y=0x38, paramA=0x2
	enemy_raw subtype=0x14, x=0x258, y=0xa8, paramA=0x2
	enemy_raw subtype=0x14, x=0xf8, y=0xa8, paramA=0x2
	enemy_raw subtype=0x14, x=0x148, y=0xb8, paramA=0x2
	enemy_raw subtype=0xd, x=0x1a8, y=0x148
	entity_list_end

TileEntities_HyliaDigCaves_North:: @ 080F43E0
	tile_entity type=0x2, paramA=0x37, paramB=0x323f, paramC=0xb4
	tile_entity type=0x2, paramA=0x38, paramB=0x323f, paramC=0xa73
	tile_entity type=0x2, paramA=0x39, paramB=0x323f, paramC=0x4a0
	tile_entity type=0x2, paramA=0x3a, paramB=0x715c, paramC=0x14d
	tile_entity type=0x2, paramA=0x3b, paramB=0x705c, paramC=0x15b
	tile_entity type=0x2, paramA=0x3c, paramB=0x6f5c, paramC=0x2f9
	tile_entity type=0x2, paramA=0x3d, paramB=0x6e5c, paramC=0x569
	tile_entity type=0x2, paramA=0x3e, paramB=0x725c, paramC=0x561
	tile_entity_list_end

Room_HyliaDigCaves_North:: @ 080F4428
	.4byte Entities_HyliaDigCaves_North_0
	.4byte 0x00000000
	.4byte Enemies_HyliaDigCaves_North
	.4byte TileEntities_HyliaDigCaves_North
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyliaDigCaves_North
	.4byte sub_StateChange_Ruins_LadderToTektites4

Entities_CastorWildsDigCave_Main_0:: @ 080F4448
	manager subtype=0x4
	entity_list_end

Enemies_CastorWildsDigCave_Main:: @ 080F4468
	enemy_raw subtype=0x14, x=0x338, y=0x118
	entity_list_end

TileEntities_CastorWildsDigCave_Main:: @ 080F4488
	tile_entity type=0x2, paramA=0x40, paramB=0x323f, paramC=0x46e
	tile_entity type=0x2, paramA=0x41, paramB=0x6e5c, paramC=0x476
	tile_entity_list_end

Room_CastorWildsDigCave_Main:: @ 080F44A0
	.4byte Entities_CastorWildsDigCave_Main_0
	.4byte 0x00000000
	.4byte Enemies_CastorWildsDigCave_Main
	.4byte TileEntities_CastorWildsDigCave_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CastorWildsDigCave_Main
	.4byte sub_StateChange_Ruins_LadderToTektites5

Entities_HyruleDigCaves_Main_0:: @ 080F44C0
	manager subtype=0x4
	entity_list_end

Enemies_HyruleDigCaves_Main:: @ 080F44E0
	enemy_raw subtype=0x7, x=0x2a8, y=0x208, collision=1
	enemy_raw subtype=0x7, x=0x2a8, y=0x248, collision=1
	enemy_raw subtype=0x7, x=0x218, y=0x238, collision=1
	entity_list_end

TileEntities_HyruleDigCaves_Main:: @ 080F4520
	tile_entity type=0x2, paramA=0x42, paramB=0x6e5c, paramC=0x725
	tile_entity type=0x2, paramA=0x43, paramB=0x6f5c, paramC=0xa73
	tile_entity type=0x2, paramA=0x44, paramB=0x705c, paramC=0x797
	tile_entity_list_end

Room_HyruleDigCaves_Main:: @ 080F4540
	.4byte Entities_HyruleDigCaves_Main_0
	.4byte 0x00000000
	.4byte Enemies_HyruleDigCaves_Main
	.4byte TileEntities_HyruleDigCaves_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleDigCaves_Main
	.4byte sub_StateChange_Ruins_LadderToTektites6

Entities_CrenelDigCave_Main_0:: @ 080F4560
	npc_raw subtype=0x4e, x=0x148, y=0x28, paramA=0x8, script=script_MysteriousWall
	manager subtype=0x4
	object_raw subtype=0x0, x=0x78, y=0xa4, collision=1, paramA=0x63, paramB=0x400, paramC=0x450000
	entity_list_end

Enemies_CrenelDigCave_Main:: @ 080F45A0
	enemy_raw subtype=0x1, x=0xd8, y=0x48
	enemy_raw subtype=0x1, x=0x88, y=0xf8
	enemy_raw subtype=0x1, x=0x138, y=0x58
	enemy_raw subtype=0x1, x=0x158, y=0x58
	enemy_raw subtype=0x1, x=0x118, y=0xe8
	enemy_raw subtype=0x1, x=0x168, y=0xd8
	enemy_raw subtype=0xd, x=0x68, y=0xa8
	enemy_raw subtype=0x1c, x=0xb0, y=0x88
	entity_list_end

TileEntities_CrenelDigCave_Main:: @ 080F4630
	tile_entity_list_end

Room_CrenelDigCave_Main:: @ 080F4638
	.4byte Entities_CrenelDigCave_Main_0
	.4byte 0x00000000
	.4byte Enemies_CrenelDigCave_Main
	.4byte TileEntities_CrenelDigCave_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelDigCave_Main
	.4byte sub_StateChange_Ruins_LadderToTektites7

Entities_DigCaves1_HyruleFieldFarm_0:: @ 080F4658
	npc_raw subtype=0x4e, x=0xf8, y=0x38, paramA=0x7, script=script_MysteriousWall
	manager subtype=0x4
	object_raw subtype=0x0, x=0xd8, y=0x78, collision=1, paramA=0x56, paramB=0x400, paramC=0x460000
	entity_list_end

Enemies_DigCaves1_HyruleFieldFarm:: @ 080F4698
	enemy_raw subtype=0x7, x=0xa8, y=0x48
	enemy_raw subtype=0x17, x=0xe8, y=0x78, paramA=0x2
	entity_list_end

TileEntities_DigCaves1_HyruleFieldFarm:: @ 080F46C8
	tile_entity_list_end

Room_DigCaves1_HyruleFieldFarm:: @ 080F46D0
	.4byte Entities_DigCaves1_HyruleFieldFarm_0
	.4byte 0x00000000
	.4byte Enemies_DigCaves1_HyruleFieldFarm
	.4byte TileEntities_DigCaves1_HyruleFieldFarm
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DigCaves1_HyruleFieldFarm
	.4byte sub_StateChange_Ruins_LadderToTektites8

Entities_DigCaves1_TrilbyHighlands_0:: @ 080F46F0
	npc_raw subtype=0x4e, x=0xe8, y=0x28, paramA=0x6, script=script_MysteriousWall
	manager subtype=0x4
	object_raw subtype=0x41, x=0x88, y=0x58, paramA=0x1
	entity_list_end

Enemies_DigCaves1_TrilbyHighlands:: @ 080F4730
	enemy_raw subtype=0xd, x=0x38, y=0x58
	enemy_raw subtype=0xd, x=0x188, y=0x78
	entity_list_end

TileEntities_DigCaves1_TrilbyHighlands:: @ 080F4760
	tile_entity type=0x2, paramA=0x47, paramB=0x715c, paramC=0xc4
	tile_entity type=0x2, paramA=0x48, paramB=0x6f5c, paramC=0x28e
	tile_entity type=0x2, paramA=0x49, paramB=0x725c, paramC=0x152
	tile_entity_list_end

Room_DigCaves1_TrilbyHighlands:: @ 080F4780
	.4byte Entities_DigCaves1_TrilbyHighlands_0
	.4byte 0x00000000
	.4byte Enemies_DigCaves1_TrilbyHighlands
	.4byte TileEntities_DigCaves1_TrilbyHighlands
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_DigCaves1_TrilbyHighlands
	.4byte sub_StateChange_Ruins_LadderToTektites9

Entities_VeilFallsDigCave_Main_0:: @ 080F47A0
	manager subtype=0x4
	object_raw subtype=0x0, x=0xe0, y=0x124, collision=1, paramA=0x63, paramB=0x400, paramC=0x4d0000
	entity_list_end

Enemies_VeilFallsDigCave_Main:: @ 080F47D0
	enemy_raw subtype=0x1c, x=0xd0, y=0x58
	enemy_raw subtype=0x1, x=0x198, y=0x208, paramA=0x2
	entity_list_end

TileEntities_VeilFallsDigCave_Main:: @ 080F4800
	tile_entity type=0x2, paramA=0x4a, paramB=0x323f, paramC=0x11b
	tile_entity type=0x2, paramA=0x4b, paramB=0x323f, paramC=0x810
	tile_entity type=0x2, paramA=0x4c, paramB=0x57, paramC=0x811
	tile_entity_list_end

Room_VeilFallsDigCave_Main:: @ 080F4820
	.4byte Entities_VeilFallsDigCave_Main_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsDigCave_Main
	.4byte TileEntities_VeilFallsDigCave_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsDigCave_Main
	.4byte sub_StateChange_VeilFallsDigCave_Main

Entities_OuterFortressOfWinds_EntranceHall_0:: @ 080F4840
	object_raw subtype=0x0, x=0x388, y=0x38, collision=1, paramA=0x57, paramB=0x400, paramC=0x4e0000
	entity_list_end

Enemies_OuterFortressOfWinds_EntranceHall:: @ 080F4860
	entity_list_end

TileEntities_OuterFortressOfWinds_EntranceHall:: @ 080F4870
	tile_entity type=0x2, paramA=0x4f, paramB=0x725c, paramC=0xc2
	tile_entity_list_end

Room_OuterFortressOfWinds_EntranceHall:: @ 080F4880
	.4byte Entities_OuterFortressOfWinds_EntranceHall_0
	.4byte 0x00000000
	.4byte Enemies_OuterFortressOfWinds_EntranceHall
	.4byte TileEntities_OuterFortressOfWinds_EntranceHall
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_OuterFortressOfWinds_EntranceHall
	.4byte sub_StateChange_OuterFortressOfWinds_EntranceHall

Entities_OuterFortressOfWinds_2F_0:: @ 080F48A0
	object_raw subtype=0x41, x=0x128, y=0xe8, paramA=0x1
	object_raw subtype=0x41, x=0x1d8, y=0xe8, paramA=0x1
	object_raw subtype=0x41, x=0x288, y=0xe8, paramA=0x1
	object_raw subtype=0x41, x=0x338, y=0xe8, paramA=0x1
	object_raw subtype=0x3, x=0x208, y=0xa8, paramA=0x1, paramC=0x80000000
	object_raw subtype=0xc, x=0x1a8, y=0xa8, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x27, x=0x208, y=0xf8, collision=1
	object_raw subtype=0x0, x=0x48, y=0x98, collision=1, paramA=0x54, paramB=0x400, paramC=0x550000
	object_raw subtype=0x0, x=0x58, y=0x98, collision=1, paramA=0x54, paramB=0x400, paramC=0x560000
	object_raw subtype=0x0, x=0x48, y=0xa8, collision=1, paramA=0x54, paramB=0x400, paramC=0x570000
	object_raw subtype=0x0, x=0x58, y=0xa8, collision=1, paramA=0x54, paramB=0x400, paramC=0x580000
	object_raw subtype=0x0, x=0x148, y=0xa8, collision=1, paramA=0x55, paramB=0x400, paramC=0x590000
	object_raw subtype=0x0, x=0x128, y=0xa8, collision=1, paramA=0x55, paramB=0x400, paramC=0x5a0000
	object_raw subtype=0x0, x=0x108, y=0xa8, collision=1, paramA=0x54, paramB=0x400, paramC=0x5b0000
	object_raw subtype=0x5, x=0x2f8, y=0x88, collision=1
	object_raw subtype=0x5, x=0x348, y=0x88, collision=1
	object_raw subtype=0x5, x=0x368, y=0x68, collision=1, paramA=0x57, paramB=0x2, paramC=0x530000
	object_raw subtype=0x5, x=0x2f8, y=0xf8, collision=1, paramA=0x3f, paramB=0x102, paramC=0x540000
	entity_list_end

Enemies_OuterFortressOfWinds_2F:: @ 080F49D0
	enemy_raw subtype=0xd, x=0x308, y=0x88
	enemy_raw subtype=0xd, x=0x378, y=0x78
	enemy_raw subtype=0xd, x=0x348, y=0x98
	enemy_raw subtype=0xd, x=0x2f8, y=0x108
	enemy_raw subtype=0xb, x=0x258, y=0xa8
	enemy_raw subtype=0x17, x=0x38, y=0xa8
	enemy_raw subtype=0x17, x=0x168, y=0xa8, paramA=0x2
	enemy_raw subtype=0x1c, x=0x88, y=0xd8, paramB=0x1018
	entity_list_end

TileEntities_OuterFortressOfWinds_2F:: @ 080F4A60
	tile_entity type=0x2, paramA=0x50, paramB=0x705c, paramC=0xcc
	tile_entity type=0x2, paramA=0x51, paramB=0x715c, paramC=0x29a
	tile_entity type=0x2, paramA=0x52, paramB=0x705c, paramC=0x3a4
	tile_entity_list_end

Room_OuterFortressOfWinds_2F:: @ 080F4A80
	.4byte Entities_OuterFortressOfWinds_2F_0
	.4byte 0x00000000
	.4byte Enemies_OuterFortressOfWinds_2F
	.4byte TileEntities_OuterFortressOfWinds_2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_OuterFortressOfWinds_2F
	.4byte sub_StateChange_OuterFortressOfWinds_2F

Entities_OuterFortressOfWinds_3F_0:: @ 080F4AA0
	object_raw subtype=0x3, x=0xa8, y=0x58, paramC=0x5c0000
	object_raw subtype=0xc, x=0x58, y=0x58, paramA=0x1, paramC=0x5c0000
	entity_list_end

Enemies_OuterFortressOfWinds_3F:: @ 080F4AD0
	enemy_raw subtype=0xb, x=0x68, y=0x68
	enemy_raw subtype=0xb, x=0x298, y=0x38
	enemy_raw subtype=0x1c, x=0x258, y=0x38, paramB=0x1000
	enemy_raw subtype=0x1c, x=0x2f8, y=0x58, paramB=0x518
	entity_list_end

TileEntities_OuterFortressOfWinds_3F:: @ 080F4B20
	tile_entity type=0x2, paramA=0x5d, paramB=0x6f5c, paramC=0x145
	tile_entity type=0x2, paramA=0x5e, paramB=0x6e5c, paramC=0x124
	tile_entity_list_end

Room_OuterFortressOfWinds_3F:: @ 080F4B38
	.4byte Entities_OuterFortressOfWinds_3F_0
	.4byte 0x00000000
	.4byte Enemies_OuterFortressOfWinds_3F
	.4byte TileEntities_OuterFortressOfWinds_3F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_OuterFortressOfWinds_3F
	.4byte sub_StateChange_OuterFortressOfWinds_3F

Entities_OuterFortressOfWinds_MoleMitts_0:: @ 080F4B58
	object_raw subtype=0xc, x=0x60, y=0x38, paramA=0x4, paramB=0x60
	manager subtype=0xf, paramA=0x3
	entity_list_end

gUnk_080F4B88:: @ 080F4B88
	.incbin "data_080D5360/gUnk_080F4B88.bin"

Enemies_OuterFortressOfWinds_MoleMitts:: @ 080F4BA8
	entity_list_end

TileEntities_OuterFortressOfWinds_MoleMitts:: @ 080F4BB8
	tile_entity type=0x3, paramA=0x60, paramB=0x13, paramC=0x60, paramD=0x38
	tile_entity type=0x2, paramA=0x61, paramB=0x58, paramC=0xce
	tile_entity type=0x1, paramA=0x62
	tile_entity_list_end

Room_OuterFortressOfWinds_MoleMitts:: @ 080F4BD8
	.4byte Entities_OuterFortressOfWinds_MoleMitts_0
	.4byte 0x00000000
	.4byte Enemies_OuterFortressOfWinds_MoleMitts
	.4byte TileEntities_OuterFortressOfWinds_MoleMitts
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_OuterFortressOfWinds_MoleMitts
	.4byte sub_StateChange_OuterFortressOfWinds_MoleMitts

Entities_OuterFortressOfWinds_SmallKey_0:: @ 080F4BF8
	object_raw subtype=0x4e, x=0x58, y=0xa8, collision=1, paramB=0x802
	object_raw subtype=0x4e, x=0x58, y=0xd0, collision=1, paramB=0x800
	object_raw subtype=0x3, x=0x28, y=0x78, paramC=0x630000
	manager subtype=0x17, x=0xb8, y=0x5a, paramA=0x53, paramB=0x10200, paramC=0x650064
	manager subtype=0x2e, unknown=0x0, paramB=0x1e00, paramC=0x630065
	object_raw subtype=0x74, x=0x28, y=0x48, collision=1, paramC=0xffff0000
	manager subtype=0x3, x=0x28, y=0x48, unknown=0x0, paramA=0x3, paramB=0x102
	entity_list_end

Enemies_OuterFortressOfWinds_SmallKey:: @ 080F4C78
	enemy_raw subtype=0x1c, x=0x78, y=0x48, collision=1, paramB=0x500
	enemy_raw subtype=0x1c, x=0xb8, y=0x78, collision=1, paramB=0x500
	enemy_raw subtype=0x1c, x=0x98, y=0x88, collision=1, paramB=0x500
	entity_list_end

TileEntities_OuterFortressOfWinds_SmallKey:: @ 080F4CB8
	tile_entity type=0x1, paramA=0x66
	tile_entity_list_end

gUnk_additional_8_OuterFortressOfWinds_SmallKey:: @ 080F4CC8
	.incbin "data_080D5360/gUnk_additional_8_OuterFortressOfWinds_SmallKey.bin"

Room_OuterFortressOfWinds_SmallKey:: @ 080F4CDC
	.4byte Entities_OuterFortressOfWinds_SmallKey_0
	.4byte 0x00000000
	.4byte Enemies_OuterFortressOfWinds_SmallKey
	.4byte TileEntities_OuterFortressOfWinds_SmallKey
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_OuterFortressOfWinds_SmallKey
	.4byte sub_StateChange_OuterFortressOfWinds_SmallKey
	.4byte gUnk_additional_8_OuterFortressOfWinds_SmallKey

Entities_MinishWoods_Main_0:: @ 080F4D00
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
	object_raw subtype=0x2e, x=0x198, y=0x338
	object_raw subtype=0x2e, x=0x368, y=0x3b8
.else
	object_item x=0xC8, y=0x134, item=0x63, flag=0x3C, collision=1
	object_item x=0x198, y=0x2B4, item=0x63, flag=0x3D, collision=1
.endif
.endif
.endif
	entity_list_end

gUnk_080F4D50:: @ 080F4D50
	npc_raw subtype=0x4e, script=script_Npc4EEzloCutscene
	entity_list_end

gUnk_080F4D70:: @080F4D70
	npc_raw subtype=0x4d, x=0x388, y=0x168, script=script_EzloCap
	object_raw subtype=0x6a, x=0x358, y=0x168, unknown=0x4f, paramA=0x13, paramC=script_Object6ALeftBullyingOctorok
	object_raw subtype=0x6a, x=0x3b8, y=0x168, unknown=0x4f, paramA=0x13, paramC=script_Object6ARightBullyingOctorok
	entity_list_end

gUnk_080F4DB0:: @ 080F4DB0
	object_raw subtype=0x69, unknown=0x4f, paramC=script_08012C98
	entity_list_end

gUnk_080F4DD0:: @ 080F4DD0
	object_raw subtype=0x69, unknown=0x4f, paramC=script_EzloTalkMinishPortal
	entity_list_end

gUnk_080F4DF0:: @ 080F4DF0
	object_raw subtype=0x69, unknown=0x4f, paramC=script_08012D18
	entity_list_end

gUnk_080F4E10:: @ 080F4E10
	object_raw subtype=0xbb, x=0x128, y=0x2a8, unknown=0x4f, paramB=0x7, paramC=script_Windcrest
	entity_list_end

Entities_MinishWoods_Main_1:: @ 080F4E30
	manager subtype=0x1, unknown=0x18, paramA=0x11
	manager subtype=0x4
	manager subtype=0x3, x=0x128, y=0x370, unknown=0x0, paramB=0x103
	manager subtype=0x3, x=0x398, y=0x3b0, unknown=0x0, paramB=0x103
	manager subtype=0x6, paramA=0x8
	object_raw subtype=0x3e, x=0x1d8, y=0x35a, collision=1
	object_raw subtype=0x19, x=0x2c0, y=0x50, collision=1, paramA=0x8, paramB=0x2
	entity_list_end

gUnk_080F4EB0:: @ 080F4EB0
	npc_raw subtype=0x4e, script=script_Npc4EMinishWoods
	object_raw subtype=0x6a, x=0x398, y=0x148, unknown=0x4f, paramA=0x13, paramC=script_Object6AOctorok1
	object_raw subtype=0x6a, x=0x378, y=0x158, unknown=0x4f, paramA=0x13, paramC=script_Object6AOctorok2
	object_raw subtype=0x6a, x=0x3a8, y=0x168, unknown=0x4f, paramA=0x13, paramC=script_Object6AOctorok3
	object_raw subtype=0x6a, x=0x388, y=0x188, unknown=0x4f, paramA=0x13, paramC=script_Object6AOctorok4
	entity_list_end

gUnk_080F4F10:: @ 080F4F10
	manager subtype=0x6, paramA=0xd
	entity_list_end

Enemies_MinishWoods_Main:: @ 080F4F30
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

gUnk_additional_11_MinishWoods_Main:: @ 080F50B0
	.incbin "data_080D5360/gUnk_additional_11_MinishWoods_Main.bin"

gUnk_additional_8_MinishWoods_Main:: @ 080F50F8
	exit_region_raw centerX=0x1d8, centerY=0x388, halfWidth=0x8, halfHeight=0x8, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0x1d0, centerY=0x344, halfWidth=0x10, halfHeight=0x8, exitIndex=0xa, bitfield=0x1
	exit_region_raw centerX=0x1b4, centerY=0x348, halfWidth=0x8, halfHeight=0x10, exitIndex=0xb, bitfield=0x1
	exit_region_raw centerX=0x1c8, centerY=0x26c, halfWidth=0x10, halfHeight=0x4, exitIndex=0xc, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_MinishWoods_Main:: @ 080F5120
	exit_raw transition=0x1, destX=0x88, destY=0x308, destArea=0x11, unknownA=0x1

gUnk_additional_a_MinishWoods_Main:: @ 080F5134
	exit_raw transition=0x1, destX=0xe8, destY=0x48, destArea=0x20, destRoom=0x2, unknownA=0x1, unknownC=0x4

gUnk_additional_b_MinishWoods_Main:: @ 080F5148
	exit_raw transition=0x1, destX=0xc, destY=0x68, destArea=0x1, unknownA=0x1, unknownC=0x2

gUnk_additional_c_MinishWoods_Main:: @ 080F515C
	exit_raw transition=0x1, destX=0x78, destY=0xe8, destArea=0x4a, unknownA=0x1

gUnk_additional_d_MinishWoods_Main:: @ 080F5170
	exit_region_raw centerX=0x218, centerY=0x3c8, halfWidth=0x3, halfHeight=0x3, exitIndex=0xe, bitfield=0x1
	exit_region_list_end

gUnk_additional_e_MinishWoods_Main:: @ 080F5180
	exit_raw transition=0x1, destX=0x78, destY=0x38, destArea=0x27, destRoom=0x8, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_12_MinishWoods_Main:: @ 080F5194
	.incbin "data_080D5360/gUnk_additional_12_MinishWoods_Main.bin"

gUnk_additional_13_MinishWoods_Main:: @ 080F51B2
	.incbin "data_080D5360/gUnk_additional_13_MinishWoods_Main.bin"

gUnk_080F51D0:: @ 080F51D0
	.incbin "data_080D5360/gUnk_080F51D0.bin"

gUnk_additional_10_MinishWoods_Main:: @ 080F51F0
	.incbin "data_080D5360/gUnk_additional_10_MinishWoods_Main.bin"

TileEntities_MinishWoods_Main:: @ 080F5220
.ifdef EU_JP
	tile_entity type=0xa, paramA=0x1, paramB=0x35, paramC=0x80a, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x36, paramC=0x80b, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x37, paramC=0xd83, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x38, paramC=0xd84, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x39, paramC=0xd85, paramD=0x1d
	tile_entity type=0x5, paramB=0x500, paramC=0x16a, paramD=0x605
.ifdef DEMO_JP
	tile_entity type=0x5, paramB=0x1f00, paramC=0x3db, paramD=0x61f
.else
	tile_entity type=0x5, paramB=0x1700, paramC=0x3db, paramD=0x617
.endif
.else
	tile_entity type=0xa, paramA=0x1, paramB=0x36, paramC=0x80a, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x37, paramC=0x80b, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x38, paramC=0xd83, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x39, paramC=0xd84, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x3a, paramC=0xd85, paramD=0x1d
	tile_entity type=0x5, paramB=0x500, paramC=0x16a, paramD=0x605
	tile_entity type=0x5, paramB=0x1f00, paramC=0x3db, paramD=0x61f
.endif
	tile_entity_list_end

Room_MinishWoods_Main:: @ 080F5260
	.4byte Entities_MinishWoods_Main_0
	.4byte Entities_MinishWoods_Main_1
	.4byte Enemies_MinishWoods_Main
	.4byte TileEntities_MinishWoods_Main
	.4byte sub_unk1_MinishWoods_Main
	.4byte 0x00000000
	.4byte sub_unk3_MinishWoods_Main
	.4byte sub_StateChange_MinishWoods_Main
	.4byte gUnk_additional_8_MinishWoods_Main
	.4byte gUnk_additional_9_MinishWoods_Main
	.4byte gUnk_additional_a_MinishWoods_Main
	.4byte gUnk_additional_b_MinishWoods_Main
	.4byte gUnk_additional_c_MinishWoods_Main
	.4byte gUnk_additional_d_MinishWoods_Main
	.4byte gUnk_additional_e_MinishWoods_Main
	.4byte 0x00000000
	.4byte gUnk_additional_10_MinishWoods_Main
	.4byte gUnk_additional_11_MinishWoods_Main
	.4byte gUnk_additional_12_MinishWoods_Main
	.4byte gUnk_additional_13_MinishWoods_Main

Entities_Empty_Main_0:: @ 080F52B0
	entity_list_end

Enemies_Empty_Main:: @ 080F52C0
	entity_list_end

TileEntities_Empty_Main:: @ 080F52D0
	tile_entity_list_end

Room_Empty_Main:: @ 080F52D8
	.4byte Entities_Empty_Main_0
	.4byte 0x00000000
	.4byte Enemies_Empty_Main
	.4byte TileEntities_Empty_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Empty_Main
	.4byte sub_StateChange_Empty_Main

Entities_SanctuaryEntrance_Main_0:: @ 080F52F8
	entity_list_end

gUnk_080F5308:: @ 080F5308
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69SanctuaryEntrance
	entity_list_end

gUnk_080F5328:: @ 080F5328
	object_raw subtype=0x3e, x=0x88, y=0x40, collision=1, paramA=0x1
	entity_list_end

gUnk_080F5348:: @ 080F5348
	npc_raw subtype=0x4e, script=script_Npc4EFixedEverything
	npc_raw subtype=0xf, x=0x88, y=0x68, script=script_MinishEzloGoodbye
	npc_raw subtype=0x28, x=0x68, y=0x88, script=script_ZeldaGoodbye
	object_raw subtype=0x3e, x=0x88, y=0x40, collision=1, paramA=0x1
	entity_list_end

Entities_SanctuaryEntrance_Main_1:: @ 080F5398
	entity_list_end

Enemies_SanctuaryEntrance_Main:: @ 080F53A8
	entity_list_end

TileEntities_SanctuaryEntrance_Main:: @ 080F53B8
	tile_entity_list_end

Room_SanctuaryEntrance_Main:: @ 080F53C0
	.4byte Entities_SanctuaryEntrance_Main_0
	.4byte Entities_SanctuaryEntrance_Main_1
	.4byte Enemies_SanctuaryEntrance_Main
	.4byte TileEntities_SanctuaryEntrance_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_SanctuaryEntrance_Main
	.4byte sub_StateChange_SanctuaryEntrance_Main

Entities_Sanctuary_Hall_0:: @ 080F53E0
	object_raw subtype=0x3e, x=0xc8, y=0x200, paramA=0x8, paramB=0x1
.ifndef EU
	manager subtype=0xf, paramA=0xe
.endif
	entity_list_end

Enemies_Sanctuary_Hall:: @ 080F5410
	entity_list_end

TileEntities_Sanctuary_Hall:: @ 080F5420
	tile_entity_list_end

Room_Sanctuary_Hall:: @ 080F5428
	.4byte Entities_Sanctuary_Hall_0
	.4byte 0x00000000
	.4byte Enemies_Sanctuary_Hall
	.4byte TileEntities_Sanctuary_Hall
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Sanctuary_Hall
	.4byte sub_StateChange_Sanctuary_Hall

Entities_Sanctuary_Main_0:: @ 080F5448
	object_raw subtype=0x6a, x=0xe8, y=0x90, unknown=0x4f, paramA=0x17, paramC=script_Object6ATextBoard
	npc_raw subtype=0x4e, script=script_08013F94
	npc_raw subtype=0x4e, script=script_NPC4EPreventPlayerLeave
	npc_raw subtype=0x4e, script=script_Npc4EPreventPlayerLeaving
	object_raw subtype=0xb0, x=0xe8, y=0x248, paramC=0x80008000
	object_raw subtype=0x3, x=0xc8, y=0x228, paramA=0x1, paramC=0x80010000
	object_raw subtype=0x3, x=0x108, y=0x228, paramA=0x1, paramC=0x80020000
	manager subtype=0x11, paramC=0x84018000
.ifndef EU
	manager subtype=0xf, paramA=0xe
.endif
	entity_list_end

gUnk_080F54E8:: @ 080F54E8
	npc_raw subtype=0x4e, x=0xe8, y=0x138, script=script_Npc4ESanctuaryIntro
	entity_list_end

gUnk_080F5508:: @ 080F5508
	npc_raw subtype=0x4e, x=0xe8, y=0x138, script=script_Npc4EPedestal
	entity_list_end

gUnk_080F5528:: @ 080F5528
	object_raw subtype=0x6a, x=0xb0, y=0xf8, unknown=0x4f, paramA=0x1c, paramC=script_Object6AEarthElement
	object_raw subtype=0x6a, x=0x120, y=0xf8, unknown=0x4f, paramA=0x1c, paramC=script_Object6AFireElement
	entity_list_end

gUnk_080F5558:: @ 080F5558
	npc_raw subtype=0x4e, x=0xe8, y=0x138, script=script_Npc4ESecondSanctuary
	entity_list_end

gUnk_080F5578:: @ 080F5578
	object_raw subtype=0x6a, x=0x120, y=0x168, unknown=0x4f, paramA=0x1c, paramC=script_Object6AWaterElement
	entity_list_end

gUnk_080F5598:: @ 080F5598
	npc_raw subtype=0x4e, x=0xe8, y=0x138, script=script_Npc4EThirdSanctuary
	entity_list_end

gUnk_080F55B8:: @ 080F55B8
	object_raw subtype=0x6a, x=0xb0, y=0x168, unknown=0x4f, paramA=0x1c, paramC=script_Object6AWindElement
	entity_list_end

gUnk_080F55D8:: @ 080F55D8
	object_raw subtype=0x3e, x=0xe8, y=0x20, paramA=0x8
	entity_list_end

Enemies_Sanctuary_Main:: @ 080F55F8
	entity_list_end

TileEntities_Sanctuary_Main:: @ 080F5608
	tile_entity_list_end

Room_Sanctuary_Main:: @ 080F5610
	.4byte Entities_Sanctuary_Main_0
	.4byte 0x00000000
	.4byte Enemies_Sanctuary_Main
	.4byte TileEntities_Sanctuary_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Sanctuary_Main
	.4byte sub_StateChange_Sanctuary_Main

Entities_Sanctuary_StainedGlass_0:: @ 080F5630
.ifndef EU
	npc_raw subtype=0x4e, x=0x98, y=0x38, script=script_Npc4ELookAtPictureAgain
	manager subtype=0xf, paramA=0xe
.endif
	entity_list_end

gUnk_080F5660:: @ 080F5660
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object3EPictureBackRoom
	entity_list_end

gUnk_080F5680:: @ 080F5680
	npc_raw subtype=0x24, x=0x98, y=0x48, script=script_FakeKingDaltus
	npc_raw subtype=0x27, x=0x98, y=0xc8, paramA=0x1, script=script_VaatiSanctuary
	entity_list_end

Entities_Sanctuary_StainedGlass_1:: @ 080F56B0
	object_raw subtype=0x3e, x=0x98, y=0x28, paramA=0x6
	object_raw subtype=0x3e, x=0x98, y=0x58, paramA=0x7, paramB=0x1
	object_raw subtype=0x3e, x=0x97, y=0x58, paramA=0x7, paramB=0x2
	object_raw subtype=0x3e, x=0x98, y=0x140, collision=2, paramA=0x8, paramB=0x1
	entity_list_end

Enemies_Sanctuary_StainedGlass:: @ 080F5700
	entity_list_end

TileEntities_Sanctuary_StainedGlass:: @ 080F5710
	tile_entity_list_end

Room_Sanctuary_StainedGlass:: @ 080F5718
	.4byte Entities_Sanctuary_StainedGlass_0
	.4byte Entities_Sanctuary_StainedGlass_1
	.4byte Enemies_Sanctuary_StainedGlass
	.4byte TileEntities_Sanctuary_StainedGlass
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Sanctuary_StainedGlass
	.4byte sub_StateChange_Sanctuary_StainedGlass

Entities_HouseInteriors3_StockwellShop_0:: @ 080F5738
	npc_raw subtype=0x1c, x=0x98, y=0x78, unknown=0xf, script=0x0
	entity_list_end

gUnk_080F5758:: @ 080F5758
	object_raw subtype=0x2, x=0x2d, y=0x40, paramA=0xd
	object_raw subtype=0x2, x=0x40, y=0x40, paramA=0x6c
	entity_list_end

gUnk_080F5788:: @ 080F5788
	object_raw subtype=0x2, x=0x2d, y=0x80, paramA=0x61, paramB=0x1e
	entity_list_end

gUnk_080F57A8:: @ 080F57A8
	object_raw subtype=0x2, x=0x52, y=0x40, paramA=0x64
	entity_list_end

gUnk_080F57C8:: @ 080F57C8
	object_raw subtype=0x2, x=0x52, y=0x40, paramA=0x6d
	entity_list_end

gUnk_080F57E8:: @ 080F57E8
	object_raw subtype=0x2, x=0x90, y=0x40, paramA=0x36
	entity_list_end
	object_raw subtype=0x2, x=0x90, y=0x40, paramA=0x1c
	entity_list_end

gUnk_080F5828:: @ 080F5828
	object_raw subtype=0x2, x=0x52, y=0x80, paramA=0x66
	entity_list_end

gUnk_080F5848:: @ 080F5848
	object_raw subtype=0x2, x=0x52, y=0x80, paramA=0x6f
	entity_list_end

gUnk_080F5868:: @ 080F5868
	object_raw subtype=0x2, x=0x40, y=0x80, paramA=0x6e
	entity_list_end

gUnk_080F5888:: @ 080F5888
	object_raw subtype=0x2, x=0x64, y=0x40, paramA=0xb
	entity_list_end

.ifndef EU
gUnk_080F58A8:: @ 080F58A8
	object_raw subtype=0x2, x=0x64, y=0x40, paramA=0x65
	entity_list_end
.endif

Entities_HouseInteriors3_StockwellShop_1:: @ 080F58C8
	object_raw subtype=0x4f, x=0x78, y=0xc8, paramA=0x2, paramB=0x2
	object_raw subtype=0x4e, x=0xac, y=0x28, collision=1, paramB=0x800
	object_raw subtype=0x38, x=0xc0, y=0x4e, unknown=0x0, paramA=0x51, paramB=0x1
	entity_list_end

Enemies_HouseInteriors3_StockwellShop:: @ 080F5908
	entity_list_end

TileEntities_HouseInteriors3_StockwellShop:: @ 080F5918
	tile_entity_list_end

gUnk_additional_8_HouseInteriors3_StockwellShop:: @ 080F5920
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors3_StockwellShop.bin"

Room_HouseInteriors3_StockwellShop:: @ 080F5934
	.4byte Entities_HouseInteriors3_StockwellShop_0
	.4byte Entities_HouseInteriors3_StockwellShop_1
	.4byte Enemies_HouseInteriors3_StockwellShop
	.4byte TileEntities_HouseInteriors3_StockwellShop
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_StockwellShop
	.4byte sub_StateChange_HouseInteriors3_StockwellShop
	.4byte gUnk_additional_8_HouseInteriors3_StockwellShop

Entities_HouseInteriors3_Cafe_0:: @ 080F5958
	npc_raw subtype=0x46, x=0x64, y=0x78, script=script_Mama
	npc_raw subtype=0x13, x=0x55, y=0xa8, paramA=0x2, script=script_SittingPerson
	npc_raw subtype=0x13, x=0xc6, y=0x6a, paramA=0x4, paramB=0x1, script=script_SittingPerson
	npc_raw subtype=0x6, x=0x98, y=0x98, paramA=0x3, paramB=0x400, script=script_Townsperson2
	npc_raw subtype=0x6, x=0x40, y=0x50, paramA=0x5, paramB=0x400, script=script_CafeGuy
	npc_raw subtype=0x53, x=0x28, y=0x78, script=script_HurdyGurdyMan
	manager subtype=0x26, paramA=0xb, paramB=0x28ff
	ezlo_hint type=0x2, x=0x16, y=0x14, rx=0x2, ry=0x2, msg=0xb24, flag=0xc3
	entity_list_end

Entities_HouseInteriors3_Cafe_1:: @ 080F59E8
	object_raw subtype=0x4f, x=0x78, y=0xc8, paramA=0x2, paramB=0x2
	object_raw subtype=0x4d, x=0x38, y=0x48, collision=1, paramA=0xa
	object_raw subtype=0x4d, x=0x58, y=0x48, collision=1, paramA=0x1
	object_raw subtype=0x4d, x=0x78, y=0x48, collision=1, paramA=0x1
	object_raw subtype=0x4e, x=0x48, y=0x28, collision=1, paramB=0x800
	object_raw subtype=0x4e, x=0x38, y=0xb0, collision=1, paramB=0x902
	object_raw subtype=0x4e, x=0xd0, y=0x48, collision=1, paramB=0xa01
	object_raw subtype=0x38, x=0xc0, y=0x8e, unknown=0x0, paramA=0x58
	entity_list_end

Enemies_HouseInteriors3_Cafe:: @ 080F5A78
	entity_list_end

TileEntities_HouseInteriors3_Cafe:: @ 080F5A88
	tile_entity_list_end

gUnk_additional_8_HouseInteriors3_Cafe:: @ 080F5A90
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors3_Cafe.bin"

gUnk_additional_9_HouseInteriors3_Cafe:: @ 080F5AA4
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors3_Cafe.bin"

gUnk_additional_a_HouseInteriors3_Cafe:: @ 080F5AB8
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors3_Cafe.bin"

gUnk_additional_b_HouseInteriors3_Cafe:: @ 080F5ACC
	.incbin "data_080D5360/gUnk_additional_b_HouseInteriors3_Cafe.bin"

Room_HouseInteriors3_Cafe:: @ 080F5ADC
	.4byte Entities_HouseInteriors3_Cafe_0
	.4byte Entities_HouseInteriors3_Cafe_1
	.4byte Enemies_HouseInteriors3_Cafe
	.4byte TileEntities_HouseInteriors3_Cafe
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_Cafe
	.4byte sub_StateChange_HouseInteriors3_Cafe
	.4byte gUnk_additional_8_HouseInteriors3_Cafe
	.4byte gUnk_additional_9_HouseInteriors3_Cafe
	.4byte gUnk_additional_a_HouseInteriors3_Cafe
	.4byte gUnk_additional_b_HouseInteriors3_Cafe

Entities_HouseInteriors3_RemShoeShop_0:: @ 080F5B0C
	npc_raw subtype=0x37, x=0x68, y=0x41, unknown=0xf, script=0x0
	ezlo_hint type=0x2, x=0x4, y=0x8, rx=0x2, ry=0x2, msg=0xb24, flag=0xc3
	entity_list_end

gUnk_080F5B3C:: @ 080F5B3C
.ifndef EU
	ezlo_hint x=0x10, y=0x2, rx=0x2, ry=0x8, msg=0xb6e, flag=0xce
	entity_list_end
.endif

Entities_HouseInteriors3_RemShoeShop_1:: @ 080F5B5C
	object_raw subtype=0x4f, x=0xe8, y=0x58, paramA=0x2, paramB=0x1
	object_raw subtype=0x4d, x=0x68, y=0x48, collision=1, paramA=0x1e
	object_raw subtype=0x38, x=0x30, y=0x2e, unknown=0x0, paramA=0x4b, paramB=0x1
	manager subtype=0x6, paramA=0x8
	entity_list_end

Enemies_HouseInteriors3_RemShoeShop:: @ 080F5BAC
	entity_list_end

TileEntities_HouseInteriors3_RemShoeShop:: @ 080F5BBC
	tile_entity_list_end

.ifdef EU
gUnk_080F5168::
	.incbin "data_080D5360/gUnk_080F5168_EU.bin"
.endif

gUnk_additional_8_HouseInteriors3_RemShoeShop:: @ 080F5BC4
	exit_region_raw centerX=0x74, centerY=0x58, halfWidth=0x4, halfHeight=0x4, exitIndex=0x9, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_HouseInteriors3_RemShoeShop:: @ 080F5BD4
	exit_raw transition=0x1, destX=0x118, destY=0x10f, destArea=0x2d, destRoom=0x12, unknownA=0x1

Room_HouseInteriors3_RemShoeShop:: @ 080F5BE8
	.4byte Entities_HouseInteriors3_RemShoeShop_0
	.4byte Entities_HouseInteriors3_RemShoeShop_1
	.4byte Enemies_HouseInteriors3_RemShoeShop
	.4byte TileEntities_HouseInteriors3_RemShoeShop
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_RemShoeShop
	.4byte sub_StateChange_HouseInteriors3_RemShoeShop
	.4byte gUnk_additional_8_HouseInteriors3_RemShoeShop
	.4byte gUnk_additional_9_HouseInteriors3_RemShoeShop
.ifdef EU
	.4byte gUnk_080F5168
.endif

Entities_HouseInteriors3_Bakery_0:: @ 080F5C10
	npc_raw subtype=0xd, x=0xa8, y=0x5c, script=script_Wheaton
	npc_raw subtype=0xe, x=0x30, y=0x56, script=script_Pita
	ezlo_hint x=0x4, y=0xe, rx=0x7, ry=0x1, msg=0xb56, flag=0xcb
	entity_list_end
	npc_raw subtype=0x6, x=0x68, y=0x90, paramA=0x7, paramB=0x400, script=script_OldLadyCatHouse2
	entity_list_end

Entities_HouseInteriors3_Bakery_1:: @ 080F5C70
	object_raw subtype=0x2, x=0x40, y=0x60, paramA=0x68
	object_raw subtype=0x2, x=0x50, y=0x60, paramA=0x69
	object_raw subtype=0x2, x=0x60, y=0x60, paramA=0x6a
	object_raw subtype=0x2, x=0x70, y=0x60, paramA=0x6b
	object_raw subtype=0x4e, x=0xd0, y=0x78, collision=1, paramB=0x801
	object_raw subtype=0x4e, x=0x48, y=0x28, collision=1, paramB=0x900
	object_raw subtype=0x4e, x=0x88, y=0x28, collision=1, paramB=0xa00
	object_raw subtype=0x92, x=0xa4, y=0x48
	object_raw subtype=0x4d, x=0xc4, y=0x48, collision=1, paramA=0x1a
	object_raw subtype=0x4d, x=0xa8, y=0x68, collision=1, paramA=0x3a
	object_raw subtype=0x4f, x=0x8, y=0x88, paramA=0x2, paramB=0x3
	entity_list_end

Enemies_HouseInteriors3_Bakery:: @ 080F5D30
	entity_list_end

TileEntities_HouseInteriors3_Bakery:: @ 080F5D40
	tile_entity_list_end

gUnk_additional_8_HouseInteriors3_Bakery:: @ 080F5D48
	.incbin "data_080D5360/gUnk_additional_8_HouseInteriors3_Bakery.bin"

gUnk_additional_9_HouseInteriors3_Bakery:: @ 080F5D5C
	.incbin "data_080D5360/gUnk_additional_9_HouseInteriors3_Bakery.bin"

gUnk_additional_a_HouseInteriors3_Bakery:: @ 080F5D70
	.incbin "data_080D5360/gUnk_additional_a_HouseInteriors3_Bakery.bin"

Room_HouseInteriors3_Bakery:: @ 080F5D84
	.4byte Entities_HouseInteriors3_Bakery_0
	.4byte Entities_HouseInteriors3_Bakery_1
	.4byte Enemies_HouseInteriors3_Bakery
	.4byte TileEntities_HouseInteriors3_Bakery
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_Bakery
	.4byte sub_StateChange_HouseInteriors3_Bakery
	.4byte gUnk_additional_8_HouseInteriors3_Bakery
	.4byte gUnk_additional_9_HouseInteriors3_Bakery
	.4byte gUnk_additional_a_HouseInteriors3_Bakery

Entities_HouseInteriors3_Simon_0:: @ 080F5DB0
	npc_raw subtype=0x44, x=0xb0, y=0x40, script=script_Simon
	entity_list_end

gUnk_080F5DD0:: @ 080F5DD0
	npc_raw subtype=0x7, x=0x88, y=0x48, paramA=0x5, paramB=0x400, script=script_Kid4
	entity_list_end

Entities_HouseInteriors3_Simon_1:: @ 080F5DF0
	object_raw subtype=0x4f, x=0xe8, y=0x68, paramA=0x2, paramB=0x1
	entity_list_end

Enemies_HouseInteriors3_Simon:: @ 080F5E10
	entity_list_end

TileEntities_HouseInteriors3_Simon:: @ 080F5E20
	tile_entity_list_end

Room_HouseInteriors3_Simon:: @ 080F5E28
	.4byte Entities_HouseInteriors3_Simon_0
	.4byte Entities_HouseInteriors3_Simon_1
	.4byte Enemies_HouseInteriors3_Simon
	.4byte TileEntities_HouseInteriors3_Simon
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_Simon
	.4byte sub_StateChange_HouseInteriors3_Simon

Entities_HouseInteriors3_FigurineHouse_0:: @ 080F5E48
	object_raw subtype=0x0, x=0x78, y=0x74, collision=1, paramA=0x63, paramB=0x400, paramC=0xb40000
	entity_list_end

gUnk_080F5E68:: @ 080F5E68
	object_raw subtype=0x5d, x=0xd8, y=0x58, paramA=0x1, paramB=0x101
	entity_list_end

Entities_HouseInteriors3_FigurineHouse_1:: @ 080F5E88
	object_raw subtype=0x4f, x=0x8, y=0x58, paramA=0x2, paramB=0x3
	object_raw subtype=0x4f, x=0xe8, y=0x58, paramA=0x2, paramB=0x1
	npc_raw subtype=0x57, x=0x78, y=0x20, script=script_Phonograph
	entity_list_end

Enemies_HouseInteriors3_FigurineHouse:: @ 080F5EC8
	entity_list_end

TileEntities_HouseInteriors3_FigurineHouse:: @ 080F5ED8
	tile_entity type=0x2, paramA=0xb5, paramB=0x59, paramC=0x8a, paramD=0x1
	tile_entity type=0x2, paramA=0xb6, paramB=0x59, paramC=0x8b, paramD=0x1
	tile_entity type=0x2, paramA=0xb7, paramB=0x59, paramC=0x8c, paramD=0x1
	tile_entity_list_end

Room_HouseInteriors3_FigurineHouse:: @ 080F5EF8
	.4byte Entities_HouseInteriors3_FigurineHouse_0
	.4byte Entities_HouseInteriors3_FigurineHouse_1
	.4byte Enemies_HouseInteriors3_FigurineHouse
	.4byte TileEntities_HouseInteriors3_FigurineHouse
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_FigurineHouse
	.4byte sub_StateChange_HouseInteriors3_FigurineHouse

Entities_HouseInteriors3_BorlovEntrance_0:: @ 080F5F18
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object6APreventPlayerLeaveCarlov
	entity_list_end

gUnk_additional_8_HouseInteriors3_BorlovEntrance:: @ 080F5F38
	npc_raw subtype=0x6, x=0x38, y=0x78, paramA=0x8, paramB=0x400, script=script_Townsperson1
	entity_list_end

gUnk_additional_9_HouseInteriors3_BorlovEntrance:: @ 080F5F58
	npc_raw subtype=0x3f, x=0x78, y=0x48, paramA=0x1, script=script_Carlov
	entity_list_end

gUnk_additional_a_HouseInteriors3_BorlovEntrance:: @ 080F5F78
	npc_raw subtype=0x3f, x=0x78, y=0x48, paramA=0x1, script=script_CarlovWon
	entity_list_end

Entities_HouseInteriors3_BorlovEntrance_1:: @ 080F5F98
	object_raw subtype=0x4f, x=0x78, y=0xa8, paramA=0x2, paramB=0x2
	object_raw subtype=0x4f, x=0x78, y=0x8, paramA=0x1b
	object_raw subtype=0x35, x=0x78, y=0x18, paramA=0x1
	entity_list_end

Enemies_HouseInteriors3_BorlovEntrance:: @ 080F5FD8
	entity_list_end

TileEntities_HouseInteriors3_BorlovEntrance:: @ 080F5FE8
	tile_entity_list_end

Room_HouseInteriors3_BorlovEntrance:: @ 080F5FF0
	.4byte Entities_HouseInteriors3_BorlovEntrance_0
	.4byte Entities_HouseInteriors3_BorlovEntrance_1
	.4byte Enemies_HouseInteriors3_BorlovEntrance
	.4byte TileEntities_HouseInteriors3_BorlovEntrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_BorlovEntrance
	.4byte sub_StateChange_HouseInteriors3_BorlovEntrance
	.4byte gUnk_additional_8_HouseInteriors3_BorlovEntrance
	.4byte gUnk_additional_9_HouseInteriors3_BorlovEntrance
	.4byte gUnk_additional_a_HouseInteriors3_BorlovEntrance

Entities_HouseInteriors3_Carlov_0:: @ 080F601C
	npc_raw subtype=0x3f, x=0x78, y=0x39, script=script_Carlov2
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object6ACarlov
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object6ACarlov2
	object_raw subtype=0x54, x=0xa8, y=0x3e, paramA=0x1, paramB=0x80000, paramC=0x80000000
	entity_list_end

Entities_HouseInteriors3_Carlov_1:: @ 080F606C
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x2, paramB=0x2
	object_raw subtype=0x22, x=0x38, y=0x48
	object_raw subtype=0x22, x=0xb8, y=0x40, paramA=0x1
	entity_list_end

Enemies_HouseInteriors3_Carlov:: @ 080F60AC
	entity_list_end

TileEntities_HouseInteriors3_Carlov:: @ 080F60BC
	tile_entity_list_end

Room_HouseInteriors3_Carlov:: @ 080F60C4
	.4byte Entities_HouseInteriors3_Carlov_0
	.4byte Entities_HouseInteriors3_Carlov_1
	.4byte Enemies_HouseInteriors3_Carlov
	.4byte TileEntities_HouseInteriors3_Carlov
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_Carlov
	.4byte sub_StateChange_HouseInteriors3_Carlov

Entities_HouseInteriors3_Borlov_0:: @ 080F60E4
	npc_raw subtype=0x3f, x=0xb8, y=0x38, paramA=0x1, script=script_CarlovGame
	npc_raw subtype=0x51, script=script_CarlovChest
	entity_list_end

Entities_HouseInteriors3_Borlov_1:: @ 080F6114
	object_raw subtype=0x4f, x=0xb8, y=0x98, paramA=0x3, paramB=0x2
	object_raw subtype=0x35, x=0xb8, y=0x88, paramA=0x1, paramB=0xff00
	entity_list_end

Enemies_HouseInteriors3_Borlov:: @ 080F6144
	entity_list_end

TileEntities_HouseInteriors3_Borlov:: @ 080F6154
	tile_entity_list_end

Room_HouseInteriors3_Borlov:: @ 080F615C
	.4byte Entities_HouseInteriors3_Borlov_0
	.4byte Entities_HouseInteriors3_Borlov_1
	.4byte Enemies_HouseInteriors3_Borlov
	.4byte TileEntities_HouseInteriors3_Borlov
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HouseInteriors3_Borlov
	.4byte sub_StateChange_HouseInteriors3_Borlov

Entities_WindTribeTower_Entrance_0:: @ 080F617C
	npc_raw subtype=0x49, x=0xa8, y=0x58, paramB=0x401, script=script_WindTribespeople1
	npc_raw subtype=0x49, x=0x48, y=0x48, paramA=0x1, paramB=0x402, script=script_WindTribespeople2
	object_raw subtype=0x8d, x=0xb8, y=0x28, paramC=0xad0000
	entity_list_end

gUnk_080F61BC:: @ 080F61BC
	object_raw subtype=0xb8, x=0xb8, y=0x58, collision=1, paramB=0x1
	entity_list_end

Entities_WindTribeTower_Entrance_1:: @ 080F61DC
	object_raw subtype=0x4f, x=0x38, y=0x98, paramA=0x15, paramB=0x2
	object_raw subtype=0x4f, x=0x38, y=0xb8, paramA=0x15
	object_raw subtype=0x4f, x=0x38, y=0xa8, paramA=0x1f
	object_raw subtype=0x4f, x=0x78, y=0x148, paramA=0x14, paramB=0x2
	object_raw subtype=0x4f, x=0x88, y=0xd8, paramA=0x16
	object_raw subtype=0x4d, x=0x7c, y=0x28, collision=1, paramA=0x23
	object_raw subtype=0x4d, x=0x94, y=0x28, collision=1, paramA=0x24
	entity_list_end

Enemies_WindTribeTower_Entrance:: @ 080F625C
	entity_list_end

TileEntities_WindTribeTower_Entrance:: @ 080F626C
	tile_entity type=0x2, paramA=0x5, paramB=0x735c, paramC=0x84, paramD=0x1
	tile_entity type=0x2, paramA=0x6, paramB=0x745c, paramC=0x85, paramD=0x1
	tile_entity_list_end

Room_WindTribeTower_Entrance:: @ 080F6284
	.4byte Entities_WindTribeTower_Entrance_0
	.4byte Entities_WindTribeTower_Entrance_1
	.4byte Enemies_WindTribeTower_Entrance
	.4byte TileEntities_WindTribeTower_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_WindTribeTower_Entrance
	.4byte sub_StateChange_WindTribeTower_Entrance

Entities_WindTribeTower_Floor2_0:: @ 080F62A4
	npc_raw subtype=0x49, x=0x68, y=0x58, paramA=0x2, paramB=0x403, script=script_WindTribespeople5
	object_raw subtype=0x5, x=0x98, y=0x128
	object_raw subtype=0x5, x=0x88, y=0x128
	entity_list_end

gUnk_080F62E4:: @ 080F62E4
	object_raw subtype=0x18, x=0xa0, y=0x28
	npc_raw subtype=0x4a, x=0xa0, y=0x38, script=script_GregalSick
	npc_raw subtype=0x49, x=0x88, y=0xfc, paramA=0x5, paramB=0x406, script=script_WindTribespeople4
	entity_list_end

gUnk_080F6324:: @ 080F6324
	npc_raw subtype=0x4a, x=0xa0, y=0x58, paramA=0x3, script=script_GregalHealthy
	entity_list_end

Entities_WindTribeTower_Floor2_1:: @ 080F6344
	object_raw subtype=0x4f, x=0x38, y=0x98, paramA=0x15, paramB=0x2
	object_raw subtype=0x4f, x=0x38, y=0xb8, paramA=0x15
	object_raw subtype=0x4f, x=0x38, y=0xa8, paramA=0x1f
	object_raw subtype=0x4f, x=0xb8, y=0xd8, paramA=0x15
	object_raw subtype=0x4f, x=0x88, y=0xd8, paramA=0x16
	entity_list_end

Enemies_WindTribeTower_Floor2:: @ 080F63A4
	entity_list_end

TileEntities_WindTribeTower_Floor2:: @ 080F63B4
	tile_entity type=0x2, paramA=0x7, paramB=0x755c, paramC=0x84, paramD=0x1
	tile_entity_list_end

Room_WindTribeTower_Floor2:: @ 080F63C4
	.4byte Entities_WindTribeTower_Floor2_0
	.4byte Entities_WindTribeTower_Floor2_1
	.4byte Enemies_WindTribeTower_Floor2
	.4byte TileEntities_WindTribeTower_Floor2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_WindTribeTower_Floor2
	.4byte sub_StateChange_WindTribeTower_Floor2

Entities_WindTribeTower_Floor3_0:: @ 080F63E4
	npc_raw subtype=0x49, x=0x68, y=0xf8, paramA=0x5, paramB=0x406, script=script_WindTribespeople4
	object_raw subtype=0x5, x=0x68, y=0x128
	object_raw subtype=0x5, x=0x78, y=0x128
	object_raw subtype=0x5, x=0x88, y=0x128
	object_raw subtype=0x5, x=0x28, y=0x128
	object_raw subtype=0x5, x=0xc8, y=0x128
	entity_list_end

Entities_WindTribeTower_Floor3_1:: @ 080F6454
	object_raw subtype=0x4f, x=0x38, y=0x98, paramA=0x15, paramB=0x2
	object_raw subtype=0x4f, x=0x38, y=0xb8, paramA=0x15
	object_raw subtype=0x4f, x=0x38, y=0xa8, paramA=0x1f
	object_raw subtype=0x4f, x=0xb8, y=0xd8, paramA=0x15
	object_raw subtype=0x4f, x=0x88, y=0xd8, paramA=0x16
	entity_list_end

Enemies_WindTribeTower_Floor3:: @ 080F64B4
	entity_list_end

TileEntities_WindTribeTower_Floor3:: @ 080F64C4
	tile_entity type=0x2, paramA=0x8, paramB=0x6e5c, paramC=0x8a, paramD=0x1
	tile_entity type=0x2, paramA=0x9, paramB=0x725c, paramC=0x87, paramD=0x1
	tile_entity type=0x2, paramA=0xa, paramB=0x715c, paramC=0x84, paramD=0x1
	tile_entity_list_end

Room_WindTribeTower_Floor3:: @ 080F64E4
	.4byte Entities_WindTribeTower_Floor3_0
	.4byte Entities_WindTribeTower_Floor3_1
	.4byte Enemies_WindTribeTower_Floor3
	.4byte TileEntities_WindTribeTower_Floor3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_WindTribeTower_Floor3
	.4byte sub_StateChange_WindTribeTower_Floor3

Entities_WindTribeTower_Floor4_0:: @ 080F6504
	npc_raw subtype=0x49, x=0x78, y=0x28, paramA=0x4, paramB=0x405, script=script_Siroc
	object_raw subtype=0x5, x=0x28, y=0x118
	object_raw subtype=0x5, x=0x28, y=0x128
	object_raw subtype=0x5, x=0xc8, y=0x118
	object_raw subtype=0x5, x=0xc8, y=0x128
	entity_list_end

gUnk_080F6564:: @ 080F6564
	npc_raw subtype=0x49, x=0x88, y=0xf8, paramA=0x3, paramB=0x404, script=script_WindTribespeople3
	entity_list_end

gUnk_080F6584:: @ 080F6584
	npc_raw subtype=0x49, x=0x68, y=0xf8, paramA=0x3, paramB=0x404, script=script_WindTribespeople3
	entity_list_end

Entities_WindTribeTower_Floor4_1:: @ 080F65A4
	object_raw subtype=0x4f, x=0x38, y=0x98, paramA=0x15, paramB=0x2
	object_raw subtype=0x4f, x=0x38, y=0xb8, paramA=0x15
	object_raw subtype=0x4f, x=0x38, y=0xa8, paramA=0x1f
	object_raw subtype=0x4f, x=0xb8, y=0xd8, paramA=0x15
	object_raw subtype=0x4f, x=0x88, y=0xd8, paramA=0x16
	entity_list_end

Enemies_WindTribeTower_Floor4:: @ 080F6604
	entity_list_end

TileEntities_WindTribeTower_Floor4:: @ 080F6614
	tile_entity type=0x2, paramA=0xe, paramB=0x6f5c, paramC=0x82, paramD=0x1
	tile_entity type=0x2, paramA=0xf, paramB=0x705c, paramC=0x83, paramD=0x1
	tile_entity_list_end

Room_WindTribeTower_Floor4:: @ 080F662C
	.4byte Entities_WindTribeTower_Floor4_0
	.4byte Entities_WindTribeTower_Floor4_1
	.4byte Enemies_WindTribeTower_Floor4
	.4byte TileEntities_WindTribeTower_Floor4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_WindTribeTower_Floor4
	.4byte sub_StateChange_WindTribeTower_Floor4

Entities_WindTribeTowerRoof_Main_0:: @ 080F664C
	object_raw subtype=0x82, x=0x78, y=0x48, paramB=0x3
	object_raw subtype=0x95, x=0x68, y=0xe8, collision=2, paramA=0x3
	object_raw subtype=0x95, x=0x28, y=0x80, collision=2, paramA=0x3
	object_raw subtype=0x95, x=0xc8, y=0x80, collision=2, paramA=0x4
	object_raw subtype=0x95, x=0x98, y=0x118, collision=2, paramA=0x5
	entity_list_end

gUnk_080F66AC:: @ 080F66AC
	object_raw subtype=0x69, unknown=0x4f, paramC=script_EzloTalkPoW
	entity_list_end

Entities_WindTribeTowerRoof_Main_1:: @ 080F66CC
	manager subtype=0x1b, unknown=0x8, paramA=0x5
	object_raw subtype=0x4f, x=0xb8, y=0x128, paramA=0x17
	object_raw subtype=0x4d, x=0x28, y=0x78, collision=1, paramA=0x20
	object_raw subtype=0x4d, x=0xc8, y=0x78, collision=1, paramA=0x20
	object_raw subtype=0x4d, x=0x28, y=0x168, collision=1, paramA=0x20
	object_raw subtype=0x4d, x=0xc8, y=0x168, collision=1, paramA=0x20
	object_raw subtype=0x4d, x=0x54, y=0xa8, collision=1, paramA=0x21
	object_raw subtype=0x4d, x=0x9c, y=0xa8, collision=1, paramA=0x21, paramB=0x1
	object_raw subtype=0x5, x=0x18, y=0xa8, collision=1, paramA=0x60
	object_raw subtype=0x5, x=0xd8, y=0xa8, collision=1, paramA=0x60
	object_raw subtype=0x5, x=0x38, y=0xa8, collision=1
	object_raw subtype=0x5, x=0xb8, y=0xa8, collision=1
	entity_list_end

Enemies_WindTribeTowerRoof_Main:: @ 080F679C
	entity_list_end

TileEntities_WindTribeTowerRoof_Main:: @ 080F67AC
	tile_entity type=0x7, paramB=0x1800
	tile_entity_list_end

Area_WindTribeTowerRoof_Main:: @ 080F67BC
	.4byte Entities_WindTribeTowerRoof_Main_0
	.4byte Entities_WindTribeTowerRoof_Main_1
	.4byte Enemies_WindTribeTowerRoof_Main
	.4byte TileEntities_WindTribeTowerRoof_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_WindTribeTowerRoof_Main
	.4byte sub_StateChange_WindTribeTowerRoof_Main

Entities_Beanstalks_MountCrenel_0:: @ 080F67DC
	object_raw subtype=0x0, x=0xa8, y=0x54, collision=1, paramA=0x63, paramB=0x400, paramC=0x830000
	object_raw subtype=0x0, x=0xa8, y=0x38, collision=1, paramA=0x56, paramB=0x400, paramC=0x960000
	object_raw subtype=0x0, x=0xb8, y=0x48, collision=1, paramA=0x56, paramB=0x400, paramC=0x970000
	object_raw subtype=0x0, x=0xc8, y=0x58, collision=1, paramA=0x56, paramB=0x400, paramC=0x980000
	object_raw subtype=0x0, x=0xb8, y=0x68, collision=1, paramA=0x56, paramB=0x400, paramC=0x990000
	object_raw subtype=0x0, x=0xa8, y=0x78, collision=1, paramA=0x56, paramB=0x400, paramC=0x9a0000
	object_raw subtype=0x0, x=0x98, y=0x68, collision=1, paramA=0x56, paramB=0x400, paramC=0x9b0000
	object_raw subtype=0x0, x=0x88, y=0x58, collision=1, paramA=0x56, paramB=0x400, paramC=0x9c0000
	object_raw subtype=0x0, x=0x98, y=0x48, collision=1, paramA=0x56, paramB=0x400, paramC=0x9d0000
	entity_list_end

Entities_Beanstalks_MountCrenel_1:: @ 080F687C
	manager subtype=0x1d
	object_raw subtype=0x2c, x=0x58, y=0x78, paramA=0x8
	object_raw subtype=0x4a, y=0x20
	object_raw subtype=0x4a, y=0x30, paramA=0x1
	object_raw subtype=0x4a, y=0x8, paramA=0x2
	object_raw subtype=0x4a, y=0x98, paramA=0x2, paramB=0x1


Enemies_Beanstalks_MountCrenel:: @ 080F68DC
	entity_list_end

TileEntities_Beanstalks_MountCrenel:: @ 080F68EC
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_MountCrenel:: @ 080F68FC
	.4byte Entities_Beanstalks_MountCrenel_0
	.4byte Entities_Beanstalks_MountCrenel_1
	.4byte Enemies_Beanstalks_MountCrenel
	.4byte TileEntities_Beanstalks_MountCrenel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_MountCrenel
	.4byte sub_StateChange_Beanstalks_MountCrenel

Entities_Beanstalks_LakeHylia_0:: @ 080F691C
	object_raw subtype=0x0, x=0xc0, y=0x44, collision=1, paramA=0x63, paramB=0x400, paramC=0x840000
	entity_list_end

Entities_Beanstalks_LakeHylia_1:: @ 080F693C
	manager subtype=0x1d
	object_raw subtype=0x2c, x=0x58, y=0x78, paramA=0x8
	object_raw subtype=0x4a, y=0x20
	object_raw subtype=0x4a, y=0x30, paramA=0x1
	object_raw subtype=0x4a, y=0x8, paramA=0x2
	object_raw subtype=0x4a, y=0x98, paramA=0x2, paramB=0x1


Enemies_Beanstalks_LakeHylia:: @ 080F699C
	entity_list_end

TileEntities_Beanstalks_LakeHylia:: @ 080F69AC
	tile_entity type=0x2, paramA=0x85, paramB=0x59, paramC=0x10a
	tile_entity type=0x2, paramA=0x86, paramB=0xc83f, paramC=0x10d
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_LakeHylia:: @ 080F69CC
	.4byte Entities_Beanstalks_LakeHylia_0
	.4byte Entities_Beanstalks_LakeHylia_1
	.4byte Enemies_Beanstalks_LakeHylia
	.4byte TileEntities_Beanstalks_LakeHylia
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_LakeHylia
	.4byte sub_StateChange_Beanstalks_LakeHylia

Entities_Beanstalks_Ruins_0:: @ 080F69EC
	object_raw subtype=0xc, x=0x88, y=0x38, paramA=0x4, paramB=0x87
	entity_list_end

Entities_Beanstalks_Ruins_1:: @ 080F6A0C
	manager subtype=0x1d
	object_raw subtype=0x2c, x=0x58, y=0x78, paramA=0x8
	object_raw subtype=0x4a, y=0x20
	object_raw subtype=0x4a, y=0x30, paramA=0x1
	object_raw subtype=0x4a, y=0x8, paramA=0x2
	object_raw subtype=0x4a, y=0x98, paramA=0x2, paramB=0x1


Enemies_Beanstalks_Ruins:: @ 080F6A6C
	entity_list_end

TileEntities_Beanstalks_Ruins:: @ 080F6A7C
	tile_entity type=0x3, paramA=0x87, paramB=0x66, paramC=0x88, paramD=0x38
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_Ruins:: @ 080F6A94
	.4byte Entities_Beanstalks_Ruins_0
	.4byte Entities_Beanstalks_Ruins_1
	.4byte Enemies_Beanstalks_Ruins
	.4byte TileEntities_Beanstalks_Ruins
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_Ruins
	.4byte sub_StateChange_Beanstalks_Ruins

Entities_Beanstalks_EasternHills_0:: @ 080F6AB4
	object_raw subtype=0x0, x=0xc8, y=0x54, collision=1, paramA=0x63, paramB=0x400, paramC=0x880000
	entity_list_end

Entities_Beanstalks_EasternHills_1:: @ 080F6AD4
	manager subtype=0x1d
	object_raw subtype=0x2c, x=0x58, y=0x78, paramA=0x8
	object_raw subtype=0x4a, y=0x20
	object_raw subtype=0x4a, y=0x30, paramA=0x1
	object_raw subtype=0x4a, y=0x8, paramA=0x2
	object_raw subtype=0x4a, y=0x98, paramA=0x2, paramB=0x1


Enemies_Beanstalks_EasternHills:: @ 080F6B34
	entity_list_end

TileEntities_Beanstalks_EasternHills:: @ 080F6B44
	tile_entity type=0x2, paramA=0x89, paramB=0x59, paramC=0x4a
	tile_entity type=0x2, paramA=0x8a, paramB=0xc83f, paramC=0x181
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_EasternHills:: @ 080F6B64
	.4byte Entities_Beanstalks_EasternHills_0
	.4byte Entities_Beanstalks_EasternHills_1
	.4byte Enemies_Beanstalks_EasternHills
	.4byte TileEntities_Beanstalks_EasternHills
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_EasternHills
	.4byte sub_StateChange_Beanstalks_EasternHills

Entities_Beanstalks_WesternWoods_0:: @ 080F6B84
	object_raw subtype=0x0, x=0x88, y=0x3b, collision=1, paramA=0x56, paramB=0x400, paramC=0x8c0000
	object_raw subtype=0x0, x=0x98, y=0x3b, collision=1, paramA=0x56, paramB=0x400, paramC=0x8d0000
	object_raw subtype=0x0, x=0xa8, y=0x3b, collision=1, paramA=0x56, paramB=0x400, paramC=0x8e0000
	object_raw subtype=0x0, x=0xb8, y=0x3b, collision=1, paramA=0x56, paramB=0x400, paramC=0x8f0000
	object_raw subtype=0x0, x=0xc8, y=0x3b, collision=1, paramA=0x56, paramB=0x400, paramC=0x900000
	object_raw subtype=0x0, x=0xc8, y=0x4b, collision=1, paramA=0x56, paramB=0x400, paramC=0x910000
	object_raw subtype=0x0, x=0xc8, y=0x5b, collision=1, paramA=0x56, paramB=0x400, paramC=0x920000
	object_raw subtype=0x0, x=0xc8, y=0x6b, collision=1, paramA=0x56, paramB=0x400, paramC=0x930000
	object_raw subtype=0x0, x=0xc8, y=0x7b, collision=1, paramA=0x56, paramB=0x400, paramC=0x9e0000
	object_raw subtype=0x0, x=0x88, y=0x7b, collision=1, paramA=0x56, paramB=0x400, paramC=0x9f0000
	object_raw subtype=0x0, x=0x98, y=0x7b, collision=1, paramA=0x56, paramB=0x400, paramC=0xa00000
	object_raw subtype=0x0, x=0xa8, y=0x7b, collision=1, paramA=0x56, paramB=0x400, paramC=0xa10000
	object_raw subtype=0x0, x=0xb8, y=0x7b, collision=1, paramA=0x56, paramB=0x400, paramC=0xa20000
	object_raw subtype=0x0, x=0x88, y=0x4b, collision=1, paramA=0x56, paramB=0x400, paramC=0xa30000
	object_raw subtype=0x0, x=0x88, y=0x5b, collision=1, paramA=0x56, paramB=0x400, paramC=0xa40000
	object_raw subtype=0x0, x=0x88, y=0x6b, collision=1, paramA=0x56, paramB=0x400, paramC=0xa50000
	entity_list_end

Entities_Beanstalks_WesternWoods_1:: @ 080F6C94
	manager subtype=0x1d
	object_raw subtype=0x2c, x=0x58, y=0x78, paramA=0x8
	object_raw subtype=0x4a, y=0x20
	object_raw subtype=0x4a, y=0x30, paramA=0x1
	object_raw subtype=0x4a, y=0x8, paramA=0x2
	object_raw subtype=0x4a, y=0x98, paramA=0x2, paramB=0x1


Enemies_Beanstalks_WesternWoods:: @ 080F6CF4
	entity_list_end

TileEntities_Beanstalks_WesternWoods:: @ 080F6D04
	tile_entity type=0x2, paramA=0x8b, paramB=0x6f5c, paramC=0x14a
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_WesternWoods:: @ 080F6D1C
	.4byte Entities_Beanstalks_WesternWoods_0
	.4byte Entities_Beanstalks_WesternWoods_1
	.4byte Enemies_Beanstalks_WesternWoods
	.4byte TileEntities_Beanstalks_WesternWoods
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_WesternWoods
	.4byte sub_StateChange_Beanstalks_WesternWoods

Entities_Beanstalks_MountCrenelClimb_0:: @ 080F6D3C
	entity_list_end

Entities_Beanstalks_MountCrenelClimb_1:: @ 080F6D4C
	object_raw subtype=0x2c, x=0x78, y=0xb8, paramA=0x7


Enemies_Beanstalks_MountCrenelClimb:: @ 080F6D5C
	entity_list_end

TileEntities_Beanstalks_MountCrenelClimb:: @ 080F6D6C
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_MountCrenelClimb:: @ 080F6D7C
	.4byte Entities_Beanstalks_MountCrenelClimb_0
	.4byte Entities_Beanstalks_MountCrenelClimb_1
	.4byte Enemies_Beanstalks_MountCrenelClimb
	.4byte TileEntities_Beanstalks_MountCrenelClimb
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_MountCrenelClimb
	.4byte sub_StateChange_Beanstalks_MountCrenelClimb

Entities_Beanstalks_LakeHyliaClimb_0:: @ 080F6D9C
	entity_list_end

Entities_Beanstalks_LakeHyliaClimb_1:: @ 080F6DAC
	object_raw subtype=0x2c, x=0x78, y=0xb8, paramA=0x7


Enemies_Beanstalks_LakeHyliaClimb:: @ 080F6DBC
	entity_list_end

TileEntities_Beanstalks_LakeHyliaClimb:: @ 080F6DCC
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_LakeHyliaClimb:: @ 080F6DDC
	.4byte Entities_Beanstalks_LakeHyliaClimb_0
	.4byte Entities_Beanstalks_LakeHyliaClimb_1
	.4byte Enemies_Beanstalks_LakeHyliaClimb
	.4byte TileEntities_Beanstalks_LakeHyliaClimb
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_LakeHyliaClimb
	.4byte sub_StateChange_Beanstalks_LakeHyliaClimb

Entities_Beanstalks_RuinsClimb_0:: @ 080F6DFC
	entity_list_end

Entities_Beanstalks_RuinsClimb_1:: @ 080F6E0C
	object_raw subtype=0x2c, x=0x78, y=0xb8, paramA=0x7


Enemies_Beanstalks_RuinsClimb:: @ 080F6E1C
	entity_list_end

TileEntities_Beanstalks_RuinsClimb:: @ 080F6E2C
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_RuinsClimb:: @ 080F6E3C
	.4byte Entities_Beanstalks_RuinsClimb_0
	.4byte Entities_Beanstalks_RuinsClimb_1
	.4byte Enemies_Beanstalks_RuinsClimb
	.4byte TileEntities_Beanstalks_RuinsClimb
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_RuinsClimb
	.4byte sub_StateChange_Beanstalks_RuinsClimb

Entities_Beanstalks_EasternHillsClimb_0:: @ 080F6E5C
	entity_list_end

Entities_Beanstalks_EasternHillsClimb_1:: @ 080F6E6C
	object_raw subtype=0x2c, x=0x78, y=0xb8, paramA=0x7


Enemies_Beanstalks_EasternHillsClimb:: @ 080F6E7C
	entity_list_end

TileEntities_Beanstalks_EasternHillsClimb:: @ 080F6E8C
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_EasternHillsClimb:: @ 080F6E9C
	.4byte Entities_Beanstalks_EasternHillsClimb_0
	.4byte Entities_Beanstalks_EasternHillsClimb_1
	.4byte Enemies_Beanstalks_EasternHillsClimb
	.4byte TileEntities_Beanstalks_EasternHillsClimb
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_EasternHillsClimb
	.4byte sub_StateChange_Beanstalks_EasternHillsClimb

Entities_Beanstalks_WesternWoodsClimb_0:: @ 080F6EBC
	entity_list_end

Entities_Beanstalks_WesternWoodsClimb_1:: @ 080F6ECC
	object_raw subtype=0x2c, x=0x78, y=0xb8, paramA=0x7


Enemies_Beanstalks_WesternWoodsClimb:: @ 080F6EDC
	entity_list_end

TileEntities_Beanstalks_WesternWoodsClimb:: @ 080F6EEC
	tile_entity type=0x7, paramB=0x1300
	tile_entity_list_end

Room_Beanstalks_WesternWoodsClimb:: @ 080F6EFC
	.4byte Entities_Beanstalks_WesternWoodsClimb_0
	.4byte Entities_Beanstalks_WesternWoodsClimb_1
	.4byte Enemies_Beanstalks_WesternWoodsClimb
	.4byte TileEntities_Beanstalks_WesternWoodsClimb
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Beanstalks_WesternWoodsClimb
	.4byte sub_StateChange_Beanstalks_WesternWoodsClimb

Entities_HyruleField_WesternWoodSouth_0:: @ 080F6F1C
	entity_list_end

Entities_HyruleField_WesternWoodSouth_1:: @ 080F6F2C
.ifdef EU_JP
	object_raw subtype=0x2c, x=0x38, y=0x38, paramA=0x7, paramB=0xb100
.else
	object_raw subtype=0x2c, x=0x38, y=0x38, paramA=0x7, paramB=0xb300
.endif
	manager subtype=0x18
	manager subtype=0x3, x=0x78, y=0x80, unknown=0x0, paramB=0x102
	manager subtype=0x6, paramA=0x8
	entity_list_end

Enemies_HyruleField_WesternWoodSouth:: @ 080F6F7C
.ifdef EU
	enemy_raw subtype=0x15, x=0x38, y=0x58, paramB=0xe180000, paramC=0x200010
.else
	enemy_raw subtype=0x46, x=0x38, y=0x58, paramB=0xe180000, paramC=0x200010
.endif
	enemy_raw subtype=0x46, x=0x148, y=0x68, paramB=0xe140000, paramC=0x200110
	enemy_raw subtype=0x65, x=0x180, y=0x70
	entity_list_end

TileEntities_HyruleField_WesternWoodSouth:: @ 080F6FBC
	tile_entity type=0xc, paramA=0x7
	tile_entity_list_end

gUnk_additional_8_HyruleField_WesternWoodSouth:: @ 080F6FCC
	exit_region_raw centerX=0x38, centerY=0x8, halfWidth=0x8, halfHeight=0x4, exitIndex=0x9, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_HyruleField_WesternWoodSouth:: @ 080F6FDC
	exit_raw transition=0x1, destX=0x78, destY=0x98, destArea=0xd, destRoom=0x14, unknownA=0x1

Room_HyruleField_WesternWoodSouth:: @ 080F6FF0
	.4byte Entities_HyruleField_WesternWoodSouth_0
	.4byte Entities_HyruleField_WesternWoodSouth_1
	.4byte Enemies_HyruleField_WesternWoodSouth
	.4byte TileEntities_HyruleField_WesternWoodSouth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_WesternWoodSouth
	.4byte sub_StateChange_HyruleField_WesternWoodSouth
	.4byte gUnk_additional_8_HyruleField_WesternWoodSouth
	.4byte gUnk_additional_9_HyruleField_WesternWoodSouth

Entities_HyruleField_SouthHyruleField_0:: @ 080F7018
	object_raw subtype=0x0, x=0x278, y=0x188, paramA=0x56, paramB=0x700
	object_raw subtype=0x0, x=0x288, y=0x188, paramA=0x56, paramB=0x700
	object_raw subtype=0x0, x=0x298, y=0x188, paramA=0x56, paramB=0x700
	object_raw subtype=0x0, x=0x278, y=0x198, paramA=0x56, paramB=0x700
	object_raw subtype=0x0, x=0x288, y=0x198, paramA=0x56, paramB=0x700
	object_raw subtype=0x0, x=0x298, y=0x198, paramA=0x56, paramB=0x700
	entity_list_end

gUnk_080F7088:: @ 080F7088
	npc_raw subtype=0x1b, x=0x3b8, y=0x118, script=script_TingleSiblings
	entity_list_end

gUnk_080F70A8:: @ 080F70A8
	npc_raw subtype=0x28, x=0x1e8, y=0x180, script=script_ZeldaOutsideLinksHouse
	npc_raw subtype=0x4e, x=0x238, y=0x1a8, script=script_Npc4EOutsideLinksHouse
	entity_list_end

gUnk_080F70D8:: @ 080F70D8
	object_raw subtype=0xbb, x=0x2c8, y=0x128, unknown=0x4f, paramB=0x6, paramC=script_Windcrest
	entity_list_end

Entities_HyruleField_SouthHyruleField_1:: @ 080F70F8
	object_raw subtype=0x19, x=0x290, y=0x193, collision=1, paramA=0x3, paramB=0x2
.ifdef EU_JP
	object_raw subtype=0x9c, x=0x58, y=0x210, paramC=0x6a0000
.else	
	object_raw subtype=0x9c, x=0x58, y=0x210, paramC=0x6c0000
.endif
	manager subtype=0x3, x=0x58, y=0x220, unknown=0x0, paramB=0x102
	manager subtype=0x18
	object_raw subtype=0x2d, x=0x2d0, y=0x148
	entity_list_end

Enemies_HyruleField_SouthHyruleField:: @ 080F7158
	enemy_raw subtype=0x0, x=0x318, y=0x58, paramB=0xa280000, paramC=0x400280
	enemy_raw subtype=0x0, x=0x378, y=0x88, paramB=0xa280000, paramC=0x400280
	enemy_raw subtype=0x0, x=0x3a8, y=0x1b8, paramB=0xa0e0000, paramC=0x1800350
	enemy_raw subtype=0x0, x=0x368, y=0x128, paramB=0x18100000, paramC=0xe00300
	enemy_raw subtype=0x0, x=0x348, y=0x198, paramB=0xe0e0000, paramC=0x1300320
	enemy_raw subtype=0x0, x=0x48, y=0x60, paramB=0xe0c0000, paramC=0x400020
	enemy_raw subtype=0x0, x=0x78, y=0x98, paramB=0xe0c0000, paramC=0x400020
	enemy_raw subtype=0x0, x=0x158, y=0x258, paramB=0x60c0000, paramC=0x2300120
	enemy_raw subtype=0x0, x=0x208, y=0x198, paramB=0x16120000, paramC=0x1100180
	enemy_raw subtype=0x0, x=0x1b8, y=0x148, paramB=0x16120000, paramC=0x1100180
	enemy_raw subtype=0x0, x=0x208, y=0x108, paramB=0x120e0000, paramC=0xa001c0
	entity_list_end

TileEntities_HyruleField_SouthHyruleField:: @ 080F7218
	tile_entity type=0xc, paramA=0xb
.ifdef EU_JP
	tile_entity type=0x4, paramA=0x69, paramB=0x1, paramC=0x118, paramD=0xa8
	tile_entity type=0xa, paramA=0x1, paramB=0x5c, paramC=0x151, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x5d, paramC=0x190, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x5e, paramC=0x1d1, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x5f, paramC=0x99a, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x60, paramC=0x9d9, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x61, paramC=0xa1a, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x62, paramC=0x8ee, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x63, paramC=0x92f, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x64, paramC=0x96e, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x65, paramC=0x164, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x66, paramC=0x1a5, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x67, paramC=0x1e4, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x68, paramC=0x1e5, paramD=0x1f
.else
	tile_entity type=0x4, paramA=0x6b, paramB=0x1, paramC=0x118, paramD=0xa8
	tile_entity type=0xa, paramA=0x1, paramB=0x5e, paramC=0x151, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x5f, paramC=0x190, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x60, paramC=0x1d1, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x61, paramC=0x99a, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x62, paramC=0x9d9, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x63, paramC=0xa1a, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x64, paramC=0x8ee, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x65, paramC=0x92f, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x66, paramC=0x96e, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x67, paramC=0x164, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x68, paramC=0x1a5, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x69, paramC=0x1e4, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x6a, paramC=0x1e5, paramD=0x1f
.endif
	tile_entity type=0x5, paramB=0x700, paramC=0x15c, paramD=0x607
	tile_entity_list_end

gUnk_additional_8_HyruleField_SouthHyruleField:: @ 080F72A0
	.incbin "data_080D5360/gUnk_additional_8_HyruleField_SouthHyruleField.bin"

gUnk_additional_9_HyruleField_SouthHyruleField:: @ 080F72B0
	.incbin "data_080D5360/gUnk_additional_9_HyruleField_SouthHyruleField.bin"

Room_HyruleField_SouthHyruleField:: @ 080F72C4
	.4byte Entities_HyruleField_SouthHyruleField_0
	.4byte Entities_HyruleField_SouthHyruleField_1
	.4byte Enemies_HyruleField_SouthHyruleField
	.4byte TileEntities_HyruleField_SouthHyruleField
	.4byte sub_unk1_HyruleField_SouthHyruleField
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_SouthHyruleField
	.4byte sub_StateChange_HyruleField_SouthHyruleField
	.4byte gUnk_additional_8_HyruleField_SouthHyruleField
	.4byte gUnk_additional_9_HyruleField_SouthHyruleField

Entities_HyruleField_EasternHillsSouth_0:: @ 080F72EC
	object_raw subtype=0x32, x=0xb8, y=0xa8
	object_raw subtype=0x32, x=0x138, y=0x98
	entity_list_end

Entities_HyruleField_EasternHillsSouth_1:: @ 080F731C
	manager subtype=0x3, x=0x48, y=0x80, unknown=0x0, paramB=0x102
	manager subtype=0x18
	entity_list_end

Enemies_HyruleField_EasternHillsSouth:: @ 080F734C
	enemy_raw subtype=0x35, x=0x188, y=0x58, paramB=0xb0d0000, paramC=0x480148
	enemy_raw subtype=0x35, x=0x128, y=0x28, paramB=0x70f0000, paramC=0x180128
	manager subtype=0x28, unknown=0x3, paramB=0x2
	entity_list_end

TileEntities_HyruleField_EasternHillsSouth:: @ 080F738C
	tile_entity type=0xc, paramA=0xf
.ifdef EU_JP
	tile_entity type=0xa, paramA=0x1, paramB=0x6c, paramC=0x149, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x6d, paramC=0x14a, paramD=0x1d
.else
	tile_entity type=0xa, paramA=0x1, paramB=0x6e, paramC=0x149, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x6f, paramC=0x14a, paramD=0x1d
.endif
	tile_entity_list_end

Room_HyruleField_EasternHillsSouth:: @ 080F73AC
	.4byte Entities_HyruleField_EasternHillsSouth_0
	.4byte Entities_HyruleField_EasternHillsSouth_1
	.4byte Enemies_HyruleField_EasternHillsSouth
	.4byte TileEntities_HyruleField_EasternHillsSouth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_EasternHillsSouth
	.4byte sub_StateChange_HyruleField_EasternHillsSouth

Entities_HyruleField_EasternHillsCenter_0:: @ 080F73CC
	entity_list_end

Entities_HyruleField_EasternHillsCenter_1:: @ 080F73DC
.ifdef EU_JP
	object_raw subtype=0x2c, x=0x48, y=0x38, paramA=0x7, paramB=0xb000
.else
	object_raw subtype=0x2c, x=0x48, y=0x38, paramA=0x7, paramB=0xb200
.endif
	manager subtype=0x18
	manager subtype=0x6, paramA=0x8
	entity_list_end

Enemies_HyruleField_EasternHillsCenter:: @ 080F741C
	enemy_raw subtype=0x35, x=0x28, y=0xb8, paramB=0x4140000, paramC=0xa00020
	enemy_raw subtype=0x35, x=0x198, y=0xb8, paramB=0x6100000, paramC=0xa00130
	enemy_raw subtype=0x35, x=0x178, y=0x58, paramB=0xa160000, paramC=0x2000d0
	manager subtype=0x28, unknown=0x3, paramB=0x2
	enemy_raw subtype=0x3, x=0x88, y=0x38, paramB=0xa260000, paramC=0x200060
	enemy_raw subtype=0x3, x=0x128, y=0x58, paramB=0xa260000, paramC=0x200060
	entity_list_end

TileEntities_HyruleField_EasternHillsCenter:: @ 080F748C
	tile_entity type=0xc, paramA=0xf
.ifdef EU_JP
	tile_entity type=0x4, paramA=0x6e, paramB=0x1, paramC=0xa8, paramD=0x98
.else
	tile_entity type=0x4, paramA=0x70, paramB=0x1, paramC=0xa8, paramD=0x98
.endif
	tile_entity_list_end

gUnk_additional_8_HyruleField_EasternHillsCenter:: @ 080F74A4
	exit_region_raw centerX=0x48, centerY=0xc, halfWidth=0x8, halfHeight=0x4, exitIndex=0x9, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_HyruleField_EasternHillsCenter:: @ 080F74B4
	exit_raw transition=0x1, destX=0x78, destY=0x98, destArea=0xd, destRoom=0x13, unknownA=0x1

Room_HyruleField_EasternHillsCenter:: @ 080F74C8
	.4byte Entities_HyruleField_EasternHillsCenter_0
	.4byte Entities_HyruleField_EasternHillsCenter_1
	.4byte Enemies_HyruleField_EasternHillsCenter
	.4byte TileEntities_HyruleField_EasternHillsCenter
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_EasternHillsCenter
	.4byte sub_StateChange_HyruleField_EasternHillsCenter
	.4byte gUnk_additional_8_HyruleField_EasternHillsCenter
	.4byte gUnk_additional_9_HyruleField_EasternHillsCenter

Entities_HyruleField_EasternHillsNorth_0:: @ 080F74F0
	entity_list_end

gUnk_080F7500:: @ 080F7500
	manager subtype=0x16, paramA=0x8
	entity_list_end

gUnk_additional_8_HyruleField_EasternHillsNorth:: @ 080F7520
	delayed_entity_raw subtype=0x3e, x=0xb8, y=0xe8, layer=1, paramC=script_Farmer, conditions=0xffff
	delayed_entity_raw subtype=0x3e, x=0x68, y=0x128, layer=1, paramA=0x1, paramC=script_Farmer, paramD=0x1, conditions=0xffff
	entity_list_end

gUnk_080F7550:: @ 080F7550
	manager subtype=0x16, paramA=0x9, paramB=0x3
	entity_list_end

gUnk_additional_9_HyruleField_EasternHillsNorth:: @ 080F7570
	delayed_entity_raw subtype=0x29, x=0x148, y=0xf0, layer=1, paramC=script_MutohOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x2a, x=0x128, y=0xd0, layer=1, paramC=script_CarpenterOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x2a, x=0x1a8, y=0x100, layer=1, paramA=0x1, paramC=script_CarpenterOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x2a, x=0x138, y=0x98, layer=1, paramA=0x2, paramC=script_CarpenterOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x2a, x=0x148, y=0x88, layer=1, paramA=0x3, paramC=script_CarpenterOutsideTown, conditions=0xffff
	entity_list_end

Entities_HyruleField_EasternHillsNorth_1:: @ 080F75D0
	manager subtype=0x4
	manager subtype=0x18
	object_raw subtype=0x19, x=0x40, y=0x52, collision=1, paramA=0x4, paramB=0x2
	entity_list_end

Enemies_HyruleField_EasternHillsNorth:: @ 080F7610
	enemy_raw subtype=0x0, x=0x178, y=0xe8, paramB=0x6160000, paramC=0xc000f0
	enemy_raw subtype=0x0, x=0x118, y=0xf8, paramB=0x6160000, paramC=0xc000f0
	enemy_raw subtype=0x2e, x=0x138, y=0x158, paramB=0x16060000, paramC=0x1200120
	enemy_raw subtype=0x2e, x=0xc8, y=0x1b8, paramB=0x12100000, paramC=0x1800040
	enemy_raw subtype=0x2e, x=0x58, y=0x198, paramB=0xc140000, paramC=0x1700020
	enemy_raw subtype=0x2e, x=0x68, y=0x1c8, paramB=0xc140000, paramC=0x1700020
	entity_list_end

gUnk_080F7680:: @ 080F7680
	.incbin "data_080D5360/gUnk_080F7680.bin"

TileEntities_HyruleField_EasternHillsNorth:: @ 080F76C0
	tile_entity type=0xc, paramA=0xf
.ifdef EU_JP
	tile_entity type=0xa, paramA=0x1, paramB=0x6f, paramC=0x6d0, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x70, paramC=0x710, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x71, paramC=0x711, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x72, paramC=0x751, paramD=0x1d
.else
	tile_entity type=0xa, paramA=0x1, paramB=0x71, paramC=0x6d0, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x72, paramC=0x710, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x73, paramC=0x711, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x74, paramC=0x751, paramD=0x1d
.endif
	tile_entity type=0x5, paramB=0x200, paramC=0x617, paramD=0x602
	tile_entity_list_end

Room_HyruleField_EasternHillsNorth:: @ 080F76F8
	.4byte Entities_HyruleField_EasternHillsNorth_0
	.4byte Entities_HyruleField_EasternHillsNorth_1
	.4byte Enemies_HyruleField_EasternHillsNorth
	.4byte TileEntities_HyruleField_EasternHillsNorth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_EasternHillsNorth
	.4byte sub_StateChange_HyruleField_EasternHillsNorth
	.4byte gUnk_additional_8_HyruleField_EasternHillsNorth
	.4byte gUnk_additional_9_HyruleField_EasternHillsNorth

Entities_HyruleField_LonLonRanch_0:: @ 080F7720
	manager subtype=0x16, paramA=0xb
.ifdef EU_JP
	object_raw subtype=0x0, x=0x218, y=0x74, collision=1, paramA=0x63, paramB=0x400, paramC=0x7c0000
	object_raw subtype=0x0, x=0x138, y=0x108, collision=1, paramA=0x57, paramB=0x700, paramC=0x7d0000
	ezlo_hint x=0x2c, y=0x36, rx=0x3, ry=0x2, msg=0xb59, flag=0x7e
.else
	object_raw subtype=0x0, x=0x218, y=0x74, collision=1, paramA=0x63, paramB=0x400, paramC=0x7e0000
	object_raw subtype=0x0, x=0x138, y=0x108, collision=1, paramA=0x57, paramB=0x700, paramC=0x7f0000
	ezlo_hint x=0x2c, y=0x36, rx=0x3, ry=0x2, msg=0xb59, flag=0x80
.endif
	entity_list_end

gUnk_additional_b_HyruleField_LonLonRanch:: @ 080F7770
	delayed_entity_raw subtype=0x31, x=0x148, y=0x1c8, layer=1, paramA=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x31, x=0x1b8, y=0x1b8, layer=1, paramA=0x2, paramB=0x1, conditions=0xffff
	delayed_entity_raw subtype=0x31, x=0x1b8, y=0x1f8, layer=1, paramA=0x3, paramB=0x2, conditions=0xffff
	delayed_entity_raw subtype=0x31, x=0x1e8, y=0x268, layer=1, paramA=0x4, paramB=0x3, conditions=0xffff
	entity_list_end

gUnk_080F77C0:: @ 080F77C0
	npc_raw subtype=0x1d, x=0x130, y=0x290, script=script_TalonLostKey
	npc_raw subtype=0x1e, x=0x120, y=0x270, script=script_MalonLostKey
	entity_list_end

gUnk_080F77F0:: @ 080F77F0
	npc_raw subtype=0x1e, x=0x13e, y=0x280, script=script_MalonAtRanch
	entity_list_end

gUnk_080F7810:: @ 080F7810
	manager subtype=0x16, paramA=0xc, paramB=0x5
	entity_list_end

gUnk_additional_c_HyruleField_LonLonRanch:: @ 080F7830
	delayed_entity_raw subtype=0x8, x=0xc8, y=0x228, layer=1, paramB=0x8, paramC=script_GuardNorthHyruleField, conditions=0xffff
	delayed_entity_raw subtype=0x8, x=0x38, y=0x218, layer=1, paramB=0x9, paramC=script_GuardNorthHyruleField, conditions=0xffff
	entity_list_end

gUnk_080F7860:: @ 080F7860
	manager subtype=0x16, paramA=0xd, paramB=0x8
	entity_list_end

gUnk_additional_d_HyruleField_LonLonRanch:: @ 080F7880
	delayed_entity_raw subtype=0x32, x=0x88, y=0x368, layer=1, paramC=script_GoronPunching, conditions=0xffff
	entity_list_end

gUnk_080F78A0:: @ 080F78A0
.ifdef EU
	manager subtype=0x16, paramA=0x12, paramB=0xe
.else
	manager subtype=0x16, paramA=0x12, paramB=0xf
.endif
	entity_list_end

gUnk_additional_12_HyruleField_LonLonRanch:: @ 080F78C0
	delayed_entity_raw subtype=0x1b, x=0xb8, y=0x108, layer=1, paramA=0x1, paramC=script_TingleSiblings, conditions=0xfff0
	entity_list_end

Entities_HyruleField_LonLonRanch_1:: @ 080F78E0
	manager subtype=0x16, paramA=0xe, paramB=0x10a
.ifdef EU_JP
	manager subtype=0x20, x=0xb8, y=0xc8, paramB=0x10a82e00, paramC=0x7810c8
	manager subtype=0x20, x=0x1e8, y=0x388, paramB=0x11d82e00, paramC=0x791388
	manager subtype=0x20, x=0xd8, y=0x388, paramB=0x10e82e00, paramC=0x7a1388
	manager subtype=0x6, paramA=0x8
	object_raw subtype=0x4e, x=0x13c, y=0x278, collision=1, paramB=0xa00
	object_raw subtype=0x4e, x=0x1b4, y=0x278, collision=1, paramB=0x1000
	manager subtype=0x3, x=0x158, y=0x220, unknown=0x0, paramB=0x103
	manager subtype=0x3, x=0x118, y=0x30, unknown=0x0, paramB=0x101
	object_raw subtype=0x9c, x=0x138, y=0x160, paramC=0x7b0000
.else
	manager subtype=0x20, x=0xb8, y=0xc8, paramB=0x10a82e00, paramC=0x7a10c8
	manager subtype=0x20, x=0x1e8, y=0x388, paramB=0x11d82e00, paramC=0x7b1388
	manager subtype=0x20, x=0xd8, y=0x388, paramB=0x10e82e00, paramC=0x7c1388
	manager subtype=0x6, paramA=0x8
	object_raw subtype=0x4e, x=0x13c, y=0x278, collision=1, paramB=0xa00
	object_raw subtype=0x4e, x=0x1b4, y=0x278, collision=1, paramB=0x1000
	manager subtype=0x3, x=0x158, y=0x220, unknown=0x0, paramB=0x103
	manager subtype=0x3, x=0x118, y=0x30, unknown=0x0, paramB=0x101
	object_raw subtype=0x9c, x=0x138, y=0x160, paramC=0x7d0000
.endif
	manager subtype=0x3, x=0x138, y=0x170, unknown=0x0, paramB=0x102
	object_raw subtype=0x19, paramB=0x1100
	manager subtype=0x4
	manager subtype=0x18
	entity_list_end

gUnk_additional_e_HyruleField_LonLonRanch:: @ 080F79D0
	delayed_entity_raw subtype=0x5e, x=0x188, y=0x78, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x268, y=0x188, layer=1, conditions=0xffff
	delayed_entity_raw subtype=0x5e, x=0x198, y=0x358, layer=1, conditions=0xffff
.ifndef EU
	delayed_entity_raw subtype=0x5e, x=0x108, y=0x328, layer=1, conditions=0xffff
.endif
	entity_list_end

gUnk_additional_11_HyruleField_LonLonRanch:: @ 080F7A20
	.incbin "data_080D5360/gUnk_additional_11_HyruleField_LonLonRanch.bin"
	.4byte script_LonLonRanchDoor
	.incbin "data_080D5360/gUnk_additional_11_HyruleField_LonLonRanch_1.bin"

Enemies_HyruleField_LonLonRanch:: @ 080F7A44
	enemy_raw subtype=0x2e, x=0x68, y=0x108, paramB=0x2a140000, paramC=0x800020
	enemy_raw subtype=0x2e, x=0x38, y=0x188, paramB=0x2a140000, paramC=0x800020
	enemy_raw subtype=0x2e, x=0x98, y=0x298, paramB=0xc0e0000, paramC=0x2800060
	enemy_raw subtype=0x0, x=0x148, y=0x328, paramB=0x140c0000, paramC=0x2f00100
	enemy_raw subtype=0x0, x=0x178, y=0x368, paramB=0x8140000, paramC=0x3500100
	enemy_raw subtype=0x0, x=0x268, y=0x278, paramB=0x160a0000, paramC=0x2400260
	enemy_raw subtype=0x0, x=0x2a8, y=0x2c8, paramB=0x160a0000, paramC=0x2400260
	enemy_raw subtype=0x0, x=0x268, y=0x378, paramB=0x6180000, paramC=0x37001e0
	enemy_raw subtype=0x0, x=0x248, y=0xc8, paramB=0x41c0000, paramC=0xc001d0
	enemy_raw subtype=0x0, x=0x178, y=0x98, paramB=0x80c0000, paramC=0x700150
	entity_list_end

TileEntities_HyruleField_LonLonRanch:: @ 080F7AF4
	tile_entity type=0xc, paramA=0xe
.ifdef EU_JP
	tile_entity type=0xa, paramA=0x1, paramB=0x73, paramC=0x842, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x74, paramC=0x883, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x75, paramC=0x8c3, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x76, paramC=0x902, paramD=0x1d
	tile_entity type=0x4, paramA=0x77, paramB=0x1, paramC=0x88, paramD=0x358
.else
	tile_entity type=0xa, paramA=0x1, paramB=0x75, paramC=0x842, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x76, paramC=0x883, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x77, paramC=0x8c3, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x78, paramC=0x902, paramD=0x1d
	tile_entity type=0x4, paramA=0x79, paramB=0x1, paramC=0x88, paramD=0x358
.endif
	tile_entity type=0x5, paramB=0xb00, paramC=0x2c8, paramD=0x60b
	tile_entity type=0x5, paramB=0x1300, paramC=0x6a8, paramD=0x613
	tile_entity_list_end

gUnk_additional_8_HyruleField_LonLonRanch:: @ 080F7B3C
	exit_region_raw centerX=0x1e0, centerY=0x16f, halfWidth=0x8, halfHeight=0x4, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0x238, centerY=0x18, halfWidth=0x3, halfHeight=0x3, exitIndex=0xf, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_HyruleField_LonLonRanch:: @ 080F7B54
	exit_raw transition=0x1, destX=0x80, destY=0x318, destArea=0x11, destRoom=0x3, unknownA=0x1

gUnk_additional_a_HyruleField_LonLonRanch:: @ 080F7B68
	.incbin "data_080D5360/gUnk_additional_a_HyruleField_LonLonRanch.bin"

gUnk_additional_f_HyruleField_LonLonRanch:: @ 080F7B7C
	exit_raw transition=0x1, destX=0x78, destY=0x38, destArea=0x27, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_10_HyruleField_LonLonRanch:: @ 080F7B90
	.incbin "data_080D5360/gUnk_additional_10_HyruleField_LonLonRanch.bin"

Room_HyruleField_LonLonRanch:: @ 080F7BA4
	.4byte Entities_HyruleField_LonLonRanch_0
	.4byte Entities_HyruleField_LonLonRanch_1
	.4byte Enemies_HyruleField_LonLonRanch
	.4byte TileEntities_HyruleField_LonLonRanch
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_LonLonRanch
	.4byte sub_StateChange_HyruleField_LonLonRanch
	.4byte gUnk_additional_8_HyruleField_LonLonRanch
	.4byte gUnk_additional_9_HyruleField_LonLonRanch
	.4byte gUnk_additional_a_HyruleField_LonLonRanch
	.4byte gUnk_additional_b_HyruleField_LonLonRanch
	.4byte gUnk_additional_c_HyruleField_LonLonRanch
	.4byte gUnk_additional_d_HyruleField_LonLonRanch
	.4byte gUnk_additional_e_HyruleField_LonLonRanch
	.4byte gUnk_additional_f_HyruleField_LonLonRanch
	.4byte gUnk_additional_10_HyruleField_LonLonRanch
	.4byte gUnk_additional_11_HyruleField_LonLonRanch
	.4byte gUnk_additional_12_HyruleField_LonLonRanch

Entities_HyruleField_OutsideCastle_0:: @ 080F7BF0
	entity_list_end

Entities_HyruleField_OutsideCastle_1:: @ 080F7C00
	manager subtype=0x6, paramA=0x8
	object_raw subtype=0x2f, x=0x38, y=0x1c8, paramC=0x80640000
.ifdef EU_JP
	object_raw subtype=0x9c, x=0x328, y=0x200, paramC=0x8b0000
	manager subtype=0x3, x=0x328, y=0x210, unknown=0x0, paramB=0x102
	manager subtype=0x18
	object_raw subtype=0x57, x=0x1f8, y=0x148, paramC=0x40570000
	object_raw subtype=0x0, x=0x178, y=0x1d8, collision=1, paramA=0x57, paramB=0x700, paramC=0x8d0000
.else
	object_raw subtype=0x9c, x=0x328, y=0x200, paramC=0x8d0000
	manager subtype=0x3, x=0x328, y=0x210, unknown=0x0, paramB=0x102
	manager subtype=0x18
	object_raw subtype=0x57, x=0x1f8, y=0x148, paramC=0x40570000
	object_raw subtype=0x0, x=0x178, y=0x1d8, collision=1, paramA=0x57, paramB=0x700, paramC=0x8f0000
.endif
	entity_list_end

gUnk_080F7C80:: @ 080F7C80
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69VaatiAppears
	npc_raw subtype=0x27, x=0x1f8, y=0x108, paramA=0x1, script=script_VaatiAppearsAgain
	entity_list_end

gUnk_080F7CB0:: @ 080F7CB0
	npc_raw subtype=0x4d, x=0x1e8, y=0x148, script=script_EzloCapExplainingOriginStory
	entity_list_end

gUnk_080F7CD0:: @ 080F7CD0
	manager subtype=0x16, paramA=0xe
	entity_list_end

gUnk_additional_e_HyruleField_OutsideCastle:: @ 080F7CF0
	delayed_entity_raw subtype=0x29, x=0x208, y=0x2c8, layer=1, paramC=script_MutohOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x2a, x=0x1c8, y=0x2f0, layer=1, paramC=script_CarpenterOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x2a, x=0x258, y=0x2b0, layer=1, paramA=0x1, paramC=script_CarpenterOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x2a, x=0x228, y=0x2b8, layer=1, paramA=0x2, paramC=script_CarpenterOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x2a, x=0x208, y=0x2f8, layer=1, paramA=0x3, paramC=script_CarpenterOutsideTown, conditions=0xffff
	delayed_entity_raw subtype=0x8, x=0x278, y=0x2c8, layer=1, paramB=0xa, paramC=script_GuardNorthHyruleField, conditions=0xffff
	delayed_entity_raw subtype=0x8, x=0x198, y=0x2b8, layer=1, paramB=0xb, paramC=script_GuardNorthHyruleField, conditions=0xffff
	entity_list_end

gUnk_080F7D70:: @ 080F7D70
	object_raw subtype=0x69, unknown=0x4f, paramC=script_080157AC
	object_raw subtype=0x69, unknown=0x4f, paramC=script_08015B34
	npc_raw subtype=0x28, x=0x1e8, y=0x168, script=script_ZeldaIntroBusinessScrub
	enemy_raw subtype=0x5b, x=0x248, y=0x1eb
	entity_list_end

gUnk_080F7DC0:: @ 080F7DC0
	manager subtype=0xe, unknown=0x1f, paramA=0xd, paramC=0x80640000
	entity_list_end

gUnk_additional_d_HyruleField_OutsideCastle:: @ 080F7DE0
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69FixBridge
	manager subtype=0x5, x=0x9, y=0x25, paramB=0x89, paramC=0x80650001
	manager subtype=0x5, x=0x9, y=0x26, paramB=0x89, paramC=0x80650001
	entity_list_end

Enemies_HyruleField_OutsideCastle:: @ 080F7E20
	enemy_raw subtype=0x0, x=0x338, y=0x118, paramB=0x6080000, paramC=0xf00310
	enemy_raw subtype=0x0, x=0x378, y=0xc8, paramB=0x60a0000, paramC=0xb00350
	enemy_raw subtype=0x0, x=0x218, y=0xf8, paramB=0x1e220000, paramC=0xd00170
	enemy_raw subtype=0x0, x=0x218, y=0x188, paramB=0x1e220000, paramC=0xd00170
	enemy_raw subtype=0x0, x=0x2e8, y=0x1f8, paramB=0x101a0000, paramC=0x1d002c0
	enemy_raw subtype=0x0, x=0x368, y=0x228, paramB=0x101a0000, paramC=0x1d002c0
	enemy_raw subtype=0x0, x=0x78, y=0x128, paramB=0x140c0000, paramC=0xd00030
	enemy_raw subtype=0x0, x=0x48, y=0x158, paramB=0x140c0000, paramC=0xd00030
	enemy_raw subtype=0x0, x=0x68, y=0xe8, paramB=0x140c0000, paramC=0xd00030
	enemy_raw subtype=0x30, x=0x48, y=0x248, paramB=0xa0c0000, paramC=0x2200010
	enemy_raw subtype=0x31, x=0x3d8, y=0xc8, paramB=0x24200000, paramC=0x9002e0
	enemy_raw subtype=0x31, x=0x328, y=0xc8, paramB=0x24200000, paramC=0x9002e0
	enemy_raw subtype=0x65, x=0x380, y=0x110, paramA=0x3
	enemy_raw subtype=0x65, x=0x300, y=0x260, paramA=0x4
	entity_list_end

TileEntities_HyruleField_OutsideCastle:: @ 080F7F10
.ifdef EU_JP
	tile_entity type=0xc, paramA=0x9
	tile_entity type=0xa, paramA=0x1, paramB=0x7f, paramC=0x9bb, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x80, paramC=0x9fb, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x81, paramC=0xa3b, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x82, paramC=0xa7b, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x83, paramC=0x2b7, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x84, paramC=0x2b8, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x85, paramC=0x450, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x86, paramC=0x451, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x87, paramC=0x415, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x88, paramC=0x63c, paramD=0x168
	tile_entity type=0x5, paramB=0xe00, paramC=0xa1c, paramD=0x60e
	tile_entity type=0x5, paramB=0x1500, paramC=0x3d6, paramD=0x615
	tile_entity_list_end
.else
	tile_entity type=0xc, paramA=0x9
	tile_entity type=0xa, paramA=0x1, paramB=0x81, paramC=0x9bb, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x82, paramC=0x9fb, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x83, paramC=0xa3b, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x84, paramC=0xa7b, paramD=0x1f
	tile_entity type=0xa, paramA=0x1, paramB=0x85, paramC=0x2b7, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x86, paramC=0x2b8, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x87, paramC=0x450, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x88, paramC=0x451, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x89, paramC=0x415, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x8a, paramC=0x63c, paramD=0x168
	tile_entity type=0x5, paramB=0xe00, paramC=0xa1c, paramD=0x60e
	tile_entity type=0x5, paramB=0x1500, paramC=0x3d6, paramD=0x615
	tile_entity_list_end
.endif

gUnk_additional_8_HyruleField_OutsideCastle:: @ 080F7F80
	exit_region_raw centerX=0x3c8, centerY=0x188, halfWidth=0x3, halfHeight=0x3, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0xc8, centerY=0x1e8, halfWidth=0x8, halfHeight=0x8, exitIndex=0xa, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_HyruleField_OutsideCastle:: @ 080F7F98
	exit_raw transition=0x1, destX=0x58, destY=0x30, destArea=0x27, destRoom=0x4, unknownA=0x1, unknownB=0x2, unknownC=0x4

gUnk_additional_a_HyruleField_OutsideCastle:: @ 080F7FAC
	exit_raw transition=0x1, destX=0x78, destY=0x88, destArea=0x25, destRoom=0xc, unknownA=0x1

gUnk_080F7FC0:: @ 080F7FC0
	.incbin "data_080D5360/gUnk_080F7FC0.bin"

gUnk_additional_c_HyruleField_OutsideCastle:: @ 080F7FF0
	.incbin "data_080D5360/gUnk_additional_c_HyruleField_OutsideCastle.bin"

Room_HyruleField_OutsideCastle:: @ 080F8020
	.4byte Entities_HyruleField_OutsideCastle_0
	.4byte Entities_HyruleField_OutsideCastle_1
	.4byte Enemies_HyruleField_OutsideCastle
	.4byte TileEntities_HyruleField_OutsideCastle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_OutsideCastle
	.4byte sub_StateChange_HyruleField_OutsideCastle
	.4byte gUnk_additional_8_HyruleField_OutsideCastle
	.4byte gUnk_additional_9_HyruleField_OutsideCastle
	.4byte gUnk_additional_a_HyruleField_OutsideCastle
	.4byte 0x00000000
	.4byte gUnk_additional_c_HyruleField_OutsideCastle
	.4byte gUnk_additional_d_HyruleField_OutsideCastle
	.4byte gUnk_additional_e_HyruleField_OutsideCastle

Entities_HyruleField_OutsideCastle_0West:: @ 080F805C
	entity_list_end

gUnk_080F806C:: @ 080F806C
	npc_raw subtype=0x1b, x=0xb8, y=0x78, paramA=0x2, script=script_TingleSiblings
	entity_list_end

Entities_HyruleField_OutsideCastle_1West:: @ 080F808C
.ifdef EU_JP
	manager subtype=0x18
	manager subtype=0x4
	manager subtype=0x6, paramA=0x8
	manager subtype=0x3, x=0x38, y=0xa0, unknown=0x0, paramB=0x102
	manager subtype=0x20, x=0x158, y=0x298, paramB=0x11582e00, paramC=0x901288
	entity_list_end
.else
	manager subtype=0x18
	manager subtype=0x4
	manager subtype=0x6, paramA=0x8
	manager subtype=0x3, x=0x38, y=0xa0, unknown=0x0, paramB=0x102
	manager subtype=0x20, x=0x158, y=0x298, paramB=0x11582e00, paramC=0x921288
	entity_list_end
.endif

Enemies_HyruleField_TrilbyHighlands:: @ 080F80EC
	enemy_raw subtype=0x0, x=0x168, y=0x78, paramB=0x80c0000, paramC=0x400130
	enemy_raw subtype=0x30, x=0x178, y=0x208, paramB=0x10120000, paramC=0x1900120
	enemy_raw subtype=0x0, x=0xd8, y=0x148, paramB=0x4160000, paramC=0x1400080
	enemy_raw subtype=0x30, x=0x158, y=0x338, paramB=0x1a0c0000, paramC=0x2c00120
	enemy_raw subtype=0x0, x=0x198, y=0x368, paramB=0x81e0000, paramC=0x35000d0
	enemy_raw subtype=0x0, x=0x118, y=0x388, paramB=0x81e0000, paramC=0x35000d0
	enemy_raw subtype=0x15, x=0x68, y=0x318, paramB=0x1a120000, paramC=0x2c00010
	enemy_raw subtype=0x0, x=0x28, y=0x248, paramA=0x1, paramB=0x10120000, paramC=0x2300010
	enemy_raw subtype=0x0, x=0x68, y=0x288, paramA=0x1, paramB=0x10120000, paramC=0x2300010
	enemy_raw subtype=0x65, x=0x160, y=0x250, paramA=0x2
	entity_list_end

TileEntities_HyruleField_TrilbyHighlands:: @ 080F819C
.ifdef EU_JP
	tile_entity type=0xc, paramA=0x6
	tile_entity type=0x4, paramA=0x8e, paramB=0x1, paramC=0x88, paramD=0x228
	tile_entity type=0x4, paramA=0x8f, paramB=0x1, paramC=0x198, paramD=0x2b8
	tile_entity type=0x5, paramB=0x900, paramC=0x514, paramD=0x609
	tile_entity_list_end
.else
	tile_entity type=0xc, paramA=0x6
	tile_entity type=0x4, paramA=0x90, paramB=0x1, paramC=0x88, paramD=0x228
	tile_entity type=0x4, paramA=0x91, paramB=0x1, paramC=0x198, paramD=0x2b8
	tile_entity type=0x5, paramB=0x900, paramC=0x514, paramD=0x609
	tile_entity_list_end
.endif

gUnk_additional_8_HyruleField_TrilbyHighlands:: @ 080F81C4
	exit_region_raw centerX=0x28, centerY=0x52, halfWidth=0x4, halfHeight=0x2, exitIndex=0x9, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_HyruleField_TrilbyHighlands:: @ 080F81D4
	exit_raw transition=0x1, destX=0x78, destY=0x78, destArea=0x20, destRoom=0x22, unknownA=0x1

Room_HyruleField_TrilbyHighlands:: @ 080F81E8
	.4byte Entities_HyruleField_OutsideCastle_0West
	.4byte Entities_HyruleField_OutsideCastle_1West
	.4byte Enemies_HyruleField_TrilbyHighlands
	.4byte TileEntities_HyruleField_TrilbyHighlands
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_TrilbyHighlands
	.4byte sub_StateChange_HyruleField_TrilbyHighlands
	.4byte gUnk_additional_8_HyruleField_TrilbyHighlands
	.4byte gUnk_additional_9_HyruleField_TrilbyHighlands

Entities_HyruleField_WesternWoodsNorth_0:: @ 080F8210
.ifdef EU_JP
	manager subtype=0x20, x=0x198, y=0x1a8, paramB=0x11a82e00, paramC=0x9211a8
	object_raw subtype=0x0, x=0xb8, y=0x28, collision=1, paramA=0x57, paramB=0x700, paramC=0x930000
	object_raw subtype=0x0, x=0xb8, y=0x38, collision=1, paramA=0x57, paramB=0x700, paramC=0x940000
	object_raw subtype=0x0, x=0xc8, y=0x28, collision=1, paramA=0x57, paramB=0x700, paramC=0x950000
	object_raw subtype=0x0, x=0xc8, y=0x38, collision=1, paramA=0x57, paramB=0x700, paramC=0x960000
	object_raw subtype=0x0, x=0xd8, y=0x28, collision=1, paramA=0x57, paramB=0x700, paramC=0x970000
	object_raw subtype=0x0, x=0xd8, y=0x38, collision=1, paramA=0x57, paramB=0x700, paramC=0x980000
	object_raw subtype=0x0, x=0x198, y=0x208, collision=1, paramA=0x59, paramB=0x700, paramC=0x990000
	object_raw subtype=0x0, x=0x1a8, y=0x208, collision=1, paramA=0x59, paramB=0x700, paramC=0x9a0000
	manager subtype=0xf, paramA=0xa, paramC=0x401e060a
	entity_list_end
.else
	manager subtype=0x20, x=0x198, y=0x1a8, paramB=0x11a82e00, paramC=0x9311a8
	object_raw subtype=0x0, x=0xb8, y=0x28, collision=1, paramA=0x57, paramB=0x700, paramC=0x940000
	object_raw subtype=0x0, x=0xb8, y=0x38, collision=1, paramA=0x57, paramB=0x700, paramC=0x950000
	object_raw subtype=0x0, x=0xc8, y=0x28, collision=1, paramA=0x57, paramB=0x700, paramC=0x960000
	object_raw subtype=0x0, x=0xc8, y=0x38, collision=1, paramA=0x57, paramB=0x700, paramC=0x970000
	object_raw subtype=0x0, x=0xd8, y=0x28, collision=1, paramA=0x57, paramB=0x700, paramC=0x980000
	object_raw subtype=0x0, x=0xd8, y=0x38, collision=1, paramA=0x57, paramB=0x700, paramC=0x990000
	object_raw subtype=0x0, x=0x198, y=0x208, collision=1, paramA=0x59, paramB=0x700, paramC=0x9a0000
	object_raw subtype=0x0, x=0x1a8, y=0x208, collision=1, paramA=0x59, paramB=0x700, paramC=0x9b0000
	manager subtype=0xf, paramA=0xa, paramC=0x401e060a
	manager subtype=0x1e, x=0xa0, y=0x20, paramB=0x500030, paramC=0xfb0000
	manager subtype=0x1e, x=0x180, y=0x1f0, paramB=0x400030, paramC=0xfc0000
	entity_list_end
.endif

gUnk_080F82E0:: @ 080F82E0
	object_raw subtype=0x69, unknown=0x4f, paramC=script_Object69Takeover
	entity_list_end

Entities_HyruleField_WesternWoodsNorth_1:: @ 080F8300
	manager subtype=0x18
	entity_list_end

Enemies_HyruleField_WesternWoodsNorth:: @ 080F8320
	enemy_raw subtype=0x31, x=0x118, y=0x78, paramB=0x20300000, paramC=0x600060
	enemy_raw subtype=0x31, x=0x118, y=0xb8, paramB=0x20300000, paramC=0x600060
	enemy_raw subtype=0x31, x=0x198, y=0x168, paramB=0x20300000, paramC=0x600080
	enemy_raw subtype=0x31, x=0x78, y=0x58, paramB=0x28300000, paramC=0x600060
	enemy_raw subtype=0x30, x=0x168, y=0x148, paramB=0x12100000, paramC=0xf00130
	enemy_raw subtype=0x30, x=0x198, y=0xf8, paramB=0x120e0000, paramC=0xb00140
	enemy_raw subtype=0x15, x=0xf8, y=0x1b8, paramB=0x18100000, paramC=0x17000b0
	enemy_raw subtype=0x15, x=0x58, y=0x208, paramB=0x12180000, paramC=0x1a00010
	enemy_raw subtype=0x0, x=0x48, y=0xa8, paramA=0x1, paramB=0x140a0000, paramC=0x900010
	enemy_raw subtype=0x0, x=0x28, y=0x108, paramA=0x1, paramB=0x140a0000, paramC=0x900010
	enemy_raw subtype=0x65, x=0x1a0, y=0x170, paramA=0x1
	entity_list_end

TileEntities_HyruleField_WesternWoodsNorth:: @ 080F83E0
.ifdef EU_JP
	tile_entity type=0xc, paramA=0x7
	tile_entity type=0x2, paramA=0x9c, paramB=0x643f, paramC=0x3ce
	tile_entity type=0x5, paramB=0xa00, paramC=0x684, paramD=0x60a
	tile_entity_list_end
.else
	tile_entity type=0xc, paramA=0x7
	tile_entity type=0x2, paramA=0x9d, paramB=0x643f, paramC=0x3ce
	tile_entity type=0x5, paramB=0xa00, paramC=0x684, paramD=0x60a
	tile_entity_list_end
.endif

Room_HyruleField_WesternWoodsNorth:: @ 080F8400
	.4byte Entities_HyruleField_WesternWoodsNorth_0
	.4byte Entities_HyruleField_WesternWoodsNorth_1
	.4byte Enemies_HyruleField_WesternWoodsNorth
	.4byte TileEntities_HyruleField_WesternWoodsNorth
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_WesternWoodsNorth
	.4byte sub_StateChange_HyruleField_WesternWoodsNorth

Entities_HyruleField_WesternWoodsCenter_0:: @ 080F8420
	entity_list_end

gUnk_080F8430:: @ 080F8430
	npc_raw subtype=0x3a, x=0x68, y=0x58, paramB=0x2, script=script_PercyOutside
	entity_list_end

Entities_HyruleField_WesternWoodsCenter_1:: @ 080F8450
	object_raw subtype=0x19, x=0x90, y=0x53, collision=1, paramA=0x2, paramB=0x2
	manager subtype=0x18
	entity_list_end

Enemies_HyruleField_WesternWoodsCenter:: @ 080F8480
.ifdef EU
	enemy_raw subtype=0x15, x=0x108, y=0x68, paramB=0xc180000, paramC=0x2000f0
	enemy_raw subtype=0x46, x=0x1a8, y=0x78, paramB=0xc180000, paramC=0x2000f0
	entity_list_end
.else
	enemy_raw subtype=0x46, x=0x108, y=0x68, paramB=0xc180000, paramC=0x2000f0
	enemy_raw subtype=0x46, x=0x1a8, y=0x78, paramB=0xc180000, paramC=0x2000f0
	entity_list_end
.endif

TileEntities_HyruleField_WesternWoodsCenter:: @ 080F84B0
	tile_entity type=0xc, paramA=0x7
	tile_entity type=0x5, paramB=0x1400, paramC=0x147, paramD=0x614
	tile_entity_list_end

Room_HyruleField_WesternWoodsCenter:: @ 080F84C8
	.4byte Entities_HyruleField_WesternWoodsCenter_0
	.4byte Entities_HyruleField_WesternWoodsCenter_1
	.4byte Enemies_HyruleField_WesternWoodsCenter
	.4byte TileEntities_HyruleField_WesternWoodsCenter
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_HyruleField_WesternWoodsCenter
	.4byte sub_StateChange_HyruleField_WesternWoodsCenter

Entities_Caves_Boomerang_0:: @ 080F84E8
	object_raw subtype=0x41, x=0x48, y=0x78, paramA=0x1
	object_raw subtype=0x41, x=0x108, y=0x78, paramA=0x1
	object_raw subtype=0x41, x=0x48, y=0xe8, paramA=0x1
	object_raw subtype=0x41, x=0x108, y=0xe8, paramA=0x1
	object_raw subtype=0xc, x=0xa8, y=0x78, paramA=0x4, paramB=0x8
	object_raw subtype=0x3, x=0x68, y=0x38, paramC=0x90000
	object_raw subtype=0x3, x=0xe8, y=0x38, paramC=0xa0000
	object_raw subtype=0x3, x=0x68, y=0x118, paramC=0xb0000
	object_raw subtype=0x3, x=0xe8, y=0x118, paramC=0xc0000
	manager subtype=0x23, x=0x68, y=0x28, paramB=0x1, paramC=0x90000
	manager subtype=0x23, x=0xe8, y=0x28, paramB=0x1, paramC=0xa0000
	manager subtype=0x23, x=0x68, y=0x108, paramB=0x1, paramC=0xb0000
	manager subtype=0x23, x=0xe8, y=0x108, paramB=0x1, paramC=0xc0000
	manager subtype=0x11, paramC=0xc094057
	entity_list_end

gUnk_080F85D8:: @ 080F85D8
	object_raw subtype=0x41, x=0xa8, y=0xc8, paramA=0x1
	entity_list_end

gUnk_080F85F8:: @ 080F85F8
	manager subtype=0x35, x=0xa8, y=0xc8, paramB=0xf01e00, paramC=0xc098000
	manager subtype=0xe, unknown=0x1f, paramA=0x8, paramC=0x80000000
	entity_list_end

gUnk_additional_8_Caves_Boomerang:: @ 080F8628
	object_raw subtype=0x41, x=0xa8, y=0xc8, paramA=0x1, paramB=0x100
	entity_list_end

Enemies_Caves_Boomerang:: @ 080F8648
	entity_list_end

TileEntities_Caves_Boomerang:: @ 080F8658
	tile_entity type=0x2, paramA=0x4, paramB=0x6e5c, paramC=0x82
	tile_entity type=0x2, paramA=0x5, paramB=0x6f5c, paramC=0x92
	tile_entity type=0x2, paramA=0x6, paramB=0x705c, paramC=0x442
	tile_entity type=0x2, paramA=0x7, paramB=0xc83f, paramC=0x452
	tile_entity type=0x3, paramA=0x8, paramB=0xc, paramC=0xa8, paramD=0x78
	tile_entity_list_end

Room_Caves_Boomerang:: @ 080F8688
	.4byte Entities_Caves_Boomerang_0
	.4byte 0x00000000
	.4byte Enemies_Caves_Boomerang
	.4byte TileEntities_Caves_Boomerang
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_Boomerang
	.4byte sub_StateChange_Caves_Boomerang
	.4byte gUnk_additional_8_Caves_Boomerang

Entities_Caves_ToGraveyard_0:: @ 080F86AC
	object_raw subtype=0x41, x=0x38, y=0x48, paramA=0x1
	object_raw subtype=0x41, x=0x118, y=0x48, paramA=0x1
	object_raw subtype=0x5, x=0xd8, y=0x28, collision=1, paramA=0x5d
	object_raw subtype=0x5, x=0xe8, y=0x28, collision=1, paramA=0x5d
	entity_list_end

Enemies_Caves_ToGraveyard:: @ 080F86FC
	entity_list_end

TileEntities_Caves_ToGraveyard:: @ 080F870C
	tile_entity_list_end

Room_Caves_ToGraveyard:: @ 080F8714
	.4byte Entities_Caves_ToGraveyard_0
	.4byte 0x00000000
	.4byte Enemies_Caves_ToGraveyard
	.4byte TileEntities_Caves_ToGraveyard
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_ToGraveyard
	.4byte sub_StateChange_Caves_ToGraveyard

Entities_Caves_2_0:: @ 080F8734
	object_raw subtype=0x41, x=0x48, y=0x38, paramA=0x1
	entity_list_end

Enemies_Caves_2:: @ 080F8754
	entity_list_end

TileEntities_Caves_2:: @ 080F8764
	tile_entity_list_end

Room_Caves_2:: @ 080F876C
	.4byte Entities_Caves_2_0
	.4byte 0x00000000
	.4byte Enemies_Caves_2
	.4byte TileEntities_Caves_2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_2
	.4byte sub_StateChange_Caves_2

Entities_Caves_3_0:: @ 080F878C
	object_raw subtype=0x41, x=0x48, y=0x38, paramA=0x1
	entity_list_end

Enemies_Caves_3:: @ 080F87AC
	entity_list_end

TileEntities_Caves_3:: @ 080F87BC
	tile_entity_list_end

Room_Caves_3:: @ 080F87C4
	.4byte Entities_Caves_3_0
	.4byte 0x00000000
	.4byte Enemies_Caves_3
	.4byte TileEntities_Caves_3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_3
	.4byte sub_StateChange_Caves_3

Entities_Caves_4_0:: @ 080F87E4
	object_raw subtype=0x41, x=0x38, y=0x38, paramA=0x1
	entity_list_end

Enemies_Caves_4:: @ 080F8804
	entity_list_end

TileEntities_Caves_4:: @ 080F8814
	tile_entity_list_end

Room_Caves_4:: @ 080F881C
	.4byte Entities_Caves_4_0
	.4byte 0x00000000
	.4byte Enemies_Caves_4
	.4byte TileEntities_Caves_4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_4
	.4byte sub_StateChange_Caves_4

Entities_Caves_5_0:: @ 080F883C
	object_raw subtype=0x41, x=0x38, y=0x38, paramA=0x1
	entity_list_end

Enemies_Caves_5:: @ 080F885C
	entity_list_end

TileEntities_Caves_5:: @ 080F886C
	tile_entity_list_end

Room_Caves_5:: @ 080F8874
	.4byte Entities_Caves_5_0
	.4byte 0x00000000
	.4byte Enemies_Caves_5
	.4byte TileEntities_Caves_5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_5
	.4byte sub_StateChange_Caves_5

Entities_Caves_6_0:: @ 080F8894
	entity_list_end

Enemies_Caves_6:: @ 080F88A4
	entity_list_end

TileEntities_Caves_6:: @ 080F88B4
	tile_entity_list_end

Room_Caves_6:: @ 080F88BC
	.4byte Entities_Caves_6_0
	.4byte 0x00000000
	.4byte Enemies_Caves_6
	.4byte TileEntities_Caves_6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_6
	.4byte sub_StateChange_Caves_6

Entities_Caves_TrilbyKeeseChest_0:: @ 080F88DC
	entity_list_end

Enemies_Caves_TrilbyKeeseChest:: @ 080F88EC
	enemy_raw subtype=0x8, x=0x68, y=0x38, paramB=0x6080000, paramC=0x300050
	enemy_raw subtype=0x8, x=0x78, y=0x48, paramB=0x6080000, paramC=0x300050
	enemy_raw subtype=0x8, x=0x88, y=0x38, paramB=0x6080000, paramC=0x300050
	enemy_raw subtype=0x8, x=0x68, y=0x48, paramB=0x6080000, paramC=0x300050
	enemy_raw subtype=0x8, x=0x38, y=0x38
	enemy_raw subtype=0x8, x=0xb8, y=0x58
	entity_list_end

TileEntities_Caves_TrilbyKeeseChest:: @ 080F895C
	tile_entity type=0x2, paramA=0xd, paramB=0x705c, paramC=0x107
	tile_entity_list_end

Room_Caves_TrilbyKeeseChest:: @ 080F896C
	.4byte Entities_Caves_TrilbyKeeseChest_0
	.4byte 0x00000000
	.4byte Enemies_Caves_TrilbyKeeseChest
	.4byte TileEntities_Caves_TrilbyKeeseChest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_TrilbyKeeseChest
	.4byte sub_StateChange_Caves_TrilbyKeeseChest

Entities_Caves_TrilbyFairyFountain_0:: @ 080F898C
	object_raw subtype=0x40, x=0x58, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x88, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x78, y=0x48, paramA=0x60, paramB=0x1
	entity_list_end

Enemies_Caves_TrilbyFairyFountain:: @ 080F89CC
	entity_list_end

TileEntities_Caves_TrilbyFairyFountain:: @ 080F89DC
	tile_entity type=0x7, paramB=0x3a00
	tile_entity_list_end

Room_Caves_TrilbyFairyFountain:: @ 080F89EC
	.4byte Entities_Caves_TrilbyFairyFountain_0
	.4byte 0x00000000
	.4byte Enemies_Caves_TrilbyFairyFountain
	.4byte TileEntities_Caves_TrilbyFairyFountain
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_TrilbyFairyFountain
	.4byte sub_StateChange_Caves_TrilbyFairyFountain

Entities_Caves_SouthHyruleFieldFairyFountain_0:: @ 080F8A0C
	object_raw subtype=0x40, x=0x58, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x88, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x78, y=0x48, paramA=0x60, paramB=0x1
	entity_list_end

Enemies_Caves_SouthHyruleFieldFairyFountain:: @ 080F8A4C
	entity_list_end

TileEntities_Caves_SouthHyruleFieldFairyFountain:: @ 080F8A5C
	tile_entity type=0x7, paramB=0x3a00
	tile_entity_list_end

Room_Caves_SouthHyruleFieldFairyFountain:: @ 080F8A6C
	.4byte Entities_Caves_SouthHyruleFieldFairyFountain_0
	.4byte 0x00000000
	.4byte Enemies_Caves_SouthHyruleFieldFairyFountain
	.4byte TileEntities_Caves_SouthHyruleFieldFairyFountain
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_SouthHyruleFieldFairyFountain
	.4byte sub_StateChange_Caves_SouthHyruleFieldFairyFountain

Entities_Caves_A_0:: @ 080F8A8C
	entity_list_end

Enemies_Caves_A:: @ 080F8A9C
	entity_list_end

TileEntities_Caves_A:: @ 080F8AAC
	tile_entity_list_end

Room_Caves_A:: @ 080F8AB4
	.4byte Entities_Caves_A_0
	.4byte 0x00000000
	.4byte Enemies_Caves_A
	.4byte TileEntities_Caves_A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_A
	.4byte sub_StateChange_Caves_A

Entities_Caves_HyruleTownWaterfall_0:: @ 080F8AD4
	entity_list_end

Enemies_Caves_HyruleTownWaterfall:: @ 080F8AE4
	entity_list_end

TileEntities_Caves_HyruleTownWaterfall:: @ 080F8AF4
	tile_entity type=0x2, paramA=0xe, paramB=0xc83f, paramC=0x87
	tile_entity_list_end

Room_Caves_HyruleTownWaterfall:: @ 080F8B04
	.4byte Entities_Caves_HyruleTownWaterfall_0
	.4byte 0x00000000
	.4byte Enemies_Caves_HyruleTownWaterfall
	.4byte TileEntities_Caves_HyruleTownWaterfall
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_HyruleTownWaterfall
	.4byte sub_StateChange_Caves_HyruleTownWaterfall

Entities_Caves_LonLonRanch_0:: @ 080F8B24
	object_raw subtype=0x41, x=0x38, y=0x18
	entity_list_end

Enemies_Caves_LonLonRanch:: @ 080F8B44
	entity_list_end

TileEntities_Caves_LonLonRanch:: @ 080F8B54
	tile_entity type=0x2, paramA=0xf, paramB=0x57, paramC=0x148
	tile_entity type=0x4, paramA=0x10, paramB=0x1, paramC=0xd8, paramD=0x68
	tile_entity_list_end

Room_Caves_LonLonRanch:: @ 080F8B6C
	.4byte Entities_Caves_LonLonRanch_0
	.4byte 0x00000000
	.4byte Enemies_Caves_LonLonRanch
	.4byte TileEntities_Caves_LonLonRanch
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_LonLonRanch
	.4byte sub_StateChange_Caves_LonLonRanch

Entities_Caves_LonLonRanchSecret_0:: @ 080F8B8C
	manager subtype=0x23, x=0xa8, y=0x38, paramA=0x2, paramB=0x4001, paramC=0x80000000
	manager subtype=0x23, x=0xc8, y=0x38, paramA=0x2, paramB=0x4001, paramC=0x80010000
	manager subtype=0x11, paramC=0x84000011
	object_raw subtype=0xc, x=0xb8, y=0x38, paramC=0x110000
	entity_list_end

Enemies_Caves_LonLonRanchSecret:: @ 080F8BDC
	entity_list_end

TileEntities_Caves_LonLonRanchSecret:: @ 080F8BEC
	tile_entity type=0x2, paramA=0x12, paramB=0x725c, paramC=0xcb
	tile_entity type=0x9, paramB=0x8000
	tile_entity_list_end

Room_Caves_LonLonRanchSecret:: @ 080F8C04
	.4byte Entities_Caves_LonLonRanchSecret_0
	.4byte 0x00000000
	.4byte Enemies_Caves_LonLonRanchSecret
	.4byte TileEntities_Caves_LonLonRanchSecret
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_LonLonRanchSecret
	.4byte sub_StateChange_Caves_LonLonRanchSecret

Entities_Caves_TrilbyHighlands_0:: @ 080F8C24
	object_raw subtype=0x41, x=0x38, y=0x28, paramA=0x1
	object_raw subtype=0x41, x=0x128, y=0x28, paramA=0x1
	entity_list_end

Enemies_Caves_TrilbyHighlands:: @ 080F8C54
	entity_list_end

TileEntities_Caves_TrilbyHighlands:: @ 080F8C64
	tile_entity type=0x4, paramA=0x13, paramB=0x1, paramC=0x188, paramD=0x58
	tile_entity_list_end

Room_Caves_TrilbyHighlands:: @ 080F8C74
	.4byte Entities_Caves_TrilbyHighlands_0
	.4byte 0x00000000
	.4byte Enemies_Caves_TrilbyHighlands
	.4byte TileEntities_Caves_TrilbyHighlands
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_TrilbyHighlands
	.4byte sub_StateChange_Caves_TrilbyHighlands

Entities_Caves_LonLonRanchWallet_0:: @ 080F8C94
	object_raw subtype=0xc, x=0x78, y=0x28, paramA=0x4, paramB=0x14
	entity_list_end

Enemies_Caves_LonLonRanchWallet:: @ 080F8CB4
	entity_list_end

TileEntities_Caves_LonLonRanchWallet:: @ 080F8CC4
	tile_entity type=0x3, paramA=0x14, paramB=0x64, paramC=0x78, paramD=0x28
	tile_entity_list_end

Room_Caves_LonLonRanchWallet:: @ 080F8CD4
	.4byte Entities_Caves_LonLonRanchWallet_0
	.4byte 0x00000000
	.4byte Enemies_Caves_LonLonRanchWallet
	.4byte TileEntities_Caves_LonLonRanchWallet
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_LonLonRanchWallet
	.4byte sub_StateChange_Caves_LonLonRanchWallet

Entities_Caves_SouthHyruleFieldRupee_0:: @ 080F8CF4
.ifdef EU_JP
	object_raw subtype=0x0, x=0x58, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x150000
	object_raw subtype=0x0, x=0x68, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x160000
	object_raw subtype=0x0, x=0x78, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x170000
	object_raw subtype=0x0, x=0x88, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x180000
	object_raw subtype=0x0, x=0x98, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x190000
	object_raw subtype=0x0, x=0x58, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1a0000
	object_raw subtype=0x0, x=0x68, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1b0000
	object_raw subtype=0x0, x=0x78, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1c0000
	object_raw subtype=0x0, x=0x88, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1d0000
	object_raw subtype=0x0, x=0x98, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1e0000
	object_raw subtype=0x0, x=0x58, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x1f0000
	object_raw subtype=0x0, x=0x68, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x200000
	object_raw subtype=0x0, x=0x78, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x210000
	object_raw subtype=0x0, x=0x88, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x220000
	object_raw subtype=0x0, x=0x98, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x230000
	entity_list_end
.else
	object_raw subtype=0x0, x=0x58, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x150000
	object_raw subtype=0x0, x=0x68, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x160000
	object_raw subtype=0x0, x=0x78, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x170000
	object_raw subtype=0x0, x=0x88, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x180000
	object_raw subtype=0x0, x=0x98, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x190000
	object_raw subtype=0x0, x=0x58, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1a0000
	object_raw subtype=0x0, x=0x68, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1b0000
	object_raw subtype=0x0, x=0x78, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1c0000
	object_raw subtype=0x0, x=0x88, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1d0000
	object_raw subtype=0x0, x=0x98, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x1e0000
	object_raw subtype=0x0, x=0x58, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x1f0000
	object_raw subtype=0x0, x=0x68, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x200000
	object_raw subtype=0x0, x=0x78, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x210000
	object_raw subtype=0x0, x=0x88, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x220000
	object_raw subtype=0x0, x=0x98, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x230000
	manager subtype=0x1e, x=0x50, y=0x30, paramB=0x400030, paramC=0x8c0000
	entity_list_end
.endif

Enemies_Caves_SouthHyruleFieldRupee:: @ 080F8E04
	entity_list_end

TileEntities_Caves_SouthHyruleFieldRupee:: @ 080F8E14
	tile_entity_list_end

Room_Caves_SouthHyruleFieldRupee:: @ 080F8E1C
	.4byte Entities_Caves_SouthHyruleFieldRupee_0
	.4byte 0x00000000
	.4byte Enemies_Caves_SouthHyruleFieldRupee
	.4byte TileEntities_Caves_SouthHyruleFieldRupee
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_SouthHyruleFieldRupee
	.4byte sub_StateChange_Caves_SouthHyruleFieldRupee

Entities_Caves_TrilbyRupee_0:: @ 080F8E3C
.ifdef EU_JP
	object_raw subtype=0x0, x=0x58, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x240000
	object_raw subtype=0x0, x=0x68, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x250000
	object_raw subtype=0x0, x=0x78, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x260000
	object_raw subtype=0x0, x=0x88, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x270000
	object_raw subtype=0x0, x=0x98, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x280000
	object_raw subtype=0x0, x=0x58, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x290000
	object_raw subtype=0x0, x=0x68, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x2a0000
	object_raw subtype=0x0, x=0x78, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x2b0000
	object_raw subtype=0x0, x=0x88, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x2c0000
	object_raw subtype=0x0, x=0x98, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x2d0000
	object_raw subtype=0x0, x=0x58, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x2e0000
	object_raw subtype=0x0, x=0x68, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x2f0000
	object_raw subtype=0x0, x=0x78, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x300000
	object_raw subtype=0x0, x=0x88, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x310000
	object_raw subtype=0x0, x=0x98, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x320000
	entity_list_end
.else
	object_raw subtype=0x0, x=0x58, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x240000
	object_raw subtype=0x0, x=0x68, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x250000
	object_raw subtype=0x0, x=0x78, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x260000
	object_raw subtype=0x0, x=0x88, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x270000
	object_raw subtype=0x0, x=0x98, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x280000
	object_raw subtype=0x0, x=0x58, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x290000
	object_raw subtype=0x0, x=0x68, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x2a0000
	object_raw subtype=0x0, x=0x78, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x2b0000
	object_raw subtype=0x0, x=0x88, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x2c0000
	object_raw subtype=0x0, x=0x98, y=0x48, collision=1, paramA=0x55, paramB=0x400, paramC=0x2d0000
	object_raw subtype=0x0, x=0x58, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x2e0000
	object_raw subtype=0x0, x=0x68, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x2f0000
	object_raw subtype=0x0, x=0x78, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x300000
	object_raw subtype=0x0, x=0x88, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x310000
	object_raw subtype=0x0, x=0x98, y=0x58, collision=1, paramA=0x55, paramB=0x400, paramC=0x320000
	manager subtype=0x1e, x=0x50, y=0x30, paramB=0x400030, paramC=0x8b0000
	entity_list_end
.endif

Enemies_Caves_TrilbyRupee:: @ 080F8F4C
	entity_list_end

TileEntities_Caves_TrilbyRupee:: @ 080F8F5C
	tile_entity_list_end

Room_Caves_TrilbyRupee:: @ 080F8F64
	.4byte Entities_Caves_TrilbyRupee_0
	.4byte 0x00000000
	.4byte Enemies_Caves_TrilbyRupee
	.4byte TileEntities_Caves_TrilbyRupee
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_TrilbyRupee
	.4byte sub_StateChange_Caves_TrilbyRupee

Entities_Caves_TrilbyMittsFairyFountain_0:: @ 080F8F84
.ifdef EU_JP
	object_raw subtype=0x41, x=0xb8, y=0x18
	object_raw subtype=0x40, x=0x58, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x48, y=0x58, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x68, y=0x58, paramA=0x60, paramB=0x1
	entity_list_end
.else
	object_raw subtype=0x41, x=0xb8, y=0x18
	object_raw subtype=0x40, x=0x58, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x48, y=0x58, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x68, y=0x58, paramA=0x60, paramB=0x1
	manager subtype=0x1e, x=0xa0, y=0x10, paramB=0x300030, paramC=0x890000
	entity_list_end
.endif

Enemies_Caves_TrilbyMittsFairyFountain:: @ 080F8FE4
	entity_list_end

TileEntities_Caves_TrilbyMittsFairyFountain:: @ 080F8FF4
	tile_entity type=0x7, paramB=0x3a00
	tile_entity_list_end

Room_Caves_TrilbyMittsFairyFountain:: @ 080F9004
	.4byte Entities_Caves_TrilbyMittsFairyFountain_0
	.4byte 0x00000000
	.4byte Enemies_Caves_TrilbyMittsFairyFountain
	.4byte TileEntities_Caves_TrilbyMittsFairyFountain
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_TrilbyMittsFairyFountain
	.4byte sub_StateChange_Caves_TrilbyMittsFairyFountain

Entities_Caves_HillsKeeseChest_0:: @ 080F9024
	entity_list_end

Enemies_Caves_HillsKeeseChest:: @ 080F9034
	enemy_raw subtype=0x8, x=0x48, y=0x48, paramB=0x141e0000
	enemy_raw subtype=0x8, x=0xb8, y=0x38, paramB=0x141e0000
	entity_list_end

TileEntities_Caves_HillsKeeseChest:: @ 080F9064
	tile_entity type=0x2, paramA=0x33, paramB=0x143f, paramC=0x87
	tile_entity_list_end

Room_Caves_HillsKeeseChest:: @ 080F9074
	.4byte Entities_Caves_HillsKeeseChest_0
	.4byte 0x00000000
	.4byte Enemies_Caves_HillsKeeseChest
	.4byte TileEntities_Caves_HillsKeeseChest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_HillsKeeseChest
	.4byte sub_StateChange_Caves_HillsKeeseChest

Entities_Caves_BottleBusinessScrub_0:: @ 080F9094
	entity_list_end

Enemies_Caves_BottleBusinessScrub:: @ 080F90A4
	enemy_raw subtype=0x16, x=0x68, y=0x38, paramA=0x5, paramC=0x6b0000
	entity_list_end

TileEntities_Caves_BottleBusinessScrub:: @ 080F90C4
	tile_entity_list_end

Room_Caves_BottleBusinessScrub:: @ 080F90CC
	.4byte Entities_Caves_BottleBusinessScrub_0
	.4byte 0x00000000
	.4byte Enemies_Caves_BottleBusinessScrub
	.4byte TileEntities_Caves_BottleBusinessScrub
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_BottleBusinessScrub
	.4byte sub_StateChange_Caves_BottleBusinessScrub

Entities_Caves_HeartPieceHallway_0:: @ 080F90EC
	object_raw subtype=0x0, x=0x78, y=0x84, collision=1, paramA=0x63, paramB=0x400, paramC=0x7b0000
	entity_list_end

Enemies_Caves_HeartPieceHallway:: @ 080F910C
	enemy_raw subtype=0x8, x=0x78, y=0x78, paramB=0x1c120000, paramC=0x30
	enemy_raw subtype=0x8, y=0x48, paramB=0x1c120000, paramC=0x58
	enemy_raw subtype=0x8, y=0xa8, paramB=0x1c120000, paramC=0x78
	entity_list_end

TileEntities_Caves_HeartPieceHallway:: @ 080F914C
	tile_entity_list_end

Room_Caves_HeartPieceHallway:: @ 080F9154
	.4byte Entities_Caves_HeartPieceHallway_0
	.4byte 0x00000000
	.4byte Enemies_Caves_HeartPieceHallway
	.4byte TileEntities_Caves_HeartPieceHallway
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_HeartPieceHallway
	.4byte sub_StateChange_Caves_HeartPieceHallway

Entities_Caves_NorthHyruleFieldFairyFountain_0:: @ 080F9174
.ifdef EU_JP
	object_raw subtype=0x40, x=0x48, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x38, y=0x58, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x68, y=0x58, paramA=0x60, paramB=0x1
	entity_list_end
.else
	object_raw subtype=0x40, x=0x48, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x38, y=0x58, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x68, y=0x58, paramA=0x60, paramB=0x1
	manager subtype=0x1e, x=0x60, y=0x60, paramB=0x300030, paramC=0x8a0000
	entity_list_end
.endif

Enemies_Caves_NorthHyruleFieldFairyFountain:: @ 080F91C4
	entity_list_end

TileEntities_Caves_NorthHyruleFieldFairyFountain:: @ 080F91D4
	tile_entity type=0x7, paramB=0x3a00
	tile_entity_list_end

Room_Caves_NorthHyruleFieldFairyFountain:: @ 080F91E4
	.4byte Entities_Caves_NorthHyruleFieldFairyFountain_0
	.4byte 0x00000000
	.4byte Enemies_Caves_NorthHyruleFieldFairyFountain
	.4byte TileEntities_Caves_NorthHyruleFieldFairyFountain
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_NorthHyruleFieldFairyFountain
	.4byte sub_StateChange_Caves_NorthHyruleFieldFairyFountain

Entities_Caves_KinstoneBusinessScrub_0:: @ 080F9204
	entity_list_end

Enemies_Caves_KinstoneBusinessScrub:: @ 080F9214
	enemy_raw subtype=0x16, x=0x78, y=0x28, paramA=0x8, paramC=0x6c0000
	entity_list_end

TileEntities_Caves_KinstoneBusinessScrub:: @ 080F9234
	tile_entity type=0xb, paramA=0x12
	tile_entity_list_end

Room_Caves_KinstoneBusinessScrub:: @ 080F9244
	.4byte Entities_Caves_KinstoneBusinessScrub_0
	.4byte 0x00000000
	.4byte Enemies_Caves_KinstoneBusinessScrub
	.4byte TileEntities_Caves_KinstoneBusinessScrub
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_Caves_KinstoneBusinessScrub
	.4byte sub_StateChange_Caves_KinstoneBusinessScrub

Entities_VeilFalls_Main_0:: @ 080F9264
.ifdef EU_JP
	manager subtype=0x4
	object_raw subtype=0x0, x=0x98, y=0x25c, collision=1, paramA=0x63, paramB=0x400, paramC=0xa00000
	object_raw subtype=0x0, x=0x198, y=0x3b4, collision=1, paramA=0x63, paramB=0x400, paramC=0xa90000
	object_raw subtype=0x0, x=0x168, y=0x268, collision=1, paramA=0x56, paramB=0x400, paramC=0xa20000
	object_raw subtype=0x0, x=0x168, y=0x278, collision=1, paramA=0x56, paramB=0x400, paramC=0xa30000
	object_raw subtype=0x0, x=0x178, y=0x278, collision=1, paramA=0x56, paramB=0x400, paramC=0xa40000
	object_raw subtype=0x0, x=0x148, y=0xb8, collision=1, paramA=0x57, paramB=0x700, paramC=0xa70000
	object_raw subtype=0x0, x=0x138, y=0x308, collision=1, paramA=0x57, paramB=0x700, paramC=0xf70000
	ezlo_hint x=0x4, y=0x40, rx=0x3, ry=0x3, msg=0xb1e, flag=0xa5
	entity_list_end
.else
	manager subtype=0x4
	object_raw subtype=0x0, x=0x98, y=0x25c, collision=1, paramA=0x63, paramB=0x400, paramC=0xa10000
	object_raw subtype=0x0, x=0x198, y=0x3b4, collision=1, paramA=0x63, paramB=0x400, paramC=0xab0000
	object_raw subtype=0x0, x=0x168, y=0x268, collision=1, paramA=0x56, paramB=0x400, paramC=0xa30000
	object_raw subtype=0x0, x=0x168, y=0x278, collision=1, paramA=0x56, paramB=0x400, paramC=0xa40000
	object_raw subtype=0x0, x=0x178, y=0x278, collision=1, paramA=0x56, paramB=0x400, paramC=0xa50000
	object_raw subtype=0x0, x=0x148, y=0xb8, collision=1, paramA=0x57, paramB=0x700, paramC=0xa80000
	object_raw subtype=0x0, x=0x138, y=0x308, collision=1, paramA=0x57, paramB=0x700, paramC=0xaa0000
	ezlo_hint x=0x4, y=0x40, rx=0x3, ry=0x3, msg=0xb1e, flag=0xa6
	entity_list_end
.endif

gUnk_080F9304:: @ 080F9304
	object_raw subtype=0xbb, x=0xf8, y=0xf8, unknown=0x4f, paramB=0x1, paramC=script_Windcrest
	entity_list_end

Entities_VeilFalls_Main_1:: @ 080F9324
	npc_raw subtype=0x4e, x=0x38, y=0x1fd, paramA=0xb, script=script_NPC4ESourceOfTheFlow
	manager subtype=0x6, paramA=0x8
	entity_list_end

Enemies_VeilFalls_Main:: @ 080F9354
	enemy_raw subtype=0x35, x=0x138, y=0xc8, paramA=0x1
	enemy_raw subtype=0x35, x=0x178, y=0xc8, paramA=0x1
	enemy_raw subtype=0x35, x=0x198, y=0x98, paramA=0x1
	enemy_raw subtype=0x35, x=0x158, y=0x1f8, paramA=0x1
	enemy_raw subtype=0x35, x=0x168, y=0x1f8, paramA=0x1
	manager subtype=0x28, unknown=0x3, paramB=0x2
	enemy_raw subtype=0x2, x=0xb8, y=0x378, paramA=0x1, paramB=0xa280000, paramC=0x3700060
	enemy_raw subtype=0x2, x=0xf8, y=0x3a8, paramA=0x1, paramB=0xa280000, paramC=0x3700060
	enemy_raw subtype=0x0, x=0x48, y=0x3a8, paramB=0xa2e0000, paramC=0x3700030
	enemy_raw subtype=0x0, x=0x38, y=0x348, paramB=0xa2e0000, paramC=0x3700030
	enemy_raw subtype=0x17, x=0x178, y=0x268, paramA=0x2
	enemy_raw subtype=0x17, x=0x138, y=0x298, paramA=0x1
	enemy_raw subtype=0x17, x=0x198, y=0x2e8, paramA=0x1
	enemy_raw subtype=0xa, x=0x188, y=0x208, paramC=0x1000000
	enemy_raw subtype=0xa, x=0x118, y=0x208, paramC=0x1000000
	enemy_raw subtype=0x1b, x=0x148, y=0x98, paramB=0x12180000, paramC=0x800100
	enemy_raw subtype=0x1b, x=0x1a8, y=0xd8, paramB=0x12180000, paramC=0x800100
	entity_list_end

TileEntities_VeilFalls_Main:: @ 080F9474
.ifdef EU_JP
	tile_entity type=0x2, paramA=0xa1, paramB=0x643f, paramC=0x58c
	tile_entity_list_end
.else
	tile_entity type=0x2, paramA=0xa2, paramB=0x643f, paramC=0x58c
	tile_entity_list_end
.endif

gUnk_additional_8_VeilFalls_Main:: @ 080F9484
	exit_region_raw centerX=0xf8, centerY=0x348, halfWidth=0x8, halfHeight=0x8, exitIndex=0x9, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_VeilFalls_Main:: @ 080F9494
	exit_raw transition=0x1, destX=0x78, destY=0x88, destArea=0x25, destRoom=0xb, unknownA=0x1

Room_VeilFalls_Main:: @ 080F94A8
	.4byte Entities_VeilFalls_Main_0
	.4byte Entities_VeilFalls_Main_1
	.4byte Enemies_VeilFalls_Main
	.4byte TileEntities_VeilFalls_Main
	.4byte sub_unk1_VeilFalls_Main
	.4byte 0x00000000
	.4byte sub_unk3_VeilFalls_Main
	.4byte sub_StateChange_VeilFalls_Main
	.4byte gUnk_additional_8_VeilFalls_Main
	.4byte gUnk_additional_9_VeilFalls_Main

Entities_VeilFallsCaves_Hallway2F_0:: @ 080F94D0
	object_raw subtype=0x5, x=0xf8, y=0x38, collision=1
	object_raw subtype=0x5, x=0x108, y=0x38, collision=1
	object_raw subtype=0x5, x=0x118, y=0x38, collision=1, paramA=0x60
	entity_list_end

Enemies_VeilFallsCaves_Hallway2F:: @ 080F9510
	enemy_raw subtype=0x8, x=0x68, y=0x48, paramB=0x6060000, paramC=0x500060
	enemy_raw subtype=0x8, x=0x78, y=0x48, paramB=0x6060000, paramC=0x500060
	enemy_raw subtype=0x8, x=0x88, y=0x48, paramB=0x6060000, paramC=0x500060
	enemy_raw subtype=0x8, x=0x68, y=0x68, paramB=0x6060000, paramC=0x500060
	enemy_raw subtype=0x8, x=0x88, y=0x68, paramB=0x6060000, paramC=0x500060
	enemy_raw subtype=0x20, x=0x98, y=0x68, paramB=0x4220000, paramC=0x600020
	enemy_raw subtype=0x20, x=0x38, y=0x48, paramB=0x41e0000, paramC=0x300030
	entity_list_end

TileEntities_VeilFallsCaves_Hallway2F:: @ 080F9590
	tile_entity type=0x2, paramA=0x48, paramB=0x58, paramC=0x147
	tile_entity_list_end

Room_VeilFallsCaves_Hallway2F:: @ 080F95A0
	.4byte Entities_VeilFallsCaves_Hallway2F_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_Hallway2F
	.4byte TileEntities_VeilFallsCaves_Hallway2F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_Hallway2F
	.4byte sub_StateChange_VeilFallsCaves_Hallway2F

Entities_VeilFallsCaves_Hallway1F_0:: @ 080F95C0
	object_raw subtype=0x41, x=0x38, y=0xf8, paramA=0x1
	object_raw subtype=0x5, x=0xb8, y=0x28, collision=1
	object_raw subtype=0x5, x=0xc8, y=0x28, collision=1
	object_raw subtype=0x5, x=0xd8, y=0x28, collision=1
	entity_list_end

Enemies_VeilFallsCaves_Hallway1F:: @ 080F9610
	enemy_raw subtype=0x8, x=0x68, y=0xb8, paramB=0xc180000, paramC=0x200020
	enemy_raw subtype=0x8, x=0xd8, y=0x28, paramB=0xc180000, paramC=0x200020
	enemy_raw subtype=0x8, x=0x48, y=0x68, paramB=0xc180000, paramC=0x200020
	enemy_raw subtype=0x20, x=0x58, y=0x118, paramB=0x20040000, paramC=0x200040
	enemy_raw subtype=0x20, x=0xd8, y=0x48, paramB=0xc180000, paramC=0x200020
	entity_list_end

TileEntities_VeilFallsCaves_Hallway1F:: @ 080F9670
	tile_entity type=0x4, paramA=0x49, paramB=0x1, paramC=0xe8, paramD=0x58
	tile_entity_list_end

Room_VeilFallsCaves_Hallway1F:: @ 080F9680
	.4byte Entities_VeilFallsCaves_Hallway1F_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_Hallway1F
	.4byte TileEntities_VeilFallsCaves_Hallway1F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_Hallway1F
	.4byte sub_StateChange_VeilFallsCaves_Hallway1F

Entities_VeilFallsCaves_SecretRoom_0:: @ 080F96A0
	entity_list_end

Enemies_VeilFallsCaves_SecretRoom:: @ 080F96B0
	enemy_raw subtype=0x8, x=0x50, y=0x60, paramB=0xe160000, paramC=0x200010
	enemy_raw subtype=0x8, x=0x50, y=0x30, paramB=0xe160000, paramC=0x200010
	entity_list_end

TileEntities_VeilFallsCaves_SecretRoom:: @ 080F96E0
	tile_entity type=0x2, paramA=0x4a, paramB=0x323f, paramC=0xc9
	tile_entity_list_end

Room_VeilFallsCaves_SecretRoom:: @ 080F96F0
	.4byte Entities_VeilFallsCaves_SecretRoom_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_SecretRoom
	.4byte TileEntities_VeilFallsCaves_SecretRoom
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_SecretRoom
	.4byte sub_StateChange_VeilFallsCaves_SecretRoom

Entities_VeilFallsCaves_Entrance_0:: @ 080F9710
	entity_list_end

Enemies_VeilFallsCaves_Entrance:: @ 080F9720
	enemy_raw subtype=0x8, x=0x88, y=0x38, paramB=0xc280000, paramC=0x200020
	enemy_raw subtype=0x8, x=0xc8, y=0x68, paramB=0xc280000, paramC=0x200020
	enemy_raw subtype=0x8, x=0x158, y=0x78, paramB=0xc280000, paramC=0x200020
	entity_list_end

TileEntities_VeilFallsCaves_Entrance:: @ 080F9760
	tile_entity type=0x9
	tile_entity_list_end

Room_VeilFallsCaves_Entrance:: @ 080F9770
	.4byte Entities_VeilFallsCaves_Entrance_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_Entrance
	.4byte TileEntities_VeilFallsCaves_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_Entrance
	.4byte sub_StateChange_VeilFallsCaves_Entrance

Entities_VeilFallsCaves_Exit_0:: @ 080F9790
	object_raw subtype=0x5, x=0x68, y=0x48, collision=1, paramA=0x5d
	object_raw subtype=0x5, x=0x78, y=0x48, collision=1
	object_raw subtype=0x5, x=0x88, y=0x48, collision=1
	object_raw subtype=0x5, x=0x68, y=0x58, collision=1
	object_raw subtype=0x5, x=0x78, y=0x58, collision=1
	object_raw subtype=0x5, x=0x88, y=0x58, collision=1, paramA=0x5d
	entity_list_end

Enemies_VeilFallsCaves_Exit:: @ 080F9800
	enemy_raw subtype=0x34, x=0x48, y=0x48, paramB=0xc0e0000, paramC=0x200040
	entity_list_end

TileEntities_VeilFallsCaves_Exit:: @ 080F9820
	tile_entity type=0x4, paramA=0x4b, paramB=0x1, paramC=0x98, paramD=0x18
	tile_entity_list_end

Room_VeilFallsCaves_Exit:: @ 080F9830
	.4byte Entities_VeilFallsCaves_Exit_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_Exit
	.4byte TileEntities_VeilFallsCaves_Exit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_Exit
	.4byte sub_StateChange_VeilFallsCaves_Exit

Entities_VeilFallsCaves_SecretChest_0:: @ 080F9850
	object_raw subtype=0x5, x=0x68, y=0x58, collision=1
	object_raw subtype=0x5, x=0x88, y=0x58, collision=1
	object_raw subtype=0x5, x=0x68, y=0x68, collision=1
	object_raw subtype=0x5, x=0x78, y=0x68, collision=1
	object_raw subtype=0x5, x=0x88, y=0x68, collision=1
	entity_list_end

Enemies_VeilFallsCaves_SecretChest:: @ 080F98B0
	entity_list_end

TileEntities_VeilFallsCaves_SecretChest:: @ 080F98C0
	tile_entity type=0x2, paramA=0x4c, paramB=0x323f, paramC=0x147
	tile_entity_list_end

Room_VeilFallsCaves_SecretChest:: @ 080F98D0
	.4byte Entities_VeilFallsCaves_SecretChest_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_SecretChest
	.4byte TileEntities_VeilFallsCaves_SecretChest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_SecretChest
	.4byte sub_StateChange_VeilFallsCaves_SecretChest

Entities_VeilFallsCaves_SecretStaircases_0:: @ 080F98F0
	entity_list_end

Enemies_VeilFallsCaves_SecretStaircases:: @ 080F9900
	enemy_raw subtype=0x4e, x=0x78, y=0x58, paramA=0x1, paramB=0x80e0000, paramC=0x400040
	entity_list_end

TileEntities_VeilFallsCaves_SecretStaircases:: @ 080F9920
	tile_entity type=0x9
	tile_entity_list_end

Room_VeilFallsCaves_SecretStaircases:: @ 080F9930
	.4byte Entities_VeilFallsCaves_SecretStaircases_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_SecretStaircases
	.4byte TileEntities_VeilFallsCaves_SecretStaircases
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_SecretStaircases
	.4byte sub_StateChange_VeilFallsCaves_SecretStaircases

Entities_VeilFallsCaves_BlockPuzzle_0:: @ 080F9950
	entity_list_end

Enemies_VeilFallsCaves_BlockPuzzle:: @ 080F9960
	enemy_raw subtype=0x2, x=0x28, y=0x98, paramA=0x1, paramB=0xc0c0000, paramC=0x800020
	enemy_raw subtype=0x2, x=0x68, y=0x98, paramA=0x1, paramB=0xc0c0000, paramC=0x800020
	enemy_raw subtype=0x2, x=0x60, y=0xb8, paramA=0x1, paramB=0xc0c0000, paramC=0x800020
	enemy_raw subtype=0x2, x=0x40, y=0xd8, paramA=0x1, paramB=0xc0c0000, paramC=0x800020
	entity_list_end

TileEntities_VeilFallsCaves_BlockPuzzle:: @ 080F99B0
	tile_entity_list_end

Room_VeilFallsCaves_BlockPuzzle:: @ 080F99B8
	.4byte Entities_VeilFallsCaves_BlockPuzzle_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_BlockPuzzle
	.4byte TileEntities_VeilFallsCaves_BlockPuzzle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_BlockPuzzle
	.4byte sub_StateChange_VeilFallsCaves_BlockPuzzle

Entities_VeilFallsCaves_RupeePath_0:: @ 080F99D8
	object_raw subtype=0x0, x=0xb8, y=0x38, collision=1, paramA=0x54, paramB=0x400, paramC=0x4d0000
	object_raw subtype=0x0, x=0xa8, y=0x48, collision=1, paramA=0x54, paramB=0x400, paramC=0x4e0000
	object_raw subtype=0x0, x=0xb8, y=0x48, collision=1, paramA=0x56, paramB=0x400, paramC=0x4f0000
	object_raw subtype=0x0, x=0xc8, y=0x48, collision=1, paramA=0x54, paramB=0x400, paramC=0x500000
	object_raw subtype=0x0, x=0xb8, y=0x58, collision=1, paramA=0x54, paramB=0x400, paramC=0x510000
	object_raw subtype=0x0, x=0x58, y=0x98, collision=1, paramA=0x54, paramB=0x400, paramC=0x520000
	object_raw subtype=0x0, x=0x48, y=0xa8, collision=1, paramA=0x54, paramB=0x400, paramC=0x530000
	object_raw subtype=0x0, x=0x68, y=0xa8, collision=1, paramA=0x54, paramB=0x400, paramC=0x540000
	object_raw subtype=0x0, x=0x58, y=0xb8, collision=1, paramA=0x54, paramB=0x400, paramC=0x550000
	object_raw subtype=0x0, x=0x58, y=0x48, collision=1, paramA=0x54, paramB=0x800, paramC=0x560000
	object_raw subtype=0x0, x=0x68, y=0x48, collision=1, paramA=0x54, paramB=0x800, paramC=0x570000
	object_raw subtype=0x0, x=0xa8, y=0x98, collision=1, paramA=0x55, paramB=0x800, paramC=0x580000
	object_raw subtype=0x0, x=0xb8, y=0x98, collision=1, paramA=0x55, paramB=0x800, paramC=0x590000
	object_raw subtype=0x0, x=0x58, y=0x108, collision=1, paramA=0x56, paramB=0x800, paramC=0x5a0000
	object_raw subtype=0x0, x=0x68, y=0x108, collision=1, paramA=0x56, paramB=0x800, paramC=0x5b0000
	entity_list_end

Enemies_VeilFallsCaves_RupeePath:: @ 080F9AD8
	enemy_raw subtype=0x17, x=0x58, y=0xa8, paramA=0x2
	entity_list_end

TileEntities_VeilFallsCaves_RupeePath:: @ 080F9AF8
	tile_entity_list_end

Room_VeilFallsCaves_RupeePath:: @ 080F9B00
	.4byte Entities_VeilFallsCaves_RupeePath_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_RupeePath
	.4byte TileEntities_VeilFallsCaves_RupeePath
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_RupeePath
	.4byte sub_StateChange_VeilFallsCaves_RupeePath

Entities_VeilFallsCaves_HeartPiece_0:: @ 080F9B20
	object_raw subtype=0x0, x=0x78, y=0x24, collision=1, paramA=0x63, paramB=0x400, paramC=0x5c0000
	entity_list_end

Enemies_VeilFallsCaves_HeartPiece:: @ 080F9B40
	entity_list_end

TileEntities_VeilFallsCaves_HeartPiece:: @ 080F9B50
	tile_entity_list_end

Room_VeilFallsCaves_HeartPiece:: @ 080F9B58
	.4byte Entities_VeilFallsCaves_HeartPiece_0
	.4byte 0x00000000
	.4byte Enemies_VeilFallsCaves_HeartPiece
	.4byte TileEntities_VeilFallsCaves_HeartPiece
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsCaves_HeartPiece
	.4byte sub_StateChange_VeilFallsCaves_HeartPiece

Entities_VeilFallsTop_Main_0:: @ 080F9B78
	object_raw subtype=0x82, x=0x58, y=0x38, paramB=0x1
	npc_raw subtype=0x4c, x=0x140, y=0x68, script=script_BigGoron1
	npc_raw subtype=0x4c, x=0xd0, y=0x68, paramA=0x5, script=script_BigGoron2
	npc_raw subtype=0x4c, x=0x1b0, y=0x68, paramA=0xa, script=script_BigGoron2
	npc_raw subtype=0x4c, y=0x78, paramA=0x4, script=script_BigGoron3
	npc_raw subtype=0x4c, x=0x108, y=0x88, unknown=0xf, paramA=0x1, script=0x0
	npc_raw subtype=0x4c, x=0x108, y=0x88, unknown=0xf, paramA=0x2, script=0x0
	entity_list_end

gUnk_080F9BF8:: @ 080F9BF8
.ifdef EU_JP
	ezlo_hint x=0xe, y=0x6, rx=0x2, ry=0x2, msg=0xb20, flag=0xaa
	object_raw subtype=0x82, x=0x58, y=0x38, paramB=0x1
	npc_raw subtype=0x4c, x=0x140, y=0xf8, script=script_BigGoronHiding
	entity_list_end
.else
	ezlo_hint x=0xe, y=0x6, rx=0x2, ry=0x2, msg=0xb20, flag=0xac
	object_raw subtype=0x82, x=0x58, y=0x38, paramB=0x1
	npc_raw subtype=0x4c, x=0x140, y=0xf8, script=script_BigGoronHiding
	entity_list_end
.endif

gUnk_080F9C38:: @ 080F9C38
	object_raw subtype=0x6a, x=0x108, y=0x88, unknown=0x4f, paramA=0x29, paramC=script_Object6AVeilFallsTop
	entity_list_end

gUnk_080F9C58:: @ 080F9C58
	object_raw subtype=0x6a, x=0x118, y=0x88, unknown=0x4f, paramA=0x2a, paramC=script_Object6AMirrorShield
	entity_list_end

Entities_VeilFallsTop_Main_1:: @ 080F9C78
	manager subtype=0x1b, unknown=0x8, paramA=0x2
	entity_list_end

Enemies_VeilFallsTop_Main:: @ 080F9C98
	entity_list_end

TileEntities_VeilFallsTop_Main:: @ 080F9CA8
	tile_entity_list_end

Room_VeilFallsTop_Main:: @ 080F9CB0
	.4byte Entities_VeilFallsTop_Main_0
	.4byte Entities_VeilFallsTop_Main_1
	.4byte Enemies_VeilFallsTop_Main
	.4byte TileEntities_VeilFallsTop_Main
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_VeilFallsTop_Main
	.4byte sub_StateChange_VeilFallsTop_Main

Entities_47_0_0:: @ 080F9CD0
	object_raw subtype=0x3, x=0x98, y=0x58, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x3, x=0xb8, y=0x58, paramA=0x1, paramC=0x80010000
	object_raw subtype=0x3, x=0x98, y=0x78, paramA=0x1, paramC=0x80020000
	object_raw subtype=0x3, x=0xb8, y=0x78, paramA=0x1, paramC=0x80030000
	manager subtype=0x11, paramC=0x8c0000ae
	object_raw subtype=0x8, x=0xa8, y=0x28, paramA=0x4, paramC=0xaeffff
	entity_list_end

Enemies_47_0:: @ 080F9D40
	entity_list_end

TileEntities_47_0:: @ 080F9D50
	tile_entity_list_end

Room_47_0:: @ 080F9D58
	.4byte Entities_47_0_0
	.4byte 0x00000000
	.4byte Enemies_47_0
	.4byte TileEntities_47_0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_47_0
	.4byte sub_StateChange_47_0

Entities_47_1_0:: @ 080F9D78
	object_raw subtype=0x3, x=0x48, y=0x58, paramA=0x1, paramC=0x80000000
	object_raw subtype=0x3, x=0x48, y=0x98, paramA=0x1, paramC=0x80010000
	object_raw subtype=0x3, x=0x38, y=0x78, paramA=0x1, paramC=0x80020000
	object_raw subtype=0x3, x=0x58, y=0x78, paramA=0x1, paramC=0x80030000
	manager subtype=0x11, paramC=0x8c0000af
	object_raw subtype=0x8, x=0x48, y=0x28, paramA=0x4, paramC=0xafffff
	object_raw subtype=0x8, x=0xe8, y=0x28, paramA=0x4, paramC=0xb00000
	entity_list_end

Enemies_47_1:: @ 080F9DF8
	entity_list_end

TileEntities_47_1:: @ 080F9E08
	tile_entity_list_end

Room_47_1:: @ 080F9E10
	.4byte Entities_47_1_0
	.4byte 0x00000000
	.4byte Enemies_47_1
	.4byte TileEntities_47_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_47_1
	.4byte sub_StateChange_47_1

Entities_47_2_0:: @ 080F9E30
	object_raw subtype=0x8, x=0xe8, y=0x168, paramA=0x6, paramC=0xb1ffff
	object_raw subtype=0x24, x=0xf0, y=0x130, paramA=0x2, paramC=0xb10000
	entity_list_end

Enemies_47_2:: @ 080F9E60
	entity_list_end

TileEntities_47_2:: @ 080F9E70
	tile_entity_list_end

Room_47_2:: @ 080F9E78
	.4byte Entities_47_2_0
	.4byte 0x00000000
	.4byte Enemies_47_2
	.4byte TileEntities_47_2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_47_2
	.4byte sub_StateChange_47_2

Entities_47_3_0:: @ 080F9E98
	entity_list_end

Enemies_47_3:: @ 080F9EA8
	entity_list_end

TileEntities_47_3:: @ 080F9EB8
	tile_entity_list_end

Room_47_3:: @ 080F9EC0
	.4byte Entities_47_3_0
	.4byte 0x00000000
	.4byte Enemies_47_3
	.4byte TileEntities_47_3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_47_3
	.4byte sub_StateChange_47_3

Entities_47_4_0:: @ 080F9EE0
	entity_list_end

Enemies_47_4:: @ 080F9EF0
	entity_list_end

TileEntities_47_4:: @ 080F9F00
	tile_entity_list_end

Room_47_4:: @ 080F9F08
	.4byte Entities_47_4_0
	.4byte 0x00000000
	.4byte Enemies_47_4
	.4byte TileEntities_47_4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_47_4
	.4byte sub_StateChange_47_4

Entities_TreeInteriors_WitchHut_0:: @ 080F9F28
	npc_raw subtype=0x36, x=0x78, y=0x30, script=script_Syrup
	object_raw subtype=0x69, x=0x58, y=0x48, unknown=0x4f, paramC=script_Object69PotionBlue
	entity_list_end

Entities_TreeInteriors_WitchHut_1:: @ 080F9F58
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	object_raw subtype=0x4d, x=0x58, y=0x48, collision=1, paramA=0x10
	entity_list_end

gUnk_080F9F88:: @ 080F9F88
	object_raw subtype=0x2, x=0x98, y=0x48, paramA=0x38, paramB=0x100
	entity_list_end

gUnk_080F9FA8:: @ 080F9FA8
	object_raw subtype=0x4d, x=0x98, y=0x48, collision=1, paramA=0x8
	object_raw subtype=0x69, x=0x98, y=0x48, unknown=0x4f, paramC=script_Object69PotionRed
	entity_list_end

Enemies_TreeInteriors_WitchHut:: @ 080F9FD8
	entity_list_end

TileEntities_TreeInteriors_WitchHut:: @ 080F9FE8
	tile_entity type=0x7, paramB=0x1600
	tile_entity_list_end

Room_TreeInteriors_WitchHut:: @ 080F9FF8
	.4byte Entities_TreeInteriors_WitchHut_0
	.4byte Entities_TreeInteriors_WitchHut_1
	.4byte Enemies_TreeInteriors_WitchHut
	.4byte TileEntities_TreeInteriors_WitchHut
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_WitchHut
	.4byte sub_StateChange_TreeInteriors_WitchHut

gUnk_080FA018:: @ 080FA018
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA038:: @ 080FA038
	entity_list_end

gUnk_080FA048:: @ 080FA048  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA090:: @ 080FA090
	entity_list_end

gUnk_080FA0A0:: @ 080FA0A0  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA0E8:: @ 080FA0E8
	entity_list_end

gUnk_080FA0F8:: @ 080FA0F8  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA140:: @ 080FA140
	entity_list_end

gUnk_080FA150:: @ 080FA150  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA198:: @ 080FA198
	entity_list_end

gUnk_080FA1A8:: @ 080FA1A8  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA1F0:: @ 080FA1F0
	entity_list_end

gUnk_080FA200:: @ 080FA200  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA248:: @ 080FA248
	entity_list_end

gUnk_080FA258:: @ 080FA258  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA2A0:: @ 080FA2A0
	entity_list_end

gUnk_080FA2B0:: @ 080FA2B0  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA300:: @ 080FA300
	entity_list_end

gUnk_080FA310:: @ 080FA310  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA358:: @ 080FA358
	entity_list_end

gUnk_080FA368:: @ 080FA368  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA3B8:: @ 080FA3B8
	entity_list_end

gUnk_080FA3C8:: @ 080FA3C8  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA418:: @ 080FA418
	entity_list_end

gUnk_080FA428:: @ 080FA428  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA470:: @ 080FA470
	entity_list_end

gUnk_080FA480:: @ 080FA480  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA4C8:: @ 080FA4C8
	entity_list_end

gUnk_080FA4D8:: @ 080FA4D8  @TODO broken room definition?
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
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA520:: @ 080FA520
	entity_list_end

gUnk_080FA530:: @ 080FA530  @TODO broken room definition?
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

Entities_TreeInteriors_StairsToCarlov_0:: @ 080FA558
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_StairsToCarlov:: @ 080FA578
	entity_list_end

TileEntities_TreeInteriors_StairsToCarlov:: @ 080FA588
	tile_entity_list_end

Room_TreeInteriors_StairsToCarlov:: @ 080FA590
	.4byte Entities_TreeInteriors_StairsToCarlov_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_StairsToCarlov
	.4byte TileEntities_TreeInteriors_StairsToCarlov
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_StairsToCarlov
	.4byte sub_StateChange_TreeInteriors_StairsToCarlov

Entities_TreeInteriors_PercysTreehouse_0:: @ 080FA5B0
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

gUnk_080FA5D0:: @ 080FA5D0
	npc_raw subtype=0x3a, x=0x78, y=0x58, script=script_PercyInside
	entity_list_end

Entities_TreeInteriors_PercysTreehouse_1:: @ 080FA5F0
	object_raw subtype=0x4d, x=0x78, y=0x28, collision=1
	entity_list_end

Enemies_TreeInteriors_PercysTreehouse:: @ 080FA610
	entity_list_end

TileEntities_TreeInteriors_PercysTreehouse:: @ 080FA620
	tile_entity_list_end

Room_TreeInteriors_PercysTreehouse:: @ 080FA628
	.4byte Entities_TreeInteriors_PercysTreehouse_0
	.4byte Entities_TreeInteriors_PercysTreehouse_1
	.4byte Enemies_TreeInteriors_PercysTreehouse
	.4byte TileEntities_TreeInteriors_PercysTreehouse
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_PercysTreehouse
	.4byte sub_StateChange_TreeInteriors_PercysTreehouse

Entities_TreeInteriors_HeartPiece_0:: @ 080FA648
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	object_raw subtype=0x0, x=0x78, y=0x44, collision=1, paramA=0x63, paramB=0x400, paramC=0x970000
	entity_list_end

Enemies_TreeInteriors_HeartPiece:: @ 080FA678
	entity_list_end

TileEntities_TreeInteriors_HeartPiece:: @ 080FA688
	tile_entity_list_end

Room_TreeInteriors_HeartPiece:: @ 080FA690
	.4byte Entities_TreeInteriors_HeartPiece_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_HeartPiece
	.4byte TileEntities_TreeInteriors_HeartPiece
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_HeartPiece
	.4byte sub_StateChange_TreeInteriors_HeartPiece

Entities_TreeInteriors_Waveblade_0:: @ 080FA6B0
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_Waveblade:: @ 080FA6D0
	entity_list_end

TileEntities_TreeInteriors_Waveblade:: @ 080FA6E0
	tile_entity_list_end

Room_TreeInteriors_Waveblade:: @ 080FA6E8
	.4byte Entities_TreeInteriors_Waveblade_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_Waveblade
	.4byte TileEntities_TreeInteriors_Waveblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_Waveblade
	.4byte sub_StateChange_TreeInteriors_Waveblade

Entities_TreeInteriors_14_0:: @ 080FA708
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_14:: @ 080FA728
	entity_list_end

TileEntities_TreeInteriors_14:: @ 080FA738
	tile_entity_list_end

Room_TreeInteriors_14:: @ 080FA740
	.4byte Entities_TreeInteriors_14_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_14
	.4byte TileEntities_TreeInteriors_14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_14
	.4byte sub_StateChange_TreeInteriors_14

Entities_TreeInteriors_BoomerangNorthwest_0:: @ 080FA760
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_BoomerangNorthwest:: @ 080FA780
	entity_list_end

TileEntities_TreeInteriors_BoomerangNorthwest:: @ 080FA790
	tile_entity_list_end

Room_TreeInteriors_BoomerangNorthwest:: @ 080FA798
	.4byte Entities_TreeInteriors_BoomerangNorthwest_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_BoomerangNorthwest
	.4byte TileEntities_TreeInteriors_BoomerangNorthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_BoomerangNorthwest
	.4byte sub_StateChange_TreeInteriors_BoomerangNorthwest

Entities_TreeInteriors_BoomerangNortheast_0:: @ 080FA7B8
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_BoomerangNortheast:: @ 080FA7D8
	entity_list_end

TileEntities_TreeInteriors_BoomerangNortheast:: @ 080FA7E8
	tile_entity_list_end

Room_TreeInteriors_BoomerangNortheast:: @ 080FA7F0
	.4byte Entities_TreeInteriors_BoomerangNortheast_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_BoomerangNortheast
	.4byte TileEntities_TreeInteriors_BoomerangNortheast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_BoomerangNortheast
	.4byte sub_StateChange_TreeInteriors_BoomerangNortheast

Entities_TreeInteriors_BoomerangSouthwest_0:: @ 080FA810
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_BoomerangSouthwest:: @ 080FA830
	entity_list_end

TileEntities_TreeInteriors_BoomerangSouthwest:: @ 080FA840
	tile_entity_list_end

Room_TreeInteriors_BoomerangSouthwest:: @ 080FA848
	.4byte Entities_TreeInteriors_BoomerangSouthwest_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_BoomerangSouthwest
	.4byte TileEntities_TreeInteriors_BoomerangSouthwest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_BoomerangSouthwest
	.4byte sub_StateChange_TreeInteriors_BoomerangSouthwest

Entities_TreeInteriors_BoomerangSoutheast_0:: @ 080FA868
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_BoomerangSoutheast:: @ 080FA888
	entity_list_end

TileEntities_TreeInteriors_BoomerangSoutheast:: @ 080FA898
	tile_entity_list_end

Room_TreeInteriors_BoomerangSoutheast:: @ 080FA8A0
	.4byte Entities_TreeInteriors_BoomerangSoutheast_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_BoomerangSoutheast
	.4byte TileEntities_TreeInteriors_BoomerangSoutheast
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_BoomerangSoutheast
	.4byte sub_StateChange_TreeInteriors_BoomerangSoutheast

Entities_TreeInteriors_WesternWoodsHeartPiece_0:: @ 080FA8C0
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	object_raw subtype=0x0, x=0x78, y=0x44, collision=1, paramA=0x63, paramB=0x400, paramC=0x980000
	entity_list_end

Enemies_TreeInteriors_WesternWoodsHeartPiece:: @ 080FA8F0
	entity_list_end

TileEntities_TreeInteriors_WesternWoodsHeartPiece:: @ 080FA900
	tile_entity_list_end

Room_TreeInteriors_WesternWoodsHeartPiece:: @ 080FA908
	.4byte Entities_TreeInteriors_WesternWoodsHeartPiece_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_WesternWoodsHeartPiece
	.4byte TileEntities_TreeInteriors_WesternWoodsHeartPiece
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_WesternWoodsHeartPiece
	.4byte sub_StateChange_TreeInteriors_WesternWoodsHeartPiece

Entities_TreeInteriors_NorthHyruleFieldFairyFountain_0:: @ 080FA928
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_NorthHyruleFieldFairyFountain:: @ 080FA948
	entity_list_end

TileEntities_TreeInteriors_NorthHyruleFieldFairyFountain:: @ 080FA958
	tile_entity_list_end

Room_TreeInteriors_NorthHyruleFieldFairyFountain:: @ 080FA960
	.4byte Entities_TreeInteriors_NorthHyruleFieldFairyFountain_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_NorthHyruleFieldFairyFountain
	.4byte TileEntities_TreeInteriors_NorthHyruleFieldFairyFountain
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_NorthHyruleFieldFairyFountain
	.4byte sub_StateChange_TreeInteriors_NorthHyruleFieldFairyFountain

Entities_TreeInteriors_MinishWoodsGreatFairy_0:: @ 080FA980
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Enemies_TreeInteriors_MinishWoodsGreatFairy:: @ 080FA9A0
	entity_list_end

TileEntities_TreeInteriors_MinishWoodsGreatFairy:: @ 080FA9B0
	tile_entity_list_end

Room_TreeInteriors_MinishWoodsGreatFairy:: @ 080FA9B8
	.4byte Entities_TreeInteriors_MinishWoodsGreatFairy_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_MinishWoodsGreatFairy
	.4byte TileEntities_TreeInteriors_MinishWoodsGreatFairy
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_MinishWoodsGreatFairy
	.4byte sub_StateChange_TreeInteriors_MinishWoodsGreatFairy

Entities_TreeInteriors_1C_0:: @ 080FA9D8
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Entities_TreeInteriors_1C_1:: @ 080FA9F8
	object_raw subtype=0x4d, x=0x7d, y=0x28, collision=1, paramA=0x3
	object_raw subtype=0x4d, x=0x94, y=0x28, collision=1, paramA=0x3
	object_raw subtype=0x4d, x=0x68, y=0x28, collision=1, paramA=0x1
	object_raw subtype=0x5, x=0x38, y=0x48
	object_raw subtype=0x5, x=0x38, y=0x58
	entity_list_end

Enemies_TreeInteriors_1C:: @ 080FAA58
	entity_list_end

TileEntities_TreeInteriors_1C:: @ 080FAA68
	tile_entity_list_end

Room_TreeInteriors_1C:: @ 080FAA70
	.4byte Entities_TreeInteriors_1C_0
	.4byte Entities_TreeInteriors_1C_1
	.4byte Enemies_TreeInteriors_1C
	.4byte TileEntities_TreeInteriors_1C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_1C
	.4byte sub_StateChange_TreeInteriors_1C

Entities_TreeInteriors_MinishWoodsBusinessScrub_0:: @ 080FAA90
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	entity_list_end

Entities_TreeInteriors_MinishWoodsBusinessScrub_1:: @ 080FAAB0
	entity_list_end

Enemies_TreeInteriors_MinishWoodsBusinessScrub:: @ 080FAAC0
	entity_list_end

TileEntities_TreeInteriors_MinishWoodsBusinessScrub:: @ 080FAAD0
	tile_entity_list_end

Room_TreeInteriors_MinishWoodsBusinessScrub:: @ 080FAAD8
	.4byte Entities_TreeInteriors_MinishWoodsBusinessScrub_0
	.4byte Entities_TreeInteriors_MinishWoodsBusinessScrub_1
	.4byte Enemies_TreeInteriors_MinishWoodsBusinessScrub
	.4byte TileEntities_TreeInteriors_MinishWoodsBusinessScrub
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_MinishWoodsBusinessScrub
	.4byte sub_StateChange_TreeInteriors_MinishWoodsBusinessScrub

Entities_TreeInteriors_1E_0:: @ 080FAAF8
	object_raw subtype=0x4c, x=0x8c, y=0x28, collision=1, paramA=0x2
	entity_list_end

Entities_TreeInteriors_1E_1:: @ 080FAB18
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	object_raw subtype=0x4d, x=0xa0, y=0x28, collision=1, paramA=0x1
	object_raw subtype=0x5, x=0x58, y=0x28
	object_raw subtype=0x5, x=0x58, y=0x38
	object_raw subtype=0x5, x=0x48, y=0x38
	object_raw subtype=0x5, x=0x48, y=0x48
	entity_list_end

Enemies_TreeInteriors_1E:: @ 080FAB88
	entity_list_end

TileEntities_TreeInteriors_1E:: @ 080FAB98
	tile_entity_list_end

Room_TreeInteriors_1E:: @ 080FABA0
	.4byte Entities_TreeInteriors_1E_0
	.4byte Entities_TreeInteriors_1E_1
	.4byte Enemies_TreeInteriors_1E
	.4byte TileEntities_TreeInteriors_1E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_1E
	.4byte sub_StateChange_TreeInteriors_1E

Entities_TreeInteriors_UnusedHeartContainer_0:: @ 080FABC0
	object_raw subtype=0x4f, x=0x78, y=0x98, paramA=0x6, paramB=0x2
	object_raw subtype=0x0, x=0x78, y=0x48, collision=1, paramA=0x62, paramB=0x400, paramC=0x990000
	entity_list_end

Enemies_TreeInteriors_UnusedHeartContainer:: @ 080FABF0
	entity_list_end

TileEntities_TreeInteriors_UnusedHeartContainer:: @ 080FAC00
	tile_entity_list_end

Room_TreeInteriors_UnusedHeartContainer:: @ 080FAC08
	.4byte Entities_TreeInteriors_UnusedHeartContainer_0
	.4byte 0x00000000
	.4byte Enemies_TreeInteriors_UnusedHeartContainer
	.4byte TileEntities_TreeInteriors_UnusedHeartContainer
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_TreeInteriors_UnusedHeartContainer
	.4byte sub_StateChange_TreeInteriors_UnusedHeartContainer

Entities_MtCrenel_MountainTop_0:: @ 080FAC28
.ifdef EU_JP
	object_raw subtype=0x32, x=0x198, y=0x48
	object_raw subtype=0x32, x=0x248, y=0x48
	manager subtype=0x20, x=0x2f8, y=0x58, paramB=0x12e82e00, paramC=0x3e1058
	manager subtype=0x20, x=0x3b8, y=0x88, paramB=0x12c82e00, paramC=0x3f1018
	object_raw subtype=0x2e, x=0x2d8, y=0x18
	entity_list_end
.else
	object_raw subtype=0x32, x=0x198, y=0x48
	object_raw subtype=0x32, x=0x248, y=0x48
	manager subtype=0x20, x=0x2f8, y=0x58, paramB=0x12e82e00, paramC=0x3f1058
	manager subtype=0x20, x=0x3b8, y=0x88, paramB=0x12c82e00, paramC=0x401018
	object_raw subtype=0x2e, x=0x2d8, y=0x18
	entity_list_end
.endif

Entities_MtCrenel_MountainTop_1:: @ 080FAC88
.ifdef EU_JP
	object_raw subtype=0x2c, x=0x98, y=0x28, paramA=0x7, paramB=0xad00
	manager subtype=0x1b, unknown=0x8
	entity_list_end
.else
	object_raw subtype=0x2c, x=0x98, y=0x28, paramA=0x7, paramB=0xaf00
	manager subtype=0x1b, unknown=0x8
	entity_list_end
.endif

gUnk_080FACB8:: @ 080FACB8
	manager subtype=0x10
	manager subtype=0x6, paramA=0x8
	manager subtype=0x3, x=0x288, y=0x28, unknown=0x0, paramA=0x1, paramB=0x102
	manager subtype=0x3, x=0x388, y=0x28, unknown=0x0, paramA=0x1, paramB=0x102
	object_raw subtype=0x7a, x=0x1d8, y=0xb8, paramA=0x1
	object_raw subtype=0x7a, x=0x1e8, y=0xa8, paramA=0x1
	object_raw subtype=0x7a, x=0x1f8, y=0xa0, paramA=0x1
	object_raw subtype=0x7a, x=0x208, y=0xc0, paramA=0x1
	entity_list_end

gUnk_080FAD48:: @ 080FAD48
	npc_raw subtype=0x4e, script=script_Npc4EMtCrenel
	object_raw subtype=0x6a, x=0xf8, y=0x38, unknown=0x4f, paramA=0x20, paramC=script_Object6ATektite1
	object_raw subtype=0x6a, x=0x168, y=0x48, unknown=0x4f, paramA=0x20, paramC=script_Object6ATektite2
	object_raw subtype=0x6a, x=0x138, y=0x68, unknown=0x4f, paramA=0x21, paramC=script_Object6ATektite3
	object_raw subtype=0x6a, x=0xe8, y=0x88, unknown=0x4f, paramA=0x21, paramC=script_Object6ATektite4
	entity_list_end

Enemies_MtCrenel_MountainTop:: @ 080FADA8
	enemy_raw subtype=0x26, x=0x48, y=0x88, paramA=0x1
	enemy_raw subtype=0x26, x=0x98, y=0x38
	enemy_raw subtype=0x26, x=0x138, y=0x88
	enemy_raw subtype=0x35, x=0xe8, y=0x58, paramA=0x1
	enemy_raw subtype=0x3, x=0x148, y=0x68, paramB=0x141e0000, paramC=0x100060
	entity_list_end

TileEntities_MtCrenel_MountainTop:: @ 080FAE08
	tile_entity_list_end

gUnk_additional_8_MtCrenel_MountainTop:: @ 080FAE10
	exit_region_raw centerX=0x2d0, centerY=0x98, halfWidth=0x4, halfHeight=0x8, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0x2ee, centerY=0x98, halfWidth=0x4, halfHeight=0x8, exitIndex=0xa, bitfield=0x1
	exit_region_raw centerX=0x98, centerY=0x4, halfWidth=0x8, halfHeight=0x4, exitIndex=0xb, bitfield=0x11
	exit_region_list_end

gUnk_additional_9_MtCrenel_MountainTop:: @ 080FAE30
	exit_raw transition=0x1, destX=0x8, destY=0x50, destArea=0x12, destRoom=0x2, unknownA=0x1, unknownC=0x2

gUnk_additional_a_MtCrenel_MountainTop:: @ 080FAE44
	exit_raw transition=0x1, destX=0x318, destY=0x50, destArea=0x12, destRoom=0x2, unknownA=0x1, unknownC=0x6

gUnk_additional_b_MtCrenel_MountainTop:: @ 080FAE58
	exit_raw transition=0x1, destX=0x78, destY=0x98, destArea=0xd, destRoom=0x10, unknownA=0x1

Room_MtCrenel_MountainTop:: @ 080FAE6C
	.4byte Entities_MtCrenel_MountainTop_0
	.4byte Entities_MtCrenel_MountainTop_1
	.4byte Enemies_MtCrenel_MountainTop
	.4byte TileEntities_MtCrenel_MountainTop
	.4byte sub_unk1_MtCrenel_MountainTop
	.4byte 0x00000000
	.4byte sub_unk3_MtCrenel_MountainTop
	.4byte sub_StateChange_MtCrenel_MountainTop
	.4byte gUnk_additional_8_MtCrenel_MountainTop
	.4byte gUnk_additional_9_MtCrenel_MountainTop
	.4byte gUnk_additional_a_MtCrenel_MountainTop
	.4byte gUnk_additional_b_MtCrenel_MountainTop

Entities_MtCrenel_WallClimb_0:: @ 080FAE9C
	manager subtype=0x4
	entity_list_end

Enemies_MtCrenel_WallClimb:: @ 080FAEBC
	enemy_raw subtype=0x35, x=0x58, y=0xa8, paramA=0x1
	enemy_raw subtype=0x35, x=0x78, y=0xa8, paramA=0x1
	manager subtype=0x28, unknown=0x3, paramB=0x2
	enemy_raw subtype=0x21, x=0x28, y=0x8, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0xa8, y=0x8, paramA=0x1, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0x148, y=0x8, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0x58, y=0x8, paramA=0x1, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0xd8, y=0x8, paramA=0x1, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0x158, y=0x8, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0x128, y=0x8, paramA=0x2, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0x98, y=0x8, paramA=0x2, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0x78, y=0x158, paramA=0x3, paramB=0x4a2e0000
	enemy_raw subtype=0x21, x=0xf8, y=0x158, paramA=0x3, paramB=0x4a2e0000
	entity_list_end

TileEntities_MtCrenel_WallClimb:: @ 080FAF9C
.ifdef EU_JP
	tile_entity type=0x4, paramA=0x40, paramB=0x1, paramC=0x148, paramD=0x1e8
	tile_entity type=0x5, paramB=0x600, paramC=0x7d2, paramD=0x606
	tile_entity_list_end
.else
	tile_entity type=0x4, paramA=0x41, paramB=0x1, paramC=0x148, paramD=0x1e8
	tile_entity type=0x5, paramB=0x600, paramC=0x7d2, paramD=0x606
	tile_entity_list_end
.endif

Room_MtCrenel_WallClimb:: @ 080FAFB4
	.4byte Entities_MtCrenel_WallClimb_0
	.4byte 0x00000000
	.4byte Enemies_MtCrenel_WallClimb
	.4byte TileEntities_MtCrenel_WallClimb
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MtCrenel_WallClimb
	.4byte sub_StateChange_MtCrenel_WallClimb

Entities_MtCrenel_CaveOfFlamesEntrance_0:: @ 080FAFD4
	entity_list_end

gUnk_080FAFE4:: @ 080FAFE4
	object_raw subtype=0x69, unknown=0x4f, paramC=script_EzloTalkCoF
	entity_list_end

gUnk_080FB004:: @ 080FB004
	object_raw subtype=0xbb, x=0x98, y=0xf8, unknown=0x4f, paramC=script_Windcrest
	entity_list_end

Entities_MtCrenel_CaveOfFlamesEntrance_1:: @ 080FB024
	manager subtype=0x1b, unknown=0x8, paramA=0x1
	manager subtype=0x6, paramA=0x8
	manager subtype=0x3, x=0x38, y=0x108, unknown=0x0, paramA=0x1, paramB=0x102
	manager subtype=0x3, x=0x138, y=0x128, unknown=0x0, paramA=0x1, paramB=0x102
	object_raw subtype=0x7a, x=0x48, y=0x38, collision=2
	object_raw subtype=0x7a, x=0x50, y=0x30, collision=2
	object_raw subtype=0x7a, x=0x58, y=0x3c, collision=2
	object_raw subtype=0x7a, x=0x60, y=0x34, collision=2
	object_raw subtype=0x7a, x=0x68, y=0x3c, collision=2
	object_raw subtype=0x7a, x=0x70, y=0x28, collision=2
	object_raw subtype=0x7a, x=0x78, y=0x2c, collision=2
	object_raw subtype=0x7a, x=0x80, y=0x2e, collision=2
	object_raw subtype=0x7a, x=0x88, y=0x34, collision=2
	entity_list_end

Enemies_MtCrenel_CaveOfFlamesEntrance:: @ 080FB104
	enemy_raw subtype=0x35, x=0x178, y=0x28, paramA=0x1
	enemy_raw subtype=0x35, x=0x1c8, y=0x28, paramA=0x1
	enemy_raw subtype=0x35, x=0x118, y=0x198, paramA=0x1
	enemy_raw subtype=0x35, x=0x128, y=0x198, paramA=0x1
	manager subtype=0x28, unknown=0x3, paramB=0x2
	enemy_raw subtype=0x3, x=0x158, y=0x58, paramB=0x8240000, paramC=0x300110
	enemy_raw subtype=0x3, x=0x1f8, y=0x58, paramB=0x8240000, paramC=0x300110
	enemy_raw subtype=0x3, x=0x1f8, y=0xe8, paramB=0x6120000, paramC=0xd001c0
	enemy_raw subtype=0x26, x=0x138, y=0x1b8, paramB=0x12160000, paramC=0x1900110
	enemy_raw subtype=0x26, x=0x188, y=0x1b8, paramB=0x12160000, paramC=0x1900110
	enemy_raw subtype=0x26, x=0xf8, y=0x1a8, paramB=0x12120000, paramC=0x1900090
	enemy_raw subtype=0x26, x=0xf8, y=0x208, paramB=0x12120000, paramC=0x1900090
	enemy_raw subtype=0x3, x=0xf8, y=0x208, paramB=0x184c0000, paramC=0x1500000
	enemy_raw subtype=0x3, x=0x1a8, y=0x1e8, paramB=0x184c0000, paramC=0x1500000
	entity_list_end

TileEntities_MtCrenel_CaveOfFlamesEntrance:: @ 080FB1F4
.ifdef EU_JP
	tile_entity type=0x5, paramB=0x1000, paramC=0x747, paramD=0x610
	tile_entity type=0x5, paramB=0x1100, paramC=0x7a1, paramD=0x611
	tile_entity type=0x4, paramA=0x41, paramB=0x1, paramC=0x1e8, paramD=0x1d8
	tile_entity_list_end
.else
	tile_entity type=0x5, paramB=0x1000, paramC=0x747, paramD=0x610
	tile_entity type=0x5, paramB=0x1100, paramC=0x7a1, paramD=0x611
	tile_entity type=0x4, paramA=0x42, paramB=0x1, paramC=0x1e8, paramD=0x1d8
	tile_entity_list_end
.endif

gUnk_additional_8_MtCrenel_CaveOfFlamesEntrance:: @ 080FB214
	exit_region_raw centerX=0xd2, centerY=0x108, halfWidth=0x4, halfHeight=0x8, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0xee, centerY=0x108, halfWidth=0x4, halfHeight=0x8, exitIndex=0xa, bitfield=0x1
	exit_region_raw centerX=0xc0, centerY=0x138, halfWidth=0x4, halfHeight=0x8, exitIndex=0xb, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_MtCrenel_CaveOfFlamesEntrance:: @ 080FB234
	exit_raw transition=0x1, destX=0x8, destY=0x50, destArea=0x12, destRoom=0x3, unknownA=0x1, unknownC=0x2

gUnk_additional_a_MtCrenel_CaveOfFlamesEntrance:: @ 080FB248
	exit_raw transition=0x1, destX=0x318, destY=0x50, destArea=0x12, destRoom=0x3, unknownA=0x1, unknownC=0x6

gUnk_additional_b_MtCrenel_CaveOfFlamesEntrance:: @ 080FB25C
	exit_raw transition=0x1, destX=0x80, destY=0x128, destArea=0x10, unknownA=0x1, unknownC=0x2

Room_MtCrenel_CaveOfFlamesEntrance:: @ 080FB270
	.4byte Entities_MtCrenel_CaveOfFlamesEntrance_0
	.4byte Entities_MtCrenel_CaveOfFlamesEntrance_1
	.4byte Enemies_MtCrenel_CaveOfFlamesEntrance
	.4byte TileEntities_MtCrenel_CaveOfFlamesEntrance
	.4byte sub_unk1_MtCrenel_CaveOfFlamesEntrance
	.4byte 0x00000000
	.4byte sub_unk3_MtCrenel_CaveOfFlamesEntrance
	.4byte sub_StateChange_MtCrenel_CaveOfFlamesEntrance
	.4byte gUnk_additional_8_MtCrenel_CaveOfFlamesEntrance
	.4byte gUnk_additional_9_MtCrenel_CaveOfFlamesEntrance
	.4byte gUnk_additional_a_MtCrenel_CaveOfFlamesEntrance
	.4byte gUnk_additional_b_MtCrenel_CaveOfFlamesEntrance

Entities_MtCrenel_GustJarShortcut_0:: @ 080FB2A0
	object_raw subtype=0x32, x=0x388, y=0x78
	object_raw subtype=0x5e, x=0x2a8, y=0x78
	object_raw subtype=0x5e, x=0x258, y=0x78
	entity_list_end

Enemies_MtCrenel_GustJarShortcut:: @ 080FB2E0
	enemy_raw subtype=0x35, x=0x1b8, y=0xe8, paramA=0x1
	enemy_raw subtype=0x35, x=0x1c8, y=0xe8, paramA=0x1
	manager subtype=0x28, unknown=0x3, paramB=0x2
	enemy_raw subtype=0x21, x=0x38, y=0x1, paramB=0x112e0001
	enemy_raw subtype=0x21, x=0x88, y=0x1, paramA=0x2, paramB=0x112e0001
	enemy_raw subtype=0x26, x=0x48, y=0x78
	enemy_raw subtype=0x26, x=0xb8, y=0x88
	enemy_raw subtype=0x26, x=0x48, y=0xa8
	enemy_raw subtype=0x26, x=0x148, y=0x98
	enemy_raw subtype=0x26, x=0x1b8, y=0x68
	enemy_raw subtype=0x26, x=0x218, y=0x58
	enemy_raw subtype=0x26, x=0x2f8, y=0x68
	enemy_raw subtype=0x26, x=0x2c8, y=0xf8
	enemy_raw subtype=0x26, x=0x368, y=0xf8
	enemy_raw subtype=0x26, x=0x348, y=0xe8
	enemy_raw subtype=0x1, x=0x238, y=0x128, paramA=0x1, paramB=0xe260000, paramC=0xe00130
	enemy_raw subtype=0x1, x=0x158, y=0xf8, paramA=0x1, paramB=0xe260000, paramC=0xe00130
	enemy_raw subtype=0x1, x=0x1b8, y=0x98, paramA=0x1, paramB=0xe260000, paramC=0xe00130
	entity_list_end

TileEntities_MtCrenel_GustJarShortcut:: @ 080FB410
.ifdef EU_JP
	tile_entity type=0x5, paramB=0x300, paramC=0x146, paramD=0x603
	tile_entity type=0x5, paramB=0xc00, paramC=0x38f, paramD=0x60c
	tile_entity type=0x5, paramB=0xd00, paramC=0xdd, paramD=0x60d
	tile_entity type=0x4, paramA=0x42, paramB=0x1, paramC=0xa8, paramD=0x48
	tile_entity type=0x4, paramA=0x43, paramB=0x1, paramC=0x348, paramD=0x58
	tile_entity type=0x4, paramA=0x44, paramB=0x1, paramC=0x38, paramD=0x108
	tile_entity type=0xa, paramA=0x1, paramB=0x45, paramC=0x4c3, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x46, paramC=0xc3, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x47, paramC=0x103, paramD=0x1d
	tile_entity_list_end
.else
	tile_entity type=0x5, paramB=0x300, paramC=0x146, paramD=0x603
	tile_entity type=0x5, paramB=0xc00, paramC=0x38f, paramD=0x60c
	tile_entity type=0x5, paramB=0xd00, paramC=0xdd, paramD=0x60d
	tile_entity type=0x4, paramA=0x43, paramB=0x1, paramC=0xa8, paramD=0x48
	tile_entity type=0x4, paramA=0x44, paramB=0x1, paramC=0x348, paramD=0x58
	tile_entity type=0x4, paramA=0x45, paramB=0x1, paramC=0x38, paramD=0x108
	tile_entity type=0xa, paramA=0x1, paramB=0x46, paramC=0x4c3, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x47, paramC=0xc3, paramD=0x1d
	tile_entity type=0xa, paramA=0x1, paramB=0x48, paramC=0x103, paramD=0x1d
	tile_entity_list_end
.endif

Room_MtCrenel_GustJarShortcut:: @ 080FB460
	.4byte Entities_MtCrenel_GustJarShortcut_0
	.4byte 0x00000000
	.4byte Enemies_MtCrenel_GustJarShortcut
	.4byte TileEntities_MtCrenel_GustJarShortcut
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MtCrenel_GustJarShortcut
	.4byte sub_StateChange_MtCrenel_GustJarShortcut

Entities_MtCrenel_Entrance_0:: @ 080FB480
.ifdef EU_JP
	object_raw subtype=0x6b, x=0x118, y=0x28, paramB=0x4c
	object_raw subtype=0x6b, x=0x388, y=0x178, paramA=0x2, paramB=0x4d
	projectile_raw subtype=0x14, x=0x108, y=0xb8, unknown=0xf, paramC=0x510000
	projectile_raw subtype=0x14, x=0x118, y=0xb8, unknown=0xf, paramC=0x510000
	projectile_raw subtype=0x14, x=0x128, y=0xb8, unknown=0xf, paramC=0x510000
	projectile_raw subtype=0x14, x=0x108, y=0xc8, unknown=0xf, paramC=0x510000
	projectile_raw subtype=0x14, x=0x118, y=0xc8, unknown=0xf, paramC=0x510000
	projectile_raw subtype=0x14, x=0x128, y=0xc8, unknown=0xf, paramC=0x510000
	projectile_raw subtype=0x14, x=0x108, y=0xd8, unknown=0xf, paramC=0x510000
	projectile_raw subtype=0x14, x=0x118, y=0xd8, unknown=0xf, paramC=0x510000
	projectile_raw subtype=0x14, x=0x128, y=0xd8, unknown=0xf, paramC=0x510000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x510051
	projectile_raw subtype=0x14, x=0x158, y=0x58, unknown=0xf, paramC=0x520000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x520052
	object_raw subtype=0x5e, x=0x178, y=0x178
	object_raw subtype=0x5e, x=0x128, y=0x160
	object_raw subtype=0x0, x=0x318, y=0x164, collision=1, paramA=0x56, paramB=0x400, paramC=0x490000
	ezlo_hint x=0x2c, y=0x26, rx=0x4, ry=0x2, msg=0xb2a, flag=0x48
	ezlo_hint type=0x2, x=0x22, y=0x1a, rx=0x2, ry=0x2, msg=0xb23, flag=0xf8
	ezlo_hint type=0x2, x=0x5c, y=0x1c, rx=0x2, ry=0x2, msg=0xb23, flag=0xf8
	entity_list_end
.else
	object_raw subtype=0x6b, x=0x118, y=0x28, paramB=0x4e
	object_raw subtype=0x6b, x=0x388, y=0x178, paramA=0x2, paramB=0x4f
	projectile_raw subtype=0x14, x=0x108, y=0xb8, unknown=0xf, paramC=0x530000
	projectile_raw subtype=0x14, x=0x118, y=0xb8, unknown=0xf, paramC=0x530000
	projectile_raw subtype=0x14, x=0x128, y=0xb8, unknown=0xf, paramC=0x530000
	projectile_raw subtype=0x14, x=0x108, y=0xc8, unknown=0xf, paramC=0x530000
	projectile_raw subtype=0x14, x=0x118, y=0xc8, unknown=0xf, paramC=0x530000
	projectile_raw subtype=0x14, x=0x128, y=0xc8, unknown=0xf, paramC=0x530000
	projectile_raw subtype=0x14, x=0x108, y=0xd8, unknown=0xf, paramC=0x530000
	projectile_raw subtype=0x14, x=0x118, y=0xd8, unknown=0xf, paramC=0x530000
	projectile_raw subtype=0x14, x=0x128, y=0xd8, unknown=0xf, paramC=0x530000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x530053
	projectile_raw subtype=0x14, x=0x158, y=0x58, unknown=0xf, paramC=0x540000
	manager subtype=0x2e, unknown=0x0, paramB=0x3c00, paramC=0x540054
	object_raw subtype=0x5e, x=0x178, y=0x178
	object_raw subtype=0x5e, x=0x128, y=0x160
	object_raw subtype=0x0, x=0x318, y=0x164, collision=1, paramA=0x56, paramB=0x400, paramC=0x4b0000
	ezlo_hint x=0x2c, y=0x26, rx=0x4, ry=0x2, msg=0xb2a, flag=0x49
	ezlo_hint type=0x2, x=0x22, y=0x1a, rx=0x2, ry=0x2, msg=0xb23, flag=0x4a
	ezlo_hint type=0x2, x=0x5c, y=0x1c, rx=0x2, ry=0x2, msg=0xb23, flag=0x4a
	entity_list_end
.endif

Entities_MtCrenel_Entrance_1:: @ 080FB5D0
	manager subtype=0x6, paramA=0x8
	manager subtype=0x3, x=0x2f8, y=0xd8, unknown=0x0, paramA=0x1, paramB=0x102
	entity_list_end

Enemies_MtCrenel_Entrance:: @ 080FB600
	enemy_raw subtype=0x21, x=0x388, y=0x1, paramB=0xb7e0001, paramC=0x200
	enemy_raw subtype=0x21, x=0x308, y=0x1, paramA=0x2, paramB=0xb7e0001, paramC=0x200
	enemy_raw subtype=0x26, x=0x388, y=0x58, collision=1
	enemy_raw subtype=0x26, x=0x328, y=0x68, collision=1
	enemy_raw subtype=0x26, x=0x298, y=0x78, collision=1
	enemy_raw subtype=0x26, x=0x1f8, y=0xb8, collision=1
	enemy_raw subtype=0x26, x=0x1f8, y=0xc8, collision=1
	enemy_raw subtype=0x26, x=0x1f8, y=0x1a8, collision=1
	enemy_raw subtype=0x26, x=0x218, y=0x1a8, collision=1
	enemy_raw subtype=0x26, x=0x98, y=0x148, collision=1
	enemy_raw subtype=0x26, x=0x48, y=0x78, collision=1
	enemy_raw subtype=0x26, x=0x68, y=0xd8, collision=1
	enemy_raw subtype=0x1, x=0x1a8, y=0x148, paramA=0x1
	enemy_raw subtype=0x2d, x=0xc8, y=0x68, paramB=0x4040000, paramC=0x5000c0
	enemy_raw subtype=0x2d, x=0xd8, y=0x58, paramB=0x4040000, paramC=0x5000c0
	entity_list_end

TileEntities_MtCrenel_Entrance:: @ 080FB700
.ifdef EU_JP
	tile_entity type=0xc, paramA=0x2
	tile_entity type=0x5, paramB=0x400, paramC=0xf9, paramD=0x604
.ifdef DEMO_JP
	tile_entity type=0x5, paramB=0x2100, paramC=0x66f, paramD=0x621
.endif
	tile_entity type=0x4, paramA=0x4e, paramB=0x1, paramC=0x298, paramD=0x28
	tile_entity type=0x4, paramA=0x4f, paramB=0x1, paramC=0x138, paramD=0x138
	tile_entity type=0x4, paramA=0x50, paramB=0x1, paramC=0x2d8, paramD=0x188
	tile_entity type=0x4, paramA=0x53, paramB=0x1, paramC=0x3b8, paramD=0x168
	tile_entity type=0xa, paramA=0x1, paramB=0x4b, paramC=0x3b3, paramD=0x1d
	tile_entity_list_end
.else
	tile_entity type=0xc, paramA=0x2
	tile_entity type=0x5, paramB=0x400, paramC=0xf9, paramD=0x604
	tile_entity type=0x5, paramB=0x2100, paramC=0x66f, paramD=0x621
	tile_entity type=0x4, paramA=0x50, paramB=0x1, paramC=0x298, paramD=0x28
	tile_entity type=0x4, paramA=0x51, paramB=0x1, paramC=0x138, paramD=0x138
	tile_entity type=0x4, paramA=0x52, paramB=0x1, paramC=0x2d8, paramD=0x188
	tile_entity type=0x4, paramA=0x55, paramB=0x1, paramC=0x3b8, paramD=0x168
	tile_entity type=0xa, paramA=0x1, paramB=0x4d, paramC=0x3b3, paramD=0x1d
	tile_entity_list_end
.endif

gUnk_additional_8_MtCrenel_Entrance:: @ 080FB748
	exit_region_raw centerX=0xd2, centerY=0x5c, halfWidth=0x3, halfHeight=0x2, exitIndex=0x9, bitfield=0x1
	exit_region_raw centerX=0x372, centerY=0xec, halfWidth=0x3, halfHeight=0x2, exitIndex=0xa, bitfield=0x1
	exit_region_raw centerX=0x158, centerY=0x58, halfWidth=0x3, halfHeight=0x3, exitIndex=0xb, bitfield=0x1
	exit_region_list_end

gUnk_additional_9_MtCrenel_Entrance:: @ 080FB768
	exit_raw transition=0x1, destX=0x80, destY=0x318, destArea=0x12, unknownA=0x1

gUnk_additional_a_MtCrenel_Entrance:: @ 080FB77C
	exit_raw transition=0x1, destX=0x80, destY=0x318, destArea=0x12, destRoom=0x1, unknownA=0x1

gUnk_additional_b_MtCrenel_Entrance:: @ 080FB790
	exit_raw transition=0x1, destX=0x98, destY=0x30, destArea=0x27, destRoom=0x3, unknownA=0x1, unknownB=0x2, unknownC=0x4

Room_MtCrenel_Entrance:: @ 080FB7A4
	.4byte Entities_MtCrenel_Entrance_0
	.4byte Entities_MtCrenel_Entrance_1
	.4byte Enemies_MtCrenel_Entrance
	.4byte TileEntities_MtCrenel_Entrance
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_MtCrenel_Entrance
	.4byte sub_StateChange_MtCrenel_Entrance
	.4byte gUnk_additional_8_MtCrenel_Entrance
	.4byte gUnk_additional_9_MtCrenel_Entrance
	.4byte gUnk_additional_a_MtCrenel_Entrance
	.4byte gUnk_additional_b_MtCrenel_Entrance

Entities_CrenelCaves_BlockPushing_0:: @ 080FB7D4
	object_raw subtype=0x32, x=0x218, y=0x118
	object_raw subtype=0x32, x=0x248, y=0x178
	object_raw subtype=0x5, x=0x248, y=0x128, collision=1
	object_raw subtype=0x5, x=0x258, y=0x128, collision=1
	object_raw subtype=0x5, x=0x208, y=0x168, collision=1
	object_raw subtype=0x5, x=0x218, y=0x168, collision=1
	entity_list_end

Entities_CrenelCaves_BlockPushing_1:: @ 080FB844
	object_raw subtype=0x41, x=0x1a8, y=0x18
	entity_list_end

Enemies_CrenelCaves_BlockPushing:: @ 080FB864
	enemy_raw subtype=0x20, x=0x198, y=0xf8, paramB=0x200e0000, paramC=0x200150
	enemy_raw subtype=0x20, x=0x178, y=0xf8, paramB=0x200e0000, paramC=0x200150
	enemy_raw subtype=0x20, x=0x228, y=0xd8, paramB=0xe0c0000, paramC=0xc00200
	enemy_raw subtype=0x20, x=0x238, y=0x1a8, paramB=0xc0c0000, paramC=0x1600200
	entity_list_end

TileEntities_CrenelCaves_BlockPushing:: @ 080FB8B4
	tile_entity_list_end

Room_CrenelCaves_BlockPushing:: @ 080FB8BC
	.4byte Entities_CrenelCaves_BlockPushing_0
	.4byte Entities_CrenelCaves_BlockPushing_1
	.4byte Enemies_CrenelCaves_BlockPushing
	.4byte TileEntities_CrenelCaves_BlockPushing
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_BlockPushing
	.4byte sub_StateChange_CrenelCaves_BlockPushing

Entities_CrenelCaves_PillarCave_0:: @ 080FB8DC
	manager subtype=0x20, x=0xb8, y=0x48, paramB=0x10482e00, paramC=0x3b1058
	object_raw subtype=0x27, x=0x48, y=0x48
	entity_list_end

Entities_CrenelCaves_PillarCave_1:: @ 080FB90C
	entity_list_end

Enemies_CrenelCaves_PillarCave:: @ 080FB91C
	entity_list_end

TileEntities_CrenelCaves_PillarCave:: @ 080FB92C
	tile_entity_list_end

Room_CrenelCaves_PillarCave:: @ 080FB934
	.4byte Entities_CrenelCaves_PillarCave_0
	.4byte Entities_CrenelCaves_PillarCave_1
	.4byte Enemies_CrenelCaves_PillarCave
	.4byte TileEntities_CrenelCaves_PillarCave
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_PillarCave
	.4byte sub_StateChange_CrenelCaves_PillarCave

Entities_CrenelCaves_BridgeSwitch_0:: @ 080FB954
	object_raw subtype=0x5, x=0xa8, y=0x38, collision=1, paramA=0x5d
	object_raw subtype=0x5, x=0xb8, y=0x38, collision=1
	object_raw subtype=0x5, x=0xc8, y=0x38, collision=1, paramA=0x5d
	object_raw subtype=0x5, x=0x28, y=0x128, collision=1
	object_raw subtype=0x5, x=0x38, y=0x128, collision=1, paramA=0x56
	object_raw subtype=0x9d, x=0xb8, y=0x118, paramA=0x1, paramC=0x8000003c
	manager subtype=0x11, paramC=0x8000003c
	manager subtype=0x5, x=0xb, y=0xd, paramB=0x86, paramC=0x3c0001
	entity_list_end

Entities_CrenelCaves_BridgeSwitch_1:: @ 080FB9E4
	entity_list_end

Enemies_CrenelCaves_BridgeSwitch:: @ 080FB9F4
	enemy_raw subtype=0x1, x=0x38, y=0x68, paramA=0x1, paramB=0x10160000, paramC=0x300020
	enemy_raw subtype=0x1, x=0x78, y=0x78, paramA=0x1, paramB=0x10160000, paramC=0x300020
	enemy_raw subtype=0x1, x=0xb8, y=0xa8, paramA=0x1, paramB=0x10160000, paramC=0x300020
	enemy_raw subtype=0x1, x=0x30, y=0x140, paramA=0x1, paramB=0x14160000, paramC=0x1300020
	enemy_raw subtype=0x1, x=0x78, y=0x158, paramA=0x1, paramB=0x14160000, paramC=0x1300020
	enemy_raw subtype=0x1, x=0x48, y=0x198, paramA=0x1, paramB=0x14160000, paramC=0x1300020
	entity_list_end

TileEntities_CrenelCaves_BridgeSwitch:: @ 080FBA64
	tile_entity_list_end

Room_CrenelCaves_BridgeSwitch:: @ 080FBA6C
	.4byte Entities_CrenelCaves_BridgeSwitch_0
	.4byte Entities_CrenelCaves_BridgeSwitch_1
	.4byte Enemies_CrenelCaves_BridgeSwitch
	.4byte TileEntities_CrenelCaves_BridgeSwitch
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_BridgeSwitch
	.4byte sub_StateChange_CrenelCaves_BridgeSwitch

Entities_CrenelCaves_ExitToMines_0:: @ 080FBA8C
	entity_list_end

Entities_CrenelCaves_ExitToMines_1:: @ 080FBA9C
	entity_list_end

Enemies_CrenelCaves_ExitToMines:: @ 080FBAAC
	enemy_raw subtype=0x1, x=0x98, y=0x68, paramA=0x1, paramB=0x80c0000, paramC=0x500070
	enemy_raw subtype=0x1, x=0x38, y=0x58, paramA=0x1, paramB=0xc100000, paramC=0x400020
	entity_list_end

TileEntities_CrenelCaves_ExitToMines:: @ 080FBADC
	tile_entity type=0x2, paramA=0x3d, paramB=0x725c, paramC=0x103
	tile_entity_list_end

Room_CrenelCaves_ExitToMines:: @ 080FBAEC
	.4byte Entities_CrenelCaves_ExitToMines_0
	.4byte Entities_CrenelCaves_ExitToMines_1
	.4byte Enemies_CrenelCaves_ExitToMines
	.4byte TileEntities_CrenelCaves_ExitToMines
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_ExitToMines
	.4byte sub_StateChange_CrenelCaves_ExitToMines

Entities_CrenelCaves_GripRing_0:: @ 080FBB0C
	entity_list_end

Entities_CrenelCaves_GripRing_1:: @ 080FBB1C
	entity_list_end

Enemies_CrenelCaves_GripRing:: @ 080FBB2C
	enemy_raw subtype=0x16, x=0x78, y=0x28, paramA=0x3, paramC=0x6d0000
	entity_list_end

TileEntities_CrenelCaves_GripRing:: @ 080FBB4C
	tile_entity_list_end

Room_CrenelCaves_GripRing:: @ 080FBB54
	.4byte Entities_CrenelCaves_GripRing_0
	.4byte Entities_CrenelCaves_GripRing_1
	.4byte Enemies_CrenelCaves_GripRing
	.4byte TileEntities_CrenelCaves_GripRing
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_GripRing
	.4byte sub_StateChange_CrenelCaves_GripRing

Entities_CrenelCaves_FairyFountain_0:: @ 080FBB74
	object_raw subtype=0x0, x=0x78, y=0x44, collision=1, paramA=0x63, paramB=0x400, paramC=0x7d0000
	entity_list_end

Entities_CrenelCaves_FairyFountain_1:: @ 080FBB94
	entity_list_end

Enemies_CrenelCaves_FairyFountain:: @ 080FBBA4
	object_raw subtype=0x40, x=0x78, y=0x28, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x68, y=0x48, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x98, y=0x58, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x78, y=0x58, paramA=0x60, paramB=0x1
	entity_list_end

TileEntities_CrenelCaves_FairyFountain:: @ 080FBBF4
	tile_entity type=0x7, paramB=0x3a00
	tile_entity_list_end

Room_CrenelCaves_FairyFountain:: @ 080FBC04
	.4byte Entities_CrenelCaves_FairyFountain_0
	.4byte Entities_CrenelCaves_FairyFountain_1
	.4byte Enemies_CrenelCaves_FairyFountain
	.4byte TileEntities_CrenelCaves_FairyFountain
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_FairyFountain
	.4byte sub_StateChange_CrenelCaves_FairyFountain

Entities_CrenelCaves_SpinyChuPuzzle_0:: @ 080FBC24
	object_raw subtype=0x5, x=0xc8, y=0x88, collision=1
	object_raw subtype=0x5, x=0xc8, y=0x98, collision=1, paramA=0x5d
	entity_list_end

Entities_CrenelCaves_SpinyChuPuzzle_1:: @ 080FBC54
	entity_list_end

Enemies_CrenelCaves_SpinyChuPuzzle:: @ 080FBC64
	enemy_raw subtype=0x1, x=0x98, y=0x98, paramA=0x1
	enemy_raw subtype=0xb, x=0xb8, y=0x88
	enemy_raw subtype=0xb, x=0x38, y=0x58
	entity_list_end

TileEntities_CrenelCaves_SpinyChuPuzzle:: @ 080FBCA4
	tile_entity type=0xa, paramA=0x1, paramB=0x3e, paramC=0x107, paramD=0x1d
	tile_entity_list_end

Room_CrenelCaves_SpinyChuPuzzle:: @ 080FBCB4
	.4byte Entities_CrenelCaves_SpinyChuPuzzle_0
	.4byte Entities_CrenelCaves_SpinyChuPuzzle_1
	.4byte Enemies_CrenelCaves_SpinyChuPuzzle
	.4byte TileEntities_CrenelCaves_SpinyChuPuzzle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_SpinyChuPuzzle
	.4byte sub_StateChange_CrenelCaves_SpinyChuPuzzle

Entities_CrenelCaves_ChuchuPotChest_0:: @ 080FBCD4
	object_raw subtype=0x5, x=0x58, y=0x48, collision=1
	object_raw subtype=0x5, x=0x68, y=0x48, collision=1
	object_raw subtype=0x5, x=0x98, y=0x48, collision=1
	object_raw subtype=0x5, x=0x48, y=0x58, collision=1
	object_raw subtype=0x5, x=0xa8, y=0x58, collision=1
	object_raw subtype=0x5, x=0x58, y=0x78, collision=1
	object_raw subtype=0x5, x=0x68, y=0x78, collision=1
	object_raw subtype=0x5, x=0x88, y=0x78, collision=1
	object_raw subtype=0x5, x=0x98, y=0x78, collision=1
	entity_list_end

Entities_CrenelCaves_ChuchuPotChest_1:: @ 080FBD74
	entity_list_end

Enemies_CrenelCaves_ChuchuPotChest:: @ 080FBD84
	enemy_raw subtype=0x1, x=0x78, y=0x50, paramA=0x1
	enemy_raw subtype=0x1, x=0x98, y=0x60, paramA=0x1
	entity_list_end

TileEntities_CrenelCaves_ChuchuPotChest:: @ 080FBDB4
	tile_entity type=0x2, paramA=0x3f, paramB=0x715c, paramC=0x107
	tile_entity_list_end

Room_CrenelCaves_ChuchuPotChest:: @ 080FBDC4
	.4byte Entities_CrenelCaves_ChuchuPotChest_0
	.4byte Entities_CrenelCaves_ChuchuPotChest_1
	.4byte Enemies_CrenelCaves_ChuchuPotChest
	.4byte TileEntities_CrenelCaves_ChuchuPotChest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_ChuchuPotChest
	.4byte sub_StateChange_CrenelCaves_ChuchuPotChest

Entities_CrenelCaves_WaterHeartPiece_0:: @ 080FBDE4
	object_raw subtype=0x0, x=0x78, y=0x44, collision=1, paramA=0x63, paramB=0x400, paramC=0x400000
	entity_list_end

Entities_CrenelCaves_WaterHeartPiece_1:: @ 080FBE04
	entity_list_end

Enemies_CrenelCaves_WaterHeartPiece:: @ 080FBE14
	enemy_raw subtype=0x8, x=0x38, y=0x28, paramB=0x141e0000
	enemy_raw subtype=0x8, x=0xc0, y=0x40, paramB=0x141e0000
	entity_list_end

TileEntities_CrenelCaves_WaterHeartPiece:: @ 080FBE44
	tile_entity type=0x2, paramA=0x41, paramB=0x725c, paramC=0x202
	tile_entity type=0x2, paramA=0x42, paramB=0x57, paramC=0x20c
	tile_entity_list_end

Room_CrenelCaves_WaterHeartPiece:: @ 080FBE5C
	.4byte Entities_CrenelCaves_WaterHeartPiece_0
	.4byte Entities_CrenelCaves_WaterHeartPiece_1
	.4byte Enemies_CrenelCaves_WaterHeartPiece
	.4byte TileEntities_CrenelCaves_WaterHeartPiece
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_WaterHeartPiece
	.4byte sub_StateChange_CrenelCaves_WaterHeartPiece

Entities_CrenelCaves_RupeeFairyFountain_0:: @ 080FBE7C
	object_raw subtype=0x40, x=0x58, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x88, y=0x38, paramA=0x60, paramB=0x1
	object_raw subtype=0x40, x=0x78, y=0x48, paramA=0x60, paramB=0x1
	object_raw subtype=0x0, x=0x58, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x430000
	object_raw subtype=0x0, x=0x78, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x440000
	object_raw subtype=0x0, x=0x98, y=0x38, collision=1, paramA=0x55, paramB=0x400, paramC=0x450000
	entity_list_end

Entities_CrenelCaves_RupeeFairyFountain_1:: @ 080FBEEC
	entity_list_end

Enemies_CrenelCaves_RupeeFairyFountain:: @ 080FBEFC
	entity_list_end

TileEntities_CrenelCaves_RupeeFairyFountain:: @ 080FBF0C
	tile_entity type=0x7, paramB=0x3a00
	tile_entity_list_end

Room_CrenelCaves_RupeeFairyFountain:: @ 080FBF1C
	.4byte Entities_CrenelCaves_RupeeFairyFountain_0
	.4byte Entities_CrenelCaves_RupeeFairyFountain_1
	.4byte Enemies_CrenelCaves_RupeeFairyFountain
	.4byte TileEntities_CrenelCaves_RupeeFairyFountain
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_RupeeFairyFountain
	.4byte sub_StateChange_CrenelCaves_RupeeFairyFountain

Entities_CrenelCaves_HelmasaurHallway_0:: @ 080FBF3C
	object_raw subtype=0x5, x=0x28, y=0x48, collision=1
	object_raw subtype=0x5, x=0x28, y=0x58, collision=1
	object_raw subtype=0x5, x=0xc8, y=0x68, collision=1
	object_raw subtype=0x5, x=0xd8, y=0x68, collision=1
	object_raw subtype=0x5, x=0xe8, y=0x68, collision=1
	object_raw subtype=0x5, x=0x178, y=0x38, collision=1
	object_raw subtype=0x5, x=0x188, y=0x38, collision=1
	object_raw subtype=0x5, x=0x198, y=0x38, collision=1
	object_raw subtype=0x5, x=0x208, y=0x48, collision=1
	object_raw subtype=0x5, x=0x208, y=0x58, collision=1
	ezlo_hint x=0x8, y=0x8, rx=0x8, ry=0x5, msg=0xb26, flag=0x86
	entity_list_end

Entities_CrenelCaves_HelmasaurHallway_1:: @ 080FBFFC
	entity_list_end

Enemies_CrenelCaves_HelmasaurHallway:: @ 080FC00C
	enemy_raw subtype=0x20, x=0x38, y=0x48, paramB=0x83e0000, paramC=0x300020
	enemy_raw subtype=0x20, x=0x1c8, y=0x58, paramB=0x83e0000, paramC=0x300020
	enemy_raw subtype=0x20, x=0x98, y=0x78, paramB=0x43c0000, paramC=0x600040
	enemy_raw subtype=0x20, x=0x158, y=0x28, paramB=0x4380000, paramC=0x200130
	entity_list_end

TileEntities_CrenelCaves_HelmasaurHallway:: @ 080FC05C
	tile_entity_list_end

Room_CrenelCaves_HelmasaurHallway:: @ 080FC064
	.4byte Entities_CrenelCaves_HelmasaurHallway_0
	.4byte Entities_CrenelCaves_HelmasaurHallway_1
	.4byte Enemies_CrenelCaves_HelmasaurHallway
	.4byte TileEntities_CrenelCaves_HelmasaurHallway
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_HelmasaurHallway
	.4byte sub_StateChange_CrenelCaves_HelmasaurHallway

Entities_CrenelCaves_MushroomKeese_0:: @ 080FC084
	object_raw subtype=0x32, x=0x48, y=0xf8
	object_raw subtype=0x32, x=0x58, y=0x98
	entity_list_end

Entities_CrenelCaves_MushroomKeese_1:: @ 080FC0B4
	entity_list_end

Enemies_CrenelCaves_MushroomKeese:: @ 080FC0C4
	enemy_raw subtype=0x8, x=0x68, y=0x128, paramB=0xe010000, paramC=0xf00000
	enemy_raw subtype=0x8, x=0x28, y=0xf8, paramB=0xe010000, paramC=0xf00000
	enemy_raw subtype=0x8, x=0x88, y=0x58, paramB=0xc010000, paramC=0x400000
	enemy_raw subtype=0x8, x=0xa8, y=0x88, paramB=0xc010000, paramC=0x400000
	enemy_raw subtype=0x1, x=0x38, y=0x88, paramA=0x1, paramB=0xc010000, paramC=0x400000
	entity_list_end

TileEntities_CrenelCaves_MushroomKeese:: @ 080FC124
	tile_entity_list_end

Room_CrenelCaves_MushroomKeese:: @ 080FC12C
	.4byte Entities_CrenelCaves_MushroomKeese_0
	.4byte Entities_CrenelCaves_MushroomKeese_1
	.4byte Enemies_CrenelCaves_MushroomKeese
	.4byte TileEntities_CrenelCaves_MushroomKeese
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_MushroomKeese
	.4byte sub_StateChange_CrenelCaves_MushroomKeese

Entities_CrenelCaves_LadderToSpringWater_0:: @ 080FC14C
	entity_list_end

Entities_CrenelCaves_LadderToSpringWater_1:: @ 080FC15C
	object_raw subtype=0x41, x=0x78, y=0x18
	entity_list_end

Enemies_CrenelCaves_LadderToSpringWater:: @ 080FC17C
	enemy_raw subtype=0x1, x=0x88, y=0x58, paramA=0x1
	enemy_raw subtype=0x1, x=0x68, y=0x48, paramA=0x1
	enemy_raw subtype=0x1, x=0x98, y=0x48, paramA=0x1
	entity_list_end

TileEntities_CrenelCaves_LadderToSpringWater:: @ 080FC1BC
	tile_entity_list_end

Room_CrenelCaves_LadderToSpringWater:: @ 080FC1C4
	.4byte Entities_CrenelCaves_LadderToSpringWater_0
	.4byte Entities_CrenelCaves_LadderToSpringWater_1
	.4byte Enemies_CrenelCaves_LadderToSpringWater
	.4byte TileEntities_CrenelCaves_LadderToSpringWater
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_LadderToSpringWater
	.4byte sub_StateChange_CrenelCaves_LadderToSpringWater

Entities_CrenelCaves_BombBusinessScrub_0:: @ 080FC1E4
	entity_list_end

Entities_CrenelCaves_BombBusinessScrub_1:: @ 080FC1F4
	entity_list_end

Enemies_CrenelCaves_BombBusinessScrub:: @ 080FC204
	enemy_raw subtype=0x16, x=0x78, y=0x28, paramA=0x2, paramC=0x6e0000
	entity_list_end

TileEntities_CrenelCaves_BombBusinessScrub:: @ 080FC224
	tile_entity type=0xb, paramA=0x11
	tile_entity_list_end

Room_CrenelCaves_BombBusinessScrub:: @ 080FC234
	.4byte Entities_CrenelCaves_BombBusinessScrub_0
	.4byte Entities_CrenelCaves_BombBusinessScrub_1
	.4byte Enemies_CrenelCaves_BombBusinessScrub
	.4byte TileEntities_CrenelCaves_BombBusinessScrub
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_BombBusinessScrub
	.4byte sub_StateChange_CrenelCaves_BombBusinessScrub

Entities_CrenelCaves_Hermit_0:: @ 080FC254
	npc_raw subtype=0x6, x=0x78, y=0x38, paramA=0xf, paramB=0x400, script=script_CrenelHermit
	entity_list_end

Entities_CrenelCaves_Hermit_1:: @ 080FC274
	entity_list_end

Enemies_CrenelCaves_Hermit:: @ 080FC284
	entity_list_end

TileEntities_CrenelCaves_Hermit:: @ 080FC294
	tile_entity type=0x7, paramB=0x1400
	tile_entity_list_end

Room_CrenelCaves_Hermit:: @ 080FC2A4
	.4byte Entities_CrenelCaves_Hermit_0
	.4byte Entities_CrenelCaves_Hermit_1
	.4byte Enemies_CrenelCaves_Hermit
	.4byte TileEntities_CrenelCaves_Hermit
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_Hermit
	.4byte sub_StateChange_CrenelCaves_Hermit

Entities_CrenelCaves_HintScrub_0:: @ 080FC2C4
	entity_list_end

Entities_CrenelCaves_HintScrub_1:: @ 080FC2D4
	entity_list_end

Enemies_CrenelCaves_HintScrub:: @ 080FC2E4
	enemy_raw subtype=0x16, x=0x78, y=0x28, paramA=0x6, paramC=0x6f0000
	entity_list_end

TileEntities_CrenelCaves_HintScrub:: @ 080FC304
	tile_entity_list_end

Room_CrenelCaves_HintScrub:: @ 080FC30C
	.4byte Entities_CrenelCaves_HintScrub_0
	.4byte Entities_CrenelCaves_HintScrub_1
	.4byte Enemies_CrenelCaves_HintScrub
	.4byte TileEntities_CrenelCaves_HintScrub
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_HintScrub
	.4byte sub_StateChange_CrenelCaves_HintScrub

Entities_CrenelCaves_ToGrayblade_0:: @ 080FC32C
	object_raw subtype=0x3, x=0x58, y=0x38, paramA=0x1, paramC=0x80000001
	object_raw subtype=0x3, x=0x98, y=0x38, paramA=0x1, paramC=0x80010001
	manager subtype=0x11, paramC=0x84000047
	object_raw subtype=0x8, x=0x78, y=0x18, paramC=0x47ffff
	entity_list_end

Entities_CrenelCaves_ToGrayblade_1:: @ 080FC37C
	entity_list_end

Enemies_CrenelCaves_ToGrayblade:: @ 080FC38C
	entity_list_end

TileEntities_CrenelCaves_ToGrayblade:: @ 080FC39C
	tile_entity_list_end

Room_CrenelCaves_ToGrayblade:: @ 080FC3A4
	.4byte Entities_CrenelCaves_ToGrayblade_0
	.4byte Entities_CrenelCaves_ToGrayblade_1
	.4byte Enemies_CrenelCaves_ToGrayblade
	.4byte TileEntities_CrenelCaves_ToGrayblade
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_unk3_CrenelCaves_ToGrayblade
	.4byte sub_StateChange_CrenelCaves_ToGrayblade
