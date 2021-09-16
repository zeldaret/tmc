.include "asm/macros/sounds.inc"
.section .rodata


.include "sounds/sfxNone.s"
.include "sounds/bgmCastleTournament.s"
.include "sounds/bgmVaatiMotif.s"
.include "sounds/bgmTitleScreen.s"

.if 1
bgmCastleMotif_track0:: @ 08DCCA18
	.incbin "sounds/bgmCastleMotif_track0.bin"
bgmCastleMotif_track1:: @ 08DCCA56
	.incbin "sounds/bgmCastleMotif_track1.bin"
bgmCastleMotif_track2:: @ 08DCCA8A
	.incbin "sounds/bgmCastleMotif_track2.bin"
bgmCastleMotif_track3:: @ 08DCCAC2
	.incbin "sounds/bgmCastleMotif_track3.bin"
bgmCastleMotif_track4:: @ 08DCCAFA
	.incbin "sounds/bgmCastleMotif_track4.bin"
bgmCastleMotif:: @ 08DCCB3C
	sound_header 5 0 0 0xa8 voicegroup004 bgmCastleMotif_track0 bgmCastleMotif_track1 bgmCastleMotif_track2 bgmCastleMotif_track3 bgmCastleMotif_track4
.else
.include "sounds/bgmCastleMotif.s"
.endif

.include "sounds/bgmElementGet.s"
.include "sounds/bgmFairyFountain.s"
.include "sounds/bgmFileSelect.s"
.include "sounds/bgmIntroCutscene.s"
.include "sounds/bgmCredits.s"
.include "sounds/bgmGameover.s"
.include "sounds/bgmSavingZelda.s"
.include "sounds/bgmLttpTitle.s"
.include "sounds/bgmVaatiTheme.s"

.if 1
bgmEzloTheme_track0:: @ 08DD0268
	.incbin "sounds/bgmEzloTheme_track0.bin"
gUnk_08DD0273:: @ 08DD0273
	.incbin "sounds/gUnk_08DD0273.bin"
	.4byte gUnk_08DD0273
	.incbin "sounds/gUnk_08DD0273_1.bin"
bgmEzloTheme_track1:: @ 08DD02FF
	.incbin "sounds/bgmEzloTheme_track1.bin"
gUnk_08DD0306:: @ 08DD0306
	.incbin "sounds/gUnk_08DD0306.bin"
gUnk_08DD0324:: @ 08DD0324
	.incbin "sounds/gUnk_08DD0324.bin"
	.4byte gUnk_08DD0324
	.incbin "sounds/gUnk_08DD0324_1.bin"
gUnk_08DD0366:: @ 08DD0366
	.incbin "sounds/gUnk_08DD0366.bin"
	.4byte gUnk_08DD0366
	.incbin "sounds/gUnk_08DD0366_1.bin"
	.4byte gUnk_08DD0366
	.incbin "sounds/gUnk_08DD0366_2.bin"
	.4byte gUnk_08DD0306
	.incbin "sounds/gUnk_08DD0366_3.bin"
bgmEzloTheme_track2:: @ 08DD03AB
	.incbin "sounds/bgmEzloTheme_track2.bin"
gUnk_08DD03B2:: @ 08DD03B2
	.incbin "sounds/gUnk_08DD03B2.bin"
	.4byte gUnk_08DD03B2
	.incbin "sounds/gUnk_08DD03B2_1.bin"
bgmEzloTheme_track3:: @ 08DD046F
	.incbin "sounds/bgmEzloTheme_track3.bin"
gUnk_08DD0479:: @ 08DD0479
	.incbin "sounds/gUnk_08DD0479.bin"
	.4byte gUnk_08DD0479
	.incbin "sounds/gUnk_08DD0479_1.bin"
bgmEzloTheme_track4:: @ 08DD0511
	.incbin "sounds/bgmEzloTheme_track4.bin"
gUnk_08DD0518:: @ 08DD0518
	.incbin "sounds/gUnk_08DD0518.bin"
gUnk_08DD051F:: @ 08DD051F
	.incbin "sounds/gUnk_08DD051F.bin"
	.4byte gUnk_08DD051F
	.incbin "sounds/gUnk_08DD051F_1.bin"
gUnk_08DD0534:: @ 08DD0534
	.incbin "sounds/gUnk_08DD0534.bin"
	.4byte gUnk_08DD0534
	.incbin "sounds/gUnk_08DD0534_1.bin"
	.4byte gUnk_08DD0534
	.incbin "sounds/gUnk_08DD0534_2.bin"
	.4byte gUnk_08DD0518
	.incbin "sounds/gUnk_08DD0534_3.bin"
bgmEzloTheme_track5:: @ 08DD0571
	.incbin "sounds/bgmEzloTheme_track5.bin"
gUnk_08DD057B:: @ 08DD057B
	.incbin "sounds/gUnk_08DD057B.bin"
gUnk_08DD05CA:: @ 08DD05CA
	.incbin "sounds/gUnk_08DD05CA.bin"
	.4byte gUnk_08DD05CA
	.incbin "sounds/gUnk_08DD05CA_1.bin"
	.4byte gUnk_08DD057B
	.incbin "sounds/gUnk_08DD05CA_2.bin"
bgmEzloTheme_track6:: @ 08DD060A
	.incbin "sounds/bgmEzloTheme_track6.bin"
gUnk_08DD0612:: @ 08DD0612
	.incbin "sounds/gUnk_08DD0612.bin"
gUnk_08DD062B:: @ 08DD062B
	.incbin "sounds/gUnk_08DD062B.bin"
gUnk_08DD0649:: @ 08DD0649
	.incbin "sounds/gUnk_08DD0649.bin"
	.4byte gUnk_08DD0649
	.incbin "sounds/gUnk_08DD0649_1.bin"
	.4byte gUnk_08DD062B
	.incbin "sounds/gUnk_08DD0649_2.bin"
	.4byte gUnk_08DD0649
	.incbin "sounds/gUnk_08DD0649_3.bin"
	.4byte gUnk_08DD0612
	.incbin "sounds/gUnk_08DD0649_4.bin"
bgmEzloTheme:: @ 08DD0690
	sound_header 7 0 0 0x9e voicegroup013 bgmEzloTheme_track0 bgmEzloTheme_track1 bgmEzloTheme_track2 bgmEzloTheme_track3 bgmEzloTheme_track4 bgmEzloTheme_track5 bgmEzloTheme_track6
.else
.include "sounds/bgmEzloTheme.s"
.endif

.include "sounds/bgmStory.s"
.include "sounds/bgmFestivalApproach.s"
.include "sounds/bgmBeatVaati.s"
.include "sounds/bgmBeanstalk.s"
.include "sounds/bgmHouse.s"
.include "sounds/bgmCuccoMinigame.s"
.include "sounds/bgmSyrupTheme.s"
.include "sounds/bgmDungeon.s"
.include "sounds/bgmElementTheme.s"
.include "sounds/bgmHyruleField.s"
.include "sounds/bgmHyruleCastle.s"
.include "sounds/bgmHyruleCastleNointro.s"
.include "sounds/bgmMinishVillage.s"
.include "sounds/bgmMinishWoods.s"

bgmCrenelStorm_track0:: @ 08DD410C
	.incbin "sounds/bgmCrenelStorm_track0.bin"
gUnk_08DD4121:: @ 08DD4121
	.incbin "sounds/gUnk_08DD4121.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4121_1.bin"
	.4byte gUnk_08DD4121
gUnk_08DD4138:: @ 08DD4138
	.incbin "sounds/gUnk_08DD4138.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4138_1.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4138_2.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4138_3.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4138_4.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4138_5.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4138_6.bin"
	.4byte gUnk_08DD4121
gUnk_08DD4167:: @ 08DD4167
	.incbin "sounds/gUnk_08DD4167.bin"
	.4byte gUnk_08DD4167
	.incbin "sounds/gUnk_08DD4167_1.bin"
	.4byte gUnk_08DD4167
	.incbin "sounds/gUnk_08DD4167_2.bin"
	.4byte gUnk_08DD4167
	.incbin "sounds/gUnk_08DD4167_3.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4167_4.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4167_5.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4167_6.bin"
	.4byte gUnk_08DD4121
	.incbin "sounds/gUnk_08DD4167_7.bin"
gUnk_08DD41B7:: @ 08DD41B7
	.incbin "sounds/gUnk_08DD41B7.bin"
gUnk_08DD41D6:: @ 08DD41D6
	.incbin "sounds/gUnk_08DD41D6.bin"
	.4byte gUnk_08DD41B7
	.incbin "sounds/gUnk_08DD41D6_1.bin"
	.4byte gUnk_08DD41D6
	.incbin "sounds/gUnk_08DD41D6_2.bin"
	.4byte gUnk_08DD41B7
	.incbin "sounds/gUnk_08DD41D6_3.bin"
	.4byte gUnk_08DD41D6
	.incbin "sounds/gUnk_08DD41D6_4.bin"
	.4byte gUnk_08DD41B7
	.incbin "sounds/gUnk_08DD41D6_5.bin"
	.4byte gUnk_08DD4138
	.incbin "sounds/gUnk_08DD41D6_6.bin"
bgmCrenelStorm_track1:: @ 08DD4216
	.incbin "sounds/bgmCrenelStorm_track1.bin"
gUnk_08DD4234:: @ 08DD4234
	.incbin "sounds/gUnk_08DD4234.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4234_1.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4234_2.bin"
gUnk_08DD4257:: @ 08DD4257
	.incbin "sounds/gUnk_08DD4257.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4257_1.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4257_2.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4257_3.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4257_4.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4257_5.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4257_6.bin"
	.4byte gUnk_08DD4234
gUnk_08DD4290:: @ 08DD4290
	.incbin "sounds/gUnk_08DD4290.bin"
	.4byte gUnk_08DD4290
	.incbin "sounds/gUnk_08DD4290_1.bin"
	.4byte gUnk_08DD4290
	.incbin "sounds/gUnk_08DD4290_2.bin"
	.4byte gUnk_08DD4290
	.incbin "sounds/gUnk_08DD4290_3.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4290_4.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4290_5.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4290_6.bin"
	.4byte gUnk_08DD4234
	.incbin "sounds/gUnk_08DD4290_7.bin"
	.4byte gUnk_08DD4257
	.incbin "sounds/gUnk_08DD4290_8.bin"
bgmCrenelStorm_track2:: @ 08DD42DA
	.incbin "sounds/bgmCrenelStorm_track2.bin"
gUnk_08DD42EA:: @ 08DD42EA
	.incbin "sounds/gUnk_08DD42EA.bin"
	.4byte gUnk_08DD42EA
	.incbin "sounds/gUnk_08DD42EA_1.bin"
bgmCrenelStorm_track3:: @ 08DD4304
	.incbin "sounds/bgmCrenelStorm_track3.bin"
gUnk_08DD430E:: @ 08DD430E
	.incbin "sounds/gUnk_08DD430E.bin"
	.4byte gUnk_08DD430E
	.incbin "sounds/gUnk_08DD430E_1.bin"
bgmCrenelStorm_track4:: @ 08DD4358
	.incbin "sounds/bgmCrenelStorm_track4.bin"
gUnk_08DD4360:: @ 08DD4360
	.incbin "sounds/gUnk_08DD4360.bin"
	.4byte gUnk_08DD4360
	.incbin "sounds/gUnk_08DD4360_1.bin"
bgmCrenelStorm_track5:: @ 08DD43A7
	.incbin "sounds/bgmCrenelStorm_track5.bin"
gUnk_08DD43AE:: @ 08DD43AE
	.incbin "sounds/gUnk_08DD43AE.bin"
	.4byte gUnk_08DD43AE
	.incbin "sounds/gUnk_08DD43AE_1.bin"
bgmCrenelStorm_track6:: @ 08DD4424
	.incbin "sounds/bgmCrenelStorm_track6.bin"
gUnk_08DD448D:: @ 08DD448D
	.incbin "sounds/gUnk_08DD448D.bin"
gUnk_08DD44EF:: @ 08DD44EF
	.incbin "sounds/gUnk_08DD44EF.bin"
gUnk_08DD4550:: @ 08DD4550
	.incbin "sounds/gUnk_08DD4550.bin"
gUnk_08DD45B1:: @ 08DD45B1
	.incbin "sounds/gUnk_08DD45B1.bin"
gUnk_08DD4612:: @ 08DD4612
	.incbin "sounds/gUnk_08DD4612.bin"
	.4byte gUnk_08DD44EF
	.incbin "sounds/gUnk_08DD4612_1.bin"
	.4byte gUnk_08DD4550
	.incbin "sounds/gUnk_08DD4612_2.bin"
	.4byte gUnk_08DD45B1
	.incbin "sounds/gUnk_08DD4612_3.bin"
gUnk_08DD46E2:: @ 08DD46E2
	.incbin "sounds/gUnk_08DD46E2.bin"
	.4byte gUnk_08DD46E2
	.incbin "sounds/gUnk_08DD46E2_1.bin"
	.4byte gUnk_08DD4612
	.incbin "sounds/gUnk_08DD46E2_2.bin"
	.4byte gUnk_08DD44EF
	.incbin "sounds/gUnk_08DD46E2_3.bin"
	.4byte gUnk_08DD4550
	.incbin "sounds/gUnk_08DD46E2_4.bin"
	.4byte gUnk_08DD45B1
gUnk_08DD47BC:: @ 08DD47BC
	.incbin "sounds/gUnk_08DD47BC.bin"
gUnk_08DD47DA:: @ 08DD47DA
	.incbin "sounds/gUnk_08DD47DA.bin"
gUnk_08DD47FC:: @ 08DD47FC
	.incbin "sounds/gUnk_08DD47FC.bin"
gUnk_08DD481A:: @ 08DD481A
	.incbin "sounds/gUnk_08DD481A.bin"
	.4byte gUnk_08DD47BC
	.incbin "sounds/gUnk_08DD481A_1.bin"
	.4byte gUnk_08DD47DA
	.incbin "sounds/gUnk_08DD481A_2.bin"
	.4byte gUnk_08DD47FC
	.incbin "sounds/gUnk_08DD481A_3.bin"
	.4byte gUnk_08DD481A
	.incbin "sounds/gUnk_08DD481A_4.bin"
	.4byte gUnk_08DD448D
	.incbin "sounds/gUnk_08DD481A_5.bin"
bgmCrenelStorm:: @ 08DD4858
	sound_header 7 0 0 0xb2 voicegroup027 bgmCrenelStorm_track0 bgmCrenelStorm_track1 bgmCrenelStorm_track2 bgmCrenelStorm_track3 bgmCrenelStorm_track4 bgmCrenelStorm_track5 bgmCrenelStorm_track6

bgmCastorWilds_track0:: @ 08DD487C
	.incbin "sounds/bgmCastorWilds_track0.bin"
gUnk_08DD488F:: @ 08DD488F
	.incbin "sounds/gUnk_08DD488F.bin"
gUnk_08DD4896:: @ 08DD4896
	.incbin "sounds/gUnk_08DD4896.bin"
	.4byte gUnk_08DD488F
	.incbin "sounds/gUnk_08DD4896_1.bin"
	.4byte gUnk_08DD488F
	.incbin "sounds/gUnk_08DD4896_2.bin"
	.4byte gUnk_08DD488F
	.incbin "sounds/gUnk_08DD4896_3.bin"
	.4byte gUnk_08DD488F
	.incbin "sounds/gUnk_08DD4896_4.bin"
	.4byte gUnk_08DD488F
	.incbin "sounds/gUnk_08DD4896_5.bin"
	.4byte gUnk_08DD488F
	.incbin "sounds/gUnk_08DD4896_6.bin"
	.4byte gUnk_08DD488F
	.incbin "sounds/gUnk_08DD4896_7.bin"
	.4byte gUnk_08DD4896
	.incbin "sounds/gUnk_08DD4896_8.bin"
bgmCastorWilds_track1:: @ 08DD48F8
	.incbin "sounds/bgmCastorWilds_track1.bin"
gUnk_08DD490B:: @ 08DD490B
	.incbin "sounds/gUnk_08DD490B.bin"
gUnk_08DD490F:: @ 08DD490F
	.incbin "sounds/gUnk_08DD490F.bin"
	.4byte gUnk_08DD490F
	.incbin "sounds/gUnk_08DD490F_1.bin"
	.4byte gUnk_08DD490F
	.incbin "sounds/gUnk_08DD490F_2.bin"
	.4byte gUnk_08DD490F
	.incbin "sounds/gUnk_08DD490F_3.bin"
	.4byte gUnk_08DD490F
	.incbin "sounds/gUnk_08DD490F_4.bin"
	.4byte gUnk_08DD490F
	.incbin "sounds/gUnk_08DD490F_5.bin"
	.4byte gUnk_08DD490F
	.incbin "sounds/gUnk_08DD490F_6.bin"
	.4byte gUnk_08DD490F
	.incbin "sounds/gUnk_08DD490F_7.bin"
	.4byte gUnk_08DD490B
	.incbin "sounds/gUnk_08DD490F_8.bin"
bgmCastorWilds_track2:: @ 08DD4943
	.incbin "sounds/bgmCastorWilds_track2.bin"
gUnk_08DD4990:: @ 08DD4990
	.incbin "sounds/gUnk_08DD4990.bin"
	.4byte gUnk_08DD4990
	.incbin "sounds/gUnk_08DD4990_1.bin"
bgmCastorWilds_track3:: @ 08DD49CB
	.incbin "sounds/bgmCastorWilds_track3.bin"
gUnk_08DD49D6:: @ 08DD49D6
	.incbin "sounds/gUnk_08DD49D6.bin"
gUnk_08DD49E7:: @ 08DD49E7
	.incbin "sounds/gUnk_08DD49E7.bin"
gUnk_08DD49EE:: @ 08DD49EE
	.incbin "sounds/gUnk_08DD49EE.bin"
gUnk_08DD4A02:: @ 08DD4A02
	.incbin "sounds/gUnk_08DD4A02.bin"
	.4byte gUnk_08DD49E7
	.incbin "sounds/gUnk_08DD4A02_1.bin"
	.4byte gUnk_08DD49EE
	.incbin "sounds/gUnk_08DD4A02_2.bin"
	.4byte gUnk_08DD4A02
	.incbin "sounds/gUnk_08DD4A02_3.bin"
	.4byte gUnk_08DD49D6
	.incbin "sounds/gUnk_08DD4A02_4.bin"
bgmCastorWilds_track4:: @ 08DD4A7F
	.incbin "sounds/bgmCastorWilds_track4.bin"
gUnk_08DD4A8D:: @ 08DD4A8D
	.incbin "sounds/gUnk_08DD4A8D.bin"
gUnk_08DD4A9B:: @ 08DD4A9B
	.incbin "sounds/gUnk_08DD4A9B.bin"
gUnk_08DD4AA7:: @ 08DD4AA7
	.incbin "sounds/gUnk_08DD4AA7.bin"
gUnk_08DD4AB9:: @ 08DD4AB9
	.incbin "sounds/gUnk_08DD4AB9.bin"
	.4byte gUnk_08DD4A9B
	.incbin "sounds/gUnk_08DD4AB9_1.bin"
	.4byte gUnk_08DD4AA7
	.incbin "sounds/gUnk_08DD4AB9_2.bin"
	.4byte gUnk_08DD4AB9
	.incbin "sounds/gUnk_08DD4AB9_3.bin"
	.4byte gUnk_08DD4A8D
	.incbin "sounds/gUnk_08DD4AB9_4.bin"
bgmCastorWilds:: @ 08DD4B44
	sound_header 5 0 0 0x9e voicegroup028 bgmCastorWilds_track0 bgmCastorWilds_track1 bgmCastorWilds_track2 bgmCastorWilds_track3 bgmCastorWilds_track4

.include "sounds/bgmHyruleTown.s"

bgmRoyalValley_track0:: @ 08DD5320
	.incbin "sounds/bgmRoyalValley_track0.bin"
gUnk_08DD5327:: @ 08DD5327
	.incbin "sounds/gUnk_08DD5327.bin"
gUnk_08DD5366:: @ 08DD5366
	.incbin "sounds/gUnk_08DD5366.bin"
gUnk_08DD539D:: @ 08DD539D
	.incbin "sounds/gUnk_08DD539D.bin"
gUnk_08DD53CF:: @ 08DD53CF
	.incbin "sounds/gUnk_08DD53CF.bin"
	.4byte gUnk_08DD5366
	.incbin "sounds/gUnk_08DD53CF_1.bin"
	.4byte gUnk_08DD539D
	.incbin "sounds/gUnk_08DD53CF_2.bin"
	.4byte gUnk_08DD53CF
	.incbin "sounds/gUnk_08DD53CF_3.bin"
	.4byte gUnk_08DD5327
	.incbin "sounds/gUnk_08DD53CF_4.bin"
bgmRoyalValley_track1:: @ 08DD544B
	.incbin "sounds/bgmRoyalValley_track1.bin"
gUnk_08DD544E:: @ 08DD544E
	.incbin "sounds/gUnk_08DD544E.bin"
gUnk_08DD548B:: @ 08DD548B
	.incbin "sounds/gUnk_08DD548B.bin"
gUnk_08DD54BA:: @ 08DD54BA
	.incbin "sounds/gUnk_08DD54BA.bin"
gUnk_08DD54EA:: @ 08DD54EA
	.incbin "sounds/gUnk_08DD54EA.bin"
	.4byte gUnk_08DD548B
	.incbin "sounds/gUnk_08DD54EA_1.bin"
	.4byte gUnk_08DD54BA
	.incbin "sounds/gUnk_08DD54EA_2.bin"
	.4byte gUnk_08DD54EA
	.incbin "sounds/gUnk_08DD54EA_3.bin"
	.4byte gUnk_08DD544E
	.incbin "sounds/gUnk_08DD54EA_4.bin"
bgmRoyalValley_track2:: @ 08DD555C
	.incbin "sounds/bgmRoyalValley_track2.bin"
gUnk_08DD555F:: @ 08DD555F
	.incbin "sounds/gUnk_08DD555F.bin"
	.4byte gUnk_08DD555F
	.incbin "sounds/gUnk_08DD555F_1.bin"
bgmRoyalValley_track3:: @ 08DD5628
	.incbin "sounds/bgmRoyalValley_track3.bin"
gUnk_08DD562F:: @ 08DD562F
	.incbin "sounds/gUnk_08DD562F.bin"
	.4byte gUnk_08DD562F
	.incbin "sounds/gUnk_08DD562F_1.bin"
bgmRoyalValley_track4:: @ 08DD565E
	.incbin "sounds/bgmRoyalValley_track4.bin"
gUnk_08DD5665:: @ 08DD5665
	.incbin "sounds/gUnk_08DD5665.bin"
gUnk_08DD5667:: @ 08DD5667
	.incbin "sounds/gUnk_08DD5667.bin"
gUnk_08DD5689:: @ 08DD5689
	.incbin "sounds/gUnk_08DD5689.bin"
gUnk_08DD56A8:: @ 08DD56A8
	.incbin "sounds/gUnk_08DD56A8.bin"
	.4byte gUnk_08DD5689
	.incbin "sounds/gUnk_08DD56A8_1.bin"
	.4byte gUnk_08DD5667
	.incbin "sounds/gUnk_08DD56A8_2.bin"
	.4byte gUnk_08DD5689
	.incbin "sounds/gUnk_08DD56A8_3.bin"
	.4byte gUnk_08DD56A8
	.incbin "sounds/gUnk_08DD56A8_4.bin"
	.4byte gUnk_08DD5689
	.incbin "sounds/gUnk_08DD56A8_5.bin"
gUnk_08DD5705:: @ 08DD5705
	.incbin "sounds/gUnk_08DD5705.bin"
gUnk_08DD5719:: @ 08DD5719
	.incbin "sounds/gUnk_08DD5719.bin"
	.4byte gUnk_08DD5705
	.incbin "sounds/gUnk_08DD5719_1.bin"
	.4byte gUnk_08DD5719
	.incbin "sounds/gUnk_08DD5719_2.bin"
	.4byte gUnk_08DD5705
	.incbin "sounds/gUnk_08DD5719_3.bin"
	.4byte gUnk_08DD5719
	.incbin "sounds/gUnk_08DD5719_4.bin"
	.4byte gUnk_08DD5705
	.incbin "sounds/gUnk_08DD5719_5.bin"
	.4byte gUnk_08DD5719
	.incbin "sounds/gUnk_08DD5719_6.bin"
	.4byte gUnk_08DD5665
	.incbin "sounds/gUnk_08DD5719_7.bin"
bgmRoyalValley_track5:: @ 08DD5795
	.incbin "sounds/bgmRoyalValley_track5.bin"
gUnk_08DD579C:: @ 08DD579C
	.incbin "sounds/gUnk_08DD579C.bin"
	.4byte gUnk_08DD579C
	.incbin "sounds/gUnk_08DD579C_1.bin"
bgmRoyalValley_track6:: @ 08DD57F3
	.incbin "sounds/bgmRoyalValley_track6.bin"
gUnk_08DD5821:: @ 08DD5821
	.incbin "sounds/gUnk_08DD5821.bin"
gUnk_08DD583E:: @ 08DD583E
	.incbin "sounds/gUnk_08DD583E.bin"
	.4byte gUnk_08DD5821
	.incbin "sounds/gUnk_08DD583E_1.bin"
	.4byte gUnk_08DD5821
	.incbin "sounds/gUnk_08DD583E_2.bin"
	.4byte gUnk_08DD583E
	.incbin "sounds/gUnk_08DD583E_3.bin"
	.4byte gUnk_08DD5821
	.incbin "sounds/gUnk_08DD583E_4.bin"
bgmRoyalValley:: @ 08DD5894
	sound_header 7 0 0 0xb2 voicegroup030 bgmRoyalValley_track0 bgmRoyalValley_track1 bgmRoyalValley_track2 bgmRoyalValley_track3 bgmRoyalValley_track4 bgmRoyalValley_track5 bgmRoyalValley_track6

.include "sounds/bgmCloudTops.s"
.include "sounds/bgmDarkHyruleCastle.s"
.include "sounds/bgmSecretCastleEntrance.s"
.include "sounds/bgmDeepwoodShrine.s"
.include "sounds/bgmCaveOfFlames.s"
.include "sounds/bgmFortressOfWinds.s"
.include "sounds/bgmTempleOfDroplets.s"
.include "sounds/bgmPalaceOfWinds.s"
.include "sounds/bgmEzloStory.s"

bgmRoyalCrypt_track0:: @ 08DD9048
	.incbin "sounds/bgmRoyalCrypt_track0.bin"
gUnk_08DD9093:: @ 08DD9093
	.incbin "sounds/gUnk_08DD9093.bin"
	.4byte gUnk_08DD9093
	.incbin "sounds/gUnk_08DD9093_1.bin"
bgmRoyalCrypt_track1:: @ 08DD9132
	.incbin "sounds/bgmRoyalCrypt_track1.bin"
gUnk_08DD913C:: @ 08DD913C
	.incbin "sounds/gUnk_08DD913C.bin"
gUnk_08DD915E:: @ 08DD915E
	.incbin "sounds/gUnk_08DD915E.bin"
	.4byte gUnk_08DD915E
	.incbin "sounds/gUnk_08DD915E_1.bin"
	.4byte gUnk_08DD915E
	.incbin "sounds/gUnk_08DD915E_2.bin"
	.4byte gUnk_08DD913C
	.incbin "sounds/gUnk_08DD915E_3.bin"
bgmRoyalCrypt_track2:: @ 08DD91C9
	.incbin "sounds/bgmRoyalCrypt_track2.bin"
gUnk_08DD9225:: @ 08DD9225
	.incbin "sounds/gUnk_08DD9225.bin"
	.4byte gUnk_08DD9225
	.incbin "sounds/gUnk_08DD9225_1.bin"
bgmRoyalCrypt_track3:: @ 08DD9422
	.incbin "sounds/bgmRoyalCrypt_track3.bin"
gUnk_08DD9472:: @ 08DD9472
	.incbin "sounds/gUnk_08DD9472.bin"
	.4byte gUnk_08DD9472
	.incbin "sounds/gUnk_08DD9472_1.bin"
bgmRoyalCrypt_track4:: @ 08DD954E
	.incbin "sounds/bgmRoyalCrypt_track4.bin"
gUnk_08DD955A:: @ 08DD955A
	.incbin "sounds/gUnk_08DD955A.bin"
	.4byte gUnk_08DD955A
	.incbin "sounds/gUnk_08DD955A_1.bin"
bgmRoyalCrypt:: @ 08DD9604
	sound_header 5 0 0 0xbc voicegroup040 bgmRoyalCrypt_track0 bgmRoyalCrypt_track1 bgmRoyalCrypt_track2 bgmRoyalCrypt_track3 bgmRoyalCrypt_track4

.include "sounds/bgmElementalSanctuary.s"

bgmFightTheme_track0:: @ 08DD9AC8
	.incbin "sounds/bgmFightTheme_track0.bin"
gUnk_08DD9AE3:: @ 08DD9AE3
	.incbin "sounds/gUnk_08DD9AE3.bin"
gUnk_08DD9AF9:: @ 08DD9AF9
	.incbin "sounds/gUnk_08DD9AF9.bin"
gUnk_08DD9B0E:: @ 08DD9B0E
	.incbin "sounds/gUnk_08DD9B0E.bin"
	.4byte gUnk_08DD9B0E
	.incbin "sounds/gUnk_08DD9B0E_1.bin"
	.4byte gUnk_08DD9AF9
	.incbin "sounds/gUnk_08DD9B0E_2.bin"
	.4byte gUnk_08DD9AF9
	.incbin "sounds/gUnk_08DD9B0E_3.bin"
	.4byte gUnk_08DD9B0E
	.incbin "sounds/gUnk_08DD9B0E_4.bin"
	.4byte gUnk_08DD9B0E
	.incbin "sounds/gUnk_08DD9B0E_5.bin"
gUnk_08DD9B49:: @ 08DD9B49
	.incbin "sounds/gUnk_08DD9B49.bin"
gUnk_08DD9B66:: @ 08DD9B66
	.incbin "sounds/gUnk_08DD9B66.bin"
	.4byte gUnk_08DD9B49
	.incbin "sounds/gUnk_08DD9B66_1.bin"
	.4byte gUnk_08DD9B66
	.incbin "sounds/gUnk_08DD9B66_2.bin"
	.4byte gUnk_08DD9AE3
	.incbin "sounds/gUnk_08DD9B66_3.bin"
bgmFightTheme_track1:: @ 08DD9B8F
	.incbin "sounds/bgmFightTheme_track1.bin"
gUnk_08DD9B9B:: @ 08DD9B9B
	.incbin "sounds/gUnk_08DD9B9B.bin"
gUnk_08DD9BA4:: @ 08DD9BA4
	.incbin "sounds/gUnk_08DD9BA4.bin"
	.4byte gUnk_08DD9BA4
gUnk_08DD9BBE:: @ 08DD9BBE
	.incbin "sounds/gUnk_08DD9BBE.bin"
	.4byte gUnk_08DD9BBE
	.incbin "sounds/gUnk_08DD9BBE_1.bin"
gUnk_08DD9BE3:: @ 08DD9BE3
	.incbin "sounds/gUnk_08DD9BE3.bin"
gUnk_08DD9C00:: @ 08DD9C00
	.incbin "sounds/gUnk_08DD9C00.bin"
	.4byte gUnk_08DD9BE3
	.incbin "sounds/gUnk_08DD9C00_1.bin"
	.4byte gUnk_08DD9C00
	.incbin "sounds/gUnk_08DD9C00_2.bin"
	.4byte gUnk_08DD9B9B
	.incbin "sounds/gUnk_08DD9C00_3.bin"
bgmFightTheme_track2:: @ 08DD9C24
	.incbin "sounds/bgmFightTheme_track2.bin"
gUnk_08DD9C40:: @ 08DD9C40
	.incbin "sounds/gUnk_08DD9C40.bin"
gUnk_08DD9C55:: @ 08DD9C55
	.incbin "sounds/gUnk_08DD9C55.bin"
gUnk_08DD9C6B:: @ 08DD9C6B
	.incbin "sounds/gUnk_08DD9C6B.bin"
	.4byte gUnk_08DD9C6B
	.incbin "sounds/gUnk_08DD9C6B_1.bin"
	.4byte gUnk_08DD9C55
	.incbin "sounds/gUnk_08DD9C6B_2.bin"
	.4byte gUnk_08DD9C55
	.incbin "sounds/gUnk_08DD9C6B_3.bin"
	.4byte gUnk_08DD9C6B
	.incbin "sounds/gUnk_08DD9C6B_4.bin"
	.4byte gUnk_08DD9C6B
gUnk_08DD9C9A:: @ 08DD9C9A
	.incbin "sounds/gUnk_08DD9C9A.bin"
	.4byte gUnk_08DD9C9A
gUnk_08DD9CB5:: @ 08DD9CB5
	.incbin "sounds/gUnk_08DD9CB5.bin"
	.4byte gUnk_08DD9CB5
	.incbin "sounds/gUnk_08DD9CB5_1.bin"
	.4byte gUnk_08DD9C9A
	.incbin "sounds/gUnk_08DD9CB5_2.bin"
	.4byte gUnk_08DD9C9A
	.incbin "sounds/gUnk_08DD9CB5_3.bin"
	.4byte gUnk_08DD9CB5
	.incbin "sounds/gUnk_08DD9CB5_4.bin"
	.4byte gUnk_08DD9CB5
	.incbin "sounds/gUnk_08DD9CB5_5.bin"
	.4byte gUnk_08DD9C40
	.incbin "sounds/gUnk_08DD9CB5_6.bin"
bgmFightTheme_track3:: @ 08DD9CEA
	.incbin "sounds/bgmFightTheme_track3.bin"
gUnk_08DD9D05:: @ 08DD9D05
	.incbin "sounds/gUnk_08DD9D05.bin"
gUnk_08DD9D0D:: @ 08DD9D0D
	.incbin "sounds/gUnk_08DD9D0D.bin"
gUnk_08DD9D16:: @ 08DD9D16
	.incbin "sounds/gUnk_08DD9D16.bin"
	.4byte gUnk_08DD9D16
	.incbin "sounds/gUnk_08DD9D16_1.bin"
	.4byte gUnk_08DD9D0D
	.incbin "sounds/gUnk_08DD9D16_2.bin"
	.4byte gUnk_08DD9D0D
	.incbin "sounds/gUnk_08DD9D16_3.bin"
	.4byte gUnk_08DD9D16
	.incbin "sounds/gUnk_08DD9D16_4.bin"
	.4byte gUnk_08DD9D16
gUnk_08DD9D38:: @ 08DD9D38
	.incbin "sounds/gUnk_08DD9D38.bin"
	.4byte gUnk_08DD9D38
gUnk_08DD9D4F:: @ 08DD9D4F
	.incbin "sounds/gUnk_08DD9D4F.bin"
	.4byte gUnk_08DD9D4F
	.incbin "sounds/gUnk_08DD9D4F_1.bin"
	.4byte gUnk_08DD9D38
	.incbin "sounds/gUnk_08DD9D4F_2.bin"
	.4byte gUnk_08DD9D38
	.incbin "sounds/gUnk_08DD9D4F_3.bin"
	.4byte gUnk_08DD9D4F
	.incbin "sounds/gUnk_08DD9D4F_4.bin"
	.4byte gUnk_08DD9D4F
	.incbin "sounds/gUnk_08DD9D4F_5.bin"
	.4byte gUnk_08DD9D05
	.incbin "sounds/gUnk_08DD9D4F_6.bin"
bgmFightTheme_track4:: @ 08DD9D80
	.incbin "sounds/bgmFightTheme_track4.bin"
gUnk_08DD9D9F:: @ 08DD9D9F
	.incbin "sounds/gUnk_08DD9D9F.bin"
gUnk_08DD9DA7:: @ 08DD9DA7
	.incbin "sounds/gUnk_08DD9DA7.bin"
gUnk_08DD9DB1:: @ 08DD9DB1
	.incbin "sounds/gUnk_08DD9DB1.bin"
	.4byte gUnk_08DD9DB1
	.incbin "sounds/gUnk_08DD9DB1_1.bin"
	.4byte gUnk_08DD9DA7
	.incbin "sounds/gUnk_08DD9DB1_2.bin"
	.4byte gUnk_08DD9DA7
	.incbin "sounds/gUnk_08DD9DB1_3.bin"
	.4byte gUnk_08DD9DB1
	.incbin "sounds/gUnk_08DD9DB1_4.bin"
	.4byte gUnk_08DD9DB1
gUnk_08DD9DD4:: @ 08DD9DD4
	.incbin "sounds/gUnk_08DD9DD4.bin"
	.4byte gUnk_08DD9DD4
gUnk_08DD9DEC:: @ 08DD9DEC
	.incbin "sounds/gUnk_08DD9DEC.bin"
	.4byte gUnk_08DD9DEC
	.incbin "sounds/gUnk_08DD9DEC_1.bin"
	.4byte gUnk_08DD9DD4
	.incbin "sounds/gUnk_08DD9DEC_2.bin"
	.4byte gUnk_08DD9DD4
	.incbin "sounds/gUnk_08DD9DEC_3.bin"
	.4byte gUnk_08DD9DEC
	.incbin "sounds/gUnk_08DD9DEC_4.bin"
	.4byte gUnk_08DD9DEC
	.incbin "sounds/gUnk_08DD9DEC_5.bin"
	.4byte gUnk_08DD9D9F
	.incbin "sounds/gUnk_08DD9DEC_6.bin"
bgmFightTheme_track5:: @ 08DD9E1F
	.incbin "sounds/bgmFightTheme_track5.bin"
gUnk_08DD9E2A:: @ 08DD9E2A
	.incbin "sounds/gUnk_08DD9E2A.bin"
gUnk_08DD9E40:: @ 08DD9E40
	.incbin "sounds/gUnk_08DD9E40.bin"
gUnk_08DD9E58:: @ 08DD9E58
	.incbin "sounds/gUnk_08DD9E58.bin"
	.4byte gUnk_08DD9E58
	.incbin "sounds/gUnk_08DD9E58_1.bin"
	.4byte gUnk_08DD9E40
	.incbin "sounds/gUnk_08DD9E58_2.bin"
	.4byte gUnk_08DD9E40
	.incbin "sounds/gUnk_08DD9E58_3.bin"
	.4byte gUnk_08DD9E58
	.incbin "sounds/gUnk_08DD9E58_4.bin"
	.4byte gUnk_08DD9E58
gUnk_08DD9E89:: @ 08DD9E89
	.incbin "sounds/gUnk_08DD9E89.bin"
	.4byte gUnk_08DD9E89
gUnk_08DD9EA5:: @ 08DD9EA5
	.incbin "sounds/gUnk_08DD9EA5.bin"
	.4byte gUnk_08DD9EA5
	.incbin "sounds/gUnk_08DD9EA5_1.bin"
	.4byte gUnk_08DD9E89
	.incbin "sounds/gUnk_08DD9EA5_2.bin"
	.4byte gUnk_08DD9E89
	.incbin "sounds/gUnk_08DD9EA5_3.bin"
	.4byte gUnk_08DD9EA5
	.incbin "sounds/gUnk_08DD9EA5_4.bin"
	.4byte gUnk_08DD9EA5
	.incbin "sounds/gUnk_08DD9EA5_5.bin"
	.4byte gUnk_08DD9E2A
	.incbin "sounds/gUnk_08DD9EA5_6.bin"
bgmFightTheme_track6:: @ 08DD9EDC
	.incbin "sounds/bgmFightTheme_track6.bin"
gUnk_08DD9F13:: @ 08DD9F13
	.incbin "sounds/gUnk_08DD9F13.bin"
gUnk_08DD9F29:: @ 08DD9F29
	.incbin "sounds/gUnk_08DD9F29.bin"
	.4byte gUnk_08DD9F13
	.incbin "sounds/gUnk_08DD9F29_1.bin"
	.4byte gUnk_08DD9F29
	.incbin "sounds/gUnk_08DD9F29_2.bin"
bgmFightTheme:: @ 08DD9F50
	sound_header 7 0 0 0xa8 voicegroup042 bgmFightTheme_track0 bgmFightTheme_track1 bgmFightTheme_track2 bgmFightTheme_track3 bgmFightTheme_track4 bgmFightTheme_track5 bgmFightTheme_track6

.include "sounds/bgmBossTheme.s"
.include "sounds/bgmVaatiReborn.s"
.include "sounds/bgmVaatiTransfigured.s"
.include "sounds/bgmCastleCollapse.s"

bgmVaatiWrath_track0:: @ 08DDB60C
	.incbin "sounds/bgmVaatiWrath_track0.bin"
gUnk_08DDB65D:: @ 08DDB65D
	.incbin "sounds/gUnk_08DDB65D.bin"
gUnk_08DDB67A:: @ 08DDB67A
	.incbin "sounds/gUnk_08DDB67A.bin"
	.4byte gUnk_08DDB67A
	.incbin "sounds/gUnk_08DDB67A_1.bin"
	.4byte gUnk_08DDB67A
	.incbin "sounds/gUnk_08DDB67A_2.bin"
	.4byte gUnk_08DDB67A
	.incbin "sounds/gUnk_08DDB67A_3.bin"
	.4byte gUnk_08DDB65D
	.incbin "sounds/gUnk_08DDB67A_4.bin"
bgmVaatiWrath_track1:: @ 08DDB71C
	.incbin "sounds/bgmVaatiWrath_track1.bin"
gUnk_08DDB72D:: @ 08DDB72D
	.incbin "sounds/gUnk_08DDB72D.bin"
	.4byte gUnk_08DDB72D
	.incbin "sounds/gUnk_08DDB72D_1.bin"
bgmVaatiWrath_track2:: @ 08DDB7FA
	.incbin "sounds/bgmVaatiWrath_track2.bin"
gUnk_08DDB86C:: @ 08DDB86C
	.incbin "sounds/gUnk_08DDB86C.bin"
gUnk_08DDB896:: @ 08DDB896
	.incbin "sounds/gUnk_08DDB896.bin"
gUnk_08DDB8B6:: @ 08DDB8B6
	.incbin "sounds/gUnk_08DDB8B6.bin"
	.4byte gUnk_08DDB86C
	.incbin "sounds/gUnk_08DDB8B6_1.bin"
	.4byte gUnk_08DDB8B6
	.incbin "sounds/gUnk_08DDB8B6_2.bin"
	.4byte gUnk_08DDB896
	.incbin "sounds/gUnk_08DDB8B6_3.bin"
bgmVaatiWrath_track3:: @ 08DDBA54
	.incbin "sounds/bgmVaatiWrath_track3.bin"
gUnk_08DDBA78:: @ 08DDBA78
	.incbin "sounds/gUnk_08DDBA78.bin"
gUnk_08DDBAB9:: @ 08DDBAB9
	.incbin "sounds/gUnk_08DDBAB9.bin"
	.4byte gUnk_08DDBAB9
	.incbin "sounds/gUnk_08DDBAB9_1.bin"
gUnk_08DDBAE0:: @ 08DDBAE0
	.incbin "sounds/gUnk_08DDBAE0.bin"
	.4byte gUnk_08DDBAE0
	.incbin "sounds/gUnk_08DDBAE0_1.bin"
	.4byte gUnk_08DDBA78
	.incbin "sounds/gUnk_08DDBAE0_2.bin"
bgmVaatiWrath_track4:: @ 08DDBB43
	.incbin "sounds/bgmVaatiWrath_track4.bin"
gUnk_08DDBB59:: @ 08DDBB59
	.incbin "sounds/gUnk_08DDBB59.bin"
gUnk_08DDBB80:: @ 08DDBB80
	.incbin "sounds/gUnk_08DDBB80.bin"
	.4byte gUnk_08DDBB80
	.incbin "sounds/gUnk_08DDBB80_1.bin"
	.4byte gUnk_08DDBB80
	.incbin "sounds/gUnk_08DDBB80_2.bin"
gUnk_08DDBBBD:: @ 08DDBBBD
	.incbin "sounds/gUnk_08DDBBBD.bin"
	.4byte gUnk_08DDBBBD
	.incbin "sounds/gUnk_08DDBBBD_1.bin"
	.4byte gUnk_08DDBB59
	.incbin "sounds/gUnk_08DDBBBD_2.bin"
bgmVaatiWrath_track5:: @ 08DDBC3F
	.incbin "sounds/bgmVaatiWrath_track5.bin"
gUnk_08DDBC8F:: @ 08DDBC8F
	.incbin "sounds/gUnk_08DDBC8F.bin"
	.4byte gUnk_08DDBC8F
	.incbin "sounds/gUnk_08DDBC8F_1.bin"
bgmVaatiWrath_track6:: @ 08DDBD03
	.incbin "sounds/bgmVaatiWrath_track6.bin"
gUnk_08DDBD21:: @ 08DDBD21
	.incbin "sounds/gUnk_08DDBD21.bin"
	.4byte gUnk_08DDBD21
	.incbin "sounds/gUnk_08DDBD21_1.bin"
bgmVaatiWrath_track7:: @ 08DDBD44
	.incbin "sounds/bgmVaatiWrath_track7.bin"
gUnk_08DDBD55:: @ 08DDBD55
	.incbin "sounds/gUnk_08DDBD55.bin"
gUnk_08DDBD7B:: @ 08DDBD7B
	.incbin "sounds/gUnk_08DDBD7B.bin"
gUnk_08DDBDA3:: @ 08DDBDA3
	.incbin "sounds/gUnk_08DDBDA3.bin"
	.4byte gUnk_08DDBDA3
	.incbin "sounds/gUnk_08DDBDA3_1.bin"
	.4byte gUnk_08DDBD7B
	.incbin "sounds/gUnk_08DDBDA3_2.bin"
	.4byte gUnk_08DDBD7B
gUnk_08DDBDDA:: @ 08DDBDDA
	.incbin "sounds/gUnk_08DDBDDA.bin"
	.4byte gUnk_08DDBDDA
gUnk_08DDBE07:: @ 08DDBE07
	.incbin "sounds/gUnk_08DDBE07.bin"
	.4byte gUnk_08DDBE07
	.incbin "sounds/gUnk_08DDBE07_1.bin"
	.4byte gUnk_08DDBDA3
	.incbin "sounds/gUnk_08DDBE07_2.bin"
	.4byte gUnk_08DDBDA3
	.incbin "sounds/gUnk_08DDBE07_3.bin"
	.4byte gUnk_08DDBDA3
	.incbin "sounds/gUnk_08DDBE07_4.bin"
	.4byte gUnk_08DDBDA3
	.incbin "sounds/gUnk_08DDBE07_5.bin"
gUnk_08DDBE6F:: @ 08DDBE6F
	.incbin "sounds/gUnk_08DDBE6F.bin"
	.4byte gUnk_08DDBE6F
	.incbin "sounds/gUnk_08DDBE6F_1.bin"
	.4byte gUnk_08DDBD55
	.incbin "sounds/gUnk_08DDBE6F_2.bin"
bgmVaatiWrath_track8:: @ 08DDBEA3
	.incbin "sounds/bgmVaatiWrath_track8.bin"
gUnk_08DDBED4:: @ 08DDBED4
	.incbin "sounds/gUnk_08DDBED4.bin"
gUnk_08DDBF38:: @ 08DDBF38
	.incbin "sounds/gUnk_08DDBF38.bin"
	.4byte gUnk_08DDBF38
gUnk_08DDBF6F:: @ 08DDBF6F
	.incbin "sounds/gUnk_08DDBF6F.bin"
gUnk_08DDBFA0:: @ 08DDBFA0
	.incbin "sounds/gUnk_08DDBFA0.bin"
	.4byte gUnk_08DDBF38
	.incbin "sounds/gUnk_08DDBFA0_1.bin"
	.4byte gUnk_08DDBF38
	.incbin "sounds/gUnk_08DDBFA0_2.bin"
	.4byte gUnk_08DDBF6F
	.incbin "sounds/gUnk_08DDBFA0_3.bin"
	.4byte gUnk_08DDBFA0
gUnk_08DDBFE9:: @ 08DDBFE9
	.incbin "sounds/gUnk_08DDBFE9.bin"
	.4byte gUnk_08DDBFE9
	.incbin "sounds/gUnk_08DDBFE9_1.bin"
	.4byte gUnk_08DDBF38
	.incbin "sounds/gUnk_08DDBFE9_2.bin"
	.4byte gUnk_08DDBF38
	.incbin "sounds/gUnk_08DDBFE9_3.bin"
	.4byte gUnk_08DDBF38
	.incbin "sounds/gUnk_08DDBFE9_4.bin"
	.4byte gUnk_08DDBF38
	.incbin "sounds/gUnk_08DDBFE9_5.bin"
	.4byte gUnk_08DDBED4
	.incbin "sounds/gUnk_08DDBFE9_6.bin"
bgmVaatiWrath:: @ 08DDC070
	sound_header 9 0 0 0xa8 voicegroup047 bgmVaatiWrath_track0 bgmVaatiWrath_track1 bgmVaatiWrath_track2 bgmVaatiWrath_track3 bgmVaatiWrath_track4 bgmVaatiWrath_track5 bgmVaatiWrath_track6 bgmVaatiWrath_track7 bgmVaatiWrath_track8

bgmFightTheme2_track0:: @ 08DDC09C
	.incbin "sounds/bgmFightTheme2_track0.bin"
gUnk_08DDC0A8:: @ 08DDC0A8
	.incbin "sounds/gUnk_08DDC0A8.bin"
gUnk_08DDC0B2:: @ 08DDC0B2
	.incbin "sounds/gUnk_08DDC0B2.bin"
	.4byte gUnk_08DDC0B2
	.incbin "sounds/gUnk_08DDC0B2_1.bin"
	.4byte gUnk_08DDC0A8
	.incbin "sounds/gUnk_08DDC0B2_2.bin"
bgmFightTheme2_track1:: @ 08DDC0C4
	.incbin "sounds/bgmFightTheme2_track1.bin"
gUnk_08DDC0CC:: @ 08DDC0CC
	.incbin "sounds/gUnk_08DDC0CC.bin"
gUnk_08DDC0FB:: @ 08DDC0FB
	.incbin "sounds/gUnk_08DDC0FB.bin"
	.4byte gUnk_08DDC0FB
	.incbin "sounds/gUnk_08DDC0FB_1.bin"
	.4byte gUnk_08DDC0CC
	.incbin "sounds/gUnk_08DDC0FB_2.bin"
bgmFightTheme2_track2:: @ 08DDC121
	.incbin "sounds/bgmFightTheme2_track2.bin"
gUnk_08DDC128:: @ 08DDC128
	.incbin "sounds/gUnk_08DDC128.bin"
	.4byte gUnk_08DDC128
	.incbin "sounds/gUnk_08DDC128_1.bin"
bgmFightTheme2_track3:: @ 08DDC13A
	.incbin "sounds/bgmFightTheme2_track3.bin"
gUnk_08DDC153:: @ 08DDC153
	.incbin "sounds/gUnk_08DDC153.bin"
	.4byte gUnk_08DDC153
	.incbin "sounds/gUnk_08DDC153_1.bin"
bgmFightTheme2_track4:: @ 08DDC1AA
	.incbin "sounds/bgmFightTheme2_track4.bin"
gUnk_08DDC1C3:: @ 08DDC1C3
	.incbin "sounds/gUnk_08DDC1C3.bin"
gUnk_08DDC1CB:: @ 08DDC1CB
	.incbin "sounds/gUnk_08DDC1CB.bin"
	.4byte gUnk_08DDC1CB
	.incbin "sounds/gUnk_08DDC1CB_1.bin"
	.4byte gUnk_08DDC1C3
	.incbin "sounds/gUnk_08DDC1CB_2.bin"
bgmFightTheme2_track5:: @ 08DDC1FE
	.incbin "sounds/bgmFightTheme2_track5.bin"
gUnk_08DDC205:: @ 08DDC205
	.incbin "sounds/gUnk_08DDC205.bin"
	.4byte gUnk_08DDC205
	.incbin "sounds/gUnk_08DDC205_1.bin"
bgmFightTheme2_track6:: @ 08DDC218
	.incbin "sounds/bgmFightTheme2_track6.bin"
gUnk_08DDC233:: @ 08DDC233
	.incbin "sounds/gUnk_08DDC233.bin"
	.4byte gUnk_08DDC233
	.incbin "sounds/gUnk_08DDC233_1.bin"
bgmFightTheme2:: @ 08DDC250
	sound_header 7 0 0 0xa8 voicegroup048 bgmFightTheme2_track0 bgmFightTheme2_track1 bgmFightTheme2_track2 bgmFightTheme2_track3 bgmFightTheme2_track4 bgmFightTheme2_track5 bgmFightTheme2_track6

bgmDiggingCave_track0:: @ 08DDC274
	.incbin "sounds/bgmDiggingCave_track0.bin"
gUnk_08DDC27F:: @ 08DDC27F
	.incbin "sounds/gUnk_08DDC27F.bin"
	.4byte gUnk_08DDC27F
	.incbin "sounds/gUnk_08DDC27F_1.bin"
bgmDiggingCave_track1:: @ 08DDC2A6
	.incbin "sounds/bgmDiggingCave_track1.bin"
gUnk_08DDC2AE:: @ 08DDC2AE
	.incbin "sounds/gUnk_08DDC2AE.bin"
	.4byte gUnk_08DDC2AE
	.incbin "sounds/gUnk_08DDC2AE_1.bin"
bgmDiggingCave_track2:: @ 08DDC2D9
	.incbin "sounds/bgmDiggingCave_track2.bin"
gUnk_08DDC2DF:: @ 08DDC2DF
	.incbin "sounds/gUnk_08DDC2DF.bin"
	.4byte gUnk_08DDC2DF
	.incbin "sounds/gUnk_08DDC2DF_1.bin"
bgmDiggingCave_track3:: @ 08DDC30B
	.incbin "sounds/bgmDiggingCave_track3.bin"
gUnk_08DDC311:: @ 08DDC311
	.incbin "sounds/gUnk_08DDC311.bin"
	.4byte gUnk_08DDC311
	.incbin "sounds/gUnk_08DDC311_1.bin"
bgmDiggingCave_track4:: @ 08DDC346
	.incbin "sounds/bgmDiggingCave_track4.bin"
gUnk_08DDC34E:: @ 08DDC34E
	.incbin "sounds/gUnk_08DDC34E.bin"
	.4byte gUnk_08DDC34E
	.incbin "sounds/gUnk_08DDC34E_1.bin"
bgmDiggingCave_track5:: @ 08DDC358
	.incbin "sounds/bgmDiggingCave_track5.bin"
gUnk_08DDC35F:: @ 08DDC35F
	.incbin "sounds/gUnk_08DDC35F.bin"
	.4byte gUnk_08DDC35F
	.incbin "sounds/gUnk_08DDC35F_1.bin"
bgmDiggingCave:: @ 08DDC394
	sound_header 6 0 0 0xb2 voicegroup049 bgmDiggingCave_track0 bgmDiggingCave_track1 bgmDiggingCave_track2 bgmDiggingCave_track3 bgmDiggingCave_track4 bgmDiggingCave_track5

.include "sounds/bgmSwiftbladeDojo.s"

bgmMinishCap_track0:: @ 08DDC4CC
	.incbin "sounds/bgmMinishCap_track0.bin"
gUnk_08DDC4D7:: @ 08DDC4D7
	.incbin "sounds/gUnk_08DDC4D7.bin"
gUnk_08DDC4DF:: @ 08DDC4DF
	.incbin "sounds/gUnk_08DDC4DF.bin"
gUnk_08DDC4F3:: @ 08DDC4F3
	.incbin "sounds/gUnk_08DDC4F3.bin"
	.4byte gUnk_08DDC4DF
	.incbin "sounds/gUnk_08DDC4F3_1.bin"
	.4byte gUnk_08DDC4F3
	.incbin "sounds/gUnk_08DDC4F3_2.bin"
	.4byte gUnk_08DDC4DF
	.incbin "sounds/gUnk_08DDC4F3_3.bin"
	.4byte gUnk_08DDC4F3
	.incbin "sounds/gUnk_08DDC4F3_4.bin"
gUnk_08DDC528:: @ 08DDC528
	.incbin "sounds/gUnk_08DDC528.bin"
gUnk_08DDC52F:: @ 08DDC52F
	.incbin "sounds/gUnk_08DDC52F.bin"
gUnk_08DDC536:: @ 08DDC536
	.incbin "sounds/gUnk_08DDC536.bin"
	.4byte gUnk_08DDC528
	.incbin "sounds/gUnk_08DDC536_1.bin"
	.4byte gUnk_08DDC52F
	.incbin "sounds/gUnk_08DDC536_2.bin"
	.4byte gUnk_08DDC536
gUnk_08DDC550:: @ 08DDC550
	.incbin "sounds/gUnk_08DDC550.bin"
	.4byte gUnk_08DDC536
gUnk_08DDC562:: @ 08DDC562
	.incbin "sounds/gUnk_08DDC562.bin"
	.4byte gUnk_08DDC536
	.incbin "sounds/gUnk_08DDC562_1.bin"
	.4byte gUnk_08DDC562
gUnk_08DDC573:: @ 08DDC573
	.incbin "sounds/gUnk_08DDC573.bin"
gUnk_08DDC57A:: @ 08DDC57A
	.incbin "sounds/gUnk_08DDC57A.bin"
	.4byte gUnk_08DDC550
	.incbin "sounds/gUnk_08DDC57A_1.bin"
	.4byte gUnk_08DDC536
	.incbin "sounds/gUnk_08DDC57A_2.bin"
	.4byte gUnk_08DDC562
	.incbin "sounds/gUnk_08DDC57A_3.bin"
	.4byte gUnk_08DDC536
	.incbin "sounds/gUnk_08DDC57A_4.bin"
	.4byte gUnk_08DDC562
	.incbin "sounds/gUnk_08DDC57A_5.bin"
	.4byte gUnk_08DDC573
	.incbin "sounds/gUnk_08DDC57A_6.bin"
	.4byte gUnk_08DDC57A
	.incbin "sounds/gUnk_08DDC57A_7.bin"
gUnk_08DDC5B8:: @ 08DDC5B8
	.incbin "sounds/gUnk_08DDC5B8.bin"
gUnk_08DDC5BF:: @ 08DDC5BF
	.incbin "sounds/gUnk_08DDC5BF.bin"
	.4byte gUnk_08DDC562
	.incbin "sounds/gUnk_08DDC5BF_1.bin"
	.4byte gUnk_08DDC5B8
	.incbin "sounds/gUnk_08DDC5BF_2.bin"
	.4byte gUnk_08DDC5BF
	.incbin "sounds/gUnk_08DDC5BF_3.bin"
	.4byte gUnk_08DDC536
	.incbin "sounds/gUnk_08DDC5BF_4.bin"
	.4byte gUnk_08DDC573
	.incbin "sounds/gUnk_08DDC5BF_5.bin"
	.4byte gUnk_08DDC4D7
	.incbin "sounds/gUnk_08DDC5BF_6.bin"
bgmMinishCap_track1:: @ 08DDC62B
	.incbin "sounds/bgmMinishCap_track1.bin"
gUnk_08DDC632:: @ 08DDC632
	.incbin "sounds/gUnk_08DDC632.bin"
gUnk_08DDC63F:: @ 08DDC63F
	.incbin "sounds/gUnk_08DDC63F.bin"
gUnk_08DDC649:: @ 08DDC649
	.incbin "sounds/gUnk_08DDC649.bin"
	.4byte gUnk_08DDC63F
	.incbin "sounds/gUnk_08DDC649_1.bin"
	.4byte gUnk_08DDC649
	.incbin "sounds/gUnk_08DDC649_2.bin"
	.4byte gUnk_08DDC63F
	.incbin "sounds/gUnk_08DDC649_3.bin"
	.4byte gUnk_08DDC649
	.incbin "sounds/gUnk_08DDC649_4.bin"
gUnk_08DDC700:: @ 08DDC700
	.incbin "sounds/gUnk_08DDC700.bin"
gUnk_08DDC708:: @ 08DDC708
	.incbin "sounds/gUnk_08DDC708.bin"
	.4byte gUnk_08DDC700
gUnk_08DDC715:: @ 08DDC715
	.incbin "sounds/gUnk_08DDC715.bin"
gUnk_08DDC71D:: @ 08DDC71D
	.incbin "sounds/gUnk_08DDC71D.bin"
gUnk_08DDC725:: @ 08DDC725
	.incbin "sounds/gUnk_08DDC725.bin"
gUnk_08DDC72D:: @ 08DDC72D
	.incbin "sounds/gUnk_08DDC72D.bin"
	.4byte gUnk_08DDC708
	.incbin "sounds/gUnk_08DDC72D_1.bin"
	.4byte gUnk_08DDC700
	.incbin "sounds/gUnk_08DDC72D_2.bin"
	.4byte gUnk_08DDC708
	.incbin "sounds/gUnk_08DDC72D_3.bin"
	.4byte gUnk_08DDC700
	.incbin "sounds/gUnk_08DDC72D_4.bin"
	.4byte gUnk_08DDC715
	.incbin "sounds/gUnk_08DDC72D_5.bin"
	.4byte gUnk_08DDC71D
	.incbin "sounds/gUnk_08DDC72D_6.bin"
	.4byte gUnk_08DDC725
	.incbin "sounds/gUnk_08DDC72D_7.bin"
	.4byte gUnk_08DDC72D
	.incbin "sounds/gUnk_08DDC72D_8.bin"
gUnk_08DDC770:: @ 08DDC770
	.incbin "sounds/gUnk_08DDC770.bin"
	.4byte gUnk_08DDC770
	.incbin "sounds/gUnk_08DDC770_1.bin"
	.4byte gUnk_08DDC632
	.incbin "sounds/gUnk_08DDC770_2.bin"
bgmMinishCap_track2:: @ 08DDC86F
	.incbin "sounds/bgmMinishCap_track2.bin"
gUnk_08DDC876:: @ 08DDC876
	.incbin "sounds/gUnk_08DDC876.bin"
gUnk_08DDC87D:: @ 08DDC87D
	.incbin "sounds/gUnk_08DDC87D.bin"
gUnk_08DDC885:: @ 08DDC885
	.incbin "sounds/gUnk_08DDC885.bin"
gUnk_08DDC88D:: @ 08DDC88D
	.incbin "sounds/gUnk_08DDC88D.bin"
	.4byte gUnk_08DDC885
	.incbin "sounds/gUnk_08DDC88D_1.bin"
	.4byte gUnk_08DDC87D
	.incbin "sounds/gUnk_08DDC88D_2.bin"
	.4byte gUnk_08DDC885
	.incbin "sounds/gUnk_08DDC88D_3.bin"
	.4byte gUnk_08DDC88D
	.incbin "sounds/gUnk_08DDC88D_4.bin"
gUnk_08DDC8BA:: @ 08DDC8BA
	.incbin "sounds/gUnk_08DDC8BA.bin"
gUnk_08DDC8C4:: @ 08DDC8C4
	.incbin "sounds/gUnk_08DDC8C4.bin"
	.4byte gUnk_08DDC8C4
gUnk_08DDC8D4:: @ 08DDC8D4
	.incbin "sounds/gUnk_08DDC8D4.bin"
	.4byte gUnk_08DDC8C4
	.incbin "sounds/gUnk_08DDC8D4_1.bin"
	.4byte gUnk_08DDC8BA
	.incbin "sounds/gUnk_08DDC8D4_2.bin"
	.4byte gUnk_08DDC8C4
	.incbin "sounds/gUnk_08DDC8D4_3.bin"
	.4byte gUnk_08DDC8C4
	.incbin "sounds/gUnk_08DDC8D4_4.bin"
	.4byte gUnk_08DDC8D4
	.incbin "sounds/gUnk_08DDC8D4_5.bin"
	.4byte gUnk_08DDC876
	.incbin "sounds/gUnk_08DDC8D4_6.bin"
bgmMinishCap_track3:: @ 08DDC983
	.incbin "sounds/bgmMinishCap_track3.bin"
gUnk_08DDC98A:: @ 08DDC98A
	.incbin "sounds/gUnk_08DDC98A.bin"
gUnk_08DDCA0D:: @ 08DDCA0D
	.incbin "sounds/gUnk_08DDCA0D.bin"
	.4byte gUnk_08DDCA0D
	.incbin "sounds/gUnk_08DDCA0D_1.bin"
gUnk_08DDCA65:: @ 08DDCA65
	.incbin "sounds/gUnk_08DDCA65.bin"
	.4byte gUnk_08DDCA65
	.incbin "sounds/gUnk_08DDCA65_1.bin"
	.4byte gUnk_08DDC98A
	.incbin "sounds/gUnk_08DDCA65_2.bin"
bgmMinishCap_track4:: @ 08DDCAED
	.incbin "sounds/bgmMinishCap_track4.bin"
gUnk_08DDCAF4:: @ 08DDCAF4
	.incbin "sounds/gUnk_08DDCAF4.bin"
gUnk_08DDCAFE:: @ 08DDCAFE
	.incbin "sounds/gUnk_08DDCAFE.bin"
gUnk_08DDCB0B:: @ 08DDCB0B
	.incbin "sounds/gUnk_08DDCB0B.bin"
	.4byte gUnk_08DDCAFE
	.incbin "sounds/gUnk_08DDCB0B_1.bin"
	.4byte gUnk_08DDCB0B
	.incbin "sounds/gUnk_08DDCB0B_2.bin"
gUnk_08DDCB6B:: @ 08DDCB6B
	.incbin "sounds/gUnk_08DDCB6B.bin"
	.4byte gUnk_08DDCB6B
	.incbin "sounds/gUnk_08DDCB6B_1.bin"
gUnk_08DDCBC5:: @ 08DDCBC5
	.incbin "sounds/gUnk_08DDCBC5.bin"
	.4byte gUnk_08DDCBC5
	.incbin "sounds/gUnk_08DDCBC5_1.bin"
	.4byte gUnk_08DDCBC5
	.incbin "sounds/gUnk_08DDCBC5_2.bin"
	.4byte gUnk_08DDCAF4
	.incbin "sounds/gUnk_08DDCBC5_3.bin"
bgmMinishCap_track5:: @ 08DDCCA6
	.incbin "sounds/bgmMinishCap_track5.bin"
gUnk_08DDCCB0:: @ 08DDCCB0
	.incbin "sounds/gUnk_08DDCCB0.bin"
gUnk_08DDCCB7:: @ 08DDCCB7
	.incbin "sounds/gUnk_08DDCCB7.bin"
gUnk_08DDCCC1:: @ 08DDCCC1
	.incbin "sounds/gUnk_08DDCCC1.bin"
gUnk_08DDCCCA:: @ 08DDCCCA
	.incbin "sounds/gUnk_08DDCCCA.bin"
	.4byte gUnk_08DDCCC1
	.incbin "sounds/gUnk_08DDCCCA_1.bin"
	.4byte gUnk_08DDCCB7
	.incbin "sounds/gUnk_08DDCCCA_2.bin"
	.4byte gUnk_08DDCCC1
	.incbin "sounds/gUnk_08DDCCCA_3.bin"
	.4byte gUnk_08DDCCCA
	.incbin "sounds/gUnk_08DDCCCA_4.bin"
gUnk_08DDCCF9:: @ 08DDCCF9
	.incbin "sounds/gUnk_08DDCCF9.bin"
	.4byte gUnk_08DDCCF9
	.incbin "sounds/gUnk_08DDCCF9_1.bin"
gUnk_08DDCD53:: @ 08DDCD53
	.incbin "sounds/gUnk_08DDCD53.bin"
gUnk_08DDCD5E:: @ 08DDCD5E
	.incbin "sounds/gUnk_08DDCD5E.bin"
gUnk_08DDCD67:: @ 08DDCD67
	.incbin "sounds/gUnk_08DDCD67.bin"
	.4byte gUnk_08DDCD5E
gUnk_08DDCD73:: @ 08DDCD73
	.incbin "sounds/gUnk_08DDCD73.bin"
	.4byte gUnk_08DDCD67
	.incbin "sounds/gUnk_08DDCD73_1.bin"
	.4byte gUnk_08DDCD5E
	.incbin "sounds/gUnk_08DDCD73_2.bin"
	.4byte gUnk_08DDCD53
	.incbin "sounds/gUnk_08DDCD73_3.bin"
	.4byte gUnk_08DDCD5E
	.incbin "sounds/gUnk_08DDCD73_4.bin"
	.4byte gUnk_08DDCD67
	.incbin "sounds/gUnk_08DDCD73_5.bin"
	.4byte gUnk_08DDCD5E
	.incbin "sounds/gUnk_08DDCD73_6.bin"
	.4byte gUnk_08DDCD73
	.incbin "sounds/gUnk_08DDCD73_7.bin"
	.4byte gUnk_08DDCCB0
	.incbin "sounds/gUnk_08DDCD73_8.bin"
bgmMinishCap_track6:: @ 08DDCE8A
	.incbin "sounds/bgmMinishCap_track6.bin"
gUnk_08DDCE91:: @ 08DDCE91
	.incbin "sounds/gUnk_08DDCE91.bin"
gUnk_08DDCE99:: @ 08DDCE99
	.incbin "sounds/gUnk_08DDCE99.bin"
gUnk_08DDCEA2:: @ 08DDCEA2
	.incbin "sounds/gUnk_08DDCEA2.bin"
	.4byte gUnk_08DDCE99
	.incbin "sounds/gUnk_08DDCEA2_1.bin"
	.4byte gUnk_08DDCEA2
	.incbin "sounds/gUnk_08DDCEA2_2.bin"
	.4byte gUnk_08DDCE99
	.incbin "sounds/gUnk_08DDCEA2_3.bin"
	.4byte gUnk_08DDCEA2
	.incbin "sounds/gUnk_08DDCEA2_4.bin"
	.4byte gUnk_08DDCE99
	.incbin "sounds/gUnk_08DDCEA2_5.bin"
	.4byte gUnk_08DDCE91
	.incbin "sounds/gUnk_08DDCEA2_6.bin"
bgmMinishCap:: @ 08DDCF28
	sound_header 7 0 0 0xb2 voicegroup051 bgmMinishCap_track0 bgmMinishCap_track1 bgmMinishCap_track2 bgmMinishCap_track3 bgmMinishCap_track4 bgmMinishCap_track5 bgmMinishCap_track6

bgmMtCrenel_track0:: @ 08DDCF4C
	.incbin "sounds/bgmMtCrenel_track0.bin"
gUnk_08DDCF5B:: @ 08DDCF5B
	.incbin "sounds/gUnk_08DDCF5B.bin"
	.4byte gUnk_08DDCF5B
	.incbin "sounds/gUnk_08DDCF5B_1.bin"
bgmMtCrenel_track1:: @ 08DDD037
	.incbin "sounds/bgmMtCrenel_track1.bin"
gUnk_08DDD04D:: @ 08DDD04D
	.incbin "sounds/gUnk_08DDD04D.bin"
gUnk_08DDD05D:: @ 08DDD05D
	.incbin "sounds/gUnk_08DDD05D.bin"
	.4byte gUnk_08DDD05D
gUnk_08DDD072:: @ 08DDD072
	.incbin "sounds/gUnk_08DDD072.bin"
gUnk_08DDD089:: @ 08DDD089
	.incbin "sounds/gUnk_08DDD089.bin"
	.4byte gUnk_08DDD089
	.incbin "sounds/gUnk_08DDD089_1.bin"
	.4byte gUnk_08DDD089
	.incbin "sounds/gUnk_08DDD089_2.bin"
	.4byte gUnk_08DDD089
	.incbin "sounds/gUnk_08DDD089_3.bin"
	.4byte gUnk_08DDD089
	.incbin "sounds/gUnk_08DDD089_4.bin"
	.4byte gUnk_08DDD089
	.incbin "sounds/gUnk_08DDD089_5.bin"
	.4byte gUnk_08DDD089
	.incbin "sounds/gUnk_08DDD089_6.bin"
	.4byte gUnk_08DDD04D
	.incbin "sounds/gUnk_08DDD089_7.bin"
	.4byte gUnk_08DDD04D
	.incbin "sounds/gUnk_08DDD089_8.bin"
	.4byte gUnk_08DDD05D
	.incbin "sounds/gUnk_08DDD089_9.bin"
	.4byte gUnk_08DDD05D
	.incbin "sounds/gUnk_08DDD089_10.bin"
	.4byte gUnk_08DDD04D
	.incbin "sounds/gUnk_08DDD089_11.bin"
	.4byte gUnk_08DDD04D
	.incbin "sounds/gUnk_08DDD089_12.bin"
	.4byte gUnk_08DDD04D
	.incbin "sounds/gUnk_08DDD089_13.bin"
	.4byte gUnk_08DDD072
	.incbin "sounds/gUnk_08DDD089_14.bin"
bgmMtCrenel_track2:: @ 08DDD111
	.incbin "sounds/bgmMtCrenel_track2.bin"
gUnk_08DDD122:: @ 08DDD122
	.incbin "sounds/gUnk_08DDD122.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD122_1.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD122_2.bin"
gUnk_08DDD138:: @ 08DDD138
	.incbin "sounds/gUnk_08DDD138.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_1.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_2.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_3.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_4.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_5.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_6.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_7.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_8.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_9.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_10.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_11.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_12.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_13.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_14.bin"
	.4byte gUnk_08DDD122
	.incbin "sounds/gUnk_08DDD138_15.bin"
	.4byte gUnk_08DDD138
	.incbin "sounds/gUnk_08DDD138_16.bin"
bgmMtCrenel_track3:: @ 08DDD196
	.incbin "sounds/bgmMtCrenel_track3.bin"
gUnk_08DDD1A6:: @ 08DDD1A6
	.incbin "sounds/gUnk_08DDD1A6.bin"
gUnk_08DDD1B0:: @ 08DDD1B0
	.incbin "sounds/gUnk_08DDD1B0.bin"
	.4byte gUnk_08DDD1B0
gUnk_08DDD1BF:: @ 08DDD1BF
	.incbin "sounds/gUnk_08DDD1BF.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1BF_1.bin"
	.4byte gUnk_08DDD1B0
	.incbin "sounds/gUnk_08DDD1BF_2.bin"
	.4byte gUnk_08DDD1B0
	.incbin "sounds/gUnk_08DDD1BF_3.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1BF_4.bin"
	.4byte gUnk_08DDD1A6
gUnk_08DDD1E1:: @ 08DDD1E1
	.incbin "sounds/gUnk_08DDD1E1.bin"
	.4byte gUnk_08DDD1E1
	.incbin "sounds/gUnk_08DDD1E1_1.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1E1_2.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1E1_3.bin"
	.4byte gUnk_08DDD1B0
	.incbin "sounds/gUnk_08DDD1E1_4.bin"
	.4byte gUnk_08DDD1B0
	.incbin "sounds/gUnk_08DDD1E1_5.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1E1_6.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1E1_7.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1E1_8.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1E1_9.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1E1_10.bin"
	.4byte gUnk_08DDD1A6
	.incbin "sounds/gUnk_08DDD1E1_11.bin"
	.4byte gUnk_08DDD1BF
	.incbin "sounds/gUnk_08DDD1E1_12.bin"
bgmMtCrenel_track4:: @ 08DDD234
	.incbin "sounds/bgmMtCrenel_track4.bin"
gUnk_08DDD23F:: @ 08DDD23F
	.incbin "sounds/gUnk_08DDD23F.bin"
	.4byte gUnk_08DDD23F
	.incbin "sounds/gUnk_08DDD23F_1.bin"
bgmMtCrenel_track5:: @ 08DDD33E
	.incbin "sounds/bgmMtCrenel_track5.bin"
gUnk_08DDD35D:: @ 08DDD35D
	.incbin "sounds/gUnk_08DDD35D.bin"
gUnk_08DDD380:: @ 08DDD380
	.incbin "sounds/gUnk_08DDD380.bin"
	.4byte gUnk_08DDD35D
gUnk_08DDD39E:: @ 08DDD39E
	.incbin "sounds/gUnk_08DDD39E.bin"
	.4byte gUnk_08DDD35D
	.incbin "sounds/gUnk_08DDD39E_1.bin"
	.4byte gUnk_08DDD380
	.incbin "sounds/gUnk_08DDD39E_2.bin"
	.4byte gUnk_08DDD35D
	.incbin "sounds/gUnk_08DDD39E_3.bin"
	.4byte gUnk_08DDD380
	.incbin "sounds/gUnk_08DDD39E_4.bin"
	.4byte gUnk_08DDD35D
	.incbin "sounds/gUnk_08DDD39E_5.bin"
	.4byte gUnk_08DDD380
	.incbin "sounds/gUnk_08DDD39E_6.bin"
	.4byte gUnk_08DDD35D
	.incbin "sounds/gUnk_08DDD39E_7.bin"
	.4byte gUnk_08DDD380
gUnk_08DDD3DE:: @ 08DDD3DE
	.incbin "sounds/gUnk_08DDD3DE.bin"
	.4byte gUnk_08DDD380
	.incbin "sounds/gUnk_08DDD3DE_1.bin"
	.4byte gUnk_08DDD3DE
	.incbin "sounds/gUnk_08DDD3DE_2.bin"
	.4byte gUnk_08DDD380
	.incbin "sounds/gUnk_08DDD3DE_3.bin"
	.4byte gUnk_08DDD35D
	.incbin "sounds/gUnk_08DDD3DE_4.bin"
	.4byte gUnk_08DDD380
	.incbin "sounds/gUnk_08DDD3DE_5.bin"
	.4byte gUnk_08DDD35D
	.incbin "sounds/gUnk_08DDD3DE_6.bin"
	.4byte gUnk_08DDD35D
	.incbin "sounds/gUnk_08DDD3DE_7.bin"
	.4byte gUnk_08DDD39E
	.incbin "sounds/gUnk_08DDD3DE_8.bin"
bgmMtCrenel_track6:: @ 08DDD454
	.incbin "sounds/bgmMtCrenel_track6.bin"
gUnk_08DDD470:: @ 08DDD470
	.incbin "sounds/gUnk_08DDD470.bin"
gUnk_08DDD47D:: @ 08DDD47D
	.incbin "sounds/gUnk_08DDD47D.bin"
gUnk_08DDD48B:: @ 08DDD48B
	.incbin "sounds/gUnk_08DDD48B.bin"
gUnk_08DDD4A1:: @ 08DDD4A1
	.incbin "sounds/gUnk_08DDD4A1.bin"
	.4byte gUnk_08DDD470
	.incbin "sounds/gUnk_08DDD4A1_1.bin"
	.4byte gUnk_08DDD47D
	.incbin "sounds/gUnk_08DDD4A1_2.bin"
	.4byte gUnk_08DDD48B
	.incbin "sounds/gUnk_08DDD4A1_3.bin"
	.4byte gUnk_08DDD4A1
	.incbin "sounds/gUnk_08DDD4A1_4.bin"
bgmMtCrenel:: @ 08DDD510
	sound_header 7 0 0 0xb2 voicegroup052 bgmMtCrenel_track0 bgmMtCrenel_track1 bgmMtCrenel_track2 bgmMtCrenel_track3 bgmMtCrenel_track4 bgmMtCrenel_track5 bgmMtCrenel_track6

.include "sounds/bgmPicoriFestival.s"
.include "sounds/bgmLostWoods.s"
.include "sounds/bgmFairyFountain2.s"

bgmWindRuins_track0:: @ 08DDE848
	.incbin "sounds/bgmWindRuins_track0.bin"
gUnk_08DDE85B:: @ 08DDE85B
	.incbin "sounds/gUnk_08DDE85B.bin"
gUnk_08DDE862:: @ 08DDE862
	.incbin "sounds/gUnk_08DDE862.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_1.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_2.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_3.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_4.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_5.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_6.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_7.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_8.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_9.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_10.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_11.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_12.bin"
	.4byte gUnk_08DDE85B
	.incbin "sounds/gUnk_08DDE862_13.bin"
	.4byte gUnk_08DDE862
	.incbin "sounds/gUnk_08DDE862_14.bin"
bgmWindRuins_track1:: @ 08DDE8CE
	.incbin "sounds/bgmWindRuins_track1.bin"
gUnk_08DDE8D9:: @ 08DDE8D9
	.incbin "sounds/gUnk_08DDE8D9.bin"
gUnk_08DDE8DF:: @ 08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_1.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_2.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_3.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_4.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_5.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_6.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_7.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_8.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_9.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_10.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_11.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_12.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_13.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_14.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_15.bin"
	.4byte gUnk_08DDE8DF
	.incbin "sounds/gUnk_08DDE8DF_16.bin"
	.4byte gUnk_08DDE8D9
	.incbin "sounds/gUnk_08DDE8DF_17.bin"
bgmWindRuins_track2:: @ 08DDE95A
	.incbin "sounds/bgmWindRuins_track2.bin"
gUnk_08DDE967:: @ 08DDE967
	.incbin "sounds/gUnk_08DDE967.bin"
	.4byte gUnk_08DDE967
	.incbin "sounds/gUnk_08DDE967_1.bin"
bgmWindRuins_track3:: @ 08DDE998
	.incbin "sounds/bgmWindRuins_track3.bin"
gUnk_08DDE9A3:: @ 08DDE9A3
	.incbin "sounds/gUnk_08DDE9A3.bin"
	.4byte gUnk_08DDE9A3
	.incbin "sounds/gUnk_08DDE9A3_1.bin"
bgmWindRuins_track4:: @ 08DDE9F4
	.incbin "sounds/bgmWindRuins_track4.bin"
gUnk_08DDEA2A:: @ 08DDEA2A
	.incbin "sounds/gUnk_08DDEA2A.bin"
gUnk_08DDEA8D:: @ 08DDEA8D
	.incbin "sounds/gUnk_08DDEA8D.bin"
gUnk_08DDEAB4:: @ 08DDEAB4
	.incbin "sounds/gUnk_08DDEAB4.bin"
	.4byte gUnk_08DDEAB4
	.incbin "sounds/gUnk_08DDEAB4_1.bin"
	.4byte gUnk_08DDEA8D
	.incbin "sounds/gUnk_08DDEAB4_2.bin"
	.4byte gUnk_08DDEA8D
	.incbin "sounds/gUnk_08DDEAB4_3.bin"
	.4byte gUnk_08DDEAB4
	.incbin "sounds/gUnk_08DDEAB4_4.bin"
	.4byte gUnk_08DDEAB4
	.incbin "sounds/gUnk_08DDEAB4_5.bin"
	.4byte gUnk_08DDEA2A
	.incbin "sounds/gUnk_08DDEAB4_6.bin"
bgmWindRuins_track5:: @ 08DDEB1C
	.incbin "sounds/bgmWindRuins_track5.bin"
gUnk_08DDEB4B:: @ 08DDEB4B
	.incbin "sounds/gUnk_08DDEB4B.bin"
	.4byte gUnk_08DDEB4B
	.incbin "sounds/gUnk_08DDEB4B_1.bin"
bgmWindRuins_track6:: @ 08DDEBE9
	.incbin "sounds/bgmWindRuins_track6.bin"
gUnk_08DDEBF3:: @ 08DDEBF3
	.incbin "sounds/gUnk_08DDEBF3.bin"
	.4byte gUnk_08DDEBF3
	.incbin "sounds/gUnk_08DDEBF3_1.bin"
bgmWindRuins:: @ 08DDEC38
	sound_header 7 0 0 0xa8 voicegroup056 bgmWindRuins_track0 bgmWindRuins_track1 bgmWindRuins_track2 bgmWindRuins_track3 bgmWindRuins_track4 bgmWindRuins_track5 bgmWindRuins_track6

.include "sounds/bgmLearnScroll.s"
.include "sounds/bgmEzloGet.s"

.include "sounds/sfxBeep.s"
.include "sounds/sfxTextboxOpen.s"
.include "sounds/sfxTextboxClose.s"
.include "sounds/sfxTextboxNext.s"
.include "sounds/sfxTextboxSwap.s"
.include "sounds/sfxTextboxChoice.s"
.include "sounds/sfxTextboxSelect.s"
.include "sounds/sfx6B.s"
.include "sounds/sfxMenuCancel.s"
.include "sounds/sfxMenuError.s"
.include "sounds/sfxRupeeBounce.s"
.include "sounds/sfxRupeeGet.s"
.include "sounds/sfxHeartBounce.s"
.include "sounds/sfxHeartGet.s"
.include "sounds/sfxSecret.s"
.include "sounds/sfxSecretBig.s"
.include "sounds/sfxMetalClink.s"
.include "sounds/sfxPlyVo1.s"
.include "sounds/sfxPlyVo2.s"
.include "sounds/sfxPlyVo3.s"
.include "sounds/sfxPlyVo4.s"
.include "sounds/sfxPlyVo5.s"
.include "sounds/sfxPlyVo6.s"
.include "sounds/sfxPlyVo7.s"
.include "sounds/sfxPlyJump.s"
.include "sounds/sfxPlyLand.s"
.include "sounds/sfx7E.s"
.include "sounds/sfxPlyLift.s"
.include "sounds/sfx80.s"
.include "sounds/sfx81.s"
.include "sounds/sfx82.s"
.include "sounds/sfxWaterWalk.s"
.include "sounds/sfxWaterSplash.s"
.include "sounds/sfxFallHole.s"
.include "sounds/sfx86.s"
.include "sounds/sfxPlyDie.s"
.include "sounds/sfx88.s"
.include "sounds/sfxBarrelRelease.s"
.include "sounds/sfxBarrelEnter.s"
.include "sounds/sfxBarrelRoll.s"
.include "sounds/sfxBarrelRollStop.s"
.include "sounds/sfxVoEzlo1.s"
.include "sounds/sfxVoEzlo2.s"
.include "sounds/sfxVoEzlo3.s"
.include "sounds/sfxVoEzlo4.s"
.include "sounds/sfxVoEzlo5.s"
.include "sounds/sfxVoEzlo6.s"
.include "sounds/sfxVoEzlo7.s"
.include "sounds/sfxVoZelda1.s"
.include "sounds/sfxVoZelda2.s"
.include "sounds/sfxVoZelda3.s"
.include "sounds/sfxVoZelda4.s"
.include "sounds/sfxVoZelda5.s"
.include "sounds/sfxVoZelda6.s"
.include "sounds/sfxVoZelda7.s"
.include "sounds/sfx9B.s"
.include "sounds/sfx9C.s"
.include "sounds/sfx9D.s"
.include "sounds/sfx9E.s"
.include "sounds/sfx9F.s"
.include "sounds/sfxA0.s"
.include "sounds/sfxVoTingle1.s"
.include "sounds/sfxVoTingle2.s"
.include "sounds/sfxVoKing1.s"
.include "sounds/sfxVoKing2.s"
.include "sounds/sfxVoKing3.s"
.include "sounds/sfxVoKing4.s"
.include "sounds/sfxVoKing5.s"
.include "sounds/sfxA8.s"
.include "sounds/sfxA9.s"
.include "sounds/sfxAA.s"
.include "sounds/sfxSpiritsRelease.s"
.include "sounds/sfxAC.s"
.include "sounds/sfxVoBeedle.s"
.include "sounds/sfxAE.s"
.include "sounds/sfxAF.s"
.include "sounds/sfxB0.s"
.include "sounds/sfxMinish1.s"
.include "sounds/sfxMinish2.s"
.include "sounds/sfxMinish3.s"
.include "sounds/sfxMinish4.s"
.include "sounds/sfxB5.s"
.include "sounds/sfxB6.s"
.include "sounds/sfxB7.s"
.include "sounds/sfxB8.s"
.include "sounds/sfxB9.s"
.include "sounds/sfxBA.s"
.include "sounds/sfxBB.s"
.include "sounds/sfxBC.s"
.include "sounds/sfxBD.s"
.include "sounds/sfxBE.s"
.include "sounds/sfxBF.s"
.include "sounds/sfxC0.s"
.include "sounds/sfxC1.s"
.include "sounds/sfxC2.s"
.include "sounds/sfxC3.s"
.include "sounds/sfxC4.s"
.include "sounds/sfxC5.s"
.include "sounds/sfxC6.s"
.include "sounds/sfxC7.s"
.include "sounds/sfxC8.s"
.include "sounds/sfxC9.s"
.include "sounds/sfxCA.s"
.include "sounds/sfxCB.s"
.include "sounds/sfxRemSleep.s"
.include "sounds/sfxTaskComplete.s"
.include "sounds/sfxKeyAppear.s"
.include "sounds/sfxCF.s"
.include "sounds/sfxD0.s"
.include "sounds/sfxVoDog.s"
.include "sounds/sfxVoCat.s"
.include "sounds/sfxVoEpona.s"
.include "sounds/sfxVoCow.s"
.include "sounds/sfxVoCuccoCall.s"
.include "sounds/sfxVoCheep.s"
.include "sounds/sfxItemSwordCharge.s"
.include "sounds/sfxItemSwordChargeFinish.s"
.include "sounds/sfxD9.s"
.include "sounds/sfxDA.s"
.include "sounds/sfxVoSturgeon.s"
.include "sounds/sfxHammer1.s"
.include "sounds/sfxHammer2.s"
.include "sounds/sfxHammer3.s"
.include "sounds/sfxHammer4.s"
.include "sounds/sfxHammer5.s"
.include "sounds/sfxHammer6.s"
.include "sounds/sfxCuccoMinigameBell.s"
.include "sounds/sfxE3.s"
.include "sounds/sfxE4.s"
.include "sounds/sfxButtonDepress.s"
.include "sounds/sfxThudHeavy.s"
.include "sounds/sfxWind1.s"
.include "sounds/sfxWind2.s"
.include "sounds/sfxWind3.s"
.include "sounds/sfxEA.s"
.include "sounds/sfxEB.s"
.include "sounds/sfxEC.s"
.include "sounds/sfxED.s"
.include "sounds/sfxEE.s"
.include "sounds/sfxEF.s"
.include "sounds/sfxF0.s"
.include "sounds/sfxF1.s"
.include "sounds/sfxF2.s"
.include "sounds/sfxF3.s"
.include "sounds/sfxSummon.s"
.include "sounds/sfxF5.s"
.include "sounds/sfxEvaporate.s"
.include "sounds/sfxApparate.s"
.include "sounds/sfxF8.s"
.include "sounds/sfxTeleporter.s"
.include "sounds/sfxFA.s"
.include "sounds/sfxFB.s"
.include "sounds/sfxFC.s"
.include "sounds/sfxItemBombExplode.s"
.include "sounds/sfxHit.s"
.include "sounds/sfxFF.s"
.include "sounds/sfx100.s"
.include "sounds/sfx101.s"
.include "sounds/sfx102.s"
.include "sounds/sfx103.s"
.include "sounds/sfx104.s"
.include "sounds/sfx105.s"
.include "sounds/sfx106.s"
.include "sounds/sfx107.s"
.include "sounds/sfx108.s"
.include "sounds/sfx109.s"
.include "sounds/sfx10A.s"
.include "sounds/sfx10B.s"
.include "sounds/sfx10C.s"
.include "sounds/sfx10D.s"
.include "sounds/sfx10E.s"
.include "sounds/sfx10F.s"
.include "sounds/sfx110.s"
.include "sounds/sfx111.s"
.include "sounds/sfx112.s"
.include "sounds/sfx113.s"
.include "sounds/sfx114.s"
.include "sounds/sfx115.s"
.include "sounds/sfx116.s"
.include "sounds/sfx117.s"
.include "sounds/sfxItemShieldBounce.s"
.include "sounds/sfxItemGlovesKnockback.s"
.include "sounds/sfxEmArmosOn.s"
.include "sounds/sfx11B.s"
.include "sounds/sfx11C.s"
.include "sounds/sfx11D.s"
.include "sounds/sfxEmMoblinSpear.s"
.include "sounds/sfxLowHealth.s"
.include "sounds/sfxChargingUp.s"
.include "sounds/sfxStairs.s"
.include "sounds/sfx122.s"
.include "sounds/sfx123.s"
.include "sounds/sfx124.s"
.include "sounds/sfx125.s"
.include "sounds/sfx126.s"
.include "sounds/sfxBossHit.s"
.include "sounds/sfxBossDie.s"
.include "sounds/sfxBossExplode.s"
.include "sounds/sfx12A.s"
.include "sounds/sfx12B.s"
.include "sounds/sfx12C.s"
.include "sounds/sfx12D.s"
.include "sounds/sfx12E.s"
.include "sounds/sfx12F.s"
.include "sounds/sfx130.s"
.include "sounds/sfx131.s"
.include "sounds/sfx132.s"
.include "sounds/sfx133.s"
.include "sounds/sfx134.s"
.include "sounds/sfx135.s"
.include "sounds/sfx136.s"
.include "sounds/sfx137.s"
.include "sounds/sfx138.s"
.include "sounds/sfx139.s"
.include "sounds/sfx13A.s"
.include "sounds/sfx13B.s"
.include "sounds/sfx13C.s"
.include "sounds/sfxItemLanternOn.s"
.include "sounds/sfxItemLanternOff.s"
.include "sounds/sfxItemSwordBeam.s"
.include "sounds/sfx140.s"
.include "sounds/sfxHeartContainerSpawn.s"
.include "sounds/sfxSparkles.s"
.include "sounds/sfx143.s"
.include "sounds/sfx144.s"
.include "sounds/sfx145.s"
.include "sounds/sfx146.s"
.include "sounds/sfx147.s"
.include "sounds/sfx148.s"
.include "sounds/sfx149.s"
.include "sounds/sfx14A.s"
.include "sounds/sfx14B.s"
.include "sounds/sfx14C.s"
.include "sounds/sfx14D.s"
.include "sounds/sfx14E.s"
.include "sounds/sfx14F.s"
.include "sounds/sfx150.s"
.include "sounds/sfx151.s"
.include "sounds/sfx152.s"
.include "sounds/sfx153.s"
.include "sounds/sfx154.s"
.include "sounds/sfx155.s"
.include "sounds/sfx156.s"
.include "sounds/sfx157.s"
.include "sounds/sfx158.s"
.include "sounds/sfx159.s"
.include "sounds/sfx15A.s"
.include "sounds/sfx15B.s"
.include "sounds/sfx15C.s"
.include "sounds/sfx15D.s"
.include "sounds/sfx15E.s"
.include "sounds/sfx15F.s"
.include "sounds/sfx160.s"
.include "sounds/sfx161.s"
.include "sounds/sfx162.s"
.include "sounds/sfx163.s"
.include "sounds/sfx164.s"
.include "sounds/sfx165.s"
.include "sounds/sfx166.s"
.include "sounds/sfx167.s"
.include "sounds/sfx168.s"
.include "sounds/sfx169.s"
.include "sounds/sfx16A.s"
.include "sounds/sfx16B.s"
.include "sounds/sfx16C.s"
.include "sounds/sfx16D.s"
.include "sounds/sfx16E.s"
.include "sounds/sfxPlyShrinking.s"
.include "sounds/sfxPlyGrow.s"
.include "sounds/sfx171.s"
.include "sounds/sfx172.s"
.include "sounds/sfxEzloUi.s"
.include "sounds/sfx174.s"
.include "sounds/sfx175.s"
.include "sounds/sfx176.s"
.include "sounds/sfx177.s"
.include "sounds/sfx178.s"
.include "sounds/sfx179.s"
.include "sounds/sfx17A.s"
.include "sounds/sfxLavaTitleStep.s"
.include "sounds/sfxLavaTitleWobble.s"
.include "sounds/sfxLavaTitleSink.s"
.include "sounds/sfxLavaTitleFlip.s"
.include "sounds/sfxLavaTitleLand.s"
.include "sounds/sfx180.s"
.include "sounds/sfx181.s"
.include "sounds/sfx182.s"
.include "sounds/sfx183.s"
.include "sounds/sfx184.s"
.include "sounds/sfx185.s"
.include "sounds/sfx186.s"
.include "sounds/sfxStairsAscend.s"
.include "sounds/sfxStairsDescend.s"
.include "sounds/sfx189.s"
.include "sounds/sfx18A.s"
.include "sounds/sfx18B.s"
.include "sounds/sfx18C.s"
.include "sounds/sfx18D.s"
.include "sounds/sfx18E.s"
.include "sounds/sfx18F.s"
.include "sounds/sfx190.s"
.include "sounds/sfx191.s"
.include "sounds/sfx192.s"
.include "sounds/sfx193.s"
.include "sounds/sfx194.s"
.include "sounds/sfx195.s"
.include "sounds/sfx196.s"
.include "sounds/sfx197.s"
.include "sounds/sfx198.s"
.include "sounds/sfx199.s"
.include "sounds/sfx19A.s"
.include "sounds/sfx19B.s"
.include "sounds/sfx19C.s"
.include "sounds/sfx19D.s"
.include "sounds/sfx19E.s"
.include "sounds/sfx19F.s"
.include "sounds/sfx1A0.s"
.include "sounds/sfx1A1.s"
.include "sounds/sfx1A2.s"
.include "sounds/sfx1A3.s"
.include "sounds/sfx1A4.s"
.include "sounds/sfx1A5.s"
.include "sounds/sfx1A6.s"
.include "sounds/sfx1A7.s"
.include "sounds/sfx1A8.s"
.include "sounds/sfx1A9.s"
.include "sounds/sfx1AA.s"
.include "sounds/sfx1AB.s"
.include "sounds/sfx1AC.s"
.include "sounds/sfx1AD.s"
.include "sounds/sfx1AE.s"
.include "sounds/sfx1AF.s"
.include "sounds/sfx1B0.s"
.include "sounds/sfxIceBlockSlide.s"
.include "sounds/sfxIceBlockStop.s"
.include "sounds/sfxIceBlockMelt.s"
.include "sounds/sfx1B4.s"
.include "sounds/sfx1B5.s"
.include "sounds/sfx1B6.s"
.include "sounds/sfxVoGoron1.s"
.include "sounds/sfxVoGoron2.s"
.include "sounds/sfxVoGoron3.s"
.include "sounds/sfxVoGoron4.s"
.include "sounds/sfxEmDekuscrubHit.s"
.include "sounds/sfx1BC.s"
.include "sounds/sfx1BD.s"
.include "sounds/sfx1BE.s"
.include "sounds/sfx1BF.s"
.include "sounds/sfx1C0.s"
.include "sounds/sfx1C1.s"
.include "sounds/sfx1C2.s"
.include "sounds/sfx1C3.s"
.include "sounds/sfx1C4.s"
.include "sounds/sfx1C5.s"
.include "sounds/sfx1C6.s"
.include "sounds/sfx1C7.s"
.include "sounds/sfx1C8.s"
.include "sounds/sfx1C9.s"
.include "sounds/sfx1CA.s"
.include "sounds/sfx1CB.s"
.include "sounds/sfx1CC.s"
.include "sounds/sfxElementPlace.s"
.include "sounds/sfxElementFloat.s"
.include "sounds/sfxElementCharge.s"
.include "sounds/sfx1D0.s"
.include "sounds/sfxElementInfuse.s"
.include "sounds/sfx1D2.s"
.include "sounds/sfx1D3.s"
.include "sounds/sfx1D4.s"
.include "sounds/sfx1D5.s"
.include "sounds/sfxVoCucco1.s"
.include "sounds/sfxVoCucco2.s"
.include "sounds/sfxVoCucco3.s"
.include "sounds/sfxVoCucco4.s"
.include "sounds/sfxVoCucco5.s"
.include "sounds/sfx1DB.s"
.include "sounds/sfx1DC.s"
.include "sounds/sfx1DD.s"
.include "sounds/sfx1DE.s"
.include "sounds/sfx1DF.s"
.include "sounds/sfx1E0.s"
.include "sounds/sfx1E1.s"
.include "sounds/sfx1E2.s"
.include "sounds/sfx1E3.s"
.include "sounds/sfx1E4.s"
.include "sounds/sfx1E5.s"
.include "sounds/sfx1E6.s"
.include "sounds/sfx1E7.s"
.include "sounds/sfx1E8.s"
.include "sounds/sfx1E9.s"
.include "sounds/sfx1EA.s"
.include "sounds/sfx1EB.s"
.include "sounds/sfx1EC.s"
.include "sounds/sfx1ED.s"
.include "sounds/sfx1EE.s"
.include "sounds/sfx1EF.s"
.include "sounds/sfx1F0.s"
.include "sounds/sfx1F1.s"
.include "sounds/sfx1F2.s"
.include "sounds/sfx1F3.s"
.include "sounds/sfx1F4.s"
.include "sounds/sfx1F5.s"
.include "sounds/sfx1F6.s"
.include "sounds/sfx1F7.s"
.include "sounds/sfx1F8.s"
.include "sounds/sfx1F9.s"
.include "sounds/sfx1FA.s"
.include "sounds/sfx1FB.s"
.include "sounds/sfx1FC.s"
.include "sounds/sfx1FD.s"
.include "sounds/sfx1FE.s"
.include "sounds/sfx1FF.s"
.include "sounds/sfx200.s"
.include "sounds/sfx201.s"
.include "sounds/sfx202.s"
.include "sounds/sfx203.s"
.include "sounds/sfx204.s"
.include "sounds/sfx205.s"
.include "sounds/sfx206.s"
.include "sounds/sfx207.s"
.include "sounds/sfx208.s"
.include "sounds/sfx209.s"
.include "sounds/sfx20A.s"
.include "sounds/sfx20B.s"
.include "sounds/sfx20C.s"
.include "sounds/sfx20D.s"
.include "sounds/sfx20E.s"
.include "sounds/sfx20F.s"
.include "sounds/sfx210.s"
.include "sounds/sfx211.s"
.include "sounds/sfx212.s"
.include "sounds/sfx213.s"
.include "sounds/sfx214.s"
.include "sounds/sfx215.s"
.include "sounds/sfx216.s"
.include "sounds/sfx217.s"
.include "sounds/sfx218.s"
.include "sounds/sfx219.s"
.include "sounds/sfx21A.s"
.include "sounds/sfx21B.s"
.include "sounds/sfx21C.s"
.include "sounds/sfx21D.s"
.include "sounds/sfx21E.s"
.include "sounds/sfx21F.s"
.include "sounds/sfx220.s"
.include "sounds/sfx221.s"
