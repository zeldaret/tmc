.include "asm/macros/sounds.inc"
.section .rodata


sfxNone_track0:: @ 08DCC47C
	.incbin "baserom.gba", 0xDCC47C, 0x0000010
sfxNone:: @ 08DCC48C
	sound_header 1 0 0xff 0x80 gUnk_089FC99C sfxNone_track0

bgmCastleTournament_track0:: @ 08DCC498
	.incbin "baserom.gba", 0xDCC498, 0x000005B
bgmCastleTournament_track1:: @ 08DCC4F3
	.incbin "baserom.gba", 0xDCC4F3, 0x0000031
gUnk_08DCC524:: @ 08DCC524
	.incbin "baserom.gba", 0xDCC524, 0x000000D
bgmCastleTournament_track2:: @ 08DCC531
	.incbin "baserom.gba", 0xDCC531, 0x0000037
bgmCastleTournament_track3:: @ 08DCC568
	.incbin "baserom.gba", 0xDCC568, 0x000003A
gUnk_08DCC5A2:: @ 08DCC5A2
	.incbin "baserom.gba", 0xDCC5A2, 0x0000033
bgmCastleTournament_track4:: @ 08DCC5D5
	.incbin "baserom.gba", 0xDCC5D5, 0x000003F
gUnk_08DCC614:: @ 08DCC614
	.incbin "baserom.gba", 0xDCC614, 0x0000021
bgmCastleTournament_track5:: @ 08DCC635
	.incbin "baserom.gba", 0xDCC635, 0x0000071
bgmCastleTournament_track6:: @ 08DCC6A6
	.incbin "baserom.gba", 0xDCC6A6, 0x0000026
bgmCastleTournament:: @ 08DCC6CC
	sound_header 7 0 0 0x9e gUnk_089FC9FC bgmCastleTournament_track0 bgmCastleTournament_track1 bgmCastleTournament_track2 bgmCastleTournament_track3 bgmCastleTournament_track4 bgmCastleTournament_track5 bgmCastleTournament_track6

bgmVaatiMotif_track0:: @ 08DCC6F0
	.incbin "baserom.gba", 0xDCC6F0, 0x0000038
bgmVaatiMotif_track1:: @ 08DCC728
	.incbin "baserom.gba", 0xDCC728, 0x000003C
bgmVaatiMotif_track2:: @ 08DCC764
	.incbin "baserom.gba", 0xDCC764, 0x000003C
bgmVaatiMotif_track3:: @ 08DCC7A0
	.incbin "baserom.gba", 0xDCC7A0, 0x000000B
gUnk_08DCC7AB:: @ 08DCC7AB
	.incbin "baserom.gba", 0xDCC7AB, 0x0000031
bgmVaatiMotif_track4:: @ 08DCC7DC
	.incbin "baserom.gba", 0xDCC7DC, 0x000003C
bgmVaatiMotif_track5:: @ 08DCC818
	.incbin "baserom.gba", 0xDCC818, 0x000002C
bgmVaatiMotif:: @ 08DCC844
	sound_header 6 0 0 0xa8 gUnk_089FCFFC bgmVaatiMotif_track0 bgmVaatiMotif_track1 bgmVaatiMotif_track2 bgmVaatiMotif_track3 bgmVaatiMotif_track4 bgmVaatiMotif_track5

bgmTitleScreen_track0:: @ 08DCC864
	.incbin "baserom.gba", 0xDCC864, 0x0000034
bgmTitleScreen_track1:: @ 08DCC898
	.incbin "baserom.gba", 0xDCC898, 0x000002F
bgmTitleScreen_track2:: @ 08DCC8C7
	.incbin "baserom.gba", 0xDCC8C7, 0x000003B
bgmTitleScreen_track3:: @ 08DCC902
	.incbin "baserom.gba", 0xDCC902, 0x0000050
bgmTitleScreen_track4:: @ 08DCC952
	.incbin "baserom.gba", 0xDCC952, 0x000003B
bgmTitleScreen_track5:: @ 08DCC98D
	.incbin "baserom.gba", 0xDCC98D, 0x000000C
gUnk_08DCC999:: @ 08DCC999
	.incbin "baserom.gba", 0xDCC999, 0x0000016
bgmTitleScreen_track6:: @ 08DCC9AF
	.incbin "baserom.gba", 0xDCC9AF, 0x0000045
bgmTitleScreen:: @ 08DCC9F4
	sound_header 7 0 0 0xa8 gUnk_089FD5FC bgmTitleScreen_track0 bgmTitleScreen_track1 bgmTitleScreen_track2 bgmTitleScreen_track3 bgmTitleScreen_track4 bgmTitleScreen_track5 bgmTitleScreen_track6

bgmCastleMotif_track0:: @ 08DCCA18
	.incbin "baserom.gba", 0xDCCA18, 0x000003E
bgmCastleMotif_track1:: @ 08DCCA56
	.incbin "baserom.gba", 0xDCCA56, 0x0000034
bgmCastleMotif_track2:: @ 08DCCA8A
	.incbin "baserom.gba", 0xDCCA8A, 0x0000038
bgmCastleMotif_track3:: @ 08DCCAC2
	.incbin "baserom.gba", 0xDCCAC2, 0x0000038
bgmCastleMotif_track4:: @ 08DCCAFA
	.incbin "baserom.gba", 0xDCCAFA, 0x0000042
bgmCastleMotif:: @ 08DCCB3C
	sound_header 5 0 0 0xa8 gUnk_089FDBFC bgmCastleMotif_track0 bgmCastleMotif_track1 bgmCastleMotif_track2 bgmCastleMotif_track3 bgmCastleMotif_track4

bgmElementGet_track0:: @ 08DCCB58
	.incbin "baserom.gba", 0xDCCB58, 0x0000038
bgmElementGet_track1:: @ 08DCCB90
	.incbin "baserom.gba", 0xDCCB90, 0x0000018
bgmElementGet_track2:: @ 08DCCBA8
	.incbin "baserom.gba", 0xDCCBA8, 0x0000044
bgmElementGet_track3:: @ 08DCCBEC
	.incbin "baserom.gba", 0xDCCBEC, 0x0000061
bgmElementGet_track4:: @ 08DCCC4D
	.incbin "baserom.gba", 0xDCCC4D, 0x000003A
bgmElementGet_track5:: @ 08DCCC87
	.incbin "baserom.gba", 0xDCCC87, 0x000000E
gUnk_08DCCC95:: @ 08DCCC95
	.incbin "baserom.gba", 0xDCCC95, 0x000001C
bgmElementGet_track6:: @ 08DCCCB1
	.incbin "baserom.gba", 0xDCCCB1, 0x0000014
bgmElementGet_track7:: @ 08DCCCC5
	.incbin "baserom.gba", 0xDCCCC5, 0x0000007
gUnk_08DCCCCC:: @ 08DCCCCC
	.incbin "baserom.gba", 0xDCCCCC, 0x000002E
bgmElementGet_track8:: @ 08DCCCFA
	.incbin "baserom.gba", 0xDCCCFA, 0x0000046
bgmElementGet:: @ 08DCCD40
	sound_header 9 0 0 0xa8 gUnk_089FDDF4 bgmElementGet_track0 bgmElementGet_track1 bgmElementGet_track2 bgmElementGet_track3 bgmElementGet_track4 bgmElementGet_track5 bgmElementGet_track6 bgmElementGet_track7 bgmElementGet_track8

bgmFairyFountain_track0:: @ 08DCCD6C
	.incbin "baserom.gba", 0xDCCD6C, 0x0000036
gUnk_08DCCDA2:: @ 08DCCDA2
	.incbin "baserom.gba", 0xDCCDA2, 0x000000F
gUnk_08DCCDB1:: @ 08DCCDB1
	.incbin "baserom.gba", 0xDCCDB1, 0x0000041
bgmFairyFountain_track1:: @ 08DCCDF2
	.incbin "baserom.gba", 0xDCCDF2, 0x0000022
gUnk_08DCCE14:: @ 08DCCE14
	.incbin "baserom.gba", 0xDCCE14, 0x0000060
bgmFairyFountain_track2:: @ 08DCCE74
	.incbin "baserom.gba", 0xDCCE74, 0x0000024
gUnk_08DCCE98:: @ 08DCCE98
	.incbin "baserom.gba", 0xDCCE98, 0x0000033
gUnk_08DCCECB:: @ 08DCCECB
	.incbin "baserom.gba", 0xDCCECB, 0x000001A
gUnk_08DCCEE5:: @ 08DCCEE5
	.incbin "baserom.gba", 0xDCCEE5, 0x0000013
bgmFairyFountain_track3:: @ 08DCCEF8
	.incbin "baserom.gba", 0xDCCEF8, 0x0000024
gUnk_08DCCF1C:: @ 08DCCF1C
	.incbin "baserom.gba", 0xDCCF1C, 0x0000061
bgmFairyFountain_track4:: @ 08DCCF7D
	.incbin "baserom.gba", 0xDCCF7D, 0x000005F
bgmFairyFountain_track5:: @ 08DCCFDC
	.incbin "baserom.gba", 0xDCCFDC, 0x00000BE
bgmFairyFountain_track6:: @ 08DCD09A
	.incbin "baserom.gba", 0xDCD09A, 0x000002E
bgmFairyFountain:: @ 08DCD0C8
	sound_header 7 0 0 0xb2 gUnk_089FE3F4 bgmFairyFountain_track0 bgmFairyFountain_track1 bgmFairyFountain_track2 bgmFairyFountain_track3 bgmFairyFountain_track4 bgmFairyFountain_track5 bgmFairyFountain_track6

bgmFileSelect_track0:: @ 08DCD0EC
	.incbin "baserom.gba", 0xDCD0EC, 0x000003F
gUnk_08DCD12B:: @ 08DCD12B
	.incbin "baserom.gba", 0xDCD12B, 0x0000034
gUnk_08DCD15F:: @ 08DCD15F
	.incbin "baserom.gba", 0xDCD15F, 0x000002F
bgmFileSelect_track1:: @ 08DCD18E
	.incbin "baserom.gba", 0xDCD18E, 0x0000019
gUnk_08DCD1A7:: @ 08DCD1A7
	.incbin "baserom.gba", 0xDCD1A7, 0x0000010
gUnk_08DCD1B7:: @ 08DCD1B7
	.incbin "baserom.gba", 0xDCD1B7, 0x0000015
gUnk_08DCD1CC:: @ 08DCD1CC
	.incbin "baserom.gba", 0xDCD1CC, 0x0000064
bgmFileSelect_track2:: @ 08DCD230
	.incbin "baserom.gba", 0xDCD230, 0x000002E
bgmFileSelect_track3:: @ 08DCD25E
	.incbin "baserom.gba", 0xDCD25E, 0x000002A
gUnk_08DCD288:: @ 08DCD288
	.incbin "baserom.gba", 0xDCD288, 0x0000062
bgmFileSelect_track4:: @ 08DCD2EA
	.incbin "baserom.gba", 0xDCD2EA, 0x0000002
gUnk_08DCD2EC:: @ 08DCD2EC
	.incbin "baserom.gba", 0xDCD2EC, 0x0000086
bgmFileSelect_track5:: @ 08DCD372
	.incbin "baserom.gba", 0xDCD372, 0x00000A1
bgmFileSelect_track6:: @ 08DCD413
	.incbin "baserom.gba", 0xDCD413, 0x0000007
gUnk_08DCD41A:: @ 08DCD41A
	.incbin "baserom.gba", 0xDCD41A, 0x0000046
gUnk_08DCD460:: @ 08DCD460
	.incbin "baserom.gba", 0xDCD460, 0x000004C
bgmFileSelect:: @ 08DCD4AC
	sound_header 7 0 0 0xbc gUnk_089FE6B8 bgmFileSelect_track0 bgmFileSelect_track1 bgmFileSelect_track2 bgmFileSelect_track3 bgmFileSelect_track4 bgmFileSelect_track5 bgmFileSelect_track6

bgmIntorCutscene_track0:: @ 08DCD4D0
	.incbin "baserom.gba", 0xDCD4D0, 0x0000027
gUnk_08DCD4F7:: @ 08DCD4F7
	.incbin "baserom.gba", 0xDCD4F7, 0x0000043
gUnk_08DCD53A:: @ 08DCD53A
	.incbin "baserom.gba", 0xDCD53A, 0x000002C
gUnk_08DCD566:: @ 08DCD566
	.incbin "baserom.gba", 0xDCD566, 0x0000018
gUnk_08DCD57E:: @ 08DCD57E
	.incbin "baserom.gba", 0xDCD57E, 0x000003E
gUnk_08DCD5BC:: @ 08DCD5BC
	.incbin "baserom.gba", 0xDCD5BC, 0x0000073
bgmIntorCutscene_track1:: @ 08DCD62F
	.incbin "baserom.gba", 0xDCD62F, 0x0000014
gUnk_08DCD643:: @ 08DCD643
	.incbin "baserom.gba", 0xDCD643, 0x00000C9
gUnk_08DCD70C:: @ 08DCD70C
	.incbin "baserom.gba", 0xDCD70C, 0x000001D
gUnk_08DCD729:: @ 08DCD729
	.incbin "baserom.gba", 0xDCD729, 0x000014A
bgmIntorCutscene_track2:: @ 08DCD873
	.incbin "baserom.gba", 0xDCD873, 0x0000016
gUnk_08DCD889:: @ 08DCD889
	.incbin "baserom.gba", 0xDCD889, 0x000003F
gUnk_08DCD8C8:: @ 08DCD8C8
	.incbin "baserom.gba", 0xDCD8C8, 0x00000BF
bgmIntorCutscene_track3:: @ 08DCD987
	.incbin "baserom.gba", 0xDCD987, 0x0000007
gUnk_08DCD98E:: @ 08DCD98E
	.incbin "baserom.gba", 0xDCD98E, 0x0000163
bgmIntorCutscene_track4:: @ 08DCDAF1
	.incbin "baserom.gba", 0xDCDAF1, 0x0000011
gUnk_08DCDB02:: @ 08DCDB02
	.incbin "baserom.gba", 0xDCDB02, 0x00000B8
gUnk_08DCDBBA:: @ 08DCDBBA
	.incbin "baserom.gba", 0xDCDBBA, 0x000000F
gUnk_08DCDBC9:: @ 08DCDBC9
	.incbin "baserom.gba", 0xDCDBC9, 0x00000E1
bgmIntorCutscene_track5:: @ 08DCDCAA
	.incbin "baserom.gba", 0xDCDCAA, 0x0000024
gUnk_08DCDCCE:: @ 08DCDCCE
	.incbin "baserom.gba", 0xDCDCCE, 0x0000094
gUnk_08DCDD62:: @ 08DCDD62
	.incbin "baserom.gba", 0xDCDD62, 0x000012C
bgmIntorCutscene_track6:: @ 08DCDE8E
	.incbin "baserom.gba", 0xDCDE8E, 0x0000007
gUnk_08DCDE95:: @ 08DCDE95
	.incbin "baserom.gba", 0xDCDE95, 0x0000008
gUnk_08DCDE9D:: @ 08DCDE9D
	.incbin "baserom.gba", 0xDCDE9D, 0x000008F
bgmIntorCutscene:: @ 08DCDF2C
	sound_header 7 0 0 0xb2 gUnk_08A0D544 bgmIntorCutscene_track0 bgmIntorCutscene_track1 bgmIntorCutscene_track2 bgmIntorCutscene_track3 bgmIntorCutscene_track4 bgmIntorCutscene_track5 bgmIntorCutscene_track6

bgmCredits_track0:: @ 08DCDF50
	.incbin "baserom.gba", 0xDCDF50, 0x0000152
gUnk_08DCE0A2:: @ 08DCE0A2
	.incbin "baserom.gba", 0xDCE0A2, 0x000003E
gUnk_08DCE0E0:: @ 08DCE0E0
	.incbin "baserom.gba", 0xDCE0E0, 0x000003D
gUnk_08DCE11D:: @ 08DCE11D
	.incbin "baserom.gba", 0xDCE11D, 0x0000179
bgmCredits_track1:: @ 08DCE296
	.incbin "baserom.gba", 0xDCE296, 0x000000B
gUnk_08DCE2A1:: @ 08DCE2A1
	.incbin "baserom.gba", 0xDCE2A1, 0x0000165
gUnk_08DCE406:: @ 08DCE406
	.incbin "baserom.gba", 0xDCE406, 0x0000052
gUnk_08DCE458:: @ 08DCE458
	.incbin "baserom.gba", 0xDCE458, 0x000009E
gUnk_08DCE4F6:: @ 08DCE4F6
	.incbin "baserom.gba", 0xDCE4F6, 0x0000162
bgmCredits_track2:: @ 08DCE658
	.incbin "baserom.gba", 0xDCE658, 0x000018F
gUnk_08DCE7E7:: @ 08DCE7E7
	.incbin "baserom.gba", 0xDCE7E7, 0x0000086
gUnk_08DCE86D:: @ 08DCE86D
	.incbin "baserom.gba", 0xDCE86D, 0x000013C
bgmCredits_track3:: @ 08DCE9A9
	.incbin "baserom.gba", 0xDCE9A9, 0x000005D
gUnk_08DCEA06:: @ 08DCEA06
	.incbin "baserom.gba", 0xDCEA06, 0x0000014
gUnk_08DCEA1A:: @ 08DCEA1A
	.incbin "baserom.gba", 0xDCEA1A, 0x000003D
gUnk_08DCEA57:: @ 08DCEA57
	.incbin "baserom.gba", 0xDCEA57, 0x00000DA
gUnk_08DCEB31:: @ 08DCEB31
	.incbin "baserom.gba", 0xDCEB31, 0x00000CD
gUnk_08DCEBFE:: @ 08DCEBFE
	.incbin "baserom.gba", 0xDCEBFE, 0x0000068
bgmCredits_track4:: @ 08DCEC66
	.incbin "baserom.gba", 0xDCEC66, 0x000008A
gUnk_08DCECF0:: @ 08DCECF0
	.incbin "baserom.gba", 0xDCECF0, 0x00001E6
gUnk_08DCEED6:: @ 08DCEED6
	.incbin "baserom.gba", 0xDCEED6, 0x00000F0
gUnk_08DCEFC6:: @ 08DCEFC6
	.incbin "baserom.gba", 0xDCEFC6, 0x0000023
gUnk_08DCEFE9:: @ 08DCEFE9
	.incbin "baserom.gba", 0xDCEFE9, 0x00000F5
gUnk_08DCF0DE:: @ 08DCF0DE
	.incbin "baserom.gba", 0xDCF0DE, 0x00000AB
bgmCredits_track5:: @ 08DCF189
	.incbin "baserom.gba", 0xDCF189, 0x000015D
bgmCredits_track6:: @ 08DCF2E6
	.incbin "baserom.gba", 0xDCF2E6, 0x0000138
gUnk_08DCF41E:: @ 08DCF41E
	.incbin "baserom.gba", 0xDCF41E, 0x00001AE
gUnk_08DCF5CC:: @ 08DCF5CC
	.incbin "baserom.gba", 0xDCF5CC, 0x0000060
bgmCredits_track7:: @ 08DCF62C
	.incbin "baserom.gba", 0xDCF62C, 0x00000BD
gUnk_08DCF6E9:: @ 08DCF6E9
	.incbin "baserom.gba", 0xDCF6E9, 0x000004B
bgmCredits:: @ 08DCF734
	sound_header 8 0 0 0xa8 gUnk_089FE9A0 bgmCredits_track0 bgmCredits_track1 bgmCredits_track2 bgmCredits_track3 bgmCredits_track4 bgmCredits_track5 bgmCredits_track6 bgmCredits_track7

bgmGameover_track0:: @ 08DCF75C
	.incbin "baserom.gba", 0xDCF75C, 0x0000042
gUnk_08DCF79E:: @ 08DCF79E
	.incbin "baserom.gba", 0xDCF79E, 0x0000035
bgmGameover_track1:: @ 08DCF7D3
	.incbin "baserom.gba", 0xDCF7D3, 0x0000007
gUnk_08DCF7DA:: @ 08DCF7DA
	.incbin "baserom.gba", 0xDCF7DA, 0x000000D
gUnk_08DCF7E7:: @ 08DCF7E7
	.incbin "baserom.gba", 0xDCF7E7, 0x0000042
bgmGameover_track2:: @ 08DCF829
	.incbin "baserom.gba", 0xDCF829, 0x000018C
bgmGameover_track3:: @ 08DCF9B5
	.incbin "baserom.gba", 0xDCF9B5, 0x000001B
gUnk_08DCF9D0:: @ 08DCF9D0
	.incbin "baserom.gba", 0xDCF9D0, 0x0000070
bgmGameover:: @ 08DCFA40
	sound_header 4 0 0 0xb2 gUnk_089FEFA0 bgmGameover_track0 bgmGameover_track1 bgmGameover_track2 bgmGameover_track3

bgmSavingZelda_track0:: @ 08DCFA58
	.incbin "baserom.gba", 0xDCFA58, 0x000005F
bgmSavingZelda_track1:: @ 08DCFAB7
	.incbin "baserom.gba", 0xDCFAB7, 0x0000006
gUnk_08DCFABD:: @ 08DCFABD
	.incbin "baserom.gba", 0xDCFABD, 0x000000C
bgmSavingZelda_track2:: @ 08DCFAC9
	.incbin "baserom.gba", 0xDCFAC9, 0x0000025
bgmSavingZelda_track3:: @ 08DCFAEE
	.incbin "baserom.gba", 0xDCFAEE, 0x0000016
gUnk_08DCFB04:: @ 08DCFB04
	.incbin "baserom.gba", 0xDCFB04, 0x0000024
bgmSavingZelda_track4:: @ 08DCFB28
	.incbin "baserom.gba", 0xDCFB28, 0x0000006
gUnk_08DCFB2E:: @ 08DCFB2E
	.incbin "baserom.gba", 0xDCFB2E, 0x000004B
bgmSavingZelda_track5:: @ 08DCFB79
	.incbin "baserom.gba", 0xDCFB79, 0x000000A
gUnk_08DCFB83:: @ 08DCFB83
	.incbin "baserom.gba", 0xDCFB83, 0x000001F
bgmSavingZelda_track6:: @ 08DCFBA2
	.incbin "baserom.gba", 0xDCFBA2, 0x000002C
bgmSavingZelda_track7:: @ 08DCFBCE
	.incbin "baserom.gba", 0xDCFBCE, 0x0000026
bgmSavingZelda:: @ 08DCFBF4
	sound_header 8 0 0 0xb2 gUnk_089FF24C bgmSavingZelda_track0 bgmSavingZelda_track1 bgmSavingZelda_track2 bgmSavingZelda_track3 bgmSavingZelda_track4 bgmSavingZelda_track5 bgmSavingZelda_track6 bgmSavingZelda_track7

bgmLttpTitle_track0:: @ 08DCFC1C
	.incbin "baserom.gba", 0xDCFC1C, 0x0000050
bgmLttpTitle_track1:: @ 08DCFC6C
	.incbin "baserom.gba", 0xDCFC6C, 0x000002C
bgmLttpTitle_track2:: @ 08DCFC98
	.incbin "baserom.gba", 0xDCFC98, 0x000002E
bgmLttpTitle_track3:: @ 08DCFCC6
	.incbin "baserom.gba", 0xDCFCC6, 0x0000049
bgmLttpTitle_track4:: @ 08DCFD0F
	.incbin "baserom.gba", 0xDCFD0F, 0x000000E
gUnk_08DCFD1D:: @ 08DCFD1D
	.incbin "baserom.gba", 0xDCFD1D, 0x0000028
bgmLttpTitle_track5:: @ 08DCFD45
	.incbin "baserom.gba", 0xDCFD45, 0x0000053
bgmLttpTitle:: @ 08DCFD98
	sound_header 6 0 0 0x9e gUnk_089FF84C bgmLttpTitle_track0 bgmLttpTitle_track1 bgmLttpTitle_track2 bgmLttpTitle_track3 bgmLttpTitle_track4 bgmLttpTitle_track5

bgmVaatiTheme_track0:: @ 08DCFDB8
	.incbin "baserom.gba", 0xDCFDB8, 0x0000040
gUnk_08DCFDF8:: @ 08DCFDF8
	.incbin "baserom.gba", 0xDCFDF8, 0x0000054
bgmVaatiTheme_track1:: @ 08DCFE4C
	.incbin "baserom.gba", 0xDCFE4C, 0x0000033
gUnk_08DCFE7F:: @ 08DCFE7F
	.incbin "baserom.gba", 0xDCFE7F, 0x000008E
bgmVaatiTheme_track2:: @ 08DCFF0D
	.incbin "baserom.gba", 0xDCFF0D, 0x0000023
gUnk_08DCFF30:: @ 08DCFF30
	.incbin "baserom.gba", 0xDCFF30, 0x0000023
gUnk_08DCFF53:: @ 08DCFF53
	.incbin "baserom.gba", 0xDCFF53, 0x0000087
bgmVaatiTheme_track3:: @ 08DCFFDA
	.incbin "baserom.gba", 0xDCFFDA, 0x0000023
gUnk_08DCFFFD:: @ 08DCFFFD
	.incbin "baserom.gba", 0xDCFFFD, 0x000000A
gUnk_08DD0007:: @ 08DD0007
	.incbin "baserom.gba", 0xDD0007, 0x0000038
bgmVaatiTheme_track4:: @ 08DD003F
	.incbin "baserom.gba", 0xDD003F, 0x000001F
gUnk_08DD005E:: @ 08DD005E
	.incbin "baserom.gba", 0xDD005E, 0x0000039
gUnk_08DD0097:: @ 08DD0097
	.incbin "baserom.gba", 0xDD0097, 0x000003E
bgmVaatiTheme_track5:: @ 08DD00D5
	.incbin "baserom.gba", 0xDD00D5, 0x000002B
gUnk_08DD0100:: @ 08DD0100
	.incbin "baserom.gba", 0xDD0100, 0x0000054
bgmVaatiTheme_track6:: @ 08DD0154
	.incbin "baserom.gba", 0xDD0154, 0x0000033
gUnk_08DD0187:: @ 08DD0187
	.incbin "baserom.gba", 0xDD0187, 0x00000BD
bgmVaatiTheme:: @ 08DD0244
	sound_header 7 0 0 0xbc gUnk_089FFE4C bgmVaatiTheme_track0 bgmVaatiTheme_track1 bgmVaatiTheme_track2 bgmVaatiTheme_track3 bgmVaatiTheme_track4 bgmVaatiTheme_track5 bgmVaatiTheme_track6

bgmEzloTheme_track0:: @ 08DD0268
	.incbin "baserom.gba", 0xDD0268, 0x0000074
gUnk_08DD02DC:: @ 08DD02DC
	.incbin "baserom.gba", 0xDD02DC, 0x0000023
bgmEzloTheme_track1:: @ 08DD02FF
	.incbin "baserom.gba", 0xDD02FF, 0x0000001
gUnk_08DD0300:: @ 08DD0300
	.incbin "baserom.gba", 0xDD0300, 0x0000024
gUnk_08DD0324:: @ 08DD0324
	.incbin "baserom.gba", 0xDD0324, 0x0000087
bgmEzloTheme_track2:: @ 08DD03AB
	.incbin "baserom.gba", 0xDD03AB, 0x00000C4
bgmEzloTheme_track3:: @ 08DD046F
	.incbin "baserom.gba", 0xDD046F, 0x000000A
gUnk_08DD0479:: @ 08DD0479
	.incbin "baserom.gba", 0xDD0479, 0x0000098
bgmEzloTheme_track4:: @ 08DD0511
	.incbin "baserom.gba", 0xDD0511, 0x0000007
gUnk_08DD0518:: @ 08DD0518
	.incbin "baserom.gba", 0xDD0518, 0x0000007
gUnk_08DD051F:: @ 08DD051F
	.incbin "baserom.gba", 0xDD051F, 0x0000052
bgmEzloTheme_track5:: @ 08DD0571
	.incbin "baserom.gba", 0xDD0571, 0x0000094
gUnk_08DD0605:: @ 08DD0605
	.incbin "baserom.gba", 0xDD0605, 0x0000005
bgmEzloTheme_track6:: @ 08DD060A
	.incbin "baserom.gba", 0xDD060A, 0x0000008
gUnk_08DD0612:: @ 08DD0612
	.incbin "baserom.gba", 0xDD0612, 0x0000037
gUnk_08DD0649:: @ 08DD0649
	.incbin "baserom.gba", 0xDD0649, 0x0000047
bgmEzloTheme:: @ 08DD0690
	sound_header 7 0 0 0x9e gUnk_08A0044C bgmEzloTheme_track0 bgmEzloTheme_track1 bgmEzloTheme_track2 bgmEzloTheme_track3 bgmEzloTheme_track4 bgmEzloTheme_track5 bgmEzloTheme_track6

bgmStory_track0:: @ 08DD06B4
	.incbin "baserom.gba", 0xDD06B4, 0x000005C
gUnk_08DD0710:: @ 08DD0710
	.incbin "baserom.gba", 0xDD0710, 0x00000CC
bgmStory_track1:: @ 08DD07DC
	.incbin "baserom.gba", 0xDD07DC, 0x0000039
bgmStory_track2:: @ 08DD0815
	.incbin "baserom.gba", 0xDD0815, 0x0000052
bgmStory_track3:: @ 08DD0867
	.incbin "baserom.gba", 0xDD0867, 0x000005C
bgmStory_track4:: @ 08DD08C3
	.incbin "baserom.gba", 0xDD08C3, 0x000001B
gUnk_08DD08DE:: @ 08DD08DE
	.incbin "baserom.gba", 0xDD08DE, 0x0000022
gUnk_08DD0900:: @ 08DD0900
	.incbin "baserom.gba", 0xDD0900, 0x0000098
gUnk_08DD0998:: @ 08DD0998
	.incbin "baserom.gba", 0xDD0998, 0x0000057
bgmStory_track5:: @ 08DD09EF
	.incbin "baserom.gba", 0xDD09EF, 0x000003F
bgmStory_track6:: @ 08DD0A2E
	.incbin "baserom.gba", 0xDD0A2E, 0x000002F
bgmStory_track7:: @ 08DD0A5D
	.incbin "baserom.gba", 0xDD0A5D, 0x0000037
bgmStory:: @ 08DD0A94
	sound_header 8 0 0 0xb2 gUnk_08A00A4C bgmStory_track0 bgmStory_track1 bgmStory_track2 bgmStory_track3 bgmStory_track4 bgmStory_track5 bgmStory_track6 bgmStory_track7

bgmFestivalApproach_track0:: @ 08DD0ABC
	.incbin "baserom.gba", 0xDD0ABC, 0x0000044
gUnk_08DD0B00:: @ 08DD0B00
	.incbin "baserom.gba", 0xDD0B00, 0x0000036
gUnk_08DD0B36:: @ 08DD0B36
	.incbin "baserom.gba", 0xDD0B36, 0x0000134
bgmFestivalApproach_track1:: @ 08DD0C6A
	.incbin "baserom.gba", 0xDD0C6A, 0x0000044
gUnk_08DD0CAE:: @ 08DD0CAE
	.incbin "baserom.gba", 0xDD0CAE, 0x0000046
bgmFestivalApproach:: @ 08DD0CF4
	sound_header 2 0 0 0xa8 gUnk_08A00CF8 bgmFestivalApproach_track0 bgmFestivalApproach_track1

bgmBeatVaati_track0:: @ 08DD0D04
	.incbin "baserom.gba", 0xDD0D04, 0x0000028
gUnk_08DD0D2C:: @ 08DD0D2C
	.incbin "baserom.gba", 0xDD0D2C, 0x000006B
bgmBeatVaati_track1:: @ 08DD0D97
	.incbin "baserom.gba", 0xDD0D97, 0x0000007
gUnk_08DD0D9E:: @ 08DD0D9E
	.incbin "baserom.gba", 0xDD0D9E, 0x0000010
gUnk_08DD0DAE:: @ 08DD0DAE
	.incbin "baserom.gba", 0xDD0DAE, 0x0000063
bgmBeatVaati_track2:: @ 08DD0E11
	.incbin "baserom.gba", 0xDD0E11, 0x0000063
gUnk_08DD0E74:: @ 08DD0E74
	.incbin "baserom.gba", 0xDD0E74, 0x00000E0
bgmBeatVaati_track3:: @ 08DD0F54
	.incbin "baserom.gba", 0xDD0F54, 0x00000A3
bgmBeatVaati_track4:: @ 08DD0FF7
	.incbin "baserom.gba", 0xDD0FF7, 0x00000BD
bgmBeatVaati_track5:: @ 08DD10B4
	.incbin "baserom.gba", 0xDD10B4, 0x000001F
gUnk_08DD10D3:: @ 08DD10D3
	.incbin "baserom.gba", 0xDD10D3, 0x00000D5
bgmBeatVaati:: @ 08DD11A8
	sound_header 6 0 0 0xa8 gUnk_08A012F8 bgmBeatVaati_track0 bgmBeatVaati_track1 bgmBeatVaati_track2 bgmBeatVaati_track3 bgmBeatVaati_track4 bgmBeatVaati_track5

bgmBeanstalk_track0:: @ 08DD11C8
	.incbin "baserom.gba", 0xDD11C8, 0x0000075
gUnk_08DD123D:: @ 08DD123D
	.incbin "baserom.gba", 0xDD123D, 0x000009E
gUnk_08DD12DB:: @ 08DD12DB
	.incbin "baserom.gba", 0xDD12DB, 0x0000047
bgmBeanstalk_track1:: @ 08DD1322
	.incbin "baserom.gba", 0xDD1322, 0x000007A
bgmBeanstalk_track2:: @ 08DD139C
	.incbin "baserom.gba", 0xDD139C, 0x0000020
gUnk_08DD13BC:: @ 08DD13BC
	.incbin "baserom.gba", 0xDD13BC, 0x0000068
bgmBeanstalk_track3:: @ 08DD1424
	.incbin "baserom.gba", 0xDD1424, 0x0000018
bgmBeanstalk_track4:: @ 08DD143C
	.incbin "baserom.gba", 0xDD143C, 0x0000028
gUnk_08DD1464:: @ 08DD1464
	.incbin "baserom.gba", 0xDD1464, 0x0000042
bgmBeanstalk_track5:: @ 08DD14A6
	.incbin "baserom.gba", 0xDD14A6, 0x0000007
gUnk_08DD14AD:: @ 08DD14AD
	.incbin "baserom.gba", 0xDD14AD, 0x0000078
bgmBeanstalk_track6:: @ 08DD1525
	.incbin "baserom.gba", 0xDD1525, 0x0000007
gUnk_08DD152C:: @ 08DD152C
	.incbin "baserom.gba", 0xDD152C, 0x000001C
bgmBeanstalk:: @ 08DD1548
	sound_header 7 0 0 0x9e gUnk_08A018F8 bgmBeanstalk_track0 bgmBeanstalk_track1 bgmBeanstalk_track2 bgmBeanstalk_track3 bgmBeanstalk_track4 bgmBeanstalk_track5 bgmBeanstalk_track6

bgmHouse_track0:: @ 08DD156C
	.incbin "baserom.gba", 0xDD156C, 0x0000027
bgmHouse_track1:: @ 08DD1593
	.incbin "baserom.gba", 0xDD1593, 0x00000CF
bgmHouse_track2:: @ 08DD1662
	.incbin "baserom.gba", 0xDD1662, 0x0000008
gUnk_08DD166A:: @ 08DD166A
	.incbin "baserom.gba", 0xDD166A, 0x000007B
bgmHouse_track3:: @ 08DD16E5
	.incbin "baserom.gba", 0xDD16E5, 0x0000083
bgmHouse_track4:: @ 08DD1768
	.incbin "baserom.gba", 0xDD1768, 0x0000050
bgmHouse_track5:: @ 08DD17B8
	.incbin "baserom.gba", 0xDD17B8, 0x000008C
bgmHouse_track6:: @ 08DD1844
	.incbin "baserom.gba", 0xDD1844, 0x0000025
bgmHouse_track7:: @ 08DD1869
	.incbin "baserom.gba", 0xDD1869, 0x0000127
bgmHouse:: @ 08DD1990
	sound_header 8 0 0 0xa8 gUnk_08A01EF8 bgmHouse_track0 bgmHouse_track1 bgmHouse_track2 bgmHouse_track3 bgmHouse_track4 bgmHouse_track5 bgmHouse_track6 bgmHouse_track7

bgmCuccoMinigame_track0:: @ 08DD19B8
	.incbin "baserom.gba", 0xDD19B8, 0x000004B
gUnk_08DD1A03:: @ 08DD1A03
	.incbin "baserom.gba", 0xDD1A03, 0x0000059
bgmCuccoMinigame_track1:: @ 08DD1A5C
	.incbin "baserom.gba", 0xDD1A5C, 0x0000048
bgmCuccoMinigame_track2:: @ 08DD1AA4
	.incbin "baserom.gba", 0xDD1AA4, 0x0000007
gUnk_08DD1AAB:: @ 08DD1AAB
	.incbin "baserom.gba", 0xDD1AAB, 0x0000031
gUnk_08DD1ADC:: @ 08DD1ADC
	.incbin "baserom.gba", 0xDD1ADC, 0x0000049
bgmCuccoMinigame_track3:: @ 08DD1B25
	.incbin "baserom.gba", 0xDD1B25, 0x00000AB
bgmCuccoMinigame_track4:: @ 08DD1BD0
	.incbin "baserom.gba", 0xDD1BD0, 0x0000007
gUnk_08DD1BD7:: @ 08DD1BD7
	.incbin "baserom.gba", 0xDD1BD7, 0x000001A
bgmCuccoMinigame_track5:: @ 08DD1BF1
	.incbin "baserom.gba", 0xDD1BF1, 0x0000012
gUnk_08DD1C03:: @ 08DD1C03
	.incbin "baserom.gba", 0xDD1C03, 0x0000029
bgmCuccoMinigame:: @ 08DD1C2C
	sound_header 6 0 0 0xa8 gUnk_08A022C4 bgmCuccoMinigame_track0 bgmCuccoMinigame_track1 bgmCuccoMinigame_track2 bgmCuccoMinigame_track3 bgmCuccoMinigame_track4 bgmCuccoMinigame_track5

bgmSyrupTheme_track0:: @ 08DD1C4C
	.incbin "baserom.gba", 0xDD1C4C, 0x0000067
bgmSyrupTheme_track1:: @ 08DD1CB3
	.incbin "baserom.gba", 0xDD1CB3, 0x0000073
gUnk_08DD1D26:: @ 08DD1D26
	.incbin "baserom.gba", 0xDD1D26, 0x0000016
bgmSyrupTheme_track2:: @ 08DD1D3C
	.incbin "baserom.gba", 0xDD1D3C, 0x0000023
gUnk_08DD1D5F:: @ 08DD1D5F
	.incbin "baserom.gba", 0xDD1D5F, 0x0000044
bgmSyrupTheme_track3:: @ 08DD1DA3
	.incbin "baserom.gba", 0xDD1DA3, 0x0000007
gUnk_08DD1DAA:: @ 08DD1DAA
	.incbin "baserom.gba", 0xDD1DAA, 0x000005B
bgmSyrupTheme_track4:: @ 08DD1E05
	.incbin "baserom.gba", 0xDD1E05, 0x000002D
bgmSyrupTheme_track5:: @ 08DD1E32
	.incbin "baserom.gba", 0xDD1E32, 0x000000A
gUnk_08DD1E3C:: @ 08DD1E3C
	.incbin "baserom.gba", 0xDD1E3C, 0x0000068
bgmSyrupTheme:: @ 08DD1EA4
	sound_header 6 0 0 0xa8 gUnk_08A028C4 bgmSyrupTheme_track0 bgmSyrupTheme_track1 bgmSyrupTheme_track2 bgmSyrupTheme_track3 bgmSyrupTheme_track4 bgmSyrupTheme_track5

bgmDungeon_track0:: @ 08DD1EC4
	.incbin "baserom.gba", 0xDD1EC4, 0x000000B
gUnk_08DD1ECF:: @ 08DD1ECF
	.incbin "baserom.gba", 0xDD1ECF, 0x0000066
bgmDungeon_track1:: @ 08DD1F35
	.incbin "baserom.gba", 0xDD1F35, 0x0000032
bgmDungeon_track2:: @ 08DD1F67
	.incbin "baserom.gba", 0xDD1F67, 0x0000099
gUnk_08DD2000:: @ 08DD2000
	.incbin "baserom.gba", 0xDD2000, 0x0000006
bgmDungeon_track3:: @ 08DD2006
	.incbin "baserom.gba", 0xDD2006, 0x0000007
gUnk_08DD200D:: @ 08DD200D
	.incbin "baserom.gba", 0xDD200D, 0x0000098
bgmDungeon_track4:: @ 08DD20A5
	.incbin "baserom.gba", 0xDD20A5, 0x000008B
bgmDungeon:: @ 08DD2130
	sound_header 5 0 0 0xbc gUnk_08A02EC4 bgmDungeon_track0 bgmDungeon_track1 bgmDungeon_track2 bgmDungeon_track3 bgmDungeon_track4

bgmElementTheme_track0:: @ 08DD214C
	.incbin "baserom.gba", 0xDD214C, 0x00000D3
bgmElementTheme_track1:: @ 08DD221F
	.incbin "baserom.gba", 0xDD221F, 0x000003F
gUnk_08DD225E:: @ 08DD225E
	.incbin "baserom.gba", 0xDD225E, 0x000000B
bgmElementTheme_track2:: @ 08DD2269
	.incbin "baserom.gba", 0xDD2269, 0x00000D7
bgmElementTheme:: @ 08DD2340
	sound_header 3 0 0 0xbc gUnk_08A034C4 bgmElementTheme_track0 bgmElementTheme_track1 bgmElementTheme_track2

bgmHyruleField_track0:: @ 08DD2354
	.incbin "baserom.gba", 0xDD2354, 0x0000025
gUnk_08DD2379:: @ 08DD2379
	.incbin "baserom.gba", 0xDD2379, 0x0000049
gUnk_08DD23C2:: @ 08DD23C2
	.incbin "baserom.gba", 0xDD23C2, 0x0000178
bgmHyruleField_track1:: @ 08DD253A
	.incbin "baserom.gba", 0xDD253A, 0x0000152
bgmHyruleField_track2:: @ 08DD268C
	.incbin "baserom.gba", 0xDD268C, 0x0000020
gUnk_08DD26AC:: @ 08DD26AC
	.incbin "baserom.gba", 0xDD26AC, 0x000012B
bgmHyruleField_track3:: @ 08DD27D7
	.incbin "baserom.gba", 0xDD27D7, 0x000013F
gUnk_08DD2916:: @ 08DD2916
	.incbin "baserom.gba", 0xDD2916, 0x00000B8
bgmHyruleField_track4:: @ 08DD29CE
	.incbin "baserom.gba", 0xDD29CE, 0x0000020
gUnk_08DD29EE:: @ 08DD29EE
	.incbin "baserom.gba", 0xDD29EE, 0x0000010
gUnk_08DD29FE:: @ 08DD29FE
	.incbin "baserom.gba", 0xDD29FE, 0x0000024
bgmHyruleField_track5:: @ 08DD2A22
	.incbin "baserom.gba", 0xDD2A22, 0x0000052
bgmHyruleField_track6:: @ 08DD2A74
	.incbin "baserom.gba", 0xDD2A74, 0x00000A7
gUnk_08DD2B1B:: @ 08DD2B1B
	.incbin "baserom.gba", 0xDD2B1B, 0x00000DF
bgmHyruleField_track7:: @ 08DD2BFA
	.incbin "baserom.gba", 0xDD2BFA, 0x0000011
gUnk_08DD2C0B:: @ 08DD2C0B
	.incbin "baserom.gba", 0xDD2C0B, 0x000002A
bgmHyruleField_track8:: @ 08DD2C35
	.incbin "baserom.gba", 0xDD2C35, 0x0000024
gUnk_08DD2C59:: @ 08DD2C59
	.incbin "baserom.gba", 0xDD2C59, 0x00000AA
gUnk_08DD2D03:: @ 08DD2D03
	.incbin "baserom.gba", 0xDD2D03, 0x000004D
bgmHyruleField:: @ 08DD2D50
	sound_header 9 0 0 0x9e gUnk_08A03794 bgmHyruleField_track0 bgmHyruleField_track1 bgmHyruleField_track2 bgmHyruleField_track3 bgmHyruleField_track4 bgmHyruleField_track5 bgmHyruleField_track6 bgmHyruleField_track7 bgmHyruleField_track8

bgmHyruleCastle_track0:: @ 08DD2D7C
	.incbin "baserom.gba", 0xDD2D7C, 0x0000100
bgmHyruleCastle_track1:: @ 08DD2E7C
	.incbin "baserom.gba", 0xDD2E7C, 0x000003F
bgmHyruleCastle_track2:: @ 08DD2EBB
	.incbin "baserom.gba", 0xDD2EBB, 0x0000043
gUnk_08DD2EFE:: @ 08DD2EFE
	.incbin "baserom.gba", 0xDD2EFE, 0x000003D
bgmHyruleCastle_track3:: @ 08DD2F3B
	.incbin "baserom.gba", 0xDD2F3B, 0x0000037
bgmHyruleCastle_track4:: @ 08DD2F72
	.incbin "baserom.gba", 0xDD2F72, 0x0000092
bgmHyruleCastle_track5:: @ 08DD3004
	.incbin "baserom.gba", 0xDD3004, 0x0000031
gUnk_08DD3035:: @ 08DD3035
	.incbin "baserom.gba", 0xDD3035, 0x0000094
bgmHyruleCastle_track6:: @ 08DD30C9
	.incbin "baserom.gba", 0xDD30C9, 0x0000016
gUnk_08DD30DF:: @ 08DD30DF
	.incbin "baserom.gba", 0xDD30DF, 0x0000011
bgmHyruleCastle:: @ 08DD30F0
	sound_header 7 0 0 0xa8 gUnk_08A03D94 bgmHyruleCastle_track0 bgmHyruleCastle_track1 bgmHyruleCastle_track2 bgmHyruleCastle_track3 bgmHyruleCastle_track4 bgmHyruleCastle_track5 bgmHyruleCastle_track6

bgmHyruleCastleNointro_track0:: @ 08DD3114
	.incbin "baserom.gba", 0xDD3114, 0x00000CF
bgmHyruleCastleNointro_track1:: @ 08DD31E3
	.incbin "baserom.gba", 0xDD31E3, 0x0000015
bgmHyruleCastleNointro_track2:: @ 08DD31F8
	.incbin "baserom.gba", 0xDD31F8, 0x0000009
gUnk_08DD3201:: @ 08DD3201
	.incbin "baserom.gba", 0xDD3201, 0x0000019
gUnk_08DD321A:: @ 08DD321A
	.incbin "baserom.gba", 0xDD321A, 0x000002F
bgmHyruleCastleNointro_track3:: @ 08DD3249
	.incbin "baserom.gba", 0xDD3249, 0x0000061
bgmHyruleCastleNointro_track4:: @ 08DD32AA
	.incbin "baserom.gba", 0xDD32AA, 0x0000035
gUnk_08DD32DF:: @ 08DD32DF
	.incbin "baserom.gba", 0xDD32DF, 0x0000067
bgmHyruleCastleNointro_track5:: @ 08DD3346
	.incbin "baserom.gba", 0xDD3346, 0x0000016
bgmHyruleCastleNointro:: @ 08DD335C
	sound_header 6 0 0 0xa8 gUnk_08A03D94 bgmHyruleCastleNointro_track0 bgmHyruleCastleNointro_track1 bgmHyruleCastleNointro_track2 bgmHyruleCastleNointro_track3 bgmHyruleCastleNointro_track4 bgmHyruleCastleNointro_track5

bgmMinishVillage_track0:: @ 08DD337C
	.incbin "baserom.gba", 0xDD337C, 0x000003A
gUnk_08DD33B6:: @ 08DD33B6
	.incbin "baserom.gba", 0xDD33B6, 0x00000D9
gUnk_08DD348F:: @ 08DD348F
	.incbin "baserom.gba", 0xDD348F, 0x0000064
bgmMinishVillage_track1:: @ 08DD34F3
	.incbin "baserom.gba", 0xDD34F3, 0x000002A
gUnk_08DD351D:: @ 08DD351D
	.incbin "baserom.gba", 0xDD351D, 0x000001A
gUnk_08DD3537:: @ 08DD3537
	.incbin "baserom.gba", 0xDD3537, 0x000007C
gUnk_08DD35B3:: @ 08DD35B3
	.incbin "baserom.gba", 0xDD35B3, 0x0000051
bgmMinishVillage_track2:: @ 08DD3604
	.incbin "baserom.gba", 0xDD3604, 0x0000027
gUnk_08DD362B:: @ 08DD362B
	.incbin "baserom.gba", 0xDD362B, 0x000014A
bgmMinishVillage_track3:: @ 08DD3775
	.incbin "baserom.gba", 0xDD3775, 0x000002F
gUnk_08DD37A4:: @ 08DD37A4
	.incbin "baserom.gba", 0xDD37A4, 0x000007B
gUnk_08DD381F:: @ 08DD381F
	.incbin "baserom.gba", 0xDD381F, 0x000003A
gUnk_08DD3859:: @ 08DD3859
	.incbin "baserom.gba", 0xDD3859, 0x000003B
bgmMinishVillage_track4:: @ 08DD3894
	.incbin "baserom.gba", 0xDD3894, 0x0000028
gUnk_08DD38BC:: @ 08DD38BC
	.incbin "baserom.gba", 0xDD38BC, 0x00000DF
bgmMinishVillage_track5:: @ 08DD399B
	.incbin "baserom.gba", 0xDD399B, 0x0000034
gUnk_08DD39CF:: @ 08DD39CF
	.incbin "baserom.gba", 0xDD39CF, 0x000004C
gUnk_08DD3A1B:: @ 08DD3A1B
	.incbin "baserom.gba", 0xDD3A1B, 0x00000AD
bgmMinishVillage_track6:: @ 08DD3AC8
	.incbin "baserom.gba", 0xDD3AC8, 0x000001C
gUnk_08DD3AE4:: @ 08DD3AE4
	.incbin "baserom.gba", 0xDD3AE4, 0x0000009
gUnk_08DD3AED:: @ 08DD3AED
	.incbin "baserom.gba", 0xDD3AED, 0x00000DF
bgmMinishVillage:: @ 08DD3BCC
	sound_header 7 0 0 0xa8 gUnk_08A04394 bgmMinishVillage_track0 bgmMinishVillage_track1 bgmMinishVillage_track2 bgmMinishVillage_track3 bgmMinishVillage_track4 bgmMinishVillage_track5 bgmMinishVillage_track6

bgmMinishWoods_track0:: @ 08DD3BF0
	.incbin "baserom.gba", 0xDD3BF0, 0x000002B
gUnk_08DD3C1B:: @ 08DD3C1B
	.incbin "baserom.gba", 0xDD3C1B, 0x00000A0
bgmMinishWoods_track1:: @ 08DD3CBB
	.incbin "baserom.gba", 0xDD3CBB, 0x000003F
bgmMinishWoods_track2:: @ 08DD3CFA
	.incbin "baserom.gba", 0xDD3CFA, 0x0000043
gUnk_08DD3D3D:: @ 08DD3D3D
	.incbin "baserom.gba", 0xDD3D3D, 0x0000087
gUnk_08DD3DC4:: @ 08DD3DC4
	.incbin "baserom.gba", 0xDD3DC4, 0x0000032
bgmMinishWoods_track3:: @ 08DD3DF6
	.incbin "baserom.gba", 0xDD3DF6, 0x0000015
gUnk_08DD3E0B:: @ 08DD3E0B
	.incbin "baserom.gba", 0xDD3E0B, 0x0000039
bgmMinishWoods_track4:: @ 08DD3E44
	.incbin "baserom.gba", 0xDD3E44, 0x0000055
gUnk_08DD3E99:: @ 08DD3E99
	.incbin "baserom.gba", 0xDD3E99, 0x0000022
gUnk_08DD3EBB:: @ 08DD3EBB
	.incbin "baserom.gba", 0xDD3EBB, 0x0000025
gUnk_08DD3EE0:: @ 08DD3EE0
	.incbin "baserom.gba", 0xDD3EE0, 0x0000091
bgmMinishWoods_track5:: @ 08DD3F71
	.incbin "baserom.gba", 0xDD3F71, 0x0000049
gUnk_08DD3FBA:: @ 08DD3FBA
	.incbin "baserom.gba", 0xDD3FBA, 0x0000052
gUnk_08DD400C:: @ 08DD400C
	.incbin "baserom.gba", 0xDD400C, 0x0000008
bgmMinishWoods_track6:: @ 08DD4014
	.incbin "baserom.gba", 0xDD4014, 0x00000D4
bgmMinishWoods:: @ 08DD40E8
	sound_header 7 0 0 0xa8 gUnk_08A04994 bgmMinishWoods_track0 bgmMinishWoods_track1 bgmMinishWoods_track2 bgmMinishWoods_track3 bgmMinishWoods_track4 bgmMinishWoods_track5 bgmMinishWoods_track6

bgmCrenelStorm_track0:: @ 08DD410C
	.incbin "baserom.gba", 0xDD410C, 0x0000015
gUnk_08DD4121:: @ 08DD4121
	.incbin "baserom.gba", 0xDD4121, 0x0000096
gUnk_08DD41B7:: @ 08DD41B7
	.incbin "baserom.gba", 0xDD41B7, 0x000005F
bgmCrenelStorm_track1:: @ 08DD4216
	.incbin "baserom.gba", 0xDD4216, 0x000001E
gUnk_08DD4234:: @ 08DD4234
	.incbin "baserom.gba", 0xDD4234, 0x00000A6
bgmCrenelStorm_track2:: @ 08DD42DA
	.incbin "baserom.gba", 0xDD42DA, 0x000002A
bgmCrenelStorm_track3:: @ 08DD4304
	.incbin "baserom.gba", 0xDD4304, 0x0000054
bgmCrenelStorm_track4:: @ 08DD4358
	.incbin "baserom.gba", 0xDD4358, 0x000004F
bgmCrenelStorm_track5:: @ 08DD43A7
	.incbin "baserom.gba", 0xDD43A7, 0x000007D
bgmCrenelStorm_track6:: @ 08DD4424
	.incbin "baserom.gba", 0xDD4424, 0x00000CB
gUnk_08DD44EF:: @ 08DD44EF
	.incbin "baserom.gba", 0xDD44EF, 0x00000C2
gUnk_08DD45B1:: @ 08DD45B1
	.incbin "baserom.gba", 0xDD45B1, 0x0000131
gUnk_08DD46E2:: @ 08DD46E2
	.incbin "baserom.gba", 0xDD46E2, 0x0000138
gUnk_08DD481A:: @ 08DD481A
	.incbin "baserom.gba", 0xDD481A, 0x000003E
bgmCrenelStorm:: @ 08DD4858
	sound_header 7 0 0 0xb2 gUnk_08A04F94 bgmCrenelStorm_track0 bgmCrenelStorm_track1 bgmCrenelStorm_track2 bgmCrenelStorm_track3 bgmCrenelStorm_track4 bgmCrenelStorm_track5 bgmCrenelStorm_track6

bgmCastorWilds_track0:: @ 08DD487C
	.incbin "baserom.gba", 0xDD487C, 0x0000013
gUnk_08DD488F:: @ 08DD488F
	.incbin "baserom.gba", 0xDD488F, 0x0000069
bgmCastorWilds_track1:: @ 08DD48F8
	.incbin "baserom.gba", 0xDD48F8, 0x0000017
gUnk_08DD490F:: @ 08DD490F
	.incbin "baserom.gba", 0xDD490F, 0x0000034
bgmCastorWilds_track2:: @ 08DD4943
	.incbin "baserom.gba", 0xDD4943, 0x0000088
bgmCastorWilds_track3:: @ 08DD49CB
	.incbin "baserom.gba", 0xDD49CB, 0x000001C
gUnk_08DD49E7:: @ 08DD49E7
	.incbin "baserom.gba", 0xDD49E7, 0x0000098
bgmCastorWilds_track4:: @ 08DD4A7F
	.incbin "baserom.gba", 0xDD4A7F, 0x000003A
gUnk_08DD4AB9:: @ 08DD4AB9
	.incbin "baserom.gba", 0xDD4AB9, 0x000008B
bgmCastorWilds:: @ 08DD4B44
	sound_header 5 0 0 0x9e gUnk_08A05594 bgmCastorWilds_track0 bgmCastorWilds_track1 bgmCastorWilds_track2 bgmCastorWilds_track3 bgmCastorWilds_track4

bgmHyruleTown_track0:: @ 08DD4B60
	.incbin "baserom.gba", 0xDD4B60, 0x0000077
bgmHyruleTown_track1:: @ 08DD4BD7
	.incbin "baserom.gba", 0xDD4BD7, 0x000006C
gUnk_08DD4C43:: @ 08DD4C43
	.incbin "baserom.gba", 0xDD4C43, 0x0000074
gUnk_08DD4CB7:: @ 08DD4CB7
	.incbin "baserom.gba", 0xDD4CB7, 0x000007A
gUnk_08DD4D31:: @ 08DD4D31
	.incbin "baserom.gba", 0xDD4D31, 0x0000060
bgmHyruleTown_track2:: @ 08DD4D91
	.incbin "baserom.gba", 0xDD4D91, 0x000001F
gUnk_08DD4DB0:: @ 08DD4DB0
	.incbin "baserom.gba", 0xDD4DB0, 0x0000061
gUnk_08DD4E11:: @ 08DD4E11
	.incbin "baserom.gba", 0xDD4E11, 0x000006D
gUnk_08DD4E7E:: @ 08DD4E7E
	.incbin "baserom.gba", 0xDD4E7E, 0x0000020
bgmHyruleTown_track3:: @ 08DD4E9E
	.incbin "baserom.gba", 0xDD4E9E, 0x000006C
bgmHyruleTown_track4:: @ 08DD4F0A
	.incbin "baserom.gba", 0xDD4F0A, 0x0000056
gUnk_08DD4F60:: @ 08DD4F60
	.incbin "baserom.gba", 0xDD4F60, 0x0000180
bgmHyruleTown_track5:: @ 08DD50E0
	.incbin "baserom.gba", 0xDD50E0, 0x0000024
gUnk_08DD5104:: @ 08DD5104
	.incbin "baserom.gba", 0xDD5104, 0x00000E7
bgmHyruleTown_track6:: @ 08DD51EB
	.incbin "baserom.gba", 0xDD51EB, 0x0000023
gUnk_08DD520E:: @ 08DD520E
	.incbin "baserom.gba", 0xDD520E, 0x00000EE
bgmHyruleTown:: @ 08DD52FC
	sound_header 7 0 0 0x9e gUnk_08A05B94 bgmHyruleTown_track0 bgmHyruleTown_track1 bgmHyruleTown_track2 bgmHyruleTown_track3 bgmHyruleTown_track4 bgmHyruleTown_track5 bgmHyruleTown_track6

bgmRoyalValley_track0:: @ 08DD5320
	.incbin "baserom.gba", 0xDD5320, 0x00000AF
gUnk_08DD53CF:: @ 08DD53CF
	.incbin "baserom.gba", 0xDD53CF, 0x000007C
bgmRoyalValley_track1:: @ 08DD544B
	.incbin "baserom.gba", 0xDD544B, 0x000006F
gUnk_08DD54BA:: @ 08DD54BA
	.incbin "baserom.gba", 0xDD54BA, 0x00000A2
bgmRoyalValley_track2:: @ 08DD555C
	.incbin "baserom.gba", 0xDD555C, 0x00000CC
bgmRoyalValley_track3:: @ 08DD5628
	.incbin "baserom.gba", 0xDD5628, 0x0000036
bgmRoyalValley_track4:: @ 08DD565E
	.incbin "baserom.gba", 0xDD565E, 0x0000007
gUnk_08DD5665:: @ 08DD5665
	.incbin "baserom.gba", 0xDD5665, 0x0000002
gUnk_08DD5667:: @ 08DD5667
	.incbin "baserom.gba", 0xDD5667, 0x000009E
gUnk_08DD5705:: @ 08DD5705
	.incbin "baserom.gba", 0xDD5705, 0x0000014
gUnk_08DD5719:: @ 08DD5719
	.incbin "baserom.gba", 0xDD5719, 0x000007C
bgmRoyalValley_track5:: @ 08DD5795
	.incbin "baserom.gba", 0xDD5795, 0x000005E
bgmRoyalValley_track6:: @ 08DD57F3
	.incbin "baserom.gba", 0xDD57F3, 0x000004B
gUnk_08DD583E:: @ 08DD583E
	.incbin "baserom.gba", 0xDD583E, 0x0000056
bgmRoyalValley:: @ 08DD5894
	sound_header 7 0 0 0xb2 gUnk_08A06194 bgmRoyalValley_track0 bgmRoyalValley_track1 bgmRoyalValley_track2 bgmRoyalValley_track3 bgmRoyalValley_track4 bgmRoyalValley_track5 bgmRoyalValley_track6

bgmCloudTops_track0:: @ 08DD58B8
	.incbin "baserom.gba", 0xDD58B8, 0x0000152
gUnk_08DD5A0A:: @ 08DD5A0A
	.incbin "baserom.gba", 0xDD5A0A, 0x0000023
gUnk_08DD5A2D:: @ 08DD5A2D
	.incbin "baserom.gba", 0xDD5A2D, 0x000004A
bgmCloudTops_track1:: @ 08DD5A77
	.incbin "baserom.gba", 0xDD5A77, 0x0000062
gUnk_08DD5AD9:: @ 08DD5AD9
	.incbin "baserom.gba", 0xDD5AD9, 0x0000069
gUnk_08DD5B42:: @ 08DD5B42
	.incbin "baserom.gba", 0xDD5B42, 0x00000BE
bgmCloudTops_track2:: @ 08DD5C00
	.incbin "baserom.gba", 0xDD5C00, 0x0000112
bgmCloudTops_track3:: @ 08DD5D12
	.incbin "baserom.gba", 0xDD5D12, 0x000002E
gUnk_08DD5D40:: @ 08DD5D40
	.incbin "baserom.gba", 0xDD5D40, 0x0000024
gUnk_08DD5D64:: @ 08DD5D64
	.incbin "baserom.gba", 0xDD5D64, 0x000018C
bgmCloudTops_track4:: @ 08DD5EF0
	.incbin "baserom.gba", 0xDD5EF0, 0x00001F1
gUnk_08DD60E1:: @ 08DD60E1
	.incbin "baserom.gba", 0xDD60E1, 0x00000E2
bgmCloudTops_track5:: @ 08DD61C3
	.incbin "baserom.gba", 0xDD61C3, 0x00000C3
bgmCloudTops_track6:: @ 08DD6286
	.incbin "baserom.gba", 0xDD6286, 0x0000124
gUnk_08DD63AA:: @ 08DD63AA
	.incbin "baserom.gba", 0xDD63AA, 0x0000030
gUnk_08DD63DA:: @ 08DD63DA
	.incbin "baserom.gba", 0xDD63DA, 0x0000025
gUnk_08DD63FF:: @ 08DD63FF
	.incbin "baserom.gba", 0xDD63FF, 0x000002F
bgmCloudTops_track7:: @ 08DD642E
	.incbin "baserom.gba", 0xDD642E, 0x000002B
gUnk_08DD6459:: @ 08DD6459
	.incbin "baserom.gba", 0xDD6459, 0x00000A3
bgmCloudTops:: @ 08DD64FC
	sound_header 8 0 0 0x9e gUnk_08A06794 bgmCloudTops_track0 bgmCloudTops_track1 bgmCloudTops_track2 bgmCloudTops_track3 bgmCloudTops_track4 bgmCloudTops_track5 bgmCloudTops_track6 bgmCloudTops_track7

bgmDarkHyruleCastle_track0:: @ 08DD6524
	.incbin "baserom.gba", 0xDD6524, 0x0000061
gUnk_08DD6585:: @ 08DD6585
	.incbin "baserom.gba", 0xDD6585, 0x0000121
bgmDarkHyruleCastle_track1:: @ 08DD66A6
	.incbin "baserom.gba", 0xDD66A6, 0x0000035
gUnk_08DD66DB:: @ 08DD66DB
	.incbin "baserom.gba", 0xDD66DB, 0x0000013
gUnk_08DD66EE:: @ 08DD66EE
	.incbin "baserom.gba", 0xDD66EE, 0x0000087
bgmDarkHyruleCastle_track2:: @ 08DD6775
	.incbin "baserom.gba", 0xDD6775, 0x0000040
gUnk_08DD67B5:: @ 08DD67B5
	.incbin "baserom.gba", 0xDD67B5, 0x00000E9
bgmDarkHyruleCastle_track3:: @ 08DD689E
	.incbin "baserom.gba", 0xDD689E, 0x0000038
bgmDarkHyruleCastle_track4:: @ 08DD68D6
	.incbin "baserom.gba", 0xDD68D6, 0x0000065
gUnk_08DD693B:: @ 08DD693B
	.incbin "baserom.gba", 0xDD693B, 0x00000CE
gUnk_08DD6A09:: @ 08DD6A09
	.incbin "baserom.gba", 0xDD6A09, 0x0000067
bgmDarkHyruleCastle_track5:: @ 08DD6A70
	.incbin "baserom.gba", 0xDD6A70, 0x000004D
gUnk_08DD6ABD:: @ 08DD6ABD
	.incbin "baserom.gba", 0xDD6ABD, 0x0000028
gUnk_08DD6AE5:: @ 08DD6AE5
	.incbin "baserom.gba", 0xDD6AE5, 0x0000091
bgmDarkHyruleCastle_track6:: @ 08DD6B76
	.incbin "baserom.gba", 0xDD6B76, 0x0000015
gUnk_08DD6B8B:: @ 08DD6B8B
	.incbin "baserom.gba", 0xDD6B8B, 0x000000C
gUnk_08DD6B97:: @ 08DD6B97
	.incbin "baserom.gba", 0xDD6B97, 0x000002D
gUnk_08DD6BC4:: @ 08DD6BC4
	.incbin "baserom.gba", 0xDD6BC4, 0x0000038
bgmDarkHyruleCastle:: @ 08DD6BFC
	sound_header 7 0 0 0xb2 gUnk_08A06D94 bgmDarkHyruleCastle_track0 bgmDarkHyruleCastle_track1 bgmDarkHyruleCastle_track2 bgmDarkHyruleCastle_track3 bgmDarkHyruleCastle_track4 bgmDarkHyruleCastle_track5 bgmDarkHyruleCastle_track6

bgmSecretCastleEntrance_track0:: @ 08DD6C20
	.incbin "baserom.gba", 0xDD6C20, 0x0000065
gUnk_08DD6C85:: @ 08DD6C85
	.incbin "baserom.gba", 0xDD6C85, 0x0000031
bgmSecretCastleEntrance_track1:: @ 08DD6CB6
	.incbin "baserom.gba", 0xDD6CB6, 0x000003C
gUnk_08DD6CF2:: @ 08DD6CF2
	.incbin "baserom.gba", 0xDD6CF2, 0x0000049
bgmSecretCastleEntrance_track2:: @ 08DD6D3B
	.incbin "baserom.gba", 0xDD6D3B, 0x0000004
gUnk_08DD6D3F:: @ 08DD6D3F
	.incbin "baserom.gba", 0xDD6D3F, 0x0000066
bgmSecretCastleEntrance_track3:: @ 08DD6DA5
	.incbin "baserom.gba", 0xDD6DA5, 0x0000047
bgmSecretCastleEntrance_track4:: @ 08DD6DEC
	.incbin "baserom.gba", 0xDD6DEC, 0x0000008
gUnk_08DD6DF4:: @ 08DD6DF4
	.incbin "baserom.gba", 0xDD6DF4, 0x0000017
gUnk_08DD6E0B:: @ 08DD6E0B
	.incbin "baserom.gba", 0xDD6E0B, 0x0000022
gUnk_08DD6E2D:: @ 08DD6E2D
	.incbin "baserom.gba", 0xDD6E2D, 0x0000020
bgmSecretCastleEntrance_track5:: @ 08DD6E4D
	.incbin "baserom.gba", 0xDD6E4D, 0x0000009
gUnk_08DD6E56:: @ 08DD6E56
	.incbin "baserom.gba", 0xDD6E56, 0x000003C
gUnk_08DD6E92:: @ 08DD6E92
	.incbin "baserom.gba", 0xDD6E92, 0x0000034
bgmSecretCastleEntrance_track6:: @ 08DD6EC6
	.incbin "baserom.gba", 0xDD6EC6, 0x00000C4
bgmSecretCastleEntrance_track7:: @ 08DD6F8A
	.incbin "baserom.gba", 0xDD6F8A, 0x000003A
bgmSecretCastleEntrance:: @ 08DD6FC4
	sound_header 8 0 0 0xbc gUnk_08A07394 bgmSecretCastleEntrance_track0 bgmSecretCastleEntrance_track1 bgmSecretCastleEntrance_track2 bgmSecretCastleEntrance_track3 bgmSecretCastleEntrance_track4 bgmSecretCastleEntrance_track5 bgmSecretCastleEntrance_track6 bgmSecretCastleEntrance_track7

bgmDeepwoodShrine_track0:: @ 08DD6FEC
	.incbin "baserom.gba", 0xDD6FEC, 0x0000030
gUnk_08DD701C:: @ 08DD701C
	.incbin "baserom.gba", 0xDD701C, 0x0000026
gUnk_08DD7042:: @ 08DD7042
	.incbin "baserom.gba", 0xDD7042, 0x00000F3
bgmDeepwoodShrine_track1:: @ 08DD7135
	.incbin "baserom.gba", 0xDD7135, 0x0000017
bgmDeepwoodShrine_track2:: @ 08DD714C
	.incbin "baserom.gba", 0xDD714C, 0x0000028
bgmDeepwoodShrine:: @ 08DD7174
	sound_header 3 0 0 0xbc gUnk_08A07610 bgmDeepwoodShrine_track0 bgmDeepwoodShrine_track1 bgmDeepwoodShrine_track2

bgmCaveOfFlames_track0:: @ 08DD7188
	.incbin "baserom.gba", 0xDD7188, 0x0000026
bgmCaveOfFlames_track1:: @ 08DD71AE
	.incbin "baserom.gba", 0xDD71AE, 0x000005C
bgmCaveOfFlames_track2:: @ 08DD720A
	.incbin "baserom.gba", 0xDD720A, 0x00000BA
bgmCaveOfFlames_track3:: @ 08DD72C4
	.incbin "baserom.gba", 0xDD72C4, 0x0000020
gUnk_08DD72E4:: @ 08DD72E4
	.incbin "baserom.gba", 0xDD72E4, 0x00000AD
bgmCaveOfFlames_track4:: @ 08DD7391
	.incbin "baserom.gba", 0xDD7391, 0x000003D
gUnk_08DD73CE:: @ 08DD73CE
	.incbin "baserom.gba", 0xDD73CE, 0x000004C
gUnk_08DD741A:: @ 08DD741A
	.incbin "baserom.gba", 0xDD741A, 0x0000039
bgmCaveOfFlames_track5:: @ 08DD7453
	.incbin "baserom.gba", 0xDD7453, 0x00000C4
bgmCaveOfFlames_track6:: @ 08DD7517
	.incbin "baserom.gba", 0xDD7517, 0x0000009
gUnk_08DD7520:: @ 08DD7520
	.incbin "baserom.gba", 0xDD7520, 0x0000025
bgmCaveOfFlames_track7:: @ 08DD7545
	.incbin "baserom.gba", 0xDD7545, 0x0000023
gUnk_08DD7568:: @ 08DD7568
	.incbin "baserom.gba", 0xDD7568, 0x000004B
gUnk_08DD75B3:: @ 08DD75B3
	.incbin "baserom.gba", 0xDD75B3, 0x0000039
bgmCaveOfFlames_track8:: @ 08DD75EC
	.incbin "baserom.gba", 0xDD75EC, 0x0000084
bgmCaveOfFlames:: @ 08DD7670
	sound_header 9 0 0 0xbc gUnk_08A07C10 bgmCaveOfFlames_track0 bgmCaveOfFlames_track1 bgmCaveOfFlames_track2 bgmCaveOfFlames_track3 bgmCaveOfFlames_track4 bgmCaveOfFlames_track5 bgmCaveOfFlames_track6 bgmCaveOfFlames_track7 bgmCaveOfFlames_track8

bgmFortressOfWinds_track0:: @ 08DD769C
	.incbin "baserom.gba", 0xDD769C, 0x000000B
gUnk_08DD76A7:: @ 08DD76A7
	.incbin "baserom.gba", 0xDD76A7, 0x0000024
gUnk_08DD76CB:: @ 08DD76CB
	.incbin "baserom.gba", 0xDD76CB, 0x000000F
gUnk_08DD76DA:: @ 08DD76DA
	.incbin "baserom.gba", 0xDD76DA, 0x0000050
gUnk_08DD772A:: @ 08DD772A
	.incbin "baserom.gba", 0xDD772A, 0x000003C
gUnk_08DD7766:: @ 08DD7766
	.incbin "baserom.gba", 0xDD7766, 0x0000073
bgmFortressOfWinds_track1:: @ 08DD77D9
	.incbin "baserom.gba", 0xDD77D9, 0x0000008
gUnk_08DD77E1:: @ 08DD77E1
	.incbin "baserom.gba", 0xDD77E1, 0x0000015
gUnk_08DD77F6:: @ 08DD77F6
	.incbin "baserom.gba", 0xDD77F6, 0x0000083
gUnk_08DD7879:: @ 08DD7879
	.incbin "baserom.gba", 0xDD7879, 0x0000088
bgmFortressOfWinds_track2:: @ 08DD7901
	.incbin "baserom.gba", 0xDD7901, 0x0000012
gUnk_08DD7913:: @ 08DD7913
	.incbin "baserom.gba", 0xDD7913, 0x0000031
gUnk_08DD7944:: @ 08DD7944
	.incbin "baserom.gba", 0xDD7944, 0x0000054
bgmFortressOfWinds_track3:: @ 08DD7998
	.incbin "baserom.gba", 0xDD7998, 0x0000044
gUnk_08DD79DC:: @ 08DD79DC
	.incbin "baserom.gba", 0xDD79DC, 0x00000DB
bgmFortressOfWinds_track4:: @ 08DD7AB7
	.incbin "baserom.gba", 0xDD7AB7, 0x000011F
bgmFortressOfWinds_track5:: @ 08DD7BD6
	.incbin "baserom.gba", 0xDD7BD6, 0x0000083
gUnk_08DD7C59:: @ 08DD7C59
	.incbin "baserom.gba", 0xDD7C59, 0x00000B1
bgmFortressOfWinds_track6:: @ 08DD7D0A
	.incbin "baserom.gba", 0xDD7D0A, 0x00000FE
bgmFortressOfWinds:: @ 08DD7E08
	sound_header 7 0 0 0xbc gUnk_08A08210 bgmFortressOfWinds_track0 bgmFortressOfWinds_track1 bgmFortressOfWinds_track2 bgmFortressOfWinds_track3 bgmFortressOfWinds_track4 bgmFortressOfWinds_track5 bgmFortressOfWinds_track6

bgmTempleOfDroplets_track0:: @ 08DD7E2C
	.incbin "baserom.gba", 0xDD7E2C, 0x0000015
gUnk_08DD7E41:: @ 08DD7E41
	.incbin "baserom.gba", 0xDD7E41, 0x0000061
bgmTempleOfDroplets_track1:: @ 08DD7EA2
	.incbin "baserom.gba", 0xDD7EA2, 0x00000F4
bgmTempleOfDroplets_track2:: @ 08DD7F96
	.incbin "baserom.gba", 0xDD7F96, 0x0000024
gUnk_08DD7FBA:: @ 08DD7FBA
	.incbin "baserom.gba", 0xDD7FBA, 0x000004B
gUnk_08DD8005:: @ 08DD8005
	.incbin "baserom.gba", 0xDD8005, 0x000002B
gUnk_08DD8030:: @ 08DD8030
	.incbin "baserom.gba", 0xDD8030, 0x0000096
gUnk_08DD80C6:: @ 08DD80C6
	.incbin "baserom.gba", 0xDD80C6, 0x0000034
bgmTempleOfDroplets_track3:: @ 08DD80FA
	.incbin "baserom.gba", 0xDD80FA, 0x0000027
gUnk_08DD8121:: @ 08DD8121
	.incbin "baserom.gba", 0xDD8121, 0x00000FB
gUnk_08DD821C:: @ 08DD821C
	.incbin "baserom.gba", 0xDD821C, 0x00000BA
bgmTempleOfDroplets_track4:: @ 08DD82D6
	.incbin "baserom.gba", 0xDD82D6, 0x000001A
bgmTempleOfDroplets_track5:: @ 08DD82F0
	.incbin "baserom.gba", 0xDD82F0, 0x000000B
gUnk_08DD82FB:: @ 08DD82FB
	.incbin "baserom.gba", 0xDD82FB, 0x00000D1
bgmTempleOfDroplets:: @ 08DD83CC
	sound_header 6 0 0 0xbc gUnk_08A08810 bgmTempleOfDroplets_track0 bgmTempleOfDroplets_track1 bgmTempleOfDroplets_track2 bgmTempleOfDroplets_track3 bgmTempleOfDroplets_track4 bgmTempleOfDroplets_track5

bgmPalaceOfWinds_track0:: @ 08DD83EC
	.incbin "baserom.gba", 0xDD83EC, 0x0000055
gUnk_08DD8441:: @ 08DD8441
	.incbin "baserom.gba", 0xDD8441, 0x0000028
bgmPalaceOfWinds_track1:: @ 08DD8469
	.incbin "baserom.gba", 0xDD8469, 0x000000B
gUnk_08DD8474:: @ 08DD8474
	.incbin "baserom.gba", 0xDD8474, 0x00000FC
gUnk_08DD8570:: @ 08DD8570
	.incbin "baserom.gba", 0xDD8570, 0x000007C
gUnk_08DD85EC:: @ 08DD85EC
	.incbin "baserom.gba", 0xDD85EC, 0x00000D5
bgmPalaceOfWinds_track2:: @ 08DD86C1
	.incbin "baserom.gba", 0xDD86C1, 0x0000203
bgmPalaceOfWinds_track3:: @ 08DD88C4
	.incbin "baserom.gba", 0xDD88C4, 0x000003B
gUnk_08DD88FF:: @ 08DD88FF
	.incbin "baserom.gba", 0xDD88FF, 0x00000CA
gUnk_08DD89C9:: @ 08DD89C9
	.incbin "baserom.gba", 0xDD89C9, 0x00000F4
bgmPalaceOfWinds_track4:: @ 08DD8ABD
	.incbin "baserom.gba", 0xDD8ABD, 0x0000017
gUnk_08DD8AD4:: @ 08DD8AD4
	.incbin "baserom.gba", 0xDD8AD4, 0x00000C7
bgmPalaceOfWinds_track5:: @ 08DD8B9B
	.incbin "baserom.gba", 0xDD8B9B, 0x0000025
bgmPalaceOfWinds_track6:: @ 08DD8BC0
	.incbin "baserom.gba", 0xDD8BC0, 0x0000018
gUnk_08DD8BD8:: @ 08DD8BD8
	.incbin "baserom.gba", 0xDD8BD8, 0x00000C4
gUnk_08DD8C9C:: @ 08DD8C9C
	.incbin "baserom.gba", 0xDD8C9C, 0x00000E2
bgmPalaceOfWinds_track7:: @ 08DD8D7E
	.incbin "baserom.gba", 0xDD8D7E, 0x0000048
gUnk_08DD8DC6:: @ 08DD8DC6
	.incbin "baserom.gba", 0xDD8DC6, 0x0000012
gUnk_08DD8DD8:: @ 08DD8DD8
	.incbin "baserom.gba", 0xDD8DD8, 0x0000084
bgmPalaceOfWinds:: @ 08DD8E5C
	sound_header 8 0 0 0xa8 gUnk_08A08E10 bgmPalaceOfWinds_track0 bgmPalaceOfWinds_track1 bgmPalaceOfWinds_track2 bgmPalaceOfWinds_track3 bgmPalaceOfWinds_track4 bgmPalaceOfWinds_track5 bgmPalaceOfWinds_track6 bgmPalaceOfWinds_track7

bgmEzloStory_track0:: @ 08DD8E84
	.incbin "baserom.gba", 0xDD8E84, 0x000004C
bgmEzloStory_track1:: @ 08DD8ED0
	.incbin "baserom.gba", 0xDD8ED0, 0x0000027
bgmEzloStory_track2:: @ 08DD8EF7
	.incbin "baserom.gba", 0xDD8EF7, 0x000002F
gUnk_08DD8F26:: @ 08DD8F26
	.incbin "baserom.gba", 0xDD8F26, 0x0000029
bgmEzloStory_track3:: @ 08DD8F4F
	.incbin "baserom.gba", 0xDD8F4F, 0x00000B5
bgmEzloStory_track4:: @ 08DD9004
	.incbin "baserom.gba", 0xDD9004, 0x0000028
bgmEzloStory:: @ 08DD902C
	sound_header 5 0 0 0xa8 gUnk_08A09410 bgmEzloStory_track0 bgmEzloStory_track1 bgmEzloStory_track2 bgmEzloStory_track3 bgmEzloStory_track4

bgmRoyalCrypt_track0:: @ 08DD9048
	.incbin "baserom.gba", 0xDD9048, 0x00000EA
bgmRoyalCrypt_track1:: @ 08DD9132
	.incbin "baserom.gba", 0xDD9132, 0x000000A
gUnk_08DD913C:: @ 08DD913C
	.incbin "baserom.gba", 0xDD913C, 0x000008D
bgmRoyalCrypt_track2:: @ 08DD91C9
	.incbin "baserom.gba", 0xDD91C9, 0x0000259
bgmRoyalCrypt_track3:: @ 08DD9422
	.incbin "baserom.gba", 0xDD9422, 0x000012C
bgmRoyalCrypt_track4:: @ 08DD954E
	.incbin "baserom.gba", 0xDD954E, 0x00000B6
bgmRoyalCrypt:: @ 08DD9604
	sound_header 5 0 0 0xbc gUnk_08A096D4 bgmRoyalCrypt_track0 bgmRoyalCrypt_track1 bgmRoyalCrypt_track2 bgmRoyalCrypt_track3 bgmRoyalCrypt_track4

bgmElementalSanctuary_track0:: @ 08DD9620
	.incbin "baserom.gba", 0xDD9620, 0x00000CE
gUnk_08DD96EE:: @ 08DD96EE
	.incbin "baserom.gba", 0xDD96EE, 0x0000091
bgmElementalSanctuary_track1:: @ 08DD977F
	.incbin "baserom.gba", 0xDD977F, 0x00000F1
bgmElementalSanctuary_track2:: @ 08DD9870
	.incbin "baserom.gba", 0xDD9870, 0x0000094
bgmElementalSanctuary_track3:: @ 08DD9904
	.incbin "baserom.gba", 0xDD9904, 0x0000094
bgmElementalSanctuary_track4:: @ 08DD9998
	.incbin "baserom.gba", 0xDD9998, 0x0000114
bgmElementalSanctuary:: @ 08DD9AAC
	sound_header 5 0 0 0xbc gUnk_08A09CD4 bgmElementalSanctuary_track0 bgmElementalSanctuary_track1 bgmElementalSanctuary_track2 bgmElementalSanctuary_track3 bgmElementalSanctuary_track4

bgmFightTheme_track0:: @ 08DD9AC8
	.incbin "baserom.gba", 0xDD9AC8, 0x0000046
gUnk_08DD9B0E:: @ 08DD9B0E
	.incbin "baserom.gba", 0xDD9B0E, 0x0000081
bgmFightTheme_track1:: @ 08DD9B8F
	.incbin "baserom.gba", 0xDD9B8F, 0x000002F
gUnk_08DD9BBE:: @ 08DD9BBE
	.incbin "baserom.gba", 0xDD9BBE, 0x0000025
gUnk_08DD9BE3:: @ 08DD9BE3
	.incbin "baserom.gba", 0xDD9BE3, 0x0000041
bgmFightTheme_track2:: @ 08DD9C24
	.incbin "baserom.gba", 0xDD9C24, 0x0000031
gUnk_08DD9C55:: @ 08DD9C55
	.incbin "baserom.gba", 0xDD9C55, 0x0000060
gUnk_08DD9CB5:: @ 08DD9CB5
	.incbin "baserom.gba", 0xDD9CB5, 0x0000035
bgmFightTheme_track3:: @ 08DD9CEA
	.incbin "baserom.gba", 0xDD9CEA, 0x000002C
gUnk_08DD9D16:: @ 08DD9D16
	.incbin "baserom.gba", 0xDD9D16, 0x0000022
gUnk_08DD9D38:: @ 08DD9D38
	.incbin "baserom.gba", 0xDD9D38, 0x0000048
bgmFightTheme_track4:: @ 08DD9D80
	.incbin "baserom.gba", 0xDD9D80, 0x0000031
gUnk_08DD9DB1:: @ 08DD9DB1
	.incbin "baserom.gba", 0xDD9DB1, 0x0000023
gUnk_08DD9DD4:: @ 08DD9DD4
	.incbin "baserom.gba", 0xDD9DD4, 0x0000018
gUnk_08DD9DEC:: @ 08DD9DEC
	.incbin "baserom.gba", 0xDD9DEC, 0x0000033
bgmFightTheme_track5:: @ 08DD9E1F
	.incbin "baserom.gba", 0xDD9E1F, 0x0000039
gUnk_08DD9E58:: @ 08DD9E58
	.incbin "baserom.gba", 0xDD9E58, 0x000004D
gUnk_08DD9EA5:: @ 08DD9EA5
	.incbin "baserom.gba", 0xDD9EA5, 0x0000037
bgmFightTheme_track6:: @ 08DD9EDC
	.incbin "baserom.gba", 0xDD9EDC, 0x000004D
gUnk_08DD9F29:: @ 08DD9F29
	.incbin "baserom.gba", 0xDD9F29, 0x0000027
bgmFightTheme:: @ 08DD9F50
	sound_header 7 0 0 0xa8 gUnk_08A09F44 bgmFightTheme_track0 bgmFightTheme_track1 bgmFightTheme_track2 bgmFightTheme_track3 bgmFightTheme_track4 bgmFightTheme_track5 bgmFightTheme_track6

bgmBossTheme_track0:: @ 08DD9F74
	.incbin "baserom.gba", 0xDD9F74, 0x0000063
bgmBossTheme_track1:: @ 08DD9FD7
	.incbin "baserom.gba", 0xDD9FD7, 0x00000A1
bgmBossTheme_track2:: @ 08DDA078
	.incbin "baserom.gba", 0xDDA078, 0x0000004
gUnk_08DDA07C:: @ 08DDA07C
	.incbin "baserom.gba", 0xDDA07C, 0x000003D
bgmBossTheme_track3:: @ 08DDA0B9
	.incbin "baserom.gba", 0xDDA0B9, 0x0000023
gUnk_08DDA0DC:: @ 08DDA0DC
	.incbin "baserom.gba", 0xDDA0DC, 0x0000004
gUnk_08DDA0E0:: @ 08DDA0E0
	.incbin "baserom.gba", 0xDDA0E0, 0x0000050
bgmBossTheme_track4:: @ 08DDA130
	.incbin "baserom.gba", 0xDDA130, 0x00000DF
bgmBossTheme_track5:: @ 08DDA20F
	.incbin "baserom.gba", 0xDDA20F, 0x000000B
gUnk_08DDA21A:: @ 08DDA21A
	.incbin "baserom.gba", 0xDDA21A, 0x0000026
gUnk_08DDA240:: @ 08DDA240
	.incbin "baserom.gba", 0xDDA240, 0x0000069
bgmBossTheme_track6:: @ 08DDA2A9
	.incbin "baserom.gba", 0xDDA2A9, 0x000000B
gUnk_08DDA2B4:: @ 08DDA2B4
	.incbin "baserom.gba", 0xDDA2B4, 0x0000026
gUnk_08DDA2DA:: @ 08DDA2DA
	.incbin "baserom.gba", 0xDDA2DA, 0x000006B
bgmBossTheme_track7:: @ 08DDA345
	.incbin "baserom.gba", 0xDDA345, 0x0000009
gUnk_08DDA34E:: @ 08DDA34E
	.incbin "baserom.gba", 0xDDA34E, 0x0000031
gUnk_08DDA37F:: @ 08DDA37F
	.incbin "baserom.gba", 0xDDA37F, 0x0000079
bgmBossTheme:: @ 08DDA3F8
	sound_header 8 0 0 0xa8 gUnk_08A0A544 bgmBossTheme_track0 bgmBossTheme_track1 bgmBossTheme_track2 bgmBossTheme_track3 bgmBossTheme_track4 bgmBossTheme_track5 bgmBossTheme_track6 bgmBossTheme_track7

bgmVaatiReborn_track0:: @ 08DDA420
	.incbin "baserom.gba", 0xDDA420, 0x0000013
gUnk_08DDA433:: @ 08DDA433
	.incbin "baserom.gba", 0xDDA433, 0x000003B
gUnk_08DDA46E:: @ 08DDA46E
	.incbin "baserom.gba", 0xDDA46E, 0x0000051
bgmVaatiReborn_track1:: @ 08DDA4BF
	.incbin "baserom.gba", 0xDDA4BF, 0x000000F
gUnk_08DDA4CE:: @ 08DDA4CE
	.incbin "baserom.gba", 0xDDA4CE, 0x000001E
gUnk_08DDA4EC:: @ 08DDA4EC
	.incbin "baserom.gba", 0xDDA4EC, 0x0000072
bgmVaatiReborn_track2:: @ 08DDA55E
	.incbin "baserom.gba", 0xDDA55E, 0x0000034
gUnk_08DDA592:: @ 08DDA592
	.incbin "baserom.gba", 0xDDA592, 0x0000048
gUnk_08DDA5DA:: @ 08DDA5DA
	.incbin "baserom.gba", 0xDDA5DA, 0x000008D
bgmVaatiReborn_track3:: @ 08DDA667
	.incbin "baserom.gba", 0xDDA667, 0x000006D
gUnk_08DDA6D4:: @ 08DDA6D4
	.incbin "baserom.gba", 0xDDA6D4, 0x0000082
bgmVaatiReborn_track4:: @ 08DDA756
	.incbin "baserom.gba", 0xDDA756, 0x000000E
gUnk_08DDA764:: @ 08DDA764
	.incbin "baserom.gba", 0xDDA764, 0x0000024
gUnk_08DDA788:: @ 08DDA788
	.incbin "baserom.gba", 0xDDA788, 0x000004D
bgmVaatiReborn_track5:: @ 08DDA7D5
	.incbin "baserom.gba", 0xDDA7D5, 0x0000013
gUnk_08DDA7E8:: @ 08DDA7E8
	.incbin "baserom.gba", 0xDDA7E8, 0x0000012
gUnk_08DDA7FA:: @ 08DDA7FA
	.incbin "baserom.gba", 0xDDA7FA, 0x000001B
gUnk_08DDA815:: @ 08DDA815
	.incbin "baserom.gba", 0xDDA815, 0x00000E8
bgmVaatiReborn_track6:: @ 08DDA8FD
	.incbin "baserom.gba", 0xDDA8FD, 0x000002A
gUnk_08DDA927:: @ 08DDA927
	.incbin "baserom.gba", 0xDDA927, 0x0000016
gUnk_08DDA93D:: @ 08DDA93D
	.incbin "baserom.gba", 0xDDA93D, 0x000006E
bgmVaatiReborn_track7:: @ 08DDA9AB
	.incbin "baserom.gba", 0xDDA9AB, 0x000011D
bgmVaatiReborn:: @ 08DDAAC8
	sound_header 8 0 0 0xa8 gUnk_08A0AB44 bgmVaatiReborn_track0 bgmVaatiReborn_track1 bgmVaatiReborn_track2 bgmVaatiReborn_track3 bgmVaatiReborn_track4 bgmVaatiReborn_track5 bgmVaatiReborn_track6 bgmVaatiReborn_track7

bgmVaatiTransfigured_track0:: @ 08DDAAF0
	.incbin "baserom.gba", 0xDDAAF0, 0x0000044
bgmVaatiTransfigured_track1:: @ 08DDAB34
	.incbin "baserom.gba", 0xDDAB34, 0x0000011
gUnk_08DDAB45:: @ 08DDAB45
	.incbin "baserom.gba", 0xDDAB45, 0x0000042
gUnk_08DDAB87:: @ 08DDAB87
	.incbin "baserom.gba", 0xDDAB87, 0x000004E
bgmVaatiTransfigured_track2:: @ 08DDABD5
	.incbin "baserom.gba", 0xDDABD5, 0x0000070
gUnk_08DDAC45:: @ 08DDAC45
	.incbin "baserom.gba", 0xDDAC45, 0x00000E5
bgmVaatiTransfigured_track3:: @ 08DDAD2A
	.incbin "baserom.gba", 0xDDAD2A, 0x0000007
gUnk_08DDAD31:: @ 08DDAD31
	.incbin "baserom.gba", 0xDDAD31, 0x0000068
gUnk_08DDAD99:: @ 08DDAD99
	.incbin "baserom.gba", 0xDDAD99, 0x0000064
gUnk_08DDADFD:: @ 08DDADFD
	.incbin "baserom.gba", 0xDDADFD, 0x000003C
bgmVaatiTransfigured_track4:: @ 08DDAE39
	.incbin "baserom.gba", 0xDDAE39, 0x000001A
gUnk_08DDAE53:: @ 08DDAE53
	.incbin "baserom.gba", 0xDDAE53, 0x0000063
bgmVaatiTransfigured_track5:: @ 08DDAEB6
	.incbin "baserom.gba", 0xDDAEB6, 0x0000007
gUnk_08DDAEBD:: @ 08DDAEBD
	.incbin "baserom.gba", 0xDDAEBD, 0x00000E8
bgmVaatiTransfigured_track6:: @ 08DDAFA5
	.incbin "baserom.gba", 0xDDAFA5, 0x0000007
gUnk_08DDAFAC:: @ 08DDAFAC
	.incbin "baserom.gba", 0xDDAFAC, 0x000001D
gUnk_08DDAFC9:: @ 08DDAFC9
	.incbin "baserom.gba", 0xDDAFC9, 0x000004C
bgmVaatiTransfigured_track7:: @ 08DDB015
	.incbin "baserom.gba", 0xDDB015, 0x000002A
gUnk_08DDB03F:: @ 08DDB03F
	.incbin "baserom.gba", 0xDDB03F, 0x000006F
bgmVaatiTransfigured_track8:: @ 08DDB0AE
	.incbin "baserom.gba", 0xDDB0AE, 0x0000008
gUnk_08DDB0B6:: @ 08DDB0B6
	.incbin "baserom.gba", 0xDDB0B6, 0x0000055
gUnk_08DDB10B:: @ 08DDB10B
	.incbin "baserom.gba", 0xDDB10B, 0x000007A
bgmVaatiTransfigured_track9:: @ 08DDB185
	.incbin "baserom.gba", 0xDDB185, 0x000000A
gUnk_08DDB18F:: @ 08DDB18F
	.incbin "baserom.gba", 0xDDB18F, 0x0000045
bgmVaatiTransfigured:: @ 08DDB1D4
	sound_header 0xa 0 0 0xa8 gUnk_08A0B144 bgmVaatiTransfigured_track0 bgmVaatiTransfigured_track1 bgmVaatiTransfigured_track2 bgmVaatiTransfigured_track3 bgmVaatiTransfigured_track4 bgmVaatiTransfigured_track5 bgmVaatiTransfigured_track6 bgmVaatiTransfigured_track7 bgmVaatiTransfigured_track8 bgmVaatiTransfigured_track9

bgmCastleCollapse_track0:: @ 08DDB204
	.incbin "baserom.gba", 0xDDB204, 0x0000017
gUnk_08DDB21B:: @ 08DDB21B
	.incbin "baserom.gba", 0xDDB21B, 0x0000047
bgmCastleCollapse_track1:: @ 08DDB262
	.incbin "baserom.gba", 0xDDB262, 0x0000020
gUnk_08DDB282:: @ 08DDB282
	.incbin "baserom.gba", 0xDDB282, 0x0000062
bgmCastleCollapse_track2:: @ 08DDB2E4
	.incbin "baserom.gba", 0xDDB2E4, 0x0000028
bgmCastleCollapse_track3:: @ 08DDB30C
	.incbin "baserom.gba", 0xDDB30C, 0x000009B
bgmCastleCollapse_track4:: @ 08DDB3A7
	.incbin "baserom.gba", 0xDDB3A7, 0x00000A4
bgmCastleCollapse_track5:: @ 08DDB44B
	.incbin "baserom.gba", 0xDDB44B, 0x00000AC
bgmCastleCollapse_track6:: @ 08DDB4F7
	.incbin "baserom.gba", 0xDDB4F7, 0x00000CB
bgmCastleCollapse_track7:: @ 08DDB5C2
	.incbin "baserom.gba", 0xDDB5C2, 0x0000007
gUnk_08DDB5C9:: @ 08DDB5C9
	.incbin "baserom.gba", 0xDDB5C9, 0x000001B
bgmCastleCollapse:: @ 08DDB5E4
	sound_header 8 0 0 0xa8 gUnk_08A0B744 bgmCastleCollapse_track0 bgmCastleCollapse_track1 bgmCastleCollapse_track2 bgmCastleCollapse_track3 bgmCastleCollapse_track4 bgmCastleCollapse_track5 bgmCastleCollapse_track6 bgmCastleCollapse_track7

bgmVaatiWrath_track0:: @ 08DDB60C
	.incbin "baserom.gba", 0xDDB60C, 0x000006E
gUnk_08DDB67A:: @ 08DDB67A
	.incbin "baserom.gba", 0xDDB67A, 0x000007F
gUnk_08DDB6F9:: @ 08DDB6F9
	.incbin "baserom.gba", 0xDDB6F9, 0x0000023
bgmVaatiWrath_track1:: @ 08DDB71C
	.incbin "baserom.gba", 0xDDB71C, 0x00000DE
bgmVaatiWrath_track2:: @ 08DDB7FA
	.incbin "baserom.gba", 0xDDB7FA, 0x000025A
bgmVaatiWrath_track3:: @ 08DDBA54
	.incbin "baserom.gba", 0xDDBA54, 0x0000049
gUnk_08DDBA9D:: @ 08DDBA9D
	.incbin "baserom.gba", 0xDDBA9D, 0x00000A6
bgmVaatiWrath_track4:: @ 08DDBB43
	.incbin "baserom.gba", 0xDDBB43, 0x0000067
gUnk_08DDBBAA:: @ 08DDBBAA
	.incbin "baserom.gba", 0xDDBBAA, 0x0000095
bgmVaatiWrath_track5:: @ 08DDBC3F
	.incbin "baserom.gba", 0xDDBC3F, 0x00000C4
bgmVaatiWrath_track6:: @ 08DDBD03
	.incbin "baserom.gba", 0xDDBD03, 0x0000041
bgmVaatiWrath_track7:: @ 08DDBD44
	.incbin "baserom.gba", 0xDDBD44, 0x000005F
gUnk_08DDBDA3:: @ 08DDBDA3
	.incbin "baserom.gba", 0xDDBDA3, 0x0000064
gUnk_08DDBE07:: @ 08DDBE07
	.incbin "baserom.gba", 0xDDBE07, 0x0000068
gUnk_08DDBE6F:: @ 08DDBE6F
	.incbin "baserom.gba", 0xDDBE6F, 0x0000034
bgmVaatiWrath_track8:: @ 08DDBEA3
	.incbin "baserom.gba", 0xDDBEA3, 0x00000CC
gUnk_08DDBF6F:: @ 08DDBF6F
	.incbin "baserom.gba", 0xDDBF6F, 0x0000101
bgmVaatiWrath:: @ 08DDC070
	sound_header 9 0 0 0xa8 gUnk_08A0BD44 bgmVaatiWrath_track0 bgmVaatiWrath_track1 bgmVaatiWrath_track2 bgmVaatiWrath_track3 bgmVaatiWrath_track4 bgmVaatiWrath_track5 bgmVaatiWrath_track6 bgmVaatiWrath_track7 bgmVaatiWrath_track8

bgmFightTheme2_track0:: @ 08DDC09C
	.incbin "baserom.gba", 0xDDC09C, 0x0000028
bgmFightTheme2_track1:: @ 08DDC0C4
	.incbin "baserom.gba", 0xDDC0C4, 0x0000008
gUnk_08DDC0CC:: @ 08DDC0CC
	.incbin "baserom.gba", 0xDDC0CC, 0x0000055
bgmFightTheme2_track2:: @ 08DDC121
	.incbin "baserom.gba", 0xDDC121, 0x0000007
gUnk_08DDC128:: @ 08DDC128
	.incbin "baserom.gba", 0xDDC128, 0x0000012
bgmFightTheme2_track3:: @ 08DDC13A
	.incbin "baserom.gba", 0xDDC13A, 0x0000070
bgmFightTheme2_track4:: @ 08DDC1AA
	.incbin "baserom.gba", 0xDDC1AA, 0x0000021
gUnk_08DDC1CB:: @ 08DDC1CB
	.incbin "baserom.gba", 0xDDC1CB, 0x0000033
bgmFightTheme2_track5:: @ 08DDC1FE
	.incbin "baserom.gba", 0xDDC1FE, 0x000001A
bgmFightTheme2_track6:: @ 08DDC218
	.incbin "baserom.gba", 0xDDC218, 0x0000038
bgmFightTheme2:: @ 08DDC250
	sound_header 7 0 0 0xa8 gUnk_08A0C344 bgmFightTheme2_track0 bgmFightTheme2_track1 bgmFightTheme2_track2 bgmFightTheme2_track3 bgmFightTheme2_track4 bgmFightTheme2_track5 bgmFightTheme2_track6

bgmDiggingCave_track0:: @ 08DDC274
	.incbin "baserom.gba", 0xDDC274, 0x0000032
bgmDiggingCave_track1:: @ 08DDC2A6
	.incbin "baserom.gba", 0xDDC2A6, 0x0000008
gUnk_08DDC2AE:: @ 08DDC2AE
	.incbin "baserom.gba", 0xDDC2AE, 0x000002B
bgmDiggingCave_track2:: @ 08DDC2D9
	.incbin "baserom.gba", 0xDDC2D9, 0x0000032
bgmDiggingCave_track3:: @ 08DDC30B
	.incbin "baserom.gba", 0xDDC30B, 0x000003B
bgmDiggingCave_track4:: @ 08DDC346
	.incbin "baserom.gba", 0xDDC346, 0x0000012
bgmDiggingCave_track5:: @ 08DDC358
	.incbin "baserom.gba", 0xDDC358, 0x000003C
bgmDiggingCave:: @ 08DDC394
	sound_header 6 0 0 0xb2 gUnk_08A0C944 bgmDiggingCave_track0 bgmDiggingCave_track1 bgmDiggingCave_track2 bgmDiggingCave_track3 bgmDiggingCave_track4 bgmDiggingCave_track5

bgmSwiftbladeDojo_track0:: @ 08DDC3B4
	.incbin "baserom.gba", 0xDDC3B4, 0x000002E
bgmSwiftbladeDojo_track1:: @ 08DDC3E2
	.incbin "baserom.gba", 0xDDC3E2, 0x0000007
gUnk_08DDC3E9:: @ 08DDC3E9
	.incbin "baserom.gba", 0xDDC3E9, 0x0000020
bgmSwiftbladeDojo_track2:: @ 08DDC409
	.incbin "baserom.gba", 0xDDC409, 0x0000013
bgmSwiftbladeDojo_track3:: @ 08DDC41C
	.incbin "baserom.gba", 0xDDC41C, 0x0000098
bgmSwiftbladeDojo:: @ 08DDC4B4
	sound_header 4 0 0 0x9e gUnk_08A0CF44 bgmSwiftbladeDojo_track0 bgmSwiftbladeDojo_track1 bgmSwiftbladeDojo_track2 bgmSwiftbladeDojo_track3

bgmMinishCap_track0:: @ 08DDC4CC
	.incbin "baserom.gba", 0xDDC4CC, 0x0000027
gUnk_08DDC4F3:: @ 08DDC4F3
	.incbin "baserom.gba", 0xDDC4F3, 0x0000043
gUnk_08DDC536:: @ 08DDC536
	.incbin "baserom.gba", 0xDDC536, 0x000002C
gUnk_08DDC562:: @ 08DDC562
	.incbin "baserom.gba", 0xDDC562, 0x0000018
gUnk_08DDC57A:: @ 08DDC57A
	.incbin "baserom.gba", 0xDDC57A, 0x000003E
gUnk_08DDC5B8:: @ 08DDC5B8
	.incbin "baserom.gba", 0xDDC5B8, 0x0000013
gUnk_08DDC5CB:: @ 08DDC5CB
	.incbin "baserom.gba", 0xDDC5CB, 0x0000060
bgmMinishCap_track1:: @ 08DDC62B
	.incbin "baserom.gba", 0xDDC62B, 0x0000014
gUnk_08DDC63F:: @ 08DDC63F
	.incbin "baserom.gba", 0xDDC63F, 0x00000C9
gUnk_08DDC708:: @ 08DDC708
	.incbin "baserom.gba", 0xDDC708, 0x000001D
gUnk_08DDC725:: @ 08DDC725
	.incbin "baserom.gba", 0xDDC725, 0x000014A
bgmMinishCap_track2:: @ 08DDC86F
	.incbin "baserom.gba", 0xDDC86F, 0x0000016
gUnk_08DDC885:: @ 08DDC885
	.incbin "baserom.gba", 0xDDC885, 0x000003F
gUnk_08DDC8C4:: @ 08DDC8C4
	.incbin "baserom.gba", 0xDDC8C4, 0x00000BF
bgmMinishCap_track3:: @ 08DDC983
	.incbin "baserom.gba", 0xDDC983, 0x0000007
gUnk_08DDC98A:: @ 08DDC98A
	.incbin "baserom.gba", 0xDDC98A, 0x0000163
bgmMinishCap_track4:: @ 08DDCAED
	.incbin "baserom.gba", 0xDDCAED, 0x0000011
gUnk_08DDCAFE:: @ 08DDCAFE
	.incbin "baserom.gba", 0xDDCAFE, 0x00000C7
gUnk_08DDCBC5:: @ 08DDCBC5
	.incbin "baserom.gba", 0xDDCBC5, 0x0000006
gUnk_08DDCBCB:: @ 08DDCBCB
	.incbin "baserom.gba", 0xDDCBCB, 0x00000DB
bgmMinishCap_track5:: @ 08DDCCA6
	.incbin "baserom.gba", 0xDDCCA6, 0x0000024
gUnk_08DDCCCA:: @ 08DDCCCA
	.incbin "baserom.gba", 0xDDCCCA, 0x0000094
gUnk_08DDCD5E:: @ 08DDCD5E
	.incbin "baserom.gba", 0xDDCD5E, 0x000012C
bgmMinishCap_track6:: @ 08DDCE8A
	.incbin "baserom.gba", 0xDDCE8A, 0x0000007
gUnk_08DDCE91:: @ 08DDCE91
	.incbin "baserom.gba", 0xDDCE91, 0x0000008
gUnk_08DDCE99:: @ 08DDCE99
	.incbin "baserom.gba", 0xDDCE99, 0x000002E
gUnk_08DDCEC7:: @ 08DDCEC7
	.incbin "baserom.gba", 0xDDCEC7, 0x000001E
gUnk_08DDCEE5:: @ 08DDCEE5
	.incbin "baserom.gba", 0xDDCEE5, 0x0000043
bgmMinishCap:: @ 08DDCF28
	sound_header 7 0 0 0xb2 gUnk_08A0D544 bgmMinishCap_track0 bgmMinishCap_track1 bgmMinishCap_track2 bgmMinishCap_track3 bgmMinishCap_track4 bgmMinishCap_track5 bgmMinishCap_track6

bgmMtCrenel_track0:: @ 08DDCF4C
	.incbin "baserom.gba", 0xDDCF4C, 0x00000EB
bgmMtCrenel_track1:: @ 08DDD037
	.incbin "baserom.gba", 0xDDD037, 0x0000016
gUnk_08DDD04D:: @ 08DDD04D
	.incbin "baserom.gba", 0xDDD04D, 0x0000025
gUnk_08DDD072:: @ 08DDD072
	.incbin "baserom.gba", 0xDDD072, 0x0000017
gUnk_08DDD089:: @ 08DDD089
	.incbin "baserom.gba", 0xDDD089, 0x0000088
bgmMtCrenel_track2:: @ 08DDD111
	.incbin "baserom.gba", 0xDDD111, 0x0000011
gUnk_08DDD122:: @ 08DDD122
	.incbin "baserom.gba", 0xDDD122, 0x0000074
bgmMtCrenel_track3:: @ 08DDD196
	.incbin "baserom.gba", 0xDDD196, 0x0000010
gUnk_08DDD1A6:: @ 08DDD1A6
	.incbin "baserom.gba", 0xDDD1A6, 0x000008E
bgmMtCrenel_track4:: @ 08DDD234
	.incbin "baserom.gba", 0xDDD234, 0x000010A
bgmMtCrenel_track5:: @ 08DDD33E
	.incbin "baserom.gba", 0xDDD33E, 0x0000042
gUnk_08DDD380:: @ 08DDD380
	.incbin "baserom.gba", 0xDDD380, 0x00000D4
bgmMtCrenel_track6:: @ 08DDD454
	.incbin "baserom.gba", 0xDDD454, 0x00000BC
bgmMtCrenel:: @ 08DDD510
	sound_header 7 0 0 0xb2 gUnk_08A0DB44 bgmMtCrenel_track0 bgmMtCrenel_track1 bgmMtCrenel_track2 bgmMtCrenel_track3 bgmMtCrenel_track4 bgmMtCrenel_track5 bgmMtCrenel_track6

bgmPicoriFestival_track0:: @ 08DDD534
	.incbin "baserom.gba", 0xDDD534, 0x000001F
gUnk_08DDD553:: @ 08DDD553
	.incbin "baserom.gba", 0xDDD553, 0x0000024
gUnk_08DDD577:: @ 08DDD577
	.incbin "baserom.gba", 0xDDD577, 0x00000AD
bgmPicoriFestival_track1:: @ 08DDD624
	.incbin "baserom.gba", 0xDDD624, 0x000004E
gUnk_08DDD672:: @ 08DDD672
	.incbin "baserom.gba", 0xDDD672, 0x00000AD
bgmPicoriFestival_track2:: @ 08DDD71F
	.incbin "baserom.gba", 0xDDD71F, 0x000008D
bgmPicoriFestival_track3:: @ 08DDD7AC
	.incbin "baserom.gba", 0xDDD7AC, 0x0000006
gUnk_08DDD7B2:: @ 08DDD7B2
	.incbin "baserom.gba", 0xDDD7B2, 0x00000A8
gUnk_08DDD85A:: @ 08DDD85A
	.incbin "baserom.gba", 0xDDD85A, 0x00000FB
bgmPicoriFestival_track4:: @ 08DDD955
	.incbin "baserom.gba", 0xDDD955, 0x0000046
bgmPicoriFestival_track5:: @ 08DDD99B
	.incbin "baserom.gba", 0xDDD99B, 0x000002D
bgmPicoriFestival_track6:: @ 08DDD9C8
	.incbin "baserom.gba", 0xDDD9C8, 0x0000036
gUnk_08DDD9FE:: @ 08DDD9FE
	.incbin "baserom.gba", 0xDDD9FE, 0x0000052
bgmPicoriFestival:: @ 08DDDA50
	sound_header 7 0 0 0x9e gUnk_08A0E144 bgmPicoriFestival_track0 bgmPicoriFestival_track1 bgmPicoriFestival_track2 bgmPicoriFestival_track3 bgmPicoriFestival_track4 bgmPicoriFestival_track5 bgmPicoriFestival_track6

bgmLostWoods_track0:: @ 08DDDA74
	.incbin "baserom.gba", 0xDDDA74, 0x000009E
gUnk_08DDDB12:: @ 08DDDB12
	.incbin "baserom.gba", 0xDDDB12, 0x00001C8
gUnk_08DDDCDA:: @ 08DDDCDA
	.incbin "baserom.gba", 0xDDDCDA, 0x000001F
bgmLostWoods_track1:: @ 08DDDCF9
	.incbin "baserom.gba", 0xDDDCF9, 0x0000008
gUnk_08DDDD01:: @ 08DDDD01
	.incbin "baserom.gba", 0xDDDD01, 0x000000C
gUnk_08DDDD0D:: @ 08DDDD0D
	.incbin "baserom.gba", 0xDDDD0D, 0x0000020
gUnk_08DDDD2D:: @ 08DDDD2D
	.incbin "baserom.gba", 0xDDDD2D, 0x00000B1
gUnk_08DDDDDE:: @ 08DDDDDE
	.incbin "baserom.gba", 0xDDDDDE, 0x0000007
bgmLostWoods_track2:: @ 08DDDDE5
	.incbin "baserom.gba", 0xDDDDE5, 0x0000008
gUnk_08DDDDED:: @ 08DDDDED
	.incbin "baserom.gba", 0xDDDDED, 0x000003B
gUnk_08DDDE28:: @ 08DDDE28
	.incbin "baserom.gba", 0xDDDE28, 0x0000056
gUnk_08DDDE7E:: @ 08DDDE7E
	.incbin "baserom.gba", 0xDDDE7E, 0x000000C
gUnk_08DDDE8A:: @ 08DDDE8A
	.incbin "baserom.gba", 0xDDDE8A, 0x00000E9
bgmLostWoods_track3:: @ 08DDDF73
	.incbin "baserom.gba", 0xDDDF73, 0x000008F
gUnk_08DDE002:: @ 08DDE002
	.incbin "baserom.gba", 0xDDE002, 0x0000017
bgmLostWoods_track4:: @ 08DDE019
	.incbin "baserom.gba", 0xDDE019, 0x0000020
gUnk_08DDE039:: @ 08DDE039
	.incbin "baserom.gba", 0xDDE039, 0x0000149
bgmLostWoods_track5:: @ 08DDE182
	.incbin "baserom.gba", 0xDDE182, 0x0000008
gUnk_08DDE18A:: @ 08DDE18A
	.incbin "baserom.gba", 0xDDE18A, 0x0000015
gUnk_08DDE19F:: @ 08DDE19F
	.incbin "baserom.gba", 0xDDE19F, 0x000004A
gUnk_08DDE1E9:: @ 08DDE1E9
	.incbin "baserom.gba", 0xDDE1E9, 0x000009A
bgmLostWoods_track6:: @ 08DDE283
	.incbin "baserom.gba", 0xDDE283, 0x000004F
gUnk_08DDE2D2:: @ 08DDE2D2
	.incbin "baserom.gba", 0xDDE2D2, 0x0000060
gUnk_08DDE332:: @ 08DDE332
	.incbin "baserom.gba", 0xDDE332, 0x00001B2
bgmLostWoods:: @ 08DDE4E4
	sound_header 7 0 0 0x9e gUnk_08A0E744 bgmLostWoods_track0 bgmLostWoods_track1 bgmLostWoods_track2 bgmLostWoods_track3 bgmLostWoods_track4 bgmLostWoods_track5 bgmLostWoods_track6

bgmFairyFountain2_track0:: @ 08DDE508
	.incbin "baserom.gba", 0xDDE508, 0x000000B
gUnk_08DDE513:: @ 08DDE513
	.incbin "baserom.gba", 0xDDE513, 0x0000056
bgmFairyFountain2_track1:: @ 08DDE569
	.incbin "baserom.gba", 0xDDE569, 0x000006F
bgmFairyFountain2_track2:: @ 08DDE5D8
	.incbin "baserom.gba", 0xDDE5D8, 0x000002E
bgmFairyFountain2_track3:: @ 08DDE606
	.incbin "baserom.gba", 0xDDE606, 0x000002F
gUnk_08DDE635:: @ 08DDE635
	.incbin "baserom.gba", 0xDDE635, 0x000002E
bgmFairyFountain2_track4:: @ 08DDE663
	.incbin "baserom.gba", 0xDDE663, 0x0000064
gUnk_08DDE6C7:: @ 08DDE6C7
	.incbin "baserom.gba", 0xDDE6C7, 0x0000024
bgmFairyFountain2_track5:: @ 08DDE6EB
	.incbin "baserom.gba", 0xDDE6EB, 0x00000A3
bgmFairyFountain2_track6:: @ 08DDE78E
	.incbin "baserom.gba", 0xDDE78E, 0x0000096
bgmFairyFountain2:: @ 08DDE824
	sound_header 7 0 0 0xa8 gUnk_08A0ED44 bgmFairyFountain2_track0 bgmFairyFountain2_track1 bgmFairyFountain2_track2 bgmFairyFountain2_track3 bgmFairyFountain2_track4 bgmFairyFountain2_track5 bgmFairyFountain2_track6

bgmWindRuins_track0:: @ 08DDE848
	.incbin "baserom.gba", 0xDDE848, 0x0000013
gUnk_08DDE85B:: @ 08DDE85B
	.incbin "baserom.gba", 0xDDE85B, 0x0000073
bgmWindRuins_track1:: @ 08DDE8CE
	.incbin "baserom.gba", 0xDDE8CE, 0x000000D
gUnk_08DDE8DB:: @ 08DDE8DB
	.incbin "baserom.gba", 0xDDE8DB, 0x0000004
gUnk_08DDE8DF:: @ 08DDE8DF
	.incbin "baserom.gba", 0xDDE8DF, 0x000007B
bgmWindRuins_track2:: @ 08DDE95A
	.incbin "baserom.gba", 0xDDE95A, 0x0000026
gUnk_08DDE980:: @ 08DDE980
	.incbin "baserom.gba", 0xDDE980, 0x0000018
bgmWindRuins_track3:: @ 08DDE998
	.incbin "baserom.gba", 0xDDE998, 0x000005C
bgmWindRuins_track4:: @ 08DDE9F4
	.incbin "baserom.gba", 0xDDE9F4, 0x00000C0
gUnk_08DDEAB4:: @ 08DDEAB4
	.incbin "baserom.gba", 0xDDEAB4, 0x0000068
bgmWindRuins_track5:: @ 08DDEB1C
	.incbin "baserom.gba", 0xDDEB1C, 0x000002F
gUnk_08DDEB4B:: @ 08DDEB4B
	.incbin "baserom.gba", 0xDDEB4B, 0x000009E
bgmWindRuins_track6:: @ 08DDEBE9
	.incbin "baserom.gba", 0xDDEBE9, 0x000004F
bgmWindRuins:: @ 08DDEC38
	sound_header 7 0 0 0xa8 gUnk_08A0F014 bgmWindRuins_track0 bgmWindRuins_track1 bgmWindRuins_track2 bgmWindRuins_track3 bgmWindRuins_track4 bgmWindRuins_track5 bgmWindRuins_track6

bgmLearnScroll_track0:: @ 08DDEC5C
	.incbin "baserom.gba", 0xDDEC5C, 0x000002F
bgmLearnScroll_track1:: @ 08DDEC8B
	.incbin "baserom.gba", 0xDDEC8B, 0x000000E
bgmLearnScroll_track2:: @ 08DDEC99
	.incbin "baserom.gba", 0xDDEC99, 0x0000027
bgmLearnScroll_track3:: @ 08DDECC0
	.incbin "baserom.gba", 0xDDECC0, 0x0000013
bgmLearnScroll_track4:: @ 08DDECD3
	.incbin "baserom.gba", 0xDDECD3, 0x0000099
bgmLearnScroll:: @ 08DDED6C
	sound_header 5 0 0 0x9e gUnk_08A0CF44 bgmLearnScroll_track0 bgmLearnScroll_track1 bgmLearnScroll_track2 bgmLearnScroll_track3 bgmLearnScroll_track4

bgmEzloGet_track0:: @ 08DDED88
	.incbin "baserom.gba", 0xDDED88, 0x0000026
bgmEzloGet_track1:: @ 08DDEDAE
	.incbin "baserom.gba", 0xDDEDAE, 0x0000011
bgmEzloGet_track2:: @ 08DDEDBF
	.incbin "baserom.gba", 0xDDEDBF, 0x000001C
bgmEzloGet_track3:: @ 08DDEDDB
	.incbin "baserom.gba", 0xDDEDDB, 0x000001A
bgmEzloGet_track4:: @ 08DDEDF5
	.incbin "baserom.gba", 0xDDEDF5, 0x0000023
bgmEzloGet:: @ 08DDEE18
	sound_header 5 0 0 0xb2 gUnk_08A0F614 bgmEzloGet_track0 bgmEzloGet_track1 bgmEzloGet_track2 bgmEzloGet_track3 bgmEzloGet_track4

sfxBeep_track0:: @ 08DDEE34
	.incbin "baserom.gba", 0xDDEE34, 0x0000010
sfxBeep:: @ 08DDEE44
	sound_header 1 0 0xff 0 gUnk_08A0FF44 sfxBeep_track0

sfxTextboxOpen_track0:: @ 08DDEE50
	.incbin "baserom.gba", 0xDDEE50, 0x0000036
sfxTextboxOpen_track1:: @ 08DDEE86
	.incbin "baserom.gba", 0xDDEE86, 0x0000036
sfxTextboxOpen:: @ 08DDEEBC
	sound_header 2 0 0x30 0 gUnk_08A0FF50 sfxTextboxOpen_track0 sfxTextboxOpen_track1

sfxTextboxClose_track0:: @ 08DDEECC
	.incbin "baserom.gba", 0xDDEECC, 0x000002A
sfxTextboxClose_track1:: @ 08DDEEF6
	.incbin "baserom.gba", 0xDDEEF6, 0x0000009
gUnk_08DDEEFF:: @ 08DDEEFF
	.incbin "baserom.gba", 0xDDEEFF, 0x0000021
sfxTextboxClose:: @ 08DDEF20
	sound_header 2 0 0x30 0 gUnk_08A0FF80 sfxTextboxClose_track0 sfxTextboxClose_track1

sfxTextboxNext_track0:: @ 08DDEF30
	.incbin "baserom.gba", 0xDDEF30, 0x0000014
sfxTextboxNext:: @ 08DDEF44
	sound_header 1 0 0x40 0 gUnk_08A0FF98 sfxTextboxNext_track0

sfxTextboxSwap_track0:: @ 08DDEF50
	.incbin "baserom.gba", 0xDDEF50, 0x000002C
sfxTextboxSwap:: @ 08DDEF7C
	sound_header 1 0 0x40 0 gUnk_08A0FFA4 sfxTextboxSwap_track0

sfxTextboxChoice_track0:: @ 08DDEF88
	.incbin "baserom.gba", 0xDDEF88, 0x0000014
sfxTextboxChoice:: @ 08DDEF9C
	sound_header 1 0 0x40 0 gUnk_08A0FFB0 sfxTextboxChoice_track0

sfxTextboxSelect_track0:: @ 08DDEFA8
	.incbin "baserom.gba", 0xDDEFA8, 0x0000060
sfxTextboxSelect:: @ 08DDF008
	sound_header 1 0 0x40 0 gUnk_08A0FFBC sfxTextboxSelect_track0

sfx6B_track0:: @ 08DDF014
	.incbin "baserom.gba", 0xDDF014, 0x000002C
sfx6B:: @ 08DDF040
	sound_header 1 0 0x40 0 gUnk_08A0FFC8 sfx6B_track0

sfxMenuCancel_track0:: @ 08DDF04C
	.incbin "baserom.gba", 0xDDF04C, 0x000001C
sfxMenuCancel:: @ 08DDF068
	sound_header 1 0 0x40 0 gUnk_08A0FFD4 sfxMenuCancel_track0

sfxMenuError_track0:: @ 08DDF074
	.incbin "baserom.gba", 0xDDF074, 0x0000020
sfxMenuError:: @ 08DDF094
	sound_header 1 0 0x40 0 gUnk_08A0FFEC sfxMenuError_track0

sfxRupeeBounce_track0:: @ 08DDF0A0
	.incbin "baserom.gba", 0xDDF0A0, 0x000001C
sfxRupeeBounce:: @ 08DDF0BC
	sound_header 1 0 0x58 0 gUnk_08A0FFF8 sfxRupeeBounce_track0

sfxRupeeGet_track0:: @ 08DDF0C8
	.incbin "baserom.gba", 0xDDF0C8, 0x0000024
sfxRupeeGet:: @ 08DDF0EC
	sound_header 1 0 0x60 0 gUnk_08A10004 sfxRupeeGet_track0

sfxHeartBounce_track0:: @ 08DDF0F8
	.incbin "baserom.gba", 0xDDF0F8, 0x000004C
sfxHeartBounce:: @ 08DDF144
	sound_header 1 0 0x58 0 gUnk_08A10010 sfxHeartBounce_track0

sfxHeartGet_track0:: @ 08DDF150
	.incbin "baserom.gba", 0xDDF150, 0x000001C
sfxHeartGet:: @ 08DDF16C
	sound_header 1 0 0x60 0 gUnk_08A10028 sfxHeartGet_track0

sfxSecret_track0:: @ 08DDF178
	.incbin "baserom.gba", 0xDDF178, 0x0000024
sfxSecret:: @ 08DDF19C
	sound_header 1 0 0xc0 0 gUnk_08A10034 sfxSecret_track0

sfxSecretBig_track0:: @ 08DDF1A8
	.incbin "baserom.gba", 0xDDF1A8, 0x0000027
sfxSecretBig_track1:: @ 08DDF1CF
	.incbin "baserom.gba", 0xDDF1CF, 0x0000025
sfxSecretBig:: @ 08DDF1F4
	sound_header 2 0 0xd0 0 gUnk_08A1004C sfxSecretBig_track0 sfxSecretBig_track1

sfxMetalClink_track0:: @ 08DDF204
	.incbin "baserom.gba", 0xDDF204, 0x0000018
sfxMetalClink:: @ 08DDF21C
	sound_header 1 0 0x44 0 gUnk_08A1007C sfxMetalClink_track0

sfxPlyVo1_track0:: @ 08DDF228
	.incbin "baserom.gba", 0xDDF228, 0x0000010
sfxPlyVo1:: @ 08DDF238
	sound_header 1 0 0x48 0 gUnk_08A10088 sfxPlyVo1_track0

sfxPlyVo2_track0:: @ 08DDF244
	.incbin "baserom.gba", 0xDDF244, 0x0000010
sfxPlyVo2:: @ 08DDF254
	sound_header 1 0 0x48 0 gUnk_08A10094 sfxPlyVo2_track0

sfxPlyVo3_track0:: @ 08DDF260
	.incbin "baserom.gba", 0xDDF260, 0x0000010
sfxPlyVo3:: @ 08DDF270
	sound_header 1 0 0x48 0 gUnk_08A100A0 sfxPlyVo3_track0

sfxPlyVo4_track0:: @ 08DDF27C
	.incbin "baserom.gba", 0xDDF27C, 0x0000010
sfxPlyVo4:: @ 08DDF28C
	sound_header 1 0 0x48 0 gUnk_08A100AC sfxPlyVo4_track0

sfxPlyVo5_track0:: @ 08DDF298
	.incbin "baserom.gba", 0xDDF298, 0x0000010
sfxPlyVo5:: @ 08DDF2A8
	sound_header 1 0 0x48 0 gUnk_08A100B8 sfxPlyVo5_track0

sfxPlyVo6_track0:: @ 08DDF2B4
	.incbin "baserom.gba", 0xDDF2B4, 0x0000010
sfxPlyVo6:: @ 08DDF2C4
	sound_header 1 0 0x48 0 gUnk_08A100C4 sfxPlyVo6_track0

sfxPlyVo7_track0:: @ 08DDF2D0
	.incbin "baserom.gba", 0xDDF2D0, 0x0000010
sfxPlyVo7:: @ 08DDF2E0
	sound_header 1 0 0x48 0 gUnk_08A100D0 sfxPlyVo7_track0

sfxPlyJump_track0:: @ 08DDF2EC
	.incbin "baserom.gba", 0xDDF2EC, 0x0000010
sfxPlyJump:: @ 08DDF2FC
	sound_header 1 0 0x40 0 gUnk_08A100DC sfxPlyJump_track0

sfxPlyLand_track0:: @ 08DDF308
	.incbin "baserom.gba", 0xDDF308, 0x0000014
sfxPlyLand:: @ 08DDF31C
	sound_header 1 0 0x40 0 gUnk_08A100E8 sfxPlyLand_track0

sfx7E_track0:: @ 08DDF328
	.incbin "baserom.gba", 0xDDF328, 0x0000014
sfx7E:: @ 08DDF33C
	sound_header 1 0 0x30 0 gUnk_08A100F4 sfx7E_track0

sfxPlyLift_track0:: @ 08DDF348
	.incbin "baserom.gba", 0xDDF348, 0x0000044
sfxPlyLift:: @ 08DDF38C
	sound_header 1 0 0x40 0 gUnk_08A10100 sfxPlyLift_track0

sfx80_track0:: @ 08DDF398
	.incbin "baserom.gba", 0xDDF398, 0x0000018
sfx80:: @ 08DDF3B0
	sound_header 1 0 0x30 0 gUnk_08A10118 sfx80_track0

sfx81_track0:: @ 08DDF3BC
	.incbin "baserom.gba", 0xDDF3BC, 0x0000028
sfx81:: @ 08DDF3E4
	sound_header 1 0 0x40 0 gUnk_08A10124 sfx81_track0

sfx82_track0:: @ 08DDF3F0
	.incbin "baserom.gba", 0xDDF3F0, 0x0000010
sfx82:: @ 08DDF400
	sound_header 1 0 0x40 0 gUnk_08A10148 sfx82_track0

sfxWaterWalk_track0:: @ 08DDF40C
	.incbin "baserom.gba", 0xDDF40C, 0x0000017
sfxWaterWalk_track1:: @ 08DDF423
	.incbin "baserom.gba", 0xDDF423, 0x0000019
sfxWaterWalk:: @ 08DDF43C
	sound_header 2 0 0x28 0 gUnk_08A10154 sfxWaterWalk_track0 sfxWaterWalk_track1

sfxWaterSplash_track0:: @ 08DDF44C
	.incbin "baserom.gba", 0xDDF44C, 0x0000038
sfxWaterSplash:: @ 08DDF484
	sound_header 1 0 0x40 0 gUnk_08A1016C sfxWaterSplash_track0

sfxFallHole_track0:: @ 08DDF490
	.incbin "baserom.gba", 0xDDF490, 0x00000EC
sfxFallHole:: @ 08DDF57C
	sound_header 1 0 0x40 0 gUnk_08A10184 sfxFallHole_track0

sfx86_track0:: @ 08DDF588
	.incbin "baserom.gba", 0xDDF588, 0x0000010
sfx86:: @ 08DDF598
	sound_header 1 0 0x40 0 gUnk_08A10190 sfx86_track0

sfxPlyDie_track0:: @ 08DDF5A4
	.incbin "baserom.gba", 0xDDF5A4, 0x0000064
sfxPlyDie:: @ 08DDF608
	sound_header 1 0 0x40 0 gUnk_08A1019C sfxPlyDie_track0

sfx88_track0:: @ 08DDF614
	.incbin "baserom.gba", 0xDDF614, 0x000001C
sfx88:: @ 08DDF630
	sound_header 1 0 0x40 0 gUnk_08A101A8 sfx88_track0

sfxBarrelRelease_track0:: @ 08DDF63C
	.incbin "baserom.gba", 0xDDF63C, 0x0000010
sfxBarrelRelease:: @ 08DDF64C
	sound_header 1 0 0x40 0 gUnk_08A101B4 sfxBarrelRelease_track0

sfxBarrelEnter_track0:: @ 08DDF658
	.incbin "baserom.gba", 0xDDF658, 0x0000010
sfxBarrelEnter:: @ 08DDF668
	sound_header 1 0 0x40 0 gUnk_08A101C0 sfxBarrelEnter_track0

sfxBarrelRoll_track0:: @ 08DDF674
	.incbin "baserom.gba", 0xDDF674, 0x0000010
sfxBarrelRoll:: @ 08DDF684
	sound_header 1 0 0x40 0 gUnk_08A101CC sfxBarrelRoll_track0

sfxBarrelRollStop_track0:: @ 08DDF690
	.incbin "baserom.gba", 0xDDF690, 0x0000010
sfxBarrelRollStop:: @ 08DDF6A0
	sound_header 1 0 0x40 0 gUnk_08A101D8 sfxBarrelRollStop_track0

sfxVoEzlo1_track0:: @ 08DDF6AC
	.incbin "baserom.gba", 0xDDF6AC, 0x0000010
sfxVoEzlo1:: @ 08DDF6BC
	sound_header 1 0 0x48 0 gUnk_08A101E4 sfxVoEzlo1_track0

sfxVoEzlo2_track0:: @ 08DDF6C8
	.incbin "baserom.gba", 0xDDF6C8, 0x0000010
sfxVoEzlo2:: @ 08DDF6D8
	sound_header 1 0 0x48 0 gUnk_08A101F0 sfxVoEzlo2_track0

sfxVoEzlo3_track0:: @ 08DDF6E4
	.incbin "baserom.gba", 0xDDF6E4, 0x0000010
sfxVoEzlo3:: @ 08DDF6F4
	sound_header 1 0 0x48 0 gUnk_08A101FC sfxVoEzlo3_track0

sfxVoEzlo4_track0:: @ 08DDF700
	.incbin "baserom.gba", 0xDDF700, 0x0000010
sfxVoEzlo4:: @ 08DDF710
	sound_header 1 0 0x48 0 gUnk_08A10208 sfxVoEzlo4_track0

sfxVoEzlo5_track0:: @ 08DDF71C
	.incbin "baserom.gba", 0xDDF71C, 0x0000010
sfxVoEzlo5:: @ 08DDF72C
	sound_header 1 0 0x48 0 gUnk_08A10214 sfxVoEzlo5_track0

sfxVoEzlo6_track0:: @ 08DDF738
	.incbin "baserom.gba", 0xDDF738, 0x0000010
sfxVoEzlo6:: @ 08DDF748
	sound_header 1 0 0x48 0 gUnk_08A10220 sfxVoEzlo6_track0

sfxVoEzlo7_track0:: @ 08DDF754
	.incbin "baserom.gba", 0xDDF754, 0x0000010
sfxVoEzlo7:: @ 08DDF764
	sound_header 1 0 0x48 0 gUnk_08A1022C sfxVoEzlo7_track0

sfxVoZelda1_track0:: @ 08DDF770
	.incbin "baserom.gba", 0xDDF770, 0x0000010
sfxVoZelda1:: @ 08DDF780
	sound_header 1 0 0x48 0 gUnk_08A10238 sfxVoZelda1_track0

sfxVoZelda2_track0:: @ 08DDF78C
	.incbin "baserom.gba", 0xDDF78C, 0x0000010
sfxVoZelda2:: @ 08DDF79C
	sound_header 1 0 0x48 0 gUnk_08A10244 sfxVoZelda2_track0

sfxVoZelda3_track0:: @ 08DDF7A8
	.incbin "baserom.gba", 0xDDF7A8, 0x0000010
sfxVoZelda3:: @ 08DDF7B8
	sound_header 1 0 0x48 0 gUnk_08A10250 sfxVoZelda3_track0

sfxVoZelda4_track0:: @ 08DDF7C4
	.incbin "baserom.gba", 0xDDF7C4, 0x0000010
sfxVoZelda4:: @ 08DDF7D4
	sound_header 1 0 0x48 0 gUnk_08A1025C sfxVoZelda4_track0

sfxVoZelda5_track0:: @ 08DDF7E0
	.incbin "baserom.gba", 0xDDF7E0, 0x0000010
sfxVoZelda5:: @ 08DDF7F0
	sound_header 1 0 0x48 0 gUnk_08A10268 sfxVoZelda5_track0

sfxVoZelda6_track0:: @ 08DDF7FC
	.incbin "baserom.gba", 0xDDF7FC, 0x0000010
sfxVoZelda6:: @ 08DDF80C
	sound_header 1 0 0x48 0 gUnk_08A10274 sfxVoZelda6_track0

sfxVoZelda7_track0:: @ 08DDF818
	.incbin "baserom.gba", 0xDDF818, 0x0000010
sfxVoZelda7:: @ 08DDF828
	sound_header 1 0 0x48 0 gUnk_08A10280 sfxVoZelda7_track0

sfx9B_track0:: @ 08DDF834
	.incbin "baserom.gba", 0xDDF834, 0x0000010
sfx9B:: @ 08DDF844
	sound_header 1 0 0x48 0 gUnk_08A1028C sfx9B_track0

sfx9C_track0:: @ 08DDF850
	.incbin "baserom.gba", 0xDDF850, 0x0000010
sfx9C:: @ 08DDF860
	sound_header 1 0 0x48 0 gUnk_08A10298 sfx9C_track0

sfx9D_track0:: @ 08DDF86C
	.incbin "baserom.gba", 0xDDF86C, 0x0000010
sfx9D:: @ 08DDF87C
	sound_header 1 0 0x48 0 gUnk_08A102A4 sfx9D_track0

sfx9E_track0:: @ 08DDF888
	.incbin "baserom.gba", 0xDDF888, 0x0000010
sfx9E:: @ 08DDF898
	sound_header 1 0 0x48 0 gUnk_08A102B0 sfx9E_track0

sfx9F_track0:: @ 08DDF8A4
	.incbin "baserom.gba", 0xDDF8A4, 0x0000010
sfx9F:: @ 08DDF8B4
	sound_header 1 0 0x48 0 gUnk_08A102BC sfx9F_track0

sfxA0_track0:: @ 08DDF8C0
	.incbin "baserom.gba", 0xDDF8C0, 0x0000014
sfxA0:: @ 08DDF8D4
	sound_header 1 0 0x48 0 gUnk_08A102C8 sfxA0_track0

sfxVoTingle1_track0:: @ 08DDF8E0
	.incbin "baserom.gba", 0xDDF8E0, 0x0000010
sfxVoTingle1:: @ 08DDF8F0
	sound_header 1 0 0x48 0 gUnk_08A102D4 sfxVoTingle1_track0

sfxVoTingle2_track0:: @ 08DDF8FC
	.incbin "baserom.gba", 0xDDF8FC, 0x0000010
sfxVoTingle2:: @ 08DDF90C
	sound_header 1 0 0x48 0 gUnk_08A102E0 sfxVoTingle2_track0

sfxVoKing1_track0:: @ 08DDF918
	.incbin "baserom.gba", 0xDDF918, 0x0000010
sfxVoKing1:: @ 08DDF928
	sound_header 1 0 0x48 0 gUnk_08A102EC sfxVoKing1_track0

sfxVoKing2_track0:: @ 08DDF934
	.incbin "baserom.gba", 0xDDF934, 0x0000010
sfxVoKing2:: @ 08DDF944
	sound_header 1 0 0x48 0 gUnk_08A102F8 sfxVoKing2_track0

sfxVoKing3_track0:: @ 08DDF950
	.incbin "baserom.gba", 0xDDF950, 0x0000010
sfxVoKing3:: @ 08DDF960
	sound_header 1 0 0x48 0 gUnk_08A10304 sfxVoKing3_track0

sfxVoKing4_track0:: @ 08DDF96C
	.incbin "baserom.gba", 0xDDF96C, 0x0000010
sfxVoKing4:: @ 08DDF97C
	sound_header 1 0 0x48 0 gUnk_08A10310 sfxVoKing4_track0

sfxVoKing5_track0:: @ 08DDF988
	.incbin "baserom.gba", 0xDDF988, 0x0000010
sfxVoKing5:: @ 08DDF998
	sound_header 1 0 0x48 0 gUnk_08A1031C sfxVoKing5_track0

sfxA8_track0:: @ 08DDF9A4
	.incbin "baserom.gba", 0xDDF9A4, 0x0000010
sfxA8:: @ 08DDF9B4
	sound_header 1 0 0x48 0 gUnk_08A10328 sfxA8_track0

sfxA9_track0:: @ 08DDF9C0
	.incbin "baserom.gba", 0xDDF9C0, 0x0000010
sfxA9:: @ 08DDF9D0
	sound_header 1 0 0x48 0 gUnk_08A10334 sfxA9_track0

sfxAA_track0:: @ 08DDF9DC
	.incbin "baserom.gba", 0xDDF9DC, 0x0000010
sfxAA:: @ 08DDF9EC
	sound_header 1 0 0x48 0 gUnk_08A10340 sfxAA_track0

sfxSpiritsRelease_track0:: @ 08DDF9F8
	.incbin "baserom.gba", 0xDDF9F8, 0x0000014
sfxSpiritsRelease:: @ 08DDFA0C
	sound_header 1 0 0x48 0 gUnk_08A1034C sfxSpiritsRelease_track0

sfxAC_track0:: @ 08DDFA18
	.incbin "baserom.gba", 0xDDFA18, 0x0000010
sfxAC:: @ 08DDFA28
	sound_header 1 0 0x48 0 gUnk_08A10358 sfxAC_track0

sfxVoBeedle_track0:: @ 08DDFA34
	.incbin "baserom.gba", 0xDDFA34, 0x0000010
sfxVoBeedle:: @ 08DDFA44
	sound_header 1 0 0x48 0 gUnk_08A10364 sfxVoBeedle_track0

sfxAE_track0:: @ 08DDFA50
	.incbin "baserom.gba", 0xDDFA50, 0x0000010
sfxAE:: @ 08DDFA60
	sound_header 1 0 0x48 0 gUnk_08A10370 sfxAE_track0

sfxAF_track0:: @ 08DDFA6C
	.incbin "baserom.gba", 0xDDFA6C, 0x0000010
sfxAF:: @ 08DDFA7C
	sound_header 1 0 0x48 0 gUnk_08A1037C sfxAF_track0

sfxB0_track0:: @ 08DDFA88
	.incbin "baserom.gba", 0xDDFA88, 0x0000010
sfxB0:: @ 08DDFA98
	sound_header 1 0 0x48 0 gUnk_08A10388 sfxB0_track0

sfxMinish1_track0:: @ 08DDFAA4
	.incbin "baserom.gba", 0xDDFAA4, 0x0000010
sfxMinish1:: @ 08DDFAB4
	sound_header 1 0 0x48 0 gUnk_08A10394 sfxMinish1_track0

sfxMinish2_track0:: @ 08DDFAC0
	.incbin "baserom.gba", 0xDDFAC0, 0x0000010
sfxMinish2:: @ 08DDFAD0
	sound_header 1 0 0x48 0 gUnk_08A103A0 sfxMinish2_track0

sfxMinish3_track0:: @ 08DDFADC
	.incbin "baserom.gba", 0xDDFADC, 0x0000010
sfxMinish3:: @ 08DDFAEC
	sound_header 1 0 0x48 0 gUnk_08A103AC sfxMinish3_track0

sfxMinish4_track0:: @ 08DDFAF8
	.incbin "baserom.gba", 0xDDFAF8, 0x0000005
gUnk_08DDFAFD:: @ 08DDFAFD
	.incbin "baserom.gba", 0xDDFAFD, 0x000000B
sfxMinish4:: @ 08DDFB08
	sound_header 1 0 0x48 0 gUnk_08A103B8 sfxMinish4_track0

sfxB5_track0:: @ 08DDFB14
	.incbin "baserom.gba", 0xDDFB14, 0x0000010
sfxB5:: @ 08DDFB24
	sound_header 1 0 0x48 0 gUnk_08A103C4 sfxB5_track0

sfxB6_track0:: @ 08DDFB30
	.incbin "baserom.gba", 0xDDFB30, 0x0000010
sfxB6:: @ 08DDFB40
	sound_header 1 0 0x48 0 gUnk_08A103D0 sfxB6_track0

sfxB7_track0:: @ 08DDFB4C
	.incbin "baserom.gba", 0xDDFB4C, 0x0000010
sfxB7:: @ 08DDFB5C
	sound_header 1 0 0x48 0 gUnk_08A103DC sfxB7_track0

sfxB8_track0:: @ 08DDFB68
	.incbin "baserom.gba", 0xDDFB68, 0x0000010
sfxB8:: @ 08DDFB78
	sound_header 1 0 0x48 0 gUnk_08A103E8 sfxB8_track0

sfxB9_track0:: @ 08DDFB84
	.incbin "baserom.gba", 0xDDFB84, 0x0000010
sfxB9:: @ 08DDFB94
	sound_header 1 0 0x48 0 gUnk_08A103F4 sfxB9_track0

sfxBA_track0:: @ 08DDFBA0
	.incbin "baserom.gba", 0xDDFBA0, 0x0000010
sfxBA:: @ 08DDFBB0
	sound_header 1 0 0x48 0 gUnk_08A10400 sfxBA_track0

sfxBB_track0:: @ 08DDFBBC
	.incbin "baserom.gba", 0xDDFBBC, 0x0000010
sfxBB:: @ 08DDFBCC
	sound_header 1 0 0x48 0 gUnk_08A1040C sfxBB_track0

sfxBC_track0:: @ 08DDFBD8
	.incbin "baserom.gba", 0xDDFBD8, 0x0000010
sfxBC:: @ 08DDFBE8
	sound_header 1 0 0x48 0 gUnk_08A10418 sfxBC_track0

sfxBD_track0:: @ 08DDFBF4
	.incbin "baserom.gba", 0xDDFBF4, 0x0000010
sfxBD:: @ 08DDFC04
	sound_header 1 0 0x48 0 gUnk_08A10424 sfxBD_track0

sfxBE_track0:: @ 08DDFC10
	.incbin "baserom.gba", 0xDDFC10, 0x0000010
sfxBE:: @ 08DDFC20
	sound_header 1 0 0x48 0 gUnk_08A10430 sfxBE_track0

sfxBF_track0:: @ 08DDFC2C
	.incbin "baserom.gba", 0xDDFC2C, 0x0000010
sfxBF:: @ 08DDFC3C
	sound_header 1 0 0x48 0 gUnk_08A1043C sfxBF_track0

sfxC0_track0:: @ 08DDFC48
	.incbin "baserom.gba", 0xDDFC48, 0x0000010
sfxC0:: @ 08DDFC58
	sound_header 1 0 0x48 0 gUnk_08A10448 sfxC0_track0

sfxC1_track0:: @ 08DDFC64
	.incbin "baserom.gba", 0xDDFC64, 0x0000010
sfxC1:: @ 08DDFC74
	sound_header 1 0 0x48 0 gUnk_08A10454 sfxC1_track0

sfxC2_track0:: @ 08DDFC80
	.incbin "baserom.gba", 0xDDFC80, 0x0000010
sfxC2:: @ 08DDFC90
	sound_header 1 0 0x48 0 gUnk_08A10460 sfxC2_track0

sfxC3_track0:: @ 08DDFC9C
	.incbin "baserom.gba", 0xDDFC9C, 0x0000010
sfxC3:: @ 08DDFCAC
	sound_header 1 0 0x48 0 gUnk_08A1046C sfxC3_track0

sfxC4_track0:: @ 08DDFCB8
	.incbin "baserom.gba", 0xDDFCB8, 0x0000010
sfxC4:: @ 08DDFCC8
	sound_header 1 0 0x48 0 gUnk_08A10478 sfxC4_track0

sfxC5_track0:: @ 08DDFCD4
	.incbin "baserom.gba", 0xDDFCD4, 0x0000010
sfxC5:: @ 08DDFCE4
	sound_header 1 0 0x48 0 gUnk_08A10484 sfxC5_track0

sfxC6_track0:: @ 08DDFCF0
	.incbin "baserom.gba", 0xDDFCF0, 0x0000010
sfxC6:: @ 08DDFD00
	sound_header 1 0 0x48 0 gUnk_08A10490 sfxC6_track0

sfxC7_track0:: @ 08DDFD0C
	.incbin "baserom.gba", 0xDDFD0C, 0x0000010
sfxC7:: @ 08DDFD1C
	sound_header 1 0 0x48 0 gUnk_08A1049C sfxC7_track0

sfxC8_track0:: @ 08DDFD28
	.incbin "baserom.gba", 0xDDFD28, 0x0000010
sfxC8:: @ 08DDFD38
	sound_header 1 0 0x48 0 gUnk_08A104A8 sfxC8_track0

sfxC9_track0:: @ 08DDFD44
	.incbin "baserom.gba", 0xDDFD44, 0x0000010
sfxC9:: @ 08DDFD54
	sound_header 1 0 0x48 0 gUnk_08A104B4 sfxC9_track0

sfxCA_track0:: @ 08DDFD60
	.incbin "baserom.gba", 0xDDFD60, 0x0000010
sfxCA:: @ 08DDFD70
	sound_header 1 0 0x48 0 gUnk_08A104C0 sfxCA_track0

sfxCB_track0:: @ 08DDFD7C
	.incbin "baserom.gba", 0xDDFD7C, 0x0000010
sfxCB:: @ 08DDFD8C
	sound_header 1 0 0x48 0 gUnk_08A104CC sfxCB_track0

sfxRemSleep_track0:: @ 08DDFD98
	.incbin "baserom.gba", 0xDDFD98, 0x0000010
sfxRemSleep:: @ 08DDFDA8
	sound_header 1 0 0x48 0 gUnk_08A104D8 sfxRemSleep_track0

sfxTaskComplete_track0:: @ 08DDFDB4
	.incbin "baserom.gba", 0xDDFDB4, 0x0000020
sfxTaskComplete:: @ 08DDFDD4
	sound_header 1 0 0xb0 0 gUnk_08A104E4 sfxTaskComplete_track0

sfxKeyAppear_track0:: @ 08DDFDE0
	.incbin "baserom.gba", 0xDDFDE0, 0x0000034
sfxKeyAppear:: @ 08DDFE14
	sound_header 1 0 0xc0 0 gUnk_08A104FC sfxKeyAppear_track0

sfxCF_track0:: @ 08DDFE20
	.incbin "baserom.gba", 0xDDFE20, 0x0000010
sfxCF:: @ 08DDFE30
	sound_header 1 0 0x48 0 gUnk_08A10514 sfxCF_track0

sfxD0_track0:: @ 08DDFE3C
	.incbin "baserom.gba", 0xDDFE3C, 0x0000010
sfxD0:: @ 08DDFE4C
	sound_header 1 0 0x48 0 gUnk_08A10520 sfxD0_track0

sfxVoDog_track0:: @ 08DDFE58
	.incbin "baserom.gba", 0xDDFE58, 0x0000010
sfxVoDog:: @ 08DDFE68
	sound_header 1 0 0x48 0 gUnk_08A1052C sfxVoDog_track0

sfxVoCat_track0:: @ 08DDFE74
	.incbin "baserom.gba", 0xDDFE74, 0x0000010
sfxVoCat:: @ 08DDFE84
	sound_header 1 0 0x48 0 gUnk_08A10538 sfxVoCat_track0

sfxVoEpona_track0:: @ 08DDFE90
	.incbin "baserom.gba", 0xDDFE90, 0x0000010
sfxVoEpona:: @ 08DDFEA0
	sound_header 1 0 0x48 0 gUnk_08A10544 sfxVoEpona_track0

sfxVoCow_track0:: @ 08DDFEAC
	.incbin "baserom.gba", 0xDDFEAC, 0x0000010
sfxVoCow:: @ 08DDFEBC
	sound_header 1 0 0x48 0 gUnk_08A10550 sfxVoCow_track0

sfxVoCuccoCall_track0:: @ 08DDFEC8
	.incbin "baserom.gba", 0xDDFEC8, 0x0000010
sfxVoCuccoCall:: @ 08DDFED8
	sound_header 1 0 0x48 0 gUnk_08A1055C sfxVoCuccoCall_track0

sfxVoCheep_track0:: @ 08DDFEE4
	.incbin "baserom.gba", 0xDDFEE4, 0x0000010
sfxVoCheep:: @ 08DDFEF4
	sound_header 1 0 0x48 0 gUnk_08A10568 sfxVoCheep_track0

sfxItemSwordCharge_track0:: @ 08DDFF00
	.incbin "baserom.gba", 0xDDFF00, 0x0000010
sfxItemSwordCharge:: @ 08DDFF10
	sound_header 1 0 0x40 0 gUnk_08A10574 sfxItemSwordCharge_track0

sfxItemSwordChargeFinish_track0:: @ 08DDFF1C
	.incbin "baserom.gba", 0xDDFF1C, 0x0000010
sfxItemSwordChargeFinish:: @ 08DDFF2C
	sound_header 1 0 0x60 0 gUnk_08A10580 sfxItemSwordChargeFinish_track0

sfxD9_track0:: @ 08DDFF38
	.incbin "baserom.gba", 0xDDFF38, 0x0000010
sfxD9:: @ 08DDFF48
	sound_header 1 0 0x40 0 gUnk_08A1058C sfxD9_track0

sfxDA_track0:: @ 08DDFF54
	.incbin "baserom.gba", 0xDDFF54, 0x0000010
sfxDA:: @ 08DDFF64
	sound_header 1 0 0x48 0 gUnk_08A10598 sfxDA_track0

sfxVoSturgeon_track0:: @ 08DDFF70
	.incbin "baserom.gba", 0xDDFF70, 0x0000010
sfxVoSturgeon:: @ 08DDFF80
	sound_header 1 0 0x48 0 gUnk_08A105A4 sfxVoSturgeon_track0

sfxHammer1_track0:: @ 08DDFF8C
	.incbin "baserom.gba", 0xDDFF8C, 0x0000010
sfxHammer1:: @ 08DDFF9C
	sound_header 1 0 0x40 0 gUnk_08A105B0 sfxHammer1_track0

sfxHammer2_track0:: @ 08DDFFA8
	.incbin "baserom.gba", 0xDDFFA8, 0x0000010
sfxHammer2:: @ 08DDFFB8
	sound_header 1 0 0x40 0 gUnk_08A105BC sfxHammer2_track0

sfxHammer3_track0:: @ 08DDFFC4
	.incbin "baserom.gba", 0xDDFFC4, 0x0000010
sfxHammer3:: @ 08DDFFD4
	sound_header 1 0 0x40 0 gUnk_08A105C8 sfxHammer3_track0

sfxHammer4_track0:: @ 08DDFFE0
	.incbin "baserom.gba", 0xDDFFE0, 0x0000010
sfxHammer4:: @ 08DDFFF0
	sound_header 1 0 0x40 0 gUnk_08A105D4 sfxHammer4_track0

sfxHammer5_track0:: @ 08DDFFFC
	.incbin "baserom.gba", 0xDDFFFC, 0x0000010
sfxHammer5:: @ 08DE000C
	sound_header 1 0 0x40 0 gUnk_08A105E0 sfxHammer5_track0

sfxHammer6_track0:: @ 08DE0018
	.incbin "baserom.gba", 0xDE0018, 0x0000010
sfxHammer6:: @ 08DE0028
	sound_header 1 0 0x40 0 gUnk_08A105EC sfxHammer6_track0

sfxCuccoMinigameBell_track0:: @ 08DE0034
	.incbin "baserom.gba", 0xDE0034, 0x0000014
sfxCuccoMinigameBell:: @ 08DE0048
	sound_header 1 0 0x40 0 gUnk_08A105F8 sfxCuccoMinigameBell_track0

sfxE3_track0:: @ 08DE0054
	.incbin "baserom.gba", 0xDE0054, 0x0000010
sfxE3:: @ 08DE0064
	sound_header 1 0 0x60 0 gUnk_08A10604 sfxE3_track0

sfxE4_track0:: @ 08DE0070
	.incbin "baserom.gba", 0xDE0070, 0x0000010
sfxE4:: @ 08DE0080
	sound_header 1 0 0x60 0 gUnk_08A10610 sfxE4_track0

sfxButtonDepress_track0:: @ 08DE008C
	.incbin "baserom.gba", 0xDE008C, 0x0000014
sfxButtonDepress:: @ 08DE00A0
	sound_header 1 0 0x40 0 gUnk_08A1061C sfxButtonDepress_track0

sfxThudHeavy_track0:: @ 08DE00AC
	.incbin "baserom.gba", 0xDE00AC, 0x0000010
sfxThudHeavy:: @ 08DE00BC
	sound_header 1 0 0x40 0 gUnk_08A10628 sfxThudHeavy_track0

sfxWind1_track0:: @ 08DE00C8
	.incbin "baserom.gba", 0xDE00C8, 0x0000024
sfxWind1:: @ 08DE00EC
	sound_header 1 0 0x30 0 gUnk_08A10634 sfxWind1_track0

sfxWind2_track0:: @ 08DE00F8
	.incbin "baserom.gba", 0xDE00F8, 0x0000010
gUnk_08DE0108:: @ 08DE0108
	.incbin "baserom.gba", 0xDE0108, 0x0000030
sfxWind2:: @ 08DE0138
	sound_header 1 0 0x30 0 gUnk_08A10640 sfxWind2_track0

sfxWind3_track0:: @ 08DE0144
	.incbin "baserom.gba", 0xDE0144, 0x000003C
sfxWind3:: @ 08DE0180
	sound_header 1 0 0x30 0 gUnk_08A1064C sfxWind3_track0

sfxEA_track0:: @ 08DE018C
	.incbin "baserom.gba", 0xDE018C, 0x0000028
sfxEA:: @ 08DE01B4
	sound_header 1 0 0x40 0 gUnk_08A10658 sfxEA_track0

sfxEB_track0:: @ 08DE01C0
	.incbin "baserom.gba", 0xDE01C0, 0x0000034
sfxEB:: @ 08DE01F4
	sound_header 1 0 0x40 0 gUnk_08A1067C sfxEB_track0

sfxEC_track0:: @ 08DE0200
	.incbin "baserom.gba", 0xDE0200, 0x0000044
sfxEC:: @ 08DE0244
	sound_header 1 0 0x40 0 gUnk_08A106A0 sfxEC_track0

sfxED_track0:: @ 08DE0250
	.incbin "baserom.gba", 0xDE0250, 0x000002B
sfxED_track1:: @ 08DE027B
	.incbin "baserom.gba", 0xDE027B, 0x0000011
sfxED:: @ 08DE028C
	sound_header 2 0 0x44 0 gUnk_08A106C4 sfxED_track0 sfxED_track1

sfxEE_track0:: @ 08DE029C
	.incbin "baserom.gba", 0xDE029C, 0x0000010
sfxEE:: @ 08DE02AC
	sound_header 1 0 0x40 0 gUnk_08A106E8 sfxEE_track0

sfxEF_track0:: @ 08DE02B8
	.incbin "baserom.gba", 0xDE02B8, 0x0000010
sfxEF:: @ 08DE02C8
	sound_header 1 0 0x44 0 gUnk_08A106F4 sfxEF_track0

sfxF0_track0:: @ 08DE02D4
	.incbin "baserom.gba", 0xDE02D4, 0x0000018
sfxF0:: @ 08DE02EC
	sound_header 1 0 0x40 0 gUnk_08A10700 sfxF0_track0

sfxF1_track0:: @ 08DE02F8
	.incbin "baserom.gba", 0xDE02F8, 0x0000018
sfxF1:: @ 08DE0310
	sound_header 1 0 0x40 0 gUnk_08A1070C sfxF1_track0

sfxF2_track0:: @ 08DE031C
	.incbin "baserom.gba", 0xDE031C, 0x0000035
sfxF2_track1:: @ 08DE0351
	.incbin "baserom.gba", 0xDE0351, 0x0000037
sfxF2:: @ 08DE0388
	sound_header 2 0 0x40 0 gUnk_08A10718 sfxF2_track0 sfxF2_track1

sfxF3_track0:: @ 08DE0398
	.incbin "baserom.gba", 0xDE0398, 0x000002C
sfxF3:: @ 08DE03C4
	sound_header 1 0 0x44 0 gUnk_08A1073C sfxF3_track0

sfxSummon_track0:: @ 08DE03D0
	.incbin "baserom.gba", 0xDE03D0, 0x000004C
sfxSummon:: @ 08DE041C
	sound_header 1 0 0x40 0 gUnk_08A10760 sfxSummon_track0

sfxF5_track0:: @ 08DE0428
	.incbin "baserom.gba", 0xDE0428, 0x00000BC
sfxF5:: @ 08DE04E4
	sound_header 1 0 0x40 0 gUnk_08A1076C sfxF5_track0

sfxEvaporate_track0:: @ 08DE04F0
	.incbin "baserom.gba", 0xDE04F0, 0x0000044
sfxEvaporate:: @ 08DE0534
	sound_header 1 0 0x40 0 gUnk_08A10778 sfxEvaporate_track0

sfxApparate_track0:: @ 08DE0540
	.incbin "baserom.gba", 0xDE0540, 0x0000044
sfxApparate:: @ 08DE0584
	sound_header 1 0 0x40 0 gUnk_08A10784 sfxApparate_track0

sfxF8_track0:: @ 08DE0590
	.incbin "baserom.gba", 0xDE0590, 0x0000029
sfxF8_track1:: @ 08DE05B9
	.incbin "baserom.gba", 0xDE05B9, 0x0000023
sfxF8:: @ 08DE05DC
	sound_header 2 0 0x44 0 gUnk_08A10790 sfxF8_track0 sfxF8_track1

sfxTeleporter_track0:: @ 08DE05EC
	.incbin "baserom.gba", 0xDE05EC, 0x0000048
sfxTeleporter:: @ 08DE0634
	sound_header 1 0 0x40 0 gUnk_08A107B4 sfxTeleporter_track0

sfxFA_track0:: @ 08DE0640
	.incbin "baserom.gba", 0xDE0640, 0x0000029
sfxFA_track1:: @ 08DE0669
	.incbin "baserom.gba", 0xDE0669, 0x0000023
sfxFA:: @ 08DE068C
	sound_header 2 0 0x44 0 gUnk_08A107C0 sfxFA_track0 sfxFA_track1

sfxFB_track0:: @ 08DE069C
	.incbin "baserom.gba", 0xDE069C, 0x0000048
sfxFB:: @ 08DE06E4
	sound_header 1 0 0x40 0 gUnk_08A107E4 sfxFB_track0

sfxFC_track0:: @ 08DE06F0
	.incbin "baserom.gba", 0xDE06F0, 0x0000017
sfxFC_track1:: @ 08DE0707
	.incbin "baserom.gba", 0xDE0707, 0x0000021
sfxFC:: @ 08DE0728
	sound_header 2 0 0x40 0 gUnk_08A107FC sfxFC_track0 sfxFC_track1

sfxItemBombExplode_track0:: @ 08DE0738
	.incbin "baserom.gba", 0xDE0738, 0x000004C
sfxItemBombExplode:: @ 08DE0784
	sound_header 1 0 0x7f 0 gUnk_08A10820 sfxItemBombExplode_track0

gUnk_08DE0790:: @ 08DE0790
	.incbin "baserom.gba", 0xDE0790, 0x0000028
gUnk_08DE07B8:: @ 08DE07B8
	.incbin "baserom.gba", 0xDE07B8, 0x000001C
sfxHit:: @ 08DE07D4
	.incbin "baserom.gba", 0xDE07D4, 0x0000010
gUnk_08DE07E4:: @ 08DE07E4
	.incbin "baserom.gba", 0xDE07E4, 0x0000030
gUnk_08DE0814:: @ 08DE0814
	.incbin "baserom.gba", 0xDE0814, 0x000002C
sfxFF:: @ 08DE0840
	.incbin "baserom.gba", 0xDE0840, 0x0000010
gUnk_08DE0850:: @ 08DE0850
	.incbin "baserom.gba", 0xDE0850, 0x0000010
sfx100:: @ 08DE0860
	.incbin "baserom.gba", 0xDE0860, 0x000000C
gUnk_08DE086C:: @ 08DE086C
	.incbin "baserom.gba", 0xDE086C, 0x0000010
sfx101:: @ 08DE087C
	.incbin "baserom.gba", 0xDE087C, 0x000000C
gUnk_08DE0888:: @ 08DE0888
	.incbin "baserom.gba", 0xDE0888, 0x0000010
sfx102:: @ 08DE0898
	.incbin "baserom.gba", 0xDE0898, 0x000000C
gUnk_08DE08A4:: @ 08DE08A4
	.incbin "baserom.gba", 0xDE08A4, 0x0000020
sfx103:: @ 08DE08C4
	.incbin "baserom.gba", 0xDE08C4, 0x000000C
gUnk_08DE08D0:: @ 08DE08D0
	.incbin "baserom.gba", 0xDE08D0, 0x000002C
sfx104:: @ 08DE08FC
	.incbin "baserom.gba", 0xDE08FC, 0x000000C
gUnk_08DE0908:: @ 08DE0908
	.incbin "baserom.gba", 0xDE0908, 0x0000010
gUnk_08DE0918:: @ 08DE0918
	.incbin "baserom.gba", 0xDE0918, 0x00000A8
gUnk_08DE09C0:: @ 08DE09C0
	.incbin "baserom.gba", 0xDE09C0, 0x0000743
gUnk_08DE1103:: @ 08DE1103
	.incbin "baserom.gba", 0xDE1103, 0x0000282
gUnk_08DE1385:: @ 08DE1385
	.incbin "baserom.gba", 0xDE1385, 0x0000185
gUnk_08DE150A:: @ 08DE150A
	.incbin "baserom.gba", 0xDE150A, 0x0000185
gUnk_08DE168F:: @ 08DE168F
	.incbin "baserom.gba", 0xDE168F, 0x0000185
gUnk_08DE1814:: @ 08DE1814
	.incbin "baserom.gba", 0xDE1814, 0x0000188
sfx105:: @ 08DE199C
	.incbin "baserom.gba", 0xDE199C, 0x0000020
sfx106_track0:: @ 08DE19BC
	.incbin "baserom.gba", 0xDE19BC, 0x0000014
sfx106:: @ 08DE19D0
	sound_header 1 0 0x40 0 gUnk_08A108EC sfx106_track0

sfx107_track0:: @ 08DE19DC
	.incbin "baserom.gba", 0xDE19DC, 0x0000024
sfx107:: @ 08DE1A00
	sound_header 1 0 0x40 0 gUnk_08A108F8 sfx107_track0

sfx108_track0:: @ 08DE1A0C
	.incbin "baserom.gba", 0xDE1A0C, 0x0000020
sfx108:: @ 08DE1A2C
	sound_header 1 0 0x40 0 gUnk_08A10904 sfx108_track0

sfx109_track0:: @ 08DE1A38
	.incbin "baserom.gba", 0xDE1A38, 0x0000043
sfx109_track1:: @ 08DE1A7B
	.incbin "baserom.gba", 0xDE1A7B, 0x0000041
sfx109_track2:: @ 08DE1ABC
	.incbin "baserom.gba", 0xDE1ABC, 0x000001B
sfx109_track3:: @ 08DE1AD7
	.incbin "baserom.gba", 0xDE1AD7, 0x0000020
sfx109_track4:: @ 08DE1AF7
	.incbin "baserom.gba", 0xDE1AF7, 0x0000041
sfx109_track5:: @ 08DE1B38
	.incbin "baserom.gba", 0xDE1B38, 0x0000041
sfx109_track6:: @ 08DE1B79
	.incbin "baserom.gba", 0xDE1B79, 0x000001B
sfx109_track7:: @ 08DE1B94
	.incbin "baserom.gba", 0xDE1B94, 0x0000043
sfx109_track8:: @ 08DE1BD7
	.incbin "baserom.gba", 0xDE1BD7, 0x0000129
sfx109_track9:: @ 08DE1D00
	.incbin "baserom.gba", 0xDE1D00, 0x0000129
sfx109_trackA:: @ 08DE1E29
	.incbin "baserom.gba", 0xDE1E29, 0x0000129
sfx109_trackB:: @ 08DE1F52
	.incbin "baserom.gba", 0xDE1F52, 0x000012A
sfx109:: @ 08DE207C
	sound_header 0xc 0 0x20 0 gUnk_08A0F890 sfx109_track0 sfx109_track1 sfx109_track2 sfx109_track3 sfx109_track4 sfx109_track5 sfx109_track6 sfx109_track7 sfx109_track8 sfx109_track9 sfx109_trackA sfx109_trackB

sfx10A_track0:: @ 08DE20B4
	.incbin "baserom.gba", 0xDE20B4, 0x0000014
sfx10A:: @ 08DE20C8
	sound_header 1 0 0x60 0 gUnk_08A1091C sfx10A_track0

sfx10B_track0:: @ 08DE20D4
	.incbin "baserom.gba", 0xDE20D4, 0x0000028
sfx10B:: @ 08DE20FC
	sound_header 1 0 0x7f 0 gUnk_08A10928 sfx10B_track0

sfx10C_track0:: @ 08DE2108
	.incbin "baserom.gba", 0xDE2108, 0x000001C
sfx10C:: @ 08DE2124
	sound_header 1 0 0x50 0 gUnk_08A10940 sfx10C_track0

sfx10D_track0:: @ 08DE2130
	.incbin "baserom.gba", 0xDE2130, 0x0000044
sfx10D:: @ 08DE2174
	sound_header 1 0 0x40 0 gUnk_08A10958 sfx10D_track0

sfx10E_track0:: @ 08DE2180
	.incbin "baserom.gba", 0xDE2180, 0x000002C
sfx10E:: @ 08DE21AC
	sound_header 1 0 0x40 0 gUnk_08A10970 sfx10E_track0

sfx10F_track0:: @ 08DE21B8
	.incbin "baserom.gba", 0xDE21B8, 0x0000030
sfx10F:: @ 08DE21E8
	sound_header 1 0 0x40 0 gUnk_08A10988 sfx10F_track0

sfx110_track0:: @ 08DE21F4
	.incbin "baserom.gba", 0xDE21F4, 0x0000038
sfx110:: @ 08DE222C
	sound_header 1 0 0x60 0 gUnk_08A10994 sfx110_track0

sfx111_track0:: @ 08DE2238
	.incbin "baserom.gba", 0xDE2238, 0x0000028
sfx111:: @ 08DE2260
	sound_header 1 0 0x60 0 gUnk_08A109A0 sfx111_track0

sfx112_track0:: @ 08DE226C
	.incbin "baserom.gba", 0xDE226C, 0x00000CC
sfx112:: @ 08DE2338
	sound_header 1 0 0x60 0 gUnk_08A109B8 sfx112_track0

sfx113_track0:: @ 08DE2344
	.incbin "baserom.gba", 0xDE2344, 0x0000063
sfx113_track1:: @ 08DE23A7
	.incbin "baserom.gba", 0xDE23A7, 0x0000061
sfx113:: @ 08DE2408
	sound_header 2 0 0x60 0 gUnk_08A109C4 sfx113_track0 sfx113_track1

sfx114_track0:: @ 08DE2418
	.incbin "baserom.gba", 0xDE2418, 0x0000060
sfx114:: @ 08DE2478
	sound_header 1 0 0x60 0 gUnk_08A109DC sfx114_track0

sfx115_track0:: @ 08DE2484
	.incbin "baserom.gba", 0xDE2484, 0x0000038
sfx115:: @ 08DE24BC
	sound_header 1 0 0x40 0 gUnk_08A109E8 sfx115_track0

sfx116_track0:: @ 08DE24C8
	.incbin "baserom.gba", 0xDE24C8, 0x0000038
sfx116:: @ 08DE2500
	sound_header 1 0 0x40 0 gUnk_08A109F4 sfx116_track0

sfx117_track0:: @ 08DE250C
	.incbin "baserom.gba", 0xDE250C, 0x0000010
sfx117:: @ 08DE251C
	sound_header 1 0 0x40 0 gUnk_08A10A00 sfx117_track0

sfxItemShieldBounce_track0:: @ 08DE2528
	.incbin "baserom.gba", 0xDE2528, 0x000000F
sfxItemShieldBounce_track1:: @ 08DE2537
	.incbin "baserom.gba", 0xDE2537, 0x000000D
sfxItemShieldBounce:: @ 08DE2544
	sound_header 2 0 0x44 0 gUnk_08A10A0C sfxItemShieldBounce_track0 sfxItemShieldBounce_track1

sfxItemGlovesKnockback_track0:: @ 08DE2554
	.incbin "baserom.gba", 0xDE2554, 0x000001B
sfxItemGlovesKnockback_track1:: @ 08DE256F
	.incbin "baserom.gba", 0xDE256F, 0x0000015
sfxItemGlovesKnockback:: @ 08DE2584
	sound_header 2 0 0x44 0 gUnk_08A10A24 sfxItemGlovesKnockback_track0 sfxItemGlovesKnockback_track1

sfxEmArmosOn_track0:: @ 08DE2594
	.incbin "baserom.gba", 0xDE2594, 0x0000010
sfxEmArmosOn:: @ 08DE25A4
	sound_header 1 0 0x40 0 gUnk_08A10A3C sfxEmArmosOn_track0

sfx11B_track0:: @ 08DE25B0
	.incbin "baserom.gba", 0xDE25B0, 0x0000020
sfx11B:: @ 08DE25D0
	sound_header 1 0 0x40 0 gUnk_08A10A48 sfx11B_track0

sfx11C_track0:: @ 08DE25DC
	.incbin "baserom.gba", 0xDE25DC, 0x0000014
sfx11C:: @ 08DE25F0
	sound_header 1 0 0x40 0 gUnk_08A10A54 sfx11C_track0

sfx11D_track0:: @ 08DE25FC
	.incbin "baserom.gba", 0xDE25FC, 0x0000050
sfx11D_track1:: @ 08DE264C
	.incbin "baserom.gba", 0xDE264C, 0x0000030
sfx11D:: @ 08DE267C
	sound_header 2 0 0x40 0 gUnk_08A10A6C sfx11D_track0 sfx11D_track1

sfxEmMoblinSpear_track0:: @ 08DE268C
	.incbin "baserom.gba", 0xDE268C, 0x0000010
sfxEmMoblinSpear:: @ 08DE269C
	sound_header 1 0 0x40 0 gUnk_08A10A84 sfxEmMoblinSpear_track0

sfxLowHealth_track0:: @ 08DE26A8
	.incbin "baserom.gba", 0xDE26A8, 0x000001C
sfxLowHealth:: @ 08DE26C4
	sound_header 1 0 0x40 0 gUnk_08A10A90 sfxLowHealth_track0

sfxChargingUp_track0:: @ 08DE26D0
	.incbin "baserom.gba", 0xDE26D0, 0x0000014
sfxChargingUp:: @ 08DE26E4
	sound_header 1 0 0x40 0 gUnk_08A10A9C sfxChargingUp_track0

sfxStairs_track0:: @ 08DE26F0
	.incbin "baserom.gba", 0xDE26F0, 0x0000004
gUnk_08DE26F4:: @ 08DE26F4
	.incbin "baserom.gba", 0xDE26F4, 0x0000024
sfxStairs:: @ 08DE2718
	sound_header 1 0 0x40 0 gUnk_08A10AA8 sfxStairs_track0

sfx122_track0:: @ 08DE2724
	.incbin "baserom.gba", 0xDE2724, 0x0000010
sfx122:: @ 08DE2734
	sound_header 1 0 0x40 0 gUnk_08A10AB4 sfx122_track0

sfx123_track0:: @ 08DE2740
	.incbin "baserom.gba", 0xDE2740, 0x0000038
sfx123:: @ 08DE2778
	sound_header 1 0 0x40 0 gUnk_08A10AC0 sfx123_track0

sfx124_track0:: @ 08DE2784
	.incbin "baserom.gba", 0xDE2784, 0x000003C
sfx124:: @ 08DE27C0
	sound_header 1 0 0x30 0 gUnk_08A10ACC sfx124_track0

sfx125_track0:: @ 08DE27CC
	.incbin "baserom.gba", 0xDE27CC, 0x0000010
sfx125:: @ 08DE27DC
	sound_header 1 0 0x40 0 gUnk_08A10AE4 sfx125_track0

sfx126_track0:: @ 08DE27E8
	.incbin "baserom.gba", 0xDE27E8, 0x0000032
sfx126_track1:: @ 08DE281A
	.incbin "baserom.gba", 0xDE281A, 0x0000062
sfx126:: @ 08DE287C
	sound_header 2 0 0x40 0 gUnk_08A10AF0 sfx126_track0 sfx126_track1

sfxBossHit_track0:: @ 08DE288C
	.incbin "baserom.gba", 0xDE288C, 0x000004B
gUnk_08DE28D7:: @ 08DE28D7
	.incbin "baserom.gba", 0xDE28D7, 0x000002B
sfxBossHit_track1:: @ 08DE2902
	.incbin "baserom.gba", 0xDE2902, 0x0000042
sfxBossHit:: @ 08DE2944
	sound_header 2 0 0x70 0 gUnk_08A10B08 sfxBossHit_track0 sfxBossHit_track1

sfxBossDie_track0:: @ 08DE2954
	.incbin "baserom.gba", 0xDE2954, 0x000008A
sfxBossDie_track1:: @ 08DE29DE
	.incbin "baserom.gba", 0xDE29DE, 0x0000074
gUnk_08DE2A52:: @ 08DE2A52
	.incbin "baserom.gba", 0xDE2A52, 0x0000016
sfxBossDie:: @ 08DE2A68
	sound_header 2 0 0x70 0 gUnk_08A10B20 sfxBossDie_track0 sfxBossDie_track1

sfxBossExplode_track0:: @ 08DE2A78
	.incbin "baserom.gba", 0xDE2A78, 0x0000070
sfxBossExplode:: @ 08DE2AE8
	sound_header 1 0 0x90 0 gUnk_08A10B38 sfxBossExplode_track0

sfx12A_track0:: @ 08DE2AF4
	.incbin "baserom.gba", 0xDE2AF4, 0x0000028
sfx12A:: @ 08DE2B1C
	sound_header 1 0 0x40 0 gUnk_08A10B44 sfx12A_track0

sfx12B_track0:: @ 08DE2B28
	.incbin "baserom.gba", 0xDE2B28, 0x0000014
sfx12B:: @ 08DE2B3C
	sound_header 1 0 0x40 0 gUnk_08A10B5C sfx12B_track0

sfx12C_track0:: @ 08DE2B48
	.incbin "baserom.gba", 0xDE2B48, 0x0000010
sfx12C:: @ 08DE2B58
	sound_header 1 0 0x40 0 gUnk_08A10B68 sfx12C_track0

sfx12D_track0:: @ 08DE2B64
	.incbin "baserom.gba", 0xDE2B64, 0x0000014
sfx12D:: @ 08DE2B78
	sound_header 1 0 0x40 0 gUnk_08A10B74 sfx12D_track0

sfx12E_track0:: @ 08DE2B84
	.incbin "baserom.gba", 0xDE2B84, 0x0000018
sfx12E:: @ 08DE2B9C
	sound_header 1 0 0x40 0 gUnk_08A10B80 sfx12E_track0

sfx12F_track0:: @ 08DE2BA8
	.incbin "baserom.gba", 0xDE2BA8, 0x0000028
sfx12F:: @ 08DE2BD0
	sound_header 1 0 0x40 0 gUnk_08A10B8C sfx12F_track0

sfx130_track0:: @ 08DE2BDC
	.incbin "baserom.gba", 0xDE2BDC, 0x0000018
sfx130:: @ 08DE2BF4
	sound_header 1 0 0x40 0 gUnk_08A10BA4 sfx130_track0

sfx131_track0:: @ 08DE2C00
	.incbin "baserom.gba", 0xDE2C00, 0x0000010
sfx131:: @ 08DE2C10
	sound_header 1 0 0x40 0 gUnk_08A10BB0 sfx131_track0

sfx132_track0:: @ 08DE2C1C
	.incbin "baserom.gba", 0xDE2C1C, 0x0000010
sfx132:: @ 08DE2C2C
	sound_header 1 0 0x40 0 gUnk_08A10BBC sfx132_track0

sfx133_track0:: @ 08DE2C38
	.incbin "baserom.gba", 0xDE2C38, 0x0000010
sfx133:: @ 08DE2C48
	sound_header 1 0 0x40 0 gUnk_08A10BC8 sfx133_track0

sfx134_track0:: @ 08DE2C54
	.incbin "baserom.gba", 0xDE2C54, 0x0000010
sfx134:: @ 08DE2C64
	sound_header 1 0 0x40 0 gUnk_08A10BD4 sfx134_track0

sfx135_track0:: @ 08DE2C70
	.incbin "baserom.gba", 0xDE2C70, 0x000001C
sfx135:: @ 08DE2C8C
	sound_header 1 0 0x40 0 gUnk_08A10BE0 sfx135_track0

sfx136_track0:: @ 08DE2C98
	.incbin "baserom.gba", 0xDE2C98, 0x0000064
sfx136:: @ 08DE2CFC
	sound_header 1 0 0x40 0 gUnk_08A10BEC sfx136_track0

sfx137_track0:: @ 08DE2D08
	.incbin "baserom.gba", 0xDE2D08, 0x0000010
sfx137:: @ 08DE2D18
	sound_header 1 0 0x40 0 gUnk_08A10BF8 sfx137_track0

sfx138_track0:: @ 08DE2D24
	.incbin "baserom.gba", 0xDE2D24, 0x0000010
sfx138:: @ 08DE2D34
	sound_header 1 0 0x40 0 gUnk_08A10C04 sfx138_track0

sfx139_track0:: @ 08DE2D40
	.incbin "baserom.gba", 0xDE2D40, 0x0000010
sfx139:: @ 08DE2D50
	sound_header 1 0 0x40 0 gUnk_08A10C10 sfx139_track0

sfx13A_track0:: @ 08DE2D5C
	.incbin "baserom.gba", 0xDE2D5C, 0x0000010
sfx13A:: @ 08DE2D6C
	sound_header 1 0 0x40 0 gUnk_08A10C1C sfx13A_track0

sfx13B_track0:: @ 08DE2D78
	.incbin "baserom.gba", 0xDE2D78, 0x0000010
sfx13B:: @ 08DE2D88
	sound_header 1 0 0x40 0 gUnk_08A10C28 sfx13B_track0

sfx13C_track0:: @ 08DE2D94
	.incbin "baserom.gba", 0xDE2D94, 0x0000010
sfx13C:: @ 08DE2DA4
	sound_header 1 0 0x40 0 gUnk_08A10C34 sfx13C_track0

sfxItemLanternOn_track0:: @ 08DE2DB0
	.incbin "baserom.gba", 0xDE2DB0, 0x0000010
sfxItemLanternOn:: @ 08DE2DC0
	sound_header 1 0 0x40 0 gUnk_08A10C40 sfxItemLanternOn_track0

sfxItemLanternOff_track0:: @ 08DE2DCC
	.incbin "baserom.gba", 0xDE2DCC, 0x0000010
sfxItemLanternOff:: @ 08DE2DDC
	sound_header 1 0 0x40 0 gUnk_08A10C4C sfxItemLanternOff_track0

sfxItemSwordBeam_track0:: @ 08DE2DE8
	.incbin "baserom.gba", 0xDE2DE8, 0x000008C
sfxItemSwordBeam:: @ 08DE2E74
	sound_header 1 0 0x48 0 gUnk_08A10C58 sfxItemSwordBeam_track0

sfx140_track0:: @ 08DE2E80
	.incbin "baserom.gba", 0xDE2E80, 0x000005C
sfx140:: @ 08DE2EDC
	sound_header 1 0 0x40 0 gUnk_08A10C64 sfx140_track0

sfxHeartContainerSpawn_track0:: @ 08DE2EE8
	.incbin "baserom.gba", 0xDE2EE8, 0x0000061
sfxHeartContainerSpawn_track1:: @ 08DE2F49
	.incbin "baserom.gba", 0xDE2F49, 0x000004F
sfxHeartContainerSpawn:: @ 08DE2F98
	sound_header 2 0 0x40 0 gUnk_08A10C70 sfxHeartContainerSpawn_track0 sfxHeartContainerSpawn_track1

sfxSparkles_track0:: @ 08DE2FA8
	.incbin "baserom.gba", 0xDE2FA8, 0x0000116
gUnk_08DE30BE:: @ 08DE30BE
	.incbin "baserom.gba", 0xDE30BE, 0x0000042
sfxSparkles:: @ 08DE3100
	sound_header 1 0 0x40 0 gUnk_08A10C94 sfxSparkles_track0

sfx143_track0:: @ 08DE310C
	.incbin "baserom.gba", 0xDE310C, 0x0000010
sfx143:: @ 08DE311C
	sound_header 1 0 0xf0 0 gUnk_08A10CAC sfx143_track0

sfx144_track0:: @ 08DE3128
	.incbin "baserom.gba", 0xDE3128, 0x000002C
sfx144:: @ 08DE3154
	sound_header 1 0 0x40 0 gUnk_08A10CB8 sfx144_track0

sfx145_track0:: @ 08DE3160
	.incbin "baserom.gba", 0xDE3160, 0x0000028
sfx145:: @ 08DE3188
	sound_header 1 0 0x40 0 gUnk_08A10CC4 sfx145_track0

sfx146_track0:: @ 08DE3194
	.incbin "baserom.gba", 0xDE3194, 0x0000030
sfx146:: @ 08DE31C4
	sound_header 1 0 0x40 0 gUnk_08A10CDC sfx146_track0

sfx147_track0:: @ 08DE31D0
	.incbin "baserom.gba", 0xDE31D0, 0x0000069
sfx147_track1:: @ 08DE3239
	.incbin "baserom.gba", 0xDE3239, 0x000006B
sfx147:: @ 08DE32A4
	sound_header 2 0 0x40 0 gUnk_08A10CE8 sfx147_track0 sfx147_track1

sfx148_track0:: @ 08DE32B4
	.incbin "baserom.gba", 0xDE32B4, 0x00000D0
sfx148_track1:: @ 08DE3384
	.incbin "baserom.gba", 0xDE3384, 0x0000030
sfx148:: @ 08DE33B4
	sound_header 2 0 0x40 0 gUnk_08A10D00 sfx148_track0 sfx148_track1

sfx149_track0:: @ 08DE33C4
	.incbin "baserom.gba", 0xDE33C4, 0x0000024
sfx149:: @ 08DE33E8
	sound_header 1 0 0x40 0 gUnk_08A10D24 sfx149_track0

sfx14A_track0:: @ 08DE33F4
	.incbin "baserom.gba", 0xDE33F4, 0x00000B0
sfx14A:: @ 08DE34A4
	sound_header 1 0 0x7f 0 gUnk_08A10D30 sfx14A_track0

sfx14B_track0:: @ 08DE34B0
	.incbin "baserom.gba", 0xDE34B0, 0x0000034
sfx14B:: @ 08DE34E4
	sound_header 1 0 0x40 0 gUnk_08A10D3C sfx14B_track0

sfx14C_track0:: @ 08DE34F0
	.incbin "baserom.gba", 0xDE34F0, 0x0000048
sfx14C_track1:: @ 08DE3538
	.incbin "baserom.gba", 0xDE3538, 0x000002C
sfx14C:: @ 08DE3564
	sound_header 2 0 0x40 0 gUnk_08A10D54 sfx14C_track0 sfx14C_track1

sfx14D_track0:: @ 08DE3574
	.incbin "baserom.gba", 0xDE3574, 0x0000014
sfx14D:: @ 08DE3588
	sound_header 1 0 0x60 0 gUnk_08A10D84 sfx14D_track0

sfx14E_track0:: @ 08DE3594
	.incbin "baserom.gba", 0xDE3594, 0x0000018
sfx14E:: @ 08DE35AC
	sound_header 1 0 0x40 0 gUnk_08A10D90 sfx14E_track0

sfx14F_track0:: @ 08DE35B8
	.incbin "baserom.gba", 0xDE35B8, 0x0000060
sfx14F:: @ 08DE3618
	sound_header 1 0 0x40 0 gUnk_08A10D9C sfx14F_track0

sfx150_track0:: @ 08DE3624
	.incbin "baserom.gba", 0xDE3624, 0x0000020
sfx150_track1:: @ 08DE3644
	.incbin "baserom.gba", 0xDE3644, 0x0000030
sfx150:: @ 08DE3674
	sound_header 2 0 0x40 0 gUnk_08A10DA8 sfx150_track0 sfx150_track1

sfx151_track0:: @ 08DE3684
	.incbin "baserom.gba", 0xDE3684, 0x000002C
sfx151:: @ 08DE36B0
	sound_header 1 0 0x60 0 gUnk_08A10DC0 sfx151_track0

sfx152_track0:: @ 08DE36BC
	.incbin "baserom.gba", 0xDE36BC, 0x0000086
sfx152_track1:: @ 08DE3742
	.incbin "baserom.gba", 0xDE3742, 0x000008A
sfx152:: @ 08DE37CC
	sound_header 2 0 0x40 0 gUnk_08A10DD8 sfx152_track0 sfx152_track1

sfx153_track0:: @ 08DE37DC
	.incbin "baserom.gba", 0xDE37DC, 0x0000030
sfx153:: @ 08DE380C
	sound_header 1 0 0x60 0 gUnk_08A10DF0 sfx153_track0

sfx154_track0:: @ 08DE3818
	.incbin "baserom.gba", 0xDE3818, 0x0000038
sfx154:: @ 08DE3850
	sound_header 1 0 0x40 0 gUnk_08A10DFC sfx154_track0

sfx155_track0:: @ 08DE385C
	.incbin "baserom.gba", 0xDE385C, 0x000002C
sfx155:: @ 08DE3888
	sound_header 1 0 0x40 0 gUnk_08A10E14 sfx155_track0

sfx156_track0:: @ 08DE3894
	.incbin "baserom.gba", 0xDE3894, 0x000005C
sfx156:: @ 08DE38F0
	sound_header 1 0 0x40 0 gUnk_08A10E20 sfx156_track0

sfx157_track0:: @ 08DE38FC
	.incbin "baserom.gba", 0xDE38FC, 0x000001C
sfx157:: @ 08DE3918
	sound_header 1 0 0x40 0 gUnk_08A10E2C sfx157_track0

sfx158_track0:: @ 08DE3924
	.incbin "baserom.gba", 0xDE3924, 0x0000044
sfx158:: @ 08DE3968
	sound_header 1 0 0x40 0 gUnk_08A10E44 sfx158_track0

sfx159_track0:: @ 08DE3974
	.incbin "baserom.gba", 0xDE3974, 0x0000040
sfx159:: @ 08DE39B4
	sound_header 1 0 0x40 0 gUnk_08A10E68 sfx159_track0

sfx15A_track0:: @ 08DE39C0
	.incbin "baserom.gba", 0xDE39C0, 0x0000026
sfx15A_track1:: @ 08DE39E6
	.incbin "baserom.gba", 0xDE39E6, 0x000002A
sfx15A:: @ 08DE3A10
	sound_header 2 0 0x40 0 gUnk_08A10E74 sfx15A_track0 sfx15A_track1

sfx15B_track0:: @ 08DE3A20
	.incbin "baserom.gba", 0xDE3A20, 0x0000050
sfx15B:: @ 08DE3A70
	sound_header 1 0 0x40 0 gUnk_08A10EA4 sfx15B_track0

sfx15C_track0:: @ 08DE3A7C
	.incbin "baserom.gba", 0xDE3A7C, 0x0000024
sfx15C:: @ 08DE3AA0
	sound_header 1 0 0x40 0 gUnk_08A10EBC sfx15C_track0

sfx15D_track0:: @ 08DE3AAC
	.incbin "baserom.gba", 0xDE3AAC, 0x0000027
sfx15D_track1:: @ 08DE3AD3
	.incbin "baserom.gba", 0xDE3AD3, 0x0000025
sfx15D:: @ 08DE3AF8
	sound_header 2 0 0x40 0 gUnk_08A10EC8 sfx15D_track0 sfx15D_track1

sfx15E_track0:: @ 08DE3B08
	.incbin "baserom.gba", 0xDE3B08, 0x0000028
sfx15E:: @ 08DE3B30
	sound_header 1 0 0x40 0 gUnk_08A10EEC sfx15E_track0

sfx15F_track0:: @ 08DE3B3C
	.incbin "baserom.gba", 0xDE3B3C, 0x0000030
sfx15F:: @ 08DE3B6C
	sound_header 1 0 0x40 0 gUnk_08A10EF8 sfx15F_track0

sfx160_track0:: @ 08DE3B78
	.incbin "baserom.gba", 0xDE3B78, 0x000005C
sfx160:: @ 08DE3BD4
	sound_header 1 0 0x40 0 gUnk_08A10F04 sfx160_track0

sfx161_track0:: @ 08DE3BE0
	.incbin "baserom.gba", 0xDE3BE0, 0x0000010
sfx161:: @ 08DE3BF0
	sound_header 1 0 0x28 0 gUnk_08A10F1C sfx161_track0

sfx162_track0:: @ 08DE3BFC
	.incbin "baserom.gba", 0xDE3BFC, 0x0000018
sfx162:: @ 08DE3C14
	sound_header 1 0 0x40 0 gUnk_08A10F28 sfx162_track0

sfx163_track0:: @ 08DE3C20
	.incbin "baserom.gba", 0xDE3C20, 0x0000020
sfx163_track1:: @ 08DE3C40
	.incbin "baserom.gba", 0xDE3C40, 0x0000024
sfx163:: @ 08DE3C64
	sound_header 2 0 0x40 0 gUnk_08A10F34 sfx163_track0 sfx163_track1

sfx164_track0:: @ 08DE3C74
	.incbin "baserom.gba", 0xDE3C74, 0x000004C
sfx164:: @ 08DE3CC0
	sound_header 1 0 0x40 0 gUnk_08A10F58 sfx164_track0

sfx165_track0:: @ 08DE3CCC
	.incbin "baserom.gba", 0xDE3CCC, 0x0000068
sfx165:: @ 08DE3D34
	sound_header 1 0 0x40 0 gUnk_08A10F70 sfx165_track0

sfx166_track0:: @ 08DE3D40
	.incbin "baserom.gba", 0xDE3D40, 0x0000070
sfx166:: @ 08DE3DB0
	sound_header 1 0 0x40 0 gUnk_08A10F88 sfx166_track0

sfx167_track0:: @ 08DE3DBC
	.incbin "baserom.gba", 0xDE3DBC, 0x0000078
sfx167:: @ 08DE3E34
	sound_header 1 0 0x40 0 gUnk_08A10FA0 sfx167_track0

sfx168_track0:: @ 08DE3E40
	.incbin "baserom.gba", 0xDE3E40, 0x000001C
sfx168:: @ 08DE3E5C
	sound_header 1 0 0x40 0 gUnk_08A10FB8 sfx168_track0

sfx169_track0:: @ 08DE3E68
	.incbin "baserom.gba", 0xDE3E68, 0x000003C
sfx169:: @ 08DE3EA4
	sound_header 1 0 0x40 0 gUnk_08A10FD0 sfx169_track0

sfx16A_track0:: @ 08DE3EB0
	.incbin "baserom.gba", 0xDE3EB0, 0x0000030
sfx16A:: @ 08DE3EE0
	sound_header 1 0 0x40 0 gUnk_08A10FE8 sfx16A_track0

sfx16B_track0:: @ 08DE3EEC
	.incbin "baserom.gba", 0xDE3EEC, 0x0000030
sfx16B:: @ 08DE3F1C
	sound_header 1 0 0x40 0 gUnk_08A11000 sfx16B_track0

sfx16C_track0:: @ 08DE3F28
	.incbin "baserom.gba", 0xDE3F28, 0x0000034
sfx16C:: @ 08DE3F5C
	sound_header 1 0 0x40 0 gUnk_08A11018 sfx16C_track0

sfx16D_track0:: @ 08DE3F68
	.incbin "baserom.gba", 0xDE3F68, 0x000004C
sfx16D_track1:: @ 08DE3FB4
	.incbin "baserom.gba", 0xDE3FB4, 0x0000074
sfx16D:: @ 08DE4028
	sound_header 2 0 0x40 0 gUnk_08A11048 sfx16D_track0 sfx16D_track1

sfx16E_track0:: @ 08DE4038
	.incbin "baserom.gba", 0xDE4038, 0x0000034
sfx16E:: @ 08DE406C
	sound_header 1 0 0x40 0 gUnk_08A1106C sfx16E_track0

sfxPlyShrinking_track0:: @ 08DE4078
	.incbin "baserom.gba", 0xDE4078, 0x0000098
sfxPlyShrinking:: @ 08DE4110
	sound_header 1 0 0x40 0 gUnk_08A11084 sfxPlyShrinking_track0

sfxPlyGrow_track0:: @ 08DE411C
	.incbin "baserom.gba", 0xDE411C, 0x0000060
sfxPlyGrow:: @ 08DE417C
	sound_header 1 0 0x40 0 gUnk_08A11090 sfxPlyGrow_track0

sfx171_track0:: @ 08DE4188
	.incbin "baserom.gba", 0xDE4188, 0x0000010
sfx171:: @ 08DE4198
	sound_header 1 0 0x40 0 gUnk_08A1109C sfx171_track0

sfx172_track0:: @ 08DE41A4
	.incbin "baserom.gba", 0xDE41A4, 0x000002C
sfx172:: @ 08DE41D0
	sound_header 1 0 0x40 0 gUnk_08A110A8 sfx172_track0

sfxEzloUi_track0:: @ 08DE41DC
	.incbin "baserom.gba", 0xDE41DC, 0x0000018
sfxEzloUi_track1:: @ 08DE41F4
	.incbin "baserom.gba", 0xDE41F4, 0x0000018
sfxEzloUi:: @ 08DE420C
	sound_header 2 0 0x7f 0 gUnk_08A110B4 sfxEzloUi_track0 sfxEzloUi_track1

sfx174_track0:: @ 08DE421C
	.incbin "baserom.gba", 0xDE421C, 0x0000028
sfx174:: @ 08DE4244
	sound_header 1 0 0x40 0 gUnk_08A110CC sfx174_track0

sfx175_track0:: @ 08DE4250
	.incbin "baserom.gba", 0xDE4250, 0x0000028
sfx175:: @ 08DE4278
	sound_header 1 0 0x30 0 gUnk_08A110D8 sfx175_track0

sfx176_track0:: @ 08DE4284
	.incbin "baserom.gba", 0xDE4284, 0x0000020
sfx176_track1:: @ 08DE42A4
	.incbin "baserom.gba", 0xDE42A4, 0x000001C
sfx176:: @ 08DE42C0
	sound_header 2 0 0x40 0 gUnk_08A110E4 sfx176_track0 sfx176_track1

sfx177_track0:: @ 08DE42D0
	.incbin "baserom.gba", 0xDE42D0, 0x000005B
sfx177_track1:: @ 08DE432B
	.incbin "baserom.gba", 0xDE432B, 0x0000055
sfx177:: @ 08DE4380
	sound_header 2 0 0x60 0 gUnk_08A11108 sfx177_track0 sfx177_track1

sfx178_track0:: @ 08DE4390
	.incbin "baserom.gba", 0xDE4390, 0x0000044
sfx178:: @ 08DE43D4
	sound_header 1 0 0x40 0 gUnk_08A1112C sfx178_track0

sfx179_track0:: @ 08DE43E0
	.incbin "baserom.gba", 0xDE43E0, 0x0000044
sfx179:: @ 08DE4424
	sound_header 1 0 0x40 0 gUnk_08A11144 sfx179_track0

sfx17A_track0:: @ 08DE4430
	.incbin "baserom.gba", 0xDE4430, 0x0000056
sfx17A_track1:: @ 08DE4486
	.incbin "baserom.gba", 0xDE4486, 0x000003E
sfx17A:: @ 08DE44C4
	sound_header 2 0 0x78 0 gUnk_08A11150 sfx17A_track0 sfx17A_track1

sfxLavaTitleStep_track0:: @ 08DE44D4
	.incbin "baserom.gba", 0xDE44D4, 0x0000010
sfxLavaTitleStep:: @ 08DE44E4
	sound_header 1 0 0x40 0 gUnk_08A11168 sfxLavaTitleStep_track0

sfxLavaTitleWobble_track0:: @ 08DE44F0
	.incbin "baserom.gba", 0xDE44F0, 0x0000010
sfxLavaTitleWobble:: @ 08DE4500
	sound_header 1 0 0x40 0 gUnk_08A11174 sfxLavaTitleWobble_track0

sfxLavaTitleSink_track0:: @ 08DE450C
	.incbin "baserom.gba", 0xDE450C, 0x0000010
sfxLavaTitleSink:: @ 08DE451C
	sound_header 1 0 0x40 0 gUnk_08A11180 sfxLavaTitleSink_track0

sfxLavaTitleFlip_track0:: @ 08DE4528
	.incbin "baserom.gba", 0xDE4528, 0x0000010
sfxLavaTitleFlip:: @ 08DE4538
	sound_header 1 0 0x40 0 gUnk_08A1118C sfxLavaTitleFlip_track0

sfxLavaTitleLand_track0:: @ 08DE4544
	.incbin "baserom.gba", 0xDE4544, 0x0000010
sfxLavaTitleLand:: @ 08DE4554
	sound_header 1 0 0x40 0 gUnk_08A11198 sfxLavaTitleLand_track0

sfx180_track0:: @ 08DE4560
	.incbin "baserom.gba", 0xDE4560, 0x0000014
sfx180:: @ 08DE4574
	sound_header 1 0 0x40 0 gUnk_08A111A4 sfx180_track0

sfx181_track0:: @ 08DE4580
	.incbin "baserom.gba", 0xDE4580, 0x0000014
sfx181:: @ 08DE4594
	sound_header 1 0 0x40 0 gUnk_08A111B0 sfx181_track0

sfx182_track0:: @ 08DE45A0
	.incbin "baserom.gba", 0xDE45A0, 0x0000022
sfx182_track1:: @ 08DE45C2
	.incbin "baserom.gba", 0xDE45C2, 0x000002E
sfx182:: @ 08DE45F0
	sound_header 2 0 0x40 0 gUnk_08A111BC sfx182_track0 sfx182_track1

sfx183_track0:: @ 08DE4600
	.incbin "baserom.gba", 0xDE4600, 0x000006B
sfx183_track1:: @ 08DE466B
	.incbin "baserom.gba", 0xDE466B, 0x000003D
sfx183:: @ 08DE46A8
	sound_header 2 0 0x30 0 gUnk_08A111E0 sfx183_track0 sfx183_track1

sfx184_track0:: @ 08DE46B8
	.incbin "baserom.gba", 0xDE46B8, 0x0000010
sfx184:: @ 08DE46C8
	sound_header 1 0 0x40 0 gUnk_08A111F8 sfx184_track0

sfx185_track0:: @ 08DE46D4
	.incbin "baserom.gba", 0xDE46D4, 0x000003D
sfx185_track1:: @ 08DE4711
	.incbin "baserom.gba", 0xDE4711, 0x000004B
sfx185:: @ 08DE475C
	sound_header 2 0 0x40 0 gUnk_08A11204 sfx185_track0 sfx185_track1

sfx186_track0:: @ 08DE476C
	.incbin "baserom.gba", 0xDE476C, 0x0000024
sfx186:: @ 08DE4790
	sound_header 1 0 0x40 0 gUnk_08A11228 sfx186_track0

sfxStairsAscend_track0:: @ 08DE479C
	.incbin "baserom.gba", 0xDE479C, 0x0000048
sfxStairsAscend:: @ 08DE47E4
	sound_header 1 0 0x40 0 gUnk_08A11234 sfxStairsAscend_track0

sfxStairsDescend_track0:: @ 08DE47F0
	.incbin "baserom.gba", 0xDE47F0, 0x0000048
sfxStairsDescend:: @ 08DE4838
	sound_header 1 0 0x40 0 gUnk_08A11240 sfxStairsDescend_track0

sfx189_track0:: @ 08DE4844
	.incbin "baserom.gba", 0xDE4844, 0x0000034
sfx189:: @ 08DE4878
	sound_header 1 0 0x60 0 gUnk_08A1124C sfx189_track0

sfx18A_track0:: @ 08DE4884
	.incbin "baserom.gba", 0xDE4884, 0x000001F
sfx18A_track1:: @ 08DE48A3
	.incbin "baserom.gba", 0xDE48A3, 0x0000019
sfx18A:: @ 08DE48BC
	sound_header 2 0 0x40 0 gUnk_08A11258 sfx18A_track0 sfx18A_track1

sfx18B_track0:: @ 08DE48CC
	.incbin "baserom.gba", 0xDE48CC, 0x000003D
sfx18B_track1:: @ 08DE4909
	.incbin "baserom.gba", 0xDE4909, 0x0000027
sfx18B:: @ 08DE4930
	sound_header 2 0 0x40 0 gUnk_08A1127C sfx18B_track0 sfx18B_track1

sfx18C_track0:: @ 08DE4940
	.incbin "baserom.gba", 0xDE4940, 0x000001B
sfx18C_track1:: @ 08DE495B
	.incbin "baserom.gba", 0xDE495B, 0x000000D
sfx18C:: @ 08DE4968
	sound_header 2 0 0x40 0 gUnk_08A112AC sfx18C_track0 sfx18C_track1

sfx18D_track0:: @ 08DE4978
	.incbin "baserom.gba", 0xDE4978, 0x0000034
sfx18D:: @ 08DE49AC
	sound_header 1 0 0x40 0 gUnk_08A112D0 sfx18D_track0

sfx18E_track0:: @ 08DE49B8
	.incbin "baserom.gba", 0xDE49B8, 0x0000018
sfx18E:: @ 08DE49D0
	sound_header 1 0 0x40 0 gUnk_08A112E8 sfx18E_track0

sfx18F_track0:: @ 08DE49DC
	.incbin "baserom.gba", 0xDE49DC, 0x0000030
sfx18F:: @ 08DE4A0C
	sound_header 1 0 0x50 0 gUnk_08A11300 sfx18F_track0

sfx190_track0:: @ 08DE4A18
	.incbin "baserom.gba", 0xDE4A18, 0x0000010
sfx190:: @ 08DE4A28
	sound_header 1 0 0x40 0 gUnk_08A1130C sfx190_track0

sfx191_track0:: @ 08DE4A34
	.incbin "baserom.gba", 0xDE4A34, 0x000002C
sfx191:: @ 08DE4A60
	sound_header 1 0 0x40 0 gUnk_08A11318 sfx191_track0

sfx192_track0:: @ 08DE4A6C
	.incbin "baserom.gba", 0xDE4A6C, 0x0000038
sfx192_track1:: @ 08DE4AA4
	.incbin "baserom.gba", 0xDE4AA4, 0x0000028
sfx192:: @ 08DE4ACC
	sound_header 2 0 0x40 0 gUnk_08A11330 sfx192_track0 sfx192_track1

sfx193_track0:: @ 08DE4ADC
	.incbin "baserom.gba", 0xDE4ADC, 0x0000024
sfx193:: @ 08DE4B00
	sound_header 1 0 0x40 0 gUnk_08A11360 sfx193_track0

sfx194_track0:: @ 08DE4B0C
	.incbin "baserom.gba", 0xDE4B0C, 0x000001E
sfx194_track1:: @ 08DE4B2A
	.incbin "baserom.gba", 0xDE4B2A, 0x0000026
sfx194:: @ 08DE4B50
	sound_header 2 0 0x40 0 gUnk_08A1136C sfx194_track0 sfx194_track1

sfx195_track0:: @ 08DE4B60
	.incbin "baserom.gba", 0xDE4B60, 0x0000044
sfx195_track1:: @ 08DE4BA4
	.incbin "baserom.gba", 0xDE4BA4, 0x0000048
sfx195:: @ 08DE4BEC
	sound_header 2 0 0x40 0 gUnk_08A11384 sfx195_track0 sfx195_track1

sfx196_track0:: @ 08DE4BFC
	.incbin "baserom.gba", 0xDE4BFC, 0x00000D0
sfx196:: @ 08DE4CCC
	sound_header 1 0 0x60 0 gUnk_08A1139C sfx196_track0

sfx197_track0:: @ 08DE4CD8
	.incbin "baserom.gba", 0xDE4CD8, 0x000004C
sfx197:: @ 08DE4D24
	sound_header 1 0 0x60 0 gUnk_08A113B4 sfx197_track0

sfx198_track0:: @ 08DE4D30
	.incbin "baserom.gba", 0xDE4D30, 0x0000134
sfx198:: @ 08DE4E64
	sound_header 1 0 0x40 0 gUnk_08A113C0 sfx198_track0

sfx199_track0:: @ 08DE4E70
	.incbin "baserom.gba", 0xDE4E70, 0x0000027
sfx199_track1:: @ 08DE4E97
	.incbin "baserom.gba", 0xDE4E97, 0x0000019
sfx199:: @ 08DE4EB0
	sound_header 2 0 0x40 0 gUnk_08A113E4 sfx199_track0 sfx199_track1

sfx19A_track0:: @ 08DE4EC0
	.incbin "baserom.gba", 0xDE4EC0, 0x0000016
sfx19A_track1:: @ 08DE4ED6
	.incbin "baserom.gba", 0xDE4ED6, 0x000004A
sfx19A:: @ 08DE4F20
	sound_header 2 0 0x40 0 gUnk_08A113FC sfx19A_track0 sfx19A_track1

sfx19B_track0:: @ 08DE4F30
	.incbin "baserom.gba", 0xDE4F30, 0x0000049
sfx19B_track1:: @ 08DE4F79
	.incbin "baserom.gba", 0xDE4F79, 0x000003B
sfx19B:: @ 08DE4FB4
	sound_header 2 0 0x40 0 gUnk_08A11414 sfx19B_track0 sfx19B_track1

sfx19C_track0:: @ 08DE4FC4
	.incbin "baserom.gba", 0xDE4FC4, 0x0000024
sfx19C:: @ 08DE4FE8
	sound_header 1 0 0x40 0 gUnk_08A1142C sfx19C_track0

sfx19D_track0:: @ 08DE4FF4
	.incbin "baserom.gba", 0xDE4FF4, 0x0000030
sfx19D_track1:: @ 08DE5024
	.incbin "baserom.gba", 0xDE5024, 0x0000048
sfx19D:: @ 08DE506C
	sound_header 2 0 0x40 0 gUnk_08A11444 sfx19D_track0 sfx19D_track1

sfx19E_track0:: @ 08DE507C
	.incbin "baserom.gba", 0xDE507C, 0x0000040
sfx19E:: @ 08DE50BC
	sound_header 1 0 0x40 0 gUnk_08A1145C sfx19E_track0

sfx19F_track0:: @ 08DE50C8
	.incbin "baserom.gba", 0xDE50C8, 0x0000026
sfx19F_track1:: @ 08DE50EE
	.incbin "baserom.gba", 0xDE50EE, 0x000003E
sfx19F:: @ 08DE512C
	sound_header 2 0 0x40 0 gUnk_08A11468 sfx19F_track0 sfx19F_track1

sfx1A0_track0:: @ 08DE513C
	.incbin "baserom.gba", 0xDE513C, 0x0000048
sfx1A0_track1:: @ 08DE5184
	.incbin "baserom.gba", 0xDE5184, 0x000002C
sfx1A0:: @ 08DE51B0
	sound_header 2 0 0x40 0 gUnk_08A1148C sfx1A0_track0 sfx1A0_track1

sfx1A1_track0:: @ 08DE51C0
	.incbin "baserom.gba", 0xDE51C0, 0x0000024
sfx1A1_track1:: @ 08DE51E4
	.incbin "baserom.gba", 0xDE51E4, 0x0000034
sfx1A1:: @ 08DE5218
	sound_header 2 0 0x40 0 gUnk_08A114BC sfx1A1_track0 sfx1A1_track1

sfx1A2_track0:: @ 08DE5228
	.incbin "baserom.gba", 0xDE5228, 0x0000020
sfx1A2:: @ 08DE5248
	sound_header 1 0 0x40 0 gUnk_08A114E0 sfx1A2_track0

sfx1A3_track0:: @ 08DE5254
	.incbin "baserom.gba", 0xDE5254, 0x000004B
sfx1A3_track1:: @ 08DE529F
	.incbin "baserom.gba", 0xDE529F, 0x0000051
sfx1A3:: @ 08DE52F0
	sound_header 2 0 0x40 0 gUnk_08A11504 sfx1A3_track0 sfx1A3_track1

sfx1A4_track0:: @ 08DE5300
	.incbin "baserom.gba", 0xDE5300, 0x0000018
sfx1A4:: @ 08DE5318
	sound_header 1 0 0x40 0 gUnk_08A1151C sfx1A4_track0

sfx1A5_track0:: @ 08DE5324
	.incbin "baserom.gba", 0xDE5324, 0x0000024
sfx1A5:: @ 08DE5348
	sound_header 1 0 0x40 0 gUnk_08A11528 sfx1A5_track0

sfx1A6_track0:: @ 08DE5354
	.incbin "baserom.gba", 0xDE5354, 0x000003C
sfx1A6:: @ 08DE5390
	sound_header 1 0 0x40 0 gUnk_08A11534 sfx1A6_track0

sfx1A7_track0:: @ 08DE539C
	.incbin "baserom.gba", 0xDE539C, 0x0000060
sfx1A7:: @ 08DE53FC
	sound_header 1 0 0x40 0 gUnk_08A11540 sfx1A7_track0

sfx1A8_track0:: @ 08DE5408
	.incbin "baserom.gba", 0xDE5408, 0x0000038
sfx1A8:: @ 08DE5440
	sound_header 1 0 0x40 0 gUnk_08A1154C sfx1A8_track0

sfx1A9_track0:: @ 08DE544C
	.incbin "baserom.gba", 0xDE544C, 0x00000F4
sfx1A9:: @ 08DE5540
	sound_header 1 0 0x38 0 gUnk_08A11564 sfx1A9_track0

sfx1AA_track0:: @ 08DE554C
	.incbin "baserom.gba", 0xDE554C, 0x0000084
sfx1AA_track1:: @ 08DE55D0
	.incbin "baserom.gba", 0xDE55D0, 0x0000054
gUnk_08DE5624:: @ 08DE5624
	.incbin "baserom.gba", 0xDE5624, 0x0000030
sfx1AA:: @ 08DE5654
	sound_header 2 0 0x40 0 gUnk_08A11570 sfx1AA_track0 sfx1AA_track1

sfx1AB_track0:: @ 08DE5664
	.incbin "baserom.gba", 0xDE5664, 0x000006E
sfx1AB_track1:: @ 08DE56D2
	.incbin "baserom.gba", 0xDE56D2, 0x0000056
sfx1AB:: @ 08DE5728
	sound_header 2 0 0x40 0 gUnk_08A11588 sfx1AB_track0 sfx1AB_track1

sfx1AC_track0:: @ 08DE5738
	.incbin "baserom.gba", 0xDE5738, 0x0000074
sfx1AC:: @ 08DE57AC
	sound_header 1 0 0x40 0 gUnk_08A115A0 sfx1AC_track0

sfx1AD_track0:: @ 08DE57B8
	.incbin "baserom.gba", 0xDE57B8, 0x0000022
sfx1AD_track1:: @ 08DE57DA
	.incbin "baserom.gba", 0xDE57DA, 0x000002E
sfx1AD:: @ 08DE5808
	sound_header 2 0 0x40 0 gUnk_08A115AC sfx1AD_track0 sfx1AD_track1

sfx1AE_track0:: @ 08DE5818
	.incbin "baserom.gba", 0xDE5818, 0x000001F
sfx1AE_track1:: @ 08DE5837
	.incbin "baserom.gba", 0xDE5837, 0x0000019
sfx1AE:: @ 08DE5850
	sound_header 2 0 0x40 0 gUnk_08A115D0 sfx1AE_track0 sfx1AE_track1

sfx1AF_track0:: @ 08DE5860
	.incbin "baserom.gba", 0xDE5860, 0x000001B
sfx1AF_track1:: @ 08DE587B
	.incbin "baserom.gba", 0xDE587B, 0x0000019
sfx1AF:: @ 08DE5894
	sound_header 2 0 0x40 0 gUnk_08A115F4 sfx1AF_track0 sfx1AF_track1

sfx1B0_track0:: @ 08DE58A4
	.incbin "baserom.gba", 0xDE58A4, 0x000003C
sfx1B0:: @ 08DE58E0
	sound_header 1 0 0x40 0 gUnk_08A1160C sfx1B0_track0

sfxIceBlockSlide_track0:: @ 08DE58EC
	.incbin "baserom.gba", 0xDE58EC, 0x0000010
sfxIceBlockSlide:: @ 08DE58FC
	sound_header 1 0 0x40 0 gUnk_08A11618 sfxIceBlockSlide_track0

sfxIceBlockStop_track0:: @ 08DE5908
	.incbin "baserom.gba", 0xDE5908, 0x0000010
sfxIceBlockStop:: @ 08DE5918
	sound_header 1 0 0x40 0 gUnk_08A11624 sfxIceBlockStop_track0

sfxIceBlockMelt_track0:: @ 08DE5924
	.incbin "baserom.gba", 0xDE5924, 0x0000010
sfxIceBlockMelt:: @ 08DE5934
	sound_header 1 0 0x40 0 gUnk_08A11630 sfxIceBlockMelt_track0

sfx1B4_track0:: @ 08DE5940
	.incbin "baserom.gba", 0xDE5940, 0x000004C
sfx1B4:: @ 08DE598C
	sound_header 1 0 0x40 0 gUnk_08A1163C sfx1B4_track0

sfx1B5_track0:: @ 08DE5998
	.incbin "baserom.gba", 0xDE5998, 0x0000030
sfx1B5:: @ 08DE59C8
	sound_header 1 0 0x40 0 gUnk_08A11654 sfx1B5_track0

sfx1B6_track0:: @ 08DE59D4
	.incbin "baserom.gba", 0xDE59D4, 0x000006C
sfx1B6_track1:: @ 08DE5A40
	.incbin "baserom.gba", 0xDE5A40, 0x000009C
sfx1B6:: @ 08DE5ADC
	sound_header 2 0 0x40 0 gUnk_08A1166C sfx1B6_track0 sfx1B6_track1

sfxVoGoron1_track0:: @ 08DE5AEC
	.incbin "baserom.gba", 0xDE5AEC, 0x0000010
sfxVoGoron1:: @ 08DE5AFC
	sound_header 1 0 0x48 0 gUnk_08A11690 sfxVoGoron1_track0

sfxVoGoron2_track0:: @ 08DE5B08
	.incbin "baserom.gba", 0xDE5B08, 0x0000010
sfxVoGoron2:: @ 08DE5B18
	sound_header 1 0 0x48 0 gUnk_08A1169C sfxVoGoron2_track0

sfxVoGoron3_track0:: @ 08DE5B24
	.incbin "baserom.gba", 0xDE5B24, 0x0000010
sfxVoGoron3:: @ 08DE5B34
	sound_header 1 0 0x48 0 gUnk_08A116A8 sfxVoGoron3_track0

sfxVoGoron4_track0:: @ 08DE5B40
	.incbin "baserom.gba", 0xDE5B40, 0x0000014
sfxVoGoron4:: @ 08DE5B54
	sound_header 1 0 0x48 0 gUnk_08A116B4 sfxVoGoron4_track0

sfxEmDekuscrubHit_track0:: @ 08DE5B60
	.incbin "baserom.gba", 0xDE5B60, 0x0000048
sfxEmDekuscrubHit:: @ 08DE5BA8
	sound_header 1 0 0x48 0 gUnk_08A116CC sfxEmDekuscrubHit_track0

sfx1BC_track0:: @ 08DE5BB4
	.incbin "baserom.gba", 0xDE5BB4, 0x0000010
sfx1BC:: @ 08DE5BC4
	sound_header 1 0 0x48 0 gUnk_08A116D8 sfx1BC_track0

sfx1BD_track0:: @ 08DE5BD0
	.incbin "baserom.gba", 0xDE5BD0, 0x0000010
sfx1BD:: @ 08DE5BE0
	sound_header 1 0 0x48 0 gUnk_08A116E4 sfx1BD_track0

sfx1BE_track0:: @ 08DE5BEC
	.incbin "baserom.gba", 0xDE5BEC, 0x0000010
sfx1BE:: @ 08DE5BFC
	sound_header 1 0 0x48 0 gUnk_08A116F0 sfx1BE_track0

sfx1BF_track0:: @ 08DE5C08
	.incbin "baserom.gba", 0xDE5C08, 0x0000010
sfx1BF:: @ 08DE5C18
	sound_header 1 0 0x48 0 gUnk_08A116FC sfx1BF_track0

sfx1C0_track0:: @ 08DE5C24
	.incbin "baserom.gba", 0xDE5C24, 0x0000010
sfx1C0:: @ 08DE5C34
	sound_header 1 0 0x48 0 gUnk_08A11708 sfx1C0_track0

sfx1C1_track0:: @ 08DE5C40
	.incbin "baserom.gba", 0xDE5C40, 0x0000010
sfx1C1:: @ 08DE5C50
	sound_header 1 0 0x48 0 gUnk_08A11714 sfx1C1_track0

sfx1C2_track0:: @ 08DE5C5C
	.incbin "baserom.gba", 0xDE5C5C, 0x0000010
sfx1C2:: @ 08DE5C6C
	sound_header 1 0 0x40 0 gUnk_08A11720 sfx1C2_track0

sfx1C3_track0:: @ 08DE5C78
	.incbin "baserom.gba", 0xDE5C78, 0x0000010
sfx1C3:: @ 08DE5C88
	sound_header 1 0 0x40 0 gUnk_08A1172C sfx1C3_track0

sfx1C4_track0:: @ 08DE5C94
	.incbin "baserom.gba", 0xDE5C94, 0x0000014
sfx1C4:: @ 08DE5CA8
	sound_header 1 0 0x40 0 gUnk_08A11738 sfx1C4_track0

sfx1C5_track0:: @ 08DE5CB4
	.incbin "baserom.gba", 0xDE5CB4, 0x0000010
sfx1C5:: @ 08DE5CC4
	sound_header 1 0 0x40 0 gUnk_08A11744 sfx1C5_track0

sfx1C6_track0:: @ 08DE5CD0
	.incbin "baserom.gba", 0xDE5CD0, 0x0000010
sfx1C6:: @ 08DE5CE0
	sound_header 1 0 0x40 0 gUnk_08A11750 sfx1C6_track0

sfx1C7_track0:: @ 08DE5CEC
	.incbin "baserom.gba", 0xDE5CEC, 0x0000010
sfx1C7:: @ 08DE5CFC
	sound_header 1 0 0x40 0 gUnk_08A1175C sfx1C7_track0

sfx1C8_track0:: @ 08DE5D08
	.incbin "baserom.gba", 0xDE5D08, 0x0000020
sfx1C8:: @ 08DE5D28
	sound_header 1 0 0x40 0 gUnk_08A11768 sfx1C8_track0

sfx1C9_track0:: @ 08DE5D34
	.incbin "baserom.gba", 0xDE5D34, 0x0000010
sfx1C9:: @ 08DE5D44
	sound_header 1 0 0x40 0 gUnk_08A11774 sfx1C9_track0

sfx1CA_track0:: @ 08DE5D50
	.incbin "baserom.gba", 0xDE5D50, 0x0000010
sfx1CA_track1:: @ 08DE5D60
	.incbin "baserom.gba", 0xDE5D60, 0x0000010
sfx1CA:: @ 08DE5D70
	sound_header 2 0 0x44 0 gUnk_08A11780 sfx1CA_track0 sfx1CA_track1

sfx1CB_track0:: @ 08DE5D80
	.incbin "baserom.gba", 0xDE5D80, 0x0000010
sfx1CB:: @ 08DE5D90
	sound_header 1 0 0x40 0 gUnk_08A11798 sfx1CB_track0

sfx1CC_track0:: @ 08DE5D9C
	.incbin "baserom.gba", 0xDE5D9C, 0x0000010
sfx1CC:: @ 08DE5DAC
	sound_header 1 0 0x40 0 gUnk_08A117A4 sfx1CC_track0

sfxElementPlace_track0:: @ 08DE5DB8
	.incbin "baserom.gba", 0xDE5DB8, 0x0000010
sfxElementPlace:: @ 08DE5DC8
	sound_header 1 0 0x40 0 gUnk_08A117B0 sfxElementPlace_track0

sfxElementFloat_track0:: @ 08DE5DD4
	.incbin "baserom.gba", 0xDE5DD4, 0x0000010
sfxElementFloat:: @ 08DE5DE4
	sound_header 1 0 0x40 0 gUnk_08A117BC sfxElementFloat_track0

sfxElementCharge_track0:: @ 08DE5DF0
	.incbin "baserom.gba", 0xDE5DF0, 0x0000010
sfxElementCharge:: @ 08DE5E00
	sound_header 1 0 0x40 0 gUnk_08A117C8 sfxElementCharge_track0

sfx1D0_track0:: @ 08DE5E0C
	.incbin "baserom.gba", 0xDE5E0C, 0x0000010
sfx1D0:: @ 08DE5E1C
	sound_header 1 0 0x40 0 gUnk_08A117D4 sfx1D0_track0

sfxElementInfuse_track0:: @ 08DE5E28
	.incbin "baserom.gba", 0xDE5E28, 0x0000010
sfxElementInfuse:: @ 08DE5E38
	sound_header 1 0 0x40 0 gUnk_08A117E0 sfxElementInfuse_track0

sfx1D2_track0:: @ 08DE5E44
	.incbin "baserom.gba", 0xDE5E44, 0x0000010
sfx1D2:: @ 08DE5E54
	sound_header 1 0 0x40 0 gUnk_08A117EC sfx1D2_track0

sfx1D3_track0:: @ 08DE5E60
	.incbin "baserom.gba", 0xDE5E60, 0x0000010
sfx1D3:: @ 08DE5E70
	sound_header 1 0 0x40 0 gUnk_08A117F8 sfx1D3_track0

sfx1D4_track0:: @ 08DE5E7C
	.incbin "baserom.gba", 0xDE5E7C, 0x0000010
sfx1D4:: @ 08DE5E8C
	sound_header 1 0 0x40 0 gUnk_08A11804 sfx1D4_track0

sfx1D5_track0:: @ 08DE5E98
	.incbin "baserom.gba", 0xDE5E98, 0x0000010
sfx1D5:: @ 08DE5EA8
	sound_header 1 0 0x40 0 gUnk_08A11810 sfx1D5_track0

sfxVoCucco1_track0:: @ 08DE5EB4
	.incbin "baserom.gba", 0xDE5EB4, 0x0000010
sfxVoCucco1:: @ 08DE5EC4
	sound_header 1 0 0x48 0 gUnk_08A1181C sfxVoCucco1_track0

sfxVoCucco2_track0:: @ 08DE5ED0
	.incbin "baserom.gba", 0xDE5ED0, 0x0000010
sfxVoCucco2:: @ 08DE5EE0
	sound_header 1 0 0x48 0 gUnk_08A11828 sfxVoCucco2_track0

sfxVoCucco3_track0:: @ 08DE5EEC
	.incbin "baserom.gba", 0xDE5EEC, 0x0000010
sfxVoCucco3:: @ 08DE5EFC
	sound_header 1 0 0x48 0 gUnk_08A11834 sfxVoCucco3_track0

sfxVoCucco4_track0:: @ 08DE5F08
	.incbin "baserom.gba", 0xDE5F08, 0x0000010
sfxVoCucco4:: @ 08DE5F18
	sound_header 1 0 0x48 0 gUnk_08A11840 sfxVoCucco4_track0

sfxVoCucco5_track0:: @ 08DE5F24
	.incbin "baserom.gba", 0xDE5F24, 0x0000010
sfxVoCucco5:: @ 08DE5F34
	sound_header 1 0 0x48 0 gUnk_08A1184C sfxVoCucco5_track0

sfx1DB_track0:: @ 08DE5F40
	.incbin "baserom.gba", 0xDE5F40, 0x0000044
sfx1DB_track1:: @ 08DE5F84
	.incbin "baserom.gba", 0xDE5F84, 0x0000048
sfx1DB:: @ 08DE5FCC
	sound_header 2 0 0x40 0 gUnk_08A11858 sfx1DB_track0 sfx1DB_track1

sfx1DC_track0:: @ 08DE5FDC
	.incbin "baserom.gba", 0xDE5FDC, 0x0000028
sfx1DC:: @ 08DE6004
	sound_header 1 0 0x40 0 gUnk_08A11870 sfx1DC_track0

sfx1DD_track0:: @ 08DE6010
	.incbin "baserom.gba", 0xDE6010, 0x0000034
sfx1DD:: @ 08DE6044
	sound_header 1 0 0x48 0 gUnk_08A11888 sfx1DD_track0

sfx1DE_track0:: @ 08DE6050
	.incbin "baserom.gba", 0xDE6050, 0x0000010
sfx1DE:: @ 08DE6060
	sound_header 1 0 0x48 0 gUnk_08A11894 sfx1DE_track0

sfx1DF_track0:: @ 08DE606C
	.incbin "baserom.gba", 0xDE606C, 0x0000010
sfx1DF:: @ 08DE607C
	sound_header 1 0 0x48 0 gUnk_08A118A0 sfx1DF_track0

sfx1E0_track0:: @ 08DE6088
	.incbin "baserom.gba", 0xDE6088, 0x0000010
sfx1E0:: @ 08DE6098
	sound_header 1 0 0x48 0 gUnk_08A118AC sfx1E0_track0

sfx1E1_track0:: @ 08DE60A4
	.incbin "baserom.gba", 0xDE60A4, 0x0000010
sfx1E1:: @ 08DE60B4
	sound_header 1 0 0x48 0 gUnk_08A118B8 sfx1E1_track0

sfx1E2_track0:: @ 08DE60C0
	.incbin "baserom.gba", 0xDE60C0, 0x0000010
sfx1E2:: @ 08DE60D0
	sound_header 1 0 0x48 0 gUnk_08A118C4 sfx1E2_track0

sfx1E3_track0:: @ 08DE60DC
	.incbin "baserom.gba", 0xDE60DC, 0x0000010
sfx1E3:: @ 08DE60EC
	sound_header 1 0 0x48 0 gUnk_08A118D0 sfx1E3_track0

sfx1E4_track0:: @ 08DE60F8
	.incbin "baserom.gba", 0xDE60F8, 0x0000010
sfx1E4:: @ 08DE6108
	sound_header 1 0 0x48 0 gUnk_08A118DC sfx1E4_track0

sfx1E5_track0:: @ 08DE6114
	.incbin "baserom.gba", 0xDE6114, 0x0000010
sfx1E5:: @ 08DE6124
	sound_header 1 0 0x48 0 gUnk_08A118E8 sfx1E5_track0

sfx1E6_track0:: @ 08DE6130
	.incbin "baserom.gba", 0xDE6130, 0x0000010
sfx1E6:: @ 08DE6140
	sound_header 1 0 0x48 0 gUnk_08A118F4 sfx1E6_track0

sfx1E7_track0:: @ 08DE614C
	.incbin "baserom.gba", 0xDE614C, 0x0000010
sfx1E7:: @ 08DE615C
	sound_header 1 0 0x48 0 gUnk_08A11900 sfx1E7_track0

sfx1E8_track0:: @ 08DE6168
	.incbin "baserom.gba", 0xDE6168, 0x0000010
sfx1E8:: @ 08DE6178
	sound_header 1 0 0x48 0 gUnk_08A1190C sfx1E8_track0

sfx1E9_track0:: @ 08DE6184
	.incbin "baserom.gba", 0xDE6184, 0x0000010
sfx1E9:: @ 08DE6194
	sound_header 1 0 0x48 0 gUnk_08A11918 sfx1E9_track0

sfx1EA_track0:: @ 08DE61A0
	.incbin "baserom.gba", 0xDE61A0, 0x0000010
sfx1EA:: @ 08DE61B0
	sound_header 1 0 0x48 0 gUnk_08A11924 sfx1EA_track0

sfx1EB_track0:: @ 08DE61BC
	.incbin "baserom.gba", 0xDE61BC, 0x0000010
sfx1EB:: @ 08DE61CC
	sound_header 1 0 0x48 0 gUnk_08A11930 sfx1EB_track0

sfx1EC_track0:: @ 08DE61D8
	.incbin "baserom.gba", 0xDE61D8, 0x0000010
sfx1EC:: @ 08DE61E8
	sound_header 1 0 0x48 0 gUnk_08A1193C sfx1EC_track0

sfx1ED_track0:: @ 08DE61F4
	.incbin "baserom.gba", 0xDE61F4, 0x0000010
sfx1ED:: @ 08DE6204
	sound_header 1 0 0x48 0 gUnk_08A11948 sfx1ED_track0

sfx1EE_track0:: @ 08DE6210
	.incbin "baserom.gba", 0xDE6210, 0x0000010
sfx1EE:: @ 08DE6220
	sound_header 1 0 0x48 0 gUnk_08A11954 sfx1EE_track0

sfx1EF_track0:: @ 08DE622C
	.incbin "baserom.gba", 0xDE622C, 0x0000010
sfx1EF:: @ 08DE623C
	sound_header 1 0 0x48 0 gUnk_08A11960 sfx1EF_track0

sfx1F0_track0:: @ 08DE6248
	.incbin "baserom.gba", 0xDE6248, 0x0000010
sfx1F0:: @ 08DE6258
	sound_header 1 0 0x48 0 gUnk_08A1196C sfx1F0_track0

sfx1F1_track0:: @ 08DE6264
	.incbin "baserom.gba", 0xDE6264, 0x0000010
sfx1F1:: @ 08DE6274
	sound_header 1 0 0x48 0 gUnk_08A11978 sfx1F1_track0

sfx1F2_track0:: @ 08DE6280
	.incbin "baserom.gba", 0xDE6280, 0x0000010
sfx1F2:: @ 08DE6290
	sound_header 1 0 0x48 0 gUnk_08A11984 sfx1F2_track0

sfx1F3_track0:: @ 08DE629C
	.incbin "baserom.gba", 0xDE629C, 0x0000010
sfx1F3:: @ 08DE62AC
	sound_header 1 0 0x48 0 gUnk_08A11990 sfx1F3_track0

sfx1F4_track0:: @ 08DE62B8
	.incbin "baserom.gba", 0xDE62B8, 0x0000010
sfx1F4:: @ 08DE62C8
	sound_header 1 0 0x48 0 gUnk_08A1199C sfx1F4_track0

sfx1F5_track0:: @ 08DE62D4
	.incbin "baserom.gba", 0xDE62D4, 0x0000010
sfx1F5:: @ 08DE62E4
	sound_header 1 0 0x48 0 gUnk_08A119A8 sfx1F5_track0

sfx1F6_track0:: @ 08DE62F0
	.incbin "baserom.gba", 0xDE62F0, 0x0000010
sfx1F6:: @ 08DE6300
	sound_header 1 0 0x48 0 gUnk_08A119B4 sfx1F6_track0

sfx1F7_track0:: @ 08DE630C
	.incbin "baserom.gba", 0xDE630C, 0x0000010
sfx1F7:: @ 08DE631C
	sound_header 1 0 0x48 0 gUnk_08A119C0 sfx1F7_track0

sfx1F8_track0:: @ 08DE6328
	.incbin "baserom.gba", 0xDE6328, 0x0000010
sfx1F8:: @ 08DE6338
	sound_header 1 0 0x48 0 gUnk_08A119CC sfx1F8_track0

sfx1F9_track0:: @ 08DE6344
	.incbin "baserom.gba", 0xDE6344, 0x0000010
sfx1F9:: @ 08DE6354
	sound_header 1 0 0x48 0 gUnk_08A119D8 sfx1F9_track0

sfx1FA_track0:: @ 08DE6360
	.incbin "baserom.gba", 0xDE6360, 0x0000010
sfx1FA:: @ 08DE6370
	sound_header 1 0 0x48 0 gUnk_08A119E4 sfx1FA_track0

sfx1FB_track0:: @ 08DE637C
	.incbin "baserom.gba", 0xDE637C, 0x0000010
sfx1FB:: @ 08DE638C
	sound_header 1 0 0x48 0 gUnk_08A119F0 sfx1FB_track0

sfx1FC_track0:: @ 08DE6398
	.incbin "baserom.gba", 0xDE6398, 0x0000010
sfx1FC:: @ 08DE63A8
	sound_header 1 0 0x48 0 gUnk_08A119FC sfx1FC_track0

sfx1FD_track0:: @ 08DE63B4
	.incbin "baserom.gba", 0xDE63B4, 0x0000010
sfx1FD:: @ 08DE63C4
	sound_header 1 0 0x48 0 gUnk_08A11A08 sfx1FD_track0

sfx1FE_track0:: @ 08DE63D0
	.incbin "baserom.gba", 0xDE63D0, 0x0000010
sfx1FE:: @ 08DE63E0
	sound_header 1 0 0x48 0 gUnk_08A11A14 sfx1FE_track0

sfx1FF_track0:: @ 08DE63EC
	.incbin "baserom.gba", 0xDE63EC, 0x0000010
sfx1FF:: @ 08DE63FC
	sound_header 1 0 0x48 0 gUnk_08A11A20 sfx1FF_track0

sfx200_track0:: @ 08DE6408
	.incbin "baserom.gba", 0xDE6408, 0x0000010
sfx200:: @ 08DE6418
	sound_header 1 0 0x48 0 gUnk_08A11A2C sfx200_track0

sfx201_track0:: @ 08DE6424
	.incbin "baserom.gba", 0xDE6424, 0x0000010
sfx201:: @ 08DE6434
	sound_header 1 0 0x48 0 gUnk_08A11A38 sfx201_track0

sfx202_track0:: @ 08DE6440
	.incbin "baserom.gba", 0xDE6440, 0x0000010
sfx202:: @ 08DE6450
	sound_header 1 0 0x48 0 gUnk_08A11A44 sfx202_track0

sfx203_track0:: @ 08DE645C
	.incbin "baserom.gba", 0xDE645C, 0x0000010
sfx203:: @ 08DE646C
	sound_header 1 0 0x48 0 gUnk_08A11A50 sfx203_track0

sfx204_track0:: @ 08DE6478
	.incbin "baserom.gba", 0xDE6478, 0x0000010
sfx204:: @ 08DE6488
	sound_header 1 0 0x48 0 gUnk_08A11A5C sfx204_track0

sfx205_track0:: @ 08DE6494
	.incbin "baserom.gba", 0xDE6494, 0x0000010
sfx205:: @ 08DE64A4
	sound_header 1 0 0x48 0 gUnk_08A11A68 sfx205_track0

sfx206_track0:: @ 08DE64B0
	.incbin "baserom.gba", 0xDE64B0, 0x0000010
sfx206:: @ 08DE64C0
	sound_header 1 0 0x48 0 gUnk_08A11A74 sfx206_track0

sfx207_track0:: @ 08DE64CC
	.incbin "baserom.gba", 0xDE64CC, 0x0000010
sfx207:: @ 08DE64DC
	sound_header 1 0 0x48 0 gUnk_08A11A80 sfx207_track0

sfx208_track0:: @ 08DE64E8
	.incbin "baserom.gba", 0xDE64E8, 0x0000010
sfx208:: @ 08DE64F8
	sound_header 1 0 0x48 0 gUnk_08A11A8C sfx208_track0

sfx209_track0:: @ 08DE6504
	.incbin "baserom.gba", 0xDE6504, 0x0000010
sfx209:: @ 08DE6514
	sound_header 1 0 0x48 0 gUnk_08A11A98 sfx209_track0

sfx20A_track0:: @ 08DE6520
	.incbin "baserom.gba", 0xDE6520, 0x0000010
sfx20A:: @ 08DE6530
	sound_header 1 0 0x48 0 gUnk_08A11AA4 sfx20A_track0

sfx20B_track0:: @ 08DE653C
	.incbin "baserom.gba", 0xDE653C, 0x0000010
sfx20B:: @ 08DE654C
	sound_header 1 0 0x48 0 gUnk_08A11AB0 sfx20B_track0

sfx20C_track0:: @ 08DE6558
	.incbin "baserom.gba", 0xDE6558, 0x0000010
sfx20C:: @ 08DE6568
	sound_header 1 0 0x48 0 gUnk_08A11ABC sfx20C_track0

sfx20D_track0:: @ 08DE6574
	.incbin "baserom.gba", 0xDE6574, 0x0000010
sfx20D:: @ 08DE6584
	sound_header 1 0 0x48 0 gUnk_08A11AC8 sfx20D_track0

sfx20E_track0:: @ 08DE6590
	.incbin "baserom.gba", 0xDE6590, 0x0000010
sfx20E:: @ 08DE65A0
	sound_header 1 0 0x48 0 gUnk_08A11AD4 sfx20E_track0

sfx20F_track0:: @ 08DE65AC
	.incbin "baserom.gba", 0xDE65AC, 0x0000010
sfx20F:: @ 08DE65BC
	sound_header 1 0 0x48 0 gUnk_08A11AE0 sfx20F_track0

sfx210_track0:: @ 08DE65C8
	.incbin "baserom.gba", 0xDE65C8, 0x0000014
sfx210:: @ 08DE65DC
	sound_header 1 0 0x48 0 gUnk_08A11AEC sfx210_track0

sfx211_track0:: @ 08DE65E8
	.incbin "baserom.gba", 0xDE65E8, 0x0000010
sfx211:: @ 08DE65F8
	sound_header 1 0 0x48 0 gUnk_08A11AF8 sfx211_track0

sfx212_track0:: @ 08DE6604
	.incbin "baserom.gba", 0xDE6604, 0x0000010
sfx212:: @ 08DE6614
	sound_header 1 0 0x48 0 gUnk_08A11B04 sfx212_track0

sfx213_track0:: @ 08DE6620
	.incbin "baserom.gba", 0xDE6620, 0x0000010
sfx213:: @ 08DE6630
	sound_header 1 0 0x48 0 gUnk_08A11B10 sfx213_track0

sfx214_track0:: @ 08DE663C
	.incbin "baserom.gba", 0xDE663C, 0x0000014
sfx214:: @ 08DE6650
	sound_header 1 0 0x48 0 gUnk_08A11B1C sfx214_track0

sfx215_track0:: @ 08DE665C
	.incbin "baserom.gba", 0xDE665C, 0x0000018
sfx215:: @ 08DE6674
	sound_header 1 0 0xc0 0 gUnk_08A11B28 sfx215_track0

sfx216_track0:: @ 08DE6680
	.incbin "baserom.gba", 0xDE6680, 0x000007D
sfx216_track1:: @ 08DE66FD
	.incbin "baserom.gba", 0xDE66FD, 0x000005F
sfx216_track2:: @ 08DE675C
	.incbin "baserom.gba", 0xDE675C, 0x000003B
sfx216_track3:: @ 08DE6797
	.incbin "baserom.gba", 0xDE6797, 0x0000789
sfx216_track4:: @ 08DE6F20
	.incbin "baserom.gba", 0xDE6F20, 0x0000189
sfx216_track5:: @ 08DE70A9
	.incbin "baserom.gba", 0xDE70A9, 0x0000189
sfx216_track6:: @ 08DE7232
	.incbin "baserom.gba", 0xDE7232, 0x0000189
sfx216_track7:: @ 08DE73BB
	.incbin "baserom.gba", 0xDE73BB, 0x0000189
sfx216:: @ 08DE7544
	sound_header 8 0 0x20 0 gUnk_08A0F890 sfx216_track0 sfx216_track1 sfx216_track2 sfx216_track3 sfx216_track4 sfx216_track5 sfx216_track6 sfx216_track7

sfx217_track0:: @ 08DE756C
	.incbin "baserom.gba", 0xDE756C, 0x000002C
sfx217_track1:: @ 08DE7598
	.incbin "baserom.gba", 0xDE7598, 0x000002A
sfx217_track2:: @ 08DE75C2
	.incbin "baserom.gba", 0xDE75C2, 0x0000026
sfx217_track3:: @ 08DE75E8
	.incbin "baserom.gba", 0xDE75E8, 0x0000029
sfx217_track4:: @ 08DE7611
	.incbin "baserom.gba", 0xDE7611, 0x000002A
sfx217_track5:: @ 08DE763B
	.incbin "baserom.gba", 0xDE763B, 0x000002A
sfx217_track6:: @ 08DE7665
	.incbin "baserom.gba", 0xDE7665, 0x0000033
sfx217_track7:: @ 08DE7698
	.incbin "baserom.gba", 0xDE7698, 0x0000031
sfx217_track8:: @ 08DE76C9
	.incbin "baserom.gba", 0xDE76C9, 0x0000129
sfx217_track9:: @ 08DE77F2
	.incbin "baserom.gba", 0xDE77F2, 0x0000129
sfx217_trackA:: @ 08DE791B
	.incbin "baserom.gba", 0xDE791B, 0x0000129
sfx217_trackB:: @ 08DE7A44
	.incbin "baserom.gba", 0xDE7A44, 0x000012C
sfx217:: @ 08DE7B70
	sound_header 0xc 0 0x20 0 gUnk_08A0F890 sfx217_track0 sfx217_track1 sfx217_track2 sfx217_track3 sfx217_track4 sfx217_track5 sfx217_track6 sfx217_track7 sfx217_track8 sfx217_track9 sfx217_trackA sfx217_trackB

sfx218_track0:: @ 08DE7BA8
	.incbin "baserom.gba", 0xDE7BA8, 0x0000010
sfx218:: @ 08DE7BB8
	sound_header 1 0 0x40 0 gUnk_08A11B34 sfx218_track0

sfx219_track0:: @ 08DE7BC4
	.incbin "baserom.gba", 0xDE7BC4, 0x0000010
sfx219:: @ 08DE7BD4
	sound_header 1 0 0x40 0 gUnk_08A11B40 sfx219_track0

sfx21A_track0:: @ 08DE7BE0
	.incbin "baserom.gba", 0xDE7BE0, 0x000001C
sfx21A:: @ 08DE7BFC
	sound_header 1 0 0x40 0 gUnk_08A11B4C sfx21A_track0

sfx21B_track0:: @ 08DE7C08
	.incbin "baserom.gba", 0xDE7C08, 0x0000020
sfx21B:: @ 08DE7C28
	sound_header 1 0 0x40 0 gUnk_08A11B58 sfx21B_track0

sfx21C_track0:: @ 08DE7C34
	.incbin "baserom.gba", 0xDE7C34, 0x0000044
sfx21C:: @ 08DE7C78
	sound_header 1 0 0x40 0 gUnk_08A11B64 sfx21C_track0

sfx21D_track0:: @ 08DE7C84
	.incbin "baserom.gba", 0xDE7C84, 0x0000010
sfx21D:: @ 08DE7C94
	sound_header 1 0 0x40 0 gUnk_08A11B70 sfx21D_track0

sfx21E_track0:: @ 08DE7CA0
	.incbin "baserom.gba", 0xDE7CA0, 0x0000014
sfx21E:: @ 08DE7CB4
	sound_header 1 0 0x40 0 gUnk_08A11B7C sfx21E_track0

sfx21F_track0:: @ 08DE7CC0
	.incbin "baserom.gba", 0xDE7CC0, 0x0000030
sfx21F:: @ 08DE7CF0
	sound_header 1 0 0x40 0 gUnk_08A11B88 sfx21F_track0

sfx220_track0:: @ 08DE7CFC
	.incbin "baserom.gba", 0xDE7CFC, 0x0000010
sfx220:: @ 08DE7D0C
	sound_header 1 0 0x48 0 gUnk_08A11B94 sfx220_track0

sfx221_track0:: @ 08DE7D18
	.incbin "baserom.gba", 0xDE7D18, 0x0000010
sfx221:: @ 08DE7D28
	sound_header 1 0 0x48 0 gUnk_08A11BA0 sfx221_track0
