	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gExitList_NoExitList:: @ 08133FC8
	.include "exit_lists/gExitList_NoExitList.s"

gExitLists_NoExit:: @ 08133FDC
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_MinishWoods_Main:: @ 081340DC
	.include "exit_lists/gExitList_MinishWoods_Main.s"

gExitLists_MinishWoods:: @ 08134208
	.4byte gExitList_MinishWoods_Main

gExitList_LakeHylia_Main:: @ 0813420C
	.include "exit_lists/gExitList_LakeHylia_Main.s"

gExitList_LakeHylia_Beanstalk:: @ 081342E8
	.include "exit_lists/gExitList_LakeHylia_Beanstalk.s"

gExitLists_LakeHylia:: @ 08134338
	.4byte gExitList_LakeHylia_Main
	.4byte gExitList_LakeHylia_Beanstalk

gExitList_CastorWilds_Main:: @ 08134340
	.include "exit_lists/gExitList_CastorWilds_Main.s"

gExitLists_CastorWilds:: @ 08134408
	.4byte gExitList_CastorWilds_Main

gExitList_Ruins_Entrance:: @ 0813440C
	.include "exit_lists/gExitList_Ruins_Entrance.s"

gExitList_Ruins_Beanstalk:: @ 08134448
	.include "exit_lists/gExitList_Ruins_Beanstalk.s"

gExitList_Ruins_LadderToTektites:: @ 0813445C
	.include "exit_lists/gExitList_Ruins_LadderToTektites.s"

gExitList_Ruins_FortressEntrance:: @ 08134484
	.include "exit_lists/gExitList_Ruins_FortressEntrance.s"

gExitLists_Ruins:: @ 081344AC
	.4byte gExitList_Ruins_Entrance
	.4byte gExitList_Ruins_Beanstalk
	.4byte gExitList_NoExitList
	.4byte gExitList_Ruins_LadderToTektites
	.4byte gExitList_Ruins_FortressEntrance
	.4byte gExitList_NoExitList

gExitList_HyruleTown_0:: @ 081344C4
	.include "exit_lists/gExitList_HyruleTown_0.s"

gExitLists_HyruleTown:: @ 08134794
	.4byte gExitList_HyruleTown_0

gExitList_HyruleTown_1:: @ 08134798
	.include "exit_lists/gExitList_HyruleTown_1.s"

gExitLists_FestivalTown:: @ 081347C0
	.4byte gExitList_HyruleTown_1

gExitList_MtCrenel_MountainTop:: @ 081347C4
	.include "exit_lists/gExitList_MtCrenel_MountainTop.s"

gExitList_MtCrenel_WallClimb:: @ 08134800
	.include "exit_lists/gExitList_MtCrenel_WallClimb.s"

gExitList_MtCrenel_CaveOfFlamesEntrance:: @ 08134850
	.include "exit_lists/gExitList_MtCrenel_CaveOfFlamesEntrance.s"

gExitList_MtCrenel_GustJarShortcut:: @ 08134904
	.include "exit_lists/gExitList_MtCrenel_GustJarShortcut.s"

gExitList_MtCrenel_Entrance:: @ 08134968
	.include "exit_lists/gExitList_MtCrenel_Entrance.s"

gExitLists_MtCrenel:: @ 08134A30
	.4byte gExitList_MtCrenel_MountainTop
	.4byte gExitList_MtCrenel_WallClimb
	.4byte gExitList_MtCrenel_CaveOfFlamesEntrance
	.4byte gExitList_MtCrenel_GustJarShortcut
	.4byte gExitList_MtCrenel_Entrance

gExitList_HyruleField_WesternWoodSouth:: @ 08134A44
	.include "exit_lists/gExitList_HyruleField_WesternWoodSouth.s"

gExitList_HyruleField_LinksHouseExterior:: @ 08134A6C
	.include "exit_lists/gExitList_HyruleField_LinksHouseExterior.s"

gExitList_HyruleField_FromMinishWoods:: @ 08134B0C
	.include "exit_lists/gExitList_HyruleField_FromMinishWoods.s"

gExitList_HyruleField_FromMinishWoodsNorth:: @ 08134B48
	.include "exit_lists/gExitList_HyruleField_FromMinishWoodsNorth.s"

gExitList_HyruleField_Farmers:: @ 08134B70
	.include "exit_lists/gExitList_HyruleField_Farmers.s"

gExitList_HyruleField_LonLonRanch:: @ 08134BAC
	.include "exit_lists/gExitList_HyruleField_LonLonRanch.s"

gExitList_HyruleField_OutsideCastle:: @ 08134C88
	.include "exit_lists/gExitList_HyruleField_OutsideCastle.s"

gExitList_HyruleField_OutsideCastleWest:: @ 08134DC8
	.include "exit_lists/gExitList_HyruleField_OutsideCastleWest.s"

gExitList_HyruleField_TrilbyHighlands:: @ 08134EA4
	.include "exit_lists/gExitList_HyruleField_TrilbyHighlands.s"

gExitList_HyruleField_PercysHouse:: @ 08134EE0
	.include "exit_lists/gExitList_HyruleField_PercysHouse.s"

gExitLists_HyruleField:: @ 08134F08
	.4byte gExitList_HyruleField_WesternWoodSouth
	.4byte gExitList_HyruleField_LinksHouseExterior
	.4byte gExitList_HyruleField_FromMinishWoods
	.4byte gExitList_HyruleField_FromMinishWoodsNorth
	.4byte gExitList_HyruleField_Farmers
	.4byte gExitList_HyruleField_LonLonRanch
	.4byte gExitList_HyruleField_OutsideCastle
	.4byte gExitList_HyruleField_OutsideCastleWest
	.4byte gExitList_HyruleField_TrilbyHighlands
	.4byte gExitList_HyruleField_PercysHouse

gExitList_CastleGarden_Main:: @ 08134F30
	.include "exit_lists/gExitList_CastleGarden_Main.s"

gUnk_08134FBC:: @ 08134FBC
	.incbin "data_08132B30/gUnk_08134FBC.bin"

gUnk_08135048:: @ 08135048
	.incbin "data_08132B30/gUnk_08135048.bin"

gExitLists_CastleGarden:: @ 08135070
	.4byte gExitList_CastleGarden_Main

gExitList_CloudTops_House:: @ 08135074
	.include "exit_lists/gExitList_CloudTops_House.s"

gExitLists_CloudTops:: @ 0813509C
	.4byte gExitList_CloudTops_House

gExitList_RoyalValley_Main:: @ 081350A0
.include "exit_lists/gExitList_RoyalValley_Main.s"

gExitList_RoyalValley_ForestMaze:: @ 08135168
	.include "exit_lists/gExitList_RoyalValley_ForestMaze.s"

gUnk_08135190:: @ 08135190
	.incbin "data_08132B30/gUnk_08135190.bin"

gExitLists_RoyalValley:: @ 081351CC
	.4byte gExitList_RoyalValley_Main
	.4byte gExitList_RoyalValley_ForestMaze

gExitList_VeilFalls_Main:: @ 081351D4
	.include "exit_lists/gExitList_VeilFalls_Main.s"

gExitLists_VeilFalls:: @ 081352D8
	.4byte gExitList_VeilFalls_Main

gExitList_Beanstalks_MountCrenel:: @ 081352DC
	.include "exit_lists/gExitList_Beanstalks_MountCrenel.s"

gExitList_Beanstalks_LakeHylia:: @ 08135304
	.include "exit_lists/gExitList_Beanstalks_LakeHylia.s"

gExitList_Beanstalks_Ruins:: @ 0813532C
	.include "exit_lists/gExitList_Beanstalks_Ruins.s"

gExitList_Beanstalks_EasternHills:: @ 08135354
	.include "exit_lists/gExitList_Beanstalks_EasternHills.s"

gExitList_Beanstalks_WesternWoods:: @ 0813537C
	.include "exit_lists/gExitList_Beanstalks_WesternWoods.s"

gExitList_Beanstalks_MountCrenelClimb:: @ 081353A4
	.include "exit_lists/gExitList_Beanstalks_MountCrenelClimb.s"

gExitList_Beanstalks_LakeHyliaClimb:: @ 081353E0
	.include "exit_lists/gExitList_Beanstalks_LakeHyliaClimb.s"

gExitList_Beanstalks_RuinsClimb:: @ 0813541C
	.include "exit_lists/gExitList_Beanstalks_RuinsClimb.s"

gExitList_Beanstalks_EasternHillsClimb:: @ 08135458
	.include "exit_lists/gExitList_Beanstalks_EasternHillsClimb.s"

gExitList_Beanstalks_WesternWoodsClimb:: @ 08135494
	.include "exit_lists/gExitList_Beanstalks_WesternWoodsClimb.s"

gExitLists_Beanstalks:: @ 081354D0
	.4byte gExitList_Beanstalks_MountCrenel
	.4byte gExitList_Beanstalks_LakeHylia
	.4byte gExitList_Beanstalks_Ruins
	.4byte gExitList_Beanstalks_EasternHills
	.4byte gExitList_Beanstalks_WesternWoods
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_Beanstalks_MountCrenelClimb
	.4byte gExitList_Beanstalks_LakeHyliaClimb
	.4byte gExitList_Beanstalks_RuinsClimb
	.4byte gExitList_Beanstalks_EasternHillsClimb
	.4byte gExitList_Beanstalks_WesternWoodsClimb

gExitList_LakeWoodsCave_Main:: @ 08135524
	.include "exit_lists/gExitList_LakeWoodsCave_Main.s"

gExitLists_LakeWoodsCave:: @ 0813554C
	.4byte gExitList_LakeWoodsCave_Main

gExitList_HyruleDigCaves_Main:: @ 08135550
	.include "exit_lists/gExitList_HyruleDigCaves_Main.s"

gExitLists_HyruleDigCaves:: @ 08135578
	.4byte gExitList_HyruleDigCaves_Main

gExitList_MinishVillage_Main:: @ 0813557C
	.include "exit_lists/gExitList_MinishVillage_Main.s"

gExitList_MinishVillage_SideHouse:: @ 08135694
	.include "exit_lists/gExitList_MinishVillage_SideHouse.s"

gExitLists_MinishVillage:: @ 081356BC
	.4byte gExitList_MinishVillage_Main
	.4byte gExitList_MinishVillage_SideHouse
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_MelarisMine_Main:: @ 081356CC
	.include "exit_lists/gExitList_MelarisMine_Main.s"

gExitLists_MelarisMine:: @ 08135744
	.4byte gExitList_MelarisMine_Main

gExitList_MinishPaths1_ToMinishVillage:: @ 08135748
	.include "exit_lists/gExitList_MinishPaths1_ToMinishVillage.s"

gExitList_MinishPaths1_CastorWilds:: @ 08135784
	.include "exit_lists/gExitList_MinishPaths1_CastorWilds.s"

gExitList_MinishPaths1_HyruleTown:: @ 081357C0
	.include "exit_lists/gExitList_MinishPaths1_HyruleTown.s"

gExitList_MinishPaths1_LonLonRanch:: @ 081357E8
	.include "exit_lists/gExitList_MinishPaths1_LonLonRanch.s"

gExitList_MinishPaths1_MayorsCabin:: @ 08135810
	.include "exit_lists/gExitList_MinishPaths1_MayorsCabin.s"

gExitLists_MinishPaths1:: @ 0813584C
	.4byte gExitList_MinishPaths1_ToMinishVillage
	.4byte gExitList_MinishPaths1_CastorWilds
	.4byte gExitList_MinishPaths1_HyruleTown
	.4byte gExitList_MinishPaths1_LonLonRanch
	.4byte gExitList_MinishPaths1_MayorsCabin

gExitList_CrenelMinishPaths_CrenelBean:: @ 08135860
	.include "exit_lists/gExitList_CrenelMinishPaths_CrenelBean.s"

gExitList_CrenelMinishPaths_CrenelWater:: @ 08135888
	.include "exit_lists/gExitList_CrenelMinishPaths_CrenelWater.s"

gExitList_CrenelMinishPaths_Rainfall:: @ 081358B0
	.include "exit_lists/gExitList_CrenelMinishPaths_Rainfall.s"

gExitList_CrenelMinishPaths_MelarisMine:: @ 081358EC
	.include "exit_lists/gExitList_CrenelMinishPaths_MelarisMine.s"

gExitLists_CrenelMinishPaths:: @ 08135928
	.4byte gExitList_CrenelMinishPaths_CrenelBean
	.4byte gExitList_CrenelMinishPaths_CrenelWater
	.4byte gExitList_CrenelMinishPaths_Rainfall
	.4byte gExitList_CrenelMinishPaths_MelarisMine

gExitList_DigCaves1_TrilbyHighlands:: @ 08135938
	.include "exit_lists/gExitList_DigCaves1_TrilbyHighlands.s"

gExitLists_DigCaves1:: @ 08135974
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DigCaves1_TrilbyHighlands

gExitList_MinishHouseInteriors_GentariMain:: @ 08135984
	.include "exit_lists/gExitList_MinishHouseInteriors_GentariMain.s"

gExitList_MinishHouseInteriors_GentariExit:: @ 081359AC
	.include "exit_lists/gExitList_MinishHouseInteriors_GentariExit.s"

gExitList_MinishHouseInteriors_Festari:: @ 081359D4
	.include "exit_lists/gExitList_MinishHouseInteriors_Festari.s"

gExitList_MinishHouseInteriors_Red:: @ 08135A10
	.include "exit_lists/gExitList_MinishHouseInteriors_Red.s"

gExitList_MinishHouseInteriors_Green:: @ 08135A38
	.include "exit_lists/gExitList_MinishHouseInteriors_Green.s"

gExitList_MinishHouseInteriors_Blue:: @ 08135A60
	.include "exit_lists/gExitList_MinishHouseInteriors_Blue.s"

gExitList_MinishHouseInteriors_SideArea:: @ 08135A88
	.include "exit_lists/gExitList_MinishHouseInteriors_SideArea.s"

gExitList_MinishHouseInteriors_ShoeMinish:: @ 08135AB0
	.include "exit_lists/gExitList_MinishHouseInteriors_ShoeMinish.s"

gExitList_MinishHouseInteriors_PotMinish:: @ 08135AD8
	.include "exit_lists/gExitList_MinishHouseInteriors_PotMinish.s"

gExitList_MinishHouseInteriors_BarrelMinish:: @ 08135B00
	.include "exit_lists/gExitList_MinishHouseInteriors_BarrelMinish.s"

gExitList_MinishHouseInteriors_NULL1:: @ 08135B3C
	.include "exit_lists/gExitList_MinishHouseInteriors_NULL1.s"

gExitList_MinishHouseInteriors_NULL2:: @ 08135B64
	.include "exit_lists/gExitList_MinishHouseInteriors_NULL2.s"

gExitList_MinishHouseInteriors_MelariMinesSouthwest:: @ 08135B8C
	.include "exit_lists/gExitList_MinishHouseInteriors_MelariMinesSouthwest.s"

gExitList_MinishHouseInteriors_MelariMinesSoutheast:: @ 08135BB4
	.include "exit_lists/gExitList_MinishHouseInteriors_MelariMinesSoutheast.s"

gExitList_MinishHouseInteriors_MelariMinesEast:: @ 08135BDC
	.include "exit_lists/gExitList_MinishHouseInteriors_MelariMinesEast.s"

gExitList_MinishHouseInteriors_HyruleFieldSouthwest:: @ 08135C04
	.include "exit_lists/gExitList_MinishHouseInteriors_HyruleFieldSouthwest.s"

gExitList_MinishHouseInteriors_HyruleFieldOutsideLinksHouse:: @ 08135C2C
	.include "exit_lists/gExitList_MinishHouseInteriors_HyruleFieldOutsideLinksHouse.s"

gExitList_MinishHouseInteriors_NextToKnuckle:: @ 08135C54
	.include "exit_lists/gExitList_MinishHouseInteriors_NextToKnuckle.s"

gExitList_MinishHouseInteriors_Librari:: @ 08135C7C
	.include "exit_lists/gExitList_MinishHouseInteriors_Librari.s"

gExitList_MinishHouseInteriors_HyruleFieldExit:: @ 08135CA4
	.include "exit_lists/gExitList_MinishHouseInteriors_HyruleFieldExit.s"

gExitList_MinishHouseInteriors_HyruleTown:: @ 08135CCC
	.include "exit_lists/gExitList_MinishHouseInteriors_HyruleTown.s"

gExitList_MinishHouseInteriors_MinishWoodsBomb:: @ 08135CF4
	.include "exit_lists/gExitList_MinishHouseInteriors_MinishWoodsBomb.s"

gExitList_MinishHouseInteriors_LakeHyliaOcarina:: @ 08135D1C
	.include "exit_lists/gExitList_MinishHouseInteriors_LakeHyliaOcarina.s"

gExitLists_MinishHouseInteriors:: @ 08135D44
	.4byte gExitList_MinishHouseInteriors_GentariMain
	.4byte gExitList_MinishHouseInteriors_GentariExit
	.4byte gExitList_MinishHouseInteriors_Festari
	.4byte gExitList_MinishHouseInteriors_Red
	.4byte gExitList_MinishHouseInteriors_Green
	.4byte gExitList_MinishHouseInteriors_Blue
	.4byte gExitList_MinishHouseInteriors_SideArea
	.4byte gExitList_MinishHouseInteriors_ShoeMinish
	.4byte gExitList_MinishHouseInteriors_PotMinish
	.4byte gExitList_MinishHouseInteriors_BarrelMinish
	.4byte gExitList_MinishHouseInteriors_NULL1
	.4byte gExitList_MinishHouseInteriors_NULL2
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_MinishHouseInteriors_MelariMinesSouthwest
	.4byte gExitList_MinishHouseInteriors_MelariMinesSoutheast
	.4byte gExitList_MinishHouseInteriors_MelariMinesEast
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_MinishHouseInteriors_HyruleFieldSouthwest
	.4byte gExitList_MinishHouseInteriors_HyruleFieldOutsideLinksHouse
	.4byte gExitList_MinishHouseInteriors_NextToKnuckle
	.4byte gExitList_MinishHouseInteriors_Librari
	.4byte gExitList_MinishHouseInteriors_HyruleFieldExit
	.4byte gExitList_MinishHouseInteriors_HyruleTown
	.4byte gExitList_MinishHouseInteriors_MinishWoodsBomb
	.4byte gExitList_MinishHouseInteriors_LakeHyliaOcarina

gExitList_OuterFortressOfWinds_EntranceHall:: @ 08135DE4
	.include "exit_lists/gExitList_OuterFortressOfWinds_EntranceHall.s"

gExitList_OuterFortressOfWinds_2F:: @ 08135E70
	.include "exit_lists/gExitList_OuterFortressOfWinds_2F.s"

gExitList_OuterFortressOfWinds_3F:: @ 08135F24
	.include "exit_lists/gExitList_OuterFortressOfWinds_3F.s"

gExitList_OuterFortressOfWinds_MoleMitts:: @ 08135FD8
	.include "exit_lists/gExitList_OuterFortressOfWinds_MoleMitts.s"

gExitList_OuterFortressOfWinds_SmallKey:: @ 08136000
	.include "exit_lists/gExitList_OuterFortressOfWinds_SmallKey.s"

gExitLists_OuterFortressOfWinds:: @ 08136028
	.4byte gExitList_OuterFortressOfWinds_EntranceHall
	.4byte gExitList_OuterFortressOfWinds_2F
	.4byte gExitList_OuterFortressOfWinds_3F
	.4byte gExitList_OuterFortressOfWinds_MoleMitts
	.4byte gExitList_OuterFortressOfWinds_SmallKey

gExitList_HyliaDigCaves_North:: @ 0813603C
	.include "exit_lists/gExitList_HyliaDigCaves_North.s"

gExitLists_HyliaDigCaves:: @ 0813608C
	.4byte gExitList_NoExitList
	.4byte gExitList_HyliaDigCaves_North
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gExitList_VeilFallsTop_Main:: @ 081360A0
	.include "exit_lists/gExitList_VeilFallsTop_Main.s"

gExitLists_VeilFallsTop:: @ 081360C8
	.4byte gExitList_VeilFallsTop_Main

gExitList_HouseInteriors2_Stranger:: @ 081360CC
	.include "exit_lists/gExitList_HouseInteriors2_Stranger.s"

gExitList_HouseInteriors2_WestOracle:: @ 081360F4
	.include "exit_lists/gExitList_HouseInteriors2_WestOracle.s"

gExitList_HouseInteriors2_2:: @ 0813611C
	.include "exit_lists/gExitList_HouseInteriors2_2.s"

gExitList_HouseInteriors2_3:: @ 08136144
	.include "exit_lists/gExitList_HouseInteriors2_3.s"

gExitList_HouseInteriors2_DrLeft:: @ 0813616C
	.include "exit_lists/gExitList_HouseInteriors2_DrLeft.s"

gExitList_HouseInteriors2_NULL1:: @ 08136194
	.include "exit_lists/gExitList_HouseInteriors2_NULL1.s"

gExitList_HouseInteriors2_Romio:: @ 081361BC
	.include "exit_lists/gExitList_HouseInteriors2_Romio.s"

gExitList_HouseInteriors2_Julietta:: @ 081361E4
	.include "exit_lists/gExitList_HouseInteriors2_Julietta.s"

gExitList_HouseInteriors2_Percy:: @ 0813620C
	.include "exit_lists/gExitList_HouseInteriors2_Percy.s"

gExitList_HouseInteriors2_EastOracle:: @ 08136234
	.include "exit_lists/gExitList_HouseInteriors2_EastOracle.s"

gExitList_HouseInteriors2_A:: @ 0813625C
	.include "exit_lists/gExitList_HouseInteriors2_A.s"

gExitList_HouseInteriors2_B:: @ 08136284
	.include "exit_lists/gExitList_HouseInteriors2_B.s"

gExitList_HouseInteriors2_Cucco:: @ 081362AC
	.include "exit_lists/gExitList_HouseInteriors2_Cucco.s"

gExitList_HouseInteriors2_LinksHouseEntrance:: @ 081362D4
	.include "exit_lists/gExitList_HouseInteriors2_LinksHouseEntrance.s"

gExitList_HouseInteriors2_Dampe:: @ 08136310
	.include "exit_lists/gExitList_HouseInteriors2_Dampe.s"

gExitList_HouseInteriors2_NULL2:: @ 08136338
	.include "exit_lists/gExitList_HouseInteriors2_NULL2.s"

gExitList_HouseInteriors2_Stockwell:: @ 0813634C
	.include "exit_lists/gExitList_HouseInteriors2_Stockwell.s"

gExitList_HouseInteriors2_LinksHouseBedroom:: @ 08136374
	.include "exit_lists/gExitList_HouseInteriors2_LinksHouseBedroom.s"

gExitLists_HouseInteriors2:: @ 0813639C
	.4byte gExitList_HouseInteriors2_Stranger
	.4byte gExitList_HouseInteriors2_WestOracle
	.4byte gExitList_HouseInteriors2_2
	.4byte gExitList_HouseInteriors2_3
	.4byte gExitList_HouseInteriors2_DrLeft
	.4byte gExitList_HouseInteriors2_NULL1
	.4byte gExitList_HouseInteriors2_Romio
	.4byte gExitList_HouseInteriors2_Julietta
	.4byte gExitList_HouseInteriors2_Percy
	.4byte gExitList_HouseInteriors2_EastOracle
	.4byte gExitList_HouseInteriors2_A
	.4byte gExitList_HouseInteriors2_B
	.4byte gExitList_HouseInteriors2_Cucco
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_HouseInteriors2_LinksHouseEntrance
	.4byte gExitList_NoExitList
	.4byte gExitList_HouseInteriors2_Dampe
	.4byte gExitList_HouseInteriors2_NULL2
	.4byte gExitList_HouseInteriors2_Stockwell
	.4byte gExitList_HouseInteriors2_LinksHouseBedroom
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_HouseInteriors4_Carpenter:: @ 0813645C
	.include "exit_lists/gExitList_HouseInteriors4_Carpenter.s"

gExitList_HouseInteriors4_Swiftblade:: @ 08136484
	.include "exit_lists/gExitList_HouseInteriors4_Swiftblade.s"

gExitList_HouseInteriors4_RanchHouseWest:: @ 081364AC
	.include "exit_lists/gExitList_HouseInteriors4_RanchHouseWest.s"

gExitList_HouseInteriors4_RanchHouseEast:: @ 081364D4
	.include "exit_lists/gExitList_HouseInteriors4_RanchHouseEast.s"

gExitList_HouseInteriors4_FarmHouse:: @ 081364FC
	.include "exit_lists/gExitList_HouseInteriors4_FarmHouse.s"

gExitList_HouseInteriors4_Mayor:: @ 08136524
	.include "exit_lists/gExitList_HouseInteriors4_Mayor.s"

gExitLists_HouseInteriors4:: @ 0813654C
	.4byte gExitList_HouseInteriors4_Carpenter
	.4byte gExitList_HouseInteriors4_Swiftblade
	.4byte gExitList_HouseInteriors4_RanchHouseWest
	.4byte gExitList_HouseInteriors4_RanchHouseEast
	.4byte gExitList_HouseInteriors4_FarmHouse
	.4byte gExitList_HouseInteriors4_Mayor
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_GreatFairies_Graveyard:: @ 0813658C
	.include "exit_lists/gExitList_GreatFairies_Graveyard.s"

gExitList_GreatFairies_MinishWoods:: @ 081365B4
	.include "exit_lists/gExitList_GreatFairies_MinishWoods.s"

gExitList_GreatFairies_MtCrenel:: @ 081365DC
	.include "exit_lists/gExitList_GreatFairies_MtCrenel.s"

gExitLists_GreatFairies:: @ 08136604
	.4byte gExitList_GreatFairies_Graveyard
	.4byte gExitList_GreatFairies_MinishWoods
	.4byte gExitList_GreatFairies_MtCrenel
	.4byte gExitList_NoExitList

gExitList_HouseInteriors3_StockwellShop:: @ 08136614
	.include "exit_lists/gExitList_HouseInteriors3_StockwellShop.s"

gExitList_HouseInteriors3_Cafe:: @ 0813663C
	.include "exit_lists/gExitList_HouseInteriors3_Cafe.s"

gExitList_HouseInteriors3_RemShoeShop:: @ 08136664
	.include "exit_lists/gExitList_HouseInteriors3_RemShoeShop.s"

gExitList_HouseInteriors3_Bakery:: @ 0813668C
	.include "exit_lists/gExitList_HouseInteriors3_Bakery.s"

gExitList_HouseInteriors3_Simon:: @ 081366B4
	.include "exit_lists/gExitList_HouseInteriors3_Simon.s"

gExitList_HouseInteriors3_FigurineHouse:: @ 081366DC
	.include "exit_lists/gExitList_HouseInteriors3_FigurineHouse.s"

gExitList_HouseInteriors3_BorlovEntrance:: @ 08136718
	.include "exit_lists/gExitList_HouseInteriors3_BorlovEntrance.s"

gExitList_HouseInteriors3_Carlov:: @ 08136754
	.include "exit_lists/gExitList_HouseInteriors3_Carlov.s"

gExitList_HouseInteriors3_Borlov:: @ 0813677C
	.include "exit_lists/gExitList_HouseInteriors3_Borlov.s"

gExitLists_HouseInteriors3:: @ 081367A4
	.4byte gExitList_HouseInteriors3_StockwellShop
	.4byte gExitList_HouseInteriors3_Cafe
	.4byte gExitList_HouseInteriors3_RemShoeShop
	.4byte gExitList_HouseInteriors3_Bakery
	.4byte gExitList_HouseInteriors3_Simon
	.4byte gExitList_HouseInteriors3_FigurineHouse
	.4byte gExitList_HouseInteriors3_BorlovEntrance
	.4byte gExitList_HouseInteriors3_Carlov
	.4byte gExitList_HouseInteriors3_Borlov
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_HouseInteriors1_Mayor:: @ 081367E4
	.include "exit_lists/gExitList_HouseInteriors1_Mayor.s"

gExitList_HouseInteriors1_PostOffice:: @ 08136820
	.include "exit_lists/gExitList_HouseInteriors1_PostOffice.s"

gExitList_HouseInteriors1_Library2F:: @ 08136848
	.include "exit_lists/gExitList_HouseInteriors1_Library2F.s"

gExitList_HouseInteriors1_Library1F:: @ 08136884
	.include "exit_lists/gExitList_HouseInteriors1_Library1F.s"

gExitList_HouseInteriors1_Inn1F:: @ 081368C0
	.include "exit_lists/gExitList_HouseInteriors1_Inn1F.s"

gExitList_HouseInteriors1_InnWestRoom:: @ 08136938
	.include "exit_lists/gExitList_HouseInteriors1_InnWestRoom.s"

gExitList_HouseInteriors1_InnMiddleRoom:: @ 08136960
	.include "exit_lists/gExitList_HouseInteriors1_InnMiddleRoom.s"

gExitList_HouseInteriors1_InnEastRoom:: @ 08136988
	.include "exit_lists/gExitList_HouseInteriors1_InnEastRoom.s"

gExitList_HouseInteriors1_InnWest2F:: @ 081369B0
	.include "exit_lists/gExitList_HouseInteriors1_InnWest2F.s"

gExitList_HouseInteriors1_InnEast2F:: @ 081369D8
	.include "exit_lists/gExitList_HouseInteriors1_InnEast2F.s"

gExitList_HouseInteriors1_SchoolWest:: @ 08136A14
	.include "exit_lists/gExitList_HouseInteriors1_SchoolWest.s"

gExitList_HouseInteriors1_SchoolEast:: @ 08136A50
	.include "exit_lists/gExitList_HouseInteriors1_SchoolEast.s"

gExitLists_HouseInteriors1:: @ 08136A78
	.4byte gExitList_HouseInteriors1_Mayor
	.4byte gExitList_HouseInteriors1_PostOffice
	.4byte gExitList_HouseInteriors1_Library2F
	.4byte gExitList_HouseInteriors1_Library1F
	.4byte gExitList_HouseInteriors1_Inn1F
	.4byte gExitList_HouseInteriors1_InnWestRoom
	.4byte gExitList_HouseInteriors1_InnMiddleRoom
	.4byte gExitList_HouseInteriors1_InnEastRoom
	.4byte gExitList_HouseInteriors1_InnWest2F
	.4byte gExitList_HouseInteriors1_InnEast2F
	.4byte gExitList_NoExitList
	.4byte gExitList_HouseInteriors1_SchoolWest
	.4byte gExitList_HouseInteriors1_SchoolEast
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_TreeInteriors_WitchHut:: @ 08136AF8
	.include "exit_lists/gExitList_TreeInteriors_WitchHut.s"

gExitList_TreeInteriors_StairsToCarlov:: @ 08136B20
	.include "exit_lists/gExitList_TreeInteriors_StairsToCarlov.s"

gExitList_TreeInteriors_PercysTreehouse:: @ 08136B5C
	.include "exit_lists/gExitList_TreeInteriors_PercysTreehouse.s"

gExitList_TreeInteriors_HeartPiece:: @ 08136B84
	.include "exit_lists/gExitList_TreeInteriors_HeartPiece.s"

gExitList_TreeInteriors_StairsToBladeBrother:: @ 08136BAC
	.include "exit_lists/gExitList_TreeInteriors_StairsToBladeBrother.s"

gExitList_TreeInteriors_14:: @ 08136BE8
	.include "exit_lists/gExitList_TreeInteriors_14.s"

gExitList_TreeInteriors_BoomerangNorthwest:: @ 08136C10
	.include "exit_lists/gExitList_TreeInteriors_BoomerangNorthwest.s"

gExitList_TreeInteriors_BoomerangNortheast:: @ 08136C4C
	.include "exit_lists/gExitList_TreeInteriors_BoomerangNortheast.s"

gExitList_TreeInteriors_BoomerangSouthwest:: @ 08136C88
	.include "exit_lists/gExitList_TreeInteriors_BoomerangSouthwest.s"

gExitList_TreeInteriors_BoomerangSoutheast:: @ 08136CC4
	.include "exit_lists/gExitList_TreeInteriors_BoomerangSoutheast.s"

gExitList_TreeInteriors_HeartPieceSouthwestField:: @ 08136D00
	.include "exit_lists/gExitList_TreeInteriors_HeartPieceSouthwestField.s"

gExitList_TreeInteriors_StairsToFairyFountain:: @ 08136D28
	.include "exit_lists/gExitList_TreeInteriors_StairsToFairyFountain.s"

gExitList_TreeInteriors_StairsToWalletFairy:: @ 08136D64
	.include "exit_lists/gExitList_TreeInteriors_StairsToWalletFairy.s"

gExitList_TreeInteriors_1C:: @ 08136DA0
	.include "exit_lists/gExitList_TreeInteriors_1C.s"

gExitList_TreeInteriors_StairsToBusinessScrub:: @ 08136DC8
	.include "exit_lists/gExitList_TreeInteriors_StairsToBusinessScrub.s"

gExitList_TreeInteriors_1E:: @ 08136E04
	.include "exit_lists/gExitList_TreeInteriors_1E.s"

gExitList_TreeInteriors_1F:: @ 08136E18
	.include "exit_lists/gExitList_TreeInteriors_1F.s"

gExitLists_TreeInteriors:: @ 08136E40
	.4byte gExitList_TreeInteriors_WitchHut
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_TreeInteriors_StairsToCarlov
	.4byte gExitList_TreeInteriors_PercysTreehouse
	.4byte gExitList_TreeInteriors_HeartPiece
	.4byte gExitList_TreeInteriors_StairsToBladeBrother
	.4byte gExitList_TreeInteriors_14
	.4byte gExitList_TreeInteriors_BoomerangNorthwest
	.4byte gExitList_TreeInteriors_BoomerangNortheast
	.4byte gExitList_TreeInteriors_BoomerangSouthwest
	.4byte gExitList_TreeInteriors_BoomerangSoutheast
	.4byte gExitList_TreeInteriors_HeartPieceSouthwestField
	.4byte gExitList_TreeInteriors_StairsToFairyFountain
	.4byte gExitList_TreeInteriors_StairsToWalletFairy
	.4byte gExitList_TreeInteriors_1C
	.4byte gExitList_TreeInteriors_StairsToBusinessScrub
	.4byte gExitList_TreeInteriors_1E
	.4byte gExitList_TreeInteriors_1F

gExitList_Dojos_Grayblade:: @ 08136EC0
	.include "exit_lists/gExitList_Dojos_Grayblade.s"

gExitList_Dojos_Swiftblade:: @ 08136EE8
	.include "exit_lists/gExitList_Dojos_Swiftblade.s"

gExitList_Dojos_Waveblade:: @ 08136F10
	.include "exit_lists/gExitList_Dojos_Waveblade.s"

gExitList_Dojos_ToGrimblade:: @ 08136F38
	.include "exit_lists/gExitList_Dojos_ToGrimblade.s"

gExitList_Dojos_ToSplitblade:: @ 08136F60
	.include "exit_lists/gExitList_Dojos_ToSplitblade.s"

gExitList_Dojos_ToGreatblade:: @ 08136F88
	.include "exit_lists/gExitList_Dojos_ToGreatblade.s"

gExitList_Dojos_ToScarblade:: @ 08136FB0
	.include "exit_lists/gExitList_Dojos_ToScarblade.s"

gExitLists_Dojos:: @ 08136FD8
	.4byte gExitList_Dojos_Grayblade
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_Dojos_Swiftblade
	.4byte gExitList_NoExitList
	.4byte gExitList_Dojos_Waveblade
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_Dojos_ToGrimblade
	.4byte gExitList_Dojos_ToSplitblade
	.4byte gExitList_Dojos_ToGreatblade
	.4byte gExitList_Dojos_ToScarblade
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_MinishCracks_LonLonRanchNorth:: @ 08137018
	.include "exit_lists/gExitList_MinishCracks_LonLonRanchNorth.s"

gExitList_MinishCracks_LakeHyliaEast:: @ 08137040
	.include "exit_lists/gExitList_MinishCracks_LakeHyliaEast.s"

gExitList_MinishCracks_HyruleCastleGarden:: @ 08137068
	.include "exit_lists/gExitList_MinishCracks_HyruleCastleGarden.s"

gExitList_MinishCracks_MtCrenel:: @ 08137090
	.include "exit_lists/gExitList_MinishCracks_MtCrenel.s"

gExitList_MinishCracks_EastHyruleCastle:: @ 081370B8
	.include "exit_lists/gExitList_MinishCracks_EastHyruleCastle.s"

gExitList_MinishCracks_5:: @ 081370E0
	.include "exit_lists/gExitList_MinishCracks_5.s"

gExitList_MinishCracks_CastleWildsBowHole:: @ 081370F4
	.include "exit_lists/gExitList_MinishCracks_CastleWildsBowHole.s"

gExitList_MinishCracks_RuinsEntrance:: @ 0813711C
	.include "exit_lists/gExitList_MinishCracks_RuinsEntrance.s"

gExitList_MinishCracks_MinishWoodsSouth:: @ 08137144
	.include "exit_lists/gExitList_MinishCracks_MinishWoodsSouth.s"

gExitList_MinishCracks_CastorWildsNorth:: @ 0813716C
	.include "exit_lists/gExitList_MinishCracks_CastorWildsNorth.s"

gExitList_MinishCracks_CastorWildsWest:: @ 08137194
	.include "exit_lists/gExitList_MinishCracks_CastorWildsWest.s"

gExitList_MinishCracks_CastorWildsMiddle:: @ 081371BC
	.include "exit_lists/gExitList_MinishCracks_CastorWildsMiddle.s"

gExitList_MinishCracks_RuinsTektite:: @ 081371E4
	.include "exit_lists/gExitList_MinishCracks_RuinsTektite.s"

gExitList_MinishCracks_CastorWildsNextToBow:: @ 0813720C
	.include "exit_lists/gExitList_MinishCracks_CastorWildsNextToBow.s"

gExitList_MinishCracks_11:: @ 08137234
	.include "exit_lists/gExitList_MinishCracks_11.s"

gExitLists_MinishCracks:: @ 08137248
	.4byte gExitList_MinishCracks_LonLonRanchNorth
	.4byte gExitList_MinishCracks_LakeHyliaEast
	.4byte gExitList_MinishCracks_HyruleCastleGarden
	.4byte gExitList_MinishCracks_MtCrenel
	.4byte gExitList_MinishCracks_EastHyruleCastle
	.4byte gExitList_MinishCracks_5
	.4byte gExitList_MinishCracks_CastleWildsBowHole
	.4byte gExitList_MinishCracks_RuinsEntrance
	.4byte gExitList_MinishCracks_MinishWoodsSouth
	.4byte gExitList_MinishCracks_CastorWildsNorth
	.4byte gExitList_MinishCracks_CastorWildsWest
	.4byte gExitList_MinishCracks_CastorWildsMiddle
	.4byte gExitList_MinishCracks_RuinsTektite
	.4byte gExitList_MinishCracks_CastorWildsNextToBow
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_MinishCracks_11
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_CrenelCaves_BlockPushing:: @ 081372A8
	.include "exit_lists/gExitList_CrenelCaves_BlockPushing.s"

gExitList_CrenelCaves_PillarCave:: @ 0813730C
	.include "exit_lists/gExitList_CrenelCaves_PillarCave.s"

gExitList_CrenelCaves_BridgeSwitch:: @ 08137348
	.include "exit_lists/gExitList_CrenelCaves_BridgeSwitch.s"

gExitList_CrenelCaves_ExitToMines:: @ 08137384
	.include "exit_lists/gExitList_CrenelCaves_ExitToMines.s"

gExitList_CrenelCaves_GripRing:: @ 081373C0
	.include "exit_lists/gExitList_CrenelCaves_GripRing.s"

gExitList_CrenelCaves_FairyFountain:: @ 081373E8
	.include "exit_lists/gExitList_CrenelCaves_FairyFountain.s"

gExitList_CrenelCaves_SpinyChuPuzzle:: @ 08137410
	.include "exit_lists/gExitList_CrenelCaves_SpinyChuPuzzle.s"

gExitList_CrenelCaves_ChuchuPotChest:: @ 0813744C
	.include "exit_lists/gExitList_CrenelCaves_ChuchuPotChest.s"

gExitList_CrenelCaves_WaterHeartPiece:: @ 08137488
	.include "exit_lists/gExitList_CrenelCaves_WaterHeartPiece.s"

gExitList_CrenelCaves_RupeeFairyFountain:: @ 081374B0
	.include "exit_lists/gExitList_CrenelCaves_RupeeFairyFountain.s"

gExitList_CrenelCaves_HelmasaurHallway:: @ 081374D8
	.include "exit_lists/gExitList_CrenelCaves_HelmasaurHallway.s"

gExitList_CrenelCaves_MushroomKeese:: @ 08137514
	.include "exit_lists/gExitList_CrenelCaves_MushroomKeese.s"

gExitList_CrenelCaves_LadderToGreenWater:: @ 08137550
	.include "exit_lists/gExitList_CrenelCaves_LadderToGreenWater.s"

gExitList_CrenelCaves_BombBusinessScrub:: @ 0813758C
	.include "exit_lists/gExitList_CrenelCaves_BombBusinessScrub.s"

gExitList_CrenelCaves_Hermit:: @ 081375B4
	.include "exit_lists/gExitList_CrenelCaves_Hermit.s"

gExitList_CrenelCaves_HintScrub:: @ 081375DC
	.include "exit_lists/gExitList_CrenelCaves_HintScrub.s"

gExitList_CrenelCaves_ToGrayblade:: @ 08137604
	.include "exit_lists/gExitList_CrenelCaves_ToGrayblade.s"

gExitLists_CrenelCaves:: @ 08137640
	.4byte gExitList_CrenelCaves_BlockPushing
	.4byte gExitList_CrenelCaves_PillarCave
	.4byte gExitList_CrenelCaves_BridgeSwitch
	.4byte gExitList_CrenelCaves_ExitToMines
	.4byte gExitList_CrenelCaves_GripRing
	.4byte gExitList_CrenelCaves_FairyFountain
	.4byte gExitList_CrenelCaves_SpinyChuPuzzle
	.4byte gExitList_CrenelCaves_ChuchuPotChest
	.4byte gExitList_CrenelCaves_WaterHeartPiece
	.4byte gExitList_CrenelCaves_RupeeFairyFountain
	.4byte gExitList_CrenelCaves_HelmasaurHallway
	.4byte gExitList_CrenelCaves_MushroomKeese
	.4byte gExitList_CrenelCaves_LadderToGreenWater
	.4byte gExitList_CrenelCaves_BombBusinessScrub
	.4byte gExitList_CrenelCaves_Hermit
	.4byte gExitList_CrenelCaves_HintScrub
	.4byte gExitList_CrenelCaves_ToGrayblade

gExitList_CastorCaves_South:: @ 08137684
	.include "exit_lists/gExitList_CastorCaves_South.s"

gExitList_CastorCaves_North:: @ 081376AC
	.include "exit_lists/gExitList_CastorCaves_North.s"

gExitList_CastorCaves_WindRuins:: @ 081376E8
	.include "exit_lists/gExitList_CastorCaves_WindRuins.s"

gExitList_CastorCaves_Darknut:: @ 08137710
	.include "exit_lists/gExitList_CastorCaves_Darknut.s"

gExitList_CastorCaves_HeartPiece:: @ 0813774C
	.include "exit_lists/gExitList_CastorCaves_HeartPiece.s"

gExitLists_CastorCaves:: @ 08137774
	.4byte gExitList_CastorCaves_South
	.4byte gExitList_CastorCaves_North
	.4byte gExitList_CastorCaves_WindRuins
	.4byte gExitList_CastorCaves_Darknut
	.4byte gExitList_CastorCaves_HeartPiece
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_CastorDarknut_Main:: @ 08137794
	.include "exit_lists/gExitList_CastorDarknut_Main.s"

gExitList_CastorDarknut_Hall:: @ 081377A8
	.include "exit_lists/gExitList_CastorDarknut_Hall.s"

gExitLists_CastorDarknut:: @ 081377D0
	.4byte gExitList_CastorDarknut_Main
	.4byte gExitList_CastorDarknut_Hall
	.4byte 00000000
	.4byte 00000000

gExitList_ArmosInteriors_RuinsEntranceNorth:: @ 081377E0
	.include "exit_lists/gExitList_ArmosInteriors_RuinsEntranceNorth.s"

gExitList_ArmosInteriors_RuinsEntranceSouth:: @ 08137808
	.include "exit_lists/gExitList_ArmosInteriors_RuinsEntranceSouth.s"

gExitList_ArmosInteriors_RuinsLeft:: @ 08137830
	.include "exit_lists/gExitList_ArmosInteriors_RuinsLeft.s"

gExitList_ArmosInteriors_RuinsMiddleLeft:: @ 08137858
	.include "exit_lists/gExitList_ArmosInteriors_RuinsMiddleLeft.s"

gExitList_ArmosInteriors_RuinsMiddleRight:: @ 08137880
	.include "exit_lists/gExitList_ArmosInteriors_RuinsMiddleRight.s"

gExitList_ArmosInteriors_RuinsRight:: @ 081378A8
	.include "exit_lists/gExitList_ArmosInteriors_RuinsRight.s"

gExitList_ArmosInteriors_6:: @ 081378D0
	.include "exit_lists/gExitList_ArmosInteriors_6.s"

gExitList_ArmosInteriors_RuinsGrassPath:: @ 081378F8
	.include "exit_lists/gExitList_ArmosInteriors_RuinsGrassPath.s"

gExitList_ArmosInteriors_8:: @ 08137920
	.include "exit_lists/gExitList_ArmosInteriors_8.s"

gExitList_ArmosInteriors_FortressOfWindsLeft:: @ 08137948
	.include "exit_lists/gExitList_ArmosInteriors_FortressOfWindsLeft.s"

gExitList_ArmosInteriors_FortressOfWindsRight:: @ 08137970
	.include "exit_lists/gExitList_ArmosInteriors_FortressOfWindsRight.s"

gExitLists_ArmosInteriors:: @ 08137998
	.4byte gExitList_ArmosInteriors_RuinsEntranceNorth
	.4byte gExitList_ArmosInteriors_RuinsEntranceSouth
	.4byte gExitList_ArmosInteriors_RuinsLeft
	.4byte gExitList_ArmosInteriors_RuinsMiddleLeft
	.4byte gExitList_ArmosInteriors_RuinsMiddleRight
	.4byte gExitList_ArmosInteriors_RuinsRight
	.4byte gExitList_ArmosInteriors_6
	.4byte gExitList_ArmosInteriors_RuinsGrassPath
	.4byte gExitList_ArmosInteriors_8
	.4byte gExitList_ArmosInteriors_FortressOfWindsLeft
	.4byte gExitList_ArmosInteriors_FortressOfWindsRight

gExitList_TownMinishHoles_MayorsHouse:: @ 081379C4
	.include "exit_lists/gExitList_TownMinishHoles_MayorsHouse.s"

gExitList_TownMinishHoles_WestOracle:: @ 081379EC
	.include "exit_lists/gExitList_TownMinishHoles_WestOracle.s"

gExitList_TownMinishHoles_DrLeft:: @ 08137A14
	.include "exit_lists/gExitList_TownMinishHoles_DrLeft.s"

gExitList_TownMinishHoles_Carpenter:: @ 08137A3C
	.include "exit_lists/gExitList_TownMinishHoles_Carpenter.s"

gExitList_TownMinishHoles_Cafe:: @ 08137A64
	.include "exit_lists/gExitList_TownMinishHoles_Cafe.s"

gExitList_TownMinishHoles_LibraryBookshelf:: @ 08137A8C
	.include "exit_lists/gExitList_TownMinishHoles_LibraryBookshelf.s"

gExitList_TownMinishHoles_LibrariBookHouse:: @ 08137ADC
	.include "exit_lists/gExitList_TownMinishHoles_LibrariBookHouse.s"

gExitList_TownMinishHoles_RemShoeShop:: @ 08137B04
	.include "exit_lists/gExitList_TownMinishHoles_RemShoeShop.s"

gExitLists_TownMinishHoles:: @ 08137B2C
	.4byte gExitList_TownMinishHoles_MayorsHouse
	.4byte gExitList_TownMinishHoles_WestOracle
	.4byte gExitList_TownMinishHoles_DrLeft
	.4byte gExitList_TownMinishHoles_Carpenter
	.4byte gExitList_TownMinishHoles_Cafe
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_TownMinishHoles_LibraryBookshelf
	.4byte gExitList_TownMinishHoles_LibrariBookHouse
	.4byte gExitList_TownMinishHoles_RemShoeShop
	.4byte gExitList_NoExitList

gExitList_MinishRafters_Cafe:: @ 08137B7C
	.include "exit_lists/gExitList_MinishRafters_Cafe.s"

gExitList_MinishRafters_Stockwell:: @ 08137BB8
	.include "exit_lists/gExitList_MinishRafters_Stockwell.s"

gExitList_MinishRafters_DrLeft:: @ 08137BF4
	.include "exit_lists/gExitList_MinishRafters_DrLeft.s"

gExitList_MinishRafters_Bakery:: @ 08137C1C
	.include "exit_lists/gExitList_MinishRafters_Bakery.s"

gExitLists_MinishRafters:: @ 08137C58
	.4byte gExitList_MinishRafters_Cafe
	.4byte gExitList_MinishRafters_Stockwell
	.4byte gExitList_MinishRafters_DrLeft
	.4byte gExitList_MinishRafters_Bakery

gExitList_GoronCave_StairsToCave:: @ 08137C68
	.include "exit_lists/gExitList_GoronCave_StairsToCave.s"

gExitList_GoronCave_Main:: @ 08137CA4
	.include "exit_lists/gExitList_GoronCave_Main.s"

gExitLists_GoronCave:: @ 08137CCC
	.4byte gExitList_GoronCave_StairsToCave
	.4byte gExitList_GoronCave_Main

gExitList_WindTribeTower_Entrance:: @ 08137CD4
	.include "exit_lists/gExitList_WindTribeTower_Entrance.s"

gExitList_WindTribeTower_Floor2:: @ 08137D10
	.include "exit_lists/gExitList_WindTribeTower_Floor2.s"

gExitList_WindTribeTower_Floor3:: @ 08137D4C
	.include "exit_lists/gExitList_WindTribeTower_Floor3.s"

gExitList_WindTribeTower_Floor4:: @ 08137D88
	.include "exit_lists/gExitList_WindTribeTower_Floor4.s"

gExitLists_WindTribeTower:: @ 08137DC4
	.4byte gExitList_WindTribeTower_Entrance
	.4byte gExitList_WindTribeTower_Floor2
	.4byte gExitList_WindTribeTower_Floor3
	.4byte gExitList_WindTribeTower_Floor4

gExitList_WindTribeTowerRoof_Main:: @ 08137DD4
	.include "exit_lists/gExitList_WindTribeTowerRoof_Main.s"

gExitLists_WindTribeTowerRoof:: @ 08137DFC
	.4byte gExitList_WindTribeTowerRoof_Main

gExitList_Caves_Boomerang:: @ 08137E00
	.include "exit_lists/gExitList_Caves_Boomerang.s"

gExitList_Caves_ToGraveyard:: @ 08137E78
	.include "exit_lists/gExitList_Caves_ToGraveyard.s"

gExitList_Caves_2:: @ 08137EDC
	.include "exit_lists/gExitList_Caves_2.s"

gExitList_Caves_3:: @ 08137F04
	.include "exit_lists/gExitList_Caves_3.s"

gExitList_Caves_4:: @ 08137F18
	.include "exit_lists/gExitList_Caves_4.s"

gExitList_Caves_5:: @ 08137F2C
	.include "exit_lists/gExitList_Caves_5.s"

gExitList_Caves_KeeseChest:: @ 08137F40
	.include "exit_lists/gExitList_Caves_KeeseChest.s"

gExitList_Caves_FairyFountainTrilbyHighlands:: @ 08137F68
	.include "exit_lists/gExitList_Caves_FairyFountainTrilbyHighlands.s"

gExitList_Caves_FairyFountainLinksHouse:: @ 08137F90
	.include "exit_lists/gExitList_Caves_FairyFountainLinksHouse.s"

gExitList_Caves_A:: @ 08137FB8
	.include "exit_lists/gExitList_Caves_A.s"

gExitList_Caves_HyruleTownWaterfall:: @ 08137FCC
	.include "exit_lists/gExitList_Caves_HyruleTownWaterfall.s"

gExitList_Caves_LonLonRanch:: @ 08137FF4
	.include "exit_lists/gExitList_Caves_LonLonRanch.s"

gExitList_Caves_TrilbyHighlands:: @ 08138030
	.include "exit_lists/gExitList_Caves_TrilbyHighlands.s"

gExitList_Caves_LonLonRanchWallet:: @ 0813806C
	.include "exit_lists/gExitList_Caves_LonLonRanchWallet.s"

gExitList_Caves_RupeeLinksHouse:: @ 08138094
	.include "exit_lists/gExitList_Caves_RupeeLinksHouse.s"

gExitList_Caves_RupeeTrilbyHighlands:: @ 081380BC
	.include "exit_lists/gExitList_Caves_RupeeTrilbyHighlands.s"

gExitList_Caves_FairyFountainMoleMitts:: @ 081380E4
	.include "exit_lists/gExitList_Caves_FairyFountainMoleMitts.s"

gExitList_Caves_KeeseChestSoutheastHyrule:: @ 0813810C
	.include "exit_lists/gExitList_Caves_KeeseChestSoutheastHyrule.s"

gExitList_Caves_BottleBusinessScrub:: @ 08138134
	.include "exit_lists/gExitList_Caves_BottleBusinessScrub.s"

gExitList_Caves_HeartPieceHallway:: @ 08138148
	.include "exit_lists/gExitList_Caves_HeartPieceHallway.s"

gExitList_Caves_FairyFountainBoomerang:: @ 08138184
	.include "exit_lists/gExitList_Caves_FairyFountainBoomerang.s"

gExitList_Caves_KinstoneBusinessScrub:: @ 081381AC
	.include "exit_lists/gExitList_Caves_KinstoneBusinessScrub.s"

gExitLists_Caves:: @ 081381D4
	.4byte gExitList_Caves_Boomerang
	.4byte gExitList_Caves_ToGraveyard
	.4byte gExitList_Caves_2
	.4byte gExitList_Caves_3
	.4byte gExitList_Caves_4
	.4byte gExitList_Caves_5
	.4byte gExitList_NoExitList
	.4byte gExitList_Caves_KeeseChest
	.4byte gExitList_Caves_FairyFountainTrilbyHighlands
	.4byte gExitList_Caves_FairyFountainLinksHouse
	.4byte gExitList_Caves_A
	.4byte gExitList_Caves_HyruleTownWaterfall
	.4byte gExitList_Caves_LonLonRanch
	.4byte gExitList_NoExitList
	.4byte gExitList_Caves_TrilbyHighlands
	.4byte gExitList_Caves_LonLonRanchWallet
	.4byte gExitList_Caves_RupeeLinksHouse
	.4byte gExitList_Caves_RupeeTrilbyHighlands
	.4byte gExitList_Caves_FairyFountainMoleMitts
	.4byte gExitList_Caves_KeeseChestSoutheastHyrule
	.4byte gExitList_Caves_BottleBusinessScrub
	.4byte gExitList_Caves_HeartPieceHallway
	.4byte gExitList_Caves_FairyFountainBoomerang
	.4byte gExitList_Caves_KinstoneBusinessScrub

gExitList_VeilFallsCaves_Hallway2F:: @ 08138234
	.include "exit_lists/gExitList_VeilFallsCaves_Hallway2F.s"

gExitList_VeilFallsCaves_Hallway1F:: @ 08138284
	.include "exit_lists/gExitList_VeilFallsCaves_Hallway1F.s"

gExitList_VeilFallsCaves_Entrance:: @ 081382E8
	.include "exit_lists/gExitList_VeilFallsCaves_Entrance.s"

gExitList_VeilFallsCaves_Exit:: @ 08138324
	.include "exit_lists/gExitList_VeilFallsCaves_Exit.s"

gExitList_VeilFallsCaves_SecretChest:: @ 08138360
	.include "exit_lists/gExitList_VeilFallsCaves_SecretChest.s"

gExitList_VeilFallsCaves_SecretStaircases:: @ 08138388
	.include "exit_lists/gExitList_VeilFallsCaves_SecretStaircases.s"

gExitList_VeilFallsCaves_BlockPuzzle:: @ 081383C4
	.include "exit_lists/gExitList_VeilFallsCaves_BlockPuzzle.s"

gExitList_VeilFallsCaves_RupeePath:: @ 08138400
	.include "exit_lists/gExitList_VeilFallsCaves_RupeePath.s"

gExitList_VeilFallsCaves_HeartPiece:: @ 0813843C
	.include "exit_lists/gExitList_VeilFallsCaves_HeartPiece.s"

gExitLists_VeilFallsCaves:: @ 08138464
	.4byte gExitList_VeilFallsCaves_Hallway2F
	.4byte gExitList_VeilFallsCaves_Hallway1F
	.4byte gExitList_NoExitList
	.4byte gExitList_VeilFallsCaves_Entrance
	.4byte gExitList_VeilFallsCaves_Exit
	.4byte gExitList_VeilFallsCaves_SecretChest
	.4byte gExitList_VeilFallsCaves_SecretStaircases
	.4byte gExitList_VeilFallsCaves_BlockPuzzle
	.4byte gExitList_VeilFallsCaves_RupeePath
	.4byte gExitList_VeilFallsCaves_HeartPiece
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_RoyalValleyGraves_HeartPiece:: @ 081384A4
	.include "exit_lists/gExitList_RoyalValleyGraves_HeartPiece.s"

gExitList_RoyalValleyGraves_Gina:: @ 081384CC
	.include "exit_lists/gExitList_RoyalValleyGraves_Gina.s"

gExitLists_RoyalValleyGraves:: @ 081384F4
	.4byte gExitList_RoyalValleyGraves_HeartPiece
	.4byte gExitList_RoyalValleyGraves_Gina

gExitList_MinishCaves_BeanPesto:: @ 081384FC
	.include "exit_lists/gExitList_MinishCaves_BeanPesto.s"

gExitList_MinishCaves_SoutheastWater1:: @ 08138524
	.include "exit_lists/gExitList_MinishCaves_SoutheastWater1.s"

gExitList_MinishCaves_Ruins:: @ 0813854C
	.include "exit_lists/gExitList_MinishCaves_Ruins.s"

gExitList_MinishCaves_OutsideLinksHouse:: @ 08138574
	.include "exit_lists/gExitList_MinishCaves_OutsideLinksHouse.s"

gExitList_MinishCaves_MinishWoodsNorth1:: @ 0813859C
	.include "exit_lists/gExitList_MinishCaves_MinishWoodsNorth1.s"

gExitList_MinishCaves_LakeHyliaNorth:: @ 081385C4
	.include "exit_lists/gExitList_MinishCaves_LakeHyliaNorth.s"

gExitList_MinishCaves_LakeHyliaLibrari:: @ 081385EC
	.include "exit_lists/gExitList_MinishCaves_LakeHyliaLibrari.s"

gExitList_MinishCaves_MinishWoodsSouthwest:: @ 08138628
	.include "exit_lists/gExitList_MinishCaves_MinishWoodsSouthwest.s"

gExitLists_MinishCaves:: @ 08138678
	.4byte gExitList_MinishCaves_BeanPesto
	.4byte gExitList_MinishCaves_SoutheastWater1
	.4byte gExitList_NoExitList
	.4byte gExitList_MinishCaves_Ruins
	.4byte gExitList_MinishCaves_OutsideLinksHouse
	.4byte gExitList_MinishCaves_MinishWoodsNorth1
	.4byte gExitList_NoExitList
	.4byte gExitList_MinishCaves_LakeHyliaNorth
	.4byte gExitList_MinishCaves_LakeHyliaLibrari
	.4byte gExitList_MinishCaves_MinishWoodsSouthwest

gExitList_CastleGardenMinishHoles_East:: @ 081386A0
	.include "exit_lists/gExitList_CastleGardenMinishHoles_East.s"

gExitList_CastleGardenMinishHoles_West:: @ 081386C8
	.include "exit_lists/gExitList_CastleGardenMinishHoles_West.s"

gExitLists_CastleGardenMinishHoles:: @ 081386F0
	.4byte gExitList_CastleGardenMinishHoles_East
	.4byte gExitList_CastleGardenMinishHoles_West

gExitList_37_0:: @ 081386F8
	.include "exit_lists/gExitList_37_0.s"

gExitList_37_1:: @ 08138720
	.include "exit_lists/gExitList_37_1.s"

gExitLists_37:: @ 08138748
	.4byte gExitList_37_0
	.4byte gExitList_37_1

gExitList_HyruleTownUnderground_Main:: @ 08138750
	.include "exit_lists/gExitList_HyruleTownUnderground_Main.s"

gExitList_HyruleTownUnderground_Well:: @ 081387B4
	.include "exit_lists/gExitList_HyruleTownUnderground_Well.s"

gExitLists_HyruleTownUnderground:: @ 081387F0
	.4byte gExitList_HyruleTownUnderground_Main
	.4byte gExitList_HyruleTownUnderground_Well

gExitList_HyruleTownMinishCaves_Entrance:: @ 081387F8
	.include "exit_lists/gExitList_HyruleTownMinishCaves_Entrance.s"

gExitList_HyruleTownMinishCaves_Entrance2:: @ 08138820
	.include "exit_lists/gExitList_HyruleTownMinishCaves_Entrance2.s"

gExitLists_HyruleTownMinishCaves:: @ 08138848
	.4byte gExitList_HyruleTownMinishCaves_Entrance
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_HyruleTownMinishCaves_Entrance2
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_GardenFountains_East:: @ 081388A8
	.include "exit_lists/gExitList_GardenFountains_East.s"

gExitList_GardenFountains_West:: @ 081388D0
	.include "exit_lists/gExitList_GardenFountains_West.s"

gExitLists_GardenFountains:: @ 081388F8
	.4byte gExitList_GardenFountains_East
	.4byte gExitList_GardenFountains_West

gExitList_GreatFairies_Entrance:: @ 08138900
	.include "exit_lists/gExitList_GreatFairies_Entrance.s"

gExitList_GreatFairies_Exit:: @ 08138928
	.include "exit_lists/gExitList_GreatFairies_Exit.s"

gExitLists_HyruleCastleCellar:: @ 08138950
	.4byte gExitList_GreatFairies_Entrance
	.4byte gExitList_GreatFairies_Exit

gExitLists_40:: @ 08138958
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_DeepwoodShrine_StairsToB1:: @ 0813897C
	.include "exit_lists/gExitList_DeepwoodShrine_StairsToB1.s"

gExitList_DeepwoodShrine_BluePortal:: @ 081389A4
	.include "exit_lists/gExitList_DeepwoodShrine_BluePortal.s"

gExitList_DeepwoodShrine_Map:: @ 081389B8
	.include "exit_lists/gExitList_DeepwoodShrine_Map.s"

gExitList_DeepwoodShrine_Button:: @ 081389CC
	.include "exit_lists/gExitList_DeepwoodShrine_Button.s"

gExitList_DeepwoodShrine_Lever:: @ 081389E0
	.include "exit_lists/gExitList_DeepwoodShrine_Lever.s"

gExitList_DeepwoodShrine_Barrel:: @ 081389F4
	.include "exit_lists/gExitList_DeepwoodShrine_Barrel.s"

gExitList_DeepwoodShrine_Entrance:: @ 08138A58
	.include "exit_lists/gExitList_DeepwoodShrine_Entrance.s"

gExitList_DeepwoodShrine_Compass:: @ 08138AA8
	.include "exit_lists/gExitList_DeepwoodShrine_Compass.s"

gExitList_DeepwoodShrineBoss_Main:: @ 08138AD0
	.include "exit_lists/gExitList_DeepwoodShrineBoss_Main.s"

gExitList_DeepwoodShrine_PreBoss:: @ 08138AF8
	.include "exit_lists/gExitList_DeepwoodShrine_PreBoss.s"

gExitLists_DeepwoodShrine:: @ 08138B48
	.4byte gExitList_NoExitList
	.4byte gExitList_DeepwoodShrine_BluePortal
	.4byte gExitList_DeepwoodShrine_StairsToB1
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DeepwoodShrine_Map
	.4byte gExitList_DeepwoodShrine_Barrel
	.4byte gExitList_DeepwoodShrine_Button
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DeepwoodShrine_Lever
	.4byte gExitList_DeepwoodShrine_Entrance
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DeepwoodShrine_Compass
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DeepwoodShrine_PreBoss
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitLists_DeepwoodShrineBoss:: @ 08138BCC
	.4byte gExitList_DeepwoodShrineBoss_Main

gExitList_DeepwoodShrineEntry_Main:: @ 08138BD0
	.include "exit_lists/gExitList_DeepwoodShrineEntry_Main.s"

gExitLists_DeepwoodShrineEntry:: @ 08138C34
	.4byte gExitList_DeepwoodShrineEntry_Main

gExitList_CaveOfFlames_AfterCane:: @ 08138C38
	.include "exit_lists/gExitList_CaveOfFlames_AfterCane.s"

gExitList_CaveOfFlames_Entrance:: @ 08138C60
	.include "exit_lists/gExitList_CaveOfFlames_Entrance.s"

gExitList_CaveOfFlames_MainCart:: @ 08138C88
	.include "exit_lists/gExitList_CaveOfFlames_MainCart.s"

gExitList_CaveOfFlames_NorthEntrance:: @ 08138CB0
	.include "exit_lists/gExitList_CaveOfFlames_NorthEntrance.s"

gExitList_CaveOfFlames_MinishSpikes:: @ 08138CD8
	.include "exit_lists/gExitList_CaveOfFlames_MinishSpikes.s"

gExitList_CaveOfFlames_BeforeGleerok:: @ 08138D00
	.include "exit_lists/gExitList_CaveOfFlames_BeforeGleerok.s"

gExitList_CaveOfFlames_BossDoor:: @ 08138D28
	.include "exit_lists/gExitList_CaveOfFlames_BossDoor.s"

gExitLists_CaveOfFlames:: @ 08138D50
	.4byte gExitList_CaveOfFlames_AfterCane
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_CaveOfFlames_Entrance
	.4byte gExitList_CaveOfFlames_MainCart
	.4byte gExitList_CaveOfFlames_NorthEntrance
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_CaveOfFlames_MinishSpikes
	.4byte gExitList_NoExitList
	.4byte gExitList_CaveOfFlames_BeforeGleerok
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_CaveOfFlames_BossDoor
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_FortressOfWinds_BeforeMazaal:: @ 08138DD4
	.include "exit_lists/gExitList_FortressOfWinds_BeforeMazaal.s"

gExitList_FortressOfWinds_EastKeyLever:: @ 08138DFC
	.include "exit_lists/gExitList_FortressOfWinds_EastKeyLever.s"

gExitList_FortressOfWinds_PitPlatforms:: @ 08138E38
	.include "exit_lists/gExitList_FortressOfWinds_PitPlatforms.s"

gExitList_FortressOfWinds_WestKeyLever:: @ 08138E60
	.include "exit_lists/gExitList_FortressOfWinds_WestKeyLever.s"

gExitList_FortressOfWinds_Mazaal:: @ 08138E9C
	.include "exit_lists/gExitList_FortressOfWinds_Mazaal.s"

gExitList_FortressOfWinds_Stalfos:: @ 08138EC4
	.include "exit_lists/gExitList_FortressOfWinds_Stalfos.s"

gExitList_FortressOfWinds_EntranceMoleMitts:: @ 08138EEC
	.include "exit_lists/gExitList_FortressOfWinds_EntranceMoleMitts.s"

gExitList_FortressOfWinds_Main2F:: @ 08138F14
	.include "exit_lists/gExitList_FortressOfWinds_Main2F.s"

gExitList_FortressOfWinds_MinishHole:: @ 08138F50
	.include "exit_lists/gExitList_FortressOfWinds_MinishHole.s"

gExitList_FortressOfWinds_BossKey:: @ 08138F78
	.include "exit_lists/gExitList_FortressOfWinds_BossKey.s"

gExitList_FortressOfWinds_WestStairs2F:: @ 08138FA0
	.include "exit_lists/gExitList_FortressOfWinds_WestStairs2F.s"

gExitList_FortressOfWinds_EastStairs2F:: @ 08138FC8
	.include "exit_lists/gExitList_FortressOfWinds_EastStairs2F.s"

gExitList_FortressOfWinds_WestStairs1F:: @ 08139004
	.include "exit_lists/gExitList_FortressOfWinds_WestStairs1F.s"

gExitList_FortressOfWinds_CenterStairs1F:: @ 08139040
	.include "exit_lists/gExitList_FortressOfWinds_CenterStairs1F.s"

gExitList_FortressOfWinds_EastStairs1F:: @ 0813907C
	.include "exit_lists/gExitList_FortressOfWinds_EastStairs1F.s"

gExitList_FortressOfWinds_Wizzrobe:: @ 081390B8
	.include "exit_lists/gExitList_FortressOfWinds_Wizzrobe.s"

gExitList_FortressOfWinds_HeartPiece:: @ 081390E0
	.include "exit_lists/gExitList_FortressOfWinds_HeartPiece.s"

gExitLists_FortressOfWinds:: @ 08139108
	.4byte gExitList_NoExitList
	.4byte gExitList_FortressOfWinds_BeforeMazaal
	.4byte gExitList_FortressOfWinds_EastKeyLever
	.4byte gExitList_FortressOfWinds_PitPlatforms
	.4byte gExitList_FortressOfWinds_WestKeyLever
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_FortressOfWinds_Mazaal
	.4byte gExitList_FortressOfWinds_Stalfos
	.4byte gExitList_FortressOfWinds_EntranceMoleMitts
	.4byte gExitList_FortressOfWinds_Main2F
	.4byte gExitList_FortressOfWinds_MinishHole
	.4byte gExitList_FortressOfWinds_BossKey
	.4byte gExitList_FortressOfWinds_WestStairs2F
	.4byte gExitList_FortressOfWinds_EastStairs2F
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_FortressOfWinds_WestStairs1F
	.4byte gExitList_FortressOfWinds_CenterStairs1F
	.4byte gExitList_FortressOfWinds_EastStairs1F
	.4byte gExitList_FortressOfWinds_Wizzrobe
	.4byte gExitList_FortressOfWinds_HeartPiece
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_FortressOfWindsTop_Main:: @ 081391A8
	.include "exit_lists/gExitList_FortressOfWindsTop_Main.s"

gExitLists_FortressOfWindsTop:: @ 081391D0
	.4byte gExitList_FortressOfWindsTop_Main

gExitList_InnerMazaal_Main:: @ 081391D4
	.include "exit_lists/gExitList_InnerMazaal_Main.s"

gExitLists_InnerMazaal:: @ 081391FC
	.4byte gExitList_InnerMazaal_Main
	.4byte gExitList_InnerMazaal_Main

gExitList_TempleOfDroplets_WestHole:: @ 08139204
	.include "exit_lists/gExitList_TempleOfDroplets_WestHole.s"

gExitList_TempleOfDroplets_EastHole:: @ 0813922C
	.include "exit_lists/gExitList_TempleOfDroplets_EastHole.s"

gExitList_TempleOfDroplets_HoleToBlueChuchu:: @ 08139254
	.include "exit_lists/gExitList_TempleOfDroplets_HoleToBlueChuchu.s"

gExitList_TempleOfDroplets_BigBlueChuchu:: @ 08139290
	.include "exit_lists/gExitList_TempleOfDroplets_BigBlueChuchu.s"

gExitList_TempleOfDroplets_BigBlueChuchuKey:: @ 081392B8
	.include "exit_lists/gExitList_TempleOfDroplets_BigBlueChuchuKey.s"

gExitList_TempleOfDroplets_BossKey:: @ 081392E0
	.include "exit_lists/gExitList_TempleOfDroplets_BossKey.s"

gExitList_TempleOfDroplets_NorthSmallKey:: @ 08139308
	.include "exit_lists/gExitList_TempleOfDroplets_NorthSmallKey.s"

gExitList_TempleOfDroplets_BlueChuchuKeyLever:: @ 08139330
	.include "exit_lists/gExitList_TempleOfDroplets_BlueChuchuKeyLever.s"

gExitList_TempleOfDroplets_Entrance:: @ 0813936C
	.include "exit_lists/gExitList_TempleOfDroplets_Entrance.s"

gExitList_TempleOfDroplets_WaterfallNortheast:: @ 08139394
	.include "exit_lists/gExitList_TempleOfDroplets_WaterfallNortheast.s"

gExitList_TempleOfDroplets_Element:: @ 081393BC
	.include "exit_lists/gExitList_TempleOfDroplets_Element.s"

gExitList_TempleOfDroplets_IceCorner:: @ 08139434
	.include "exit_lists/gExitList_TempleOfDroplets_IceCorner.s"

gExitList_TempleOfDroplets_BigOcto:: @ 0813945C
	.include "exit_lists/gExitList_TempleOfDroplets_BigOcto.s"

gExitList_TempleOfDroplets_NorthwestStairs:: @ 08139484
	.include "exit_lists/gExitList_TempleOfDroplets_NorthwestStairs.s"

gExitList_TempleOfDroplets_ScissorsMiniboss:: @ 081394AC
	.include "exit_lists/gExitList_TempleOfDroplets_ScissorsMiniboss.s"

gExitList_TempleOfDroplets_WaterfallSouthwest:: @ 081394D4
	.include "exit_lists/gExitList_TempleOfDroplets_WaterfallSouthwest.s"

gExitList_TempleOfDroplets_ToBigBlueChuchu:: @ 081394FC
	.include "exit_lists/gExitList_TempleOfDroplets_ToBigBlueChuchu.s"

gExitList_TempleOfDroplets_BlockCloneIceBridge:: @ 08139538
	.include "exit_lists/gExitList_TempleOfDroplets_BlockCloneIceBridge.s"

gExitList_TempleOfDroplets_StairsToScissorsMiniboss:: @ 08139560
	.include "exit_lists/gExitList_TempleOfDroplets_StairsToScissorsMiniboss.s"

gExitList_TempleOfDroplets_LilypadWestB2:: @ 08139588
	.include "exit_lists/gExitList_TempleOfDroplets_LilypadWestB2.s"

gExitList_TempleOfDroplets_CompassRoom:: @ 081395B0
	.include "exit_lists/gExitList_TempleOfDroplets_CompassRoom.s"

gExitLists_TempleOfDroplets:: @ 081395D8
	.4byte gExitList_TempleOfDroplets_WestHole
	.4byte gExitList_NoExitList
	.4byte gExitList_TempleOfDroplets_EastHole
	.4byte gExitList_TempleOfDroplets_Entrance
	.4byte gExitList_TempleOfDroplets_NorthwestStairs
	.4byte gExitList_TempleOfDroplets_ScissorsMiniboss
	.4byte gExitList_NoExitList
	.4byte gExitList_TempleOfDroplets_WaterfallNortheast
	.4byte gExitList_TempleOfDroplets_Element
	.4byte gExitList_TempleOfDroplets_IceCorner
	.4byte gExitList_NoExitList
	.4byte gExitList_TempleOfDroplets_HoleToBlueChuchu
	.4byte gExitList_NoExitList
	.4byte gExitList_TempleOfDroplets_WaterfallSouthwest
	.4byte gExitList_TempleOfDroplets_BigOcto
	.4byte gExitList_TempleOfDroplets_ToBigBlueChuchu
	.4byte gExitList_TempleOfDroplets_BigBlueChuchu
	.4byte gExitList_TempleOfDroplets_BigBlueChuchuKey
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_TempleOfDroplets_BossKey
	.4byte gExitList_TempleOfDroplets_NorthSmallKey
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_TempleOfDroplets_BlockCloneIceBridge
	.4byte gExitList_TempleOfDroplets_StairsToScissorsMiniboss
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_TempleOfDroplets_BlueChuchuKeyLever
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_TempleOfDroplets_LilypadWestB2
	.4byte gExitList_TempleOfDroplets_CompassRoom
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_61_0:: @ 081396D8
	.include "exit_lists/gExitList_61_0.s"

gExitLists_61:: @ 08139714
	.4byte gExitList_61_0

gExitList_RoyalCrypt_WaterRope:: @ 08139718
	.include "exit_lists/gExitList_RoyalCrypt_WaterRope.s"

gExitList_RoyalCrypt_Gibdo:: @ 0813972C
	.include "exit_lists/gExitList_RoyalCrypt_Gibdo.s"

gExitList_RoyalCrypt_KeyBlock:: @ 08139754
	.include "exit_lists/gExitList_RoyalCrypt_KeyBlock.s"

gExitList_RoyalCrypt_MushroomPit:: @ 08139790
	.include "exit_lists/gExitList_RoyalCrypt_MushroomPit.s"

gExitList_RoyalCrypt_Entrance:: @ 081397B8
	.include "exit_lists/gExitList_RoyalCrypt_Entrance.s"

gExitLists_RoyalCrypt:: @ 081397E0
	.4byte gExitList_NoExitList
	.4byte gExitList_RoyalCrypt_WaterRope
	.4byte gExitList_RoyalCrypt_Gibdo
	.4byte gExitList_NoExitList
	.4byte gExitList_RoyalCrypt_KeyBlock
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_RoyalCrypt_MushroomPit
	.4byte gExitList_RoyalCrypt_Entrance

gExitList_PalaceOfWinds_0:: @ 08139804
	.include "exit_lists/gExitList_PalaceOfWinds_0.s"

gExitList_PalaceOfWinds_3:: @ 0813982C
	.include "exit_lists/gExitList_PalaceOfWinds_3.s"

gExitList_PalaceOfWinds_8:: @ 08139854
	.include "exit_lists/gExitList_PalaceOfWinds_8.s"

gExitList_PalaceOfWinds_9:: @ 0813987C
	.include "exit_lists/gExitList_PalaceOfWinds_9.s"

gExitList_PalaceOfWinds_10:: @ 081398A4
	.include "exit_lists/gExitList_PalaceOfWinds_10.s"

gExitList_PalaceOfWinds_11:: @ 081398CC
	.include "exit_lists/gExitList_PalaceOfWinds_11.s"

gExitList_PalaceOfWinds_13:: @ 08139908
	.include "exit_lists/gExitList_PalaceOfWinds_13.s"

gExitList_PalaceOfWinds_14:: @ 08139944
	.include "exit_lists/gExitList_PalaceOfWinds_14.s"

gExitList_PalaceOfWinds_16:: @ 08139980
	.include "exit_lists/gExitList_PalaceOfWinds_16.s"

gExitList_PalaceOfWinds_18:: @ 081399A8
	.include "exit_lists/gExitList_PalaceOfWinds_18.s"

gExitList_PalaceOfWinds_21:: @ 081399D0
	.include "exit_lists/gExitList_PalaceOfWinds_21.s"

gExitList_PalaceOfWinds_23:: @ 08139A34
	.include "exit_lists/gExitList_PalaceOfWinds_23.s"

gExitList_PalaceOfWinds_26:: @ 08139A5C
	.include "exit_lists/gExitList_PalaceOfWinds_26.s"

gExitList_PalaceOfWinds_30:: @ 08139A84
	.include "exit_lists/gExitList_PalaceOfWinds_30.s"

gExitList_PalaceOfWinds_32:: @ 08139AAC
	.include "exit_lists/gExitList_PalaceOfWinds_32.s"

gExitList_PalaceOfWinds_35:: @ 08139AFC
	.include "exit_lists/gExitList_PalaceOfWinds_35.s"

gExitList_PalaceOfWinds_36:: @ 08139B24
	.include "exit_lists/gExitList_PalaceOfWinds_36.s"

gExitList_PalaceOfWinds_40:: @ 08139B4C
	.include "exit_lists/gExitList_PalaceOfWinds_40.s"

gExitList_PalaceOfWinds_42:: @ 08139B88
	.include "exit_lists/gExitList_PalaceOfWinds_42.s"

gExitList_PalaceOfWinds_47:: @ 08139BC4
	.include "exit_lists/gExitList_PalaceOfWinds_47.s"

gExitList_PalaceOfWinds_50:: @ 08139BEC
	.include "exit_lists/gExitList_PalaceOfWinds_50.s"

gExitLists_PalaceOfWinds:: @ 08139C28
	.4byte gExitList_PalaceOfWinds_0
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_3
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_8
	.4byte gExitList_PalaceOfWinds_9
	.4byte gExitList_PalaceOfWinds_10
	.4byte gExitList_PalaceOfWinds_11
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_13
	.4byte gExitList_PalaceOfWinds_14
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_16
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_18
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_21
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_23
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_26
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_30
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_32
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_35
	.4byte gExitList_PalaceOfWinds_36
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_40
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_42
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_47
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_PalaceOfWinds_50
	.4byte gExitList_NoExitList
	.4byte 0x0000ffff
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gExitList_DarkHyruleCastle_0:: @ 08139D0C
	.include "exit_lists/gExitList_DarkHyruleCastle_0.s"

gExitList_DarkHyruleCastle_1:: @ 08139D5C
	.include "exit_lists/gExitList_DarkHyruleCastle_1.s"

gExitList_DarkHyruleCastle_2:: @ 08139D84
	.include "exit_lists/gExitList_DarkHyruleCastle_2.s"

gExitList_DarkHyruleCastle_3:: @ 08139DAC
	.include "exit_lists/gExitList_DarkHyruleCastle_3.s"

gExitList_DarkHyruleCastle_4:: @ 08139DD4
	.include "exit_lists/gExitList_DarkHyruleCastle_4.s"

gExitList_DarkHyruleCastle_5:: @ 08139DFC
	.include "exit_lists/gExitList_DarkHyruleCastle_5.s"

gExitList_DarkHyruleCastle_6:: @ 08139E38
	.include "exit_lists/gExitList_DarkHyruleCastle_6.s"

gExitList_DarkHyruleCastle_7:: @ 08139E74
	.include "exit_lists/gExitList_DarkHyruleCastle_7.s"

gExitList_DarkHyruleCastle_13:: @ 08139EC4
	.include "exit_lists/gExitList_DarkHyruleCastle_13.s"

gExitList_DarkHyruleCastle_18:: @ 08139F14
	.include "exit_lists/gExitList_DarkHyruleCastle_18.s"

gExitList_DarkHyruleCastle_20:: @ 08139F50
	.include "exit_lists/gExitList_DarkHyruleCastle_20.s"

gExitList_DarkHyruleCastle_23:: @ 08139F78
	.include "exit_lists/gExitList_DarkHyruleCastle_23.s"

gExitList_DarkHyruleCastle_25:: @ 08139FA0
	.include "exit_lists/gExitList_DarkHyruleCastle_25.s"

gExitList_DarkHyruleCastle_26:: @ 08139FF0
	.include "exit_lists/gExitList_DarkHyruleCastle_26.s"

gExitList_DarkHyruleCastle_28:: @ 0813A018
	.include "exit_lists/gExitList_DarkHyruleCastle_28.s"

gExitList_DarkHyruleCastle_29:: @ 0813A040
	.include "exit_lists/gExitList_DarkHyruleCastle_29.s"

gExitList_DarkHyruleCastle_30:: @ 0813A090
	.include "exit_lists/gExitList_DarkHyruleCastle_30.s"

gExitList_DarkHyruleCastle_31:: @ 0813A0B8
	.include "exit_lists/gExitList_DarkHyruleCastle_31.s"

gExitList_DarkHyruleCastle_32:: @ 0813A0E0
	.include "exit_lists/gExitList_DarkHyruleCastle_32.s"

gExitList_DarkHyruleCastle_33:: @ 0813A108
	.include "exit_lists/gExitList_DarkHyruleCastle_33.s"

gExitList_DarkHyruleCastle_34:: @ 0813A130
	.include "exit_lists/gExitList_DarkHyruleCastle_34.s"

gExitList_DarkHyruleCastle_43:: @ 0813A158
	.include "exit_lists/gExitList_DarkHyruleCastle_43.s"

gExitList_DarkHyruleCastle_44:: @ 0813A180
	.include "exit_lists/gExitList_DarkHyruleCastle_44.s"

gExitList_DarkHyruleCastle_45:: @ 0813A1A8
	.include "exit_lists/gExitList_DarkHyruleCastle_45.s"

gExitList_DarkHyruleCastle_46:: @ 0813A1D0
	.include "exit_lists/gExitList_DarkHyruleCastle_46.s"

gExitList_DarkHyruleCastle_47:: @ 0813A1F8
	.include "exit_lists/gExitList_DarkHyruleCastle_47.s"

gExitList_DarkHyruleCastle_48:: @ 0813A220
	.include "exit_lists/gExitList_DarkHyruleCastle_48.s"

gExitList_DarkHyruleCastle_55:: @ 0813A248
	.include "exit_lists/gExitList_DarkHyruleCastle_55.s"

gExitList_DarkHyruleCastle_56:: @ 0813A284
	.include "exit_lists/gExitList_DarkHyruleCastle_56.s"

gExitLists_DarkHyruleCastle:: @ 0813A2AC
	.4byte gExitList_DarkHyruleCastle_0
	.4byte gExitList_DarkHyruleCastle_1
	.4byte gExitList_DarkHyruleCastle_2
	.4byte gExitList_DarkHyruleCastle_3
	.4byte gExitList_DarkHyruleCastle_4
	.4byte gExitList_DarkHyruleCastle_5
	.4byte gExitList_DarkHyruleCastle_6
	.4byte gExitList_DarkHyruleCastle_7
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DarkHyruleCastle_13
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DarkHyruleCastle_18
	.4byte gExitList_NoExitList
	.4byte gExitList_DarkHyruleCastle_20
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DarkHyruleCastle_23
	.4byte gExitList_NoExitList
	.4byte gExitList_DarkHyruleCastle_25
	.4byte gExitList_DarkHyruleCastle_26
	.4byte gExitList_NoExitList
	.4byte gExitList_DarkHyruleCastle_28
	.4byte gExitList_DarkHyruleCastle_29
	.4byte gExitList_DarkHyruleCastle_30
	.4byte gExitList_DarkHyruleCastle_31
	.4byte gExitList_DarkHyruleCastle_32
	.4byte gExitList_DarkHyruleCastle_33
	.4byte gExitList_DarkHyruleCastle_34
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DarkHyruleCastle_43
	.4byte gExitList_DarkHyruleCastle_44
	.4byte gExitList_DarkHyruleCastle_45
	.4byte gExitList_DarkHyruleCastle_46
	.4byte gExitList_DarkHyruleCastle_47
	.4byte gExitList_DarkHyruleCastle_48
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_DarkHyruleCastle_55
	.4byte gExitList_DarkHyruleCastle_56
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte 0x0000ffff
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gExitList_DarkHyruleCastleOutside_ZeldaStatuePlatform:: @ 0813A3C0
	.include "exit_lists/gExitList_DarkHyruleCastleOutside_ZeldaStatuePlatform.s"

gExitList_DarkHyruleCastleOutside_Garden:: @ 0813A3E8
	.include "exit_lists/gExitList_DarkHyruleCastleOutside_Garden.s"

gExitList_DarkHyruleCastleOutside_OutsideNorthwest:: @ 0813A424
	.include "exit_lists/gExitList_DarkHyruleCastleOutside_OutsideNorthwest.s"

gExitList_DarkHyruleCastleOutside_OutsideNortheast:: @ 0813A44C
	.include "exit_lists/gExitList_DarkHyruleCastleOutside_OutsideNortheast.s"

gExitList_DarkHyruleCastleOutside_OutsideEast:: @ 0813A474
	.include "exit_lists/gExitList_DarkHyruleCastleOutside_OutsideEast.s"

gExitList_DarkHyruleCastleOutside_OutsideSouthwest:: @ 0813A4B0
	.include "exit_lists/gExitList_DarkHyruleCastleOutside_OutsideSouthwest.s"

gExitList_DarkHyruleCastleOutside_OutsideSouth:: @ 0813A4D8
	.include "exit_lists/gExitList_DarkHyruleCastleOutside_OutsideSouth.s"

gExitList_DarkHyruleCastleOutside_OutsideSoutheast:: @ 0813A514
	.include "exit_lists/gExitList_DarkHyruleCastleOutside_OutsideSoutheast.s"

gExitLists_DarkHyruleCastleOutside:: @ 0813A53C
	.4byte gExitList_DarkHyruleCastleOutside_ZeldaStatuePlatform
	.4byte gExitList_DarkHyruleCastleOutside_Garden
	.4byte gExitList_DarkHyruleCastleOutside_OutsideNorthwest
	.4byte gExitList_DarkHyruleCastleOutside_OutsideNortheast
	.4byte gExitList_DarkHyruleCastleOutside_OutsideEast
	.4byte gExitList_DarkHyruleCastleOutside_OutsideSouthwest
	.4byte gExitList_DarkHyruleCastleOutside_OutsideSouth
	.4byte gExitList_DarkHyruleCastleOutside_OutsideSoutheast

gExitList_VaatisArms_First:: @ 0813A55C
	.include "exit_lists/gExitList_VaatisArms_First.s"

gExitList_VaatisArms_Second:: @ 0813A584
	.include "exit_lists/gExitList_VaatisArms_Second.s"

gExitLists_VaatisArms:: @ 0813A5AC
	.4byte gExitList_VaatisArms_First
	.4byte gExitList_VaatisArms_Second

gExitList_DarkHyruleCastleBridge_Main:: @ 0813A5B4
	.include "exit_lists/gExitList_DarkHyruleCastleBridge_Main.s"

gExitLists_DarkHyruleCastleBridge:: @ 0813A5F0
	.4byte gExitList_DarkHyruleCastleBridge_Main

gExitList_HyruleCastle_0:: @ 0813A5F4
	.include "exit_lists/gExitList_HyruleCastle_0.s"

gExitList_HyruleCastle_1:: @ 0813A630
	.include "exit_lists/gExitList_HyruleCastle_1.s"

gExitList_HyruleCastle_3:: @ 0813A66C
	.include "exit_lists/gExitList_HyruleCastle_3.s"

gExitLists_HyruleCastle:: @ 0813A6E4
	.4byte gExitList_HyruleCastle_0
	.4byte gExitList_HyruleCastle_1
	.4byte gExitList_NoExitList
	.4byte gExitList_HyruleCastle_3
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList
	.4byte gExitList_NoExitList

gExitList_SanctuaryEntrance_Main:: @ 0813A704
	.include "exit_lists/gExitList_SanctuaryEntrance_Main.s"

gExitLists_SanctuaryEntrance:: @ 0813A740
	.4byte gExitList_SanctuaryEntrance_Main

gExitList_Sanctuary_Hall:: @ 0813A744
	.include "exit_lists/gExitList_Sanctuary_Hall.s"

gUnk_0813A76C:: @ 0813A76C
	.incbin "data_08132B30/gUnk_0813A76C.bin"

gExitList_Sanctuary_Main:: @ 0813A794
	.include "exit_lists/gExitList_Sanctuary_Main.s"

gExitList_Sanctuary_StainedGlass:: @ 0813A7BC
	.include "exit_lists/gExitList_Sanctuary_StainedGlass.s"

gExitLists_Sanctuary:: @ 0813A7E4
	.4byte gExitList_Sanctuary_Hall
	.4byte gExitList_Sanctuary_Main
	.4byte gExitList_Sanctuary_StainedGlass

gExitLists:: @ 0813A7F0
	.4byte gExitLists_MinishWoods
	.4byte gExitLists_MinishVillage
	.4byte gExitLists_HyruleTown
	.4byte gExitLists_HyruleField
	.4byte gExitLists_CastorWilds
	.4byte gExitLists_Ruins
	.4byte gExitLists_MtCrenel
	.4byte gExitLists_CastleGarden
	.4byte gExitLists_CloudTops
	.4byte gExitLists_RoyalValley
	.4byte gExitLists_VeilFalls
	.4byte gExitLists_LakeHylia
	.4byte gExitLists_LakeWoodsCave
	.4byte gExitLists_Beanstalks
	.4byte gExitLists_NoExit
	.4byte gExitLists_HyruleDigCaves
	.4byte gExitLists_MelarisMine
	.4byte gExitLists_MinishPaths1
	.4byte gExitLists_CrenelMinishPaths
	.4byte gExitLists_DigCaves1
	.4byte gExitLists_NoExit
	.4byte gExitLists_FestivalTown
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_OuterFortressOfWinds
	.4byte gExitLists_HyliaDigCaves
	.4byte gExitLists_VeilFallsTop
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_MinishHouseInteriors
	.4byte gExitLists_HouseInteriors1
	.4byte gExitLists_HouseInteriors2
	.4byte gExitLists_HouseInteriors3
	.4byte gExitLists_TreeInteriors
	.4byte gExitLists_Dojos
	.4byte gExitLists_CrenelCaves
	.4byte gExitLists_MinishCracks
	.4byte gExitLists_HouseInteriors4
	.4byte gExitLists_GreatFairies
	.4byte gExitLists_CastorCaves
	.4byte gExitLists_CastorDarknut
	.4byte gExitLists_ArmosInteriors
	.4byte gExitLists_TownMinishHoles
	.4byte gExitLists_MinishRafters
	.4byte gExitLists_GoronCave
	.4byte gExitLists_WindTribeTower
	.4byte gExitLists_WindTribeTowerRoof
	.4byte gExitLists_Caves
	.4byte gExitLists_VeilFallsCaves
	.4byte gExitLists_RoyalValleyGraves
	.4byte gExitLists_MinishCaves
	.4byte gExitLists_CastleGardenMinishHoles
	.4byte gExitLists_37
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_40
	.4byte gExitLists_HyruleTownUnderground
	.4byte gExitLists_GardenFountains
	.4byte gExitLists_HyruleCastleCellar
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_40
	.4byte gExitLists_NoExit
	.4byte gExitLists_DeepwoodShrine
	.4byte gExitLists_DeepwoodShrineBoss
	.4byte gExitLists_DeepwoodShrineEntry
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_CaveOfFlames
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.ifndef DEMO_USA
	.4byte gExitLists_FortressOfWinds
	.4byte gExitLists_FortressOfWindsTop
	.4byte gExitLists_InnerMazaal
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.endif
	.4byte gExitLists_TempleOfDroplets
	.4byte gExitLists_61
	.4byte gExitLists_HyruleTownMinishCaves
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_RoyalCrypt
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_PalaceOfWinds
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_Sanctuary
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_HyruleCastle
	.4byte gExitLists_SanctuaryEntrance
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_DarkHyruleCastle
	.4byte gExitLists_DarkHyruleCastleOutside
	.4byte gExitLists_VaatisArms
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_DarkHyruleCastleBridge
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
