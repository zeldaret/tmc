.include "asm/macros/sounds.inc"
.section .rodata


sfxNone_track0:: @ 08DCC47C
	.incbin "assets/sounds/sfxNone_track0.bin"
sfxNone:: @ 08DCC48C
	sound_header 1 0 0xff 0x80 gUnk_089FC99C sfxNone_track0

bgmCastleTournament_track0:: @ 08DCC498
	.incbin "assets/sounds/bgmCastleTournament_track0.bin"
gUnk_08DCC4D6:: @ 08DCC4D6
	.incbin "assets/sounds/gUnk_08DCC4D6.bin"
	.4byte gUnk_08DCC4D6
	.incbin "assets/sounds/gUnk_08DCC4D6_1.bin"
bgmCastleTournament_track1:: @ 08DCC4F3
	.incbin "assets/sounds/bgmCastleTournament_track1.bin"
gUnk_08DCC524:: @ 08DCC524
	.incbin "assets/sounds/gUnk_08DCC524.bin"
	.4byte gUnk_08DCC524
	.incbin "assets/sounds/gUnk_08DCC524_1.bin"
bgmCastleTournament_track2:: @ 08DCC531
	.incbin "assets/sounds/bgmCastleTournament_track2.bin"
bgmCastleTournament_track3:: @ 08DCC568
	.incbin "assets/sounds/bgmCastleTournament_track3.bin"
gUnk_08DCC5A2:: @ 08DCC5A2
	.incbin "assets/sounds/gUnk_08DCC5A2.bin"
	.4byte gUnk_08DCC5A2
	.incbin "assets/sounds/gUnk_08DCC5A2_1.bin"
bgmCastleTournament_track4:: @ 08DCC5D5
	.incbin "assets/sounds/bgmCastleTournament_track4.bin"
gUnk_08DCC614:: @ 08DCC614
	.incbin "assets/sounds/gUnk_08DCC614.bin"
	.4byte gUnk_08DCC614
	.incbin "assets/sounds/gUnk_08DCC614_1.bin"
bgmCastleTournament_track5:: @ 08DCC635
	.incbin "assets/sounds/bgmCastleTournament_track5.bin"
gUnk_08DCC665:: @ 08DCC665
	.incbin "assets/sounds/gUnk_08DCC665.bin"
	.4byte gUnk_08DCC665
	.incbin "assets/sounds/gUnk_08DCC665_1.bin"
bgmCastleTournament_track6:: @ 08DCC6A6
	.incbin "assets/sounds/bgmCastleTournament_track6.bin"
gUnk_08DCC6BC:: @ 08DCC6BC
	.incbin "assets/sounds/gUnk_08DCC6BC.bin"
	.4byte gUnk_08DCC6BC
	.incbin "assets/sounds/gUnk_08DCC6BC_1.bin"
bgmCastleTournament:: @ 08DCC6CC
	sound_header 7 0 0 0x9e gUnk_089FC9FC bgmCastleTournament_track0 bgmCastleTournament_track1 bgmCastleTournament_track2 bgmCastleTournament_track3 bgmCastleTournament_track4 bgmCastleTournament_track5 bgmCastleTournament_track6

bgmVaatiMotif_track0:: @ 08DCC6F0
	.incbin "assets/sounds/bgmVaatiMotif_track0.bin"
bgmVaatiMotif_track1:: @ 08DCC728
	.incbin "assets/sounds/bgmVaatiMotif_track1.bin"
bgmVaatiMotif_track2:: @ 08DCC764
	.incbin "assets/sounds/bgmVaatiMotif_track2.bin"
bgmVaatiMotif_track3:: @ 08DCC7A0
	.incbin "assets/sounds/bgmVaatiMotif_track3.bin"
bgmVaatiMotif_track4:: @ 08DCC7DC
	.incbin "assets/sounds/bgmVaatiMotif_track4.bin"
bgmVaatiMotif_track5:: @ 08DCC818
	.incbin "assets/sounds/bgmVaatiMotif_track5.bin"
bgmVaatiMotif:: @ 08DCC844
	sound_header 6 0 0 0xa8 gUnk_089FCFFC bgmVaatiMotif_track0 bgmVaatiMotif_track1 bgmVaatiMotif_track2 bgmVaatiMotif_track3 bgmVaatiMotif_track4 bgmVaatiMotif_track5

bgmTitleScreen_track0:: @ 08DCC864
	.incbin "assets/sounds/bgmTitleScreen_track0.bin"
bgmTitleScreen_track1:: @ 08DCC898
	.incbin "assets/sounds/bgmTitleScreen_track1.bin"
bgmTitleScreen_track2:: @ 08DCC8C7
	.incbin "assets/sounds/bgmTitleScreen_track2.bin"
bgmTitleScreen_track3:: @ 08DCC902
	.incbin "assets/sounds/bgmTitleScreen_track3.bin"
bgmTitleScreen_track4:: @ 08DCC952
	.incbin "assets/sounds/bgmTitleScreen_track4.bin"
bgmTitleScreen_track5:: @ 08DCC98D
	.incbin "assets/sounds/bgmTitleScreen_track5.bin"
gUnk_08DCC994:: @ 08DCC994
	.incbin "assets/sounds/gUnk_08DCC994.bin"
	.4byte gUnk_08DCC994
	.incbin "assets/sounds/gUnk_08DCC994_1.bin"
bgmTitleScreen_track6:: @ 08DCC9AF
	.incbin "assets/sounds/bgmTitleScreen_track6.bin"
bgmTitleScreen:: @ 08DCC9F4
	sound_header 7 0 0 0xa8 gUnk_089FD5FC bgmTitleScreen_track0 bgmTitleScreen_track1 bgmTitleScreen_track2 bgmTitleScreen_track3 bgmTitleScreen_track4 bgmTitleScreen_track5 bgmTitleScreen_track6

bgmCastleMotif_track0:: @ 08DCCA18
	.incbin "assets/sounds/bgmCastleMotif_track0.bin"
bgmCastleMotif_track1:: @ 08DCCA56
	.incbin "assets/sounds/bgmCastleMotif_track1.bin"
bgmCastleMotif_track2:: @ 08DCCA8A
	.incbin "assets/sounds/bgmCastleMotif_track2.bin"
bgmCastleMotif_track3:: @ 08DCCAC2
	.incbin "assets/sounds/bgmCastleMotif_track3.bin"
bgmCastleMotif_track4:: @ 08DCCAFA
	.incbin "assets/sounds/bgmCastleMotif_track4.bin"
bgmCastleMotif:: @ 08DCCB3C
	sound_header 5 0 0 0xa8 gUnk_089FDBFC bgmCastleMotif_track0 bgmCastleMotif_track1 bgmCastleMotif_track2 bgmCastleMotif_track3 bgmCastleMotif_track4

bgmElementGet_track0:: @ 08DCCB58
	.incbin "assets/sounds/bgmElementGet_track0.bin"
bgmElementGet_track1:: @ 08DCCB90
	.incbin "assets/sounds/bgmElementGet_track1.bin"
bgmElementGet_track2:: @ 08DCCBA8
	.incbin "assets/sounds/bgmElementGet_track2.bin"
bgmElementGet_track3:: @ 08DCCBEC
	.incbin "assets/sounds/bgmElementGet_track3.bin"
bgmElementGet_track4:: @ 08DCCC4D
	.incbin "assets/sounds/bgmElementGet_track4.bin"
bgmElementGet_track5:: @ 08DCCC87
	.incbin "assets/sounds/bgmElementGet_track5.bin"
gUnk_08DCCC95:: @ 08DCCC95
	.incbin "assets/sounds/gUnk_08DCCC95.bin"
	.4byte gUnk_08DCCC95
	.incbin "assets/sounds/gUnk_08DCCC95_1.bin"
bgmElementGet_track6:: @ 08DCCCB1
	.incbin "assets/sounds/bgmElementGet_track6.bin"
bgmElementGet_track7:: @ 08DCCCC5
	.incbin "assets/sounds/bgmElementGet_track7.bin"
gUnk_08DCCCD7:: @ 08DCCCD7
	.incbin "assets/sounds/gUnk_08DCCCD7.bin"
	.4byte gUnk_08DCCCD7
	.incbin "assets/sounds/gUnk_08DCCCD7_1.bin"
bgmElementGet_track8:: @ 08DCCCFA
	.incbin "assets/sounds/bgmElementGet_track8.bin"
bgmElementGet:: @ 08DCCD40
	sound_header 9 0 0 0xa8 gUnk_089FDDF4 bgmElementGet_track0 bgmElementGet_track1 bgmElementGet_track2 bgmElementGet_track3 bgmElementGet_track4 bgmElementGet_track5 bgmElementGet_track6 bgmElementGet_track7 bgmElementGet_track8

bgmFairyFountain_track0:: @ 08DCCD6C
	.incbin "assets/sounds/bgmFairyFountain_track0.bin"
gUnk_08DCCD9C:: @ 08DCCD9C
	.incbin "assets/sounds/gUnk_08DCCD9C.bin"
gUnk_08DCCDA2:: @ 08DCCDA2
	.incbin "assets/sounds/gUnk_08DCCDA2.bin"
gUnk_08DCCDB1:: @ 08DCCDB1
	.incbin "assets/sounds/gUnk_08DCCDB1.bin"
gUnk_08DCCDC4:: @ 08DCCDC4
	.incbin "assets/sounds/gUnk_08DCCDC4.bin"
	.4byte gUnk_08DCCDA2
	.incbin "assets/sounds/gUnk_08DCCDC4_1.bin"
	.4byte gUnk_08DCCDC4
	.incbin "assets/sounds/gUnk_08DCCDC4_2.bin"
	.4byte gUnk_08DCCDB1
	.incbin "assets/sounds/gUnk_08DCCDC4_3.bin"
	.4byte gUnk_08DCCD9C
	.incbin "assets/sounds/gUnk_08DCCDC4_4.bin"
bgmFairyFountain_track1:: @ 08DCCDF2
	.incbin "assets/sounds/bgmFairyFountain_track1.bin"
gUnk_08DCCE0D:: @ 08DCCE0D
	.incbin "assets/sounds/gUnk_08DCCE0D.bin"
gUnk_08DCCE14:: @ 08DCCE14
	.incbin "assets/sounds/gUnk_08DCCE14.bin"
gUnk_08DCCE1C:: @ 08DCCE1C
	.incbin "assets/sounds/gUnk_08DCCE1C.bin"
	.4byte gUnk_08DCCE1C
gUnk_08DCCE29:: @ 08DCCE29
	.incbin "assets/sounds/gUnk_08DCCE29.bin"
	.4byte gUnk_08DCCE29
gUnk_08DCCE36:: @ 08DCCE36
	.incbin "assets/sounds/gUnk_08DCCE36.bin"
	.4byte gUnk_08DCCE36
	.incbin "assets/sounds/gUnk_08DCCE36_1.bin"
	.4byte gUnk_08DCCE14
	.incbin "assets/sounds/gUnk_08DCCE36_2.bin"
	.4byte gUnk_08DCCE14
gUnk_08DCCE4D:: @ 08DCCE4D
	.incbin "assets/sounds/gUnk_08DCCE4D.bin"
	.4byte gUnk_08DCCE4D
	.incbin "assets/sounds/gUnk_08DCCE4D_1.bin"
	.4byte gUnk_08DCCE14
	.incbin "assets/sounds/gUnk_08DCCE4D_2.bin"
	.4byte gUnk_08DCCE14
	.incbin "assets/sounds/gUnk_08DCCE4D_3.bin"
	.4byte gUnk_08DCCE29
	.incbin "assets/sounds/gUnk_08DCCE4D_4.bin"
	.4byte gUnk_08DCCE29
	.incbin "assets/sounds/gUnk_08DCCE4D_5.bin"
	.4byte gUnk_08DCCE0D
	.incbin "assets/sounds/gUnk_08DCCE4D_6.bin"
bgmFairyFountain_track2:: @ 08DCCE74
	.incbin "assets/sounds/bgmFairyFountain_track2.bin"
gUnk_08DCCE91:: @ 08DCCE91
	.incbin "assets/sounds/gUnk_08DCCE91.bin"
gUnk_08DCCE98:: @ 08DCCE98
	.incbin "assets/sounds/gUnk_08DCCE98.bin"
gUnk_08DCCEA0:: @ 08DCCEA0
	.incbin "assets/sounds/gUnk_08DCCEA0.bin"
	.4byte gUnk_08DCCEA0
gUnk_08DCCEAD:: @ 08DCCEAD
	.incbin "assets/sounds/gUnk_08DCCEAD.bin"
	.4byte gUnk_08DCCEAD
gUnk_08DCCEBA:: @ 08DCCEBA
	.incbin "assets/sounds/gUnk_08DCCEBA.bin"
	.4byte gUnk_08DCCEBA
	.incbin "assets/sounds/gUnk_08DCCEBA_1.bin"
	.4byte gUnk_08DCCE98
	.incbin "assets/sounds/gUnk_08DCCEBA_2.bin"
	.4byte gUnk_08DCCE98
gUnk_08DCCED1:: @ 08DCCED1
	.incbin "assets/sounds/gUnk_08DCCED1.bin"
	.4byte gUnk_08DCCED1
	.incbin "assets/sounds/gUnk_08DCCED1_1.bin"
	.4byte gUnk_08DCCE98
	.incbin "assets/sounds/gUnk_08DCCED1_2.bin"
	.4byte gUnk_08DCCE98
	.incbin "assets/sounds/gUnk_08DCCED1_3.bin"
	.4byte gUnk_08DCCEAD
	.incbin "assets/sounds/gUnk_08DCCED1_4.bin"
	.4byte gUnk_08DCCEAD
	.incbin "assets/sounds/gUnk_08DCCED1_5.bin"
	.4byte gUnk_08DCCE91
	.incbin "assets/sounds/gUnk_08DCCED1_6.bin"
bgmFairyFountain_track3:: @ 08DCCEF8
	.incbin "assets/sounds/bgmFairyFountain_track3.bin"
gUnk_08DCCF15:: @ 08DCCF15
	.incbin "assets/sounds/gUnk_08DCCF15.bin"
gUnk_08DCCF1C:: @ 08DCCF1C
	.incbin "assets/sounds/gUnk_08DCCF1C.bin"
gUnk_08DCCF24:: @ 08DCCF24
	.incbin "assets/sounds/gUnk_08DCCF24.bin"
	.4byte gUnk_08DCCF24
gUnk_08DCCF31:: @ 08DCCF31
	.incbin "assets/sounds/gUnk_08DCCF31.bin"
	.4byte gUnk_08DCCF31
gUnk_08DCCF3E:: @ 08DCCF3E
	.incbin "assets/sounds/gUnk_08DCCF3E.bin"
	.4byte gUnk_08DCCF3E
	.incbin "assets/sounds/gUnk_08DCCF3E_1.bin"
	.4byte gUnk_08DCCF1C
	.incbin "assets/sounds/gUnk_08DCCF3E_2.bin"
	.4byte gUnk_08DCCF1C
gUnk_08DCCF55:: @ 08DCCF55
	.incbin "assets/sounds/gUnk_08DCCF55.bin"
	.4byte gUnk_08DCCF55
	.incbin "assets/sounds/gUnk_08DCCF55_1.bin"
	.4byte gUnk_08DCCF1C
	.incbin "assets/sounds/gUnk_08DCCF55_2.bin"
	.4byte gUnk_08DCCF1C
	.incbin "assets/sounds/gUnk_08DCCF55_3.bin"
	.4byte gUnk_08DCCF31
	.incbin "assets/sounds/gUnk_08DCCF55_4.bin"
	.4byte gUnk_08DCCF31
	.incbin "assets/sounds/gUnk_08DCCF55_5.bin"
	.4byte gUnk_08DCCF15
	.incbin "assets/sounds/gUnk_08DCCF55_6.bin"
bgmFairyFountain_track4:: @ 08DCCF7D
	.incbin "assets/sounds/bgmFairyFountain_track4.bin"
gUnk_08DCCF9F:: @ 08DCCF9F
	.incbin "assets/sounds/gUnk_08DCCF9F.bin"
	.4byte gUnk_08DCCF9F
	.incbin "assets/sounds/gUnk_08DCCF9F_1.bin"
bgmFairyFountain_track5:: @ 08DCCFDC
	.incbin "assets/sounds/bgmFairyFountain_track5.bin"
gUnk_08DCCFE6:: @ 08DCCFE6
	.incbin "assets/sounds/gUnk_08DCCFE6.bin"
gUnk_08DCCFEC:: @ 08DCCFEC
	.incbin "assets/sounds/gUnk_08DCCFEC.bin"
gUnk_08DCCFFB:: @ 08DCCFFB
	.incbin "assets/sounds/gUnk_08DCCFFB.bin"
gUnk_08DCD00E:: @ 08DCD00E
	.incbin "assets/sounds/gUnk_08DCD00E.bin"
	.4byte gUnk_08DCCFEC
	.incbin "assets/sounds/gUnk_08DCD00E_1.bin"
	.4byte gUnk_08DCD00E
	.incbin "assets/sounds/gUnk_08DCD00E_2.bin"
	.4byte gUnk_08DCCFFB
	.incbin "assets/sounds/gUnk_08DCD00E_3.bin"
gUnk_08DCD040:: @ 08DCD040
	.incbin "assets/sounds/gUnk_08DCD040.bin"
gUnk_08DCD063:: @ 08DCD063
	.incbin "assets/sounds/gUnk_08DCD063.bin"
	.4byte gUnk_08DCD040
	.incbin "assets/sounds/gUnk_08DCD063_1.bin"
	.4byte gUnk_08DCD063
	.incbin "assets/sounds/gUnk_08DCD063_2.bin"
	.4byte gUnk_08DCCFE6
	.incbin "assets/sounds/gUnk_08DCD063_3.bin"
bgmFairyFountain_track6:: @ 08DCD09A
	.incbin "assets/sounds/bgmFairyFountain_track6.bin"
gUnk_08DCD0A4:: @ 08DCD0A4
	.incbin "assets/sounds/gUnk_08DCD0A4.bin"
	.4byte gUnk_08DCD0A4
	.incbin "assets/sounds/gUnk_08DCD0A4_1.bin"
bgmFairyFountain:: @ 08DCD0C8
	sound_header 7 0 0 0xb2 gUnk_089FE3F4 bgmFairyFountain_track0 bgmFairyFountain_track1 bgmFairyFountain_track2 bgmFairyFountain_track3 bgmFairyFountain_track4 bgmFairyFountain_track5 bgmFairyFountain_track6

bgmFileSelect_track0:: @ 08DCD0EC
	.incbin "assets/sounds/bgmFileSelect_track0.bin"
gUnk_08DCD0F7:: @ 08DCD0F7
	.incbin "assets/sounds/gUnk_08DCD0F7.bin"
gUnk_08DCD106:: @ 08DCD106
	.incbin "assets/sounds/gUnk_08DCD106.bin"
gUnk_08DCD116:: @ 08DCD116
	.incbin "assets/sounds/gUnk_08DCD116.bin"
	.4byte gUnk_08DCD116
gUnk_08DCD12B:: @ 08DCD12B
	.incbin "assets/sounds/gUnk_08DCD12B.bin"
	.4byte gUnk_08DCD12B
gUnk_08DCD140:: @ 08DCD140
	.incbin "assets/sounds/gUnk_08DCD140.bin"
	.4byte gUnk_08DCD140
	.incbin "assets/sounds/gUnk_08DCD140_1.bin"
	.4byte gUnk_08DCD106
	.incbin "assets/sounds/gUnk_08DCD140_2.bin"
	.4byte gUnk_08DCD106
gUnk_08DCD15F:: @ 08DCD15F
	.incbin "assets/sounds/gUnk_08DCD15F.bin"
	.4byte gUnk_08DCD15F
	.incbin "assets/sounds/gUnk_08DCD15F_1.bin"
	.4byte gUnk_08DCD106
	.incbin "assets/sounds/gUnk_08DCD15F_2.bin"
	.4byte gUnk_08DCD106
	.incbin "assets/sounds/gUnk_08DCD15F_3.bin"
	.4byte gUnk_08DCD12B
	.incbin "assets/sounds/gUnk_08DCD15F_4.bin"
	.4byte gUnk_08DCD12B
	.incbin "assets/sounds/gUnk_08DCD15F_5.bin"
	.4byte gUnk_08DCD0F7
	.incbin "assets/sounds/gUnk_08DCD15F_6.bin"
bgmFileSelect_track1:: @ 08DCD18E
	.incbin "assets/sounds/bgmFileSelect_track1.bin"
gUnk_08DCD198:: @ 08DCD198
	.incbin "assets/sounds/gUnk_08DCD198.bin"
gUnk_08DCD1A7:: @ 08DCD1A7
	.incbin "assets/sounds/gUnk_08DCD1A7.bin"
gUnk_08DCD1B7:: @ 08DCD1B7
	.incbin "assets/sounds/gUnk_08DCD1B7.bin"
	.4byte gUnk_08DCD1B7
gUnk_08DCD1CC:: @ 08DCD1CC
	.incbin "assets/sounds/gUnk_08DCD1CC.bin"
	.4byte gUnk_08DCD1CC
gUnk_08DCD1E1:: @ 08DCD1E1
	.incbin "assets/sounds/gUnk_08DCD1E1.bin"
	.4byte gUnk_08DCD1E1
	.incbin "assets/sounds/gUnk_08DCD1E1_1.bin"
	.4byte gUnk_08DCD1A7
	.incbin "assets/sounds/gUnk_08DCD1E1_2.bin"
	.4byte gUnk_08DCD1A7
gUnk_08DCD200:: @ 08DCD200
	.incbin "assets/sounds/gUnk_08DCD200.bin"
	.4byte gUnk_08DCD200
	.incbin "assets/sounds/gUnk_08DCD200_1.bin"
	.4byte gUnk_08DCD1A7
	.incbin "assets/sounds/gUnk_08DCD200_2.bin"
	.4byte gUnk_08DCD1A7
	.incbin "assets/sounds/gUnk_08DCD200_3.bin"
	.4byte gUnk_08DCD1CC
	.incbin "assets/sounds/gUnk_08DCD200_4.bin"
	.4byte gUnk_08DCD1CC
	.incbin "assets/sounds/gUnk_08DCD200_5.bin"
	.4byte gUnk_08DCD198
	.incbin "assets/sounds/gUnk_08DCD200_6.bin"
bgmFileSelect_track2:: @ 08DCD230
	.incbin "assets/sounds/bgmFileSelect_track2.bin"
gUnk_08DCD237:: @ 08DCD237
	.incbin "assets/sounds/gUnk_08DCD237.bin"
	.4byte gUnk_08DCD237
	.incbin "assets/sounds/gUnk_08DCD237_1.bin"
bgmFileSelect_track3:: @ 08DCD25E
	.incbin "assets/sounds/bgmFileSelect_track3.bin"
gUnk_08DCD265:: @ 08DCD265
	.incbin "assets/sounds/gUnk_08DCD265.bin"
gUnk_08DCD26E:: @ 08DCD26E
	.incbin "assets/sounds/gUnk_08DCD26E.bin"
gUnk_08DCD288:: @ 08DCD288
	.incbin "assets/sounds/gUnk_08DCD288.bin"
gUnk_08DCD2AA:: @ 08DCD2AA
	.incbin "assets/sounds/gUnk_08DCD2AA.bin"
	.4byte gUnk_08DCD26E
	.incbin "assets/sounds/gUnk_08DCD2AA_1.bin"
	.4byte gUnk_08DCD2AA
	.incbin "assets/sounds/gUnk_08DCD2AA_2.bin"
	.4byte gUnk_08DCD288
	.incbin "assets/sounds/gUnk_08DCD2AA_3.bin"
	.4byte gUnk_08DCD265
	.incbin "assets/sounds/gUnk_08DCD2AA_4.bin"
bgmFileSelect_track4:: @ 08DCD2EA
	.incbin "assets/sounds/bgmFileSelect_track4.bin"
gUnk_08DCD2F1:: @ 08DCD2F1
	.incbin "assets/sounds/gUnk_08DCD2F1.bin"
gUnk_08DCD34E:: @ 08DCD34E
	.incbin "assets/sounds/gUnk_08DCD34E.bin"
	.4byte gUnk_08DCD34E
	.incbin "assets/sounds/gUnk_08DCD34E_1.bin"
	.4byte gUnk_08DCD2F1
	.incbin "assets/sounds/gUnk_08DCD34E_2.bin"
bgmFileSelect_track5:: @ 08DCD372
	.incbin "assets/sounds/bgmFileSelect_track5.bin"
gUnk_08DCD379:: @ 08DCD379
	.incbin "assets/sounds/gUnk_08DCD379.bin"
gUnk_08DCD39C:: @ 08DCD39C
	.incbin "assets/sounds/gUnk_08DCD39C.bin"
	.4byte gUnk_08DCD39C
	.incbin "assets/sounds/gUnk_08DCD39C_1.bin"
	.4byte gUnk_08DCD379
	.incbin "assets/sounds/gUnk_08DCD39C_2.bin"
bgmFileSelect_track6:: @ 08DCD413
	.incbin "assets/sounds/bgmFileSelect_track6.bin"
gUnk_08DCD41A:: @ 08DCD41A
	.incbin "assets/sounds/gUnk_08DCD41A.bin"
gUnk_08DCD460:: @ 08DCD460
	.incbin "assets/sounds/gUnk_08DCD460.bin"
	.4byte gUnk_08DCD460
	.incbin "assets/sounds/gUnk_08DCD460_1.bin"
	.4byte gUnk_08DCD41A
	.incbin "assets/sounds/gUnk_08DCD460_2.bin"
bgmFileSelect:: @ 08DCD4AC
	sound_header 7 0 0 0xbc gUnk_089FE6B8 bgmFileSelect_track0 bgmFileSelect_track1 bgmFileSelect_track2 bgmFileSelect_track3 bgmFileSelect_track4 bgmFileSelect_track5 bgmFileSelect_track6

bgmIntorCutscene_track0:: @ 08DCD4D0
	.incbin "assets/sounds/bgmIntorCutscene_track0.bin"
gUnk_08DCD4DB:: @ 08DCD4DB
	.incbin "assets/sounds/gUnk_08DCD4DB.bin"
gUnk_08DCD4E3:: @ 08DCD4E3
	.incbin "assets/sounds/gUnk_08DCD4E3.bin"
gUnk_08DCD4F7:: @ 08DCD4F7
	.incbin "assets/sounds/gUnk_08DCD4F7.bin"
	.4byte gUnk_08DCD4E3
	.incbin "assets/sounds/gUnk_08DCD4F7_1.bin"
	.4byte gUnk_08DCD4F7
	.incbin "assets/sounds/gUnk_08DCD4F7_2.bin"
	.4byte gUnk_08DCD4E3
	.incbin "assets/sounds/gUnk_08DCD4F7_3.bin"
	.4byte gUnk_08DCD4F7
	.incbin "assets/sounds/gUnk_08DCD4F7_4.bin"
gUnk_08DCD52C:: @ 08DCD52C
	.incbin "assets/sounds/gUnk_08DCD52C.bin"
gUnk_08DCD533:: @ 08DCD533
	.incbin "assets/sounds/gUnk_08DCD533.bin"
gUnk_08DCD53A:: @ 08DCD53A
	.incbin "assets/sounds/gUnk_08DCD53A.bin"
	.4byte gUnk_08DCD52C
	.incbin "assets/sounds/gUnk_08DCD53A_1.bin"
	.4byte gUnk_08DCD533
	.incbin "assets/sounds/gUnk_08DCD53A_2.bin"
	.4byte gUnk_08DCD53A
gUnk_08DCD554:: @ 08DCD554
	.incbin "assets/sounds/gUnk_08DCD554.bin"
	.4byte gUnk_08DCD53A
gUnk_08DCD566:: @ 08DCD566
	.incbin "assets/sounds/gUnk_08DCD566.bin"
	.4byte gUnk_08DCD53A
	.incbin "assets/sounds/gUnk_08DCD566_1.bin"
	.4byte gUnk_08DCD566
gUnk_08DCD577:: @ 08DCD577
	.incbin "assets/sounds/gUnk_08DCD577.bin"
gUnk_08DCD57E:: @ 08DCD57E
	.incbin "assets/sounds/gUnk_08DCD57E.bin"
	.4byte gUnk_08DCD554
	.incbin "assets/sounds/gUnk_08DCD57E_1.bin"
	.4byte gUnk_08DCD53A
	.incbin "assets/sounds/gUnk_08DCD57E_2.bin"
	.4byte gUnk_08DCD566
	.incbin "assets/sounds/gUnk_08DCD57E_3.bin"
	.4byte gUnk_08DCD53A
	.incbin "assets/sounds/gUnk_08DCD57E_4.bin"
	.4byte gUnk_08DCD566
	.incbin "assets/sounds/gUnk_08DCD57E_5.bin"
	.4byte gUnk_08DCD577
	.incbin "assets/sounds/gUnk_08DCD57E_6.bin"
	.4byte gUnk_08DCD57E
	.incbin "assets/sounds/gUnk_08DCD57E_7.bin"
gUnk_08DCD5BC:: @ 08DCD5BC
	.incbin "assets/sounds/gUnk_08DCD5BC.bin"
gUnk_08DCD5C3:: @ 08DCD5C3
	.incbin "assets/sounds/gUnk_08DCD5C3.bin"
	.4byte gUnk_08DCD566
	.incbin "assets/sounds/gUnk_08DCD5C3_1.bin"
	.4byte gUnk_08DCD5BC
	.incbin "assets/sounds/gUnk_08DCD5C3_2.bin"
	.4byte gUnk_08DCD5C3
	.incbin "assets/sounds/gUnk_08DCD5C3_3.bin"
	.4byte gUnk_08DCD53A
	.incbin "assets/sounds/gUnk_08DCD5C3_4.bin"
	.4byte gUnk_08DCD577
	.incbin "assets/sounds/gUnk_08DCD5C3_5.bin"
	.4byte gUnk_08DCD4DB
	.incbin "assets/sounds/gUnk_08DCD5C3_6.bin"
bgmIntorCutscene_track1:: @ 08DCD62F
	.incbin "assets/sounds/bgmIntorCutscene_track1.bin"
gUnk_08DCD636:: @ 08DCD636
	.incbin "assets/sounds/gUnk_08DCD636.bin"
gUnk_08DCD643:: @ 08DCD643
	.incbin "assets/sounds/gUnk_08DCD643.bin"
gUnk_08DCD64D:: @ 08DCD64D
	.incbin "assets/sounds/gUnk_08DCD64D.bin"
	.4byte gUnk_08DCD643
	.incbin "assets/sounds/gUnk_08DCD64D_1.bin"
	.4byte gUnk_08DCD64D
	.incbin "assets/sounds/gUnk_08DCD64D_2.bin"
	.4byte gUnk_08DCD643
	.incbin "assets/sounds/gUnk_08DCD64D_3.bin"
	.4byte gUnk_08DCD64D
	.incbin "assets/sounds/gUnk_08DCD64D_4.bin"
gUnk_08DCD704:: @ 08DCD704
	.incbin "assets/sounds/gUnk_08DCD704.bin"
gUnk_08DCD70C:: @ 08DCD70C
	.incbin "assets/sounds/gUnk_08DCD70C.bin"
	.4byte gUnk_08DCD704
gUnk_08DCD719:: @ 08DCD719
	.incbin "assets/sounds/gUnk_08DCD719.bin"
gUnk_08DCD721:: @ 08DCD721
	.incbin "assets/sounds/gUnk_08DCD721.bin"
gUnk_08DCD729:: @ 08DCD729
	.incbin "assets/sounds/gUnk_08DCD729.bin"
gUnk_08DCD731:: @ 08DCD731
	.incbin "assets/sounds/gUnk_08DCD731.bin"
	.4byte gUnk_08DCD70C
	.incbin "assets/sounds/gUnk_08DCD731_1.bin"
	.4byte gUnk_08DCD704
	.incbin "assets/sounds/gUnk_08DCD731_2.bin"
	.4byte gUnk_08DCD70C
	.incbin "assets/sounds/gUnk_08DCD731_3.bin"
	.4byte gUnk_08DCD704
	.incbin "assets/sounds/gUnk_08DCD731_4.bin"
	.4byte gUnk_08DCD719
	.incbin "assets/sounds/gUnk_08DCD731_5.bin"
	.4byte gUnk_08DCD721
	.incbin "assets/sounds/gUnk_08DCD731_6.bin"
	.4byte gUnk_08DCD729
	.incbin "assets/sounds/gUnk_08DCD731_7.bin"
	.4byte gUnk_08DCD731
	.incbin "assets/sounds/gUnk_08DCD731_8.bin"
gUnk_08DCD774:: @ 08DCD774
	.incbin "assets/sounds/gUnk_08DCD774.bin"
	.4byte gUnk_08DCD774
	.incbin "assets/sounds/gUnk_08DCD774_1.bin"
	.4byte gUnk_08DCD636
	.incbin "assets/sounds/gUnk_08DCD774_2.bin"
bgmIntorCutscene_track2:: @ 08DCD873
	.incbin "assets/sounds/bgmIntorCutscene_track2.bin"
gUnk_08DCD87A:: @ 08DCD87A
	.incbin "assets/sounds/gUnk_08DCD87A.bin"
gUnk_08DCD881:: @ 08DCD881
	.incbin "assets/sounds/gUnk_08DCD881.bin"
gUnk_08DCD889:: @ 08DCD889
	.incbin "assets/sounds/gUnk_08DCD889.bin"
gUnk_08DCD891:: @ 08DCD891
	.incbin "assets/sounds/gUnk_08DCD891.bin"
	.4byte gUnk_08DCD889
	.incbin "assets/sounds/gUnk_08DCD891_1.bin"
	.4byte gUnk_08DCD881
	.incbin "assets/sounds/gUnk_08DCD891_2.bin"
	.4byte gUnk_08DCD889
	.incbin "assets/sounds/gUnk_08DCD891_3.bin"
	.4byte gUnk_08DCD891
	.incbin "assets/sounds/gUnk_08DCD891_4.bin"
gUnk_08DCD8BE:: @ 08DCD8BE
	.incbin "assets/sounds/gUnk_08DCD8BE.bin"
gUnk_08DCD8C8:: @ 08DCD8C8
	.incbin "assets/sounds/gUnk_08DCD8C8.bin"
	.4byte gUnk_08DCD8C8
gUnk_08DCD8D8:: @ 08DCD8D8
	.incbin "assets/sounds/gUnk_08DCD8D8.bin"
	.4byte gUnk_08DCD8C8
	.incbin "assets/sounds/gUnk_08DCD8D8_1.bin"
	.4byte gUnk_08DCD8BE
	.incbin "assets/sounds/gUnk_08DCD8D8_2.bin"
	.4byte gUnk_08DCD8C8
	.incbin "assets/sounds/gUnk_08DCD8D8_3.bin"
	.4byte gUnk_08DCD8C8
	.incbin "assets/sounds/gUnk_08DCD8D8_4.bin"
	.4byte gUnk_08DCD8D8
	.incbin "assets/sounds/gUnk_08DCD8D8_5.bin"
	.4byte gUnk_08DCD87A
	.incbin "assets/sounds/gUnk_08DCD8D8_6.bin"
bgmIntorCutscene_track3:: @ 08DCD987
	.incbin "assets/sounds/bgmIntorCutscene_track3.bin"
gUnk_08DCD98E:: @ 08DCD98E
	.incbin "assets/sounds/gUnk_08DCD98E.bin"
gUnk_08DCDA11:: @ 08DCDA11
	.incbin "assets/sounds/gUnk_08DCDA11.bin"
	.4byte gUnk_08DCDA11
	.incbin "assets/sounds/gUnk_08DCDA11_1.bin"
gUnk_08DCDA69:: @ 08DCDA69
	.incbin "assets/sounds/gUnk_08DCDA69.bin"
	.4byte gUnk_08DCDA69
	.incbin "assets/sounds/gUnk_08DCDA69_1.bin"
	.4byte gUnk_08DCD98E
	.incbin "assets/sounds/gUnk_08DCDA69_2.bin"
bgmIntorCutscene_track4:: @ 08DCDAF1
	.incbin "assets/sounds/bgmIntorCutscene_track4.bin"
gUnk_08DCDAF8:: @ 08DCDAF8
	.incbin "assets/sounds/gUnk_08DCDAF8.bin"
gUnk_08DCDB02:: @ 08DCDB02
	.incbin "assets/sounds/gUnk_08DCDB02.bin"
gUnk_08DCDB0F:: @ 08DCDB0F
	.incbin "assets/sounds/gUnk_08DCDB0F.bin"
	.4byte gUnk_08DCDB02
	.incbin "assets/sounds/gUnk_08DCDB0F_1.bin"
	.4byte gUnk_08DCDB0F
	.incbin "assets/sounds/gUnk_08DCDB0F_2.bin"
gUnk_08DCDB6F:: @ 08DCDB6F
	.incbin "assets/sounds/gUnk_08DCDB6F.bin"
	.4byte gUnk_08DCDB6F
	.incbin "assets/sounds/gUnk_08DCDB6F_1.bin"
gUnk_08DCDBC9:: @ 08DCDBC9
	.incbin "assets/sounds/gUnk_08DCDBC9.bin"
	.4byte gUnk_08DCDBC9
	.incbin "assets/sounds/gUnk_08DCDBC9_1.bin"
	.4byte gUnk_08DCDBC9
	.incbin "assets/sounds/gUnk_08DCDBC9_2.bin"
	.4byte gUnk_08DCDAF8
	.incbin "assets/sounds/gUnk_08DCDBC9_3.bin"
bgmIntorCutscene_track5:: @ 08DCDCAA
	.incbin "assets/sounds/bgmIntorCutscene_track5.bin"
gUnk_08DCDCB4:: @ 08DCDCB4
	.incbin "assets/sounds/gUnk_08DCDCB4.bin"
gUnk_08DCDCBB:: @ 08DCDCBB
	.incbin "assets/sounds/gUnk_08DCDCBB.bin"
gUnk_08DCDCC5:: @ 08DCDCC5
	.incbin "assets/sounds/gUnk_08DCDCC5.bin"
gUnk_08DCDCCE:: @ 08DCDCCE
	.incbin "assets/sounds/gUnk_08DCDCCE.bin"
	.4byte gUnk_08DCDCC5
	.incbin "assets/sounds/gUnk_08DCDCCE_1.bin"
	.4byte gUnk_08DCDCBB
	.incbin "assets/sounds/gUnk_08DCDCCE_2.bin"
	.4byte gUnk_08DCDCC5
	.incbin "assets/sounds/gUnk_08DCDCCE_3.bin"
	.4byte gUnk_08DCDCCE
	.incbin "assets/sounds/gUnk_08DCDCCE_4.bin"
gUnk_08DCDCFD:: @ 08DCDCFD
	.incbin "assets/sounds/gUnk_08DCDCFD.bin"
	.4byte gUnk_08DCDCFD
	.incbin "assets/sounds/gUnk_08DCDCFD_1.bin"
gUnk_08DCDD57:: @ 08DCDD57
	.incbin "assets/sounds/gUnk_08DCDD57.bin"
gUnk_08DCDD62:: @ 08DCDD62
	.incbin "assets/sounds/gUnk_08DCDD62.bin"
gUnk_08DCDD6B:: @ 08DCDD6B
	.incbin "assets/sounds/gUnk_08DCDD6B.bin"
	.4byte gUnk_08DCDD62
gUnk_08DCDD77:: @ 08DCDD77
	.incbin "assets/sounds/gUnk_08DCDD77.bin"
	.4byte gUnk_08DCDD6B
	.incbin "assets/sounds/gUnk_08DCDD77_1.bin"
	.4byte gUnk_08DCDD62
	.incbin "assets/sounds/gUnk_08DCDD77_2.bin"
	.4byte gUnk_08DCDD57
	.incbin "assets/sounds/gUnk_08DCDD77_3.bin"
	.4byte gUnk_08DCDD62
	.incbin "assets/sounds/gUnk_08DCDD77_4.bin"
	.4byte gUnk_08DCDD6B
	.incbin "assets/sounds/gUnk_08DCDD77_5.bin"
	.4byte gUnk_08DCDD62
	.incbin "assets/sounds/gUnk_08DCDD77_6.bin"
	.4byte gUnk_08DCDD77
	.incbin "assets/sounds/gUnk_08DCDD77_7.bin"
	.4byte gUnk_08DCDCB4
	.incbin "assets/sounds/gUnk_08DCDD77_8.bin"
bgmIntorCutscene_track6:: @ 08DCDE8E
	.incbin "assets/sounds/bgmIntorCutscene_track6.bin"
gUnk_08DCDE95:: @ 08DCDE95
	.incbin "assets/sounds/gUnk_08DCDE95.bin"
gUnk_08DCDE9D:: @ 08DCDE9D
	.incbin "assets/sounds/gUnk_08DCDE9D.bin"
gUnk_08DCDEA6:: @ 08DCDEA6
	.incbin "assets/sounds/gUnk_08DCDEA6.bin"
	.4byte gUnk_08DCDE9D
	.incbin "assets/sounds/gUnk_08DCDEA6_1.bin"
	.4byte gUnk_08DCDEA6
	.incbin "assets/sounds/gUnk_08DCDEA6_2.bin"
	.4byte gUnk_08DCDE9D
	.incbin "assets/sounds/gUnk_08DCDEA6_3.bin"
	.4byte gUnk_08DCDEA6
	.incbin "assets/sounds/gUnk_08DCDEA6_4.bin"
	.4byte gUnk_08DCDE9D
	.incbin "assets/sounds/gUnk_08DCDEA6_5.bin"
	.4byte gUnk_08DCDE95
	.incbin "assets/sounds/gUnk_08DCDEA6_6.bin"
bgmIntorCutscene:: @ 08DCDF2C
	sound_header 7 0 0 0xb2 gUnk_08A0D544 bgmIntorCutscene_track0 bgmIntorCutscene_track1 bgmIntorCutscene_track2 bgmIntorCutscene_track3 bgmIntorCutscene_track4 bgmIntorCutscene_track5 bgmIntorCutscene_track6

bgmCredits_track0:: @ 08DCDF50
	.incbin "assets/sounds/bgmCredits_track0.bin"
gUnk_08DCE07C:: @ 08DCE07C
	.incbin "assets/sounds/gUnk_08DCE07C.bin"
gUnk_08DCE084:: @ 08DCE084
	.incbin "assets/sounds/gUnk_08DCE084.bin"
	.4byte gUnk_08DCE07C
	.incbin "assets/sounds/gUnk_08DCE084_1.bin"
gUnk_08DCE0A2:: @ 08DCE0A2
	.incbin "assets/sounds/gUnk_08DCE0A2.bin"
	.4byte gUnk_08DCE084
	.incbin "assets/sounds/gUnk_08DCE0A2_1.bin"
	.4byte gUnk_08DCE0A2
	.incbin "assets/sounds/gUnk_08DCE0A2_2.bin"
	.4byte gUnk_08DCE0A2
	.incbin "assets/sounds/gUnk_08DCE0A2_3.bin"
gUnk_08DCE112:: @ 08DCE112
	.incbin "assets/sounds/gUnk_08DCE112.bin"
gUnk_08DCE11D:: @ 08DCE11D
	.incbin "assets/sounds/gUnk_08DCE11D.bin"
	.4byte gUnk_08DCE11D
gUnk_08DCE12D:: @ 08DCE12D
	.incbin "assets/sounds/gUnk_08DCE12D.bin"
	.4byte gUnk_08DCE11D
	.incbin "assets/sounds/gUnk_08DCE12D_1.bin"
	.4byte gUnk_08DCE112
	.incbin "assets/sounds/gUnk_08DCE12D_2.bin"
	.4byte gUnk_08DCE11D
	.incbin "assets/sounds/gUnk_08DCE12D_3.bin"
	.4byte gUnk_08DCE11D
	.incbin "assets/sounds/gUnk_08DCE12D_4.bin"
	.4byte gUnk_08DCE12D
	.incbin "assets/sounds/gUnk_08DCE12D_5.bin"
gUnk_08DCE1C6:: @ 08DCE1C6
	.incbin "assets/sounds/gUnk_08DCE1C6.bin"
	.4byte gUnk_08DCE1C6
	.incbin "assets/sounds/gUnk_08DCE1C6_1.bin"
gUnk_08DCE20C:: @ 08DCE20C
	.incbin "assets/sounds/gUnk_08DCE20C.bin"
gUnk_08DCE217:: @ 08DCE217
	.incbin "assets/sounds/gUnk_08DCE217.bin"
gUnk_08DCE228:: @ 08DCE228
	.incbin "assets/sounds/gUnk_08DCE228.bin"
	.4byte gUnk_08DCE20C
	.incbin "assets/sounds/gUnk_08DCE228_1.bin"
	.4byte gUnk_08DCE217
	.incbin "assets/sounds/gUnk_08DCE228_2.bin"
	.4byte gUnk_08DCE228
	.incbin "assets/sounds/gUnk_08DCE228_3.bin"
bgmCredits_track1:: @ 08DCE296
	.incbin "assets/sounds/bgmCredits_track1.bin"
gUnk_08DCE2A1:: @ 08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE2A1.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE2A1_1.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE2A1_2.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE2A1_3.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE2A1_4.bin"
	.4byte gUnk_08DCE2A1
gUnk_08DCE2DF:: @ 08DCE2DF
	.incbin "assets/sounds/gUnk_08DCE2DF.bin"
	.4byte gUnk_08DCE2DF
	.incbin "assets/sounds/gUnk_08DCE2DF_1.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE2DF_2.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE2DF_3.bin"
	.4byte gUnk_08DCE2A1
gUnk_08DCE33C:: @ 08DCE33C
	.incbin "assets/sounds/gUnk_08DCE33C.bin"
gUnk_08DCE368:: @ 08DCE368
	.incbin "assets/sounds/gUnk_08DCE368.bin"
	.4byte gUnk_08DCE33C
	.incbin "assets/sounds/gUnk_08DCE368_1.bin"
	.4byte gUnk_08DCE368
	.incbin "assets/sounds/gUnk_08DCE368_2.bin"
gUnk_08DCE406:: @ 08DCE406
	.incbin "assets/sounds/gUnk_08DCE406.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE406_1.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE406_2.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE406_3.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE406_4.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE406_5.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE406_6.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE406_7.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE406_8.bin"
	.4byte gUnk_08DCE406
gUnk_08DCE458:: @ 08DCE458
	.incbin "assets/sounds/gUnk_08DCE458.bin"
	.4byte gUnk_08DCE458
gUnk_08DCE482:: @ 08DCE482
	.incbin "assets/sounds/gUnk_08DCE482.bin"
	.4byte gUnk_08DCE458
	.incbin "assets/sounds/gUnk_08DCE482_1.bin"
	.4byte gUnk_08DCE482
	.incbin "assets/sounds/gUnk_08DCE482_2.bin"
	.4byte gUnk_08DCE458
	.incbin "assets/sounds/gUnk_08DCE482_3.bin"
	.4byte gUnk_08DCE406
	.incbin "assets/sounds/gUnk_08DCE482_4.bin"
	.4byte gUnk_08DCE458
	.incbin "assets/sounds/gUnk_08DCE482_5.bin"
	.4byte gUnk_08DCE458
	.incbin "assets/sounds/gUnk_08DCE482_6.bin"
	.4byte gUnk_08DCE2A1
gUnk_08DCE4F6:: @ 08DCE4F6
	.incbin "assets/sounds/gUnk_08DCE4F6.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_1.bin"
	.4byte gUnk_08DCE4F6
	.incbin "assets/sounds/gUnk_08DCE4F6_2.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_3.bin"
	.4byte gUnk_08DCE4F6
	.incbin "assets/sounds/gUnk_08DCE4F6_4.bin"
	.4byte gUnk_08DCE2DF
	.incbin "assets/sounds/gUnk_08DCE4F6_5.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_6.bin"
	.4byte gUnk_08DCE4F6
	.incbin "assets/sounds/gUnk_08DCE4F6_7.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_8.bin"
	.4byte gUnk_08DCE4F6
	.incbin "assets/sounds/gUnk_08DCE4F6_9.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_10.bin"
	.4byte gUnk_08DCE4F6
	.incbin "assets/sounds/gUnk_08DCE4F6_11.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_12.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_13.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_14.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_15.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_16.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_17.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_18.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_19.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_20.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_21.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_22.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_23.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_24.bin"
	.4byte gUnk_08DCE2A1
	.incbin "assets/sounds/gUnk_08DCE4F6_25.bin"
bgmCredits_track2:: @ 08DCE658
	.incbin "assets/sounds/bgmCredits_track2.bin"
gUnk_08DCE759:: @ 08DCE759
	.incbin "assets/sounds/gUnk_08DCE759.bin"
	.4byte gUnk_08DCE759
	.incbin "assets/sounds/gUnk_08DCE759_1.bin"
gUnk_08DCE7E7:: @ 08DCE7E7
	.incbin "assets/sounds/gUnk_08DCE7E7.bin"
	.4byte gUnk_08DCE7E7
	.incbin "assets/sounds/gUnk_08DCE7E7_1.bin"
gUnk_08DCE85C:: @ 08DCE85C
	.incbin "assets/sounds/gUnk_08DCE85C.bin"
gUnk_08DCE86D:: @ 08DCE86D
	.incbin "assets/sounds/gUnk_08DCE86D.bin"
	.4byte gUnk_08DCE85C
	.incbin "assets/sounds/gUnk_08DCE86D_1.bin"
	.4byte gUnk_08DCE86D
	.incbin "assets/sounds/gUnk_08DCE86D_2.bin"
	.4byte gUnk_08DCE85C
	.incbin "assets/sounds/gUnk_08DCE86D_3.bin"
	.4byte gUnk_08DCE86D
	.incbin "assets/sounds/gUnk_08DCE86D_4.bin"
	.4byte gUnk_08DCE85C
	.incbin "assets/sounds/gUnk_08DCE86D_5.bin"
gUnk_08DCE90F:: @ 08DCE90F
	.incbin "assets/sounds/gUnk_08DCE90F.bin"
gUnk_08DCE922:: @ 08DCE922
	.incbin "assets/sounds/gUnk_08DCE922.bin"
gUnk_08DCE934:: @ 08DCE934
	.incbin "assets/sounds/gUnk_08DCE934.bin"
	.4byte gUnk_08DCE90F
	.incbin "assets/sounds/gUnk_08DCE934_1.bin"
	.4byte gUnk_08DCE922
	.incbin "assets/sounds/gUnk_08DCE934_2.bin"
	.4byte gUnk_08DCE934
	.incbin "assets/sounds/gUnk_08DCE934_3.bin"
bgmCredits_track3:: @ 08DCE9A9
	.incbin "assets/sounds/bgmCredits_track3.bin"
gUnk_08DCE9F4:: @ 08DCE9F4
	.incbin "assets/sounds/gUnk_08DCE9F4.bin"
gUnk_08DCEA06:: @ 08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA06.bin"
gUnk_08DCEA1A:: @ 08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA1A.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA1A_1.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA1A_2.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA1A_3.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA1A_4.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA1A_5.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA1A_6.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA1A_7.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA1A_8.bin"
	.4byte gUnk_08DCEA06
gUnk_08DCEA57:: @ 08DCEA57
	.incbin "assets/sounds/gUnk_08DCEA57.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_1.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_2.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_3.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_4.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_5.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_6.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_7.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_8.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_9.bin"
	.4byte gUnk_08DCEA57
	.incbin "assets/sounds/gUnk_08DCEA57_10.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_11.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_12.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_13.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_14.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_15.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_16.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_17.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_18.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_19.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_20.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_21.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_22.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEA57_23.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEA57_24.bin"
	.4byte gUnk_08DCE9F4
gUnk_08DCEB31:: @ 08DCEB31
	.incbin "assets/sounds/gUnk_08DCEB31.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_1.bin"
	.4byte gUnk_08DCEB31
	.incbin "assets/sounds/gUnk_08DCEB31_2.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_3.bin"
	.4byte gUnk_08DCEB31
	.incbin "assets/sounds/gUnk_08DCEB31_4.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_5.bin"
	.4byte gUnk_08DCEB31
	.incbin "assets/sounds/gUnk_08DCEB31_6.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_7.bin"
	.4byte gUnk_08DCEB31
	.incbin "assets/sounds/gUnk_08DCEB31_8.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_9.bin"
	.4byte gUnk_08DCEB31
	.incbin "assets/sounds/gUnk_08DCEB31_10.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_11.bin"
	.4byte gUnk_08DCEB31
	.incbin "assets/sounds/gUnk_08DCEB31_12.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_13.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_14.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEB31_15.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_16.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEB31_17.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_18.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEB31_19.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_20.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEB31_21.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_22.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEB31_23.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_24.bin"
	.4byte gUnk_08DCEA06
	.incbin "assets/sounds/gUnk_08DCEB31_25.bin"
	.4byte gUnk_08DCEA1A
	.incbin "assets/sounds/gUnk_08DCEB31_26.bin"
bgmCredits_track4:: @ 08DCEC66
	.incbin "assets/sounds/bgmCredits_track4.bin"
gUnk_08DCECCF:: @ 08DCECCF
	.incbin "assets/sounds/gUnk_08DCECCF.bin"
gUnk_08DCECF0:: @ 08DCECF0
	.incbin "assets/sounds/gUnk_08DCECF0.bin"
	.4byte gUnk_08DCECCF
	.incbin "assets/sounds/gUnk_08DCECF0_1.bin"
	.4byte gUnk_08DCECF0
	.incbin "assets/sounds/gUnk_08DCECF0_2.bin"
gUnk_08DCEE0D:: @ 08DCEE0D
	.incbin "assets/sounds/gUnk_08DCEE0D.bin"
	.4byte gUnk_08DCEE0D
	.incbin "assets/sounds/gUnk_08DCEE0D_1.bin"
gUnk_08DCEEB6:: @ 08DCEEB6
	.incbin "assets/sounds/gUnk_08DCEEB6.bin"
gUnk_08DCEED6:: @ 08DCEED6
	.incbin "assets/sounds/gUnk_08DCEED6.bin"
gUnk_08DCEF01:: @ 08DCEF01
	.incbin "assets/sounds/gUnk_08DCEF01.bin"
	.4byte gUnk_08DCEED6
	.incbin "assets/sounds/gUnk_08DCEF01_1.bin"
	.4byte gUnk_08DCEF01
	.incbin "assets/sounds/gUnk_08DCEF01_2.bin"
	.4byte gUnk_08DCEED6
	.incbin "assets/sounds/gUnk_08DCEF01_3.bin"
	.4byte gUnk_08DCEF01
	.incbin "assets/sounds/gUnk_08DCEF01_4.bin"
	.4byte gUnk_08DCEED6
	.incbin "assets/sounds/gUnk_08DCEF01_5.bin"
	.4byte gUnk_08DCEF01
	.incbin "assets/sounds/gUnk_08DCEF01_6.bin"
	.4byte gUnk_08DCEED6
	.incbin "assets/sounds/gUnk_08DCEF01_7.bin"
	.4byte gUnk_08DCEEB6
	.incbin "assets/sounds/gUnk_08DCEF01_8.bin"
	.4byte gUnk_08DCEED6
	.incbin "assets/sounds/gUnk_08DCEF01_9.bin"
	.4byte gUnk_08DCEF01
	.incbin "assets/sounds/gUnk_08DCEF01_10.bin"
	.4byte gUnk_08DCEED6
	.incbin "assets/sounds/gUnk_08DCEF01_11.bin"
	.4byte gUnk_08DCEF01
	.incbin "assets/sounds/gUnk_08DCEF01_12.bin"
	.4byte gUnk_08DCEED6
	.incbin "assets/sounds/gUnk_08DCEF01_13.bin"
gUnk_08DCEFC6:: @ 08DCEFC6
	.incbin "assets/sounds/gUnk_08DCEFC6.bin"
gUnk_08DCEFE9:: @ 08DCEFE9
	.incbin "assets/sounds/gUnk_08DCEFE9.bin"
	.4byte gUnk_08DCEFC6
	.incbin "assets/sounds/gUnk_08DCEFE9_1.bin"
	.4byte gUnk_08DCEFE9
	.incbin "assets/sounds/gUnk_08DCEFE9_2.bin"
	.4byte gUnk_08DCEFC6
	.incbin "assets/sounds/gUnk_08DCEFE9_3.bin"
gUnk_08DCF033:: @ 08DCF033
	.incbin "assets/sounds/gUnk_08DCF033.bin"
	.4byte gUnk_08DCEFC6
	.incbin "assets/sounds/gUnk_08DCF033_1.bin"
	.4byte gUnk_08DCEFE9
	.incbin "assets/sounds/gUnk_08DCF033_2.bin"
	.4byte gUnk_08DCEFC6
	.incbin "assets/sounds/gUnk_08DCF033_3.bin"
	.4byte gUnk_08DCEFE9
	.incbin "assets/sounds/gUnk_08DCF033_4.bin"
	.4byte gUnk_08DCEFC6
	.incbin "assets/sounds/gUnk_08DCF033_5.bin"
	.4byte gUnk_08DCF033
	.incbin "assets/sounds/gUnk_08DCF033_6.bin"
gUnk_08DCF0DE:: @ 08DCF0DE
	.incbin "assets/sounds/gUnk_08DCF0DE.bin"
gUnk_08DCF0FA:: @ 08DCF0FA
	.incbin "assets/sounds/gUnk_08DCF0FA.bin"
	.4byte gUnk_08DCF0FA
	.incbin "assets/sounds/gUnk_08DCF0FA_1.bin"
	.4byte gUnk_08DCF0DE
	.incbin "assets/sounds/gUnk_08DCF0FA_2.bin"
	.4byte gUnk_08DCF0DE
	.incbin "assets/sounds/gUnk_08DCF0FA_3.bin"
	.4byte gUnk_08DCF0FA
	.incbin "assets/sounds/gUnk_08DCF0FA_4.bin"
	.4byte gUnk_08DCF0FA
	.incbin "assets/sounds/gUnk_08DCF0FA_5.bin"
	.4byte gUnk_08DCF0DE
	.incbin "assets/sounds/gUnk_08DCF0FA_6.bin"
	.4byte gUnk_08DCF0DE
gUnk_08DCF139:: @ 08DCF139
	.incbin "assets/sounds/gUnk_08DCF139.bin"
	.4byte gUnk_08DCF139
	.incbin "assets/sounds/gUnk_08DCF139_1.bin"
	.4byte gUnk_08DCF0DE
	.incbin "assets/sounds/gUnk_08DCF139_2.bin"
	.4byte gUnk_08DCF0DE
	.incbin "assets/sounds/gUnk_08DCF139_3.bin"
bgmCredits_track5:: @ 08DCF189
	.incbin "assets/sounds/bgmCredits_track5.bin"
bgmCredits_track6:: @ 08DCF2E6
	.incbin "assets/sounds/bgmCredits_track6.bin"
gUnk_08DCF3F1:: @ 08DCF3F1
	.incbin "assets/sounds/gUnk_08DCF3F1.bin"
gUnk_08DCF3FA:: @ 08DCF3FA
	.incbin "assets/sounds/gUnk_08DCF3FA.bin"
	.4byte gUnk_08DCF3F1
	.incbin "assets/sounds/gUnk_08DCF3FA_1.bin"
gUnk_08DCF41E:: @ 08DCF41E
	.incbin "assets/sounds/gUnk_08DCF41E.bin"
	.4byte gUnk_08DCF3FA
	.incbin "assets/sounds/gUnk_08DCF41E_1.bin"
	.4byte gUnk_08DCF41E
	.incbin "assets/sounds/gUnk_08DCF41E_2.bin"
	.4byte gUnk_08DCF41E
	.incbin "assets/sounds/gUnk_08DCF41E_3.bin"
gUnk_08DCF477:: @ 08DCF477
	.incbin "assets/sounds/gUnk_08DCF477.bin"
gUnk_08DCF488:: @ 08DCF488
	.incbin "assets/sounds/gUnk_08DCF488.bin"
gUnk_08DCF491:: @ 08DCF491
	.incbin "assets/sounds/gUnk_08DCF491.bin"
	.4byte gUnk_08DCF488
	.incbin "assets/sounds/gUnk_08DCF491_1.bin"
	.4byte gUnk_08DCF477
	.incbin "assets/sounds/gUnk_08DCF491_2.bin"
	.4byte gUnk_08DCF488
	.incbin "assets/sounds/gUnk_08DCF491_3.bin"
	.4byte gUnk_08DCF491
	.incbin "assets/sounds/gUnk_08DCF491_4.bin"
gUnk_08DCF564:: @ 08DCF564
	.incbin "assets/sounds/gUnk_08DCF564.bin"
	.4byte gUnk_08DCF564
	.incbin "assets/sounds/gUnk_08DCF564_1.bin"
gUnk_08DCF5AB:: @ 08DCF5AB
	.incbin "assets/sounds/gUnk_08DCF5AB.bin"
gUnk_08DCF5BA:: @ 08DCF5BA
	.incbin "assets/sounds/gUnk_08DCF5BA.bin"
gUnk_08DCF5CC:: @ 08DCF5CC
	.incbin "assets/sounds/gUnk_08DCF5CC.bin"
	.4byte gUnk_08DCF5AB
	.incbin "assets/sounds/gUnk_08DCF5CC_1.bin"
	.4byte gUnk_08DCF5BA
	.incbin "assets/sounds/gUnk_08DCF5CC_2.bin"
	.4byte gUnk_08DCF5CC
	.incbin "assets/sounds/gUnk_08DCF5CC_3.bin"
bgmCredits_track7:: @ 08DCF62C
	.incbin "assets/sounds/bgmCredits_track7.bin"
gUnk_08DCF691:: @ 08DCF691
	.incbin "assets/sounds/gUnk_08DCF691.bin"
	.4byte gUnk_08DCF691
	.incbin "assets/sounds/gUnk_08DCF691_1.bin"
gUnk_08DCF6E1:: @ 08DCF6E1
	.incbin "assets/sounds/gUnk_08DCF6E1.bin"
gUnk_08DCF6E9:: @ 08DCF6E9
	.incbin "assets/sounds/gUnk_08DCF6E9.bin"
	.4byte gUnk_08DCF6E1
	.incbin "assets/sounds/gUnk_08DCF6E9_1.bin"
	.4byte gUnk_08DCF6E9
	.incbin "assets/sounds/gUnk_08DCF6E9_2.bin"
	.4byte gUnk_08DCF6E1
	.incbin "assets/sounds/gUnk_08DCF6E9_3.bin"
	.4byte gUnk_08DCF6E9
	.incbin "assets/sounds/gUnk_08DCF6E9_4.bin"
bgmCredits:: @ 08DCF734
	sound_header 8 0 0 0xa8 gUnk_089FE9A0 bgmCredits_track0 bgmCredits_track1 bgmCredits_track2 bgmCredits_track3 bgmCredits_track4 bgmCredits_track5 bgmCredits_track6 bgmCredits_track7

bgmGameover_track0:: @ 08DCF75C
	.incbin "assets/sounds/bgmGameover_track0.bin"
gUnk_08DCF767:: @ 08DCF767
	.incbin "assets/sounds/gUnk_08DCF767.bin"
gUnk_08DCF777:: @ 08DCF777
	.incbin "assets/sounds/gUnk_08DCF777.bin"
gUnk_08DCF79E:: @ 08DCF79E
	.incbin "assets/sounds/gUnk_08DCF79E.bin"
	.4byte gUnk_08DCF79E
	.incbin "assets/sounds/gUnk_08DCF79E_1.bin"
	.4byte gUnk_08DCF777
	.incbin "assets/sounds/gUnk_08DCF79E_2.bin"
	.4byte gUnk_08DCF767
	.incbin "assets/sounds/gUnk_08DCF79E_3.bin"
bgmGameover_track1:: @ 08DCF7D3
	.incbin "assets/sounds/bgmGameover_track1.bin"
gUnk_08DCF7DA:: @ 08DCF7DA
	.incbin "assets/sounds/gUnk_08DCF7DA.bin"
gUnk_08DCF7E0:: @ 08DCF7E0
	.incbin "assets/sounds/gUnk_08DCF7E0.bin"
gUnk_08DCF7E7:: @ 08DCF7E7
	.incbin "assets/sounds/gUnk_08DCF7E7.bin"
	.4byte gUnk_08DCF7E0
	.incbin "assets/sounds/gUnk_08DCF7E7_1.bin"
	.4byte gUnk_08DCF7E0
	.incbin "assets/sounds/gUnk_08DCF7E7_2.bin"
	.4byte gUnk_08DCF7E7
	.incbin "assets/sounds/gUnk_08DCF7E7_3.bin"
	.4byte gUnk_08DCF7DA
	.incbin "assets/sounds/gUnk_08DCF7E7_4.bin"
bgmGameover_track2:: @ 08DCF829
	.incbin "assets/sounds/bgmGameover_track2.bin"
gUnk_08DCF839:: @ 08DCF839
	.incbin "assets/sounds/gUnk_08DCF839.bin"
gUnk_08DCF853:: @ 08DCF853
	.incbin "assets/sounds/gUnk_08DCF853.bin"
gUnk_08DCF86F:: @ 08DCF86F
	.incbin "assets/sounds/gUnk_08DCF86F.bin"
	.4byte gUnk_08DCF853
	.incbin "assets/sounds/gUnk_08DCF86F_1.bin"
	.4byte gUnk_08DCF86F
	.incbin "assets/sounds/gUnk_08DCF86F_2.bin"
	.4byte gUnk_08DCF839
	.incbin "assets/sounds/gUnk_08DCF86F_3.bin"
bgmGameover_track3:: @ 08DCF9B5
	.incbin "assets/sounds/bgmGameover_track3.bin"
gUnk_08DCF9BF:: @ 08DCF9BF
	.incbin "assets/sounds/gUnk_08DCF9BF.bin"
gUnk_08DCF9D0:: @ 08DCF9D0
	.incbin "assets/sounds/gUnk_08DCF9D0.bin"
gUnk_08DCF9DA:: @ 08DCF9DA
	.incbin "assets/sounds/gUnk_08DCF9DA.bin"
gUnk_08DCF9F6:: @ 08DCF9F6
	.incbin "assets/sounds/gUnk_08DCF9F6.bin"
gUnk_08DCFA04:: @ 08DCFA04
	.incbin "assets/sounds/gUnk_08DCFA04.bin"
	.4byte gUnk_08DCFA04
	.incbin "assets/sounds/gUnk_08DCFA04_1.bin"
	.4byte gUnk_08DCF9D0
	.incbin "assets/sounds/gUnk_08DCFA04_2.bin"
	.4byte gUnk_08DCF9DA
	.incbin "assets/sounds/gUnk_08DCFA04_3.bin"
	.4byte gUnk_08DCF9F6
	.incbin "assets/sounds/gUnk_08DCFA04_4.bin"
	.4byte gUnk_08DCF9BF
	.incbin "assets/sounds/gUnk_08DCFA04_5.bin"
bgmGameover:: @ 08DCFA40
	sound_header 4 0 0 0xb2 gUnk_089FEFA0 bgmGameover_track0 bgmGameover_track1 bgmGameover_track2 bgmGameover_track3

bgmSavingZelda_track0:: @ 08DCFA58
	.incbin "assets/sounds/bgmSavingZelda_track0.bin"
gUnk_08DCFA63:: @ 08DCFA63
	.incbin "assets/sounds/gUnk_08DCFA63.bin"
gUnk_08DCFA71:: @ 08DCFA71
	.incbin "assets/sounds/gUnk_08DCFA71.bin"
	.4byte gUnk_08DCFA71
	.incbin "assets/sounds/gUnk_08DCFA71_1.bin"
	.4byte gUnk_08DCFA71
	.incbin "assets/sounds/gUnk_08DCFA71_2.bin"
	.4byte gUnk_08DCFA63
	.incbin "assets/sounds/gUnk_08DCFA71_3.bin"
bgmSavingZelda_track1:: @ 08DCFAB7
	.incbin "assets/sounds/bgmSavingZelda_track1.bin"
gUnk_08DCFABD:: @ 08DCFABD
	.incbin "assets/sounds/gUnk_08DCFABD.bin"
	.4byte gUnk_08DCFABD
	.incbin "assets/sounds/gUnk_08DCFABD_1.bin"
bgmSavingZelda_track2:: @ 08DCFAC9
	.incbin "assets/sounds/bgmSavingZelda_track2.bin"
gUnk_08DCFACF:: @ 08DCFACF
	.incbin "assets/sounds/gUnk_08DCFACF.bin"
	.4byte gUnk_08DCFACF
	.incbin "assets/sounds/gUnk_08DCFACF_1.bin"
bgmSavingZelda_track3:: @ 08DCFAEE
	.incbin "assets/sounds/bgmSavingZelda_track3.bin"
gUnk_08DCFAF7:: @ 08DCFAF7
	.incbin "assets/sounds/gUnk_08DCFAF7.bin"
gUnk_08DCFB04:: @ 08DCFB04
	.incbin "assets/sounds/gUnk_08DCFB04.bin"
	.4byte gUnk_08DCFB04
	.incbin "assets/sounds/gUnk_08DCFB04_1.bin"
	.4byte gUnk_08DCFB04
	.incbin "assets/sounds/gUnk_08DCFB04_2.bin"
	.4byte gUnk_08DCFAF7
	.incbin "assets/sounds/gUnk_08DCFB04_3.bin"
bgmSavingZelda_track4:: @ 08DCFB28
	.incbin "assets/sounds/bgmSavingZelda_track4.bin"
gUnk_08DCFB2E:: @ 08DCFB2E
	.incbin "assets/sounds/gUnk_08DCFB2E.bin"
gUnk_08DCFB3B:: @ 08DCFB3B
	.incbin "assets/sounds/gUnk_08DCFB3B.bin"
	.4byte gUnk_08DCFB3B
	.incbin "assets/sounds/gUnk_08DCFB3B_1.bin"
	.4byte gUnk_08DCFB3B
	.incbin "assets/sounds/gUnk_08DCFB3B_2.bin"
	.4byte gUnk_08DCFB2E
	.incbin "assets/sounds/gUnk_08DCFB3B_3.bin"
bgmSavingZelda_track5:: @ 08DCFB79
	.incbin "assets/sounds/bgmSavingZelda_track5.bin"
gUnk_08DCFB7F:: @ 08DCFB7F
	.incbin "assets/sounds/gUnk_08DCFB7F.bin"
gUnk_08DCFB83:: @ 08DCFB83
	.incbin "assets/sounds/gUnk_08DCFB83.bin"
	.4byte gUnk_08DCFB83
	.incbin "assets/sounds/gUnk_08DCFB83_1.bin"
	.4byte gUnk_08DCFB7F
	.incbin "assets/sounds/gUnk_08DCFB83_2.bin"
bgmSavingZelda_track6:: @ 08DCFBA2
	.incbin "assets/sounds/bgmSavingZelda_track6.bin"
gUnk_08DCFBAB:: @ 08DCFBAB
	.incbin "assets/sounds/gUnk_08DCFBAB.bin"
	.4byte gUnk_08DCFBAB
	.incbin "assets/sounds/gUnk_08DCFBAB_1.bin"
bgmSavingZelda_track7:: @ 08DCFBCE
	.incbin "assets/sounds/bgmSavingZelda_track7.bin"
gUnk_08DCFBD6:: @ 08DCFBD6
	.incbin "assets/sounds/gUnk_08DCFBD6.bin"
	.4byte gUnk_08DCFBD6
	.incbin "assets/sounds/gUnk_08DCFBD6_1.bin"
bgmSavingZelda:: @ 08DCFBF4
	sound_header 8 0 0 0xb2 gUnk_089FF24C bgmSavingZelda_track0 bgmSavingZelda_track1 bgmSavingZelda_track2 bgmSavingZelda_track3 bgmSavingZelda_track4 bgmSavingZelda_track5 bgmSavingZelda_track6 bgmSavingZelda_track7

bgmLttpTitle_track0:: @ 08DCFC1C
	.incbin "assets/sounds/bgmLttpTitle_track0.bin"
gUnk_08DCFC31:: @ 08DCFC31
	.incbin "assets/sounds/gUnk_08DCFC31.bin"
	.4byte gUnk_08DCFC31
	.incbin "assets/sounds/gUnk_08DCFC31_1.bin"
bgmLttpTitle_track1:: @ 08DCFC6C
	.incbin "assets/sounds/bgmLttpTitle_track1.bin"
bgmLttpTitle_track2:: @ 08DCFC98
	.incbin "assets/sounds/bgmLttpTitle_track2.bin"
bgmLttpTitle_track3:: @ 08DCFCC6
	.incbin "assets/sounds/bgmLttpTitle_track3.bin"
bgmLttpTitle_track4:: @ 08DCFD0F
	.incbin "assets/sounds/bgmLttpTitle_track4.bin"
gUnk_08DCFD16:: @ 08DCFD16
	.incbin "assets/sounds/gUnk_08DCFD16.bin"
gUnk_08DCFD1D:: @ 08DCFD1D
	.incbin "assets/sounds/gUnk_08DCFD1D.bin"
	.4byte gUnk_08DCFD16
	.incbin "assets/sounds/gUnk_08DCFD1D_1.bin"
	.4byte gUnk_08DCFD1D
	.incbin "assets/sounds/gUnk_08DCFD1D_2.bin"
	.4byte gUnk_08DCFD16
	.incbin "assets/sounds/gUnk_08DCFD1D_3.bin"
	.4byte gUnk_08DCFD1D
	.incbin "assets/sounds/gUnk_08DCFD1D_4.bin"
bgmLttpTitle_track5:: @ 08DCFD45
	.incbin "assets/sounds/bgmLttpTitle_track5.bin"
gUnk_08DCFD58:: @ 08DCFD58
	.incbin "assets/sounds/gUnk_08DCFD58.bin"
	.4byte gUnk_08DCFD58
	.incbin "assets/sounds/gUnk_08DCFD58_1.bin"
bgmLttpTitle:: @ 08DCFD98
	sound_header 6 0 0 0x9e gUnk_089FF84C bgmLttpTitle_track0 bgmLttpTitle_track1 bgmLttpTitle_track2 bgmLttpTitle_track3 bgmLttpTitle_track4 bgmLttpTitle_track5

bgmVaatiTheme_track0:: @ 08DCFDB8
	.incbin "assets/sounds/bgmVaatiTheme_track0.bin"
gUnk_08DCFDEB:: @ 08DCFDEB
	.incbin "assets/sounds/gUnk_08DCFDEB.bin"
gUnk_08DCFDF8:: @ 08DCFDF8
	.incbin "assets/sounds/gUnk_08DCFDF8.bin"
	.4byte gUnk_08DCFDF8
	.incbin "assets/sounds/gUnk_08DCFDF8_1.bin"
	.4byte gUnk_08DCFDF8
	.incbin "assets/sounds/gUnk_08DCFDF8_2.bin"
	.4byte gUnk_08DCFDF8
	.incbin "assets/sounds/gUnk_08DCFDF8_3.bin"
	.4byte gUnk_08DCFDF8
	.incbin "assets/sounds/gUnk_08DCFDF8_4.bin"
	.4byte gUnk_08DCFDF8
	.incbin "assets/sounds/gUnk_08DCFDF8_5.bin"
	.4byte gUnk_08DCFDF8
	.incbin "assets/sounds/gUnk_08DCFDF8_6.bin"
	.4byte gUnk_08DCFDEB
	.incbin "assets/sounds/gUnk_08DCFDF8_7.bin"
bgmVaatiTheme_track1:: @ 08DCFE4C
	.incbin "assets/sounds/bgmVaatiTheme_track1.bin"
gUnk_08DCFE7F:: @ 08DCFE7F
	.incbin "assets/sounds/gUnk_08DCFE7F.bin"
	.4byte gUnk_08DCFE7F
	.incbin "assets/sounds/gUnk_08DCFE7F_1.bin"
bgmVaatiTheme_track2:: @ 08DCFF0D
	.incbin "assets/sounds/bgmVaatiTheme_track2.bin"
gUnk_08DCFF40:: @ 08DCFF40
	.incbin "assets/sounds/gUnk_08DCFF40.bin"
gUnk_08DCFF53:: @ 08DCFF53
	.incbin "assets/sounds/gUnk_08DCFF53.bin"
	.4byte gUnk_08DCFF53
	.incbin "assets/sounds/gUnk_08DCFF53_1.bin"
	.4byte gUnk_08DCFF40
	.incbin "assets/sounds/gUnk_08DCFF53_2.bin"
bgmVaatiTheme_track3:: @ 08DCFFDA
	.incbin "assets/sounds/bgmVaatiTheme_track3.bin"
gUnk_08DCFFF5:: @ 08DCFFF5
	.incbin "assets/sounds/gUnk_08DCFFF5.bin"
gUnk_08DCFFFD:: @ 08DCFFFD
	.incbin "assets/sounds/gUnk_08DCFFFD.bin"
	.4byte gUnk_08DCFFFD
	.incbin "assets/sounds/gUnk_08DCFFFD_1.bin"
	.4byte gUnk_08DCFFFD
	.incbin "assets/sounds/gUnk_08DCFFFD_2.bin"
	.4byte gUnk_08DCFFFD
	.incbin "assets/sounds/gUnk_08DCFFFD_3.bin"
	.4byte gUnk_08DCFFFD
	.incbin "assets/sounds/gUnk_08DCFFFD_4.bin"
	.4byte gUnk_08DCFFFD
	.incbin "assets/sounds/gUnk_08DCFFFD_5.bin"
	.4byte gUnk_08DCFFFD
	.incbin "assets/sounds/gUnk_08DCFFFD_6.bin"
	.4byte gUnk_08DCFFF5
	.incbin "assets/sounds/gUnk_08DCFFFD_7.bin"
bgmVaatiTheme_track4:: @ 08DD003F
	.incbin "assets/sounds/bgmVaatiTheme_track4.bin"
gUnk_08DD005E:: @ 08DD005E
	.incbin "assets/sounds/gUnk_08DD005E.bin"
gUnk_08DD0076:: @ 08DD0076
	.incbin "assets/sounds/gUnk_08DD0076.bin"
gUnk_08DD0097:: @ 08DD0097
	.incbin "assets/sounds/gUnk_08DD0097.bin"
	.4byte gUnk_08DD0076
	.incbin "assets/sounds/gUnk_08DD0097_1.bin"
	.4byte gUnk_08DD0097
	.incbin "assets/sounds/gUnk_08DD0097_2.bin"
	.4byte gUnk_08DD0076
	.incbin "assets/sounds/gUnk_08DD0097_3.bin"
	.4byte gUnk_08DD0097
	.incbin "assets/sounds/gUnk_08DD0097_4.bin"
	.4byte gUnk_08DD0076
	.incbin "assets/sounds/gUnk_08DD0097_5.bin"
	.4byte gUnk_08DD005E
	.incbin "assets/sounds/gUnk_08DD0097_6.bin"
bgmVaatiTheme_track5:: @ 08DD00D5
	.incbin "assets/sounds/bgmVaatiTheme_track5.bin"
gUnk_08DD00DD:: @ 08DD00DD
	.incbin "assets/sounds/gUnk_08DD00DD.bin"
	.4byte gUnk_08DD00DD
	.incbin "assets/sounds/gUnk_08DD00DD_1.bin"
bgmVaatiTheme_track6:: @ 08DD0154
	.incbin "assets/sounds/bgmVaatiTheme_track6.bin"
gUnk_08DD0187:: @ 08DD0187
	.incbin "assets/sounds/gUnk_08DD0187.bin"
gUnk_08DD0189:: @ 08DD0189
	.incbin "assets/sounds/gUnk_08DD0189.bin"
	.4byte gUnk_08DD0189
	.incbin "assets/sounds/gUnk_08DD0189_1.bin"
	.4byte gUnk_08DD0187
	.incbin "assets/sounds/gUnk_08DD0189_2.bin"
bgmVaatiTheme:: @ 08DD0244
	sound_header 7 0 0 0xbc gUnk_089FFE4C bgmVaatiTheme_track0 bgmVaatiTheme_track1 bgmVaatiTheme_track2 bgmVaatiTheme_track3 bgmVaatiTheme_track4 bgmVaatiTheme_track5 bgmVaatiTheme_track6

bgmEzloTheme_track0:: @ 08DD0268
	.incbin "assets/sounds/bgmEzloTheme_track0.bin"
gUnk_08DD0273:: @ 08DD0273
	.incbin "assets/sounds/gUnk_08DD0273.bin"
	.4byte gUnk_08DD0273
	.incbin "assets/sounds/gUnk_08DD0273_1.bin"
bgmEzloTheme_track1:: @ 08DD02FF
	.incbin "assets/sounds/bgmEzloTheme_track1.bin"
gUnk_08DD0306:: @ 08DD0306
	.incbin "assets/sounds/gUnk_08DD0306.bin"
gUnk_08DD0324:: @ 08DD0324
	.incbin "assets/sounds/gUnk_08DD0324.bin"
	.4byte gUnk_08DD0324
	.incbin "assets/sounds/gUnk_08DD0324_1.bin"
gUnk_08DD0366:: @ 08DD0366
	.incbin "assets/sounds/gUnk_08DD0366.bin"
	.4byte gUnk_08DD0366
	.incbin "assets/sounds/gUnk_08DD0366_1.bin"
	.4byte gUnk_08DD0366
	.incbin "assets/sounds/gUnk_08DD0366_2.bin"
	.4byte gUnk_08DD0306
	.incbin "assets/sounds/gUnk_08DD0366_3.bin"
bgmEzloTheme_track2:: @ 08DD03AB
	.incbin "assets/sounds/bgmEzloTheme_track2.bin"
gUnk_08DD03B2:: @ 08DD03B2
	.incbin "assets/sounds/gUnk_08DD03B2.bin"
	.4byte gUnk_08DD03B2
	.incbin "assets/sounds/gUnk_08DD03B2_1.bin"
bgmEzloTheme_track3:: @ 08DD046F
	.incbin "assets/sounds/bgmEzloTheme_track3.bin"
gUnk_08DD0479:: @ 08DD0479
	.incbin "assets/sounds/gUnk_08DD0479.bin"
	.4byte gUnk_08DD0479
	.incbin "assets/sounds/gUnk_08DD0479_1.bin"
bgmEzloTheme_track4:: @ 08DD0511
	.incbin "assets/sounds/bgmEzloTheme_track4.bin"
gUnk_08DD0518:: @ 08DD0518
	.incbin "assets/sounds/gUnk_08DD0518.bin"
gUnk_08DD051F:: @ 08DD051F
	.incbin "assets/sounds/gUnk_08DD051F.bin"
	.4byte gUnk_08DD051F
	.incbin "assets/sounds/gUnk_08DD051F_1.bin"
gUnk_08DD0534:: @ 08DD0534
	.incbin "assets/sounds/gUnk_08DD0534.bin"
	.4byte gUnk_08DD0534
	.incbin "assets/sounds/gUnk_08DD0534_1.bin"
	.4byte gUnk_08DD0534
	.incbin "assets/sounds/gUnk_08DD0534_2.bin"
	.4byte gUnk_08DD0518
	.incbin "assets/sounds/gUnk_08DD0534_3.bin"
bgmEzloTheme_track5:: @ 08DD0571
	.incbin "assets/sounds/bgmEzloTheme_track5.bin"
gUnk_08DD057B:: @ 08DD057B
	.incbin "assets/sounds/gUnk_08DD057B.bin"
gUnk_08DD05CA:: @ 08DD05CA
	.incbin "assets/sounds/gUnk_08DD05CA.bin"
	.4byte gUnk_08DD05CA
	.incbin "assets/sounds/gUnk_08DD05CA_1.bin"
	.4byte gUnk_08DD057B
	.incbin "assets/sounds/gUnk_08DD05CA_2.bin"
bgmEzloTheme_track6:: @ 08DD060A
	.incbin "assets/sounds/bgmEzloTheme_track6.bin"
gUnk_08DD0612:: @ 08DD0612
	.incbin "assets/sounds/gUnk_08DD0612.bin"
gUnk_08DD062B:: @ 08DD062B
	.incbin "assets/sounds/gUnk_08DD062B.bin"
gUnk_08DD0649:: @ 08DD0649
	.incbin "assets/sounds/gUnk_08DD0649.bin"
	.4byte gUnk_08DD0649
	.incbin "assets/sounds/gUnk_08DD0649_1.bin"
	.4byte gUnk_08DD062B
	.incbin "assets/sounds/gUnk_08DD0649_2.bin"
	.4byte gUnk_08DD0649
	.incbin "assets/sounds/gUnk_08DD0649_3.bin"
	.4byte gUnk_08DD0612
	.incbin "assets/sounds/gUnk_08DD0649_4.bin"
bgmEzloTheme:: @ 08DD0690
	sound_header 7 0 0 0x9e gUnk_08A0044C bgmEzloTheme_track0 bgmEzloTheme_track1 bgmEzloTheme_track2 bgmEzloTheme_track3 bgmEzloTheme_track4 bgmEzloTheme_track5 bgmEzloTheme_track6

bgmStory_track0:: @ 08DD06B4
	.incbin "assets/sounds/bgmStory_track0.bin"
gUnk_08DD06E5:: @ 08DD06E5
	.incbin "assets/sounds/gUnk_08DD06E5.bin"
gUnk_08DD06FE:: @ 08DD06FE
	.incbin "assets/sounds/gUnk_08DD06FE.bin"
gUnk_08DD0710:: @ 08DD0710
	.incbin "assets/sounds/gUnk_08DD0710.bin"
	.4byte gUnk_08DD06FE
	.incbin "assets/sounds/gUnk_08DD0710_1.bin"
	.4byte gUnk_08DD06E5
	.incbin "assets/sounds/gUnk_08DD0710_2.bin"
	.4byte gUnk_08DD0710
gUnk_08DD0774:: @ 08DD0774
	.incbin "assets/sounds/gUnk_08DD0774.bin"
	.4byte gUnk_08DD0774
	.incbin "assets/sounds/gUnk_08DD0774_1.bin"
bgmStory_track1:: @ 08DD07DC
	.incbin "assets/sounds/bgmStory_track1.bin"
bgmStory_track2:: @ 08DD0815
	.incbin "assets/sounds/bgmStory_track2.bin"
bgmStory_track3:: @ 08DD0867
	.incbin "assets/sounds/bgmStory_track3.bin"
bgmStory_track4:: @ 08DD08C3
	.incbin "assets/sounds/bgmStory_track4.bin"
gUnk_08DD08DE:: @ 08DD08DE
	.incbin "assets/sounds/gUnk_08DD08DE.bin"
gUnk_08DD08F5:: @ 08DD08F5
	.incbin "assets/sounds/gUnk_08DD08F5.bin"
	.4byte gUnk_08DD08F5
	.incbin "assets/sounds/gUnk_08DD08F5_1.bin"
	.4byte gUnk_08DD08DE
	.incbin "assets/sounds/gUnk_08DD08F5_2.bin"
	.4byte gUnk_08DD08F5
	.incbin "assets/sounds/gUnk_08DD08F5_3.bin"
	.4byte gUnk_08DD08DE
	.incbin "assets/sounds/gUnk_08DD08F5_4.bin"
	.4byte gUnk_08DD08F5
	.incbin "assets/sounds/gUnk_08DD08F5_5.bin"
	.4byte gUnk_08DD08DE
	.incbin "assets/sounds/gUnk_08DD08F5_6.bin"
gUnk_08DD097E:: @ 08DD097E
	.incbin "assets/sounds/gUnk_08DD097E.bin"
gUnk_08DD0998:: @ 08DD0998
	.incbin "assets/sounds/gUnk_08DD0998.bin"
	.4byte gUnk_08DD097E
	.incbin "assets/sounds/gUnk_08DD0998_1.bin"
	.4byte gUnk_08DD0998
	.incbin "assets/sounds/gUnk_08DD0998_2.bin"
	.4byte gUnk_08DD097E
	.incbin "assets/sounds/gUnk_08DD0998_3.bin"
bgmStory_track5:: @ 08DD09EF
	.incbin "assets/sounds/bgmStory_track5.bin"
bgmStory_track6:: @ 08DD0A2E
	.incbin "assets/sounds/bgmStory_track6.bin"
bgmStory_track7:: @ 08DD0A5D
	.incbin "assets/sounds/bgmStory_track7.bin"
bgmStory:: @ 08DD0A94
	sound_header 8 0 0 0xb2 gUnk_08A00A4C bgmStory_track0 bgmStory_track1 bgmStory_track2 bgmStory_track3 bgmStory_track4 bgmStory_track5 bgmStory_track6 bgmStory_track7

bgmFestivalApproach_track0:: @ 08DD0ABC
	.incbin "assets/sounds/bgmFestivalApproach_track0.bin"
gUnk_08DD0AC7:: @ 08DD0AC7
	.incbin "assets/sounds/gUnk_08DD0AC7.bin"
gUnk_08DD0AFF:: @ 08DD0AFF
	.incbin "assets/sounds/gUnk_08DD0AFF.bin"
gUnk_08DD0B36:: @ 08DD0B36
	.incbin "assets/sounds/gUnk_08DD0B36.bin"
gUnk_08DD0B6F:: @ 08DD0B6F
	.incbin "assets/sounds/gUnk_08DD0B6F.bin"
	.4byte gUnk_08DD0B36
	.incbin "assets/sounds/gUnk_08DD0B6F_1.bin"
	.4byte gUnk_08DD0AFF
	.incbin "assets/sounds/gUnk_08DD0B6F_2.bin"
	.4byte gUnk_08DD0B36
	.incbin "assets/sounds/gUnk_08DD0B6F_3.bin"
	.4byte gUnk_08DD0B6F
gUnk_08DD0BB9:: @ 08DD0BB9
	.incbin "assets/sounds/gUnk_08DD0BB9.bin"
	.4byte gUnk_08DD0BB9
	.incbin "assets/sounds/gUnk_08DD0BB9_1.bin"
	.4byte gUnk_08DD0AC7
	.incbin "assets/sounds/gUnk_08DD0BB9_2.bin"
bgmFestivalApproach_track1:: @ 08DD0C6A
	.incbin "assets/sounds/bgmFestivalApproach_track1.bin"
gUnk_08DD0C71:: @ 08DD0C71
	.incbin "assets/sounds/gUnk_08DD0C71.bin"
gUnk_08DD0C82:: @ 08DD0C82
	.incbin "assets/sounds/gUnk_08DD0C82.bin"
gUnk_08DD0C90:: @ 08DD0C90
	.incbin "assets/sounds/gUnk_08DD0C90.bin"
gUnk_08DD0CA1:: @ 08DD0CA1
	.incbin "assets/sounds/gUnk_08DD0CA1.bin"
gUnk_08DD0CAE:: @ 08DD0CAE
	.incbin "assets/sounds/gUnk_08DD0CAE.bin"
	.4byte gUnk_08DD0C82
	.incbin "assets/sounds/gUnk_08DD0CAE_1.bin"
	.4byte gUnk_08DD0C90
	.incbin "assets/sounds/gUnk_08DD0CAE_2.bin"
	.4byte gUnk_08DD0CA1
	.incbin "assets/sounds/gUnk_08DD0CAE_3.bin"
	.4byte gUnk_08DD0CAE
	.incbin "assets/sounds/gUnk_08DD0CAE_4.bin"
	.4byte gUnk_08DD0CAE
	.incbin "assets/sounds/gUnk_08DD0CAE_5.bin"
	.4byte gUnk_08DD0C90
	.incbin "assets/sounds/gUnk_08DD0CAE_6.bin"
	.4byte gUnk_08DD0C71
	.incbin "assets/sounds/gUnk_08DD0CAE_7.bin"
bgmFestivalApproach:: @ 08DD0CF4
	sound_header 2 0 0 0xa8 gUnk_08A00CF8 bgmFestivalApproach_track0 bgmFestivalApproach_track1

bgmBeatVaati_track0:: @ 08DD0D04
	.incbin "assets/sounds/bgmBeatVaati_track0.bin"
gUnk_08DD0D12:: @ 08DD0D12
	.incbin "assets/sounds/gUnk_08DD0D12.bin"
gUnk_08DD0D18:: @ 08DD0D18
	.incbin "assets/sounds/gUnk_08DD0D18.bin"
gUnk_08DD0D21:: @ 08DD0D21
	.incbin "assets/sounds/gUnk_08DD0D21.bin"
gUnk_08DD0D2C:: @ 08DD0D2C
	.incbin "assets/sounds/gUnk_08DD0D2C.bin"
gUnk_08DD0D33:: @ 08DD0D33
	.incbin "assets/sounds/gUnk_08DD0D33.bin"
	.4byte gUnk_08DD0D21
	.incbin "assets/sounds/gUnk_08DD0D33_1.bin"
	.4byte gUnk_08DD0D18
	.incbin "assets/sounds/gUnk_08DD0D33_2.bin"
	.4byte gUnk_08DD0D21
	.incbin "assets/sounds/gUnk_08DD0D33_3.bin"
	.4byte gUnk_08DD0D2C
	.incbin "assets/sounds/gUnk_08DD0D33_4.bin"
	.4byte gUnk_08DD0D33
	.incbin "assets/sounds/gUnk_08DD0D33_5.bin"
	.4byte gUnk_08DD0D12
	.incbin "assets/sounds/gUnk_08DD0D33_6.bin"
bgmBeatVaati_track1:: @ 08DD0D97
	.incbin "assets/sounds/bgmBeatVaati_track1.bin"
gUnk_08DD0D9E:: @ 08DD0D9E
	.incbin "assets/sounds/gUnk_08DD0D9E.bin"
gUnk_08DD0DA4:: @ 08DD0DA4
	.incbin "assets/sounds/gUnk_08DD0DA4.bin"
gUnk_08DD0DAE:: @ 08DD0DAE
	.incbin "assets/sounds/gUnk_08DD0DAE.bin"
	.4byte gUnk_08DD0DAE
	.incbin "assets/sounds/gUnk_08DD0DAE_1.bin"
	.4byte gUnk_08DD0DAE
	.incbin "assets/sounds/gUnk_08DD0DAE_2.bin"
	.4byte gUnk_08DD0DA4
	.incbin "assets/sounds/gUnk_08DD0DAE_3.bin"
	.4byte gUnk_08DD0DAE
	.incbin "assets/sounds/gUnk_08DD0DAE_4.bin"
	.4byte gUnk_08DD0DAE
	.incbin "assets/sounds/gUnk_08DD0DAE_5.bin"
	.4byte gUnk_08DD0D9E
	.incbin "assets/sounds/gUnk_08DD0DAE_6.bin"
bgmBeatVaati_track2:: @ 08DD0E11
	.incbin "assets/sounds/bgmBeatVaati_track2.bin"
gUnk_08DD0E18:: @ 08DD0E18
	.incbin "assets/sounds/gUnk_08DD0E18.bin"
gUnk_08DD0E40:: @ 08DD0E40
	.incbin "assets/sounds/gUnk_08DD0E40.bin"
gUnk_08DD0E59:: @ 08DD0E59
	.incbin "assets/sounds/gUnk_08DD0E59.bin"
gUnk_08DD0E67:: @ 08DD0E67
	.incbin "assets/sounds/gUnk_08DD0E67.bin"
gUnk_08DD0E74:: @ 08DD0E74
	.incbin "assets/sounds/gUnk_08DD0E74.bin"
gUnk_08DD0E86:: @ 08DD0E86
	.incbin "assets/sounds/gUnk_08DD0E86.bin"
gUnk_08DD0E9E:: @ 08DD0E9E
	.incbin "assets/sounds/gUnk_08DD0E9E.bin"
	.4byte gUnk_08DD0E40
	.incbin "assets/sounds/gUnk_08DD0E9E_1.bin"
	.4byte gUnk_08DD0E59
	.incbin "assets/sounds/gUnk_08DD0E9E_2.bin"
	.4byte gUnk_08DD0E67
	.incbin "assets/sounds/gUnk_08DD0E9E_3.bin"
	.4byte gUnk_08DD0E74
	.incbin "assets/sounds/gUnk_08DD0E9E_4.bin"
	.4byte gUnk_08DD0E86
	.incbin "assets/sounds/gUnk_08DD0E9E_5.bin"
	.4byte gUnk_08DD0E9E
	.incbin "assets/sounds/gUnk_08DD0E9E_6.bin"
	.4byte gUnk_08DD0E18
	.incbin "assets/sounds/gUnk_08DD0E9E_7.bin"
bgmBeatVaati_track3:: @ 08DD0F54
	.incbin "assets/sounds/bgmBeatVaati_track3.bin"
gUnk_08DD0F5B:: @ 08DD0F5B
	.incbin "assets/sounds/gUnk_08DD0F5B.bin"
	.4byte gUnk_08DD0F5B
	.incbin "assets/sounds/gUnk_08DD0F5B_1.bin"
bgmBeatVaati_track4:: @ 08DD0FF7
	.incbin "assets/sounds/bgmBeatVaati_track4.bin"
gUnk_08DD0FFA:: @ 08DD0FFA
	.incbin "assets/sounds/gUnk_08DD0FFA.bin"
	.4byte gUnk_08DD0FFA
	.incbin "assets/sounds/gUnk_08DD0FFA_1.bin"
bgmBeatVaati_track5:: @ 08DD10B4
	.incbin "assets/sounds/bgmBeatVaati_track5.bin"
gUnk_08DD10BB:: @ 08DD10BB
	.incbin "assets/sounds/gUnk_08DD10BB.bin"
gUnk_08DD10C3:: @ 08DD10C3
	.incbin "assets/sounds/gUnk_08DD10C3.bin"
gUnk_08DD10D3:: @ 08DD10D3
	.incbin "assets/sounds/gUnk_08DD10D3.bin"
gUnk_08DD10DC:: @ 08DD10DC
	.incbin "assets/sounds/gUnk_08DD10DC.bin"
	.4byte gUnk_08DD10D3
gUnk_08DD10EB:: @ 08DD10EB
	.incbin "assets/sounds/gUnk_08DD10EB.bin"
	.4byte gUnk_08DD10D3
	.incbin "assets/sounds/gUnk_08DD10EB_1.bin"
	.4byte gUnk_08DD10C3
	.incbin "assets/sounds/gUnk_08DD10EB_2.bin"
	.4byte gUnk_08DD10D3
	.incbin "assets/sounds/gUnk_08DD10EB_3.bin"
	.4byte gUnk_08DD10DC
	.incbin "assets/sounds/gUnk_08DD10EB_4.bin"
	.4byte gUnk_08DD10D3
	.incbin "assets/sounds/gUnk_08DD10EB_5.bin"
	.4byte gUnk_08DD10EB
	.incbin "assets/sounds/gUnk_08DD10EB_6.bin"
	.4byte gUnk_08DD10BB
	.incbin "assets/sounds/gUnk_08DD10EB_7.bin"
bgmBeatVaati:: @ 08DD11A8
	sound_header 6 0 0 0xa8 gUnk_08A012F8 bgmBeatVaati_track0 bgmBeatVaati_track1 bgmBeatVaati_track2 bgmBeatVaati_track3 bgmBeatVaati_track4 bgmBeatVaati_track5

bgmBeanstalk_track0:: @ 08DD11C8
	.incbin "assets/sounds/bgmBeanstalk_track0.bin"
gUnk_08DD11D3:: @ 08DD11D3
	.incbin "assets/sounds/gUnk_08DD11D3.bin"
gUnk_08DD11F3:: @ 08DD11F3
	.incbin "assets/sounds/gUnk_08DD11F3.bin"
gUnk_08DD121C:: @ 08DD121C
	.incbin "assets/sounds/gUnk_08DD121C.bin"
gUnk_08DD123D:: @ 08DD123D
	.incbin "assets/sounds/gUnk_08DD123D.bin"
	.4byte gUnk_08DD11F3
	.incbin "assets/sounds/gUnk_08DD123D_1.bin"
	.4byte gUnk_08DD121C
	.incbin "assets/sounds/gUnk_08DD123D_2.bin"
	.4byte gUnk_08DD123D
gUnk_08DD1294:: @ 08DD1294
	.incbin "assets/sounds/gUnk_08DD1294.bin"
	.4byte gUnk_08DD1294
gUnk_08DD12BA:: @ 08DD12BA
	.incbin "assets/sounds/gUnk_08DD12BA.bin"
gUnk_08DD12DB:: @ 08DD12DB
	.incbin "assets/sounds/gUnk_08DD12DB.bin"
	.4byte gUnk_08DD1294
	.incbin "assets/sounds/gUnk_08DD12DB_1.bin"
	.4byte gUnk_08DD1294
	.incbin "assets/sounds/gUnk_08DD12DB_2.bin"
	.4byte gUnk_08DD12BA
	.incbin "assets/sounds/gUnk_08DD12DB_3.bin"
	.4byte gUnk_08DD12DB
	.incbin "assets/sounds/gUnk_08DD12DB_4.bin"
	.4byte gUnk_08DD11D3
	.incbin "assets/sounds/gUnk_08DD12DB_5.bin"
bgmBeanstalk_track1:: @ 08DD1322
	.incbin "assets/sounds/bgmBeanstalk_track1.bin"
gUnk_08DD132C:: @ 08DD132C
	.incbin "assets/sounds/gUnk_08DD132C.bin"
gUnk_08DD1351:: @ 08DD1351
	.incbin "assets/sounds/gUnk_08DD1351.bin"
gUnk_08DD1367:: @ 08DD1367
	.incbin "assets/sounds/gUnk_08DD1367.bin"
	.4byte gUnk_08DD1351
	.incbin "assets/sounds/gUnk_08DD1367_1.bin"
	.4byte gUnk_08DD1367
	.incbin "assets/sounds/gUnk_08DD1367_2.bin"
	.4byte gUnk_08DD132C
	.incbin "assets/sounds/gUnk_08DD1367_3.bin"
bgmBeanstalk_track2:: @ 08DD139C
	.incbin "assets/sounds/bgmBeanstalk_track2.bin"
gUnk_08DD13A4:: @ 08DD13A4
	.incbin "assets/sounds/gUnk_08DD13A4.bin"
gUnk_08DD13B2:: @ 08DD13B2
	.incbin "assets/sounds/gUnk_08DD13B2.bin"
gUnk_08DD13BC:: @ 08DD13BC
	.incbin "assets/sounds/gUnk_08DD13BC.bin"
gUnk_08DD13CC:: @ 08DD13CC
	.incbin "assets/sounds/gUnk_08DD13CC.bin"
gUnk_08DD13D6:: @ 08DD13D6
	.incbin "assets/sounds/gUnk_08DD13D6.bin"
	.4byte gUnk_08DD13B2
	.incbin "assets/sounds/gUnk_08DD13D6_1.bin"
	.4byte gUnk_08DD13BC
	.incbin "assets/sounds/gUnk_08DD13D6_2.bin"
	.4byte gUnk_08DD13CC
	.incbin "assets/sounds/gUnk_08DD13D6_3.bin"
	.4byte gUnk_08DD13D6
	.incbin "assets/sounds/gUnk_08DD13D6_4.bin"
	.4byte gUnk_08DD13B2
	.incbin "assets/sounds/gUnk_08DD13D6_5.bin"
	.4byte gUnk_08DD13BC
	.incbin "assets/sounds/gUnk_08DD13D6_6.bin"
	.4byte gUnk_08DD13CC
	.incbin "assets/sounds/gUnk_08DD13D6_7.bin"
	.4byte gUnk_08DD13D6
	.incbin "assets/sounds/gUnk_08DD13D6_8.bin"
	.4byte gUnk_08DD13B2
	.incbin "assets/sounds/gUnk_08DD13D6_9.bin"
	.4byte gUnk_08DD13BC
	.incbin "assets/sounds/gUnk_08DD13D6_10.bin"
	.4byte gUnk_08DD13CC
	.incbin "assets/sounds/gUnk_08DD13D6_11.bin"
	.4byte gUnk_08DD13A4
	.incbin "assets/sounds/gUnk_08DD13D6_12.bin"
bgmBeanstalk_track3:: @ 08DD1424
	.incbin "assets/sounds/bgmBeanstalk_track3.bin"
gUnk_08DD142B:: @ 08DD142B
	.incbin "assets/sounds/gUnk_08DD142B.bin"
	.4byte gUnk_08DD142B
	.incbin "assets/sounds/gUnk_08DD142B_1.bin"
bgmBeanstalk_track4:: @ 08DD143C
	.incbin "assets/sounds/bgmBeanstalk_track4.bin"
gUnk_08DD1443:: @ 08DD1443
	.incbin "assets/sounds/gUnk_08DD1443.bin"
gUnk_08DD1464:: @ 08DD1464
	.incbin "assets/sounds/gUnk_08DD1464.bin"
gUnk_08DD1477:: @ 08DD1477
	.incbin "assets/sounds/gUnk_08DD1477.bin"
	.4byte gUnk_08DD1464
	.incbin "assets/sounds/gUnk_08DD1477_1.bin"
	.4byte gUnk_08DD1477
	.incbin "assets/sounds/gUnk_08DD1477_2.bin"
	.4byte gUnk_08DD1443
	.incbin "assets/sounds/gUnk_08DD1477_3.bin"
bgmBeanstalk_track5:: @ 08DD14A6
	.incbin "assets/sounds/bgmBeanstalk_track5.bin"
gUnk_08DD14AD:: @ 08DD14AD
	.incbin "assets/sounds/gUnk_08DD14AD.bin"
	.4byte gUnk_08DD14AD
	.incbin "assets/sounds/gUnk_08DD14AD_1.bin"
bgmBeanstalk_track6:: @ 08DD1525
	.incbin "assets/sounds/bgmBeanstalk_track6.bin"
gUnk_08DD152C:: @ 08DD152C
	.incbin "assets/sounds/gUnk_08DD152C.bin"
	.4byte gUnk_08DD152C
	.incbin "assets/sounds/gUnk_08DD152C_1.bin"
bgmBeanstalk:: @ 08DD1548
	sound_header 7 0 0 0x9e gUnk_08A018F8 bgmBeanstalk_track0 bgmBeanstalk_track1 bgmBeanstalk_track2 bgmBeanstalk_track3 bgmBeanstalk_track4 bgmBeanstalk_track5 bgmBeanstalk_track6

bgmHouse_track0:: @ 08DD156C
	.incbin "assets/sounds/bgmHouse_track0.bin"
bgmHouse_track1:: @ 08DD1593
	.incbin "assets/sounds/bgmHouse_track1.bin"
gUnk_08DD159E:: @ 08DD159E
	.incbin "assets/sounds/gUnk_08DD159E.bin"
	.4byte gUnk_08DD159E
	.incbin "assets/sounds/gUnk_08DD159E_1.bin"
bgmHouse_track2:: @ 08DD1662
	.incbin "assets/sounds/bgmHouse_track2.bin"
gUnk_08DD166A:: @ 08DD166A
	.incbin "assets/sounds/gUnk_08DD166A.bin"
	.4byte gUnk_08DD166A
	.incbin "assets/sounds/gUnk_08DD166A_1.bin"
bgmHouse_track3:: @ 08DD16E5
	.incbin "assets/sounds/bgmHouse_track3.bin"
gUnk_08DD16ED:: @ 08DD16ED
	.incbin "assets/sounds/gUnk_08DD16ED.bin"
	.4byte gUnk_08DD16ED
	.incbin "assets/sounds/gUnk_08DD16ED_1.bin"
bgmHouse_track4:: @ 08DD1768
	.incbin "assets/sounds/bgmHouse_track4.bin"
gUnk_08DD1770:: @ 08DD1770
	.incbin "assets/sounds/gUnk_08DD1770.bin"
gUnk_08DD1782:: @ 08DD1782
	.incbin "assets/sounds/gUnk_08DD1782.bin"
	.4byte gUnk_08DD1782
gUnk_08DD1792:: @ 08DD1792
	.incbin "assets/sounds/gUnk_08DD1792.bin"
	.4byte gUnk_08DD1792
gUnk_08DD17A2:: @ 08DD17A2
	.incbin "assets/sounds/gUnk_08DD17A2.bin"
	.4byte gUnk_08DD17A2
	.incbin "assets/sounds/gUnk_08DD17A2_1.bin"
	.4byte gUnk_08DD1770
	.incbin "assets/sounds/gUnk_08DD17A2_2.bin"
bgmHouse_track5:: @ 08DD17B8
	.incbin "assets/sounds/bgmHouse_track5.bin"
gUnk_08DD17C0:: @ 08DD17C0
	.incbin "assets/sounds/gUnk_08DD17C0.bin"
	.4byte gUnk_08DD17C0
	.incbin "assets/sounds/gUnk_08DD17C0_1.bin"
bgmHouse_track6:: @ 08DD1844
	.incbin "assets/sounds/bgmHouse_track6.bin"
bgmHouse_track7:: @ 08DD1869
	.incbin "assets/sounds/bgmHouse_track7.bin"
gUnk_08DD1890:: @ 08DD1890
	.incbin "assets/sounds/gUnk_08DD1890.bin"
	.4byte gUnk_08DD1890
	.incbin "assets/sounds/gUnk_08DD1890_1.bin"
bgmHouse:: @ 08DD1990
	sound_header 8 0 0 0xa8 gUnk_08A01EF8 bgmHouse_track0 bgmHouse_track1 bgmHouse_track2 bgmHouse_track3 bgmHouse_track4 bgmHouse_track5 bgmHouse_track6 bgmHouse_track7

bgmCuccoMinigame_track0:: @ 08DD19B8
	.incbin "assets/sounds/bgmCuccoMinigame_track0.bin"
gUnk_08DD19C3:: @ 08DD19C3
	.incbin "assets/sounds/gUnk_08DD19C3.bin"
	.4byte gUnk_08DD19C3
	.incbin "assets/sounds/gUnk_08DD19C3_1.bin"
bgmCuccoMinigame_track1:: @ 08DD1A5C
	.incbin "assets/sounds/bgmCuccoMinigame_track1.bin"
gUnk_08DD1A63:: @ 08DD1A63
	.incbin "assets/sounds/gUnk_08DD1A63.bin"
	.4byte gUnk_08DD1A63
	.incbin "assets/sounds/gUnk_08DD1A63_1.bin"
bgmCuccoMinigame_track2:: @ 08DD1AA4
	.incbin "assets/sounds/bgmCuccoMinigame_track2.bin"
gUnk_08DD1AAB:: @ 08DD1AAB
	.incbin "assets/sounds/gUnk_08DD1AAB.bin"
gUnk_08DD1ADC:: @ 08DD1ADC
	.incbin "assets/sounds/gUnk_08DD1ADC.bin"
	.4byte gUnk_08DD1ADC
	.incbin "assets/sounds/gUnk_08DD1ADC_1.bin"
	.4byte gUnk_08DD1ADC
	.incbin "assets/sounds/gUnk_08DD1ADC_2.bin"
	.4byte gUnk_08DD1AAB
	.incbin "assets/sounds/gUnk_08DD1ADC_3.bin"
bgmCuccoMinigame_track3:: @ 08DD1B25
	.incbin "assets/sounds/bgmCuccoMinigame_track3.bin"
gUnk_08DD1B2C:: @ 08DD1B2C
	.incbin "assets/sounds/gUnk_08DD1B2C.bin"
	.4byte gUnk_08DD1B2C
	.incbin "assets/sounds/gUnk_08DD1B2C_1.bin"
bgmCuccoMinigame_track4:: @ 08DD1BD0
	.incbin "assets/sounds/bgmCuccoMinigame_track4.bin"
gUnk_08DD1BD7:: @ 08DD1BD7
	.incbin "assets/sounds/gUnk_08DD1BD7.bin"
	.4byte gUnk_08DD1BD7
	.incbin "assets/sounds/gUnk_08DD1BD7_1.bin"
bgmCuccoMinigame_track5:: @ 08DD1BF1
	.incbin "assets/sounds/bgmCuccoMinigame_track5.bin"
gUnk_08DD1BF8:: @ 08DD1BF8
	.incbin "assets/sounds/gUnk_08DD1BF8.bin"
gUnk_08DD1C03:: @ 08DD1C03
	.incbin "assets/sounds/gUnk_08DD1C03.bin"
	.4byte gUnk_08DD1C03
	.incbin "assets/sounds/gUnk_08DD1C03_1.bin"
	.4byte gUnk_08DD1C03
	.incbin "assets/sounds/gUnk_08DD1C03_2.bin"
	.4byte gUnk_08DD1BF8
	.incbin "assets/sounds/gUnk_08DD1C03_3.bin"
bgmCuccoMinigame:: @ 08DD1C2C
	sound_header 6 0 0 0xa8 gUnk_08A022C4 bgmCuccoMinigame_track0 bgmCuccoMinigame_track1 bgmCuccoMinigame_track2 bgmCuccoMinigame_track3 bgmCuccoMinigame_track4 bgmCuccoMinigame_track5

bgmSyrupTheme_track0:: @ 08DD1C4C
	.incbin "assets/sounds/bgmSyrupTheme_track0.bin"
gUnk_08DD1C57:: @ 08DD1C57
	.incbin "assets/sounds/gUnk_08DD1C57.bin"
	.4byte gUnk_08DD1C57
	.incbin "assets/sounds/gUnk_08DD1C57_1.bin"
bgmSyrupTheme_track1:: @ 08DD1CB3
	.incbin "assets/sounds/bgmSyrupTheme_track1.bin"
gUnk_08DD1CBA:: @ 08DD1CBA
	.incbin "assets/sounds/gUnk_08DD1CBA.bin"
gUnk_08DD1CC7:: @ 08DD1CC7
	.incbin "assets/sounds/gUnk_08DD1CC7.bin"
	.4byte gUnk_08DD1CC7
	.incbin "assets/sounds/gUnk_08DD1CC7_1.bin"
	.4byte gUnk_08DD1CBA
	.incbin "assets/sounds/gUnk_08DD1CC7_2.bin"
bgmSyrupTheme_track2:: @ 08DD1D3C
	.incbin "assets/sounds/bgmSyrupTheme_track2.bin"
gUnk_08DD1D46:: @ 08DD1D46
	.incbin "assets/sounds/gUnk_08DD1D46.bin"
gUnk_08DD1D5F:: @ 08DD1D5F
	.incbin "assets/sounds/gUnk_08DD1D5F.bin"
	.4byte gUnk_08DD1D5F
	.incbin "assets/sounds/gUnk_08DD1D5F_1.bin"
	.4byte gUnk_08DD1D46
	.incbin "assets/sounds/gUnk_08DD1D5F_2.bin"
bgmSyrupTheme_track3:: @ 08DD1DA3
	.incbin "assets/sounds/bgmSyrupTheme_track3.bin"
gUnk_08DD1DAA:: @ 08DD1DAA
	.incbin "assets/sounds/gUnk_08DD1DAA.bin"
	.4byte gUnk_08DD1DAA
	.incbin "assets/sounds/gUnk_08DD1DAA_1.bin"
bgmSyrupTheme_track4:: @ 08DD1E05
	.incbin "assets/sounds/bgmSyrupTheme_track4.bin"
gUnk_08DD1E0D:: @ 08DD1E0D
	.incbin "assets/sounds/gUnk_08DD1E0D.bin"
	.4byte gUnk_08DD1E0D
	.incbin "assets/sounds/gUnk_08DD1E0D_1.bin"
bgmSyrupTheme_track5:: @ 08DD1E32
	.incbin "assets/sounds/bgmSyrupTheme_track5.bin"
gUnk_08DD1E3C:: @ 08DD1E3C
	.incbin "assets/sounds/gUnk_08DD1E3C.bin"
	.4byte gUnk_08DD1E3C
	.incbin "assets/sounds/gUnk_08DD1E3C_1.bin"
bgmSyrupTheme:: @ 08DD1EA4
	sound_header 6 0 0 0xa8 gUnk_08A028C4 bgmSyrupTheme_track0 bgmSyrupTheme_track1 bgmSyrupTheme_track2 bgmSyrupTheme_track3 bgmSyrupTheme_track4 bgmSyrupTheme_track5

bgmDungeon_track0:: @ 08DD1EC4
	.incbin "assets/sounds/bgmDungeon_track0.bin"
gUnk_08DD1ECF:: @ 08DD1ECF
	.incbin "assets/sounds/gUnk_08DD1ECF.bin"
gUnk_08DD1EF1:: @ 08DD1EF1
	.incbin "assets/sounds/gUnk_08DD1EF1.bin"
	.4byte gUnk_08DD1EF1
	.incbin "assets/sounds/gUnk_08DD1EF1_1.bin"
	.4byte gUnk_08DD1ECF
	.incbin "assets/sounds/gUnk_08DD1EF1_2.bin"
bgmDungeon_track1:: @ 08DD1F35
	.incbin "assets/sounds/bgmDungeon_track1.bin"
gUnk_08DD1F3C:: @ 08DD1F3C
	.incbin "assets/sounds/gUnk_08DD1F3C.bin"
	.4byte gUnk_08DD1F3C
	.incbin "assets/sounds/gUnk_08DD1F3C_1.bin"
bgmDungeon_track2:: @ 08DD1F67
	.incbin "assets/sounds/bgmDungeon_track2.bin"
gUnk_08DD1F6E:: @ 08DD1F6E
	.incbin "assets/sounds/gUnk_08DD1F6E.bin"
gUnk_08DD1F87:: @ 08DD1F87
	.incbin "assets/sounds/gUnk_08DD1F87.bin"
	.4byte gUnk_08DD1F87
	.incbin "assets/sounds/gUnk_08DD1F87_1.bin"
	.4byte gUnk_08DD1F6E
	.incbin "assets/sounds/gUnk_08DD1F87_2.bin"
bgmDungeon_track3:: @ 08DD2006
	.incbin "assets/sounds/bgmDungeon_track3.bin"
gUnk_08DD200D:: @ 08DD200D
	.incbin "assets/sounds/gUnk_08DD200D.bin"
gUnk_08DD2026:: @ 08DD2026
	.incbin "assets/sounds/gUnk_08DD2026.bin"
	.4byte gUnk_08DD2026
	.incbin "assets/sounds/gUnk_08DD2026_1.bin"
	.4byte gUnk_08DD200D
	.incbin "assets/sounds/gUnk_08DD2026_2.bin"
bgmDungeon_track4:: @ 08DD20A5
	.incbin "assets/sounds/bgmDungeon_track4.bin"
gUnk_08DD20AA:: @ 08DD20AA
	.incbin "assets/sounds/gUnk_08DD20AA.bin"
gUnk_08DD20B0:: @ 08DD20B0
	.incbin "assets/sounds/gUnk_08DD20B0.bin"
gUnk_08DD20D1:: @ 08DD20D1
	.incbin "assets/sounds/gUnk_08DD20D1.bin"
	.4byte gUnk_08DD20B0
	.incbin "assets/sounds/gUnk_08DD20D1_1.bin"
	.4byte gUnk_08DD20D1
	.incbin "assets/sounds/gUnk_08DD20D1_2.bin"
	.4byte gUnk_08DD20AA
	.incbin "assets/sounds/gUnk_08DD20D1_3.bin"
bgmDungeon:: @ 08DD2130
	sound_header 5 0 0 0xbc gUnk_08A02EC4 bgmDungeon_track0 bgmDungeon_track1 bgmDungeon_track2 bgmDungeon_track3 bgmDungeon_track4

bgmElementTheme_track0:: @ 08DD214C
	.incbin "assets/sounds/bgmElementTheme_track0.bin"
gUnk_08DD21B8:: @ 08DD21B8
	.incbin "assets/sounds/gUnk_08DD21B8.bin"
	.4byte gUnk_08DD21B8
	.incbin "assets/sounds/gUnk_08DD21B8_1.bin"
bgmElementTheme_track1:: @ 08DD221F
	.incbin "assets/sounds/bgmElementTheme_track1.bin"
gUnk_08DD225E:: @ 08DD225E
	.incbin "assets/sounds/gUnk_08DD225E.bin"
	.4byte gUnk_08DD225E
	.incbin "assets/sounds/gUnk_08DD225E_1.bin"
bgmElementTheme_track2:: @ 08DD2269
	.incbin "assets/sounds/bgmElementTheme_track2.bin"
gUnk_08DD22D6:: @ 08DD22D6
	.incbin "assets/sounds/gUnk_08DD22D6.bin"
	.4byte gUnk_08DD22D6
	.incbin "assets/sounds/gUnk_08DD22D6_1.bin"
bgmElementTheme:: @ 08DD2340
	sound_header 3 0 0 0xbc gUnk_08A034C4 bgmElementTheme_track0 bgmElementTheme_track1 bgmElementTheme_track2

bgmHyruleField_track0:: @ 08DD2354
	.incbin "assets/sounds/bgmHyruleField_track0.bin"
gUnk_08DD2379:: @ 08DD2379
	.incbin "assets/sounds/gUnk_08DD2379.bin"
	.4byte gUnk_08DD2379
	.incbin "assets/sounds/gUnk_08DD2379_1.bin"
gUnk_08DD23AD:: @ 08DD23AD
	.incbin "assets/sounds/gUnk_08DD23AD.bin"
gUnk_08DD23C2:: @ 08DD23C2
	.incbin "assets/sounds/gUnk_08DD23C2.bin"
	.4byte gUnk_08DD23C2
	.incbin "assets/sounds/gUnk_08DD23C2_1.bin"
gUnk_08DD24A4:: @ 08DD24A4
	.incbin "assets/sounds/gUnk_08DD24A4.bin"
	.4byte gUnk_08DD24A4
	.incbin "assets/sounds/gUnk_08DD24A4_1.bin"
	.4byte gUnk_08DD23AD
	.incbin "assets/sounds/gUnk_08DD24A4_2.bin"
bgmHyruleField_track1:: @ 08DD253A
	.incbin "assets/sounds/bgmHyruleField_track1.bin"
gUnk_08DD258B:: @ 08DD258B
	.incbin "assets/sounds/gUnk_08DD258B.bin"
gUnk_08DD25A0:: @ 08DD25A0
	.incbin "assets/sounds/gUnk_08DD25A0.bin"
	.4byte gUnk_08DD25A0
	.incbin "assets/sounds/gUnk_08DD25A0_1.bin"
gUnk_08DD2632:: @ 08DD2632
	.incbin "assets/sounds/gUnk_08DD2632.bin"
	.4byte gUnk_08DD2632
	.incbin "assets/sounds/gUnk_08DD2632_1.bin"
	.4byte gUnk_08DD258B
	.incbin "assets/sounds/gUnk_08DD2632_2.bin"
bgmHyruleField_track2:: @ 08DD268C
	.incbin "assets/sounds/bgmHyruleField_track2.bin"
gUnk_08DD2697:: @ 08DD2697
	.incbin "assets/sounds/gUnk_08DD2697.bin"
gUnk_08DD26AC:: @ 08DD26AC
	.incbin "assets/sounds/gUnk_08DD26AC.bin"
	.4byte gUnk_08DD26AC
	.incbin "assets/sounds/gUnk_08DD26AC_1.bin"
gUnk_08DD276C:: @ 08DD276C
	.incbin "assets/sounds/gUnk_08DD276C.bin"
gUnk_08DD277E:: @ 08DD277E
	.incbin "assets/sounds/gUnk_08DD277E.bin"
	.4byte gUnk_08DD276C
	.incbin "assets/sounds/gUnk_08DD277E_1.bin"
	.4byte gUnk_08DD277E
	.incbin "assets/sounds/gUnk_08DD277E_2.bin"
	.4byte gUnk_08DD2697
	.incbin "assets/sounds/gUnk_08DD277E_3.bin"
bgmHyruleField_track3:: @ 08DD27D7
	.incbin "assets/sounds/bgmHyruleField_track3.bin"
gUnk_08DD27F9:: @ 08DD27F9
	.incbin "assets/sounds/gUnk_08DD27F9.bin"
	.4byte gUnk_08DD27F9
	.incbin "assets/sounds/gUnk_08DD27F9_1.bin"
gUnk_08DD2832:: @ 08DD2832
	.incbin "assets/sounds/gUnk_08DD2832.bin"
gUnk_08DD2841:: @ 08DD2841
	.incbin "assets/sounds/gUnk_08DD2841.bin"
	.4byte gUnk_08DD2841
	.incbin "assets/sounds/gUnk_08DD2841_1.bin"
gUnk_08DD2930:: @ 08DD2930
	.incbin "assets/sounds/gUnk_08DD2930.bin"
	.4byte gUnk_08DD2930
	.incbin "assets/sounds/gUnk_08DD2930_1.bin"
	.4byte gUnk_08DD2832
	.incbin "assets/sounds/gUnk_08DD2930_2.bin"
bgmHyruleField_track4:: @ 08DD29CE
	.incbin "assets/sounds/bgmHyruleField_track4.bin"
gUnk_08DD29E7:: @ 08DD29E7
	.incbin "assets/sounds/gUnk_08DD29E7.bin"
gUnk_08DD29EE:: @ 08DD29EE
	.incbin "assets/sounds/gUnk_08DD29EE.bin"
gUnk_08DD29FE:: @ 08DD29FE
	.incbin "assets/sounds/gUnk_08DD29FE.bin"
	.4byte gUnk_08DD29FE
	.incbin "assets/sounds/gUnk_08DD29FE_1.bin"
	.4byte gUnk_08DD29EE
	.incbin "assets/sounds/gUnk_08DD29FE_2.bin"
	.4byte gUnk_08DD29E7
	.incbin "assets/sounds/gUnk_08DD29FE_3.bin"
bgmHyruleField_track5:: @ 08DD2A22
	.incbin "assets/sounds/bgmHyruleField_track5.bin"
bgmHyruleField_track6:: @ 08DD2A74
	.incbin "assets/sounds/bgmHyruleField_track6.bin"
gUnk_08DD2A94:: @ 08DD2A94
	.incbin "assets/sounds/gUnk_08DD2A94.bin"
	.4byte gUnk_08DD2A94
	.incbin "assets/sounds/gUnk_08DD2A94_1.bin"
gUnk_08DD2AC2:: @ 08DD2AC2
	.incbin "assets/sounds/gUnk_08DD2AC2.bin"
gUnk_08DD2ADD:: @ 08DD2ADD
	.incbin "assets/sounds/gUnk_08DD2ADD.bin"
gUnk_08DD2AFC:: @ 08DD2AFC
	.incbin "assets/sounds/gUnk_08DD2AFC.bin"
gUnk_08DD2B1B:: @ 08DD2B1B
	.incbin "assets/sounds/gUnk_08DD2B1B.bin"
gUnk_08DD2B35:: @ 08DD2B35
	.incbin "assets/sounds/gUnk_08DD2B35.bin"
	.4byte gUnk_08DD2B35
	.incbin "assets/sounds/gUnk_08DD2B35_1.bin"
	.4byte gUnk_08DD2AFC
gUnk_08DD2B4E:: @ 08DD2B4E
	.incbin "assets/sounds/gUnk_08DD2B4E.bin"
	.4byte gUnk_08DD2ADD
	.incbin "assets/sounds/gUnk_08DD2B4E_1.bin"
	.4byte gUnk_08DD2B1B
gUnk_08DD2BA5:: @ 08DD2BA5
	.incbin "assets/sounds/gUnk_08DD2BA5.bin"
	.4byte gUnk_08DD2B1B
	.incbin "assets/sounds/gUnk_08DD2BA5_1.bin"
	.4byte gUnk_08DD2BA5
	.incbin "assets/sounds/gUnk_08DD2BA5_2.bin"
	.4byte gUnk_08DD2B1B
	.incbin "assets/sounds/gUnk_08DD2BA5_3.bin"
	.4byte gUnk_08DD2ADD
	.incbin "assets/sounds/gUnk_08DD2BA5_4.bin"
	.4byte gUnk_08DD2AFC
	.incbin "assets/sounds/gUnk_08DD2BA5_5.bin"
	.4byte gUnk_08DD2B4E
	.incbin "assets/sounds/gUnk_08DD2BA5_6.bin"
	.4byte gUnk_08DD2AC2
	.incbin "assets/sounds/gUnk_08DD2BA5_7.bin"
bgmHyruleField_track7:: @ 08DD2BFA
	.incbin "assets/sounds/bgmHyruleField_track7.bin"
gUnk_08DD2C04:: @ 08DD2C04
	.incbin "assets/sounds/gUnk_08DD2C04.bin"
gUnk_08DD2C0B:: @ 08DD2C0B
	.incbin "assets/sounds/gUnk_08DD2C0B.bin"
	.4byte gUnk_08DD2C04
	.incbin "assets/sounds/gUnk_08DD2C0B_1.bin"
	.4byte gUnk_08DD2C04
	.incbin "assets/sounds/gUnk_08DD2C0B_2.bin"
	.4byte gUnk_08DD2C0B
	.incbin "assets/sounds/gUnk_08DD2C0B_3.bin"
bgmHyruleField_track8:: @ 08DD2C35
	.incbin "assets/sounds/bgmHyruleField_track8.bin"
gUnk_08DD2C59:: @ 08DD2C59
	.incbin "assets/sounds/gUnk_08DD2C59.bin"
gUnk_08DD2C66:: @ 08DD2C66
	.incbin "assets/sounds/gUnk_08DD2C66.bin"
gUnk_08DD2C75:: @ 08DD2C75
	.incbin "assets/sounds/gUnk_08DD2C75.bin"
gUnk_08DD2C86:: @ 08DD2C86
	.incbin "assets/sounds/gUnk_08DD2C86.bin"
gUnk_08DD2CA5:: @ 08DD2CA5
	.incbin "assets/sounds/gUnk_08DD2CA5.bin"
gUnk_08DD2CBA:: @ 08DD2CBA
	.incbin "assets/sounds/gUnk_08DD2CBA.bin"
gUnk_08DD2CCF:: @ 08DD2CCF
	.incbin "assets/sounds/gUnk_08DD2CCF.bin"
	.4byte gUnk_08DD2C59
	.incbin "assets/sounds/gUnk_08DD2CCF_1.bin"
	.4byte gUnk_08DD2C75
	.incbin "assets/sounds/gUnk_08DD2CCF_2.bin"
	.4byte gUnk_08DD2C86
gUnk_08DD2D03:: @ 08DD2D03
	.incbin "assets/sounds/gUnk_08DD2D03.bin"
gUnk_08DD2D14:: @ 08DD2D14
	.incbin "assets/sounds/gUnk_08DD2D14.bin"
	.4byte gUnk_08DD2D03
	.incbin "assets/sounds/gUnk_08DD2D14_1.bin"
	.4byte gUnk_08DD2D14
	.incbin "assets/sounds/gUnk_08DD2D14_2.bin"
	.4byte gUnk_08DD2D03
	.incbin "assets/sounds/gUnk_08DD2D14_3.bin"
	.4byte gUnk_08DD2CA5
	.incbin "assets/sounds/gUnk_08DD2D14_4.bin"
	.4byte gUnk_08DD2CBA
	.incbin "assets/sounds/gUnk_08DD2D14_5.bin"
	.4byte gUnk_08DD2CCF
	.incbin "assets/sounds/gUnk_08DD2D14_6.bin"
	.4byte gUnk_08DD2C59
	.incbin "assets/sounds/gUnk_08DD2D14_7.bin"
	.4byte gUnk_08DD2C66
	.incbin "assets/sounds/gUnk_08DD2D14_8.bin"
bgmHyruleField:: @ 08DD2D50
	sound_header 9 0 0 0x9e gUnk_08A03794 bgmHyruleField_track0 bgmHyruleField_track1 bgmHyruleField_track2 bgmHyruleField_track3 bgmHyruleField_track4 bgmHyruleField_track5 bgmHyruleField_track6 bgmHyruleField_track7 bgmHyruleField_track8

bgmHyruleCastle_track0:: @ 08DD2D7C
	.incbin "assets/sounds/bgmHyruleCastle_track0.bin"
gUnk_08DD2DBA:: @ 08DD2DBA
	.incbin "assets/sounds/gUnk_08DD2DBA.bin"
	.4byte gUnk_08DD2DBA
	.incbin "assets/sounds/gUnk_08DD2DBA_1.bin"
bgmHyruleCastle_track1:: @ 08DD2E7C
	.incbin "assets/sounds/bgmHyruleCastle_track1.bin"
gUnk_08DD2EAD:: @ 08DD2EAD
	.incbin "assets/sounds/gUnk_08DD2EAD.bin"
	.4byte gUnk_08DD2EAD
	.incbin "assets/sounds/gUnk_08DD2EAD_1.bin"
bgmHyruleCastle_track2:: @ 08DD2EBB
	.incbin "assets/sounds/bgmHyruleCastle_track2.bin"
gUnk_08DD2EF3:: @ 08DD2EF3
	.incbin "assets/sounds/gUnk_08DD2EF3.bin"
gUnk_08DD2EFE:: @ 08DD2EFE
	.incbin "assets/sounds/gUnk_08DD2EFE.bin"
gUnk_08DD2F0C:: @ 08DD2F0C
	.incbin "assets/sounds/gUnk_08DD2F0C.bin"
	.4byte gUnk_08DD2F0C
	.incbin "assets/sounds/gUnk_08DD2F0C_1.bin"
	.4byte gUnk_08DD2EFE
	.incbin "assets/sounds/gUnk_08DD2F0C_2.bin"
	.4byte gUnk_08DD2EFE
	.incbin "assets/sounds/gUnk_08DD2F0C_3.bin"
	.4byte gUnk_08DD2F0C
	.incbin "assets/sounds/gUnk_08DD2F0C_4.bin"
	.4byte gUnk_08DD2F0C
	.incbin "assets/sounds/gUnk_08DD2F0C_5.bin"
	.4byte gUnk_08DD2EF3
	.incbin "assets/sounds/gUnk_08DD2F0C_6.bin"
bgmHyruleCastle_track3:: @ 08DD2F3B
	.incbin "assets/sounds/bgmHyruleCastle_track3.bin"
bgmHyruleCastle_track4:: @ 08DD2F72
	.incbin "assets/sounds/bgmHyruleCastle_track4.bin"
gUnk_08DD2FAF:: @ 08DD2FAF
	.incbin "assets/sounds/gUnk_08DD2FAF.bin"
	.4byte gUnk_08DD2FAF
	.incbin "assets/sounds/gUnk_08DD2FAF_1.bin"
bgmHyruleCastle_track5:: @ 08DD3004
	.incbin "assets/sounds/bgmHyruleCastle_track5.bin"
gUnk_08DD3035:: @ 08DD3035
	.incbin "assets/sounds/gUnk_08DD3035.bin"
gUnk_08DD3062:: @ 08DD3062
	.incbin "assets/sounds/gUnk_08DD3062.bin"
	.4byte gUnk_08DD3062
	.incbin "assets/sounds/gUnk_08DD3062_1.bin"
	.4byte gUnk_08DD3035
	.incbin "assets/sounds/gUnk_08DD3062_2.bin"
bgmHyruleCastle_track6:: @ 08DD30C9
	.incbin "assets/sounds/bgmHyruleCastle_track6.bin"
gUnk_08DD30DF:: @ 08DD30DF
	.incbin "assets/sounds/gUnk_08DD30DF.bin"
	.4byte gUnk_08DD30DF
	.incbin "assets/sounds/gUnk_08DD30DF_1.bin"
bgmHyruleCastle:: @ 08DD30F0
	sound_header 7 0 0 0xa8 gUnk_08A03D94 bgmHyruleCastle_track0 bgmHyruleCastle_track1 bgmHyruleCastle_track2 bgmHyruleCastle_track3 bgmHyruleCastle_track4 bgmHyruleCastle_track5 bgmHyruleCastle_track6

bgmHyruleCastleNointro_track0:: @ 08DD3114
	.incbin "assets/sounds/bgmHyruleCastleNointro_track0.bin"
gUnk_08DD3121:: @ 08DD3121
	.incbin "assets/sounds/gUnk_08DD3121.bin"
	.4byte gUnk_08DD3121
	.incbin "assets/sounds/gUnk_08DD3121_1.bin"
bgmHyruleCastleNointro_track1:: @ 08DD31E3
	.incbin "assets/sounds/bgmHyruleCastleNointro_track1.bin"
gUnk_08DD31EA:: @ 08DD31EA
	.incbin "assets/sounds/gUnk_08DD31EA.bin"
	.4byte gUnk_08DD31EA
	.incbin "assets/sounds/gUnk_08DD31EA_1.bin"
bgmHyruleCastleNointro_track2:: @ 08DD31F8
	.incbin "assets/sounds/bgmHyruleCastleNointro_track2.bin"
gUnk_08DD3201:: @ 08DD3201
	.incbin "assets/sounds/gUnk_08DD3201.bin"
gUnk_08DD320C:: @ 08DD320C
	.incbin "assets/sounds/gUnk_08DD320C.bin"
gUnk_08DD321A:: @ 08DD321A
	.incbin "assets/sounds/gUnk_08DD321A.bin"
	.4byte gUnk_08DD321A
	.incbin "assets/sounds/gUnk_08DD321A_1.bin"
	.4byte gUnk_08DD320C
	.incbin "assets/sounds/gUnk_08DD321A_2.bin"
	.4byte gUnk_08DD320C
	.incbin "assets/sounds/gUnk_08DD321A_3.bin"
	.4byte gUnk_08DD321A
	.incbin "assets/sounds/gUnk_08DD321A_4.bin"
	.4byte gUnk_08DD321A
	.incbin "assets/sounds/gUnk_08DD321A_5.bin"
	.4byte gUnk_08DD3201
	.incbin "assets/sounds/gUnk_08DD321A_6.bin"
bgmHyruleCastleNointro_track3:: @ 08DD3249
	.incbin "assets/sounds/bgmHyruleCastleNointro_track3.bin"
gUnk_08DD3255:: @ 08DD3255
	.incbin "assets/sounds/gUnk_08DD3255.bin"
	.4byte gUnk_08DD3255
	.incbin "assets/sounds/gUnk_08DD3255_1.bin"
bgmHyruleCastleNointro_track4:: @ 08DD32AA
	.incbin "assets/sounds/bgmHyruleCastleNointro_track4.bin"
gUnk_08DD32B2:: @ 08DD32B2
	.incbin "assets/sounds/gUnk_08DD32B2.bin"
gUnk_08DD32DF:: @ 08DD32DF
	.incbin "assets/sounds/gUnk_08DD32DF.bin"
	.4byte gUnk_08DD32DF
	.incbin "assets/sounds/gUnk_08DD32DF_1.bin"
	.4byte gUnk_08DD32B2
	.incbin "assets/sounds/gUnk_08DD32DF_2.bin"
bgmHyruleCastleNointro_track5:: @ 08DD3346
	.incbin "assets/sounds/bgmHyruleCastleNointro_track5.bin"
gUnk_08DD334D:: @ 08DD334D
	.incbin "assets/sounds/gUnk_08DD334D.bin"
	.4byte gUnk_08DD334D
	.incbin "assets/sounds/gUnk_08DD334D_1.bin"
bgmHyruleCastleNointro:: @ 08DD335C
	sound_header 6 0 0 0xa8 gUnk_08A03D94 bgmHyruleCastleNointro_track0 bgmHyruleCastleNointro_track1 bgmHyruleCastleNointro_track2 bgmHyruleCastleNointro_track3 bgmHyruleCastleNointro_track4 bgmHyruleCastleNointro_track5

bgmMinishVillage_track0:: @ 08DD337C
	.incbin "assets/sounds/bgmMinishVillage_track0.bin"
gUnk_08DD33A6:: @ 08DD33A6
	.incbin "assets/sounds/gUnk_08DD33A6.bin"
gUnk_08DD33AD:: @ 08DD33AD
	.incbin "assets/sounds/gUnk_08DD33AD.bin"
gUnk_08DD33B6:: @ 08DD33B6
	.incbin "assets/sounds/gUnk_08DD33B6.bin"
gUnk_08DD33BE:: @ 08DD33BE
	.incbin "assets/sounds/gUnk_08DD33BE.bin"
	.4byte gUnk_08DD33B6
	.incbin "assets/sounds/gUnk_08DD33BE_1.bin"
	.4byte gUnk_08DD33AD
	.incbin "assets/sounds/gUnk_08DD33BE_2.bin"
	.4byte gUnk_08DD33BE
	.incbin "assets/sounds/gUnk_08DD33BE_3.bin"
gUnk_08DD348F:: @ 08DD348F
	.incbin "assets/sounds/gUnk_08DD348F.bin"
gUnk_08DD34A8:: @ 08DD34A8
	.incbin "assets/sounds/gUnk_08DD34A8.bin"
	.4byte gUnk_08DD34A8
	.incbin "assets/sounds/gUnk_08DD34A8_1.bin"
	.4byte gUnk_08DD348F
	.incbin "assets/sounds/gUnk_08DD34A8_2.bin"
	.4byte gUnk_08DD33A6
	.incbin "assets/sounds/gUnk_08DD34A8_3.bin"
bgmMinishVillage_track1:: @ 08DD34F3
	.incbin "assets/sounds/bgmMinishVillage_track1.bin"
gUnk_08DD3508:: @ 08DD3508
	.incbin "assets/sounds/gUnk_08DD3508.bin"
gUnk_08DD3512:: @ 08DD3512
	.incbin "assets/sounds/gUnk_08DD3512.bin"
gUnk_08DD351D:: @ 08DD351D
	.incbin "assets/sounds/gUnk_08DD351D.bin"
	.4byte gUnk_08DD3512
	.incbin "assets/sounds/gUnk_08DD351D_1.bin"
	.4byte gUnk_08DD351D
	.incbin "assets/sounds/gUnk_08DD351D_2.bin"
	.4byte gUnk_08DD3512
gUnk_08DD3537:: @ 08DD3537
	.incbin "assets/sounds/gUnk_08DD3537.bin"
gUnk_08DD3543:: @ 08DD3543
	.incbin "assets/sounds/gUnk_08DD3543.bin"
	.4byte gUnk_08DD3512
	.incbin "assets/sounds/gUnk_08DD3543_1.bin"
	.4byte gUnk_08DD351D
	.incbin "assets/sounds/gUnk_08DD3543_2.bin"
	.4byte gUnk_08DD3512
	.incbin "assets/sounds/gUnk_08DD3543_3.bin"
	.4byte gUnk_08DD351D
	.incbin "assets/sounds/gUnk_08DD3543_4.bin"
	.4byte gUnk_08DD3512
	.incbin "assets/sounds/gUnk_08DD3543_5.bin"
	.4byte gUnk_08DD3537
	.incbin "assets/sounds/gUnk_08DD3543_6.bin"
	.4byte gUnk_08DD3543
	.incbin "assets/sounds/gUnk_08DD3543_7.bin"
gUnk_08DD35B3:: @ 08DD35B3
	.incbin "assets/sounds/gUnk_08DD35B3.bin"
gUnk_08DD35CA:: @ 08DD35CA
	.incbin "assets/sounds/gUnk_08DD35CA.bin"
	.4byte gUnk_08DD35B3
	.incbin "assets/sounds/gUnk_08DD35CA_1.bin"
	.4byte gUnk_08DD35CA
	.incbin "assets/sounds/gUnk_08DD35CA_2.bin"
	.4byte gUnk_08DD35B3
	.incbin "assets/sounds/gUnk_08DD35CA_3.bin"
	.4byte gUnk_08DD35CA
	.incbin "assets/sounds/gUnk_08DD35CA_4.bin"
	.4byte gUnk_08DD35B3
	.incbin "assets/sounds/gUnk_08DD35CA_5.bin"
	.4byte gUnk_08DD3508
	.incbin "assets/sounds/gUnk_08DD35CA_6.bin"
bgmMinishVillage_track2:: @ 08DD3604
	.incbin "assets/sounds/bgmMinishVillage_track2.bin"
gUnk_08DD362B:: @ 08DD362B
	.incbin "assets/sounds/gUnk_08DD362B.bin"
gUnk_08DD3639:: @ 08DD3639
	.incbin "assets/sounds/gUnk_08DD3639.bin"
gUnk_08DD3643:: @ 08DD3643
	.incbin "assets/sounds/gUnk_08DD3643.bin"
	.4byte gUnk_08DD3639
gUnk_08DD365E:: @ 08DD365E
	.incbin "assets/sounds/gUnk_08DD365E.bin"
gUnk_08DD366E:: @ 08DD366E
	.incbin "assets/sounds/gUnk_08DD366E.bin"
	.4byte gUnk_08DD365E
	.incbin "assets/sounds/gUnk_08DD366E_1.bin"
	.4byte gUnk_08DD3643
	.incbin "assets/sounds/gUnk_08DD366E_2.bin"
	.4byte gUnk_08DD365E
	.incbin "assets/sounds/gUnk_08DD366E_3.bin"
	.4byte gUnk_08DD366E
	.incbin "assets/sounds/gUnk_08DD366E_4.bin"
gUnk_08DD3700:: @ 08DD3700
	.incbin "assets/sounds/gUnk_08DD3700.bin"
gUnk_08DD3711:: @ 08DD3711
	.incbin "assets/sounds/gUnk_08DD3711.bin"
gUnk_08DD3726:: @ 08DD3726
	.incbin "assets/sounds/gUnk_08DD3726.bin"
	.4byte gUnk_08DD3700
	.incbin "assets/sounds/gUnk_08DD3726_1.bin"
	.4byte gUnk_08DD3711
	.incbin "assets/sounds/gUnk_08DD3726_2.bin"
	.4byte gUnk_08DD3726
	.incbin "assets/sounds/gUnk_08DD3726_3.bin"
	.4byte gUnk_08DD362B
	.incbin "assets/sounds/gUnk_08DD3726_4.bin"
bgmMinishVillage_track3:: @ 08DD3775
	.incbin "assets/sounds/bgmMinishVillage_track3.bin"
gUnk_08DD379B:: @ 08DD379B
	.incbin "assets/sounds/gUnk_08DD379B.bin"
gUnk_08DD37A4:: @ 08DD37A4
	.incbin "assets/sounds/gUnk_08DD37A4.bin"
gUnk_08DD37B0:: @ 08DD37B0
	.incbin "assets/sounds/gUnk_08DD37B0.bin"
	.4byte gUnk_08DD37A4
	.incbin "assets/sounds/gUnk_08DD37B0_1.bin"
	.4byte gUnk_08DD37B0
	.incbin "assets/sounds/gUnk_08DD37B0_2.bin"
	.4byte gUnk_08DD37A4
gUnk_08DD37CB:: @ 08DD37CB
	.incbin "assets/sounds/gUnk_08DD37CB.bin"
gUnk_08DD37D7:: @ 08DD37D7
	.incbin "assets/sounds/gUnk_08DD37D7.bin"
	.4byte gUnk_08DD37A4
	.incbin "assets/sounds/gUnk_08DD37D7_1.bin"
	.4byte gUnk_08DD37B0
	.incbin "assets/sounds/gUnk_08DD37D7_2.bin"
	.4byte gUnk_08DD37A4
	.incbin "assets/sounds/gUnk_08DD37D7_3.bin"
	.4byte gUnk_08DD37B0
	.incbin "assets/sounds/gUnk_08DD37D7_4.bin"
	.4byte gUnk_08DD37A4
	.incbin "assets/sounds/gUnk_08DD37D7_5.bin"
	.4byte gUnk_08DD37CB
	.incbin "assets/sounds/gUnk_08DD37D7_6.bin"
	.4byte gUnk_08DD37D7
	.incbin "assets/sounds/gUnk_08DD37D7_7.bin"
gUnk_08DD3813:: @ 08DD3813
	.incbin "assets/sounds/gUnk_08DD3813.bin"
gUnk_08DD381F:: @ 08DD381F
	.incbin "assets/sounds/gUnk_08DD381F.bin"
gUnk_08DD3829:: @ 08DD3829
	.incbin "assets/sounds/gUnk_08DD3829.bin"
	.4byte gUnk_08DD3813
	.incbin "assets/sounds/gUnk_08DD3829_1.bin"
	.4byte gUnk_08DD381F
	.incbin "assets/sounds/gUnk_08DD3829_2.bin"
	.4byte gUnk_08DD3829
	.incbin "assets/sounds/gUnk_08DD3829_3.bin"
gUnk_08DD3859:: @ 08DD3859
	.incbin "assets/sounds/gUnk_08DD3859.bin"
gUnk_08DD3866:: @ 08DD3866
	.incbin "assets/sounds/gUnk_08DD3866.bin"
	.4byte gUnk_08DD3859
	.incbin "assets/sounds/gUnk_08DD3866_1.bin"
	.4byte gUnk_08DD3866
	.incbin "assets/sounds/gUnk_08DD3866_2.bin"
	.4byte gUnk_08DD3859
	.incbin "assets/sounds/gUnk_08DD3866_3.bin"
	.4byte gUnk_08DD3866
	.incbin "assets/sounds/gUnk_08DD3866_4.bin"
	.4byte gUnk_08DD3859
	.incbin "assets/sounds/gUnk_08DD3866_5.bin"
	.4byte gUnk_08DD379B
	.incbin "assets/sounds/gUnk_08DD3866_6.bin"
bgmMinishVillage_track4:: @ 08DD3894
	.incbin "assets/sounds/bgmMinishVillage_track4.bin"
gUnk_08DD38B7:: @ 08DD38B7
	.incbin "assets/sounds/gUnk_08DD38B7.bin"
gUnk_08DD38BC:: @ 08DD38BC
	.incbin "assets/sounds/gUnk_08DD38BC.bin"
gUnk_08DD38CD:: @ 08DD38CD
	.incbin "assets/sounds/gUnk_08DD38CD.bin"
	.4byte gUnk_08DD38BC
	.incbin "assets/sounds/gUnk_08DD38CD_1.bin"
	.4byte gUnk_08DD38BC
	.incbin "assets/sounds/gUnk_08DD38CD_2.bin"
	.4byte gUnk_08DD38CD
	.incbin "assets/sounds/gUnk_08DD38CD_3.bin"
	.4byte gUnk_08DD38BC
	.incbin "assets/sounds/gUnk_08DD38CD_4.bin"
	.4byte gUnk_08DD38BC
	.incbin "assets/sounds/gUnk_08DD38CD_5.bin"
	.4byte gUnk_08DD38BC
	.incbin "assets/sounds/gUnk_08DD38CD_6.bin"
	.4byte gUnk_08DD38BC
	.incbin "assets/sounds/gUnk_08DD38CD_7.bin"
	.4byte gUnk_08DD38B7
	.incbin "assets/sounds/gUnk_08DD38CD_8.bin"
bgmMinishVillage_track5:: @ 08DD399B
	.incbin "assets/sounds/bgmMinishVillage_track5.bin"
gUnk_08DD39A4:: @ 08DD39A4
	.incbin "assets/sounds/gUnk_08DD39A4.bin"
gUnk_08DD39B7:: @ 08DD39B7
	.incbin "assets/sounds/gUnk_08DD39B7.bin"
gUnk_08DD39CF:: @ 08DD39CF
	.incbin "assets/sounds/gUnk_08DD39CF.bin"
gUnk_08DD39E4:: @ 08DD39E4
	.incbin "assets/sounds/gUnk_08DD39E4.bin"
	.4byte gUnk_08DD39CF
gUnk_08DD3A01:: @ 08DD3A01
	.incbin "assets/sounds/gUnk_08DD3A01.bin"
gUnk_08DD3A1B:: @ 08DD3A1B
	.incbin "assets/sounds/gUnk_08DD3A1B.bin"
gUnk_08DD3A33:: @ 08DD3A33
	.incbin "assets/sounds/gUnk_08DD3A33.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_1.bin"
	.4byte gUnk_08DD39B7
	.incbin "assets/sounds/gUnk_08DD3A33_2.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_3.bin"
	.4byte gUnk_08DD39E4
	.incbin "assets/sounds/gUnk_08DD3A33_4.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_5.bin"
	.4byte gUnk_08DD3A01
	.incbin "assets/sounds/gUnk_08DD3A33_6.bin"
	.4byte gUnk_08DD3A1B
	.incbin "assets/sounds/gUnk_08DD3A33_7.bin"
	.4byte gUnk_08DD3A33
	.incbin "assets/sounds/gUnk_08DD3A33_8.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_9.bin"
	.4byte gUnk_08DD39B7
	.incbin "assets/sounds/gUnk_08DD3A33_10.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_11.bin"
	.4byte gUnk_08DD39E4
	.incbin "assets/sounds/gUnk_08DD3A33_12.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_13.bin"
	.4byte gUnk_08DD3A01
	.incbin "assets/sounds/gUnk_08DD3A33_14.bin"
	.4byte gUnk_08DD3A1B
	.incbin "assets/sounds/gUnk_08DD3A33_15.bin"
	.4byte gUnk_08DD3A33
	.incbin "assets/sounds/gUnk_08DD3A33_16.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_17.bin"
	.4byte gUnk_08DD39B7
	.incbin "assets/sounds/gUnk_08DD3A33_18.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_19.bin"
	.4byte gUnk_08DD39E4
	.incbin "assets/sounds/gUnk_08DD3A33_20.bin"
	.4byte gUnk_08DD39CF
	.incbin "assets/sounds/gUnk_08DD3A33_21.bin"
	.4byte gUnk_08DD3A01
	.incbin "assets/sounds/gUnk_08DD3A33_22.bin"
	.4byte gUnk_08DD3A1B
	.incbin "assets/sounds/gUnk_08DD3A33_23.bin"
	.4byte gUnk_08DD3A33
	.incbin "assets/sounds/gUnk_08DD3A33_24.bin"
	.4byte gUnk_08DD39A4
	.incbin "assets/sounds/gUnk_08DD3A33_25.bin"
bgmMinishVillage_track6:: @ 08DD3AC8
	.incbin "assets/sounds/bgmMinishVillage_track6.bin"
gUnk_08DD3AD3:: @ 08DD3AD3
	.incbin "assets/sounds/gUnk_08DD3AD3.bin"
gUnk_08DD3ADA:: @ 08DD3ADA
	.incbin "assets/sounds/gUnk_08DD3ADA.bin"
gUnk_08DD3AE4:: @ 08DD3AE4
	.incbin "assets/sounds/gUnk_08DD3AE4.bin"
gUnk_08DD3AED:: @ 08DD3AED
	.incbin "assets/sounds/gUnk_08DD3AED.bin"
	.4byte gUnk_08DD3AE4
	.incbin "assets/sounds/gUnk_08DD3AED_1.bin"
	.4byte gUnk_08DD3ADA
	.incbin "assets/sounds/gUnk_08DD3AED_2.bin"
	.4byte gUnk_08DD3AED
	.incbin "assets/sounds/gUnk_08DD3AED_3.bin"
	.4byte gUnk_08DD3AD3
	.incbin "assets/sounds/gUnk_08DD3AED_4.bin"
bgmMinishVillage:: @ 08DD3BCC
	sound_header 7 0 0 0xa8 gUnk_08A04394 bgmMinishVillage_track0 bgmMinishVillage_track1 bgmMinishVillage_track2 bgmMinishVillage_track3 bgmMinishVillage_track4 bgmMinishVillage_track5 bgmMinishVillage_track6

bgmMinishWoods_track0:: @ 08DD3BF0
	.incbin "assets/sounds/bgmMinishWoods_track0.bin"
gUnk_08DD3BFB:: @ 08DD3BFB
	.incbin "assets/sounds/gUnk_08DD3BFB.bin"
gUnk_08DD3C1B:: @ 08DD3C1B
	.incbin "assets/sounds/gUnk_08DD3C1B.bin"
	.4byte gUnk_08DD3C1B
	.incbin "assets/sounds/gUnk_08DD3C1B_1.bin"
	.4byte gUnk_08DD3BFB
	.incbin "assets/sounds/gUnk_08DD3C1B_2.bin"
bgmMinishWoods_track1:: @ 08DD3CBB
	.incbin "assets/sounds/bgmMinishWoods_track1.bin"
gUnk_08DD3CC2:: @ 08DD3CC2
	.incbin "assets/sounds/gUnk_08DD3CC2.bin"
	.4byte gUnk_08DD3CC2
	.incbin "assets/sounds/gUnk_08DD3CC2_1.bin"
bgmMinishWoods_track2:: @ 08DD3CFA
	.incbin "assets/sounds/bgmMinishWoods_track2.bin"
gUnk_08DD3D01:: @ 08DD3D01
	.incbin "assets/sounds/gUnk_08DD3D01.bin"
gUnk_08DD3D1C:: @ 08DD3D1C
	.incbin "assets/sounds/gUnk_08DD3D1C.bin"
	.4byte gUnk_08DD3D1C
gUnk_08DD3D3D:: @ 08DD3D3D
	.incbin "assets/sounds/gUnk_08DD3D3D.bin"
	.4byte gUnk_08DD3D1C
	.incbin "assets/sounds/gUnk_08DD3D3D_1.bin"
	.4byte gUnk_08DD3D3D
	.incbin "assets/sounds/gUnk_08DD3D3D_2.bin"
gUnk_08DD3DC4:: @ 08DD3DC4
	.incbin "assets/sounds/gUnk_08DD3DC4.bin"
	.4byte gUnk_08DD3DC4
	.incbin "assets/sounds/gUnk_08DD3DC4_1.bin"
	.4byte gUnk_08DD3D01
	.incbin "assets/sounds/gUnk_08DD3DC4_2.bin"
bgmMinishWoods_track3:: @ 08DD3DF6
	.incbin "assets/sounds/bgmMinishWoods_track3.bin"
gUnk_08DD3E09:: @ 08DD3E09
	.incbin "assets/sounds/gUnk_08DD3E09.bin"
gUnk_08DD3E0B:: @ 08DD3E0B
	.incbin "assets/sounds/gUnk_08DD3E0B.bin"
	.4byte gUnk_08DD3E0B
	.incbin "assets/sounds/gUnk_08DD3E0B_1.bin"
	.4byte gUnk_08DD3E0B
	.incbin "assets/sounds/gUnk_08DD3E0B_2.bin"
	.4byte gUnk_08DD3E0B
	.incbin "assets/sounds/gUnk_08DD3E0B_3.bin"
	.4byte gUnk_08DD3E0B
	.incbin "assets/sounds/gUnk_08DD3E0B_4.bin"
	.4byte gUnk_08DD3E0B
	.incbin "assets/sounds/gUnk_08DD3E0B_5.bin"
	.4byte gUnk_08DD3E0B
	.incbin "assets/sounds/gUnk_08DD3E0B_6.bin"
	.4byte gUnk_08DD3E0B
	.incbin "assets/sounds/gUnk_08DD3E0B_7.bin"
	.4byte gUnk_08DD3E09
	.incbin "assets/sounds/gUnk_08DD3E0B_8.bin"
bgmMinishWoods_track4:: @ 08DD3E44
	.incbin "assets/sounds/bgmMinishWoods_track4.bin"
gUnk_08DD3E6E:: @ 08DD3E6E
	.incbin "assets/sounds/gUnk_08DD3E6E.bin"
gUnk_08DD3E99:: @ 08DD3E99
	.incbin "assets/sounds/gUnk_08DD3E99.bin"
gUnk_08DD3EBB:: @ 08DD3EBB
	.incbin "assets/sounds/gUnk_08DD3EBB.bin"
gUnk_08DD3EE0:: @ 08DD3EE0
	.incbin "assets/sounds/gUnk_08DD3EE0.bin"
	.4byte gUnk_08DD3E6E
	.incbin "assets/sounds/gUnk_08DD3EE0_1.bin"
	.4byte gUnk_08DD3EE0
	.incbin "assets/sounds/gUnk_08DD3EE0_2.bin"
	.4byte gUnk_08DD3EBB
	.incbin "assets/sounds/gUnk_08DD3EE0_3.bin"
	.4byte gUnk_08DD3EE0
gUnk_08DD3F18:: @ 08DD3F18
	.incbin "assets/sounds/gUnk_08DD3F18.bin"
	.4byte gUnk_08DD3EE0
	.incbin "assets/sounds/gUnk_08DD3F18_1.bin"
	.4byte gUnk_08DD3EBB
	.incbin "assets/sounds/gUnk_08DD3F18_2.bin"
	.4byte gUnk_08DD3EE0
	.incbin "assets/sounds/gUnk_08DD3F18_3.bin"
	.4byte gUnk_08DD3E6E
	.incbin "assets/sounds/gUnk_08DD3F18_4.bin"
	.4byte gUnk_08DD3EE0
	.incbin "assets/sounds/gUnk_08DD3F18_5.bin"
	.4byte gUnk_08DD3EBB
	.incbin "assets/sounds/gUnk_08DD3F18_6.bin"
	.4byte gUnk_08DD3EE0
	.incbin "assets/sounds/gUnk_08DD3F18_7.bin"
	.4byte gUnk_08DD3F18
	.incbin "assets/sounds/gUnk_08DD3F18_8.bin"
	.4byte gUnk_08DD3E99
	.incbin "assets/sounds/gUnk_08DD3F18_9.bin"
bgmMinishWoods_track5:: @ 08DD3F71
	.incbin "assets/sounds/bgmMinishWoods_track5.bin"
gUnk_08DD3FB3:: @ 08DD3FB3
	.incbin "assets/sounds/gUnk_08DD3FB3.bin"
gUnk_08DD3FBA:: @ 08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FBA.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FBA_1.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FBA_2.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FBA_3.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FBA_4.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FBA_5.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FBA_6.bin"
gUnk_08DD3FED:: @ 08DD3FED
	.incbin "assets/sounds/gUnk_08DD3FED.bin"
	.4byte gUnk_08DD3FED
	.incbin "assets/sounds/gUnk_08DD3FED_1.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FED_2.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FED_3.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FED_4.bin"
	.4byte gUnk_08DD3FBA
	.incbin "assets/sounds/gUnk_08DD3FED_5.bin"
	.4byte gUnk_08DD3FB3
	.incbin "assets/sounds/gUnk_08DD3FED_6.bin"
bgmMinishWoods_track6:: @ 08DD4014
	.incbin "assets/sounds/bgmMinishWoods_track6.bin"
gUnk_08DD401E:: @ 08DD401E
	.incbin "assets/sounds/gUnk_08DD401E.bin"
gUnk_08DD403F:: @ 08DD403F
	.incbin "assets/sounds/gUnk_08DD403F.bin"
	.4byte gUnk_08DD403F
	.incbin "assets/sounds/gUnk_08DD403F_1.bin"
	.4byte gUnk_08DD401E
	.incbin "assets/sounds/gUnk_08DD403F_2.bin"
bgmMinishWoods:: @ 08DD40E8
	sound_header 7 0 0 0xa8 gUnk_08A04994 bgmMinishWoods_track0 bgmMinishWoods_track1 bgmMinishWoods_track2 bgmMinishWoods_track3 bgmMinishWoods_track4 bgmMinishWoods_track5 bgmMinishWoods_track6

bgmCrenelStorm_track0:: @ 08DD410C
	.incbin "assets/sounds/bgmCrenelStorm_track0.bin"
gUnk_08DD4121:: @ 08DD4121
	.incbin "assets/sounds/gUnk_08DD4121.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4121_1.bin"
	.4byte gUnk_08DD4121
gUnk_08DD4138:: @ 08DD4138
	.incbin "assets/sounds/gUnk_08DD4138.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4138_1.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4138_2.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4138_3.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4138_4.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4138_5.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4138_6.bin"
	.4byte gUnk_08DD4121
gUnk_08DD4167:: @ 08DD4167
	.incbin "assets/sounds/gUnk_08DD4167.bin"
	.4byte gUnk_08DD4167
	.incbin "assets/sounds/gUnk_08DD4167_1.bin"
	.4byte gUnk_08DD4167
	.incbin "assets/sounds/gUnk_08DD4167_2.bin"
	.4byte gUnk_08DD4167
	.incbin "assets/sounds/gUnk_08DD4167_3.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4167_4.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4167_5.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4167_6.bin"
	.4byte gUnk_08DD4121
	.incbin "assets/sounds/gUnk_08DD4167_7.bin"
gUnk_08DD41B7:: @ 08DD41B7
	.incbin "assets/sounds/gUnk_08DD41B7.bin"
gUnk_08DD41D6:: @ 08DD41D6
	.incbin "assets/sounds/gUnk_08DD41D6.bin"
	.4byte gUnk_08DD41B7
	.incbin "assets/sounds/gUnk_08DD41D6_1.bin"
	.4byte gUnk_08DD41D6
	.incbin "assets/sounds/gUnk_08DD41D6_2.bin"
	.4byte gUnk_08DD41B7
	.incbin "assets/sounds/gUnk_08DD41D6_3.bin"
	.4byte gUnk_08DD41D6
	.incbin "assets/sounds/gUnk_08DD41D6_4.bin"
	.4byte gUnk_08DD41B7
	.incbin "assets/sounds/gUnk_08DD41D6_5.bin"
	.4byte gUnk_08DD4138
	.incbin "assets/sounds/gUnk_08DD41D6_6.bin"
bgmCrenelStorm_track1:: @ 08DD4216
	.incbin "assets/sounds/bgmCrenelStorm_track1.bin"
gUnk_08DD4234:: @ 08DD4234
	.incbin "assets/sounds/gUnk_08DD4234.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4234_1.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4234_2.bin"
gUnk_08DD4257:: @ 08DD4257
	.incbin "assets/sounds/gUnk_08DD4257.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4257_1.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4257_2.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4257_3.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4257_4.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4257_5.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4257_6.bin"
	.4byte gUnk_08DD4234
gUnk_08DD4290:: @ 08DD4290
	.incbin "assets/sounds/gUnk_08DD4290.bin"
	.4byte gUnk_08DD4290
	.incbin "assets/sounds/gUnk_08DD4290_1.bin"
	.4byte gUnk_08DD4290
	.incbin "assets/sounds/gUnk_08DD4290_2.bin"
	.4byte gUnk_08DD4290
	.incbin "assets/sounds/gUnk_08DD4290_3.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4290_4.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4290_5.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4290_6.bin"
	.4byte gUnk_08DD4234
	.incbin "assets/sounds/gUnk_08DD4290_7.bin"
	.4byte gUnk_08DD4257
	.incbin "assets/sounds/gUnk_08DD4290_8.bin"
bgmCrenelStorm_track2:: @ 08DD42DA
	.incbin "assets/sounds/bgmCrenelStorm_track2.bin"
gUnk_08DD42EA:: @ 08DD42EA
	.incbin "assets/sounds/gUnk_08DD42EA.bin"
	.4byte gUnk_08DD42EA
	.incbin "assets/sounds/gUnk_08DD42EA_1.bin"
bgmCrenelStorm_track3:: @ 08DD4304
	.incbin "assets/sounds/bgmCrenelStorm_track3.bin"
gUnk_08DD430E:: @ 08DD430E
	.incbin "assets/sounds/gUnk_08DD430E.bin"
	.4byte gUnk_08DD430E
	.incbin "assets/sounds/gUnk_08DD430E_1.bin"
bgmCrenelStorm_track4:: @ 08DD4358
	.incbin "assets/sounds/bgmCrenelStorm_track4.bin"
gUnk_08DD4360:: @ 08DD4360
	.incbin "assets/sounds/gUnk_08DD4360.bin"
	.4byte gUnk_08DD4360
	.incbin "assets/sounds/gUnk_08DD4360_1.bin"
bgmCrenelStorm_track5:: @ 08DD43A7
	.incbin "assets/sounds/bgmCrenelStorm_track5.bin"
gUnk_08DD43AE:: @ 08DD43AE
	.incbin "assets/sounds/gUnk_08DD43AE.bin"
	.4byte gUnk_08DD43AE
	.incbin "assets/sounds/gUnk_08DD43AE_1.bin"
bgmCrenelStorm_track6:: @ 08DD4424
	.incbin "assets/sounds/bgmCrenelStorm_track6.bin"
gUnk_08DD448D:: @ 08DD448D
	.incbin "assets/sounds/gUnk_08DD448D.bin"
gUnk_08DD44EF:: @ 08DD44EF
	.incbin "assets/sounds/gUnk_08DD44EF.bin"
gUnk_08DD4550:: @ 08DD4550
	.incbin "assets/sounds/gUnk_08DD4550.bin"
gUnk_08DD45B1:: @ 08DD45B1
	.incbin "assets/sounds/gUnk_08DD45B1.bin"
gUnk_08DD4612:: @ 08DD4612
	.incbin "assets/sounds/gUnk_08DD4612.bin"
	.4byte gUnk_08DD44EF
	.incbin "assets/sounds/gUnk_08DD4612_1.bin"
	.4byte gUnk_08DD4550
	.incbin "assets/sounds/gUnk_08DD4612_2.bin"
	.4byte gUnk_08DD45B1
	.incbin "assets/sounds/gUnk_08DD4612_3.bin"
gUnk_08DD46E2:: @ 08DD46E2
	.incbin "assets/sounds/gUnk_08DD46E2.bin"
	.4byte gUnk_08DD46E2
	.incbin "assets/sounds/gUnk_08DD46E2_1.bin"
	.4byte gUnk_08DD4612
	.incbin "assets/sounds/gUnk_08DD46E2_2.bin"
	.4byte gUnk_08DD44EF
	.incbin "assets/sounds/gUnk_08DD46E2_3.bin"
	.4byte gUnk_08DD4550
	.incbin "assets/sounds/gUnk_08DD46E2_4.bin"
	.4byte gUnk_08DD45B1
gUnk_08DD47BC:: @ 08DD47BC
	.incbin "assets/sounds/gUnk_08DD47BC.bin"
gUnk_08DD47DA:: @ 08DD47DA
	.incbin "assets/sounds/gUnk_08DD47DA.bin"
gUnk_08DD47FC:: @ 08DD47FC
	.incbin "assets/sounds/gUnk_08DD47FC.bin"
gUnk_08DD481A:: @ 08DD481A
	.incbin "assets/sounds/gUnk_08DD481A.bin"
	.4byte gUnk_08DD47BC
	.incbin "assets/sounds/gUnk_08DD481A_1.bin"
	.4byte gUnk_08DD47DA
	.incbin "assets/sounds/gUnk_08DD481A_2.bin"
	.4byte gUnk_08DD47FC
	.incbin "assets/sounds/gUnk_08DD481A_3.bin"
	.4byte gUnk_08DD481A
	.incbin "assets/sounds/gUnk_08DD481A_4.bin"
	.4byte gUnk_08DD448D
	.incbin "assets/sounds/gUnk_08DD481A_5.bin"
bgmCrenelStorm:: @ 08DD4858
	sound_header 7 0 0 0xb2 gUnk_08A04F94 bgmCrenelStorm_track0 bgmCrenelStorm_track1 bgmCrenelStorm_track2 bgmCrenelStorm_track3 bgmCrenelStorm_track4 bgmCrenelStorm_track5 bgmCrenelStorm_track6

bgmCastorWilds_track0:: @ 08DD487C
	.incbin "assets/sounds/bgmCastorWilds_track0.bin"
gUnk_08DD488F:: @ 08DD488F
	.incbin "assets/sounds/gUnk_08DD488F.bin"
gUnk_08DD4896:: @ 08DD4896
	.incbin "assets/sounds/gUnk_08DD4896.bin"
	.4byte gUnk_08DD488F
	.incbin "assets/sounds/gUnk_08DD4896_1.bin"
	.4byte gUnk_08DD488F
	.incbin "assets/sounds/gUnk_08DD4896_2.bin"
	.4byte gUnk_08DD488F
	.incbin "assets/sounds/gUnk_08DD4896_3.bin"
	.4byte gUnk_08DD488F
	.incbin "assets/sounds/gUnk_08DD4896_4.bin"
	.4byte gUnk_08DD488F
	.incbin "assets/sounds/gUnk_08DD4896_5.bin"
	.4byte gUnk_08DD488F
	.incbin "assets/sounds/gUnk_08DD4896_6.bin"
	.4byte gUnk_08DD488F
	.incbin "assets/sounds/gUnk_08DD4896_7.bin"
	.4byte gUnk_08DD4896
	.incbin "assets/sounds/gUnk_08DD4896_8.bin"
bgmCastorWilds_track1:: @ 08DD48F8
	.incbin "assets/sounds/bgmCastorWilds_track1.bin"
gUnk_08DD490B:: @ 08DD490B
	.incbin "assets/sounds/gUnk_08DD490B.bin"
gUnk_08DD490F:: @ 08DD490F
	.incbin "assets/sounds/gUnk_08DD490F.bin"
	.4byte gUnk_08DD490F
	.incbin "assets/sounds/gUnk_08DD490F_1.bin"
	.4byte gUnk_08DD490F
	.incbin "assets/sounds/gUnk_08DD490F_2.bin"
	.4byte gUnk_08DD490F
	.incbin "assets/sounds/gUnk_08DD490F_3.bin"
	.4byte gUnk_08DD490F
	.incbin "assets/sounds/gUnk_08DD490F_4.bin"
	.4byte gUnk_08DD490F
	.incbin "assets/sounds/gUnk_08DD490F_5.bin"
	.4byte gUnk_08DD490F
	.incbin "assets/sounds/gUnk_08DD490F_6.bin"
	.4byte gUnk_08DD490F
	.incbin "assets/sounds/gUnk_08DD490F_7.bin"
	.4byte gUnk_08DD490B
	.incbin "assets/sounds/gUnk_08DD490F_8.bin"
bgmCastorWilds_track2:: @ 08DD4943
	.incbin "assets/sounds/bgmCastorWilds_track2.bin"
gUnk_08DD4990:: @ 08DD4990
	.incbin "assets/sounds/gUnk_08DD4990.bin"
	.4byte gUnk_08DD4990
	.incbin "assets/sounds/gUnk_08DD4990_1.bin"
bgmCastorWilds_track3:: @ 08DD49CB
	.incbin "assets/sounds/bgmCastorWilds_track3.bin"
gUnk_08DD49D6:: @ 08DD49D6
	.incbin "assets/sounds/gUnk_08DD49D6.bin"
gUnk_08DD49E7:: @ 08DD49E7
	.incbin "assets/sounds/gUnk_08DD49E7.bin"
gUnk_08DD49EE:: @ 08DD49EE
	.incbin "assets/sounds/gUnk_08DD49EE.bin"
gUnk_08DD4A02:: @ 08DD4A02
	.incbin "assets/sounds/gUnk_08DD4A02.bin"
	.4byte gUnk_08DD49E7
	.incbin "assets/sounds/gUnk_08DD4A02_1.bin"
	.4byte gUnk_08DD49EE
	.incbin "assets/sounds/gUnk_08DD4A02_2.bin"
	.4byte gUnk_08DD4A02
	.incbin "assets/sounds/gUnk_08DD4A02_3.bin"
	.4byte gUnk_08DD49D6
	.incbin "assets/sounds/gUnk_08DD4A02_4.bin"
bgmCastorWilds_track4:: @ 08DD4A7F
	.incbin "assets/sounds/bgmCastorWilds_track4.bin"
gUnk_08DD4A8D:: @ 08DD4A8D
	.incbin "assets/sounds/gUnk_08DD4A8D.bin"
gUnk_08DD4A9B:: @ 08DD4A9B
	.incbin "assets/sounds/gUnk_08DD4A9B.bin"
gUnk_08DD4AA7:: @ 08DD4AA7
	.incbin "assets/sounds/gUnk_08DD4AA7.bin"
gUnk_08DD4AB9:: @ 08DD4AB9
	.incbin "assets/sounds/gUnk_08DD4AB9.bin"
	.4byte gUnk_08DD4A9B
	.incbin "assets/sounds/gUnk_08DD4AB9_1.bin"
	.4byte gUnk_08DD4AA7
	.incbin "assets/sounds/gUnk_08DD4AB9_2.bin"
	.4byte gUnk_08DD4AB9
	.incbin "assets/sounds/gUnk_08DD4AB9_3.bin"
	.4byte gUnk_08DD4A8D
	.incbin "assets/sounds/gUnk_08DD4AB9_4.bin"
bgmCastorWilds:: @ 08DD4B44
	sound_header 5 0 0 0x9e gUnk_08A05594 bgmCastorWilds_track0 bgmCastorWilds_track1 bgmCastorWilds_track2 bgmCastorWilds_track3 bgmCastorWilds_track4

bgmHyruleTown_track0:: @ 08DD4B60
	.incbin "assets/sounds/bgmHyruleTown_track0.bin"
gUnk_08DD4B7E:: @ 08DD4B7E
	.incbin "assets/sounds/gUnk_08DD4B7E.bin"
gUnk_08DD4B98:: @ 08DD4B98
	.incbin "assets/sounds/gUnk_08DD4B98.bin"
	.4byte gUnk_08DD4B7E
	.incbin "assets/sounds/gUnk_08DD4B98_1.bin"
	.4byte gUnk_08DD4B98
	.incbin "assets/sounds/gUnk_08DD4B98_2.bin"
bgmHyruleTown_track1:: @ 08DD4BD7
	.incbin "assets/sounds/bgmHyruleTown_track1.bin"
gUnk_08DD4BF7:: @ 08DD4BF7
	.incbin "assets/sounds/gUnk_08DD4BF7.bin"
gUnk_08DD4C12:: @ 08DD4C12
	.incbin "assets/sounds/gUnk_08DD4C12.bin"
gUnk_08DD4C43:: @ 08DD4C43
	.incbin "assets/sounds/gUnk_08DD4C43.bin"
gUnk_08DD4C53:: @ 08DD4C53
	.incbin "assets/sounds/gUnk_08DD4C53.bin"
gUnk_08DD4C5F:: @ 08DD4C5F
	.incbin "assets/sounds/gUnk_08DD4C5F.bin"
	.4byte gUnk_08DD4C53
	.incbin "assets/sounds/gUnk_08DD4C5F_1.bin"
	.4byte gUnk_08DD4C5F
	.incbin "assets/sounds/gUnk_08DD4C5F_2.bin"
	.4byte gUnk_08DD4C12
	.incbin "assets/sounds/gUnk_08DD4C5F_3.bin"
	.4byte gUnk_08DD4BF7
gUnk_08DD4CB7:: @ 08DD4CB7
	.incbin "assets/sounds/gUnk_08DD4CB7.bin"
gUnk_08DD4CD1:: @ 08DD4CD1
	.incbin "assets/sounds/gUnk_08DD4CD1.bin"
	.4byte gUnk_08DD4CB7
	.incbin "assets/sounds/gUnk_08DD4CD1_1.bin"
	.4byte gUnk_08DD4CD1
	.incbin "assets/sounds/gUnk_08DD4CD1_2.bin"
	.4byte gUnk_08DD4CB7
	.incbin "assets/sounds/gUnk_08DD4CD1_3.bin"
	.4byte gUnk_08DD4CD1
	.incbin "assets/sounds/gUnk_08DD4CD1_4.bin"
gUnk_08DD4D31:: @ 08DD4D31
	.incbin "assets/sounds/gUnk_08DD4D31.bin"
	.4byte gUnk_08DD4D31
	.incbin "assets/sounds/gUnk_08DD4D31_1.bin"
	.4byte gUnk_08DD4C43
	.incbin "assets/sounds/gUnk_08DD4D31_2.bin"
bgmHyruleTown_track2:: @ 08DD4D91
	.incbin "assets/sounds/bgmHyruleTown_track2.bin"
gUnk_08DD4DA3:: @ 08DD4DA3
	.incbin "assets/sounds/gUnk_08DD4DA3.bin"
gUnk_08DD4DB0:: @ 08DD4DB0
	.incbin "assets/sounds/gUnk_08DD4DB0.bin"
	.4byte gUnk_08DD4DA3
gUnk_08DD4DC1:: @ 08DD4DC1
	.incbin "assets/sounds/gUnk_08DD4DC1.bin"
	.4byte gUnk_08DD4DA3
	.incbin "assets/sounds/gUnk_08DD4DC1_1.bin"
	.4byte gUnk_08DD4DB0
	.incbin "assets/sounds/gUnk_08DD4DC1_2.bin"
	.4byte gUnk_08DD4DA3
	.incbin "assets/sounds/gUnk_08DD4DC1_3.bin"
	.4byte gUnk_08DD4DB0
	.incbin "assets/sounds/gUnk_08DD4DC1_4.bin"
	.4byte gUnk_08DD4DA3
	.incbin "assets/sounds/gUnk_08DD4DC1_5.bin"
	.4byte gUnk_08DD4DB0
	.incbin "assets/sounds/gUnk_08DD4DC1_6.bin"
	.4byte gUnk_08DD4DA3
	.incbin "assets/sounds/gUnk_08DD4DC1_7.bin"
	.4byte gUnk_08DD4DB0
	.incbin "assets/sounds/gUnk_08DD4DC1_8.bin"
	.4byte gUnk_08DD4DA3
	.incbin "assets/sounds/gUnk_08DD4DC1_9.bin"
gUnk_08DD4E11:: @ 08DD4E11
	.incbin "assets/sounds/gUnk_08DD4E11.bin"
gUnk_08DD4E24:: @ 08DD4E24
	.incbin "assets/sounds/gUnk_08DD4E24.bin"
	.4byte gUnk_08DD4E11
	.incbin "assets/sounds/gUnk_08DD4E24_1.bin"
	.4byte gUnk_08DD4E24
	.incbin "assets/sounds/gUnk_08DD4E24_2.bin"
	.4byte gUnk_08DD4E11
	.incbin "assets/sounds/gUnk_08DD4E24_3.bin"
gUnk_08DD4E7E:: @ 08DD4E7E
	.incbin "assets/sounds/gUnk_08DD4E7E.bin"
	.4byte gUnk_08DD4E7E
	.incbin "assets/sounds/gUnk_08DD4E7E_1.bin"
	.4byte gUnk_08DD4DC1
	.incbin "assets/sounds/gUnk_08DD4E7E_2.bin"
bgmHyruleTown_track3:: @ 08DD4E9E
	.incbin "assets/sounds/bgmHyruleTown_track3.bin"
gUnk_08DD4ECF:: @ 08DD4ECF
	.incbin "assets/sounds/gUnk_08DD4ECF.bin"
	.4byte gUnk_08DD4ECF
	.incbin "assets/sounds/gUnk_08DD4ECF_1.bin"
bgmHyruleTown_track4:: @ 08DD4F0A
	.incbin "assets/sounds/bgmHyruleTown_track4.bin"
gUnk_08DD4F37:: @ 08DD4F37
	.incbin "assets/sounds/gUnk_08DD4F37.bin"
gUnk_08DD4F60:: @ 08DD4F60
	.incbin "assets/sounds/gUnk_08DD4F60.bin"
gUnk_08DD4F87:: @ 08DD4F87
	.incbin "assets/sounds/gUnk_08DD4F87.bin"
gUnk_08DD4FB3:: @ 08DD4FB3
	.incbin "assets/sounds/gUnk_08DD4FB3.bin"
	.4byte gUnk_08DD4F37
	.incbin "assets/sounds/gUnk_08DD4FB3_1.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_2.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_3.bin"
	.4byte gUnk_08DD4F37
	.incbin "assets/sounds/gUnk_08DD4FB3_4.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_5.bin"
	.4byte gUnk_08DD4F87
	.incbin "assets/sounds/gUnk_08DD4FB3_6.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_7.bin"
	.4byte gUnk_08DD4F37
	.incbin "assets/sounds/gUnk_08DD4FB3_8.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_9.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_10.bin"
	.4byte gUnk_08DD4F37
	.incbin "assets/sounds/gUnk_08DD4FB3_11.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_12.bin"
	.4byte gUnk_08DD4F87
	.incbin "assets/sounds/gUnk_08DD4FB3_13.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_14.bin"
	.4byte gUnk_08DD4F37
	.incbin "assets/sounds/gUnk_08DD4FB3_15.bin"
	.4byte gUnk_08DD4F60
	.incbin "assets/sounds/gUnk_08DD4FB3_16.bin"
	.4byte gUnk_08DD4F87
	.incbin "assets/sounds/gUnk_08DD4FB3_17.bin"
	.4byte gUnk_08DD4FB3
	.incbin "assets/sounds/gUnk_08DD4FB3_18.bin"
bgmHyruleTown_track5:: @ 08DD50E0
	.incbin "assets/sounds/bgmHyruleTown_track5.bin"
gUnk_08DD50EB:: @ 08DD50EB
	.incbin "assets/sounds/gUnk_08DD50EB.bin"
gUnk_08DD5104:: @ 08DD5104
	.incbin "assets/sounds/gUnk_08DD5104.bin"
	.4byte gUnk_08DD5104
	.incbin "assets/sounds/gUnk_08DD5104_1.bin"
	.4byte gUnk_08DD50EB
	.incbin "assets/sounds/gUnk_08DD5104_2.bin"
bgmHyruleTown_track6:: @ 08DD51EB
	.incbin "assets/sounds/bgmHyruleTown_track6.bin"
gUnk_08DD51F9:: @ 08DD51F9
	.incbin "assets/sounds/gUnk_08DD51F9.bin"
gUnk_08DD520E:: @ 08DD520E
	.incbin "assets/sounds/gUnk_08DD520E.bin"
	.4byte gUnk_08DD520E
	.incbin "assets/sounds/gUnk_08DD520E_1.bin"
	.4byte gUnk_08DD51F9
	.incbin "assets/sounds/gUnk_08DD520E_2.bin"
bgmHyruleTown:: @ 08DD52FC
	sound_header 7 0 0 0x9e gUnk_08A05B94 bgmHyruleTown_track0 bgmHyruleTown_track1 bgmHyruleTown_track2 bgmHyruleTown_track3 bgmHyruleTown_track4 bgmHyruleTown_track5 bgmHyruleTown_track6

bgmRoyalValley_track0:: @ 08DD5320
	.incbin "assets/sounds/bgmRoyalValley_track0.bin"
gUnk_08DD5327:: @ 08DD5327
	.incbin "assets/sounds/gUnk_08DD5327.bin"
gUnk_08DD5366:: @ 08DD5366
	.incbin "assets/sounds/gUnk_08DD5366.bin"
gUnk_08DD539D:: @ 08DD539D
	.incbin "assets/sounds/gUnk_08DD539D.bin"
gUnk_08DD53CF:: @ 08DD53CF
	.incbin "assets/sounds/gUnk_08DD53CF.bin"
	.4byte gUnk_08DD5366
	.incbin "assets/sounds/gUnk_08DD53CF_1.bin"
	.4byte gUnk_08DD539D
	.incbin "assets/sounds/gUnk_08DD53CF_2.bin"
	.4byte gUnk_08DD53CF
	.incbin "assets/sounds/gUnk_08DD53CF_3.bin"
	.4byte gUnk_08DD5327
	.incbin "assets/sounds/gUnk_08DD53CF_4.bin"
bgmRoyalValley_track1:: @ 08DD544B
	.incbin "assets/sounds/bgmRoyalValley_track1.bin"
gUnk_08DD544E:: @ 08DD544E
	.incbin "assets/sounds/gUnk_08DD544E.bin"
gUnk_08DD548B:: @ 08DD548B
	.incbin "assets/sounds/gUnk_08DD548B.bin"
gUnk_08DD54BA:: @ 08DD54BA
	.incbin "assets/sounds/gUnk_08DD54BA.bin"
gUnk_08DD54EA:: @ 08DD54EA
	.incbin "assets/sounds/gUnk_08DD54EA.bin"
	.4byte gUnk_08DD548B
	.incbin "assets/sounds/gUnk_08DD54EA_1.bin"
	.4byte gUnk_08DD54BA
	.incbin "assets/sounds/gUnk_08DD54EA_2.bin"
	.4byte gUnk_08DD54EA
	.incbin "assets/sounds/gUnk_08DD54EA_3.bin"
	.4byte gUnk_08DD544E
	.incbin "assets/sounds/gUnk_08DD54EA_4.bin"
bgmRoyalValley_track2:: @ 08DD555C
	.incbin "assets/sounds/bgmRoyalValley_track2.bin"
gUnk_08DD555F:: @ 08DD555F
	.incbin "assets/sounds/gUnk_08DD555F.bin"
	.4byte gUnk_08DD555F
	.incbin "assets/sounds/gUnk_08DD555F_1.bin"
bgmRoyalValley_track3:: @ 08DD5628
	.incbin "assets/sounds/bgmRoyalValley_track3.bin"
gUnk_08DD562F:: @ 08DD562F
	.incbin "assets/sounds/gUnk_08DD562F.bin"
	.4byte gUnk_08DD562F
	.incbin "assets/sounds/gUnk_08DD562F_1.bin"
bgmRoyalValley_track4:: @ 08DD565E
	.incbin "assets/sounds/bgmRoyalValley_track4.bin"
gUnk_08DD5665:: @ 08DD5665
	.incbin "assets/sounds/gUnk_08DD5665.bin"
gUnk_08DD5667:: @ 08DD5667
	.incbin "assets/sounds/gUnk_08DD5667.bin"
gUnk_08DD5689:: @ 08DD5689
	.incbin "assets/sounds/gUnk_08DD5689.bin"
gUnk_08DD56A8:: @ 08DD56A8
	.incbin "assets/sounds/gUnk_08DD56A8.bin"
	.4byte gUnk_08DD5689
	.incbin "assets/sounds/gUnk_08DD56A8_1.bin"
	.4byte gUnk_08DD5667
	.incbin "assets/sounds/gUnk_08DD56A8_2.bin"
	.4byte gUnk_08DD5689
	.incbin "assets/sounds/gUnk_08DD56A8_3.bin"
	.4byte gUnk_08DD56A8
	.incbin "assets/sounds/gUnk_08DD56A8_4.bin"
	.4byte gUnk_08DD5689
	.incbin "assets/sounds/gUnk_08DD56A8_5.bin"
gUnk_08DD5705:: @ 08DD5705
	.incbin "assets/sounds/gUnk_08DD5705.bin"
gUnk_08DD5719:: @ 08DD5719
	.incbin "assets/sounds/gUnk_08DD5719.bin"
	.4byte gUnk_08DD5705
	.incbin "assets/sounds/gUnk_08DD5719_1.bin"
	.4byte gUnk_08DD5719
	.incbin "assets/sounds/gUnk_08DD5719_2.bin"
	.4byte gUnk_08DD5705
	.incbin "assets/sounds/gUnk_08DD5719_3.bin"
	.4byte gUnk_08DD5719
	.incbin "assets/sounds/gUnk_08DD5719_4.bin"
	.4byte gUnk_08DD5705
	.incbin "assets/sounds/gUnk_08DD5719_5.bin"
	.4byte gUnk_08DD5719
	.incbin "assets/sounds/gUnk_08DD5719_6.bin"
	.4byte gUnk_08DD5665
	.incbin "assets/sounds/gUnk_08DD5719_7.bin"
bgmRoyalValley_track5:: @ 08DD5795
	.incbin "assets/sounds/bgmRoyalValley_track5.bin"
gUnk_08DD579C:: @ 08DD579C
	.incbin "assets/sounds/gUnk_08DD579C.bin"
	.4byte gUnk_08DD579C
	.incbin "assets/sounds/gUnk_08DD579C_1.bin"
bgmRoyalValley_track6:: @ 08DD57F3
	.incbin "assets/sounds/bgmRoyalValley_track6.bin"
gUnk_08DD5821:: @ 08DD5821
	.incbin "assets/sounds/gUnk_08DD5821.bin"
gUnk_08DD583E:: @ 08DD583E
	.incbin "assets/sounds/gUnk_08DD583E.bin"
	.4byte gUnk_08DD5821
	.incbin "assets/sounds/gUnk_08DD583E_1.bin"
	.4byte gUnk_08DD5821
	.incbin "assets/sounds/gUnk_08DD583E_2.bin"
	.4byte gUnk_08DD583E
	.incbin "assets/sounds/gUnk_08DD583E_3.bin"
	.4byte gUnk_08DD5821
	.incbin "assets/sounds/gUnk_08DD583E_4.bin"
bgmRoyalValley:: @ 08DD5894
	sound_header 7 0 0 0xb2 gUnk_08A06194 bgmRoyalValley_track0 bgmRoyalValley_track1 bgmRoyalValley_track2 bgmRoyalValley_track3 bgmRoyalValley_track4 bgmRoyalValley_track5 bgmRoyalValley_track6

bgmCloudTops_track0:: @ 08DD58B8
	.incbin "assets/sounds/bgmCloudTops_track0.bin"
gUnk_08DD58D4:: @ 08DD58D4
	.incbin "assets/sounds/gUnk_08DD58D4.bin"
	.4byte gUnk_08DD58D4
	.incbin "assets/sounds/gUnk_08DD58D4_1.bin"
gUnk_08DD5910:: @ 08DD5910
	.incbin "assets/sounds/gUnk_08DD5910.bin"
gUnk_08DD5A01:: @ 08DD5A01
	.incbin "assets/sounds/gUnk_08DD5A01.bin"
gUnk_08DD5A0A:: @ 08DD5A0A
	.incbin "assets/sounds/gUnk_08DD5A0A.bin"
gUnk_08DD5A19:: @ 08DD5A19
	.incbin "assets/sounds/gUnk_08DD5A19.bin"
	.4byte gUnk_08DD5A01
gUnk_08DD5A2D:: @ 08DD5A2D
	.incbin "assets/sounds/gUnk_08DD5A2D.bin"
gUnk_08DD5A37:: @ 08DD5A37
	.incbin "assets/sounds/gUnk_08DD5A37.bin"
	.4byte gUnk_08DD5A0A
	.incbin "assets/sounds/gUnk_08DD5A37_1.bin"
	.4byte gUnk_08DD5A19
	.incbin "assets/sounds/gUnk_08DD5A37_2.bin"
	.4byte gUnk_08DD5A01
	.incbin "assets/sounds/gUnk_08DD5A37_3.bin"
	.4byte gUnk_08DD5A2D
	.incbin "assets/sounds/gUnk_08DD5A37_4.bin"
	.4byte gUnk_08DD5A37
	.incbin "assets/sounds/gUnk_08DD5A37_5.bin"
	.4byte gUnk_08DD5910
	.incbin "assets/sounds/gUnk_08DD5A37_6.bin"
bgmCloudTops_track1:: @ 08DD5A77
	.incbin "assets/sounds/bgmCloudTops_track1.bin"
gUnk_08DD5AC1:: @ 08DD5AC1
	.incbin "assets/sounds/gUnk_08DD5AC1.bin"
gUnk_08DD5AD9:: @ 08DD5AD9
	.incbin "assets/sounds/gUnk_08DD5AD9.bin"
gUnk_08DD5AF3:: @ 08DD5AF3
	.incbin "assets/sounds/gUnk_08DD5AF3.bin"
	.4byte gUnk_08DD5AF3
	.incbin "assets/sounds/gUnk_08DD5AF3_1.bin"
	.4byte gUnk_08DD5AD9
	.incbin "assets/sounds/gUnk_08DD5AF3_2.bin"
	.4byte gUnk_08DD5AD9
	.incbin "assets/sounds/gUnk_08DD5AF3_3.bin"
	.4byte gUnk_08DD5AD9
	.incbin "assets/sounds/gUnk_08DD5AF3_4.bin"
gUnk_08DD5B42:: @ 08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_1.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_2.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_3.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_4.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_5.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_6.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_7.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_8.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_9.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_10.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_11.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_12.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_13.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_14.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_15.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_16.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_17.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_18.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_19.bin"
	.4byte gUnk_08DD5B42
	.incbin "assets/sounds/gUnk_08DD5B42_20.bin"
	.4byte gUnk_08DD5AC1
	.incbin "assets/sounds/gUnk_08DD5B42_21.bin"
bgmCloudTops_track2:: @ 08DD5C00
	.incbin "assets/sounds/bgmCloudTops_track2.bin"
gUnk_08DD5C61:: @ 08DD5C61
	.incbin "assets/sounds/gUnk_08DD5C61.bin"
	.4byte gUnk_08DD5C61
	.incbin "assets/sounds/gUnk_08DD5C61_1.bin"
bgmCloudTops_track3:: @ 08DD5D12
	.incbin "assets/sounds/bgmCloudTops_track3.bin"
gUnk_08DD5D40:: @ 08DD5D40
	.incbin "assets/sounds/gUnk_08DD5D40.bin"
gUnk_08DD5D64:: @ 08DD5D64
	.incbin "assets/sounds/gUnk_08DD5D64.bin"
gUnk_08DD5D8B:: @ 08DD5D8B
	.incbin "assets/sounds/gUnk_08DD5D8B.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5D8B_1.bin"
	.4byte gUnk_08DD5D64
	.incbin "assets/sounds/gUnk_08DD5D8B_2.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5D8B_3.bin"
	.4byte gUnk_08DD5D64
	.incbin "assets/sounds/gUnk_08DD5D8B_4.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5D8B_5.bin"
	.4byte gUnk_08DD5D64
	.incbin "assets/sounds/gUnk_08DD5D8B_6.bin"
gUnk_08DD5E2A:: @ 08DD5E2A
	.incbin "assets/sounds/gUnk_08DD5E2A.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_1.bin"
	.4byte gUnk_08DD5D64
	.incbin "assets/sounds/gUnk_08DD5E2A_2.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_3.bin"
	.4byte gUnk_08DD5E2A
	.incbin "assets/sounds/gUnk_08DD5E2A_4.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_5.bin"
	.4byte gUnk_08DD5D64
	.incbin "assets/sounds/gUnk_08DD5E2A_6.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_7.bin"
	.4byte gUnk_08DD5E2A
	.incbin "assets/sounds/gUnk_08DD5E2A_8.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_9.bin"
	.4byte gUnk_08DD5D64
	.incbin "assets/sounds/gUnk_08DD5E2A_10.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_11.bin"
	.4byte gUnk_08DD5E2A
	.incbin "assets/sounds/gUnk_08DD5E2A_12.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_13.bin"
	.4byte gUnk_08DD5D64
	.incbin "assets/sounds/gUnk_08DD5E2A_14.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_15.bin"
	.4byte gUnk_08DD5E2A
	.incbin "assets/sounds/gUnk_08DD5E2A_16.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_17.bin"
	.4byte gUnk_08DD5D64
	.incbin "assets/sounds/gUnk_08DD5E2A_18.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_19.bin"
	.4byte gUnk_08DD5E2A
	.incbin "assets/sounds/gUnk_08DD5E2A_20.bin"
	.4byte gUnk_08DD5D40
	.incbin "assets/sounds/gUnk_08DD5E2A_21.bin"
	.4byte gUnk_08DD5D8B
	.incbin "assets/sounds/gUnk_08DD5E2A_22.bin"
bgmCloudTops_track4:: @ 08DD5EF0
	.incbin "assets/sounds/bgmCloudTops_track4.bin"
gUnk_08DD5F38:: @ 08DD5F38
	.incbin "assets/sounds/gUnk_08DD5F38.bin"
gUnk_08DD5F6D:: @ 08DD5F6D
	.incbin "assets/sounds/gUnk_08DD5F6D.bin"
	.4byte gUnk_08DD5F6D
gUnk_08DD5F8B:: @ 08DD5F8B
	.incbin "assets/sounds/gUnk_08DD5F8B.bin"
	.4byte gUnk_08DD5F8B
	.incbin "assets/sounds/gUnk_08DD5F8B_1.bin"
gUnk_08DD5FFB:: @ 08DD5FFB
	.incbin "assets/sounds/gUnk_08DD5FFB.bin"
	.4byte gUnk_08DD5FFB
	.incbin "assets/sounds/gUnk_08DD5FFB_1.bin"
gUnk_08DD60E1:: @ 08DD60E1
	.incbin "assets/sounds/gUnk_08DD60E1.bin"
gUnk_08DD60FE:: @ 08DD60FE
	.incbin "assets/sounds/gUnk_08DD60FE.bin"
	.4byte gUnk_08DD60E1
gUnk_08DD611C:: @ 08DD611C
	.incbin "assets/sounds/gUnk_08DD611C.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_1.bin"
	.4byte gUnk_08DD60FE
	.incbin "assets/sounds/gUnk_08DD611C_2.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_3.bin"
	.4byte gUnk_08DD611C
	.incbin "assets/sounds/gUnk_08DD611C_4.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_5.bin"
	.4byte gUnk_08DD60FE
	.incbin "assets/sounds/gUnk_08DD611C_6.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_7.bin"
	.4byte gUnk_08DD611C
	.incbin "assets/sounds/gUnk_08DD611C_8.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_9.bin"
	.4byte gUnk_08DD60FE
	.incbin "assets/sounds/gUnk_08DD611C_10.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_11.bin"
	.4byte gUnk_08DD611C
	.incbin "assets/sounds/gUnk_08DD611C_12.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_13.bin"
	.4byte gUnk_08DD60FE
	.incbin "assets/sounds/gUnk_08DD611C_14.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_15.bin"
	.4byte gUnk_08DD611C
	.incbin "assets/sounds/gUnk_08DD611C_16.bin"
	.4byte gUnk_08DD60E1
	.incbin "assets/sounds/gUnk_08DD611C_17.bin"
	.4byte gUnk_08DD5F38
	.incbin "assets/sounds/gUnk_08DD611C_18.bin"
bgmCloudTops_track5:: @ 08DD61C3
	.incbin "assets/sounds/bgmCloudTops_track5.bin"
gUnk_08DD620A:: @ 08DD620A
	.incbin "assets/sounds/gUnk_08DD620A.bin"
	.4byte gUnk_08DD620A
	.incbin "assets/sounds/gUnk_08DD620A_1.bin"
bgmCloudTops_track6:: @ 08DD6286
	.incbin "assets/sounds/bgmCloudTops_track6.bin"
gUnk_08DD6298:: @ 08DD6298
	.incbin "assets/sounds/gUnk_08DD6298.bin"
gUnk_08DD63AA:: @ 08DD63AA
	.incbin "assets/sounds/gUnk_08DD63AA.bin"
gUnk_08DD63B6:: @ 08DD63B6
	.incbin "assets/sounds/gUnk_08DD63B6.bin"
gUnk_08DD63BE:: @ 08DD63BE
	.incbin "assets/sounds/gUnk_08DD63BE.bin"
gUnk_08DD63CA:: @ 08DD63CA
	.incbin "assets/sounds/gUnk_08DD63CA.bin"
gUnk_08DD63DA:: @ 08DD63DA
	.incbin "assets/sounds/gUnk_08DD63DA.bin"
gUnk_08DD63E6:: @ 08DD63E6
	.incbin "assets/sounds/gUnk_08DD63E6.bin"
	.4byte gUnk_08DD63AA
	.incbin "assets/sounds/gUnk_08DD63E6_1.bin"
	.4byte gUnk_08DD63B6
	.incbin "assets/sounds/gUnk_08DD63E6_2.bin"
	.4byte gUnk_08DD63BE
	.incbin "assets/sounds/gUnk_08DD63E6_3.bin"
	.4byte gUnk_08DD63CA
	.incbin "assets/sounds/gUnk_08DD63E6_4.bin"
	.4byte gUnk_08DD63DA
	.incbin "assets/sounds/gUnk_08DD63E6_5.bin"
	.4byte gUnk_08DD63E6
	.incbin "assets/sounds/gUnk_08DD63E6_6.bin"
	.4byte gUnk_08DD6298
	.incbin "assets/sounds/gUnk_08DD63E6_7.bin"
bgmCloudTops_track7:: @ 08DD642E
	.incbin "assets/sounds/bgmCloudTops_track7.bin"
gUnk_08DD6459:: @ 08DD6459
	.incbin "assets/sounds/gUnk_08DD6459.bin"
gUnk_08DD6497:: @ 08DD6497
	.incbin "assets/sounds/gUnk_08DD6497.bin"
	.4byte gUnk_08DD6497
	.incbin "assets/sounds/gUnk_08DD6497_1.bin"
	.4byte gUnk_08DD6497
	.incbin "assets/sounds/gUnk_08DD6497_2.bin"
	.4byte gUnk_08DD6497
	.incbin "assets/sounds/gUnk_08DD6497_3.bin"
	.4byte gUnk_08DD6497
	.incbin "assets/sounds/gUnk_08DD6497_4.bin"
	.4byte gUnk_08DD6497
	.incbin "assets/sounds/gUnk_08DD6497_5.bin"
	.4byte gUnk_08DD6459
	.incbin "assets/sounds/gUnk_08DD6497_6.bin"
bgmCloudTops:: @ 08DD64FC
	sound_header 8 0 0 0x9e gUnk_08A06794 bgmCloudTops_track0 bgmCloudTops_track1 bgmCloudTops_track2 bgmCloudTops_track3 bgmCloudTops_track4 bgmCloudTops_track5 bgmCloudTops_track6 bgmCloudTops_track7

bgmDarkHyruleCastle_track0:: @ 08DD6524
	.incbin "assets/sounds/bgmDarkHyruleCastle_track0.bin"
gUnk_08DD6563:: @ 08DD6563
	.incbin "assets/sounds/gUnk_08DD6563.bin"
gUnk_08DD6585:: @ 08DD6585
	.incbin "assets/sounds/gUnk_08DD6585.bin"
gUnk_08DD6599:: @ 08DD6599
	.incbin "assets/sounds/gUnk_08DD6599.bin"
gUnk_08DD65B3:: @ 08DD65B3
	.incbin "assets/sounds/gUnk_08DD65B3.bin"
	.4byte gUnk_08DD65B3
	.incbin "assets/sounds/gUnk_08DD65B3_1.bin"
	.4byte gUnk_08DD6585
	.incbin "assets/sounds/gUnk_08DD65B3_2.bin"
	.4byte gUnk_08DD6599
	.incbin "assets/sounds/gUnk_08DD65B3_3.bin"
	.4byte gUnk_08DD6563
	.incbin "assets/sounds/gUnk_08DD65B3_4.bin"
bgmDarkHyruleCastle_track1:: @ 08DD66A6
	.incbin "assets/sounds/bgmDarkHyruleCastle_track1.bin"
gUnk_08DD66DB:: @ 08DD66DB
	.incbin "assets/sounds/gUnk_08DD66DB.bin"
gUnk_08DD66E4:: @ 08DD66E4
	.incbin "assets/sounds/gUnk_08DD66E4.bin"
gUnk_08DD66EE:: @ 08DD66EE
	.incbin "assets/sounds/gUnk_08DD66EE.bin"
	.4byte gUnk_08DD66E4
	.incbin "assets/sounds/gUnk_08DD66EE_1.bin"
	.4byte gUnk_08DD66EE
	.incbin "assets/sounds/gUnk_08DD66EE_2.bin"
	.4byte gUnk_08DD66E4
	.incbin "assets/sounds/gUnk_08DD66EE_3.bin"
	.4byte gUnk_08DD66EE
	.incbin "assets/sounds/gUnk_08DD66EE_4.bin"
	.4byte gUnk_08DD66E4
	.incbin "assets/sounds/gUnk_08DD66EE_5.bin"
	.4byte gUnk_08DD66EE
	.incbin "assets/sounds/gUnk_08DD66EE_6.bin"
	.4byte gUnk_08DD66E4
	.incbin "assets/sounds/gUnk_08DD66EE_7.bin"
	.4byte gUnk_08DD66EE
	.incbin "assets/sounds/gUnk_08DD66EE_8.bin"
	.4byte gUnk_08DD66E4
gUnk_08DD6725:: @ 08DD6725
	.incbin "assets/sounds/gUnk_08DD6725.bin"
gUnk_08DD672F:: @ 08DD672F
	.incbin "assets/sounds/gUnk_08DD672F.bin"
	.4byte gUnk_08DD6725
	.incbin "assets/sounds/gUnk_08DD672F_1.bin"
	.4byte gUnk_08DD672F
	.incbin "assets/sounds/gUnk_08DD672F_2.bin"
	.4byte gUnk_08DD66EE
	.incbin "assets/sounds/gUnk_08DD672F_3.bin"
	.4byte gUnk_08DD66E4
	.incbin "assets/sounds/gUnk_08DD672F_4.bin"
	.4byte gUnk_08DD66EE
	.incbin "assets/sounds/gUnk_08DD672F_5.bin"
	.4byte gUnk_08DD66E4
	.incbin "assets/sounds/gUnk_08DD672F_6.bin"
	.4byte gUnk_08DD66DB
	.incbin "assets/sounds/gUnk_08DD672F_7.bin"
bgmDarkHyruleCastle_track2:: @ 08DD6775
	.incbin "assets/sounds/bgmDarkHyruleCastle_track2.bin"
gUnk_08DD67AF:: @ 08DD67AF
	.incbin "assets/sounds/gUnk_08DD67AF.bin"
gUnk_08DD67B5:: @ 08DD67B5
	.incbin "assets/sounds/gUnk_08DD67B5.bin"
	.4byte gUnk_08DD67B5
	.incbin "assets/sounds/gUnk_08DD67B5_1.bin"
	.4byte gUnk_08DD67B5
	.incbin "assets/sounds/gUnk_08DD67B5_2.bin"
	.4byte gUnk_08DD67B5
	.incbin "assets/sounds/gUnk_08DD67B5_3.bin"
	.4byte gUnk_08DD67B5
	.incbin "assets/sounds/gUnk_08DD67B5_4.bin"
	.4byte gUnk_08DD67B5
	.incbin "assets/sounds/gUnk_08DD67B5_5.bin"
gUnk_08DD67FF:: @ 08DD67FF
	.incbin "assets/sounds/gUnk_08DD67FF.bin"
	.4byte gUnk_08DD67FF
	.incbin "assets/sounds/gUnk_08DD67FF_1.bin"
	.4byte gUnk_08DD67B5
	.incbin "assets/sounds/gUnk_08DD67FF_2.bin"
	.4byte gUnk_08DD67B5
	.incbin "assets/sounds/gUnk_08DD67FF_3.bin"
gUnk_08DD682E:: @ 08DD682E
	.incbin "assets/sounds/gUnk_08DD682E.bin"
	.4byte gUnk_08DD682E
	.incbin "assets/sounds/gUnk_08DD682E_1.bin"
gUnk_08DD685F:: @ 08DD685F
	.incbin "assets/sounds/gUnk_08DD685F.bin"
	.4byte gUnk_08DD685F
	.incbin "assets/sounds/gUnk_08DD685F_1.bin"
	.4byte gUnk_08DD67AF
	.incbin "assets/sounds/gUnk_08DD685F_2.bin"
bgmDarkHyruleCastle_track3:: @ 08DD689E
	.incbin "assets/sounds/bgmDarkHyruleCastle_track3.bin"
bgmDarkHyruleCastle_track4:: @ 08DD68D6
	.incbin "assets/sounds/bgmDarkHyruleCastle_track4.bin"
gUnk_08DD6914:: @ 08DD6914
	.incbin "assets/sounds/gUnk_08DD6914.bin"
gUnk_08DD693B:: @ 08DD693B
	.incbin "assets/sounds/gUnk_08DD693B.bin"
gUnk_08DD694E:: @ 08DD694E
	.incbin "assets/sounds/gUnk_08DD694E.bin"
gUnk_08DD696D:: @ 08DD696D
	.incbin "assets/sounds/gUnk_08DD696D.bin"
	.4byte gUnk_08DD696D
	.incbin "assets/sounds/gUnk_08DD696D_1.bin"
	.4byte gUnk_08DD693B
	.incbin "assets/sounds/gUnk_08DD696D_2.bin"
	.4byte gUnk_08DD694E
	.incbin "assets/sounds/gUnk_08DD696D_3.bin"
gUnk_08DD6A09:: @ 08DD6A09
	.incbin "assets/sounds/gUnk_08DD6A09.bin"
gUnk_08DD6A13:: @ 08DD6A13
	.incbin "assets/sounds/gUnk_08DD6A13.bin"
	.4byte gUnk_08DD6A09
	.incbin "assets/sounds/gUnk_08DD6A13_1.bin"
	.4byte gUnk_08DD6A13
	.incbin "assets/sounds/gUnk_08DD6A13_2.bin"
	.4byte gUnk_08DD6914
	.incbin "assets/sounds/gUnk_08DD6A13_3.bin"
bgmDarkHyruleCastle_track5:: @ 08DD6A70
	.incbin "assets/sounds/bgmDarkHyruleCastle_track5.bin"
gUnk_08DD6AA2:: @ 08DD6AA2
	.incbin "assets/sounds/gUnk_08DD6AA2.bin"
gUnk_08DD6ABD:: @ 08DD6ABD
	.incbin "assets/sounds/gUnk_08DD6ABD.bin"
gUnk_08DD6AC8:: @ 08DD6AC8
	.incbin "assets/sounds/gUnk_08DD6AC8.bin"
	.4byte gUnk_08DD6ABD
gUnk_08DD6AE5:: @ 08DD6AE5
	.incbin "assets/sounds/gUnk_08DD6AE5.bin"
	.4byte gUnk_08DD6ABD
	.incbin "assets/sounds/gUnk_08DD6AE5_1.bin"
	.4byte gUnk_08DD6AC8
	.incbin "assets/sounds/gUnk_08DD6AE5_2.bin"
	.4byte gUnk_08DD6ABD
	.incbin "assets/sounds/gUnk_08DD6AE5_3.bin"
	.4byte gUnk_08DD6AE5
	.incbin "assets/sounds/gUnk_08DD6AE5_4.bin"
	.4byte gUnk_08DD6ABD
	.incbin "assets/sounds/gUnk_08DD6AE5_5.bin"
	.4byte gUnk_08DD6ABD
	.incbin "assets/sounds/gUnk_08DD6AE5_6.bin"
	.4byte gUnk_08DD6AE5
	.incbin "assets/sounds/gUnk_08DD6AE5_7.bin"
	.4byte gUnk_08DD6ABD
	.incbin "assets/sounds/gUnk_08DD6AE5_8.bin"
	.4byte gUnk_08DD6AC8
	.incbin "assets/sounds/gUnk_08DD6AE5_9.bin"
	.4byte gUnk_08DD6AC8
	.incbin "assets/sounds/gUnk_08DD6AE5_10.bin"
	.4byte gUnk_08DD6ABD
	.incbin "assets/sounds/gUnk_08DD6AE5_11.bin"
	.4byte gUnk_08DD6AC8
	.incbin "assets/sounds/gUnk_08DD6AE5_12.bin"
	.4byte gUnk_08DD6ABD
	.incbin "assets/sounds/gUnk_08DD6AE5_13.bin"
	.4byte gUnk_08DD6AA2
	.incbin "assets/sounds/gUnk_08DD6AE5_14.bin"
bgmDarkHyruleCastle_track6:: @ 08DD6B76
	.incbin "assets/sounds/bgmDarkHyruleCastle_track6.bin"
gUnk_08DD6B8B:: @ 08DD6B8B
	.incbin "assets/sounds/gUnk_08DD6B8B.bin"
gUnk_08DD6B97:: @ 08DD6B97
	.incbin "assets/sounds/gUnk_08DD6B97.bin"
	.4byte gUnk_08DD6B8B
	.incbin "assets/sounds/gUnk_08DD6B97_1.bin"
	.4byte gUnk_08DD6B8B
	.incbin "assets/sounds/gUnk_08DD6B97_2.bin"
	.4byte gUnk_08DD6B8B
	.incbin "assets/sounds/gUnk_08DD6B97_3.bin"
gUnk_08DD6BC4:: @ 08DD6BC4
	.incbin "assets/sounds/gUnk_08DD6BC4.bin"
	.4byte gUnk_08DD6BC4
	.incbin "assets/sounds/gUnk_08DD6BC4_1.bin"
	.4byte gUnk_08DD6BC4
	.incbin "assets/sounds/gUnk_08DD6BC4_2.bin"
	.4byte gUnk_08DD6B97
	.incbin "assets/sounds/gUnk_08DD6BC4_3.bin"
bgmDarkHyruleCastle:: @ 08DD6BFC
	sound_header 7 0 0 0xb2 gUnk_08A06D94 bgmDarkHyruleCastle_track0 bgmDarkHyruleCastle_track1 bgmDarkHyruleCastle_track2 bgmDarkHyruleCastle_track3 bgmDarkHyruleCastle_track4 bgmDarkHyruleCastle_track5 bgmDarkHyruleCastle_track6

bgmSecretCastleEntrance_track0:: @ 08DD6C20
.ifdef EU
	.incbin "assets/sounds/bgmSecretCastleEntrance_track0_EU.bin"
gUnk_08EE2283::
	.incbin "assets/sounds/gUnk_08EE2283_EU.bin"
gUnk_08EE2290::
	.incbin "assets/sounds/gUnk_08EE2290_EU.bin"
	.4byte gUnk_08EE2290
	.byte 0xB3
	.4byte gUnk_08EE2290
	.byte 0xB3
	.4byte gUnk_08EE2290
	.byte 0xB3
	.4byte gUnk_08EE2290
	.incbin "assets/sounds/gUnk_08EE2290_1_EU.bin"
	.4byte gUnk_08EE2290
gUnk_08EE22C6::
	.incbin "assets/sounds/gUnk_08EE22C6_EU.bin"
	.4byte gUnk_08EE22C6
	.byte 0xB3
	.4byte gUnk_08EE22C6
	.byte 0xB3
	.4byte gUnk_08EE22C6
	.byte 0xBB
	.byte 0x3C
	.byte 0xB2
	.4byte gUnk_08EE2283
	.byte 0xB1
.else
	.incbin "assets/sounds/bgmSecretCastleEntrance_track0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DD6C2B:: @ 08DD6C2B
	.incbin "assets/sounds/gUnk_08DD6C2B_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DD6C38:: @ 08DD6C38
	.incbin "assets/sounds/gUnk_08DD6C38_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6C38
	.incbin "assets/sounds/gUnk_08DD6C38_1_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6C38
gUnk_08DD6C5F:: @ 08DD6C5F
	.incbin "assets/sounds/gUnk_08DD6C5F_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6C5F
gUnk_08DD6C85:: @ 08DD6C85
	.incbin "assets/sounds/gUnk_08DD6C85_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6C85
	.incbin "assets/sounds/gUnk_08DD6C85_1_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6C85
	.incbin "assets/sounds/gUnk_08DD6C85_2_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6C2B
	.incbin "assets/sounds/gUnk_08DD6C85_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

bgmSecretCastleEntrance_track1:: @ 08DD6CB6
.ifdef EU
	.incbin "assets/sounds/bgmSecretCastleEntrance_track1_EU.bin"
gUnk_08EE22F2:: @ 08EE22F2
	.incbin "assets/sounds/gUnk_08EE22F2_EU.bin"
gUnk_08EE22FF:: @ 08EE22FF
	.incbin "assets/sounds/gUnk_08EE22FF_EU.bin"
	.4byte gUnk_08EE22FF
	.incbin "assets/sounds/gUnk_08EE22FF_1_EU.bin"
	.4byte gUnk_08EE22FF
	.incbin "assets/sounds/gUnk_08EE22FF_2_EU.bin"
	.4byte gUnk_08EE22FF
	.incbin "assets/sounds/gUnk_08EE22FF_3_EU.bin"
	.4byte gUnk_08EE22FF
	.incbin "assets/sounds/gUnk_08EE22FF_4_EU.bin"
	.4byte gUnk_08EE22FF
	.incbin "assets/sounds/gUnk_08EE22FF_5_EU.bin"
	.4byte gUnk_08EE22FF
gUnk_08EE232B:: @ 08EE232B
	.incbin "assets/sounds/gUnk_08EE232B_EU.bin"
	.4byte gUnk_08EE232B
	.incbin "assets/sounds/gUnk_08EE232B_1_EU.bin"
	.4byte gUnk_08EE232B
	.incbin "assets/sounds/gUnk_08EE232B_2_EU.bin"
	.4byte gUnk_08EE232B
	.incbin "assets/sounds/gUnk_08EE232B_3_EU.bin"
	.4byte gUnk_08EE22F2
	.incbin "assets/sounds/gUnk_08EE232B_4_EU.bin"
.else
	.incbin "assets/sounds/bgmSecretCastleEntrance_track1_1_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DD6CBD:: @ 08DD6CBD
	.incbin "assets/sounds/gUnk_08DD6CBD_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DD6CCA:: @ 08DD6CCA
	.incbin "assets/sounds/gUnk_08DD6CCA_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DD6CD8:: @ 08DD6CD8
	.incbin "assets/sounds/gUnk_08DD6CD8_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6CCA
	.incbin "assets/sounds/gUnk_08DD6CD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6CCA
gUnk_08DD6CF2:: @ 08DD6CF2
	.incbin "assets/sounds/gUnk_08DD6CF2_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6CD8
	.incbin "assets/sounds/gUnk_08DD6CF2_1_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6CF2
gUnk_08DD6D0C:: @ 08DD6D0C
	.incbin "assets/sounds/gUnk_08DD6D0C_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6D0C
	.incbin "assets/sounds/gUnk_08DD6D0C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6D0C
	.incbin "assets/sounds/gUnk_08DD6D0C_2_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6CBD
	.incbin "assets/sounds/gUnk_08DD6D0C_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

bgmSecretCastleEntrance_track2:: @ 08DD6D3B
	.incbin "assets/sounds/bgmSecretCastleEntrance_track2.bin"
gUnk_08DD6D3F:: @ 08DD6D3F
.ifdef EU
    @ TODO only small differences
	.incbin "assets/sounds/gUnk_08DD6D3F_EU.bin"
.else
	.incbin "assets/sounds/gUnk_08DD6D3F_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
gUnk_08DD6D48:: @ 08DD6D48
	.incbin "assets/sounds/gUnk_08DD6D48.bin"
	.4byte gUnk_08DD6D48
.ifdef EU
    @ TODO only small differences
	.incbin "assets/sounds/gUnk_08DD6D48_1_EU.bin"
.else
	.incbin "assets/sounds/gUnk_08DD6D48_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte gUnk_08DD6D3F
	.incbin "assets/sounds/gUnk_08DD6D48_3.bin"
bgmSecretCastleEntrance_track3:: @ 08DD6DA5
	.incbin "assets/sounds/bgmSecretCastleEntrance_track3.bin"
gUnk_08DD6DAB:: @ 08DD6DAB
.ifdef EU
    @ TODO only small differences
	.incbin "assets/sounds/gUnk_08DD6DAB_EU.bin"
.else
	.incbin "assets/sounds/gUnk_08DD6DAB_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
gUnk_08DD6DB0:: @ 08DD6DB0
	.incbin "assets/sounds/gUnk_08DD6DB0.bin"
	.4byte gUnk_08DD6DB0
	.incbin "assets/sounds/gUnk_08DD6DB0_1.bin"
	.4byte gUnk_08DD6DAB
	.incbin "assets/sounds/gUnk_08DD6DB0_2.bin"
bgmSecretCastleEntrance_track4:: @ 08DD6DEC
.ifdef EU
    @ TODO only small differences
	.incbin "assets/sounds/bgmSecretCastleEntrance_track4_EU.bin"
.else
	.incbin "assets/sounds/bgmSecretCastleEntrance_track4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
gUnk_08DD6DF4:: @ 08DD6DF4
	.incbin "assets/sounds/gUnk_08DD6DF4.bin"
gUnk_08DD6E0B:: @ 08DD6E0B
	.incbin "assets/sounds/gUnk_08DD6E0B.bin"
	.4byte gUnk_08DD6E0B
	.incbin "assets/sounds/gUnk_08DD6E0B_1.bin"
	.4byte gUnk_08DD6E0B
	.incbin "assets/sounds/gUnk_08DD6E0B_2.bin"
	.4byte gUnk_08DD6E0B
gUnk_08DD6E2D:: @ 08DD6E2D
	.incbin "assets/sounds/gUnk_08DD6E2D.bin"
	.4byte gUnk_08DD6E2D
	.incbin "assets/sounds/gUnk_08DD6E2D_1.bin"
	.4byte gUnk_08DD6E2D
	.incbin "assets/sounds/gUnk_08DD6E2D_2.bin"
	.4byte gUnk_08DD6E2D
	.incbin "assets/sounds/gUnk_08DD6E2D_3.bin"
	.4byte gUnk_08DD6DF4
	.incbin "assets/sounds/gUnk_08DD6E2D_4.bin"
bgmSecretCastleEntrance_track5:: @ 08DD6E4D
	.incbin "assets/sounds/bgmSecretCastleEntrance_track5.bin"
gUnk_08DD6E54:: @ 08DD6E54
	.incbin "assets/sounds/gUnk_08DD6E54.bin"
gUnk_08DD6E56:: @ 08DD6E56
	.incbin "assets/sounds/gUnk_08DD6E56.bin"
	.4byte gUnk_08DD6E56
	.incbin "assets/sounds/gUnk_08DD6E56_1.bin"
	.4byte gUnk_08DD6E56
	.incbin "assets/sounds/gUnk_08DD6E56_2.bin"
	.4byte gUnk_08DD6E56
	.incbin "assets/sounds/gUnk_08DD6E56_3.bin"
gUnk_08DD6E92:: @ 08DD6E92
	.incbin "assets/sounds/gUnk_08DD6E92.bin"
	.4byte gUnk_08DD6E92
	.incbin "assets/sounds/gUnk_08DD6E92_1.bin"
	.4byte gUnk_08DD6E54
	.incbin "assets/sounds/gUnk_08DD6E92_2.bin"
bgmSecretCastleEntrance_track6:: @ 08DD6EC6
	.incbin "assets/sounds/bgmSecretCastleEntrance_track6.bin"
gUnk_08DD6ECD:: @ 08DD6ECD
	.incbin "assets/sounds/gUnk_08DD6ECD.bin"
	.4byte gUnk_08DD6ECD
	.incbin "assets/sounds/gUnk_08DD6ECD_1.bin"

bgmSecretCastleEntrance_track7:: @ 08DD6F8A
.ifdef EU
	.incbin "assets/sounds/bgmSecretCastleEntrance_track7_EU.bin"
gUnk_08EE25A0:: @ 08EE25A0
	.incbin "assets/sounds/gUnk_08EE25A0_EU.bin"
	.4byte gUnk_08EE25A0
	.incbin "assets/sounds/gUnk_08EE25A0_1_EU.bin"
.else
	.incbin "assets/sounds/bgmSecretCastleEntrance_track7_1_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DD6F8D:: @ 08DD6F8D
	.incbin "assets/sounds/gUnk_08DD6F8D_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DD6F8D
	.incbin "assets/sounds/gUnk_08DD6F8D_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif


bgmSecretCastleEntrance:: @ 08DD6FC4
	sound_header 8 0 0 0xbc gUnk_08A07394 bgmSecretCastleEntrance_track0 bgmSecretCastleEntrance_track1 bgmSecretCastleEntrance_track2 bgmSecretCastleEntrance_track3 bgmSecretCastleEntrance_track4 bgmSecretCastleEntrance_track5 bgmSecretCastleEntrance_track6 bgmSecretCastleEntrance_track7

bgmDeepwoodShrine_track0:: @ 08DD6FEC
	.incbin "assets/sounds/bgmDeepwoodShrine_track0.bin"
gUnk_08DD701C:: @ 08DD701C
	.incbin "assets/sounds/gUnk_08DD701C.bin"
gUnk_08DD7042:: @ 08DD7042
	.incbin "assets/sounds/gUnk_08DD7042.bin"
	.4byte gUnk_08DD701C
	.incbin "assets/sounds/gUnk_08DD7042_1.bin"
	.4byte gUnk_08DD701C
	.incbin "assets/sounds/gUnk_08DD7042_2.bin"
	.4byte gUnk_08DD701C
	.incbin "assets/sounds/gUnk_08DD7042_3.bin"
	.4byte gUnk_08DD701C
	.incbin "assets/sounds/gUnk_08DD7042_4.bin"
	.4byte gUnk_08DD701C
	.incbin "assets/sounds/gUnk_08DD7042_5.bin"
	.4byte gUnk_08DD701C
	.incbin "assets/sounds/gUnk_08DD7042_6.bin"
	.4byte gUnk_08DD7042
	.incbin "assets/sounds/gUnk_08DD7042_7.bin"
bgmDeepwoodShrine_track1:: @ 08DD7135
	.incbin "assets/sounds/bgmDeepwoodShrine_track1.bin"
gUnk_08DD713C:: @ 08DD713C
	.incbin "assets/sounds/gUnk_08DD713C.bin"
	.4byte gUnk_08DD713C
	.incbin "assets/sounds/gUnk_08DD713C_1.bin"
bgmDeepwoodShrine_track2:: @ 08DD714C
	.incbin "assets/sounds/bgmDeepwoodShrine_track2.bin"
gUnk_08DD7151:: @ 08DD7151
	.incbin "assets/sounds/gUnk_08DD7151.bin"
	.4byte gUnk_08DD7151
	.incbin "assets/sounds/gUnk_08DD7151_1.bin"
bgmDeepwoodShrine:: @ 08DD7174
	sound_header 3 0 0 0xbc gUnk_08A07610 bgmDeepwoodShrine_track0 bgmDeepwoodShrine_track1 bgmDeepwoodShrine_track2

bgmCaveOfFlames_track0:: @ 08DD7188
	.incbin "assets/sounds/bgmCaveOfFlames_track0.bin"
bgmCaveOfFlames_track1:: @ 08DD71AE
	.incbin "assets/sounds/bgmCaveOfFlames_track1.bin"
gUnk_08DD71C4:: @ 08DD71C4
	.incbin "assets/sounds/gUnk_08DD71C4.bin"
gUnk_08DD71C5:: @ 08DD71C5
	.incbin "assets/sounds/gUnk_08DD71C5.bin"
	.4byte gUnk_08DD71C5
	.incbin "assets/sounds/gUnk_08DD71C5_1.bin"
	.4byte gUnk_08DD71C5
	.incbin "assets/sounds/gUnk_08DD71C5_2.bin"
	.4byte gUnk_08DD71C5
	.incbin "assets/sounds/gUnk_08DD71C5_3.bin"
	.4byte gUnk_08DD71C5
	.incbin "assets/sounds/gUnk_08DD71C5_4.bin"
	.4byte gUnk_08DD71C5
	.incbin "assets/sounds/gUnk_08DD71C5_5.bin"
gUnk_08DD71EE:: @ 08DD71EE
	.incbin "assets/sounds/gUnk_08DD71EE.bin"
	.4byte gUnk_08DD71EE
	.incbin "assets/sounds/gUnk_08DD71EE_1.bin"
	.4byte gUnk_08DD71C4
	.incbin "assets/sounds/gUnk_08DD71EE_2.bin"
bgmCaveOfFlames_track2:: @ 08DD720A
	.incbin "assets/sounds/bgmCaveOfFlames_track2.bin"
gUnk_08DD7229:: @ 08DD7229
	.incbin "assets/sounds/gUnk_08DD7229.bin"
	.4byte gUnk_08DD7229
	.incbin "assets/sounds/gUnk_08DD7229_1.bin"
bgmCaveOfFlames_track3:: @ 08DD72C4
	.incbin "assets/sounds/bgmCaveOfFlames_track3.bin"
gUnk_08DD72E4:: @ 08DD72E4
	.incbin "assets/sounds/gUnk_08DD72E4.bin"
	.4byte gUnk_08DD72E4
	.incbin "assets/sounds/gUnk_08DD72E4_1.bin"
bgmCaveOfFlames_track4:: @ 08DD7391
	.incbin "assets/sounds/bgmCaveOfFlames_track4.bin"
gUnk_08DD73B3:: @ 08DD73B3
	.incbin "assets/sounds/gUnk_08DD73B3.bin"
gUnk_08DD73CE:: @ 08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_1.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_2.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_3.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_4.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_5.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_6.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_7.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_8.bin"
	.4byte gUnk_08DD73CE
	.incbin "assets/sounds/gUnk_08DD73CE_9.bin"
	.4byte gUnk_08DD73CE
gUnk_08DD741A:: @ 08DD741A
	.incbin "assets/sounds/gUnk_08DD741A.bin"
	.4byte gUnk_08DD741A
	.incbin "assets/sounds/gUnk_08DD741A_1.bin"
	.4byte gUnk_08DD741A
	.incbin "assets/sounds/gUnk_08DD741A_2.bin"
	.4byte gUnk_08DD741A
	.incbin "assets/sounds/gUnk_08DD741A_3.bin"
	.4byte gUnk_08DD741A
	.incbin "assets/sounds/gUnk_08DD741A_4.bin"
	.4byte gUnk_08DD741A
	.incbin "assets/sounds/gUnk_08DD741A_5.bin"
	.4byte gUnk_08DD73B3
	.incbin "assets/sounds/gUnk_08DD741A_6.bin"
bgmCaveOfFlames_track5:: @ 08DD7453
	.incbin "assets/sounds/bgmCaveOfFlames_track5.bin"
gUnk_08DD745B:: @ 08DD745B
	.incbin "assets/sounds/gUnk_08DD745B.bin"
	.4byte gUnk_08DD745B
	.incbin "assets/sounds/gUnk_08DD745B_1.bin"
bgmCaveOfFlames_track6:: @ 08DD7517
	.incbin "assets/sounds/bgmCaveOfFlames_track6.bin"
gUnk_08DD7520:: @ 08DD7520
	.incbin "assets/sounds/gUnk_08DD7520.bin"
	.4byte gUnk_08DD7520
	.incbin "assets/sounds/gUnk_08DD7520_1.bin"
bgmCaveOfFlames_track7:: @ 08DD7545
	.incbin "assets/sounds/bgmCaveOfFlames_track7.bin"
gUnk_08DD7551:: @ 08DD7551
	.incbin "assets/sounds/gUnk_08DD7551.bin"
gUnk_08DD7568:: @ 08DD7568
	.incbin "assets/sounds/gUnk_08DD7568.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_1.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_2.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_3.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_4.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_5.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_6.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_7.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_8.bin"
	.4byte gUnk_08DD7568
	.incbin "assets/sounds/gUnk_08DD7568_9.bin"
	.4byte gUnk_08DD7568
gUnk_08DD75B3:: @ 08DD75B3
	.incbin "assets/sounds/gUnk_08DD75B3.bin"
	.4byte gUnk_08DD75B3
	.incbin "assets/sounds/gUnk_08DD75B3_1.bin"
	.4byte gUnk_08DD75B3
	.incbin "assets/sounds/gUnk_08DD75B3_2.bin"
	.4byte gUnk_08DD75B3
	.incbin "assets/sounds/gUnk_08DD75B3_3.bin"
	.4byte gUnk_08DD75B3
	.incbin "assets/sounds/gUnk_08DD75B3_4.bin"
	.4byte gUnk_08DD75B3
	.incbin "assets/sounds/gUnk_08DD75B3_5.bin"
	.4byte gUnk_08DD7551
	.incbin "assets/sounds/gUnk_08DD75B3_6.bin"
bgmCaveOfFlames_track8:: @ 08DD75EC
	.incbin "assets/sounds/bgmCaveOfFlames_track8.bin"
gUnk_08DD75F6:: @ 08DD75F6
	.incbin "assets/sounds/gUnk_08DD75F6.bin"
	.4byte gUnk_08DD75F6
	.incbin "assets/sounds/gUnk_08DD75F6_1.bin"
bgmCaveOfFlames:: @ 08DD7670
	sound_header 9 0 0 0xbc gUnk_08A07C10 bgmCaveOfFlames_track0 bgmCaveOfFlames_track1 bgmCaveOfFlames_track2 bgmCaveOfFlames_track3 bgmCaveOfFlames_track4 bgmCaveOfFlames_track5 bgmCaveOfFlames_track6 bgmCaveOfFlames_track7 bgmCaveOfFlames_track8

bgmFortressOfWinds_track0:: @ 08DD769C
	.incbin "assets/sounds/bgmFortressOfWinds_track0.bin"
gUnk_08DD76A7:: @ 08DD76A7
	.incbin "assets/sounds/gUnk_08DD76A7.bin"
gUnk_08DD76AD:: @ 08DD76AD
	.incbin "assets/sounds/gUnk_08DD76AD.bin"
gUnk_08DD76CB:: @ 08DD76CB
	.incbin "assets/sounds/gUnk_08DD76CB.bin"
gUnk_08DD76DA:: @ 08DD76DA
	.incbin "assets/sounds/gUnk_08DD76DA.bin"
gUnk_08DD76F0:: @ 08DD76F0
	.incbin "assets/sounds/gUnk_08DD76F0.bin"
gUnk_08DD76FA:: @ 08DD76FA
	.incbin "assets/sounds/gUnk_08DD76FA.bin"
gUnk_08DD7714:: @ 08DD7714
	.incbin "assets/sounds/gUnk_08DD7714.bin"
gUnk_08DD772A:: @ 08DD772A
	.incbin "assets/sounds/gUnk_08DD772A.bin"
gUnk_08DD7740:: @ 08DD7740
	.incbin "assets/sounds/gUnk_08DD7740.bin"
	.4byte gUnk_08DD76AD
	.incbin "assets/sounds/gUnk_08DD7740_1.bin"
	.4byte gUnk_08DD76CB
	.incbin "assets/sounds/gUnk_08DD7740_2.bin"
	.4byte gUnk_08DD76DA
	.incbin "assets/sounds/gUnk_08DD7740_3.bin"
	.4byte gUnk_08DD76F0
	.incbin "assets/sounds/gUnk_08DD7740_4.bin"
	.4byte gUnk_08DD76FA
	.incbin "assets/sounds/gUnk_08DD7740_5.bin"
	.4byte gUnk_08DD7714
	.incbin "assets/sounds/gUnk_08DD7740_6.bin"
	.4byte gUnk_08DD772A
	.incbin "assets/sounds/gUnk_08DD7740_7.bin"
	.4byte gUnk_08DD7740
	.incbin "assets/sounds/gUnk_08DD7740_8.bin"
	.4byte gUnk_08DD7714
	.incbin "assets/sounds/gUnk_08DD7740_9.bin"
	.4byte gUnk_08DD772A
	.incbin "assets/sounds/gUnk_08DD7740_10.bin"
	.4byte gUnk_08DD7740
	.incbin "assets/sounds/gUnk_08DD7740_11.bin"
	.4byte gUnk_08DD76A7
	.incbin "assets/sounds/gUnk_08DD7740_12.bin"
bgmFortressOfWinds_track1:: @ 08DD77D9
	.incbin "assets/sounds/bgmFortressOfWinds_track1.bin"
gUnk_08DD77E1:: @ 08DD77E1
	.incbin "assets/sounds/gUnk_08DD77E1.bin"
gUnk_08DD77F6:: @ 08DD77F6
	.incbin "assets/sounds/gUnk_08DD77F6.bin"
gUnk_08DD77FD:: @ 08DD77FD
	.incbin "assets/sounds/gUnk_08DD77FD.bin"
gUnk_08DD7842:: @ 08DD7842
	.incbin "assets/sounds/gUnk_08DD7842.bin"
gUnk_08DD7852:: @ 08DD7852
	.incbin "assets/sounds/gUnk_08DD7852.bin"
gUnk_08DD7869:: @ 08DD7869
	.incbin "assets/sounds/gUnk_08DD7869.bin"
gUnk_08DD7879:: @ 08DD7879
	.incbin "assets/sounds/gUnk_08DD7879.bin"
	.4byte gUnk_08DD77F6
	.incbin "assets/sounds/gUnk_08DD7879_1.bin"
	.4byte gUnk_08DD77FD
	.incbin "assets/sounds/gUnk_08DD7879_2.bin"
	.4byte gUnk_08DD7842
	.incbin "assets/sounds/gUnk_08DD7879_3.bin"
	.4byte gUnk_08DD7852
	.incbin "assets/sounds/gUnk_08DD7879_4.bin"
	.4byte gUnk_08DD7869
	.incbin "assets/sounds/gUnk_08DD7879_5.bin"
	.4byte gUnk_08DD7879
	.incbin "assets/sounds/gUnk_08DD7879_6.bin"
	.4byte gUnk_08DD7842
	.incbin "assets/sounds/gUnk_08DD7879_7.bin"
	.4byte gUnk_08DD7852
	.incbin "assets/sounds/gUnk_08DD7879_8.bin"
	.4byte gUnk_08DD7869
	.incbin "assets/sounds/gUnk_08DD7879_9.bin"
	.4byte gUnk_08DD7879
	.incbin "assets/sounds/gUnk_08DD7879_10.bin"
	.4byte gUnk_08DD77E1
	.incbin "assets/sounds/gUnk_08DD7879_11.bin"
bgmFortressOfWinds_track2:: @ 08DD7901
	.incbin "assets/sounds/bgmFortressOfWinds_track2.bin"
gUnk_08DD7908:: @ 08DD7908
	.incbin "assets/sounds/gUnk_08DD7908.bin"
gUnk_08DD7913:: @ 08DD7913
	.incbin "assets/sounds/gUnk_08DD7913.bin"
gUnk_08DD7920:: @ 08DD7920
	.incbin "assets/sounds/gUnk_08DD7920.bin"
gUnk_08DD792D:: @ 08DD792D
	.incbin "assets/sounds/gUnk_08DD792D.bin"
gUnk_08DD7937:: @ 08DD7937
	.incbin "assets/sounds/gUnk_08DD7937.bin"
gUnk_08DD7944:: @ 08DD7944
	.incbin "assets/sounds/gUnk_08DD7944.bin"
	.4byte gUnk_08DD7913
	.incbin "assets/sounds/gUnk_08DD7944_1.bin"
	.4byte gUnk_08DD7920
	.incbin "assets/sounds/gUnk_08DD7944_2.bin"
	.4byte gUnk_08DD792D
	.incbin "assets/sounds/gUnk_08DD7944_3.bin"
	.4byte gUnk_08DD7937
	.incbin "assets/sounds/gUnk_08DD7944_4.bin"
	.4byte gUnk_08DD7944
	.incbin "assets/sounds/gUnk_08DD7944_5.bin"
	.4byte gUnk_08DD7920
	.incbin "assets/sounds/gUnk_08DD7944_6.bin"
	.4byte gUnk_08DD792D
	.incbin "assets/sounds/gUnk_08DD7944_7.bin"
	.4byte gUnk_08DD7937
	.incbin "assets/sounds/gUnk_08DD7944_8.bin"
	.4byte gUnk_08DD7944
	.incbin "assets/sounds/gUnk_08DD7944_9.bin"
	.4byte gUnk_08DD7908
	.incbin "assets/sounds/gUnk_08DD7944_10.bin"
bgmFortressOfWinds_track3:: @ 08DD7998
	.incbin "assets/sounds/bgmFortressOfWinds_track3.bin"
gUnk_08DD799F:: @ 08DD799F
	.incbin "assets/sounds/gUnk_08DD799F.bin"
gUnk_08DD79DC:: @ 08DD79DC
	.incbin "assets/sounds/gUnk_08DD79DC.bin"
gUnk_08DD79F6:: @ 08DD79F6
	.incbin "assets/sounds/gUnk_08DD79F6.bin"
	.4byte gUnk_08DD79DC
	.incbin "assets/sounds/gUnk_08DD79F6_1.bin"
	.4byte gUnk_08DD79F6
	.incbin "assets/sounds/gUnk_08DD79F6_2.bin"
	.4byte gUnk_08DD79DC
	.incbin "assets/sounds/gUnk_08DD79F6_3.bin"
	.4byte gUnk_08DD79F6
	.incbin "assets/sounds/gUnk_08DD79F6_4.bin"
	.4byte gUnk_08DD799F
	.incbin "assets/sounds/gUnk_08DD79F6_5.bin"
bgmFortressOfWinds_track4:: @ 08DD7AB7
	.incbin "assets/sounds/bgmFortressOfWinds_track4.bin"
gUnk_08DD7ABE:: @ 08DD7ABE
	.incbin "assets/sounds/gUnk_08DD7ABE.bin"
gUnk_08DD7AFB:: @ 08DD7AFB
	.incbin "assets/sounds/gUnk_08DD7AFB.bin"
gUnk_08DD7B15:: @ 08DD7B15
	.incbin "assets/sounds/gUnk_08DD7B15.bin"
	.4byte gUnk_08DD7AFB
	.incbin "assets/sounds/gUnk_08DD7B15_1.bin"
	.4byte gUnk_08DD7B15
	.incbin "assets/sounds/gUnk_08DD7B15_2.bin"
	.4byte gUnk_08DD7AFB
	.incbin "assets/sounds/gUnk_08DD7B15_3.bin"
	.4byte gUnk_08DD7B15
	.incbin "assets/sounds/gUnk_08DD7B15_4.bin"
	.4byte gUnk_08DD7ABE
	.incbin "assets/sounds/gUnk_08DD7B15_5.bin"
bgmFortressOfWinds_track5:: @ 08DD7BD6
	.incbin "assets/sounds/bgmFortressOfWinds_track5.bin"
gUnk_08DD7BDE:: @ 08DD7BDE
	.incbin "assets/sounds/gUnk_08DD7BDE.bin"
gUnk_08DD7BF2:: @ 08DD7BF2
	.incbin "assets/sounds/gUnk_08DD7BF2.bin"
gUnk_08DD7C04:: @ 08DD7C04
	.incbin "assets/sounds/gUnk_08DD7C04.bin"
	.4byte gUnk_08DD7C04
	.incbin "assets/sounds/gUnk_08DD7C04_1.bin"
gUnk_08DD7C2F:: @ 08DD7C2F
	.incbin "assets/sounds/gUnk_08DD7C2F.bin"
gUnk_08DD7C59:: @ 08DD7C59
	.incbin "assets/sounds/gUnk_08DD7C59.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7C59_1.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7C59_2.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7C59_3.bin"
	.4byte gUnk_08DD7C04
	.incbin "assets/sounds/gUnk_08DD7C59_4.bin"
	.4byte gUnk_08DD7BF2
	.incbin "assets/sounds/gUnk_08DD7C59_5.bin"
	.4byte gUnk_08DD7C04
gUnk_08DD7CB5:: @ 08DD7CB5
	.incbin "assets/sounds/gUnk_08DD7CB5.bin"
	.4byte gUnk_08DD7C04
	.incbin "assets/sounds/gUnk_08DD7CB5_1.bin"
	.4byte gUnk_08DD7C2F
	.incbin "assets/sounds/gUnk_08DD7CB5_2.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7CB5_3.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7CB5_4.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7CB5_5.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7CB5_6.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7CB5_7.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7CB5_8.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7CB5_9.bin"
	.4byte gUnk_08DD7C59
	.incbin "assets/sounds/gUnk_08DD7CB5_10.bin"
	.4byte gUnk_08DD7CB5
	.incbin "assets/sounds/gUnk_08DD7CB5_11.bin"
	.4byte gUnk_08DD7C04
	.incbin "assets/sounds/gUnk_08DD7CB5_12.bin"
	.4byte gUnk_08DD7BDE
	.incbin "assets/sounds/gUnk_08DD7CB5_13.bin"
bgmFortressOfWinds_track6:: @ 08DD7D0A
	.incbin "assets/sounds/bgmFortressOfWinds_track6.bin"
gUnk_08DD7D11:: @ 08DD7D11
	.incbin "assets/sounds/gUnk_08DD7D11.bin"
gUnk_08DD7D28:: @ 08DD7D28
	.incbin "assets/sounds/gUnk_08DD7D28.bin"
gUnk_08DD7D50:: @ 08DD7D50
	.incbin "assets/sounds/gUnk_08DD7D50.bin"
gUnk_08DD7D79:: @ 08DD7D79
	.incbin "assets/sounds/gUnk_08DD7D79.bin"
gUnk_08DD7DA1:: @ 08DD7DA1
	.incbin "assets/sounds/gUnk_08DD7DA1.bin"
	.4byte gUnk_08DD7D28
	.incbin "assets/sounds/gUnk_08DD7DA1_1.bin"
	.4byte gUnk_08DD7D50
	.incbin "assets/sounds/gUnk_08DD7DA1_2.bin"
	.4byte gUnk_08DD7D79
	.incbin "assets/sounds/gUnk_08DD7DA1_3.bin"
	.4byte gUnk_08DD7DA1
	.incbin "assets/sounds/gUnk_08DD7DA1_4.bin"
	.4byte gUnk_08DD7D11
	.incbin "assets/sounds/gUnk_08DD7DA1_5.bin"
bgmFortressOfWinds:: @ 08DD7E08
	sound_header 7 0 0 0xbc gUnk_08A08210 bgmFortressOfWinds_track0 bgmFortressOfWinds_track1 bgmFortressOfWinds_track2 bgmFortressOfWinds_track3 bgmFortressOfWinds_track4 bgmFortressOfWinds_track5 bgmFortressOfWinds_track6

bgmTempleOfDroplets_track0:: @ 08DD7E2C
	.incbin "assets/sounds/bgmTempleOfDroplets_track0.bin"
gUnk_08DD7E37:: @ 08DD7E37
	.incbin "assets/sounds/gUnk_08DD7E37.bin"
gUnk_08DD7E41:: @ 08DD7E41
	.incbin "assets/sounds/gUnk_08DD7E41.bin"
gUnk_08DD7E51:: @ 08DD7E51
	.incbin "assets/sounds/gUnk_08DD7E51.bin"
	.4byte gUnk_08DD7E41
	.incbin "assets/sounds/gUnk_08DD7E51_1.bin"
	.4byte gUnk_08DD7E41
	.incbin "assets/sounds/gUnk_08DD7E51_2.bin"
	.4byte gUnk_08DD7E41
	.incbin "assets/sounds/gUnk_08DD7E51_3.bin"
	.4byte gUnk_08DD7E51
	.incbin "assets/sounds/gUnk_08DD7E51_4.bin"
	.4byte gUnk_08DD7E41
	.incbin "assets/sounds/gUnk_08DD7E51_5.bin"
	.4byte gUnk_08DD7E51
	.incbin "assets/sounds/gUnk_08DD7E51_6.bin"
	.4byte gUnk_08DD7E41
	.incbin "assets/sounds/gUnk_08DD7E51_7.bin"
	.4byte gUnk_08DD7E41
	.incbin "assets/sounds/gUnk_08DD7E51_8.bin"
	.4byte gUnk_08DD7E41
	.incbin "assets/sounds/gUnk_08DD7E51_9.bin"
	.4byte gUnk_08DD7E37
	.incbin "assets/sounds/gUnk_08DD7E51_10.bin"
bgmTempleOfDroplets_track1:: @ 08DD7EA2
	.incbin "assets/sounds/bgmTempleOfDroplets_track1.bin"
gUnk_08DD7EA9:: @ 08DD7EA9
	.incbin "assets/sounds/gUnk_08DD7EA9.bin"
gUnk_08DD7F3D:: @ 08DD7F3D
	.incbin "assets/sounds/gUnk_08DD7F3D.bin"
	.4byte gUnk_08DD7F3D
	.incbin "assets/sounds/gUnk_08DD7F3D_1.bin"
	.4byte gUnk_08DD7EA9
	.incbin "assets/sounds/gUnk_08DD7F3D_2.bin"
bgmTempleOfDroplets_track2:: @ 08DD7F96
	.incbin "assets/sounds/bgmTempleOfDroplets_track2.bin"
gUnk_08DD7FA0:: @ 08DD7FA0
	.incbin "assets/sounds/gUnk_08DD7FA0.bin"
gUnk_08DD7FAA:: @ 08DD7FAA
	.incbin "assets/sounds/gUnk_08DD7FAA.bin"
gUnk_08DD7FBA:: @ 08DD7FBA
	.incbin "assets/sounds/gUnk_08DD7FBA.bin"
	.4byte gUnk_08DD7FAA
	.incbin "assets/sounds/gUnk_08DD7FBA_1.bin"
gUnk_08DD8005:: @ 08DD8005
	.incbin "assets/sounds/gUnk_08DD8005.bin"
	.4byte gUnk_08DD8005
	.incbin "assets/sounds/gUnk_08DD8005_1.bin"
	.4byte gUnk_08DD7FAA
	.incbin "assets/sounds/gUnk_08DD8005_2.bin"
	.4byte gUnk_08DD7FBA
	.incbin "assets/sounds/gUnk_08DD8005_3.bin"
	.4byte gUnk_08DD7FAA
	.incbin "assets/sounds/gUnk_08DD8005_4.bin"
gUnk_08DD80C6:: @ 08DD80C6
	.incbin "assets/sounds/gUnk_08DD80C6.bin"
	.4byte gUnk_08DD8005
	.incbin "assets/sounds/gUnk_08DD80C6_1.bin"
	.4byte gUnk_08DD80C6
	.incbin "assets/sounds/gUnk_08DD80C6_2.bin"
	.4byte gUnk_08DD8005
	.incbin "assets/sounds/gUnk_08DD80C6_3.bin"
	.4byte gUnk_08DD7FA0
	.incbin "assets/sounds/gUnk_08DD80C6_4.bin"
bgmTempleOfDroplets_track3:: @ 08DD80FA
	.incbin "assets/sounds/bgmTempleOfDroplets_track3.bin"
gUnk_08DD8101:: @ 08DD8101
	.incbin "assets/sounds/gUnk_08DD8101.bin"
gUnk_08DD8121:: @ 08DD8121
	.incbin "assets/sounds/gUnk_08DD8121.bin"
	.4byte gUnk_08DD8121
	.incbin "assets/sounds/gUnk_08DD8121_1.bin"
gUnk_08DD8222:: @ 08DD8222
	.incbin "assets/sounds/gUnk_08DD8222.bin"
	.4byte gUnk_08DD8222
	.incbin "assets/sounds/gUnk_08DD8222_1.bin"
	.4byte gUnk_08DD8101
	.incbin "assets/sounds/gUnk_08DD8222_2.bin"
bgmTempleOfDroplets_track4:: @ 08DD82D6
	.incbin "assets/sounds/bgmTempleOfDroplets_track4.bin"
gUnk_08DD82DD:: @ 08DD82DD
	.incbin "assets/sounds/gUnk_08DD82DD.bin"
	.4byte gUnk_08DD82DD
	.incbin "assets/sounds/gUnk_08DD82DD_1.bin"
bgmTempleOfDroplets_track5:: @ 08DD82F0
	.incbin "assets/sounds/bgmTempleOfDroplets_track5.bin"
gUnk_08DD82F7:: @ 08DD82F7
	.incbin "assets/sounds/gUnk_08DD82F7.bin"
gUnk_08DD82FB:: @ 08DD82FB
	.incbin "assets/sounds/gUnk_08DD82FB.bin"
	.4byte gUnk_08DD82FB
	.incbin "assets/sounds/gUnk_08DD82FB_1.bin"
gUnk_08DD83A6:: @ 08DD83A6
	.incbin "assets/sounds/gUnk_08DD83A6.bin"
	.4byte gUnk_08DD83A6
	.incbin "assets/sounds/gUnk_08DD83A6_1.bin"
	.4byte gUnk_08DD82F7
	.incbin "assets/sounds/gUnk_08DD83A6_2.bin"
bgmTempleOfDroplets:: @ 08DD83CC
	sound_header 6 0 0 0xbc gUnk_08A08810 bgmTempleOfDroplets_track0 bgmTempleOfDroplets_track1 bgmTempleOfDroplets_track2 bgmTempleOfDroplets_track3 bgmTempleOfDroplets_track4 bgmTempleOfDroplets_track5

bgmPalaceOfWinds_track0:: @ 08DD83EC
	.incbin "assets/sounds/bgmPalaceOfWinds_track0.bin"
gUnk_08DD8441:: @ 08DD8441
	.incbin "assets/sounds/gUnk_08DD8441.bin"
	.4byte gUnk_08DD8441
	.incbin "assets/sounds/gUnk_08DD8441_1.bin"
bgmPalaceOfWinds_track1:: @ 08DD8469
	.incbin "assets/sounds/bgmPalaceOfWinds_track1.bin"
gUnk_08DD8474:: @ 08DD8474
	.incbin "assets/sounds/gUnk_08DD8474.bin"
gUnk_08DD8493:: @ 08DD8493
	.incbin "assets/sounds/gUnk_08DD8493.bin"
	.4byte gUnk_08DD8474
	.incbin "assets/sounds/gUnk_08DD8493_1.bin"
	.4byte gUnk_08DD8493
	.incbin "assets/sounds/gUnk_08DD8493_2.bin"
gUnk_08DD84D4:: @ 08DD84D4
	.incbin "assets/sounds/gUnk_08DD84D4.bin"
	.4byte gUnk_08DD84D4
	.incbin "assets/sounds/gUnk_08DD84D4_1.bin"
gUnk_08DD8570:: @ 08DD8570
	.incbin "assets/sounds/gUnk_08DD8570.bin"
	.4byte gUnk_08DD8570
	.incbin "assets/sounds/gUnk_08DD8570_1.bin"
gUnk_08DD85EC:: @ 08DD85EC
	.incbin "assets/sounds/gUnk_08DD85EC.bin"
	.4byte gUnk_08DD85EC
	.incbin "assets/sounds/gUnk_08DD85EC_1.bin"
bgmPalaceOfWinds_track2:: @ 08DD86C1
	.incbin "assets/sounds/bgmPalaceOfWinds_track2.bin"
gUnk_08DD8708:: @ 08DD8708
	.incbin "assets/sounds/gUnk_08DD8708.bin"
	.4byte gUnk_08DD8708
	.incbin "assets/sounds/gUnk_08DD8708_1.bin"
gUnk_08DD87A6:: @ 08DD87A6
	.incbin "assets/sounds/gUnk_08DD87A6.bin"
	.4byte gUnk_08DD87A6
	.incbin "assets/sounds/gUnk_08DD87A6_1.bin"
gUnk_08DD8845:: @ 08DD8845
	.incbin "assets/sounds/gUnk_08DD8845.bin"
	.4byte gUnk_08DD8845
	.incbin "assets/sounds/gUnk_08DD8845_1.bin"
bgmPalaceOfWinds_track3:: @ 08DD88C4
	.incbin "assets/sounds/bgmPalaceOfWinds_track3.bin"
gUnk_08DD88FF:: @ 08DD88FF
	.incbin "assets/sounds/gUnk_08DD88FF.bin"
gUnk_08DD8907:: @ 08DD8907
	.incbin "assets/sounds/gUnk_08DD8907.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_1.bin"
	.4byte gUnk_08DD8907
	.incbin "assets/sounds/gUnk_08DD8907_2.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_3.bin"
	.4byte gUnk_08DD8907
	.incbin "assets/sounds/gUnk_08DD8907_4.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_5.bin"
	.4byte gUnk_08DD8907
	.incbin "assets/sounds/gUnk_08DD8907_6.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_7.bin"
	.4byte gUnk_08DD8907
	.incbin "assets/sounds/gUnk_08DD8907_8.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_9.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_10.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_11.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_12.bin"
	.4byte gUnk_08DD8907
	.incbin "assets/sounds/gUnk_08DD8907_13.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_14.bin"
	.4byte gUnk_08DD8907
	.incbin "assets/sounds/gUnk_08DD8907_15.bin"
	.4byte gUnk_08DD88FF
	.incbin "assets/sounds/gUnk_08DD8907_16.bin"
gUnk_08DD89C9:: @ 08DD89C9
	.incbin "assets/sounds/gUnk_08DD89C9.bin"
gUnk_08DD8A37:: @ 08DD8A37
	.incbin "assets/sounds/gUnk_08DD8A37.bin"
	.4byte gUnk_08DD8A37
	.incbin "assets/sounds/gUnk_08DD8A37_1.bin"
	.4byte gUnk_08DD89C9
	.incbin "assets/sounds/gUnk_08DD8A37_2.bin"
bgmPalaceOfWinds_track4:: @ 08DD8ABD
	.incbin "assets/sounds/bgmPalaceOfWinds_track4.bin"
gUnk_08DD8AC6:: @ 08DD8AC6
	.incbin "assets/sounds/gUnk_08DD8AC6.bin"
gUnk_08DD8AD4:: @ 08DD8AD4
	.incbin "assets/sounds/gUnk_08DD8AD4.bin"
	.4byte gUnk_08DD8AC6
	.incbin "assets/sounds/gUnk_08DD8AD4_1.bin"
	.4byte gUnk_08DD8AD4
	.incbin "assets/sounds/gUnk_08DD8AD4_2.bin"
	.4byte gUnk_08DD8AC6
	.incbin "assets/sounds/gUnk_08DD8AD4_3.bin"
	.4byte gUnk_08DD8AD4
	.incbin "assets/sounds/gUnk_08DD8AD4_4.bin"
	.4byte gUnk_08DD8AC6
	.incbin "assets/sounds/gUnk_08DD8AD4_5.bin"
	.4byte gUnk_08DD8AD4
	.incbin "assets/sounds/gUnk_08DD8AD4_6.bin"
	.4byte gUnk_08DD8AC6
	.incbin "assets/sounds/gUnk_08DD8AD4_7.bin"
	.4byte gUnk_08DD8AD4
	.incbin "assets/sounds/gUnk_08DD8AD4_8.bin"
	.4byte gUnk_08DD8AC6
	.incbin "assets/sounds/gUnk_08DD8AD4_9.bin"
	.4byte gUnk_08DD8AD4
	.incbin "assets/sounds/gUnk_08DD8AD4_10.bin"
	.4byte gUnk_08DD8AC6
	.incbin "assets/sounds/gUnk_08DD8AD4_11.bin"
	.4byte gUnk_08DD8AD4
	.incbin "assets/sounds/gUnk_08DD8AD4_12.bin"
gUnk_08DD8B71:: @ 08DD8B71
	.incbin "assets/sounds/gUnk_08DD8B71.bin"
	.4byte gUnk_08DD8B71
	.incbin "assets/sounds/gUnk_08DD8B71_1.bin"
bgmPalaceOfWinds_track5:: @ 08DD8B9B
	.incbin "assets/sounds/bgmPalaceOfWinds_track5.bin"
gUnk_08DD8BB6:: @ 08DD8BB6
	.incbin "assets/sounds/gUnk_08DD8BB6.bin"
	.4byte gUnk_08DD8BB6
	.incbin "assets/sounds/gUnk_08DD8BB6_1.bin"
bgmPalaceOfWinds_track6:: @ 08DD8BC0
	.incbin "assets/sounds/bgmPalaceOfWinds_track6.bin"
gUnk_08DD8BD8:: @ 08DD8BD8
	.incbin "assets/sounds/gUnk_08DD8BD8.bin"
gUnk_08DD8BE8:: @ 08DD8BE8
	.incbin "assets/sounds/gUnk_08DD8BE8.bin"
gUnk_08DD8C0D:: @ 08DD8C0D
	.incbin "assets/sounds/gUnk_08DD8C0D.bin"
gUnk_08DD8C1F:: @ 08DD8C1F
	.incbin "assets/sounds/gUnk_08DD8C1F.bin"
	.4byte gUnk_08DD8BD8
	.incbin "assets/sounds/gUnk_08DD8C1F_1.bin"
	.4byte gUnk_08DD8BE8
	.incbin "assets/sounds/gUnk_08DD8C1F_2.bin"
	.4byte gUnk_08DD8C0D
	.incbin "assets/sounds/gUnk_08DD8C1F_3.bin"
	.4byte gUnk_08DD8C1F
	.incbin "assets/sounds/gUnk_08DD8C1F_4.bin"
	.4byte gUnk_08DD8BD8
	.incbin "assets/sounds/gUnk_08DD8C1F_5.bin"
	.4byte gUnk_08DD8BE8
	.incbin "assets/sounds/gUnk_08DD8C1F_6.bin"
	.4byte gUnk_08DD8C0D
	.incbin "assets/sounds/gUnk_08DD8C1F_7.bin"
	.4byte gUnk_08DD8C1F
	.incbin "assets/sounds/gUnk_08DD8C1F_8.bin"
	.4byte gUnk_08DD8BD8
	.incbin "assets/sounds/gUnk_08DD8C1F_9.bin"
	.4byte gUnk_08DD8BE8
	.incbin "assets/sounds/gUnk_08DD8C1F_10.bin"
	.4byte gUnk_08DD8C0D
	.incbin "assets/sounds/gUnk_08DD8C1F_11.bin"
	.4byte gUnk_08DD8C1F
	.incbin "assets/sounds/gUnk_08DD8C1F_12.bin"
gUnk_08DD8C9C:: @ 08DD8C9C
	.incbin "assets/sounds/gUnk_08DD8C9C.bin"
gUnk_08DD8CAC:: @ 08DD8CAC
	.incbin "assets/sounds/gUnk_08DD8CAC.bin"
gUnk_08DD8CC2:: @ 08DD8CC2
	.incbin "assets/sounds/gUnk_08DD8CC2.bin"
	.4byte gUnk_08DD8CAC
	.incbin "assets/sounds/gUnk_08DD8CC2_1.bin"
	.4byte gUnk_08DD8C9C
gUnk_08DD8CDB:: @ 08DD8CDB
	.incbin "assets/sounds/gUnk_08DD8CDB.bin"
	.4byte gUnk_08DD8C9C
	.incbin "assets/sounds/gUnk_08DD8CDB_1.bin"
	.4byte gUnk_08DD8CAC
	.incbin "assets/sounds/gUnk_08DD8CDB_2.bin"
	.4byte gUnk_08DD8C9C
	.incbin "assets/sounds/gUnk_08DD8CDB_3.bin"
	.4byte gUnk_08DD8CDB
	.incbin "assets/sounds/gUnk_08DD8CDB_4.bin"
	.4byte gUnk_08DD8C9C
	.incbin "assets/sounds/gUnk_08DD8CDB_5.bin"
	.4byte gUnk_08DD8CAC
	.incbin "assets/sounds/gUnk_08DD8CDB_6.bin"
	.4byte gUnk_08DD8C9C
	.incbin "assets/sounds/gUnk_08DD8CDB_7.bin"
	.4byte gUnk_08DD8CDB
	.incbin "assets/sounds/gUnk_08DD8CDB_8.bin"
	.4byte gUnk_08DD8CC2
	.incbin "assets/sounds/gUnk_08DD8CDB_9.bin"
bgmPalaceOfWinds_track7:: @ 08DD8D7E
	.incbin "assets/sounds/bgmPalaceOfWinds_track7.bin"
gUnk_08DD8DA2:: @ 08DD8DA2
	.incbin "assets/sounds/gUnk_08DD8DA2.bin"
gUnk_08DD8DC6:: @ 08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8DC6.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8DC6_1.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8DC6_2.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8DC6_3.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8DC6_4.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8DC6_5.bin"
	.4byte gUnk_08DD8DC6
gUnk_08DD8E0A:: @ 08DD8E0A
	.incbin "assets/sounds/gUnk_08DD8E0A.bin"
	.4byte gUnk_08DD8E0A
	.incbin "assets/sounds/gUnk_08DD8E0A_1.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8E0A_2.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8E0A_3.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8E0A_4.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8E0A_5.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8E0A_6.bin"
	.4byte gUnk_08DD8DC6
	.incbin "assets/sounds/gUnk_08DD8E0A_7.bin"
	.4byte gUnk_08DD8DA2
	.incbin "assets/sounds/gUnk_08DD8E0A_8.bin"
bgmPalaceOfWinds:: @ 08DD8E5C
	sound_header 8 0 0 0xa8 gUnk_08A08E10 bgmPalaceOfWinds_track0 bgmPalaceOfWinds_track1 bgmPalaceOfWinds_track2 bgmPalaceOfWinds_track3 bgmPalaceOfWinds_track4 bgmPalaceOfWinds_track5 bgmPalaceOfWinds_track6 bgmPalaceOfWinds_track7

bgmEzloStory_track0:: @ 08DD8E84
	.incbin "assets/sounds/bgmEzloStory_track0.bin"
gUnk_08DD8E8F:: @ 08DD8E8F
	.incbin "assets/sounds/gUnk_08DD8E8F.bin"
	.4byte gUnk_08DD8E8F
	.incbin "assets/sounds/gUnk_08DD8E8F_1.bin"
bgmEzloStory_track1:: @ 08DD8ED0
	.incbin "assets/sounds/bgmEzloStory_track1.bin"
gUnk_08DD8ED7:: @ 08DD8ED7
	.incbin "assets/sounds/gUnk_08DD8ED7.bin"
	.4byte gUnk_08DD8ED7
	.incbin "assets/sounds/gUnk_08DD8ED7_1.bin"
bgmEzloStory_track2:: @ 08DD8EF7
	.incbin "assets/sounds/bgmEzloStory_track2.bin"
gUnk_08DD8F01:: @ 08DD8F01
	.incbin "assets/sounds/gUnk_08DD8F01.bin"
gUnk_08DD8F26:: @ 08DD8F26
	.incbin "assets/sounds/gUnk_08DD8F26.bin"
	.4byte gUnk_08DD8F26
	.incbin "assets/sounds/gUnk_08DD8F26_1.bin"
	.4byte gUnk_08DD8F01
	.incbin "assets/sounds/gUnk_08DD8F26_2.bin"
bgmEzloStory_track3:: @ 08DD8F4F
	.incbin "assets/sounds/bgmEzloStory_track3.bin"
gUnk_08DD8F54:: @ 08DD8F54
	.incbin "assets/sounds/gUnk_08DD8F54.bin"
gUnk_08DD8F6A:: @ 08DD8F6A
	.incbin "assets/sounds/gUnk_08DD8F6A.bin"
gUnk_08DD8F81:: @ 08DD8F81
	.incbin "assets/sounds/gUnk_08DD8F81.bin"
	.4byte gUnk_08DD8F81
	.incbin "assets/sounds/gUnk_08DD8F81_1.bin"
	.4byte gUnk_08DD8F81
	.incbin "assets/sounds/gUnk_08DD8F81_2.bin"
	.4byte gUnk_08DD8F6A
gUnk_08DD8FA7:: @ 08DD8FA7
	.incbin "assets/sounds/gUnk_08DD8FA7.bin"
	.4byte gUnk_08DD8FA7
	.incbin "assets/sounds/gUnk_08DD8FA7_1.bin"
	.4byte gUnk_08DD8FA7
	.incbin "assets/sounds/gUnk_08DD8FA7_2.bin"
	.4byte gUnk_08DD8F54
	.incbin "assets/sounds/gUnk_08DD8FA7_3.bin"
bgmEzloStory_track4:: @ 08DD9004
	.incbin "assets/sounds/bgmEzloStory_track4.bin"
gUnk_08DD900B:: @ 08DD900B
	.incbin "assets/sounds/gUnk_08DD900B.bin"
	.4byte gUnk_08DD900B
	.incbin "assets/sounds/gUnk_08DD900B_1.bin"
bgmEzloStory:: @ 08DD902C
	sound_header 5 0 0 0xa8 gUnk_08A09410 bgmEzloStory_track0 bgmEzloStory_track1 bgmEzloStory_track2 bgmEzloStory_track3 bgmEzloStory_track4

bgmRoyalCrypt_track0:: @ 08DD9048
	.incbin "assets/sounds/bgmRoyalCrypt_track0.bin"
gUnk_08DD9093:: @ 08DD9093
	.incbin "assets/sounds/gUnk_08DD9093.bin"
	.4byte gUnk_08DD9093
	.incbin "assets/sounds/gUnk_08DD9093_1.bin"
bgmRoyalCrypt_track1:: @ 08DD9132
	.incbin "assets/sounds/bgmRoyalCrypt_track1.bin"
gUnk_08DD913C:: @ 08DD913C
	.incbin "assets/sounds/gUnk_08DD913C.bin"
gUnk_08DD915E:: @ 08DD915E
	.incbin "assets/sounds/gUnk_08DD915E.bin"
	.4byte gUnk_08DD915E
	.incbin "assets/sounds/gUnk_08DD915E_1.bin"
	.4byte gUnk_08DD915E
	.incbin "assets/sounds/gUnk_08DD915E_2.bin"
	.4byte gUnk_08DD913C
	.incbin "assets/sounds/gUnk_08DD915E_3.bin"
bgmRoyalCrypt_track2:: @ 08DD91C9
	.incbin "assets/sounds/bgmRoyalCrypt_track2.bin"
gUnk_08DD9225:: @ 08DD9225
	.incbin "assets/sounds/gUnk_08DD9225.bin"
	.4byte gUnk_08DD9225
	.incbin "assets/sounds/gUnk_08DD9225_1.bin"
bgmRoyalCrypt_track3:: @ 08DD9422
	.incbin "assets/sounds/bgmRoyalCrypt_track3.bin"
gUnk_08DD9472:: @ 08DD9472
	.incbin "assets/sounds/gUnk_08DD9472.bin"
	.4byte gUnk_08DD9472
	.incbin "assets/sounds/gUnk_08DD9472_1.bin"
bgmRoyalCrypt_track4:: @ 08DD954E
	.incbin "assets/sounds/bgmRoyalCrypt_track4.bin"
gUnk_08DD955A:: @ 08DD955A
	.incbin "assets/sounds/gUnk_08DD955A.bin"
	.4byte gUnk_08DD955A
	.incbin "assets/sounds/gUnk_08DD955A_1.bin"
bgmRoyalCrypt:: @ 08DD9604
	sound_header 5 0 0 0xbc gUnk_08A096D4 bgmRoyalCrypt_track0 bgmRoyalCrypt_track1 bgmRoyalCrypt_track2 bgmRoyalCrypt_track3 bgmRoyalCrypt_track4

bgmElementalSanctuary_track0:: @ 08DD9620
	.incbin "assets/sounds/bgmElementalSanctuary_track0.bin"
gUnk_08DD968B:: @ 08DD968B
	.incbin "assets/sounds/gUnk_08DD968B.bin"
gUnk_08DD96BC:: @ 08DD96BC
	.incbin "assets/sounds/gUnk_08DD96BC.bin"
gUnk_08DD96EE:: @ 08DD96EE
	.incbin "assets/sounds/gUnk_08DD96EE.bin"
	.4byte gUnk_08DD96BC
	.incbin "assets/sounds/gUnk_08DD96EE_1.bin"
	.4byte gUnk_08DD96EE
	.incbin "assets/sounds/gUnk_08DD96EE_2.bin"
	.4byte gUnk_08DD96BC
	.incbin "assets/sounds/gUnk_08DD96EE_3.bin"
	.4byte gUnk_08DD96EE
	.incbin "assets/sounds/gUnk_08DD96EE_4.bin"
	.4byte gUnk_08DD96BC
	.incbin "assets/sounds/gUnk_08DD96EE_5.bin"
	.4byte gUnk_08DD96EE
	.incbin "assets/sounds/gUnk_08DD96EE_6.bin"
	.4byte gUnk_08DD96EE
	.incbin "assets/sounds/gUnk_08DD96EE_7.bin"
	.4byte gUnk_08DD96BC
	.incbin "assets/sounds/gUnk_08DD96EE_8.bin"
	.4byte gUnk_08DD968B
	.incbin "assets/sounds/gUnk_08DD96EE_9.bin"
bgmElementalSanctuary_track1:: @ 08DD977F
	.incbin "assets/sounds/bgmElementalSanctuary_track1.bin"
gUnk_08DD9788:: @ 08DD9788
	.incbin "assets/sounds/gUnk_08DD9788.bin"
gUnk_08DD978A:: @ 08DD978A
	.incbin "assets/sounds/gUnk_08DD978A.bin"
gUnk_08DD97B4:: @ 08DD97B4
	.incbin "assets/sounds/gUnk_08DD97B4.bin"
gUnk_08DD97DE:: @ 08DD97DE
	.incbin "assets/sounds/gUnk_08DD97DE.bin"
	.4byte gUnk_08DD978A
	.incbin "assets/sounds/gUnk_08DD97DE_1.bin"
	.4byte gUnk_08DD97B4
	.incbin "assets/sounds/gUnk_08DD97DE_2.bin"
	.4byte gUnk_08DD97DE
	.incbin "assets/sounds/gUnk_08DD97DE_3.bin"
	.4byte gUnk_08DD9788
	.incbin "assets/sounds/gUnk_08DD97DE_4.bin"
bgmElementalSanctuary_track2:: @ 08DD9870
	.incbin "assets/sounds/bgmElementalSanctuary_track2.bin"
gUnk_08DD9879:: @ 08DD9879
	.incbin "assets/sounds/gUnk_08DD9879.bin"
gUnk_08DD987B:: @ 08DD987B
	.incbin "assets/sounds/gUnk_08DD987B.bin"
gUnk_08DD9891:: @ 08DD9891
	.incbin "assets/sounds/gUnk_08DD9891.bin"
	.4byte gUnk_08DD9891
	.incbin "assets/sounds/gUnk_08DD9891_1.bin"
	.4byte gUnk_08DD987B
	.incbin "assets/sounds/gUnk_08DD9891_2.bin"
	.4byte gUnk_08DD9891
	.incbin "assets/sounds/gUnk_08DD9891_3.bin"
	.4byte gUnk_08DD9879
	.incbin "assets/sounds/gUnk_08DD9891_4.bin"
bgmElementalSanctuary_track3:: @ 08DD9904
	.incbin "assets/sounds/bgmElementalSanctuary_track3.bin"
gUnk_08DD990D:: @ 08DD990D
	.incbin "assets/sounds/gUnk_08DD990D.bin"
gUnk_08DD990F:: @ 08DD990F
	.incbin "assets/sounds/gUnk_08DD990F.bin"
gUnk_08DD9925:: @ 08DD9925
	.incbin "assets/sounds/gUnk_08DD9925.bin"
	.4byte gUnk_08DD9925
	.incbin "assets/sounds/gUnk_08DD9925_1.bin"
	.4byte gUnk_08DD990F
	.incbin "assets/sounds/gUnk_08DD9925_2.bin"
	.4byte gUnk_08DD9925
	.incbin "assets/sounds/gUnk_08DD9925_3.bin"
	.4byte gUnk_08DD990D
	.incbin "assets/sounds/gUnk_08DD9925_4.bin"
bgmElementalSanctuary_track4:: @ 08DD9998
	.incbin "assets/sounds/bgmElementalSanctuary_track4.bin"
gUnk_08DD9A04:: @ 08DD9A04
	.incbin "assets/sounds/gUnk_08DD9A04.bin"
gUnk_08DD9A32:: @ 08DD9A32
	.incbin "assets/sounds/gUnk_08DD9A32.bin"
	.4byte gUnk_08DD9A32
	.incbin "assets/sounds/gUnk_08DD9A32_1.bin"
	.4byte gUnk_08DD9A04
	.incbin "assets/sounds/gUnk_08DD9A32_2.bin"
bgmElementalSanctuary:: @ 08DD9AAC
	sound_header 5 0 0 0xbc gUnk_08A09CD4 bgmElementalSanctuary_track0 bgmElementalSanctuary_track1 bgmElementalSanctuary_track2 bgmElementalSanctuary_track3 bgmElementalSanctuary_track4

bgmFightTheme_track0:: @ 08DD9AC8
	.incbin "assets/sounds/bgmFightTheme_track0.bin"
gUnk_08DD9AE3:: @ 08DD9AE3
	.incbin "assets/sounds/gUnk_08DD9AE3.bin"
gUnk_08DD9AF9:: @ 08DD9AF9
	.incbin "assets/sounds/gUnk_08DD9AF9.bin"
gUnk_08DD9B0E:: @ 08DD9B0E
	.incbin "assets/sounds/gUnk_08DD9B0E.bin"
	.4byte gUnk_08DD9B0E
	.incbin "assets/sounds/gUnk_08DD9B0E_1.bin"
	.4byte gUnk_08DD9AF9
	.incbin "assets/sounds/gUnk_08DD9B0E_2.bin"
	.4byte gUnk_08DD9AF9
	.incbin "assets/sounds/gUnk_08DD9B0E_3.bin"
	.4byte gUnk_08DD9B0E
	.incbin "assets/sounds/gUnk_08DD9B0E_4.bin"
	.4byte gUnk_08DD9B0E
	.incbin "assets/sounds/gUnk_08DD9B0E_5.bin"
gUnk_08DD9B49:: @ 08DD9B49
	.incbin "assets/sounds/gUnk_08DD9B49.bin"
gUnk_08DD9B66:: @ 08DD9B66
	.incbin "assets/sounds/gUnk_08DD9B66.bin"
	.4byte gUnk_08DD9B49
	.incbin "assets/sounds/gUnk_08DD9B66_1.bin"
	.4byte gUnk_08DD9B66
	.incbin "assets/sounds/gUnk_08DD9B66_2.bin"
	.4byte gUnk_08DD9AE3
	.incbin "assets/sounds/gUnk_08DD9B66_3.bin"
bgmFightTheme_track1:: @ 08DD9B8F
	.incbin "assets/sounds/bgmFightTheme_track1.bin"
gUnk_08DD9B9B:: @ 08DD9B9B
	.incbin "assets/sounds/gUnk_08DD9B9B.bin"
gUnk_08DD9BA4:: @ 08DD9BA4
	.incbin "assets/sounds/gUnk_08DD9BA4.bin"
	.4byte gUnk_08DD9BA4
gUnk_08DD9BBE:: @ 08DD9BBE
	.incbin "assets/sounds/gUnk_08DD9BBE.bin"
	.4byte gUnk_08DD9BBE
	.incbin "assets/sounds/gUnk_08DD9BBE_1.bin"
gUnk_08DD9BE3:: @ 08DD9BE3
	.incbin "assets/sounds/gUnk_08DD9BE3.bin"
gUnk_08DD9C00:: @ 08DD9C00
	.incbin "assets/sounds/gUnk_08DD9C00.bin"
	.4byte gUnk_08DD9BE3
	.incbin "assets/sounds/gUnk_08DD9C00_1.bin"
	.4byte gUnk_08DD9C00
	.incbin "assets/sounds/gUnk_08DD9C00_2.bin"
	.4byte gUnk_08DD9B9B
	.incbin "assets/sounds/gUnk_08DD9C00_3.bin"
bgmFightTheme_track2:: @ 08DD9C24
	.incbin "assets/sounds/bgmFightTheme_track2.bin"
gUnk_08DD9C40:: @ 08DD9C40
	.incbin "assets/sounds/gUnk_08DD9C40.bin"
gUnk_08DD9C55:: @ 08DD9C55
	.incbin "assets/sounds/gUnk_08DD9C55.bin"
gUnk_08DD9C6B:: @ 08DD9C6B
	.incbin "assets/sounds/gUnk_08DD9C6B.bin"
	.4byte gUnk_08DD9C6B
	.incbin "assets/sounds/gUnk_08DD9C6B_1.bin"
	.4byte gUnk_08DD9C55
	.incbin "assets/sounds/gUnk_08DD9C6B_2.bin"
	.4byte gUnk_08DD9C55
	.incbin "assets/sounds/gUnk_08DD9C6B_3.bin"
	.4byte gUnk_08DD9C6B
	.incbin "assets/sounds/gUnk_08DD9C6B_4.bin"
	.4byte gUnk_08DD9C6B
gUnk_08DD9C9A:: @ 08DD9C9A
	.incbin "assets/sounds/gUnk_08DD9C9A.bin"
	.4byte gUnk_08DD9C9A
gUnk_08DD9CB5:: @ 08DD9CB5
	.incbin "assets/sounds/gUnk_08DD9CB5.bin"
	.4byte gUnk_08DD9CB5
	.incbin "assets/sounds/gUnk_08DD9CB5_1.bin"
	.4byte gUnk_08DD9C9A
	.incbin "assets/sounds/gUnk_08DD9CB5_2.bin"
	.4byte gUnk_08DD9C9A
	.incbin "assets/sounds/gUnk_08DD9CB5_3.bin"
	.4byte gUnk_08DD9CB5
	.incbin "assets/sounds/gUnk_08DD9CB5_4.bin"
	.4byte gUnk_08DD9CB5
	.incbin "assets/sounds/gUnk_08DD9CB5_5.bin"
	.4byte gUnk_08DD9C40
	.incbin "assets/sounds/gUnk_08DD9CB5_6.bin"
bgmFightTheme_track3:: @ 08DD9CEA
	.incbin "assets/sounds/bgmFightTheme_track3.bin"
gUnk_08DD9D05:: @ 08DD9D05
	.incbin "assets/sounds/gUnk_08DD9D05.bin"
gUnk_08DD9D0D:: @ 08DD9D0D
	.incbin "assets/sounds/gUnk_08DD9D0D.bin"
gUnk_08DD9D16:: @ 08DD9D16
	.incbin "assets/sounds/gUnk_08DD9D16.bin"
	.4byte gUnk_08DD9D16
	.incbin "assets/sounds/gUnk_08DD9D16_1.bin"
	.4byte gUnk_08DD9D0D
	.incbin "assets/sounds/gUnk_08DD9D16_2.bin"
	.4byte gUnk_08DD9D0D
	.incbin "assets/sounds/gUnk_08DD9D16_3.bin"
	.4byte gUnk_08DD9D16
	.incbin "assets/sounds/gUnk_08DD9D16_4.bin"
	.4byte gUnk_08DD9D16
gUnk_08DD9D38:: @ 08DD9D38
	.incbin "assets/sounds/gUnk_08DD9D38.bin"
	.4byte gUnk_08DD9D38
gUnk_08DD9D4F:: @ 08DD9D4F
	.incbin "assets/sounds/gUnk_08DD9D4F.bin"
	.4byte gUnk_08DD9D4F
	.incbin "assets/sounds/gUnk_08DD9D4F_1.bin"
	.4byte gUnk_08DD9D38
	.incbin "assets/sounds/gUnk_08DD9D4F_2.bin"
	.4byte gUnk_08DD9D38
	.incbin "assets/sounds/gUnk_08DD9D4F_3.bin"
	.4byte gUnk_08DD9D4F
	.incbin "assets/sounds/gUnk_08DD9D4F_4.bin"
	.4byte gUnk_08DD9D4F
	.incbin "assets/sounds/gUnk_08DD9D4F_5.bin"
	.4byte gUnk_08DD9D05
	.incbin "assets/sounds/gUnk_08DD9D4F_6.bin"
bgmFightTheme_track4:: @ 08DD9D80
	.incbin "assets/sounds/bgmFightTheme_track4.bin"
gUnk_08DD9D9F:: @ 08DD9D9F
	.incbin "assets/sounds/gUnk_08DD9D9F.bin"
gUnk_08DD9DA7:: @ 08DD9DA7
	.incbin "assets/sounds/gUnk_08DD9DA7.bin"
gUnk_08DD9DB1:: @ 08DD9DB1
	.incbin "assets/sounds/gUnk_08DD9DB1.bin"
	.4byte gUnk_08DD9DB1
	.incbin "assets/sounds/gUnk_08DD9DB1_1.bin"
	.4byte gUnk_08DD9DA7
	.incbin "assets/sounds/gUnk_08DD9DB1_2.bin"
	.4byte gUnk_08DD9DA7
	.incbin "assets/sounds/gUnk_08DD9DB1_3.bin"
	.4byte gUnk_08DD9DB1
	.incbin "assets/sounds/gUnk_08DD9DB1_4.bin"
	.4byte gUnk_08DD9DB1
gUnk_08DD9DD4:: @ 08DD9DD4
	.incbin "assets/sounds/gUnk_08DD9DD4.bin"
	.4byte gUnk_08DD9DD4
gUnk_08DD9DEC:: @ 08DD9DEC
	.incbin "assets/sounds/gUnk_08DD9DEC.bin"
	.4byte gUnk_08DD9DEC
	.incbin "assets/sounds/gUnk_08DD9DEC_1.bin"
	.4byte gUnk_08DD9DD4
	.incbin "assets/sounds/gUnk_08DD9DEC_2.bin"
	.4byte gUnk_08DD9DD4
	.incbin "assets/sounds/gUnk_08DD9DEC_3.bin"
	.4byte gUnk_08DD9DEC
	.incbin "assets/sounds/gUnk_08DD9DEC_4.bin"
	.4byte gUnk_08DD9DEC
	.incbin "assets/sounds/gUnk_08DD9DEC_5.bin"
	.4byte gUnk_08DD9D9F
	.incbin "assets/sounds/gUnk_08DD9DEC_6.bin"
bgmFightTheme_track5:: @ 08DD9E1F
	.incbin "assets/sounds/bgmFightTheme_track5.bin"
gUnk_08DD9E2A:: @ 08DD9E2A
	.incbin "assets/sounds/gUnk_08DD9E2A.bin"
gUnk_08DD9E40:: @ 08DD9E40
	.incbin "assets/sounds/gUnk_08DD9E40.bin"
gUnk_08DD9E58:: @ 08DD9E58
	.incbin "assets/sounds/gUnk_08DD9E58.bin"
	.4byte gUnk_08DD9E58
	.incbin "assets/sounds/gUnk_08DD9E58_1.bin"
	.4byte gUnk_08DD9E40
	.incbin "assets/sounds/gUnk_08DD9E58_2.bin"
	.4byte gUnk_08DD9E40
	.incbin "assets/sounds/gUnk_08DD9E58_3.bin"
	.4byte gUnk_08DD9E58
	.incbin "assets/sounds/gUnk_08DD9E58_4.bin"
	.4byte gUnk_08DD9E58
gUnk_08DD9E89:: @ 08DD9E89
	.incbin "assets/sounds/gUnk_08DD9E89.bin"
	.4byte gUnk_08DD9E89
gUnk_08DD9EA5:: @ 08DD9EA5
	.incbin "assets/sounds/gUnk_08DD9EA5.bin"
	.4byte gUnk_08DD9EA5
	.incbin "assets/sounds/gUnk_08DD9EA5_1.bin"
	.4byte gUnk_08DD9E89
	.incbin "assets/sounds/gUnk_08DD9EA5_2.bin"
	.4byte gUnk_08DD9E89
	.incbin "assets/sounds/gUnk_08DD9EA5_3.bin"
	.4byte gUnk_08DD9EA5
	.incbin "assets/sounds/gUnk_08DD9EA5_4.bin"
	.4byte gUnk_08DD9EA5
	.incbin "assets/sounds/gUnk_08DD9EA5_5.bin"
	.4byte gUnk_08DD9E2A
	.incbin "assets/sounds/gUnk_08DD9EA5_6.bin"
bgmFightTheme_track6:: @ 08DD9EDC
	.incbin "assets/sounds/bgmFightTheme_track6.bin"
gUnk_08DD9F13:: @ 08DD9F13
	.incbin "assets/sounds/gUnk_08DD9F13.bin"
gUnk_08DD9F29:: @ 08DD9F29
	.incbin "assets/sounds/gUnk_08DD9F29.bin"
	.4byte gUnk_08DD9F13
	.incbin "assets/sounds/gUnk_08DD9F29_1.bin"
	.4byte gUnk_08DD9F29
	.incbin "assets/sounds/gUnk_08DD9F29_2.bin"
bgmFightTheme:: @ 08DD9F50
	sound_header 7 0 0 0xa8 gUnk_08A09F44 bgmFightTheme_track0 bgmFightTheme_track1 bgmFightTheme_track2 bgmFightTheme_track3 bgmFightTheme_track4 bgmFightTheme_track5 bgmFightTheme_track6

bgmBossTheme_track0:: @ 08DD9F74
	.incbin "assets/sounds/bgmBossTheme_track0.bin"
gUnk_08DD9F80:: @ 08DD9F80
	.incbin "assets/sounds/gUnk_08DD9F80.bin"
gUnk_08DD9F86:: @ 08DD9F86
	.incbin "assets/sounds/gUnk_08DD9F86.bin"
	.4byte gUnk_08DD9F86
	.incbin "assets/sounds/gUnk_08DD9F86_1.bin"
	.4byte gUnk_08DD9F80
	.incbin "assets/sounds/gUnk_08DD9F86_2.bin"
bgmBossTheme_track1:: @ 08DD9FD7
	.incbin "assets/sounds/bgmBossTheme_track1.bin"
gUnk_08DD9FDB:: @ 08DD9FDB
	.incbin "assets/sounds/gUnk_08DD9FDB.bin"
gUnk_08DDA014:: @ 08DDA014
	.incbin "assets/sounds/gUnk_08DDA014.bin"
	.4byte gUnk_08DDA014
	.incbin "assets/sounds/gUnk_08DDA014_1.bin"
	.4byte gUnk_08DD9FDB
	.incbin "assets/sounds/gUnk_08DDA014_2.bin"
bgmBossTheme_track2:: @ 08DDA078
	.incbin "assets/sounds/bgmBossTheme_track2.bin"
gUnk_08DDA07C:: @ 08DDA07C
	.incbin "assets/sounds/gUnk_08DDA07C.bin"
gUnk_08DDA0A1:: @ 08DDA0A1
	.incbin "assets/sounds/gUnk_08DDA0A1.bin"
	.4byte gUnk_08DDA0A1
	.incbin "assets/sounds/gUnk_08DDA0A1_1.bin"
	.4byte gUnk_08DDA07C
	.incbin "assets/sounds/gUnk_08DDA0A1_2.bin"
bgmBossTheme_track3:: @ 08DDA0B9
	.incbin "assets/sounds/bgmBossTheme_track3.bin"
gUnk_08DDA0D3:: @ 08DDA0D3
	.incbin "assets/sounds/gUnk_08DDA0D3.bin"
gUnk_08DDA0E0:: @ 08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_1.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_2.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_3.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_4.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_5.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_6.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_7.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_8.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_9.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_10.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_11.bin"
	.4byte gUnk_08DDA0E0
	.incbin "assets/sounds/gUnk_08DDA0E0_12.bin"
	.4byte gUnk_08DDA0D3
	.incbin "assets/sounds/gUnk_08DDA0E0_13.bin"
bgmBossTheme_track4:: @ 08DDA130
	.incbin "assets/sounds/bgmBossTheme_track4.bin"
gUnk_08DDA14E:: @ 08DDA14E
	.incbin "assets/sounds/gUnk_08DDA14E.bin"
gUnk_08DDA1AA:: @ 08DDA1AA
	.incbin "assets/sounds/gUnk_08DDA1AA.bin"
gUnk_08DDA1C5:: @ 08DDA1C5
	.incbin "assets/sounds/gUnk_08DDA1C5.bin"
	.4byte gUnk_08DDA1AA
	.incbin "assets/sounds/gUnk_08DDA1C5_1.bin"
	.4byte gUnk_08DDA1C5
gUnk_08DDA1EA:: @ 08DDA1EA
	.incbin "assets/sounds/gUnk_08DDA1EA.bin"
	.4byte gUnk_08DDA1EA
	.incbin "assets/sounds/gUnk_08DDA1EA_1.bin"
	.4byte gUnk_08DDA14E
	.incbin "assets/sounds/gUnk_08DDA1EA_2.bin"
bgmBossTheme_track5:: @ 08DDA20F
	.incbin "assets/sounds/bgmBossTheme_track5.bin"
gUnk_08DDA21A:: @ 08DDA21A
	.incbin "assets/sounds/gUnk_08DDA21A.bin"
gUnk_08DDA240:: @ 08DDA240
	.incbin "assets/sounds/gUnk_08DDA240.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_1.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_2.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_3.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_4.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_5.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_6.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_7.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_8.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_9.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_10.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_11.bin"
	.4byte gUnk_08DDA240
	.incbin "assets/sounds/gUnk_08DDA240_12.bin"
	.4byte gUnk_08DDA21A
	.incbin "assets/sounds/gUnk_08DDA240_13.bin"
bgmBossTheme_track6:: @ 08DDA2A9
	.incbin "assets/sounds/bgmBossTheme_track6.bin"
gUnk_08DDA2B4:: @ 08DDA2B4
	.incbin "assets/sounds/gUnk_08DDA2B4.bin"
gUnk_08DDA2DA:: @ 08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_1.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_2.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_3.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_4.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_5.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_6.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_7.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_8.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_9.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_10.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_11.bin"
	.4byte gUnk_08DDA2DA
	.incbin "assets/sounds/gUnk_08DDA2DA_12.bin"
	.4byte gUnk_08DDA2B4
	.incbin "assets/sounds/gUnk_08DDA2DA_13.bin"
bgmBossTheme_track7:: @ 08DDA345
	.incbin "assets/sounds/bgmBossTheme_track7.bin"
gUnk_08DDA34E:: @ 08DDA34E
	.incbin "assets/sounds/gUnk_08DDA34E.bin"
gUnk_08DDA37F:: @ 08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_1.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_2.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_3.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_4.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_5.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_6.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_7.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_8.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_9.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_10.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_11.bin"
	.4byte gUnk_08DDA37F
	.incbin "assets/sounds/gUnk_08DDA37F_12.bin"
	.4byte gUnk_08DDA34E
	.incbin "assets/sounds/gUnk_08DDA37F_13.bin"
bgmBossTheme:: @ 08DDA3F8
	sound_header 8 0 0 0xa8 gUnk_08A0A544 bgmBossTheme_track0 bgmBossTheme_track1 bgmBossTheme_track2 bgmBossTheme_track3 bgmBossTheme_track4 bgmBossTheme_track5 bgmBossTheme_track6 bgmBossTheme_track7

bgmVaatiReborn_track0:: @ 08DDA420
	.incbin "assets/sounds/bgmVaatiReborn_track0.bin"
gUnk_08DDA42B:: @ 08DDA42B
	.incbin "assets/sounds/gUnk_08DDA42B.bin"
gUnk_08DDA433:: @ 08DDA433
	.incbin "assets/sounds/gUnk_08DDA433.bin"
	.4byte gUnk_08DDA433
	.incbin "assets/sounds/gUnk_08DDA433_1.bin"
	.4byte gUnk_08DDA433
	.incbin "assets/sounds/gUnk_08DDA433_2.bin"
	.4byte gUnk_08DDA433
gUnk_08DDA450:: @ 08DDA450
	.incbin "assets/sounds/gUnk_08DDA450.bin"
gUnk_08DDA45F:: @ 08DDA45F
	.incbin "assets/sounds/gUnk_08DDA45F.bin"
gUnk_08DDA46E:: @ 08DDA46E
	.incbin "assets/sounds/gUnk_08DDA46E.bin"
	.4byte gUnk_08DDA433
	.incbin "assets/sounds/gUnk_08DDA46E_1.bin"
	.4byte gUnk_08DDA433
	.incbin "assets/sounds/gUnk_08DDA46E_2.bin"
	.4byte gUnk_08DDA433
	.incbin "assets/sounds/gUnk_08DDA46E_3.bin"
	.4byte gUnk_08DDA433
	.incbin "assets/sounds/gUnk_08DDA46E_4.bin"
	.4byte gUnk_08DDA450
	.incbin "assets/sounds/gUnk_08DDA46E_5.bin"
	.4byte gUnk_08DDA45F
	.incbin "assets/sounds/gUnk_08DDA46E_6.bin"
	.4byte gUnk_08DDA46E
	.incbin "assets/sounds/gUnk_08DDA46E_7.bin"
	.4byte gUnk_08DDA42B
	.incbin "assets/sounds/gUnk_08DDA46E_8.bin"
bgmVaatiReborn_track1:: @ 08DDA4BF
	.incbin "assets/sounds/bgmVaatiReborn_track1.bin"
gUnk_08DDA4C7:: @ 08DDA4C7
	.incbin "assets/sounds/gUnk_08DDA4C7.bin"
gUnk_08DDA4CE:: @ 08DDA4CE
	.incbin "assets/sounds/gUnk_08DDA4CE.bin"
	.4byte gUnk_08DDA4CE
	.incbin "assets/sounds/gUnk_08DDA4CE_1.bin"
	.4byte gUnk_08DDA4CE
gUnk_08DDA4E2:: @ 08DDA4E2
	.incbin "assets/sounds/gUnk_08DDA4E2.bin"
gUnk_08DDA4EC:: @ 08DDA4EC
	.incbin "assets/sounds/gUnk_08DDA4EC.bin"
gUnk_08DDA4F3:: @ 08DDA4F3
	.incbin "assets/sounds/gUnk_08DDA4F3.bin"
	.4byte gUnk_08DDA4EC
	.incbin "assets/sounds/gUnk_08DDA4F3_1.bin"
	.4byte gUnk_08DDA4CE
	.incbin "assets/sounds/gUnk_08DDA4F3_2.bin"
	.4byte gUnk_08DDA4CE
	.incbin "assets/sounds/gUnk_08DDA4F3_3.bin"
	.4byte gUnk_08DDA4CE
	.incbin "assets/sounds/gUnk_08DDA4F3_4.bin"
	.4byte gUnk_08DDA4E2
	.incbin "assets/sounds/gUnk_08DDA4F3_5.bin"
	.4byte gUnk_08DDA4EC
	.incbin "assets/sounds/gUnk_08DDA4F3_6.bin"
	.4byte gUnk_08DDA4F3
	.incbin "assets/sounds/gUnk_08DDA4F3_7.bin"
	.4byte gUnk_08DDA4EC
	.incbin "assets/sounds/gUnk_08DDA4F3_8.bin"
	.4byte gUnk_08DDA4C7
	.incbin "assets/sounds/gUnk_08DDA4F3_9.bin"
bgmVaatiReborn_track2:: @ 08DDA55E
	.incbin "assets/sounds/bgmVaatiReborn_track2.bin"
gUnk_08DDA566:: @ 08DDA566
	.incbin "assets/sounds/gUnk_08DDA566.bin"
gUnk_08DDA57A:: @ 08DDA57A
	.incbin "assets/sounds/gUnk_08DDA57A.bin"
gUnk_08DDA592:: @ 08DDA592
	.incbin "assets/sounds/gUnk_08DDA592.bin"
gUnk_08DDA5AA:: @ 08DDA5AA
	.incbin "assets/sounds/gUnk_08DDA5AA.bin"
gUnk_08DDA5CF:: @ 08DDA5CF
	.incbin "assets/sounds/gUnk_08DDA5CF.bin"
gUnk_08DDA5DA:: @ 08DDA5DA
	.incbin "assets/sounds/gUnk_08DDA5DA.bin"
	.4byte gUnk_08DDA57A
	.incbin "assets/sounds/gUnk_08DDA5DA_1.bin"
	.4byte gUnk_08DDA592
	.incbin "assets/sounds/gUnk_08DDA5DA_2.bin"
	.4byte gUnk_08DDA5AA
	.incbin "assets/sounds/gUnk_08DDA5DA_3.bin"
	.4byte gUnk_08DDA5CF
	.incbin "assets/sounds/gUnk_08DDA5DA_4.bin"
	.4byte gUnk_08DDA5DA
	.incbin "assets/sounds/gUnk_08DDA5DA_5.bin"
	.4byte gUnk_08DDA566
	.incbin "assets/sounds/gUnk_08DDA5DA_6.bin"
bgmVaatiReborn_track3:: @ 08DDA667
	.incbin "assets/sounds/bgmVaatiReborn_track3.bin"
gUnk_08DDA66F:: @ 08DDA66F
	.incbin "assets/sounds/gUnk_08DDA66F.bin"
gUnk_08DDA683:: @ 08DDA683
	.incbin "assets/sounds/gUnk_08DDA683.bin"
gUnk_08DDA69B:: @ 08DDA69B
	.incbin "assets/sounds/gUnk_08DDA69B.bin"
gUnk_08DDA6B3:: @ 08DDA6B3
	.incbin "assets/sounds/gUnk_08DDA6B3.bin"
gUnk_08DDA6D4:: @ 08DDA6D4
	.incbin "assets/sounds/gUnk_08DDA6D4.bin"
gUnk_08DDA6DB:: @ 08DDA6DB
	.incbin "assets/sounds/gUnk_08DDA6DB.bin"
	.4byte gUnk_08DDA6D4
	.incbin "assets/sounds/gUnk_08DDA6DB_1.bin"
	.4byte gUnk_08DDA683
	.incbin "assets/sounds/gUnk_08DDA6DB_2.bin"
	.4byte gUnk_08DDA69B
	.incbin "assets/sounds/gUnk_08DDA6DB_3.bin"
	.4byte gUnk_08DDA6B3
	.incbin "assets/sounds/gUnk_08DDA6DB_4.bin"
	.4byte gUnk_08DDA6D4
	.incbin "assets/sounds/gUnk_08DDA6DB_5.bin"
	.4byte gUnk_08DDA6DB
	.incbin "assets/sounds/gUnk_08DDA6DB_6.bin"
	.4byte gUnk_08DDA6D4
	.incbin "assets/sounds/gUnk_08DDA6DB_7.bin"
	.4byte gUnk_08DDA66F
	.incbin "assets/sounds/gUnk_08DDA6DB_8.bin"
bgmVaatiReborn_track4:: @ 08DDA756
	.incbin "assets/sounds/bgmVaatiReborn_track4.bin"
gUnk_08DDA764:: @ 08DDA764
	.incbin "assets/sounds/gUnk_08DDA764.bin"
gUnk_08DDA76C:: @ 08DDA76C
	.incbin "assets/sounds/gUnk_08DDA76C.bin"
gUnk_08DDA77A:: @ 08DDA77A
	.incbin "assets/sounds/gUnk_08DDA77A.bin"
gUnk_08DDA781:: @ 08DDA781
	.incbin "assets/sounds/gUnk_08DDA781.bin"
gUnk_08DDA788:: @ 08DDA788
	.incbin "assets/sounds/gUnk_08DDA788.bin"
gUnk_08DDA78F:: @ 08DDA78F
	.incbin "assets/sounds/gUnk_08DDA78F.bin"
	.4byte gUnk_08DDA76C
	.incbin "assets/sounds/gUnk_08DDA78F_1.bin"
	.4byte gUnk_08DDA77A
	.incbin "assets/sounds/gUnk_08DDA78F_2.bin"
	.4byte gUnk_08DDA781
	.incbin "assets/sounds/gUnk_08DDA78F_3.bin"
	.4byte gUnk_08DDA788
	.incbin "assets/sounds/gUnk_08DDA78F_4.bin"
	.4byte gUnk_08DDA78F
	.incbin "assets/sounds/gUnk_08DDA78F_5.bin"
	.4byte gUnk_08DDA764
	.incbin "assets/sounds/gUnk_08DDA78F_6.bin"
bgmVaatiReborn_track5:: @ 08DDA7D5
	.incbin "assets/sounds/bgmVaatiReborn_track5.bin"
gUnk_08DDA7E8:: @ 08DDA7E8
	.incbin "assets/sounds/gUnk_08DDA7E8.bin"
gUnk_08DDA7FA:: @ 08DDA7FA
	.incbin "assets/sounds/gUnk_08DDA7FA.bin"
gUnk_08DDA815:: @ 08DDA815
	.incbin "assets/sounds/gUnk_08DDA815.bin"
	.4byte gUnk_08DDA7FA
gUnk_08DDA831:: @ 08DDA831
	.incbin "assets/sounds/gUnk_08DDA831.bin"
	.4byte gUnk_08DDA7FA
	.incbin "assets/sounds/gUnk_08DDA831_1.bin"
	.4byte gUnk_08DDA815
gUnk_08DDA858:: @ 08DDA858
	.incbin "assets/sounds/gUnk_08DDA858.bin"
	.4byte gUnk_08DDA7FA
	.incbin "assets/sounds/gUnk_08DDA858_1.bin"
	.4byte gUnk_08DDA815
	.incbin "assets/sounds/gUnk_08DDA858_2.bin"
	.4byte gUnk_08DDA7FA
	.incbin "assets/sounds/gUnk_08DDA858_3.bin"
	.4byte gUnk_08DDA7FA
	.incbin "assets/sounds/gUnk_08DDA858_4.bin"
	.4byte gUnk_08DDA815
	.incbin "assets/sounds/gUnk_08DDA858_5.bin"
	.4byte gUnk_08DDA858
	.incbin "assets/sounds/gUnk_08DDA858_6.bin"
	.4byte gUnk_08DDA831
	.incbin "assets/sounds/gUnk_08DDA858_7.bin"
	.4byte gUnk_08DDA7FA
	.incbin "assets/sounds/gUnk_08DDA858_8.bin"
	.4byte gUnk_08DDA815
	.incbin "assets/sounds/gUnk_08DDA858_9.bin"
	.4byte gUnk_08DDA7E8
	.incbin "assets/sounds/gUnk_08DDA858_10.bin"
bgmVaatiReborn_track6:: @ 08DDA8FD
	.incbin "assets/sounds/bgmVaatiReborn_track6.bin"
gUnk_08DDA905:: @ 08DDA905
	.incbin "assets/sounds/gUnk_08DDA905.bin"
gUnk_08DDA91B:: @ 08DDA91B
	.incbin "assets/sounds/gUnk_08DDA91B.bin"
gUnk_08DDA927:: @ 08DDA927
	.incbin "assets/sounds/gUnk_08DDA927.bin"
gUnk_08DDA93D:: @ 08DDA93D
	.incbin "assets/sounds/gUnk_08DDA93D.bin"
gUnk_08DDA944:: @ 08DDA944
	.incbin "assets/sounds/gUnk_08DDA944.bin"
	.4byte gUnk_08DDA93D
	.incbin "assets/sounds/gUnk_08DDA944_1.bin"
	.4byte gUnk_08DDA91B
	.incbin "assets/sounds/gUnk_08DDA944_2.bin"
	.4byte gUnk_08DDA927
	.incbin "assets/sounds/gUnk_08DDA944_3.bin"
	.4byte gUnk_08DDA93D
	.incbin "assets/sounds/gUnk_08DDA944_4.bin"
	.4byte gUnk_08DDA944
	.incbin "assets/sounds/gUnk_08DDA944_5.bin"
	.4byte gUnk_08DDA93D
	.incbin "assets/sounds/gUnk_08DDA944_6.bin"
	.4byte gUnk_08DDA93D
	.incbin "assets/sounds/gUnk_08DDA944_7.bin"
	.4byte gUnk_08DDA93D
	.incbin "assets/sounds/gUnk_08DDA944_8.bin"
	.4byte gUnk_08DDA905
	.incbin "assets/sounds/gUnk_08DDA944_9.bin"
bgmVaatiReborn_track7:: @ 08DDA9AB
	.incbin "assets/sounds/bgmVaatiReborn_track7.bin"
gUnk_08DDA9B6:: @ 08DDA9B6
	.incbin "assets/sounds/gUnk_08DDA9B6.bin"
gUnk_08DDA9C6:: @ 08DDA9C6
	.incbin "assets/sounds/gUnk_08DDA9C6.bin"
gUnk_08DDA9DF:: @ 08DDA9DF
	.incbin "assets/sounds/gUnk_08DDA9DF.bin"
gUnk_08DDA9F8:: @ 08DDA9F8
	.incbin "assets/sounds/gUnk_08DDA9F8.bin"
gUnk_08DDAA23:: @ 08DDAA23
	.incbin "assets/sounds/gUnk_08DDAA23.bin"
gUnk_08DDAA2B:: @ 08DDAA2B
	.incbin "assets/sounds/gUnk_08DDAA2B.bin"
	.4byte gUnk_08DDA9C6
	.incbin "assets/sounds/gUnk_08DDAA2B_1.bin"
	.4byte gUnk_08DDA9DF
	.incbin "assets/sounds/gUnk_08DDAA2B_2.bin"
	.4byte gUnk_08DDA9F8
	.incbin "assets/sounds/gUnk_08DDAA2B_3.bin"
	.4byte gUnk_08DDAA23
	.incbin "assets/sounds/gUnk_08DDAA2B_4.bin"
	.4byte gUnk_08DDAA2B
	.incbin "assets/sounds/gUnk_08DDAA2B_5.bin"
	.4byte gUnk_08DDA9B6
	.incbin "assets/sounds/gUnk_08DDAA2B_6.bin"
bgmVaatiReborn:: @ 08DDAAC8
	sound_header 8 0 0 0xa8 gUnk_08A0AB44 bgmVaatiReborn_track0 bgmVaatiReborn_track1 bgmVaatiReborn_track2 bgmVaatiReborn_track3 bgmVaatiReborn_track4 bgmVaatiReborn_track5 bgmVaatiReborn_track6 bgmVaatiReborn_track7

bgmVaatiTransfigured_track0:: @ 08DDAAF0
	.incbin "assets/sounds/bgmVaatiTransfigured_track0.bin"
gUnk_08DDAB02:: @ 08DDAB02
	.incbin "assets/sounds/gUnk_08DDAB02.bin"
	.4byte gUnk_08DDAB02
	.incbin "assets/sounds/gUnk_08DDAB02_1.bin"
bgmVaatiTransfigured_track1:: @ 08DDAB34
	.incbin "assets/sounds/bgmVaatiTransfigured_track1.bin"
gUnk_08DDAB45:: @ 08DDAB45
	.incbin "assets/sounds/gUnk_08DDAB45.bin"
gUnk_08DDAB87:: @ 08DDAB87
	.incbin "assets/sounds/gUnk_08DDAB87.bin"
	.4byte gUnk_08DDAB87
	.incbin "assets/sounds/gUnk_08DDAB87_1.bin"
	.4byte gUnk_08DDAB45
	.incbin "assets/sounds/gUnk_08DDAB87_2.bin"
bgmVaatiTransfigured_track2:: @ 08DDABD5
	.incbin "assets/sounds/bgmVaatiTransfigured_track2.bin"
gUnk_08DDABDC:: @ 08DDABDC
	.incbin "assets/sounds/gUnk_08DDABDC.bin"
gUnk_08DDABFC:: @ 08DDABFC
	.incbin "assets/sounds/gUnk_08DDABFC.bin"
gUnk_08DDAC1E:: @ 08DDAC1E
	.incbin "assets/sounds/gUnk_08DDAC1E.bin"
	.4byte gUnk_08DDAC1E
gUnk_08DDAC45:: @ 08DDAC45
	.incbin "assets/sounds/gUnk_08DDAC45.bin"
	.4byte gUnk_08DDAC45
	.incbin "assets/sounds/gUnk_08DDAC45_1.bin"
	.4byte gUnk_08DDABFC
	.incbin "assets/sounds/gUnk_08DDAC45_2.bin"
	.4byte gUnk_08DDABFC
	.incbin "assets/sounds/gUnk_08DDAC45_3.bin"
	.4byte gUnk_08DDABDC
	.incbin "assets/sounds/gUnk_08DDAC45_4.bin"
bgmVaatiTransfigured_track3:: @ 08DDAD2A
	.incbin "assets/sounds/bgmVaatiTransfigured_track3.bin"
gUnk_08DDAD31:: @ 08DDAD31
	.incbin "assets/sounds/gUnk_08DDAD31.bin"
gUnk_08DDAD72:: @ 08DDAD72
	.incbin "assets/sounds/gUnk_08DDAD72.bin"
	.4byte gUnk_08DDAD72
gUnk_08DDAD99:: @ 08DDAD99
	.incbin "assets/sounds/gUnk_08DDAD99.bin"
	.4byte gUnk_08DDAD99
gUnk_08DDADC0:: @ 08DDADC0
	.incbin "assets/sounds/gUnk_08DDADC0.bin"
	.4byte gUnk_08DDADC0
	.incbin "assets/sounds/gUnk_08DDADC0_1.bin"
gUnk_08DDADFD:: @ 08DDADFD
	.incbin "assets/sounds/gUnk_08DDADFD.bin"
	.4byte gUnk_08DDADFD
	.incbin "assets/sounds/gUnk_08DDADFD_1.bin"
	.4byte gUnk_08DDADFD
	.incbin "assets/sounds/gUnk_08DDADFD_2.bin"
	.4byte gUnk_08DDAD31
	.incbin "assets/sounds/gUnk_08DDADFD_3.bin"
bgmVaatiTransfigured_track4:: @ 08DDAE39
	.incbin "assets/sounds/bgmVaatiTransfigured_track4.bin"
gUnk_08DDAE40:: @ 08DDAE40
	.incbin "assets/sounds/gUnk_08DDAE40.bin"
gUnk_08DDAE53:: @ 08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_1.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_2.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_3.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_4.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_5.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_6.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_7.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_8.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_9.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_10.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_11.bin"
	.4byte gUnk_08DDAE53
	.incbin "assets/sounds/gUnk_08DDAE53_12.bin"
	.4byte gUnk_08DDAE40
	.incbin "assets/sounds/gUnk_08DDAE53_13.bin"
bgmVaatiTransfigured_track5:: @ 08DDAEB6
	.incbin "assets/sounds/bgmVaatiTransfigured_track5.bin"
gUnk_08DDAEBD:: @ 08DDAEBD
	.incbin "assets/sounds/gUnk_08DDAEBD.bin"
	.4byte gUnk_08DDAEBD
	.incbin "assets/sounds/gUnk_08DDAEBD_1.bin"
bgmVaatiTransfigured_track6:: @ 08DDAFA5
	.incbin "assets/sounds/bgmVaatiTransfigured_track6.bin"
gUnk_08DDAFAC:: @ 08DDAFAC
	.incbin "assets/sounds/gUnk_08DDAFAC.bin"
gUnk_08DDAFB1:: @ 08DDAFB1
	.incbin "assets/sounds/gUnk_08DDAFB1.bin"
	.4byte gUnk_08DDAFB1
	.incbin "assets/sounds/gUnk_08DDAFB1_1.bin"
	.4byte gUnk_08DDAFB1
	.incbin "assets/sounds/gUnk_08DDAFB1_2.bin"
gUnk_08DDAFC9:: @ 08DDAFC9
	.incbin "assets/sounds/gUnk_08DDAFC9.bin"
	.4byte gUnk_08DDAFB1
	.incbin "assets/sounds/gUnk_08DDAFC9_1.bin"
	.4byte gUnk_08DDAFB1
	.incbin "assets/sounds/gUnk_08DDAFC9_2.bin"
	.4byte gUnk_08DDAFC9
	.incbin "assets/sounds/gUnk_08DDAFC9_3.bin"
	.4byte gUnk_08DDAFAC
	.incbin "assets/sounds/gUnk_08DDAFC9_4.bin"
bgmVaatiTransfigured_track7:: @ 08DDB015
	.incbin "assets/sounds/bgmVaatiTransfigured_track7.bin"
gUnk_08DDB01F:: @ 08DDB01F
	.incbin "assets/sounds/gUnk_08DDB01F.bin"
gUnk_08DDB03F:: @ 08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_1.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_2.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_3.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_4.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_5.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_6.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_7.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_8.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_9.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_10.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_11.bin"
	.4byte gUnk_08DDB03F
	.incbin "assets/sounds/gUnk_08DDB03F_12.bin"
	.4byte gUnk_08DDB01F
	.incbin "assets/sounds/gUnk_08DDB03F_13.bin"
bgmVaatiTransfigured_track8:: @ 08DDB0AE
	.incbin "assets/sounds/bgmVaatiTransfigured_track8.bin"
gUnk_08DDB0B6:: @ 08DDB0B6
	.incbin "assets/sounds/gUnk_08DDB0B6.bin"
gUnk_08DDB0D7:: @ 08DDB0D7
	.incbin "assets/sounds/gUnk_08DDB0D7.bin"
gUnk_08DDB10B:: @ 08DDB10B
	.incbin "assets/sounds/gUnk_08DDB10B.bin"
	.4byte gUnk_08DDB0D7
	.incbin "assets/sounds/gUnk_08DDB10B_1.bin"
	.4byte gUnk_08DDB10B
	.incbin "assets/sounds/gUnk_08DDB10B_2.bin"
	.4byte gUnk_08DDB0D7
	.incbin "assets/sounds/gUnk_08DDB10B_3.bin"
	.4byte gUnk_08DDB10B
	.incbin "assets/sounds/gUnk_08DDB10B_4.bin"
	.4byte gUnk_08DDB0D7
	.incbin "assets/sounds/gUnk_08DDB10B_5.bin"
	.4byte gUnk_08DDB10B
	.incbin "assets/sounds/gUnk_08DDB10B_6.bin"
	.4byte gUnk_08DDB0D7
	.incbin "assets/sounds/gUnk_08DDB10B_7.bin"
	.4byte gUnk_08DDB10B
	.incbin "assets/sounds/gUnk_08DDB10B_8.bin"
	.4byte gUnk_08DDB0D7
	.incbin "assets/sounds/gUnk_08DDB10B_9.bin"
	.4byte gUnk_08DDB10B
	.incbin "assets/sounds/gUnk_08DDB10B_10.bin"
	.4byte gUnk_08DDB0D7
	.incbin "assets/sounds/gUnk_08DDB10B_11.bin"
	.4byte gUnk_08DDB0B6
	.incbin "assets/sounds/gUnk_08DDB10B_12.bin"
bgmVaatiTransfigured_track9:: @ 08DDB185
	.incbin "assets/sounds/bgmVaatiTransfigured_track9.bin"
gUnk_08DDB18F:: @ 08DDB18F
	.incbin "assets/sounds/gUnk_08DDB18F.bin"
	.4byte gUnk_08DDB18F
	.incbin "assets/sounds/gUnk_08DDB18F_1.bin"
bgmVaatiTransfigured:: @ 08DDB1D4
	sound_header 0xa 0 0 0xa8 gUnk_08A0B144 bgmVaatiTransfigured_track0 bgmVaatiTransfigured_track1 bgmVaatiTransfigured_track2 bgmVaatiTransfigured_track3 bgmVaatiTransfigured_track4 bgmVaatiTransfigured_track5 bgmVaatiTransfigured_track6 bgmVaatiTransfigured_track7 bgmVaatiTransfigured_track8 bgmVaatiTransfigured_track9

bgmCastleCollapse_track0:: @ 08DDB204
	.incbin "assets/sounds/bgmCastleCollapse_track0.bin"
gUnk_08DDB20D:: @ 08DDB20D
	.incbin "assets/sounds/gUnk_08DDB20D.bin"
gUnk_08DDB21B:: @ 08DDB21B
	.incbin "assets/sounds/gUnk_08DDB21B.bin"
gUnk_08DDB22A:: @ 08DDB22A
	.incbin "assets/sounds/gUnk_08DDB22A.bin"
	.4byte gUnk_08DDB22A
	.incbin "assets/sounds/gUnk_08DDB22A_1.bin"
	.4byte gUnk_08DDB21B
	.incbin "assets/sounds/gUnk_08DDB22A_2.bin"
	.4byte gUnk_08DDB21B
	.incbin "assets/sounds/gUnk_08DDB22A_3.bin"
	.4byte gUnk_08DDB22A
	.incbin "assets/sounds/gUnk_08DDB22A_4.bin"
	.4byte gUnk_08DDB22A
	.incbin "assets/sounds/gUnk_08DDB22A_5.bin"
	.4byte gUnk_08DDB20D
	.incbin "assets/sounds/gUnk_08DDB22A_6.bin"
bgmCastleCollapse_track1:: @ 08DDB262
	.incbin "assets/sounds/bgmCastleCollapse_track1.bin"
gUnk_08DDB26A:: @ 08DDB26A
	.incbin "assets/sounds/gUnk_08DDB26A.bin"
gUnk_08DDB282:: @ 08DDB282
	.incbin "assets/sounds/gUnk_08DDB282.bin"
gUnk_08DDB29C:: @ 08DDB29C
	.incbin "assets/sounds/gUnk_08DDB29C.bin"
	.4byte gUnk_08DDB29C
	.incbin "assets/sounds/gUnk_08DDB29C_1.bin"
	.4byte gUnk_08DDB282
	.incbin "assets/sounds/gUnk_08DDB29C_2.bin"
	.4byte gUnk_08DDB282
	.incbin "assets/sounds/gUnk_08DDB29C_3.bin"
	.4byte gUnk_08DDB29C
	.incbin "assets/sounds/gUnk_08DDB29C_4.bin"
	.4byte gUnk_08DDB29C
	.incbin "assets/sounds/gUnk_08DDB29C_5.bin"
	.4byte gUnk_08DDB26A
	.incbin "assets/sounds/gUnk_08DDB29C_6.bin"
bgmCastleCollapse_track2:: @ 08DDB2E4
	.incbin "assets/sounds/bgmCastleCollapse_track2.bin"
gUnk_08DDB2EB:: @ 08DDB2EB
	.incbin "assets/sounds/gUnk_08DDB2EB.bin"
	.4byte gUnk_08DDB2EB
	.incbin "assets/sounds/gUnk_08DDB2EB_1.bin"
bgmCastleCollapse_track3:: @ 08DDB30C
	.incbin "assets/sounds/bgmCastleCollapse_track3.bin"
gUnk_08DDB311:: @ 08DDB311
	.incbin "assets/sounds/gUnk_08DDB311.bin"
gUnk_08DDB330:: @ 08DDB330
	.incbin "assets/sounds/gUnk_08DDB330.bin"
	.4byte gUnk_08DDB330
	.incbin "assets/sounds/gUnk_08DDB330_1.bin"
	.4byte gUnk_08DDB330
	.incbin "assets/sounds/gUnk_08DDB330_2.bin"
	.4byte gUnk_08DDB311
	.incbin "assets/sounds/gUnk_08DDB330_3.bin"
bgmCastleCollapse_track4:: @ 08DDB3A7
	.incbin "assets/sounds/bgmCastleCollapse_track4.bin"
gUnk_08DDB3C0:: @ 08DDB3C0
	.incbin "assets/sounds/gUnk_08DDB3C0.bin"
	.4byte gUnk_08DDB3C0
	.incbin "assets/sounds/gUnk_08DDB3C0_1.bin"
bgmCastleCollapse_track5:: @ 08DDB44B
	.incbin "assets/sounds/bgmCastleCollapse_track5.bin"
gUnk_08DDB453:: @ 08DDB453
	.incbin "assets/sounds/gUnk_08DDB453.bin"
	.4byte gUnk_08DDB453
	.incbin "assets/sounds/gUnk_08DDB453_1.bin"
bgmCastleCollapse_track6:: @ 08DDB4F7
	.incbin "assets/sounds/bgmCastleCollapse_track6.bin"
gUnk_08DDB4FC:: @ 08DDB4FC
	.incbin "assets/sounds/gUnk_08DDB4FC.bin"
	.4byte gUnk_08DDB4FC
	.incbin "assets/sounds/gUnk_08DDB4FC_1.bin"
bgmCastleCollapse_track7:: @ 08DDB5C2
	.incbin "assets/sounds/bgmCastleCollapse_track7.bin"
gUnk_08DDB5C9:: @ 08DDB5C9
	.incbin "assets/sounds/gUnk_08DDB5C9.bin"
	.4byte gUnk_08DDB5C9
	.incbin "assets/sounds/gUnk_08DDB5C9_1.bin"
bgmCastleCollapse:: @ 08DDB5E4
	sound_header 8 0 0 0xa8 gUnk_08A0B744 bgmCastleCollapse_track0 bgmCastleCollapse_track1 bgmCastleCollapse_track2 bgmCastleCollapse_track3 bgmCastleCollapse_track4 bgmCastleCollapse_track5 bgmCastleCollapse_track6 bgmCastleCollapse_track7

bgmVaatiWrath_track0:: @ 08DDB60C
	.incbin "assets/sounds/bgmVaatiWrath_track0.bin"
gUnk_08DDB65D:: @ 08DDB65D
	.incbin "assets/sounds/gUnk_08DDB65D.bin"
gUnk_08DDB67A:: @ 08DDB67A
	.incbin "assets/sounds/gUnk_08DDB67A.bin"
	.4byte gUnk_08DDB67A
	.incbin "assets/sounds/gUnk_08DDB67A_1.bin"
	.4byte gUnk_08DDB67A
	.incbin "assets/sounds/gUnk_08DDB67A_2.bin"
	.4byte gUnk_08DDB67A
	.incbin "assets/sounds/gUnk_08DDB67A_3.bin"
	.4byte gUnk_08DDB65D
	.incbin "assets/sounds/gUnk_08DDB67A_4.bin"
bgmVaatiWrath_track1:: @ 08DDB71C
	.incbin "assets/sounds/bgmVaatiWrath_track1.bin"
gUnk_08DDB72D:: @ 08DDB72D
	.incbin "assets/sounds/gUnk_08DDB72D.bin"
	.4byte gUnk_08DDB72D
	.incbin "assets/sounds/gUnk_08DDB72D_1.bin"
bgmVaatiWrath_track2:: @ 08DDB7FA
	.incbin "assets/sounds/bgmVaatiWrath_track2.bin"
gUnk_08DDB86C:: @ 08DDB86C
	.incbin "assets/sounds/gUnk_08DDB86C.bin"
gUnk_08DDB896:: @ 08DDB896
	.incbin "assets/sounds/gUnk_08DDB896.bin"
gUnk_08DDB8B6:: @ 08DDB8B6
	.incbin "assets/sounds/gUnk_08DDB8B6.bin"
	.4byte gUnk_08DDB86C
	.incbin "assets/sounds/gUnk_08DDB8B6_1.bin"
	.4byte gUnk_08DDB8B6
	.incbin "assets/sounds/gUnk_08DDB8B6_2.bin"
	.4byte gUnk_08DDB896
	.incbin "assets/sounds/gUnk_08DDB8B6_3.bin"
bgmVaatiWrath_track3:: @ 08DDBA54
	.incbin "assets/sounds/bgmVaatiWrath_track3.bin"
gUnk_08DDBA78:: @ 08DDBA78
	.incbin "assets/sounds/gUnk_08DDBA78.bin"
gUnk_08DDBAB9:: @ 08DDBAB9
	.incbin "assets/sounds/gUnk_08DDBAB9.bin"
	.4byte gUnk_08DDBAB9
	.incbin "assets/sounds/gUnk_08DDBAB9_1.bin"
gUnk_08DDBAE0:: @ 08DDBAE0
	.incbin "assets/sounds/gUnk_08DDBAE0.bin"
	.4byte gUnk_08DDBAE0
	.incbin "assets/sounds/gUnk_08DDBAE0_1.bin"
	.4byte gUnk_08DDBA78
	.incbin "assets/sounds/gUnk_08DDBAE0_2.bin"
bgmVaatiWrath_track4:: @ 08DDBB43
	.incbin "assets/sounds/bgmVaatiWrath_track4.bin"
gUnk_08DDBB59:: @ 08DDBB59
	.incbin "assets/sounds/gUnk_08DDBB59.bin"
gUnk_08DDBB80:: @ 08DDBB80
	.incbin "assets/sounds/gUnk_08DDBB80.bin"
	.4byte gUnk_08DDBB80
	.incbin "assets/sounds/gUnk_08DDBB80_1.bin"
	.4byte gUnk_08DDBB80
	.incbin "assets/sounds/gUnk_08DDBB80_2.bin"
gUnk_08DDBBBD:: @ 08DDBBBD
	.incbin "assets/sounds/gUnk_08DDBBBD.bin"
	.4byte gUnk_08DDBBBD
	.incbin "assets/sounds/gUnk_08DDBBBD_1.bin"
	.4byte gUnk_08DDBB59
	.incbin "assets/sounds/gUnk_08DDBBBD_2.bin"
bgmVaatiWrath_track5:: @ 08DDBC3F
	.incbin "assets/sounds/bgmVaatiWrath_track5.bin"
gUnk_08DDBC8F:: @ 08DDBC8F
	.incbin "assets/sounds/gUnk_08DDBC8F.bin"
	.4byte gUnk_08DDBC8F
	.incbin "assets/sounds/gUnk_08DDBC8F_1.bin"
bgmVaatiWrath_track6:: @ 08DDBD03
	.incbin "assets/sounds/bgmVaatiWrath_track6.bin"
gUnk_08DDBD21:: @ 08DDBD21
	.incbin "assets/sounds/gUnk_08DDBD21.bin"
	.4byte gUnk_08DDBD21
	.incbin "assets/sounds/gUnk_08DDBD21_1.bin"
bgmVaatiWrath_track7:: @ 08DDBD44
	.incbin "assets/sounds/bgmVaatiWrath_track7.bin"
gUnk_08DDBD55:: @ 08DDBD55
	.incbin "assets/sounds/gUnk_08DDBD55.bin"
gUnk_08DDBD7B:: @ 08DDBD7B
	.incbin "assets/sounds/gUnk_08DDBD7B.bin"
gUnk_08DDBDA3:: @ 08DDBDA3
	.incbin "assets/sounds/gUnk_08DDBDA3.bin"
	.4byte gUnk_08DDBDA3
	.incbin "assets/sounds/gUnk_08DDBDA3_1.bin"
	.4byte gUnk_08DDBD7B
	.incbin "assets/sounds/gUnk_08DDBDA3_2.bin"
	.4byte gUnk_08DDBD7B
gUnk_08DDBDDA:: @ 08DDBDDA
	.incbin "assets/sounds/gUnk_08DDBDDA.bin"
	.4byte gUnk_08DDBDDA
gUnk_08DDBE07:: @ 08DDBE07
	.incbin "assets/sounds/gUnk_08DDBE07.bin"
	.4byte gUnk_08DDBE07
	.incbin "assets/sounds/gUnk_08DDBE07_1.bin"
	.4byte gUnk_08DDBDA3
	.incbin "assets/sounds/gUnk_08DDBE07_2.bin"
	.4byte gUnk_08DDBDA3
	.incbin "assets/sounds/gUnk_08DDBE07_3.bin"
	.4byte gUnk_08DDBDA3
	.incbin "assets/sounds/gUnk_08DDBE07_4.bin"
	.4byte gUnk_08DDBDA3
	.incbin "assets/sounds/gUnk_08DDBE07_5.bin"
gUnk_08DDBE6F:: @ 08DDBE6F
	.incbin "assets/sounds/gUnk_08DDBE6F.bin"
	.4byte gUnk_08DDBE6F
	.incbin "assets/sounds/gUnk_08DDBE6F_1.bin"
	.4byte gUnk_08DDBD55
	.incbin "assets/sounds/gUnk_08DDBE6F_2.bin"
bgmVaatiWrath_track8:: @ 08DDBEA3
	.incbin "assets/sounds/bgmVaatiWrath_track8.bin"
gUnk_08DDBED4:: @ 08DDBED4
	.incbin "assets/sounds/gUnk_08DDBED4.bin"
gUnk_08DDBF38:: @ 08DDBF38
	.incbin "assets/sounds/gUnk_08DDBF38.bin"
	.4byte gUnk_08DDBF38
gUnk_08DDBF6F:: @ 08DDBF6F
	.incbin "assets/sounds/gUnk_08DDBF6F.bin"
gUnk_08DDBFA0:: @ 08DDBFA0
	.incbin "assets/sounds/gUnk_08DDBFA0.bin"
	.4byte gUnk_08DDBF38
	.incbin "assets/sounds/gUnk_08DDBFA0_1.bin"
	.4byte gUnk_08DDBF38
	.incbin "assets/sounds/gUnk_08DDBFA0_2.bin"
	.4byte gUnk_08DDBF6F
	.incbin "assets/sounds/gUnk_08DDBFA0_3.bin"
	.4byte gUnk_08DDBFA0
gUnk_08DDBFE9:: @ 08DDBFE9
	.incbin "assets/sounds/gUnk_08DDBFE9.bin"
	.4byte gUnk_08DDBFE9
	.incbin "assets/sounds/gUnk_08DDBFE9_1.bin"
	.4byte gUnk_08DDBF38
	.incbin "assets/sounds/gUnk_08DDBFE9_2.bin"
	.4byte gUnk_08DDBF38
	.incbin "assets/sounds/gUnk_08DDBFE9_3.bin"
	.4byte gUnk_08DDBF38
	.incbin "assets/sounds/gUnk_08DDBFE9_4.bin"
	.4byte gUnk_08DDBF38
	.incbin "assets/sounds/gUnk_08DDBFE9_5.bin"
	.4byte gUnk_08DDBED4
	.incbin "assets/sounds/gUnk_08DDBFE9_6.bin"
bgmVaatiWrath:: @ 08DDC070
	sound_header 9 0 0 0xa8 gUnk_08A0BD44 bgmVaatiWrath_track0 bgmVaatiWrath_track1 bgmVaatiWrath_track2 bgmVaatiWrath_track3 bgmVaatiWrath_track4 bgmVaatiWrath_track5 bgmVaatiWrath_track6 bgmVaatiWrath_track7 bgmVaatiWrath_track8

bgmFightTheme2_track0:: @ 08DDC09C
	.incbin "assets/sounds/bgmFightTheme2_track0.bin"
gUnk_08DDC0A8:: @ 08DDC0A8
	.incbin "assets/sounds/gUnk_08DDC0A8.bin"
gUnk_08DDC0B2:: @ 08DDC0B2
	.incbin "assets/sounds/gUnk_08DDC0B2.bin"
	.4byte gUnk_08DDC0B2
	.incbin "assets/sounds/gUnk_08DDC0B2_1.bin"
	.4byte gUnk_08DDC0A8
	.incbin "assets/sounds/gUnk_08DDC0B2_2.bin"
bgmFightTheme2_track1:: @ 08DDC0C4
	.incbin "assets/sounds/bgmFightTheme2_track1.bin"
gUnk_08DDC0CC:: @ 08DDC0CC
	.incbin "assets/sounds/gUnk_08DDC0CC.bin"
gUnk_08DDC0FB:: @ 08DDC0FB
	.incbin "assets/sounds/gUnk_08DDC0FB.bin"
	.4byte gUnk_08DDC0FB
	.incbin "assets/sounds/gUnk_08DDC0FB_1.bin"
	.4byte gUnk_08DDC0CC
	.incbin "assets/sounds/gUnk_08DDC0FB_2.bin"
bgmFightTheme2_track2:: @ 08DDC121
	.incbin "assets/sounds/bgmFightTheme2_track2.bin"
gUnk_08DDC128:: @ 08DDC128
	.incbin "assets/sounds/gUnk_08DDC128.bin"
	.4byte gUnk_08DDC128
	.incbin "assets/sounds/gUnk_08DDC128_1.bin"
bgmFightTheme2_track3:: @ 08DDC13A
	.incbin "assets/sounds/bgmFightTheme2_track3.bin"
gUnk_08DDC153:: @ 08DDC153
	.incbin "assets/sounds/gUnk_08DDC153.bin"
	.4byte gUnk_08DDC153
	.incbin "assets/sounds/gUnk_08DDC153_1.bin"
bgmFightTheme2_track4:: @ 08DDC1AA
	.incbin "assets/sounds/bgmFightTheme2_track4.bin"
gUnk_08DDC1C3:: @ 08DDC1C3
	.incbin "assets/sounds/gUnk_08DDC1C3.bin"
gUnk_08DDC1CB:: @ 08DDC1CB
	.incbin "assets/sounds/gUnk_08DDC1CB.bin"
	.4byte gUnk_08DDC1CB
	.incbin "assets/sounds/gUnk_08DDC1CB_1.bin"
	.4byte gUnk_08DDC1C3
	.incbin "assets/sounds/gUnk_08DDC1CB_2.bin"
bgmFightTheme2_track5:: @ 08DDC1FE
	.incbin "assets/sounds/bgmFightTheme2_track5.bin"
gUnk_08DDC205:: @ 08DDC205
	.incbin "assets/sounds/gUnk_08DDC205.bin"
	.4byte gUnk_08DDC205
	.incbin "assets/sounds/gUnk_08DDC205_1.bin"
bgmFightTheme2_track6:: @ 08DDC218
	.incbin "assets/sounds/bgmFightTheme2_track6.bin"
gUnk_08DDC233:: @ 08DDC233
	.incbin "assets/sounds/gUnk_08DDC233.bin"
	.4byte gUnk_08DDC233
	.incbin "assets/sounds/gUnk_08DDC233_1.bin"
bgmFightTheme2:: @ 08DDC250
	sound_header 7 0 0 0xa8 gUnk_08A0C344 bgmFightTheme2_track0 bgmFightTheme2_track1 bgmFightTheme2_track2 bgmFightTheme2_track3 bgmFightTheme2_track4 bgmFightTheme2_track5 bgmFightTheme2_track6

bgmDiggingCave_track0:: @ 08DDC274
	.incbin "assets/sounds/bgmDiggingCave_track0.bin"
gUnk_08DDC27F:: @ 08DDC27F
	.incbin "assets/sounds/gUnk_08DDC27F.bin"
	.4byte gUnk_08DDC27F
	.incbin "assets/sounds/gUnk_08DDC27F_1.bin"
bgmDiggingCave_track1:: @ 08DDC2A6
	.incbin "assets/sounds/bgmDiggingCave_track1.bin"
gUnk_08DDC2AE:: @ 08DDC2AE
	.incbin "assets/sounds/gUnk_08DDC2AE.bin"
	.4byte gUnk_08DDC2AE
	.incbin "assets/sounds/gUnk_08DDC2AE_1.bin"
bgmDiggingCave_track2:: @ 08DDC2D9
	.incbin "assets/sounds/bgmDiggingCave_track2.bin"
gUnk_08DDC2DF:: @ 08DDC2DF
	.incbin "assets/sounds/gUnk_08DDC2DF.bin"
	.4byte gUnk_08DDC2DF
	.incbin "assets/sounds/gUnk_08DDC2DF_1.bin"
bgmDiggingCave_track3:: @ 08DDC30B
	.incbin "assets/sounds/bgmDiggingCave_track3.bin"
gUnk_08DDC311:: @ 08DDC311
	.incbin "assets/sounds/gUnk_08DDC311.bin"
	.4byte gUnk_08DDC311
	.incbin "assets/sounds/gUnk_08DDC311_1.bin"
bgmDiggingCave_track4:: @ 08DDC346
	.incbin "assets/sounds/bgmDiggingCave_track4.bin"
gUnk_08DDC34E:: @ 08DDC34E
	.incbin "assets/sounds/gUnk_08DDC34E.bin"
	.4byte gUnk_08DDC34E
	.incbin "assets/sounds/gUnk_08DDC34E_1.bin"
bgmDiggingCave_track5:: @ 08DDC358
	.incbin "assets/sounds/bgmDiggingCave_track5.bin"
gUnk_08DDC35F:: @ 08DDC35F
	.incbin "assets/sounds/gUnk_08DDC35F.bin"
	.4byte gUnk_08DDC35F
	.incbin "assets/sounds/gUnk_08DDC35F_1.bin"
bgmDiggingCave:: @ 08DDC394
	sound_header 6 0 0 0xb2 gUnk_08A0C944 bgmDiggingCave_track0 bgmDiggingCave_track1 bgmDiggingCave_track2 bgmDiggingCave_track3 bgmDiggingCave_track4 bgmDiggingCave_track5

bgmSwiftbladeDojo_track0:: @ 08DDC3B4
.ifdef EU
	.incbin "assets/sounds/bgmSwiftbladeDojo_track0_EU.bin"
gUnk_08EE79D3:: @ 08EE79D3
	.incbin "assets/sounds/gUnk_08EE79D3_EU.bin"
	.4byte gUnk_08EE79D3
	.incbin "assets/sounds/gUnk_08EE79D3_1_EU.bin"
.else
	.incbin "assets/sounds/bgmSwiftbladeDojo_track0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DDC3BF:: @ 08DDC3BF
	.incbin "assets/sounds/gUnk_08DDC3BF_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DDC3BF
	.incbin "assets/sounds/gUnk_08DDC3BF_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

.ifdef EU
gUnk_08EE79F3:: @ 08EE79F3
	.incbin "assets/sounds/gUnk_08EE79F3_EU.bin"
gUnk_08EE79FA:: @ 08EE79FA
	.incbin "assets/sounds/gUnk_08EE79FA_EU.bin"
	.4byte gUnk_08EE79FA
	.incbin "assets/sounds/gUnk_08EE79FA_1_EU.bin"
.else
bgmSwiftbladeDojo_track1:: @ 08DDC3E2
	.incbin "assets/sounds/bgmSwiftbladeDojo_track1_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DDC3E9:: @ 08DDC3E9
	.incbin "assets/sounds/gUnk_08DDC3E9_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DDC3E9
	.incbin "assets/sounds/gUnk_08DDC3E9_1_USA-JP-DEMO_USA-DEMO_JP.bin"
bgmSwiftbladeDojo_track2:: @ 08DDC409
	.incbin "assets/sounds/bgmSwiftbladeDojo_track2_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DDC410:: @ 08DDC410
	.incbin "assets/sounds/gUnk_08DDC410_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DDC410
	.incbin "assets/sounds/gUnk_08DDC410_1_USA-JP-DEMO_USA-DEMO_JP.bin"
bgmSwiftbladeDojo_track3:: @ 08DDC41C
	.incbin "assets/sounds/bgmSwiftbladeDojo_track3_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DDC423:: @ 08DDC423
	.incbin "assets/sounds/gUnk_08DDC423_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DDC423
	.incbin "assets/sounds/gUnk_08DDC423_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

bgmSwiftbladeDojo:: @ 08DDC4B4
.ifdef EU
	.incbin "assets/sounds/bgmSwiftbladeDojo_EU.bin"
	.4byte gUnk_08A0CF44
	.4byte bgmSwiftbladeDojo_track0
	.4byte gUnk_08EE79F3
.else
	sound_header 4 0 0 0x9e gUnk_08A0CF44 bgmSwiftbladeDojo_track0 bgmSwiftbladeDojo_track1 bgmSwiftbladeDojo_track2 bgmSwiftbladeDojo_track3
.endif

bgmMinishCap_track0:: @ 08DDC4CC
	.incbin "assets/sounds/bgmMinishCap_track0.bin"
gUnk_08DDC4D7:: @ 08DDC4D7
	.incbin "assets/sounds/gUnk_08DDC4D7.bin"
gUnk_08DDC4DF:: @ 08DDC4DF
	.incbin "assets/sounds/gUnk_08DDC4DF.bin"
gUnk_08DDC4F3:: @ 08DDC4F3
	.incbin "assets/sounds/gUnk_08DDC4F3.bin"
	.4byte gUnk_08DDC4DF
	.incbin "assets/sounds/gUnk_08DDC4F3_1.bin"
	.4byte gUnk_08DDC4F3
	.incbin "assets/sounds/gUnk_08DDC4F3_2.bin"
	.4byte gUnk_08DDC4DF
	.incbin "assets/sounds/gUnk_08DDC4F3_3.bin"
	.4byte gUnk_08DDC4F3
	.incbin "assets/sounds/gUnk_08DDC4F3_4.bin"
gUnk_08DDC528:: @ 08DDC528
	.incbin "assets/sounds/gUnk_08DDC528.bin"
gUnk_08DDC52F:: @ 08DDC52F
	.incbin "assets/sounds/gUnk_08DDC52F.bin"
gUnk_08DDC536:: @ 08DDC536
	.incbin "assets/sounds/gUnk_08DDC536.bin"
	.4byte gUnk_08DDC528
	.incbin "assets/sounds/gUnk_08DDC536_1.bin"
	.4byte gUnk_08DDC52F
	.incbin "assets/sounds/gUnk_08DDC536_2.bin"
	.4byte gUnk_08DDC536
gUnk_08DDC550:: @ 08DDC550
	.incbin "assets/sounds/gUnk_08DDC550.bin"
	.4byte gUnk_08DDC536
gUnk_08DDC562:: @ 08DDC562
	.incbin "assets/sounds/gUnk_08DDC562.bin"
	.4byte gUnk_08DDC536
	.incbin "assets/sounds/gUnk_08DDC562_1.bin"
	.4byte gUnk_08DDC562
gUnk_08DDC573:: @ 08DDC573
	.incbin "assets/sounds/gUnk_08DDC573.bin"
gUnk_08DDC57A:: @ 08DDC57A
	.incbin "assets/sounds/gUnk_08DDC57A.bin"
	.4byte gUnk_08DDC550
	.incbin "assets/sounds/gUnk_08DDC57A_1.bin"
	.4byte gUnk_08DDC536
	.incbin "assets/sounds/gUnk_08DDC57A_2.bin"
	.4byte gUnk_08DDC562
	.incbin "assets/sounds/gUnk_08DDC57A_3.bin"
	.4byte gUnk_08DDC536
	.incbin "assets/sounds/gUnk_08DDC57A_4.bin"
	.4byte gUnk_08DDC562
	.incbin "assets/sounds/gUnk_08DDC57A_5.bin"
	.4byte gUnk_08DDC573
	.incbin "assets/sounds/gUnk_08DDC57A_6.bin"
	.4byte gUnk_08DDC57A
	.incbin "assets/sounds/gUnk_08DDC57A_7.bin"
gUnk_08DDC5B8:: @ 08DDC5B8
	.incbin "assets/sounds/gUnk_08DDC5B8.bin"
gUnk_08DDC5BF:: @ 08DDC5BF
	.incbin "assets/sounds/gUnk_08DDC5BF.bin"
	.4byte gUnk_08DDC562
	.incbin "assets/sounds/gUnk_08DDC5BF_1.bin"
	.4byte gUnk_08DDC5B8
	.incbin "assets/sounds/gUnk_08DDC5BF_2.bin"
	.4byte gUnk_08DDC5BF
	.incbin "assets/sounds/gUnk_08DDC5BF_3.bin"
	.4byte gUnk_08DDC536
	.incbin "assets/sounds/gUnk_08DDC5BF_4.bin"
	.4byte gUnk_08DDC573
	.incbin "assets/sounds/gUnk_08DDC5BF_5.bin"
	.4byte gUnk_08DDC4D7
	.incbin "assets/sounds/gUnk_08DDC5BF_6.bin"
bgmMinishCap_track1:: @ 08DDC62B
	.incbin "assets/sounds/bgmMinishCap_track1.bin"
gUnk_08DDC632:: @ 08DDC632
	.incbin "assets/sounds/gUnk_08DDC632.bin"
gUnk_08DDC63F:: @ 08DDC63F
	.incbin "assets/sounds/gUnk_08DDC63F.bin"
gUnk_08DDC649:: @ 08DDC649
	.incbin "assets/sounds/gUnk_08DDC649.bin"
	.4byte gUnk_08DDC63F
	.incbin "assets/sounds/gUnk_08DDC649_1.bin"
	.4byte gUnk_08DDC649
	.incbin "assets/sounds/gUnk_08DDC649_2.bin"
	.4byte gUnk_08DDC63F
	.incbin "assets/sounds/gUnk_08DDC649_3.bin"
	.4byte gUnk_08DDC649
	.incbin "assets/sounds/gUnk_08DDC649_4.bin"
gUnk_08DDC700:: @ 08DDC700
	.incbin "assets/sounds/gUnk_08DDC700.bin"
gUnk_08DDC708:: @ 08DDC708
	.incbin "assets/sounds/gUnk_08DDC708.bin"
	.4byte gUnk_08DDC700
gUnk_08DDC715:: @ 08DDC715
	.incbin "assets/sounds/gUnk_08DDC715.bin"
gUnk_08DDC71D:: @ 08DDC71D
	.incbin "assets/sounds/gUnk_08DDC71D.bin"
gUnk_08DDC725:: @ 08DDC725
	.incbin "assets/sounds/gUnk_08DDC725.bin"
gUnk_08DDC72D:: @ 08DDC72D
	.incbin "assets/sounds/gUnk_08DDC72D.bin"
	.4byte gUnk_08DDC708
	.incbin "assets/sounds/gUnk_08DDC72D_1.bin"
	.4byte gUnk_08DDC700
	.incbin "assets/sounds/gUnk_08DDC72D_2.bin"
	.4byte gUnk_08DDC708
	.incbin "assets/sounds/gUnk_08DDC72D_3.bin"
	.4byte gUnk_08DDC700
	.incbin "assets/sounds/gUnk_08DDC72D_4.bin"
	.4byte gUnk_08DDC715
	.incbin "assets/sounds/gUnk_08DDC72D_5.bin"
	.4byte gUnk_08DDC71D
	.incbin "assets/sounds/gUnk_08DDC72D_6.bin"
	.4byte gUnk_08DDC725
	.incbin "assets/sounds/gUnk_08DDC72D_7.bin"
	.4byte gUnk_08DDC72D
	.incbin "assets/sounds/gUnk_08DDC72D_8.bin"
gUnk_08DDC770:: @ 08DDC770
	.incbin "assets/sounds/gUnk_08DDC770.bin"
	.4byte gUnk_08DDC770
	.incbin "assets/sounds/gUnk_08DDC770_1.bin"
	.4byte gUnk_08DDC632
	.incbin "assets/sounds/gUnk_08DDC770_2.bin"
bgmMinishCap_track2:: @ 08DDC86F
	.incbin "assets/sounds/bgmMinishCap_track2.bin"
gUnk_08DDC876:: @ 08DDC876
	.incbin "assets/sounds/gUnk_08DDC876.bin"
gUnk_08DDC87D:: @ 08DDC87D
	.incbin "assets/sounds/gUnk_08DDC87D.bin"
gUnk_08DDC885:: @ 08DDC885
	.incbin "assets/sounds/gUnk_08DDC885.bin"
gUnk_08DDC88D:: @ 08DDC88D
	.incbin "assets/sounds/gUnk_08DDC88D.bin"
	.4byte gUnk_08DDC885
	.incbin "assets/sounds/gUnk_08DDC88D_1.bin"
	.4byte gUnk_08DDC87D
	.incbin "assets/sounds/gUnk_08DDC88D_2.bin"
	.4byte gUnk_08DDC885
	.incbin "assets/sounds/gUnk_08DDC88D_3.bin"
	.4byte gUnk_08DDC88D
	.incbin "assets/sounds/gUnk_08DDC88D_4.bin"
gUnk_08DDC8BA:: @ 08DDC8BA
	.incbin "assets/sounds/gUnk_08DDC8BA.bin"
gUnk_08DDC8C4:: @ 08DDC8C4
	.incbin "assets/sounds/gUnk_08DDC8C4.bin"
	.4byte gUnk_08DDC8C4
gUnk_08DDC8D4:: @ 08DDC8D4
	.incbin "assets/sounds/gUnk_08DDC8D4.bin"
	.4byte gUnk_08DDC8C4
	.incbin "assets/sounds/gUnk_08DDC8D4_1.bin"
	.4byte gUnk_08DDC8BA
	.incbin "assets/sounds/gUnk_08DDC8D4_2.bin"
	.4byte gUnk_08DDC8C4
	.incbin "assets/sounds/gUnk_08DDC8D4_3.bin"
	.4byte gUnk_08DDC8C4
	.incbin "assets/sounds/gUnk_08DDC8D4_4.bin"
	.4byte gUnk_08DDC8D4
	.incbin "assets/sounds/gUnk_08DDC8D4_5.bin"
	.4byte gUnk_08DDC876
	.incbin "assets/sounds/gUnk_08DDC8D4_6.bin"
bgmMinishCap_track3:: @ 08DDC983
	.incbin "assets/sounds/bgmMinishCap_track3.bin"
gUnk_08DDC98A:: @ 08DDC98A
	.incbin "assets/sounds/gUnk_08DDC98A.bin"
gUnk_08DDCA0D:: @ 08DDCA0D
	.incbin "assets/sounds/gUnk_08DDCA0D.bin"
	.4byte gUnk_08DDCA0D
	.incbin "assets/sounds/gUnk_08DDCA0D_1.bin"
gUnk_08DDCA65:: @ 08DDCA65
	.incbin "assets/sounds/gUnk_08DDCA65.bin"
	.4byte gUnk_08DDCA65
	.incbin "assets/sounds/gUnk_08DDCA65_1.bin"
	.4byte gUnk_08DDC98A
	.incbin "assets/sounds/gUnk_08DDCA65_2.bin"
bgmMinishCap_track4:: @ 08DDCAED
	.incbin "assets/sounds/bgmMinishCap_track4.bin"
gUnk_08DDCAF4:: @ 08DDCAF4
	.incbin "assets/sounds/gUnk_08DDCAF4.bin"
gUnk_08DDCAFE:: @ 08DDCAFE
	.incbin "assets/sounds/gUnk_08DDCAFE.bin"
gUnk_08DDCB0B:: @ 08DDCB0B
	.incbin "assets/sounds/gUnk_08DDCB0B.bin"
	.4byte gUnk_08DDCAFE
	.incbin "assets/sounds/gUnk_08DDCB0B_1.bin"
	.4byte gUnk_08DDCB0B
	.incbin "assets/sounds/gUnk_08DDCB0B_2.bin"
gUnk_08DDCB6B:: @ 08DDCB6B
	.incbin "assets/sounds/gUnk_08DDCB6B.bin"
	.4byte gUnk_08DDCB6B
	.incbin "assets/sounds/gUnk_08DDCB6B_1.bin"
gUnk_08DDCBC5:: @ 08DDCBC5
	.incbin "assets/sounds/gUnk_08DDCBC5.bin"
	.4byte gUnk_08DDCBC5
	.incbin "assets/sounds/gUnk_08DDCBC5_1.bin"
	.4byte gUnk_08DDCBC5
	.incbin "assets/sounds/gUnk_08DDCBC5_2.bin"
	.4byte gUnk_08DDCAF4
	.incbin "assets/sounds/gUnk_08DDCBC5_3.bin"
bgmMinishCap_track5:: @ 08DDCCA6
	.incbin "assets/sounds/bgmMinishCap_track5.bin"
gUnk_08DDCCB0:: @ 08DDCCB0
	.incbin "assets/sounds/gUnk_08DDCCB0.bin"
gUnk_08DDCCB7:: @ 08DDCCB7
	.incbin "assets/sounds/gUnk_08DDCCB7.bin"
gUnk_08DDCCC1:: @ 08DDCCC1
	.incbin "assets/sounds/gUnk_08DDCCC1.bin"
gUnk_08DDCCCA:: @ 08DDCCCA
	.incbin "assets/sounds/gUnk_08DDCCCA.bin"
	.4byte gUnk_08DDCCC1
	.incbin "assets/sounds/gUnk_08DDCCCA_1.bin"
	.4byte gUnk_08DDCCB7
	.incbin "assets/sounds/gUnk_08DDCCCA_2.bin"
	.4byte gUnk_08DDCCC1
	.incbin "assets/sounds/gUnk_08DDCCCA_3.bin"
	.4byte gUnk_08DDCCCA
	.incbin "assets/sounds/gUnk_08DDCCCA_4.bin"
gUnk_08DDCCF9:: @ 08DDCCF9
	.incbin "assets/sounds/gUnk_08DDCCF9.bin"
	.4byte gUnk_08DDCCF9
	.incbin "assets/sounds/gUnk_08DDCCF9_1.bin"
gUnk_08DDCD53:: @ 08DDCD53
	.incbin "assets/sounds/gUnk_08DDCD53.bin"
gUnk_08DDCD5E:: @ 08DDCD5E
	.incbin "assets/sounds/gUnk_08DDCD5E.bin"
gUnk_08DDCD67:: @ 08DDCD67
	.incbin "assets/sounds/gUnk_08DDCD67.bin"
	.4byte gUnk_08DDCD5E
gUnk_08DDCD73:: @ 08DDCD73
	.incbin "assets/sounds/gUnk_08DDCD73.bin"
	.4byte gUnk_08DDCD67
	.incbin "assets/sounds/gUnk_08DDCD73_1.bin"
	.4byte gUnk_08DDCD5E
	.incbin "assets/sounds/gUnk_08DDCD73_2.bin"
	.4byte gUnk_08DDCD53
	.incbin "assets/sounds/gUnk_08DDCD73_3.bin"
	.4byte gUnk_08DDCD5E
	.incbin "assets/sounds/gUnk_08DDCD73_4.bin"
	.4byte gUnk_08DDCD67
	.incbin "assets/sounds/gUnk_08DDCD73_5.bin"
	.4byte gUnk_08DDCD5E
	.incbin "assets/sounds/gUnk_08DDCD73_6.bin"
	.4byte gUnk_08DDCD73
	.incbin "assets/sounds/gUnk_08DDCD73_7.bin"
	.4byte gUnk_08DDCCB0
	.incbin "assets/sounds/gUnk_08DDCD73_8.bin"
bgmMinishCap_track6:: @ 08DDCE8A
	.incbin "assets/sounds/bgmMinishCap_track6.bin"
gUnk_08DDCE91:: @ 08DDCE91
	.incbin "assets/sounds/gUnk_08DDCE91.bin"
gUnk_08DDCE99:: @ 08DDCE99
	.incbin "assets/sounds/gUnk_08DDCE99.bin"
gUnk_08DDCEA2:: @ 08DDCEA2
	.incbin "assets/sounds/gUnk_08DDCEA2.bin"
	.4byte gUnk_08DDCE99
	.incbin "assets/sounds/gUnk_08DDCEA2_1.bin"
	.4byte gUnk_08DDCEA2
	.incbin "assets/sounds/gUnk_08DDCEA2_2.bin"
	.4byte gUnk_08DDCE99
	.incbin "assets/sounds/gUnk_08DDCEA2_3.bin"
	.4byte gUnk_08DDCEA2
	.incbin "assets/sounds/gUnk_08DDCEA2_4.bin"
	.4byte gUnk_08DDCE99
	.incbin "assets/sounds/gUnk_08DDCEA2_5.bin"
	.4byte gUnk_08DDCE91
	.incbin "assets/sounds/gUnk_08DDCEA2_6.bin"
bgmMinishCap:: @ 08DDCF28
	sound_header 7 0 0 0xb2 gUnk_08A0D544 bgmMinishCap_track0 bgmMinishCap_track1 bgmMinishCap_track2 bgmMinishCap_track3 bgmMinishCap_track4 bgmMinishCap_track5 bgmMinishCap_track6

bgmMtCrenel_track0:: @ 08DDCF4C
	.incbin "assets/sounds/bgmMtCrenel_track0.bin"
gUnk_08DDCF5B:: @ 08DDCF5B
	.incbin "assets/sounds/gUnk_08DDCF5B.bin"
	.4byte gUnk_08DDCF5B
	.incbin "assets/sounds/gUnk_08DDCF5B_1.bin"
bgmMtCrenel_track1:: @ 08DDD037
	.incbin "assets/sounds/bgmMtCrenel_track1.bin"
gUnk_08DDD04D:: @ 08DDD04D
	.incbin "assets/sounds/gUnk_08DDD04D.bin"
gUnk_08DDD05D:: @ 08DDD05D
	.incbin "assets/sounds/gUnk_08DDD05D.bin"
	.4byte gUnk_08DDD05D
gUnk_08DDD072:: @ 08DDD072
	.incbin "assets/sounds/gUnk_08DDD072.bin"
gUnk_08DDD089:: @ 08DDD089
	.incbin "assets/sounds/gUnk_08DDD089.bin"
	.4byte gUnk_08DDD089
	.incbin "assets/sounds/gUnk_08DDD089_1.bin"
	.4byte gUnk_08DDD089
	.incbin "assets/sounds/gUnk_08DDD089_2.bin"
	.4byte gUnk_08DDD089
	.incbin "assets/sounds/gUnk_08DDD089_3.bin"
	.4byte gUnk_08DDD089
	.incbin "assets/sounds/gUnk_08DDD089_4.bin"
	.4byte gUnk_08DDD089
	.incbin "assets/sounds/gUnk_08DDD089_5.bin"
	.4byte gUnk_08DDD089
	.incbin "assets/sounds/gUnk_08DDD089_6.bin"
	.4byte gUnk_08DDD04D
	.incbin "assets/sounds/gUnk_08DDD089_7.bin"
	.4byte gUnk_08DDD04D
	.incbin "assets/sounds/gUnk_08DDD089_8.bin"
	.4byte gUnk_08DDD05D
	.incbin "assets/sounds/gUnk_08DDD089_9.bin"
	.4byte gUnk_08DDD05D
	.incbin "assets/sounds/gUnk_08DDD089_10.bin"
	.4byte gUnk_08DDD04D
	.incbin "assets/sounds/gUnk_08DDD089_11.bin"
	.4byte gUnk_08DDD04D
	.incbin "assets/sounds/gUnk_08DDD089_12.bin"
	.4byte gUnk_08DDD04D
	.incbin "assets/sounds/gUnk_08DDD089_13.bin"
	.4byte gUnk_08DDD072
	.incbin "assets/sounds/gUnk_08DDD089_14.bin"
bgmMtCrenel_track2:: @ 08DDD111
	.incbin "assets/sounds/bgmMtCrenel_track2.bin"
gUnk_08DDD122:: @ 08DDD122
	.incbin "assets/sounds/gUnk_08DDD122.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD122_1.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD122_2.bin"
gUnk_08DDD138:: @ 08DDD138
	.incbin "assets/sounds/gUnk_08DDD138.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_1.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_2.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_3.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_4.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_5.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_6.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_7.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_8.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_9.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_10.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_11.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_12.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_13.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_14.bin"
	.4byte gUnk_08DDD122
	.incbin "assets/sounds/gUnk_08DDD138_15.bin"
	.4byte gUnk_08DDD138
	.incbin "assets/sounds/gUnk_08DDD138_16.bin"
bgmMtCrenel_track3:: @ 08DDD196
	.incbin "assets/sounds/bgmMtCrenel_track3.bin"
gUnk_08DDD1A6:: @ 08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1A6.bin"
gUnk_08DDD1B0:: @ 08DDD1B0
	.incbin "assets/sounds/gUnk_08DDD1B0.bin"
	.4byte gUnk_08DDD1B0
gUnk_08DDD1BF:: @ 08DDD1BF
	.incbin "assets/sounds/gUnk_08DDD1BF.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1BF_1.bin"
	.4byte gUnk_08DDD1B0
	.incbin "assets/sounds/gUnk_08DDD1BF_2.bin"
	.4byte gUnk_08DDD1B0
	.incbin "assets/sounds/gUnk_08DDD1BF_3.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1BF_4.bin"
	.4byte gUnk_08DDD1A6
gUnk_08DDD1E1:: @ 08DDD1E1
	.incbin "assets/sounds/gUnk_08DDD1E1.bin"
	.4byte gUnk_08DDD1E1
	.incbin "assets/sounds/gUnk_08DDD1E1_1.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1E1_2.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1E1_3.bin"
	.4byte gUnk_08DDD1B0
	.incbin "assets/sounds/gUnk_08DDD1E1_4.bin"
	.4byte gUnk_08DDD1B0
	.incbin "assets/sounds/gUnk_08DDD1E1_5.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1E1_6.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1E1_7.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1E1_8.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1E1_9.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1E1_10.bin"
	.4byte gUnk_08DDD1A6
	.incbin "assets/sounds/gUnk_08DDD1E1_11.bin"
	.4byte gUnk_08DDD1BF
	.incbin "assets/sounds/gUnk_08DDD1E1_12.bin"
bgmMtCrenel_track4:: @ 08DDD234
	.incbin "assets/sounds/bgmMtCrenel_track4.bin"
gUnk_08DDD23F:: @ 08DDD23F
	.incbin "assets/sounds/gUnk_08DDD23F.bin"
	.4byte gUnk_08DDD23F
	.incbin "assets/sounds/gUnk_08DDD23F_1.bin"
bgmMtCrenel_track5:: @ 08DDD33E
	.incbin "assets/sounds/bgmMtCrenel_track5.bin"
gUnk_08DDD35D:: @ 08DDD35D
	.incbin "assets/sounds/gUnk_08DDD35D.bin"
gUnk_08DDD380:: @ 08DDD380
	.incbin "assets/sounds/gUnk_08DDD380.bin"
	.4byte gUnk_08DDD35D
gUnk_08DDD39E:: @ 08DDD39E
	.incbin "assets/sounds/gUnk_08DDD39E.bin"
	.4byte gUnk_08DDD35D
	.incbin "assets/sounds/gUnk_08DDD39E_1.bin"
	.4byte gUnk_08DDD380
	.incbin "assets/sounds/gUnk_08DDD39E_2.bin"
	.4byte gUnk_08DDD35D
	.incbin "assets/sounds/gUnk_08DDD39E_3.bin"
	.4byte gUnk_08DDD380
	.incbin "assets/sounds/gUnk_08DDD39E_4.bin"
	.4byte gUnk_08DDD35D
	.incbin "assets/sounds/gUnk_08DDD39E_5.bin"
	.4byte gUnk_08DDD380
	.incbin "assets/sounds/gUnk_08DDD39E_6.bin"
	.4byte gUnk_08DDD35D
	.incbin "assets/sounds/gUnk_08DDD39E_7.bin"
	.4byte gUnk_08DDD380
gUnk_08DDD3DE:: @ 08DDD3DE
	.incbin "assets/sounds/gUnk_08DDD3DE.bin"
	.4byte gUnk_08DDD380
	.incbin "assets/sounds/gUnk_08DDD3DE_1.bin"
	.4byte gUnk_08DDD3DE
	.incbin "assets/sounds/gUnk_08DDD3DE_2.bin"
	.4byte gUnk_08DDD380
	.incbin "assets/sounds/gUnk_08DDD3DE_3.bin"
	.4byte gUnk_08DDD35D
	.incbin "assets/sounds/gUnk_08DDD3DE_4.bin"
	.4byte gUnk_08DDD380
	.incbin "assets/sounds/gUnk_08DDD3DE_5.bin"
	.4byte gUnk_08DDD35D
	.incbin "assets/sounds/gUnk_08DDD3DE_6.bin"
	.4byte gUnk_08DDD35D
	.incbin "assets/sounds/gUnk_08DDD3DE_7.bin"
	.4byte gUnk_08DDD39E
	.incbin "assets/sounds/gUnk_08DDD3DE_8.bin"
bgmMtCrenel_track6:: @ 08DDD454
	.incbin "assets/sounds/bgmMtCrenel_track6.bin"
gUnk_08DDD470:: @ 08DDD470
	.incbin "assets/sounds/gUnk_08DDD470.bin"
gUnk_08DDD47D:: @ 08DDD47D
	.incbin "assets/sounds/gUnk_08DDD47D.bin"
gUnk_08DDD48B:: @ 08DDD48B
	.incbin "assets/sounds/gUnk_08DDD48B.bin"
gUnk_08DDD4A1:: @ 08DDD4A1
	.incbin "assets/sounds/gUnk_08DDD4A1.bin"
	.4byte gUnk_08DDD470
	.incbin "assets/sounds/gUnk_08DDD4A1_1.bin"
	.4byte gUnk_08DDD47D
	.incbin "assets/sounds/gUnk_08DDD4A1_2.bin"
	.4byte gUnk_08DDD48B
	.incbin "assets/sounds/gUnk_08DDD4A1_3.bin"
	.4byte gUnk_08DDD4A1
	.incbin "assets/sounds/gUnk_08DDD4A1_4.bin"
bgmMtCrenel:: @ 08DDD510
	sound_header 7 0 0 0xb2 gUnk_08A0DB44 bgmMtCrenel_track0 bgmMtCrenel_track1 bgmMtCrenel_track2 bgmMtCrenel_track3 bgmMtCrenel_track4 bgmMtCrenel_track5 bgmMtCrenel_track6

bgmPicoriFestival_track0:: @ 08DDD534
	.incbin "assets/sounds/bgmPicoriFestival_track0.bin"
gUnk_08DDD53C:: @ 08DDD53C
	.incbin "assets/sounds/gUnk_08DDD53C.bin"
gUnk_08DDD553:: @ 08DDD553
	.incbin "assets/sounds/gUnk_08DDD553.bin"
gUnk_08DDD57F:: @ 08DDD57F
	.incbin "assets/sounds/gUnk_08DDD57F.bin"
gUnk_08DDD58F:: @ 08DDD58F
	.incbin "assets/sounds/gUnk_08DDD58F.bin"
	.4byte gUnk_08DDD553
	.incbin "assets/sounds/gUnk_08DDD58F_1.bin"
	.4byte gUnk_08DDD58F
	.incbin "assets/sounds/gUnk_08DDD58F_2.bin"
	.4byte gUnk_08DDD57F
	.incbin "assets/sounds/gUnk_08DDD58F_3.bin"
	.4byte gUnk_08DDD53C
	.incbin "assets/sounds/gUnk_08DDD58F_4.bin"
bgmPicoriFestival_track1:: @ 08DDD624
	.incbin "assets/sounds/bgmPicoriFestival_track1.bin"
gUnk_08DDD62D:: @ 08DDD62D
	.incbin "assets/sounds/gUnk_08DDD62D.bin"
gUnk_08DDD644:: @ 08DDD644
	.incbin "assets/sounds/gUnk_08DDD644.bin"
gUnk_08DDD672:: @ 08DDD672
	.incbin "assets/sounds/gUnk_08DDD672.bin"
gUnk_08DDD684:: @ 08DDD684
	.incbin "assets/sounds/gUnk_08DDD684.bin"
	.4byte gUnk_08DDD644
	.incbin "assets/sounds/gUnk_08DDD684_1.bin"
	.4byte gUnk_08DDD684
	.incbin "assets/sounds/gUnk_08DDD684_2.bin"
	.4byte gUnk_08DDD672
	.incbin "assets/sounds/gUnk_08DDD684_3.bin"
	.4byte gUnk_08DDD62D
	.incbin "assets/sounds/gUnk_08DDD684_4.bin"
bgmPicoriFestival_track2:: @ 08DDD71F
	.incbin "assets/sounds/bgmPicoriFestival_track2.bin"
gUnk_08DDD725:: @ 08DDD725
	.incbin "assets/sounds/gUnk_08DDD725.bin"
gUnk_08DDD733:: @ 08DDD733
	.incbin "assets/sounds/gUnk_08DDD733.bin"
	.4byte gUnk_08DDD733
	.incbin "assets/sounds/gUnk_08DDD733_1.bin"
	.4byte gUnk_08DDD725
	.incbin "assets/sounds/gUnk_08DDD733_2.bin"
bgmPicoriFestival_track3:: @ 08DDD7AC
	.incbin "assets/sounds/bgmPicoriFestival_track3.bin"
gUnk_08DDD7B2:: @ 08DDD7B2
	.incbin "assets/sounds/gUnk_08DDD7B2.bin"
gUnk_08DDD7EA:: @ 08DDD7EA
	.incbin "assets/sounds/gUnk_08DDD7EA.bin"
gUnk_08DDD821:: @ 08DDD821
	.incbin "assets/sounds/gUnk_08DDD821.bin"
gUnk_08DDD85A:: @ 08DDD85A
	.incbin "assets/sounds/gUnk_08DDD85A.bin"
	.4byte gUnk_08DDD821
	.incbin "assets/sounds/gUnk_08DDD85A_1.bin"
	.4byte gUnk_08DDD7EA
	.incbin "assets/sounds/gUnk_08DDD85A_2.bin"
	.4byte gUnk_08DDD821
	.incbin "assets/sounds/gUnk_08DDD85A_3.bin"
	.4byte gUnk_08DDD85A
gUnk_08DDD8A4:: @ 08DDD8A4
	.incbin "assets/sounds/gUnk_08DDD8A4.bin"
	.4byte gUnk_08DDD8A4
	.incbin "assets/sounds/gUnk_08DDD8A4_1.bin"
	.4byte gUnk_08DDD7B2
	.incbin "assets/sounds/gUnk_08DDD8A4_2.bin"
bgmPicoriFestival_track4:: @ 08DDD955
	.incbin "assets/sounds/bgmPicoriFestival_track4.bin"
gUnk_08DDD95B:: @ 08DDD95B
	.incbin "assets/sounds/gUnk_08DDD95B.bin"
	.4byte gUnk_08DDD95B
	.incbin "assets/sounds/gUnk_08DDD95B_1.bin"
bgmPicoriFestival_track5:: @ 08DDD99B
	.incbin "assets/sounds/bgmPicoriFestival_track5.bin"
gUnk_08DDD9A1:: @ 08DDD9A1
	.incbin "assets/sounds/gUnk_08DDD9A1.bin"
gUnk_08DDD9A9:: @ 08DDD9A9
	.incbin "assets/sounds/gUnk_08DDD9A9.bin"
	.4byte gUnk_08DDD9A9
	.incbin "assets/sounds/gUnk_08DDD9A9_1.bin"
	.4byte gUnk_08DDD9A1
	.incbin "assets/sounds/gUnk_08DDD9A9_2.bin"
bgmPicoriFestival_track6:: @ 08DDD9C8
	.incbin "assets/sounds/bgmPicoriFestival_track6.bin"
gUnk_08DDD9CE:: @ 08DDD9CE
	.incbin "assets/sounds/gUnk_08DDD9CE.bin"
gUnk_08DDD9DF:: @ 08DDD9DF
	.incbin "assets/sounds/gUnk_08DDD9DF.bin"
gUnk_08DDD9ED:: @ 08DDD9ED
	.incbin "assets/sounds/gUnk_08DDD9ED.bin"
gUnk_08DDD9FE:: @ 08DDD9FE
	.incbin "assets/sounds/gUnk_08DDD9FE.bin"
gUnk_08DDDA0B:: @ 08DDDA0B
	.incbin "assets/sounds/gUnk_08DDDA0B.bin"
	.4byte gUnk_08DDD9DF
	.incbin "assets/sounds/gUnk_08DDDA0B_1.bin"
	.4byte gUnk_08DDD9ED
	.incbin "assets/sounds/gUnk_08DDDA0B_2.bin"
	.4byte gUnk_08DDD9FE
	.incbin "assets/sounds/gUnk_08DDDA0B_3.bin"
	.4byte gUnk_08DDDA0B
	.incbin "assets/sounds/gUnk_08DDDA0B_4.bin"
	.4byte gUnk_08DDDA0B
	.incbin "assets/sounds/gUnk_08DDDA0B_5.bin"
	.4byte gUnk_08DDD9ED
	.incbin "assets/sounds/gUnk_08DDDA0B_6.bin"
	.4byte gUnk_08DDD9CE
	.incbin "assets/sounds/gUnk_08DDDA0B_7.bin"
bgmPicoriFestival:: @ 08DDDA50
	sound_header 7 0 0 0x9e gUnk_08A0E144 bgmPicoriFestival_track0 bgmPicoriFestival_track1 bgmPicoriFestival_track2 bgmPicoriFestival_track3 bgmPicoriFestival_track4 bgmPicoriFestival_track5 bgmPicoriFestival_track6

bgmLostWoods_track0:: @ 08DDDA74
	.incbin "assets/sounds/bgmLostWoods_track0.bin"
gUnk_08DDDA95:: @ 08DDDA95
	.incbin "assets/sounds/gUnk_08DDDA95.bin"
	.4byte gUnk_08DDDA95
	.incbin "assets/sounds/gUnk_08DDDA95_1.bin"
gUnk_08DDDB12:: @ 08DDDB12
	.incbin "assets/sounds/gUnk_08DDDB12.bin"
gUnk_08DDDB22:: @ 08DDDB22
	.incbin "assets/sounds/gUnk_08DDDB22.bin"
	.4byte gUnk_08DDDB22
	.incbin "assets/sounds/gUnk_08DDDB22_1.bin"
	.4byte gUnk_08DDDB12
	.incbin "assets/sounds/gUnk_08DDDB22_2.bin"
gUnk_08DDDBB2:: @ 08DDDBB2
	.incbin "assets/sounds/gUnk_08DDDBB2.bin"
	.4byte gUnk_08DDDBB2
	.incbin "assets/sounds/gUnk_08DDDBB2_1.bin"
gUnk_08DDDC6D:: @ 08DDDC6D
	.incbin "assets/sounds/gUnk_08DDDC6D.bin"
	.4byte gUnk_08DDDC6D
	.incbin "assets/sounds/gUnk_08DDDC6D_1.bin"
gUnk_08DDDCDA:: @ 08DDDCDA
	.incbin "assets/sounds/gUnk_08DDDCDA.bin"
	.4byte gUnk_08DDDCDA
	.incbin "assets/sounds/gUnk_08DDDCDA_1.bin"
bgmLostWoods_track1:: @ 08DDDCF9
	.incbin "assets/sounds/bgmLostWoods_track1.bin"
gUnk_08DDDD01:: @ 08DDDD01
	.incbin "assets/sounds/gUnk_08DDDD01.bin"
	.4byte gUnk_08DDDD01
gUnk_08DDDD0D:: @ 08DDDD0D
	.incbin "assets/sounds/gUnk_08DDDD0D.bin"
	.4byte gUnk_08DDDD0D
	.incbin "assets/sounds/gUnk_08DDDD0D_1.bin"
	.4byte gUnk_08DDDD01
	.incbin "assets/sounds/gUnk_08DDDD0D_2.bin"
	.4byte gUnk_08DDDD01
	.incbin "assets/sounds/gUnk_08DDDD0D_3.bin"
	.4byte gUnk_08DDDD0D
	.incbin "assets/sounds/gUnk_08DDDD0D_4.bin"
	.4byte gUnk_08DDDD0D
gUnk_08DDDD2D:: @ 08DDDD2D
	.incbin "assets/sounds/gUnk_08DDDD2D.bin"
gUnk_08DDDD39:: @ 08DDDD39
	.incbin "assets/sounds/gUnk_08DDDD39.bin"
	.4byte gUnk_08DDDD2D
	.incbin "assets/sounds/gUnk_08DDDD39_1.bin"
	.4byte gUnk_08DDDD39
	.incbin "assets/sounds/gUnk_08DDDD39_2.bin"
	.4byte gUnk_08DDDD2D
	.incbin "assets/sounds/gUnk_08DDDD39_3.bin"
	.4byte gUnk_08DDDD39
	.incbin "assets/sounds/gUnk_08DDDD39_4.bin"
	.4byte gUnk_08DDDD01
	.incbin "assets/sounds/gUnk_08DDDD39_5.bin"
	.4byte gUnk_08DDDD01
	.incbin "assets/sounds/gUnk_08DDDD39_6.bin"
	.4byte gUnk_08DDDD0D
	.incbin "assets/sounds/gUnk_08DDDD39_7.bin"
	.4byte gUnk_08DDDD0D
	.incbin "assets/sounds/gUnk_08DDDD39_8.bin"
	.4byte gUnk_08DDDD01
	.incbin "assets/sounds/gUnk_08DDDD39_9.bin"
	.4byte gUnk_08DDDD01
	.incbin "assets/sounds/gUnk_08DDDD39_10.bin"
	.4byte gUnk_08DDDD0D
	.incbin "assets/sounds/gUnk_08DDDD39_11.bin"
	.4byte gUnk_08DDDD0D
gUnk_08DDDDAA:: @ 08DDDDAA
	.incbin "assets/sounds/gUnk_08DDDDAA.bin"
gUnk_08DDDDBF:: @ 08DDDDBF
	.incbin "assets/sounds/gUnk_08DDDDBF.bin"
	.4byte gUnk_08DDDDAA
	.incbin "assets/sounds/gUnk_08DDDDBF_1.bin"
	.4byte gUnk_08DDDDBF
	.incbin "assets/sounds/gUnk_08DDDDBF_2.bin"
bgmLostWoods_track2:: @ 08DDDDE5
	.incbin "assets/sounds/bgmLostWoods_track2.bin"
gUnk_08DDDDED:: @ 08DDDDED
	.incbin "assets/sounds/gUnk_08DDDDED.bin"
	.4byte gUnk_08DDDDED
gUnk_08DDDE28:: @ 08DDDE28
	.incbin "assets/sounds/gUnk_08DDDE28.bin"
	.4byte gUnk_08DDDE28
	.incbin "assets/sounds/gUnk_08DDDE28_1.bin"
	.4byte gUnk_08DDDDED
	.incbin "assets/sounds/gUnk_08DDDE28_2.bin"
	.4byte gUnk_08DDDDED
	.incbin "assets/sounds/gUnk_08DDDE28_3.bin"
	.4byte gUnk_08DDDE28
	.incbin "assets/sounds/gUnk_08DDDE28_4.bin"
	.4byte gUnk_08DDDE28
gUnk_08DDDE70:: @ 08DDDE70
	.incbin "assets/sounds/gUnk_08DDDE70.bin"
gUnk_08DDDE7E:: @ 08DDDE7E
	.incbin "assets/sounds/gUnk_08DDDE7E.bin"
gUnk_08DDDE8A:: @ 08DDDE8A
	.incbin "assets/sounds/gUnk_08DDDE8A.bin"
	.4byte gUnk_08DDDE7E
	.incbin "assets/sounds/gUnk_08DDDE8A_1.bin"
	.4byte gUnk_08DDDE8A
	.incbin "assets/sounds/gUnk_08DDDE8A_2.bin"
	.4byte gUnk_08DDDE7E
	.incbin "assets/sounds/gUnk_08DDDE8A_3.bin"
	.4byte gUnk_08DDDDED
	.incbin "assets/sounds/gUnk_08DDDE8A_4.bin"
	.4byte gUnk_08DDDE28
	.incbin "assets/sounds/gUnk_08DDDE8A_5.bin"
	.4byte gUnk_08DDDE28
	.incbin "assets/sounds/gUnk_08DDDE8A_6.bin"
	.4byte gUnk_08DDDDED
	.incbin "assets/sounds/gUnk_08DDDE8A_7.bin"
	.4byte gUnk_08DDDDED
	.incbin "assets/sounds/gUnk_08DDDE8A_8.bin"
	.4byte gUnk_08DDDE28
	.incbin "assets/sounds/gUnk_08DDDE8A_9.bin"
	.4byte gUnk_08DDDE28
	.incbin "assets/sounds/gUnk_08DDDE8A_10.bin"
	.4byte gUnk_08DDDE70
	.incbin "assets/sounds/gUnk_08DDDE8A_11.bin"
	.4byte gUnk_08DDDE7E
	.incbin "assets/sounds/gUnk_08DDDE8A_12.bin"
	.4byte gUnk_08DDDE8A
	.incbin "assets/sounds/gUnk_08DDDE8A_13.bin"
	.4byte gUnk_08DDDE7E
	.incbin "assets/sounds/gUnk_08DDDE8A_14.bin"
gUnk_08DDDF58:: @ 08DDDF58
	.incbin "assets/sounds/gUnk_08DDDF58.bin"
	.4byte gUnk_08DDDF58
	.incbin "assets/sounds/gUnk_08DDDF58_1.bin"
bgmLostWoods_track3:: @ 08DDDF73
	.incbin "assets/sounds/bgmLostWoods_track3.bin"
gUnk_08DDE002:: @ 08DDE002
	.incbin "assets/sounds/gUnk_08DDE002.bin"
	.4byte gUnk_08DDE002
	.incbin "assets/sounds/gUnk_08DDE002_1.bin"
bgmLostWoods_track4:: @ 08DDE019
	.incbin "assets/sounds/bgmLostWoods_track4.bin"
gUnk_08DDE039:: @ 08DDE039
	.incbin "assets/sounds/gUnk_08DDE039.bin"
	.4byte gUnk_08DDE039
	.incbin "assets/sounds/gUnk_08DDE039_1.bin"
gUnk_08DDE0BF:: @ 08DDE0BF
	.incbin "assets/sounds/gUnk_08DDE0BF.bin"
gUnk_08DDE0D1:: @ 08DDE0D1
	.incbin "assets/sounds/gUnk_08DDE0D1.bin"
	.4byte gUnk_08DDE0D1
	.incbin "assets/sounds/gUnk_08DDE0D1_1.bin"
	.4byte gUnk_08DDE0BF
	.incbin "assets/sounds/gUnk_08DDE0D1_2.bin"
gUnk_08DDE163:: @ 08DDE163
	.incbin "assets/sounds/gUnk_08DDE163.bin"
	.4byte gUnk_08DDE163
	.incbin "assets/sounds/gUnk_08DDE163_1.bin"
bgmLostWoods_track5:: @ 08DDE182
	.incbin "assets/sounds/bgmLostWoods_track5.bin"
gUnk_08DDE18A:: @ 08DDE18A
	.incbin "assets/sounds/gUnk_08DDE18A.bin"
	.4byte gUnk_08DDE18A
gUnk_08DDE19F:: @ 08DDE19F
	.incbin "assets/sounds/gUnk_08DDE19F.bin"
	.4byte gUnk_08DDE19F
	.incbin "assets/sounds/gUnk_08DDE19F_1.bin"
	.4byte gUnk_08DDE18A
	.incbin "assets/sounds/gUnk_08DDE19F_2.bin"
	.4byte gUnk_08DDE18A
	.incbin "assets/sounds/gUnk_08DDE19F_3.bin"
	.4byte gUnk_08DDE19F
	.incbin "assets/sounds/gUnk_08DDE19F_4.bin"
	.4byte gUnk_08DDE19F
gUnk_08DDE1CE:: @ 08DDE1CE
	.incbin "assets/sounds/gUnk_08DDE1CE.bin"
gUnk_08DDE1E9:: @ 08DDE1E9
	.incbin "assets/sounds/gUnk_08DDE1E9.bin"
	.4byte gUnk_08DDE1CE
	.incbin "assets/sounds/gUnk_08DDE1E9_1.bin"
	.4byte gUnk_08DDE1E9
	.incbin "assets/sounds/gUnk_08DDE1E9_2.bin"
	.4byte gUnk_08DDE1CE
	.incbin "assets/sounds/gUnk_08DDE1E9_3.bin"
	.4byte gUnk_08DDE1E9
	.incbin "assets/sounds/gUnk_08DDE1E9_4.bin"
	.4byte gUnk_08DDE18A
	.incbin "assets/sounds/gUnk_08DDE1E9_5.bin"
	.4byte gUnk_08DDE18A
	.incbin "assets/sounds/gUnk_08DDE1E9_6.bin"
	.4byte gUnk_08DDE19F
	.incbin "assets/sounds/gUnk_08DDE1E9_7.bin"
	.4byte gUnk_08DDE19F
	.incbin "assets/sounds/gUnk_08DDE1E9_8.bin"
	.4byte gUnk_08DDE18A
	.incbin "assets/sounds/gUnk_08DDE1E9_9.bin"
	.4byte gUnk_08DDE18A
	.incbin "assets/sounds/gUnk_08DDE1E9_10.bin"
	.4byte gUnk_08DDE19F
	.incbin "assets/sounds/gUnk_08DDE1E9_11.bin"
	.4byte gUnk_08DDE19F
	.incbin "assets/sounds/gUnk_08DDE1E9_12.bin"
bgmLostWoods_track6:: @ 08DDE283
	.incbin "assets/sounds/bgmLostWoods_track6.bin"
gUnk_08DDE2D2:: @ 08DDE2D2
	.incbin "assets/sounds/gUnk_08DDE2D2.bin"
gUnk_08DDE2F5:: @ 08DDE2F5
	.incbin "assets/sounds/gUnk_08DDE2F5.bin"
	.4byte gUnk_08DDE2D2
	.incbin "assets/sounds/gUnk_08DDE2F5_1.bin"
	.4byte gUnk_08DDE2F5
	.incbin "assets/sounds/gUnk_08DDE2F5_2.bin"
	.4byte gUnk_08DDE2D2
	.incbin "assets/sounds/gUnk_08DDE2F5_3.bin"
	.4byte gUnk_08DDE2F5
	.incbin "assets/sounds/gUnk_08DDE2F5_4.bin"
	.4byte gUnk_08DDE2D2
gUnk_08DDE332:: @ 08DDE332
	.incbin "assets/sounds/gUnk_08DDE332.bin"
	.4byte gUnk_08DDE332
	.incbin "assets/sounds/gUnk_08DDE332_1.bin"
	.4byte gUnk_08DDE332
	.incbin "assets/sounds/gUnk_08DDE332_2.bin"
	.4byte gUnk_08DDE332
gUnk_08DDE36E:: @ 08DDE36E
	.incbin "assets/sounds/gUnk_08DDE36E.bin"
	.4byte gUnk_08DDE36E
gUnk_08DDE3A6:: @ 08DDE3A6
	.incbin "assets/sounds/gUnk_08DDE3A6.bin"
	.4byte gUnk_08DDE3A6
	.incbin "assets/sounds/gUnk_08DDE3A6_1.bin"
	.4byte gUnk_08DDE332
	.incbin "assets/sounds/gUnk_08DDE3A6_2.bin"
	.4byte gUnk_08DDE2F5
	.incbin "assets/sounds/gUnk_08DDE3A6_3.bin"
	.4byte gUnk_08DDE2D2
	.incbin "assets/sounds/gUnk_08DDE3A6_4.bin"
	.4byte gUnk_08DDE2F5
	.incbin "assets/sounds/gUnk_08DDE3A6_5.bin"
	.4byte gUnk_08DDE2D2
	.incbin "assets/sounds/gUnk_08DDE3A6_6.bin"
	.4byte gUnk_08DDE2F5
	.incbin "assets/sounds/gUnk_08DDE3A6_7.bin"
	.4byte gUnk_08DDE2D2
	.incbin "assets/sounds/gUnk_08DDE3A6_8.bin"
	.4byte gUnk_08DDE2F5
	.incbin "assets/sounds/gUnk_08DDE3A6_9.bin"
	.4byte gUnk_08DDE2D2
	.incbin "assets/sounds/gUnk_08DDE3A6_10.bin"
bgmLostWoods:: @ 08DDE4E4
	sound_header 7 0 0 0x9e gUnk_08A0E744 bgmLostWoods_track0 bgmLostWoods_track1 bgmLostWoods_track2 bgmLostWoods_track3 bgmLostWoods_track4 bgmLostWoods_track5 bgmLostWoods_track6

bgmFairyFountain2_track0:: @ 08DDE508
	.incbin "assets/sounds/bgmFairyFountain2_track0.bin"
gUnk_08DDE513:: @ 08DDE513
	.incbin "assets/sounds/gUnk_08DDE513.bin"
gUnk_08DDE519:: @ 08DDE519
	.incbin "assets/sounds/gUnk_08DDE519.bin"
gUnk_08DDE528:: @ 08DDE528
	.incbin "assets/sounds/gUnk_08DDE528.bin"
gUnk_08DDE53B:: @ 08DDE53B
	.incbin "assets/sounds/gUnk_08DDE53B.bin"
	.4byte gUnk_08DDE519
	.incbin "assets/sounds/gUnk_08DDE53B_1.bin"
	.4byte gUnk_08DDE53B
	.incbin "assets/sounds/gUnk_08DDE53B_2.bin"
	.4byte gUnk_08DDE528
	.incbin "assets/sounds/gUnk_08DDE53B_3.bin"
	.4byte gUnk_08DDE513
	.incbin "assets/sounds/gUnk_08DDE53B_4.bin"
bgmFairyFountain2_track1:: @ 08DDE569
	.incbin "assets/sounds/bgmFairyFountain2_track1.bin"
gUnk_08DDE570:: @ 08DDE570
	.incbin "assets/sounds/gUnk_08DDE570.bin"
	.4byte gUnk_08DDE570
	.incbin "assets/sounds/gUnk_08DDE570_1.bin"
bgmFairyFountain2_track2:: @ 08DDE5D8
	.incbin "assets/sounds/bgmFairyFountain2_track2.bin"
gUnk_08DDE5DF:: @ 08DDE5DF
	.incbin "assets/sounds/gUnk_08DDE5DF.bin"
	.4byte gUnk_08DDE5DF
	.incbin "assets/sounds/gUnk_08DDE5DF_1.bin"
bgmFairyFountain2_track3:: @ 08DDE606
	.incbin "assets/sounds/bgmFairyFountain2_track3.bin"
gUnk_08DDE60D:: @ 08DDE60D
	.incbin "assets/sounds/gUnk_08DDE60D.bin"
gUnk_08DDE613:: @ 08DDE613
	.incbin "assets/sounds/gUnk_08DDE613.bin"
gUnk_08DDE622:: @ 08DDE622
	.incbin "assets/sounds/gUnk_08DDE622.bin"
gUnk_08DDE635:: @ 08DDE635
	.incbin "assets/sounds/gUnk_08DDE635.bin"
	.4byte gUnk_08DDE613
	.incbin "assets/sounds/gUnk_08DDE635_1.bin"
	.4byte gUnk_08DDE635
	.incbin "assets/sounds/gUnk_08DDE635_2.bin"
	.4byte gUnk_08DDE622
	.incbin "assets/sounds/gUnk_08DDE635_3.bin"
	.4byte gUnk_08DDE60D
	.incbin "assets/sounds/gUnk_08DDE635_4.bin"
bgmFairyFountain2_track4:: @ 08DDE663
	.incbin "assets/sounds/bgmFairyFountain2_track4.bin"
gUnk_08DDE66A:: @ 08DDE66A
	.incbin "assets/sounds/gUnk_08DDE66A.bin"
gUnk_08DDE6C7:: @ 08DDE6C7
	.incbin "assets/sounds/gUnk_08DDE6C7.bin"
	.4byte gUnk_08DDE6C7
	.incbin "assets/sounds/gUnk_08DDE6C7_1.bin"
	.4byte gUnk_08DDE66A
	.incbin "assets/sounds/gUnk_08DDE6C7_2.bin"
bgmFairyFountain2_track5:: @ 08DDE6EB
	.incbin "assets/sounds/bgmFairyFountain2_track5.bin"
gUnk_08DDE6F2:: @ 08DDE6F2
	.incbin "assets/sounds/gUnk_08DDE6F2.bin"
gUnk_08DDE717:: @ 08DDE717
	.incbin "assets/sounds/gUnk_08DDE717.bin"
	.4byte gUnk_08DDE717
	.incbin "assets/sounds/gUnk_08DDE717_1.bin"
	.4byte gUnk_08DDE6F2
	.incbin "assets/sounds/gUnk_08DDE717_2.bin"
bgmFairyFountain2_track6:: @ 08DDE78E
	.incbin "assets/sounds/bgmFairyFountain2_track6.bin"
gUnk_08DDE795:: @ 08DDE795
	.incbin "assets/sounds/gUnk_08DDE795.bin"
gUnk_08DDE7DB:: @ 08DDE7DB
	.incbin "assets/sounds/gUnk_08DDE7DB.bin"
	.4byte gUnk_08DDE7DB
	.incbin "assets/sounds/gUnk_08DDE7DB_1.bin"
	.4byte gUnk_08DDE795
	.incbin "assets/sounds/gUnk_08DDE7DB_2.bin"
bgmFairyFountain2:: @ 08DDE824
	sound_header 7 0 0 0xa8 gUnk_08A0ED44 bgmFairyFountain2_track0 bgmFairyFountain2_track1 bgmFairyFountain2_track2 bgmFairyFountain2_track3 bgmFairyFountain2_track4 bgmFairyFountain2_track5 bgmFairyFountain2_track6

bgmWindRuins_track0:: @ 08DDE848
	.incbin "assets/sounds/bgmWindRuins_track0.bin"
gUnk_08DDE85B:: @ 08DDE85B
	.incbin "assets/sounds/gUnk_08DDE85B.bin"
gUnk_08DDE862:: @ 08DDE862
	.incbin "assets/sounds/gUnk_08DDE862.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_1.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_2.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_3.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_4.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_5.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_6.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_7.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_8.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_9.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_10.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_11.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_12.bin"
	.4byte gUnk_08DDE85B
	.incbin "assets/sounds/gUnk_08DDE862_13.bin"
	.4byte gUnk_08DDE862
	.incbin "assets/sounds/gUnk_08DDE862_14.bin"
bgmWindRuins_track1:: @ 08DDE8CE
	.incbin "assets/sounds/bgmWindRuins_track1.bin"
gUnk_08DDE8D9:: @ 08DDE8D9
	.incbin "assets/sounds/gUnk_08DDE8D9.bin"
gUnk_08DDE8DF:: @ 08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_1.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_2.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_3.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_4.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_5.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_6.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_7.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_8.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_9.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_10.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_11.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_12.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_13.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_14.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_15.bin"
	.4byte gUnk_08DDE8DF
	.incbin "assets/sounds/gUnk_08DDE8DF_16.bin"
	.4byte gUnk_08DDE8D9
	.incbin "assets/sounds/gUnk_08DDE8DF_17.bin"
bgmWindRuins_track2:: @ 08DDE95A
	.incbin "assets/sounds/bgmWindRuins_track2.bin"
gUnk_08DDE967:: @ 08DDE967
	.incbin "assets/sounds/gUnk_08DDE967.bin"
	.4byte gUnk_08DDE967
	.incbin "assets/sounds/gUnk_08DDE967_1.bin"
bgmWindRuins_track3:: @ 08DDE998
	.incbin "assets/sounds/bgmWindRuins_track3.bin"
gUnk_08DDE9A3:: @ 08DDE9A3
	.incbin "assets/sounds/gUnk_08DDE9A3.bin"
	.4byte gUnk_08DDE9A3
	.incbin "assets/sounds/gUnk_08DDE9A3_1.bin"
bgmWindRuins_track4:: @ 08DDE9F4
	.incbin "assets/sounds/bgmWindRuins_track4.bin"
gUnk_08DDEA2A:: @ 08DDEA2A
	.incbin "assets/sounds/gUnk_08DDEA2A.bin"
gUnk_08DDEA8D:: @ 08DDEA8D
	.incbin "assets/sounds/gUnk_08DDEA8D.bin"
gUnk_08DDEAB4:: @ 08DDEAB4
	.incbin "assets/sounds/gUnk_08DDEAB4.bin"
	.4byte gUnk_08DDEAB4
	.incbin "assets/sounds/gUnk_08DDEAB4_1.bin"
	.4byte gUnk_08DDEA8D
	.incbin "assets/sounds/gUnk_08DDEAB4_2.bin"
	.4byte gUnk_08DDEA8D
	.incbin "assets/sounds/gUnk_08DDEAB4_3.bin"
	.4byte gUnk_08DDEAB4
	.incbin "assets/sounds/gUnk_08DDEAB4_4.bin"
	.4byte gUnk_08DDEAB4
	.incbin "assets/sounds/gUnk_08DDEAB4_5.bin"
	.4byte gUnk_08DDEA2A
	.incbin "assets/sounds/gUnk_08DDEAB4_6.bin"
bgmWindRuins_track5:: @ 08DDEB1C
	.incbin "assets/sounds/bgmWindRuins_track5.bin"
gUnk_08DDEB4B:: @ 08DDEB4B
	.incbin "assets/sounds/gUnk_08DDEB4B.bin"
	.4byte gUnk_08DDEB4B
	.incbin "assets/sounds/gUnk_08DDEB4B_1.bin"
bgmWindRuins_track6:: @ 08DDEBE9
	.incbin "assets/sounds/bgmWindRuins_track6.bin"
gUnk_08DDEBF3:: @ 08DDEBF3
	.incbin "assets/sounds/gUnk_08DDEBF3.bin"
	.4byte gUnk_08DDEBF3
	.incbin "assets/sounds/gUnk_08DDEBF3_1.bin"
bgmWindRuins:: @ 08DDEC38
	sound_header 7 0 0 0xa8 gUnk_08A0F014 bgmWindRuins_track0 bgmWindRuins_track1 bgmWindRuins_track2 bgmWindRuins_track3 bgmWindRuins_track4 bgmWindRuins_track5 bgmWindRuins_track6

.ifdef EU
gUnk_08EEA230:: @ 08EEA230
	.incbin "assets/sounds/gUnk_08EEA230_EU.bin"
gUnk_08EEA23E:: @ 08EEA23E
	.incbin "assets/sounds/gUnk_08EEA23E_EU.bin"
	.4byte gUnk_08EEA23E
	.incbin "assets/sounds/gUnk_08EEA23E_1_EU.bin"
gUnk_08EEA25E:: @ 08EEA25E
	.incbin "assets/sounds/gUnk_08EEA25E_EU.bin"
gUnk_08EEA269:: @ 08EEA269
	.incbin "assets/sounds/gUnk_08EEA269_EU.bin"
gUnk_08EEA279:: @ 08EEA279
	.incbin "assets/sounds/gUnk_08EEA279_EU.bin"
	.4byte gUnk_08EEA279
	.incbin "assets/sounds/gUnk_08EEA279_1_EU.bin"
.else
bgmLearnScroll_track0:: @ 08DDEC5C
	.incbin "assets/sounds/bgmLearnScroll_track0_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DDEC68:: @ 08DDEC68
	.incbin "assets/sounds/gUnk_08DDEC68_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DDEC68
	.incbin "assets/sounds/gUnk_08DDEC68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
bgmLearnScroll_track1:: @ 08DDEC8B
	.incbin "assets/sounds/bgmLearnScroll_track1_USA-JP-DEMO_USA-DEMO_JP.bin"
bgmLearnScroll_track2:: @ 08DDEC99
	.incbin "assets/sounds/bgmLearnScroll_track2_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DDECA0:: @ 08DDECA0
	.incbin "assets/sounds/gUnk_08DDECA0_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DDECA0
	.incbin "assets/sounds/gUnk_08DDECA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
bgmLearnScroll_track3:: @ 08DDECC0
	.incbin "assets/sounds/bgmLearnScroll_track3_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DDECC7:: @ 08DDECC7
	.incbin "assets/sounds/gUnk_08DDECC7_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DDECC7
	.incbin "assets/sounds/gUnk_08DDECC7_1_USA-JP-DEMO_USA-DEMO_JP.bin"
bgmLearnScroll_track4:: @ 08DDECD3
	.incbin "assets/sounds/bgmLearnScroll_track4_USA-JP-DEMO_USA-DEMO_JP.bin"
gUnk_08DDECDA:: @ 08DDECDA
	.incbin "assets/sounds/gUnk_08DDECDA_USA-JP-DEMO_USA-DEMO_JP.bin"
	.4byte gUnk_08DDECDA
	.incbin "assets/sounds/gUnk_08DDECDA_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

bgmLearnScroll:: @ 08DDED6C
.ifdef EU
	.incbin "assets/sounds/bgmLearnScroll_EU.bin"
	.4byte gUnk_08A0CF44
	.4byte gUnk_08EEA230
	.4byte gUnk_08EEA25E
	.4byte gUnk_08EEA269
.else
	sound_header 5 0 0 0x9e gUnk_08A0CF44 bgmLearnScroll_track0 bgmLearnScroll_track1 bgmLearnScroll_track2 bgmLearnScroll_track3 bgmLearnScroll_track4
.endif

bgmEzloGet_track0:: @ 08DDED88
	.incbin "assets/sounds/bgmEzloGet_track0.bin"
bgmEzloGet_track1:: @ 08DDEDAE
	.incbin "assets/sounds/bgmEzloGet_track1.bin"
bgmEzloGet_track2:: @ 08DDEDBF
	.incbin "assets/sounds/bgmEzloGet_track2.bin"
bgmEzloGet_track3:: @ 08DDEDDB
	.incbin "assets/sounds/bgmEzloGet_track3.bin"
bgmEzloGet_track4:: @ 08DDEDF5
	.incbin "assets/sounds/bgmEzloGet_track4.bin"
bgmEzloGet:: @ 08DDEE18
	sound_header 5 0 0 0xb2 gUnk_08A0F614 bgmEzloGet_track0 bgmEzloGet_track1 bgmEzloGet_track2 bgmEzloGet_track3 bgmEzloGet_track4

sfxBeep_track0:: @ 08DDEE34
	.incbin "assets/sounds/sfxBeep_track0.bin"
sfxBeep:: @ 08DDEE44
	sound_header 1 0 0xff 0 gUnk_08A0FF44 sfxBeep_track0

sfxTextboxOpen_track0:: @ 08DDEE50
	.incbin "assets/sounds/sfxTextboxOpen_track0.bin"
sfxTextboxOpen_track1:: @ 08DDEE86
	.incbin "assets/sounds/sfxTextboxOpen_track1.bin"
sfxTextboxOpen:: @ 08DDEEBC
	sound_header 2 0 0x30 0 gUnk_08A0FF50 sfxTextboxOpen_track0 sfxTextboxOpen_track1

sfxTextboxClose_track0:: @ 08DDEECC
	.incbin "assets/sounds/sfxTextboxClose_track0.bin"
sfxTextboxClose_track1:: @ 08DDEEF6
	.incbin "assets/sounds/sfxTextboxClose_track1.bin"
sfxTextboxClose:: @ 08DDEF20
	sound_header 2 0 0x30 0 gUnk_08A0FF80 sfxTextboxClose_track0 sfxTextboxClose_track1

sfxTextboxNext_track0:: @ 08DDEF30
	.incbin "assets/sounds/sfxTextboxNext_track0.bin"
sfxTextboxNext:: @ 08DDEF44
	sound_header 1 0 0x40 0 gUnk_08A0FF98 sfxTextboxNext_track0

sfxTextboxSwap_track0:: @ 08DDEF50
	.incbin "assets/sounds/sfxTextboxSwap_track0.bin"
sfxTextboxSwap:: @ 08DDEF7C
	sound_header 1 0 0x40 0 gUnk_08A0FFA4 sfxTextboxSwap_track0

sfxTextboxChoice_track0:: @ 08DDEF88
	.incbin "assets/sounds/sfxTextboxChoice_track0.bin"
sfxTextboxChoice:: @ 08DDEF9C
	sound_header 1 0 0x40 0 gUnk_08A0FFB0 sfxTextboxChoice_track0

sfxTextboxSelect_track0:: @ 08DDEFA8
	.incbin "assets/sounds/sfxTextboxSelect_track0.bin"
sfxTextboxSelect:: @ 08DDF008
	sound_header 1 0 0x40 0 gUnk_08A0FFBC sfxTextboxSelect_track0

sfx6B_track0:: @ 08DDF014
	.incbin "assets/sounds/sfx6B_track0.bin"
sfx6B:: @ 08DDF040
	sound_header 1 0 0x40 0 gUnk_08A0FFC8 sfx6B_track0

sfxMenuCancel_track0:: @ 08DDF04C
	.incbin "assets/sounds/sfxMenuCancel_track0.bin"
sfxMenuCancel:: @ 08DDF068
	sound_header 1 0 0x40 0 gUnk_08A0FFD4 sfxMenuCancel_track0

sfxMenuError_track0:: @ 08DDF074
	.incbin "assets/sounds/sfxMenuError_track0.bin"
sfxMenuError:: @ 08DDF094
	sound_header 1 0 0x40 0 gUnk_08A0FFEC sfxMenuError_track0

sfxRupeeBounce_track0:: @ 08DDF0A0
	.incbin "assets/sounds/sfxRupeeBounce_track0.bin"
sfxRupeeBounce:: @ 08DDF0BC
	sound_header 1 0 0x58 0 gUnk_08A0FFF8 sfxRupeeBounce_track0

sfxRupeeGet_track0:: @ 08DDF0C8
	.incbin "assets/sounds/sfxRupeeGet_track0.bin"
sfxRupeeGet:: @ 08DDF0EC
	sound_header 1 0 0x60 0 gUnk_08A10004 sfxRupeeGet_track0

sfxHeartBounce_track0:: @ 08DDF0F8
	.incbin "assets/sounds/sfxHeartBounce_track0.bin"
sfxHeartBounce:: @ 08DDF144
	sound_header 1 0 0x58 0 gUnk_08A10010 sfxHeartBounce_track0

sfxHeartGet_track0:: @ 08DDF150
	.incbin "assets/sounds/sfxHeartGet_track0.bin"
sfxHeartGet:: @ 08DDF16C
	sound_header 1 0 0x60 0 gUnk_08A10028 sfxHeartGet_track0

sfxSecret_track0:: @ 08DDF178
	.incbin "assets/sounds/sfxSecret_track0.bin"
sfxSecret:: @ 08DDF19C
	sound_header 1 0 0xc0 0 gUnk_08A10034 sfxSecret_track0

sfxSecretBig_track0:: @ 08DDF1A8
	.incbin "assets/sounds/sfxSecretBig_track0.bin"
sfxSecretBig_track1:: @ 08DDF1CF
	.incbin "assets/sounds/sfxSecretBig_track1.bin"
sfxSecretBig:: @ 08DDF1F4
.ifdef EU
	sound_header 2 0 0xc0 0 gUnk_08A1004C sfxSecretBig_track0 sfxSecretBig_track1
.else
	sound_header 2 0 0xd0 0 gUnk_08A1004C sfxSecretBig_track0 sfxSecretBig_track1
.endif

sfxMetalClink_track0:: @ 08DDF204
	.incbin "assets/sounds/sfxMetalClink_track0.bin"
sfxMetalClink:: @ 08DDF21C
	sound_header 1 0 0x44 0 gUnk_08A1007C sfxMetalClink_track0

sfxPlyVo1_track0:: @ 08DDF228
	.incbin "assets/sounds/sfxPlyVo1_track0.bin"
sfxPlyVo1:: @ 08DDF238
	sound_header 1 0 0x48 0 gUnk_08A10088 sfxPlyVo1_track0

sfxPlyVo2_track0:: @ 08DDF244
	.incbin "assets/sounds/sfxPlyVo2_track0.bin"
sfxPlyVo2:: @ 08DDF254
	sound_header 1 0 0x48 0 gUnk_08A10094 sfxPlyVo2_track0

sfxPlyVo3_track0:: @ 08DDF260
	.incbin "assets/sounds/sfxPlyVo3_track0.bin"
sfxPlyVo3:: @ 08DDF270
	sound_header 1 0 0x48 0 gUnk_08A100A0 sfxPlyVo3_track0

sfxPlyVo4_track0:: @ 08DDF27C
	.incbin "assets/sounds/sfxPlyVo4_track0.bin"
sfxPlyVo4:: @ 08DDF28C
	sound_header 1 0 0x48 0 gUnk_08A100AC sfxPlyVo4_track0

sfxPlyVo5_track0:: @ 08DDF298
	.incbin "assets/sounds/sfxPlyVo5_track0.bin"
sfxPlyVo5:: @ 08DDF2A8
	sound_header 1 0 0x48 0 gUnk_08A100B8 sfxPlyVo5_track0

sfxPlyVo6_track0:: @ 08DDF2B4
	.incbin "assets/sounds/sfxPlyVo6_track0.bin"
sfxPlyVo6:: @ 08DDF2C4
	sound_header 1 0 0x48 0 gUnk_08A100C4 sfxPlyVo6_track0

sfxPlyVo7_track0:: @ 08DDF2D0
	.incbin "assets/sounds/sfxPlyVo7_track0.bin"
sfxPlyVo7:: @ 08DDF2E0
	sound_header 1 0 0x48 0 gUnk_08A100D0 sfxPlyVo7_track0

sfxPlyJump_track0:: @ 08DDF2EC
	.incbin "assets/sounds/sfxPlyJump_track0.bin"
sfxPlyJump:: @ 08DDF2FC
	sound_header 1 0 0x40 0 gUnk_08A100DC sfxPlyJump_track0

sfxPlyLand_track0:: @ 08DDF308
	.incbin "assets/sounds/sfxPlyLand_track0.bin"
sfxPlyLand:: @ 08DDF31C
	sound_header 1 0 0x40 0 gUnk_08A100E8 sfxPlyLand_track0

sfx7E_track0:: @ 08DDF328
	.incbin "assets/sounds/sfx7E_track0.bin"
sfx7E:: @ 08DDF33C
	sound_header 1 0 0x30 0 gUnk_08A100F4 sfx7E_track0

sfxPlyLift_track0:: @ 08DDF348
	.incbin "assets/sounds/sfxPlyLift_track0.bin"
sfxPlyLift:: @ 08DDF38C
	sound_header 1 0 0x40 0 gUnk_08A10100 sfxPlyLift_track0

sfx80_track0:: @ 08DDF398
	.incbin "assets/sounds/sfx80_track0.bin"
sfx80:: @ 08DDF3B0
	sound_header 1 0 0x30 0 gUnk_08A10118 sfx80_track0

sfx81_track0:: @ 08DDF3BC
	.incbin "assets/sounds/sfx81_track0.bin"
sfx81:: @ 08DDF3E4
	sound_header 1 0 0x40 0 gUnk_08A10124 sfx81_track0

sfx82_track0:: @ 08DDF3F0
	.incbin "assets/sounds/sfx82_track0.bin"
sfx82:: @ 08DDF400
	sound_header 1 0 0x40 0 gUnk_08A10148 sfx82_track0

sfxWaterWalk_track0:: @ 08DDF40C
	.incbin "assets/sounds/sfxWaterWalk_track0.bin"
sfxWaterWalk_track1:: @ 08DDF423
	.incbin "assets/sounds/sfxWaterWalk_track1.bin"
sfxWaterWalk:: @ 08DDF43C
	sound_header 2 0 0x28 0 gUnk_08A10154 sfxWaterWalk_track0 sfxWaterWalk_track1

sfxWaterSplash_track0:: @ 08DDF44C
	.incbin "assets/sounds/sfxWaterSplash_track0.bin"
sfxWaterSplash:: @ 08DDF484
	sound_header 1 0 0x40 0 gUnk_08A1016C sfxWaterSplash_track0

sfxFallHole_track0:: @ 08DDF490
	.incbin "assets/sounds/sfxFallHole_track0.bin"
sfxFallHole:: @ 08DDF57C
	sound_header 1 0 0x40 0 gUnk_08A10184 sfxFallHole_track0

sfx86_track0:: @ 08DDF588
	.incbin "assets/sounds/sfx86_track0.bin"
sfx86:: @ 08DDF598
	sound_header 1 0 0x40 0 gUnk_08A10190 sfx86_track0

sfxPlyDie_track0:: @ 08DDF5A4
	.incbin "assets/sounds/sfxPlyDie_track0.bin"
sfxPlyDie:: @ 08DDF608
	sound_header 1 0 0x40 0 gUnk_08A1019C sfxPlyDie_track0

sfx88_track0:: @ 08DDF614
	.incbin "assets/sounds/sfx88_track0.bin"
sfx88:: @ 08DDF630
	sound_header 1 0 0x40 0 gUnk_08A101A8 sfx88_track0

sfxBarrelRelease_track0:: @ 08DDF63C
	.incbin "assets/sounds/sfxBarrelRelease_track0.bin"
sfxBarrelRelease:: @ 08DDF64C
	sound_header 1 0 0x40 0 gUnk_08A101B4 sfxBarrelRelease_track0

sfxBarrelEnter_track0:: @ 08DDF658
	.incbin "assets/sounds/sfxBarrelEnter_track0.bin"
sfxBarrelEnter:: @ 08DDF668
	sound_header 1 0 0x40 0 gUnk_08A101C0 sfxBarrelEnter_track0

sfxBarrelRoll_track0:: @ 08DDF674
	.incbin "assets/sounds/sfxBarrelRoll_track0.bin"
sfxBarrelRoll:: @ 08DDF684
	sound_header 1 0 0x40 0 gUnk_08A101CC sfxBarrelRoll_track0

sfxBarrelRollStop_track0:: @ 08DDF690
	.incbin "assets/sounds/sfxBarrelRollStop_track0.bin"
sfxBarrelRollStop:: @ 08DDF6A0
	sound_header 1 0 0x40 0 gUnk_08A101D8 sfxBarrelRollStop_track0

sfxVoEzlo1_track0:: @ 08DDF6AC
	.incbin "assets/sounds/sfxVoEzlo1_track0.bin"
sfxVoEzlo1:: @ 08DDF6BC
	sound_header 1 0 0x48 0 gUnk_08A101E4 sfxVoEzlo1_track0

sfxVoEzlo2_track0:: @ 08DDF6C8
	.incbin "assets/sounds/sfxVoEzlo2_track0.bin"
sfxVoEzlo2:: @ 08DDF6D8
	sound_header 1 0 0x48 0 gUnk_08A101F0 sfxVoEzlo2_track0

sfxVoEzlo3_track0:: @ 08DDF6E4
	.incbin "assets/sounds/sfxVoEzlo3_track0.bin"
sfxVoEzlo3:: @ 08DDF6F4
	sound_header 1 0 0x48 0 gUnk_08A101FC sfxVoEzlo3_track0

sfxVoEzlo4_track0:: @ 08DDF700
	.incbin "assets/sounds/sfxVoEzlo4_track0.bin"
sfxVoEzlo4:: @ 08DDF710
	sound_header 1 0 0x48 0 gUnk_08A10208 sfxVoEzlo4_track0

sfxVoEzlo5_track0:: @ 08DDF71C
	.incbin "assets/sounds/sfxVoEzlo5_track0.bin"
sfxVoEzlo5:: @ 08DDF72C
	sound_header 1 0 0x48 0 gUnk_08A10214 sfxVoEzlo5_track0

sfxVoEzlo6_track0:: @ 08DDF738
	.incbin "assets/sounds/sfxVoEzlo6_track0.bin"
sfxVoEzlo6:: @ 08DDF748
	sound_header 1 0 0x48 0 gUnk_08A10220 sfxVoEzlo6_track0

sfxVoEzlo7_track0:: @ 08DDF754
	.incbin "assets/sounds/sfxVoEzlo7_track0.bin"
sfxVoEzlo7:: @ 08DDF764
	sound_header 1 0 0x48 0 gUnk_08A1022C sfxVoEzlo7_track0

sfxVoZelda1_track0:: @ 08DDF770
	.incbin "assets/sounds/sfxVoZelda1_track0.bin"
sfxVoZelda1:: @ 08DDF780
	sound_header 1 0 0x48 0 gUnk_08A10238 sfxVoZelda1_track0

sfxVoZelda2_track0:: @ 08DDF78C
	.incbin "assets/sounds/sfxVoZelda2_track0.bin"
sfxVoZelda2:: @ 08DDF79C
	sound_header 1 0 0x48 0 gUnk_08A10244 sfxVoZelda2_track0

sfxVoZelda3_track0:: @ 08DDF7A8
	.incbin "assets/sounds/sfxVoZelda3_track0.bin"
sfxVoZelda3:: @ 08DDF7B8
	sound_header 1 0 0x48 0 gUnk_08A10250 sfxVoZelda3_track0

sfxVoZelda4_track0:: @ 08DDF7C4
	.incbin "assets/sounds/sfxVoZelda4_track0.bin"
sfxVoZelda4:: @ 08DDF7D4
	sound_header 1 0 0x48 0 gUnk_08A1025C sfxVoZelda4_track0

sfxVoZelda5_track0:: @ 08DDF7E0
	.incbin "assets/sounds/sfxVoZelda5_track0.bin"
sfxVoZelda5:: @ 08DDF7F0
	sound_header 1 0 0x48 0 gUnk_08A10268 sfxVoZelda5_track0

sfxVoZelda6_track0:: @ 08DDF7FC
	.incbin "assets/sounds/sfxVoZelda6_track0.bin"
sfxVoZelda6:: @ 08DDF80C
	sound_header 1 0 0x48 0 gUnk_08A10274 sfxVoZelda6_track0

sfxVoZelda7_track0:: @ 08DDF818
	.incbin "assets/sounds/sfxVoZelda7_track0.bin"
sfxVoZelda7:: @ 08DDF828
	sound_header 1 0 0x48 0 gUnk_08A10280 sfxVoZelda7_track0

sfx9B_track0:: @ 08DDF834
	.incbin "assets/sounds/sfx9B_track0.bin"
sfx9B:: @ 08DDF844
	sound_header 1 0 0x48 0 gUnk_08A1028C sfx9B_track0

sfx9C_track0:: @ 08DDF850
	.incbin "assets/sounds/sfx9C_track0.bin"
sfx9C:: @ 08DDF860
	sound_header 1 0 0x48 0 gUnk_08A10298 sfx9C_track0

sfx9D_track0:: @ 08DDF86C
	.incbin "assets/sounds/sfx9D_track0.bin"
sfx9D:: @ 08DDF87C
	sound_header 1 0 0x48 0 gUnk_08A102A4 sfx9D_track0

sfx9E_track0:: @ 08DDF888
	.incbin "assets/sounds/sfx9E_track0.bin"
sfx9E:: @ 08DDF898
	sound_header 1 0 0x48 0 gUnk_08A102B0 sfx9E_track0

sfx9F_track0:: @ 08DDF8A4
	.incbin "assets/sounds/sfx9F_track0.bin"
sfx9F:: @ 08DDF8B4
	sound_header 1 0 0x48 0 gUnk_08A102BC sfx9F_track0

sfxA0_track0:: @ 08DDF8C0
	.incbin "assets/sounds/sfxA0_track0.bin"
sfxA0:: @ 08DDF8D4
	sound_header 1 0 0x48 0 gUnk_08A102C8 sfxA0_track0

sfxVoTingle1_track0:: @ 08DDF8E0
	.incbin "assets/sounds/sfxVoTingle1_track0.bin"
sfxVoTingle1:: @ 08DDF8F0
	sound_header 1 0 0x48 0 gUnk_08A102D4 sfxVoTingle1_track0

sfxVoTingle2_track0:: @ 08DDF8FC
	.incbin "assets/sounds/sfxVoTingle2_track0.bin"
sfxVoTingle2:: @ 08DDF90C
	sound_header 1 0 0x48 0 gUnk_08A102E0 sfxVoTingle2_track0

sfxVoKing1_track0:: @ 08DDF918
	.incbin "assets/sounds/sfxVoKing1_track0.bin"
sfxVoKing1:: @ 08DDF928
	sound_header 1 0 0x48 0 gUnk_08A102EC sfxVoKing1_track0

sfxVoKing2_track0:: @ 08DDF934
	.incbin "assets/sounds/sfxVoKing2_track0.bin"
sfxVoKing2:: @ 08DDF944
	sound_header 1 0 0x48 0 gUnk_08A102F8 sfxVoKing2_track0

sfxVoKing3_track0:: @ 08DDF950
	.incbin "assets/sounds/sfxVoKing3_track0.bin"
sfxVoKing3:: @ 08DDF960
	sound_header 1 0 0x48 0 gUnk_08A10304 sfxVoKing3_track0

sfxVoKing4_track0:: @ 08DDF96C
	.incbin "assets/sounds/sfxVoKing4_track0.bin"
sfxVoKing4:: @ 08DDF97C
	sound_header 1 0 0x48 0 gUnk_08A10310 sfxVoKing4_track0

sfxVoKing5_track0:: @ 08DDF988
	.incbin "assets/sounds/sfxVoKing5_track0.bin"
sfxVoKing5:: @ 08DDF998
	sound_header 1 0 0x48 0 gUnk_08A1031C sfxVoKing5_track0

sfxA8_track0:: @ 08DDF9A4
	.incbin "assets/sounds/sfxA8_track0.bin"
sfxA8:: @ 08DDF9B4
	sound_header 1 0 0x48 0 gUnk_08A10328 sfxA8_track0

sfxA9_track0:: @ 08DDF9C0
	.incbin "assets/sounds/sfxA9_track0.bin"
sfxA9:: @ 08DDF9D0
	sound_header 1 0 0x48 0 gUnk_08A10334 sfxA9_track0

sfxAA_track0:: @ 08DDF9DC
	.incbin "assets/sounds/sfxAA_track0.bin"
sfxAA:: @ 08DDF9EC
	sound_header 1 0 0x48 0 gUnk_08A10340 sfxAA_track0

sfxSpiritsRelease_track0:: @ 08DDF9F8
	.incbin "assets/sounds/sfxSpiritsRelease_track0.bin"
sfxSpiritsRelease:: @ 08DDFA0C
	sound_header 1 0 0x48 0 gUnk_08A1034C sfxSpiritsRelease_track0

sfxAC_track0:: @ 08DDFA18
	.incbin "assets/sounds/sfxAC_track0.bin"
sfxAC:: @ 08DDFA28
	sound_header 1 0 0x48 0 gUnk_08A10358 sfxAC_track0

sfxVoBeedle_track0:: @ 08DDFA34
	.incbin "assets/sounds/sfxVoBeedle_track0.bin"
sfxVoBeedle:: @ 08DDFA44
	sound_header 1 0 0x48 0 gUnk_08A10364 sfxVoBeedle_track0

sfxAE_track0:: @ 08DDFA50
	.incbin "assets/sounds/sfxAE_track0.bin"
sfxAE:: @ 08DDFA60
	sound_header 1 0 0x48 0 gUnk_08A10370 sfxAE_track0

sfxAF_track0:: @ 08DDFA6C
	.incbin "assets/sounds/sfxAF_track0.bin"
sfxAF:: @ 08DDFA7C
	sound_header 1 0 0x48 0 gUnk_08A1037C sfxAF_track0

sfxB0_track0:: @ 08DDFA88
	.incbin "assets/sounds/sfxB0_track0.bin"
sfxB0:: @ 08DDFA98
	sound_header 1 0 0x48 0 gUnk_08A10388 sfxB0_track0

sfxMinish1_track0:: @ 08DDFAA4
	.incbin "assets/sounds/sfxMinish1_track0.bin"
sfxMinish1:: @ 08DDFAB4
	sound_header 1 0 0x48 0 gUnk_08A10394 sfxMinish1_track0

sfxMinish2_track0:: @ 08DDFAC0
	.incbin "assets/sounds/sfxMinish2_track0.bin"
sfxMinish2:: @ 08DDFAD0
	sound_header 1 0 0x48 0 gUnk_08A103A0 sfxMinish2_track0

sfxMinish3_track0:: @ 08DDFADC
	.incbin "assets/sounds/sfxMinish3_track0.bin"
sfxMinish3:: @ 08DDFAEC
	sound_header 1 0 0x48 0 gUnk_08A103AC sfxMinish3_track0

sfxMinish4_track0:: @ 08DDFAF8
	.incbin "assets/sounds/sfxMinish4_track0.bin"
sfxMinish4:: @ 08DDFB08
	sound_header 1 0 0x48 0 gUnk_08A103B8 sfxMinish4_track0

sfxB5_track0:: @ 08DDFB14
	.incbin "assets/sounds/sfxB5_track0.bin"
sfxB5:: @ 08DDFB24
	sound_header 1 0 0x48 0 gUnk_08A103C4 sfxB5_track0

sfxB6_track0:: @ 08DDFB30
	.incbin "assets/sounds/sfxB6_track0.bin"
sfxB6:: @ 08DDFB40
	sound_header 1 0 0x48 0 gUnk_08A103D0 sfxB6_track0

sfxB7_track0:: @ 08DDFB4C
	.incbin "assets/sounds/sfxB7_track0.bin"
sfxB7:: @ 08DDFB5C
	sound_header 1 0 0x48 0 gUnk_08A103DC sfxB7_track0

sfxB8_track0:: @ 08DDFB68
	.incbin "assets/sounds/sfxB8_track0.bin"
sfxB8:: @ 08DDFB78
	sound_header 1 0 0x48 0 gUnk_08A103E8 sfxB8_track0

sfxB9_track0:: @ 08DDFB84
	.incbin "assets/sounds/sfxB9_track0.bin"
sfxB9:: @ 08DDFB94
	sound_header 1 0 0x48 0 gUnk_08A103F4 sfxB9_track0

sfxBA_track0:: @ 08DDFBA0
	.incbin "assets/sounds/sfxBA_track0.bin"
sfxBA:: @ 08DDFBB0
	sound_header 1 0 0x48 0 gUnk_08A10400 sfxBA_track0

sfxBB_track0:: @ 08DDFBBC
	.incbin "assets/sounds/sfxBB_track0.bin"
sfxBB:: @ 08DDFBCC
	sound_header 1 0 0x48 0 gUnk_08A1040C sfxBB_track0

sfxBC_track0:: @ 08DDFBD8
	.incbin "assets/sounds/sfxBC_track0.bin"
sfxBC:: @ 08DDFBE8
	sound_header 1 0 0x48 0 gUnk_08A10418 sfxBC_track0

sfxBD_track0:: @ 08DDFBF4
	.incbin "assets/sounds/sfxBD_track0.bin"
sfxBD:: @ 08DDFC04
	sound_header 1 0 0x48 0 gUnk_08A10424 sfxBD_track0

sfxBE_track0:: @ 08DDFC10
	.incbin "assets/sounds/sfxBE_track0.bin"
sfxBE:: @ 08DDFC20
	sound_header 1 0 0x48 0 gUnk_08A10430 sfxBE_track0

sfxBF_track0:: @ 08DDFC2C
	.incbin "assets/sounds/sfxBF_track0.bin"
sfxBF:: @ 08DDFC3C
	sound_header 1 0 0x48 0 gUnk_08A1043C sfxBF_track0

sfxC0_track0:: @ 08DDFC48
	.incbin "assets/sounds/sfxC0_track0.bin"
sfxC0:: @ 08DDFC58
	sound_header 1 0 0x48 0 gUnk_08A10448 sfxC0_track0

sfxC1_track0:: @ 08DDFC64
	.incbin "assets/sounds/sfxC1_track0.bin"
sfxC1:: @ 08DDFC74
	sound_header 1 0 0x48 0 gUnk_08A10454 sfxC1_track0

sfxC2_track0:: @ 08DDFC80
	.incbin "assets/sounds/sfxC2_track0.bin"
sfxC2:: @ 08DDFC90
	sound_header 1 0 0x48 0 gUnk_08A10460 sfxC2_track0

sfxC3_track0:: @ 08DDFC9C
	.incbin "assets/sounds/sfxC3_track0.bin"
sfxC3:: @ 08DDFCAC
	sound_header 1 0 0x48 0 gUnk_08A1046C sfxC3_track0

sfxC4_track0:: @ 08DDFCB8
	.incbin "assets/sounds/sfxC4_track0.bin"
sfxC4:: @ 08DDFCC8
	sound_header 1 0 0x48 0 gUnk_08A10478 sfxC4_track0

sfxC5_track0:: @ 08DDFCD4
	.incbin "assets/sounds/sfxC5_track0.bin"
sfxC5:: @ 08DDFCE4
	sound_header 1 0 0x48 0 gUnk_08A10484 sfxC5_track0

sfxC6_track0:: @ 08DDFCF0
	.incbin "assets/sounds/sfxC6_track0.bin"
sfxC6:: @ 08DDFD00
	sound_header 1 0 0x48 0 gUnk_08A10490 sfxC6_track0

sfxC7_track0:: @ 08DDFD0C
	.incbin "assets/sounds/sfxC7_track0.bin"
sfxC7:: @ 08DDFD1C
	sound_header 1 0 0x48 0 gUnk_08A1049C sfxC7_track0

sfxC8_track0:: @ 08DDFD28
	.incbin "assets/sounds/sfxC8_track0.bin"
sfxC8:: @ 08DDFD38
	sound_header 1 0 0x48 0 gUnk_08A104A8 sfxC8_track0

sfxC9_track0:: @ 08DDFD44
	.incbin "assets/sounds/sfxC9_track0.bin"
sfxC9:: @ 08DDFD54
	sound_header 1 0 0x48 0 gUnk_08A104B4 sfxC9_track0

sfxCA_track0:: @ 08DDFD60
	.incbin "assets/sounds/sfxCA_track0.bin"
sfxCA:: @ 08DDFD70
	sound_header 1 0 0x48 0 gUnk_08A104C0 sfxCA_track0

sfxCB_track0:: @ 08DDFD7C
	.incbin "assets/sounds/sfxCB_track0.bin"
sfxCB:: @ 08DDFD8C
	sound_header 1 0 0x48 0 gUnk_08A104CC sfxCB_track0

sfxRemSleep_track0:: @ 08DDFD98
	.incbin "assets/sounds/sfxRemSleep_track0.bin"
sfxRemSleep:: @ 08DDFDA8
	sound_header 1 0 0x48 0 gUnk_08A104D8 sfxRemSleep_track0

sfxTaskComplete_track0:: @ 08DDFDB4
	.incbin "assets/sounds/sfxTaskComplete_track0.bin"
sfxTaskComplete:: @ 08DDFDD4
.ifdef EU
	sound_header 1 0 0xc0 0 gUnk_08A104E4 sfxTaskComplete_track0
.else
	sound_header 1 0 0xb0 0 gUnk_08A104E4 sfxTaskComplete_track0
.endif

sfxKeyAppear_track0:: @ 08DDFDE0
	.incbin "assets/sounds/sfxKeyAppear_track0.bin"
sfxKeyAppear:: @ 08DDFE14
	sound_header 1 0 0xc0 0 gUnk_08A104FC sfxKeyAppear_track0

sfxCF_track0:: @ 08DDFE20
	.incbin "assets/sounds/sfxCF_track0.bin"
sfxCF:: @ 08DDFE30
	sound_header 1 0 0x48 0 gUnk_08A10514 sfxCF_track0

sfxD0_track0:: @ 08DDFE3C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/sounds/sfxD0_track0_EU.bin"
.else
	.incbin "assets/sounds/sfxD0_track0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
sfxD0:: @ 08DDFE4C
	sound_header 1 0 0x48 0 gUnk_08A10520 sfxD0_track0

sfxVoDog_track0:: @ 08DDFE58
	.incbin "assets/sounds/sfxVoDog_track0.bin"
sfxVoDog:: @ 08DDFE68
	sound_header 1 0 0x48 0 gUnk_08A1052C sfxVoDog_track0

sfxVoCat_track0:: @ 08DDFE74
	.incbin "assets/sounds/sfxVoCat_track0.bin"
sfxVoCat:: @ 08DDFE84
	sound_header 1 0 0x48 0 gUnk_08A10538 sfxVoCat_track0

sfxVoEpona_track0:: @ 08DDFE90
	.incbin "assets/sounds/sfxVoEpona_track0.bin"
sfxVoEpona:: @ 08DDFEA0
	sound_header 1 0 0x48 0 gUnk_08A10544 sfxVoEpona_track0

sfxVoCow_track0:: @ 08DDFEAC
	.incbin "assets/sounds/sfxVoCow_track0.bin"
sfxVoCow:: @ 08DDFEBC
	sound_header 1 0 0x48 0 gUnk_08A10550 sfxVoCow_track0

sfxVoCuccoCall_track0:: @ 08DDFEC8
	.incbin "assets/sounds/sfxVoCuccoCall_track0.bin"
sfxVoCuccoCall:: @ 08DDFED8
	sound_header 1 0 0x48 0 gUnk_08A1055C sfxVoCuccoCall_track0

sfxVoCheep_track0:: @ 08DDFEE4
	.incbin "assets/sounds/sfxVoCheep_track0.bin"
sfxVoCheep:: @ 08DDFEF4
	sound_header 1 0 0x48 0 gUnk_08A10568 sfxVoCheep_track0

sfxItemSwordCharge_track0:: @ 08DDFF00
	.incbin "assets/sounds/sfxItemSwordCharge_track0.bin"
sfxItemSwordCharge:: @ 08DDFF10
	sound_header 1 0 0x40 0 gUnk_08A10574 sfxItemSwordCharge_track0

sfxItemSwordChargeFinish_track0:: @ 08DDFF1C
	.incbin "assets/sounds/sfxItemSwordChargeFinish_track0.bin"
sfxItemSwordChargeFinish:: @ 08DDFF2C
	sound_header 1 0 0x60 0 gUnk_08A10580 sfxItemSwordChargeFinish_track0

sfxD9_track0:: @ 08DDFF38
	.incbin "assets/sounds/sfxD9_track0.bin"
sfxD9:: @ 08DDFF48
	sound_header 1 0 0x40 0 gUnk_08A1058C sfxD9_track0

sfxDA_track0:: @ 08DDFF54
	.incbin "assets/sounds/sfxDA_track0.bin"
sfxDA:: @ 08DDFF64
	sound_header 1 0 0x48 0 gUnk_08A10598 sfxDA_track0

sfxVoSturgeon_track0:: @ 08DDFF70
	.incbin "assets/sounds/sfxVoSturgeon_track0.bin"
sfxVoSturgeon:: @ 08DDFF80
	sound_header 1 0 0x48 0 gUnk_08A105A4 sfxVoSturgeon_track0

sfxHammer1_track0:: @ 08DDFF8C
	.incbin "assets/sounds/sfxHammer1_track0.bin"
sfxHammer1:: @ 08DDFF9C
	sound_header 1 0 0x40 0 gUnk_08A105B0 sfxHammer1_track0

sfxHammer2_track0:: @ 08DDFFA8
	.incbin "assets/sounds/sfxHammer2_track0.bin"
sfxHammer2:: @ 08DDFFB8
	sound_header 1 0 0x40 0 gUnk_08A105BC sfxHammer2_track0

sfxHammer3_track0:: @ 08DDFFC4
	.incbin "assets/sounds/sfxHammer3_track0.bin"
sfxHammer3:: @ 08DDFFD4
	sound_header 1 0 0x40 0 gUnk_08A105C8 sfxHammer3_track0

sfxHammer4_track0:: @ 08DDFFE0
	.incbin "assets/sounds/sfxHammer4_track0.bin"
sfxHammer4:: @ 08DDFFF0
	sound_header 1 0 0x40 0 gUnk_08A105D4 sfxHammer4_track0

sfxHammer5_track0:: @ 08DDFFFC
	.incbin "assets/sounds/sfxHammer5_track0.bin"
sfxHammer5:: @ 08DE000C
	sound_header 1 0 0x40 0 gUnk_08A105E0 sfxHammer5_track0

sfxHammer6_track0:: @ 08DE0018
	.incbin "assets/sounds/sfxHammer6_track0.bin"
sfxHammer6:: @ 08DE0028
	sound_header 1 0 0x40 0 gUnk_08A105EC sfxHammer6_track0

sfxCuccoMinigameBell_track0:: @ 08DE0034
	.incbin "assets/sounds/sfxCuccoMinigameBell_track0.bin"
sfxCuccoMinigameBell:: @ 08DE0048
	sound_header 1 0 0x40 0 gUnk_08A105F8 sfxCuccoMinigameBell_track0

sfxE3_track0:: @ 08DE0054
	.incbin "assets/sounds/sfxE3_track0.bin"
sfxE3:: @ 08DE0064
	sound_header 1 0 0x60 0 gUnk_08A10604 sfxE3_track0

sfxE4_track0:: @ 08DE0070
	.incbin "assets/sounds/sfxE4_track0.bin"
sfxE4:: @ 08DE0080
	sound_header 1 0 0x60 0 gUnk_08A10610 sfxE4_track0

sfxButtonDepress_track0:: @ 08DE008C
	.incbin "assets/sounds/sfxButtonDepress_track0.bin"
sfxButtonDepress:: @ 08DE00A0
	sound_header 1 0 0x40 0 gUnk_08A1061C sfxButtonDepress_track0

sfxThudHeavy_track0:: @ 08DE00AC
	.incbin "assets/sounds/sfxThudHeavy_track0.bin"
sfxThudHeavy:: @ 08DE00BC
	sound_header 1 0 0x40 0 gUnk_08A10628 sfxThudHeavy_track0

sfxWind1_track0:: @ 08DE00C8
	.incbin "assets/sounds/sfxWind1_track0.bin"
sfxWind1:: @ 08DE00EC
	sound_header 1 0 0x30 0 gUnk_08A10634 sfxWind1_track0

sfxWind2_track0:: @ 08DE00F8
	.incbin "assets/sounds/sfxWind2_track0.bin"
sfxWind2:: @ 08DE0138
	sound_header 1 0 0x30 0 gUnk_08A10640 sfxWind2_track0

sfxWind3_track0:: @ 08DE0144
	.incbin "assets/sounds/sfxWind3_track0.bin"
sfxWind3:: @ 08DE0180
	sound_header 1 0 0x30 0 gUnk_08A1064C sfxWind3_track0

sfxEA_track0:: @ 08DE018C
	.incbin "assets/sounds/sfxEA_track0.bin"
sfxEA:: @ 08DE01B4
	sound_header 1 0 0x40 0 gUnk_08A10658 sfxEA_track0

sfxEB_track0:: @ 08DE01C0
	.incbin "assets/sounds/sfxEB_track0.bin"
sfxEB:: @ 08DE01F4
	sound_header 1 0 0x40 0 gUnk_08A1067C sfxEB_track0

sfxEC_track0:: @ 08DE0200
	.incbin "assets/sounds/sfxEC_track0.bin"
sfxEC:: @ 08DE0244
	sound_header 1 0 0x40 0 gUnk_08A106A0 sfxEC_track0

sfxED_track0:: @ 08DE0250
	.incbin "assets/sounds/sfxED_track0.bin"
sfxED_track1:: @ 08DE027B
	.incbin "assets/sounds/sfxED_track1.bin"
sfxED:: @ 08DE028C
	sound_header 2 0 0x44 0 gUnk_08A106C4 sfxED_track0 sfxED_track1

sfxEE_track0:: @ 08DE029C
	.incbin "assets/sounds/sfxEE_track0.bin"
sfxEE:: @ 08DE02AC
	sound_header 1 0 0x40 0 gUnk_08A106E8 sfxEE_track0

sfxEF_track0:: @ 08DE02B8
	.incbin "assets/sounds/sfxEF_track0.bin"
sfxEF:: @ 08DE02C8
	sound_header 1 0 0x44 0 gUnk_08A106F4 sfxEF_track0

sfxF0_track0:: @ 08DE02D4
	.incbin "assets/sounds/sfxF0_track0.bin"
sfxF0:: @ 08DE02EC
	sound_header 1 0 0x40 0 gUnk_08A10700 sfxF0_track0

sfxF1_track0:: @ 08DE02F8
	.incbin "assets/sounds/sfxF1_track0.bin"
sfxF1:: @ 08DE0310
	sound_header 1 0 0x40 0 gUnk_08A1070C sfxF1_track0

sfxF2_track0:: @ 08DE031C
	.incbin "assets/sounds/sfxF2_track0.bin"
sfxF2_track1:: @ 08DE0351
	.incbin "assets/sounds/sfxF2_track1.bin"
sfxF2:: @ 08DE0388
	sound_header 2 0 0x40 0 gUnk_08A10718 sfxF2_track0 sfxF2_track1

sfxF3_track0:: @ 08DE0398
	.incbin "assets/sounds/sfxF3_track0.bin"
sfxF3:: @ 08DE03C4
	sound_header 1 0 0x44 0 gUnk_08A1073C sfxF3_track0

sfxSummon_track0:: @ 08DE03D0
	.incbin "assets/sounds/sfxSummon_track0.bin"
sfxSummon:: @ 08DE041C
	sound_header 1 0 0x40 0 gUnk_08A10760 sfxSummon_track0

sfxF5_track0:: @ 08DE0428
	.incbin "assets/sounds/sfxF5_track0.bin"
sfxF5:: @ 08DE04E4
	sound_header 1 0 0x40 0 gUnk_08A1076C sfxF5_track0

sfxEvaporate_track0:: @ 08DE04F0
	.incbin "assets/sounds/sfxEvaporate_track0.bin"
sfxEvaporate:: @ 08DE0534
	sound_header 1 0 0x40 0 gUnk_08A10778 sfxEvaporate_track0

sfxApparate_track0:: @ 08DE0540
	.incbin "assets/sounds/sfxApparate_track0.bin"
sfxApparate:: @ 08DE0584
	sound_header 1 0 0x40 0 gUnk_08A10784 sfxApparate_track0

sfxF8_track0:: @ 08DE0590
	.incbin "assets/sounds/sfxF8_track0.bin"
sfxF8_track1:: @ 08DE05B9
	.incbin "assets/sounds/sfxF8_track1.bin"
sfxF8:: @ 08DE05DC
	sound_header 2 0 0x44 0 gUnk_08A10790 sfxF8_track0 sfxF8_track1

sfxTeleporter_track0:: @ 08DE05EC
	.incbin "assets/sounds/sfxTeleporter_track0.bin"
sfxTeleporter:: @ 08DE0634
	sound_header 1 0 0x40 0 gUnk_08A107B4 sfxTeleporter_track0

sfxFA_track0:: @ 08DE0640
	.incbin "assets/sounds/sfxFA_track0.bin"
sfxFA_track1:: @ 08DE0669
	.incbin "assets/sounds/sfxFA_track1.bin"
sfxFA:: @ 08DE068C
	sound_header 2 0 0x44 0 gUnk_08A107C0 sfxFA_track0 sfxFA_track1

sfxFB_track0:: @ 08DE069C
	.incbin "assets/sounds/sfxFB_track0.bin"
sfxFB:: @ 08DE06E4
	sound_header 1 0 0x40 0 gUnk_08A107E4 sfxFB_track0

sfxFC_track0:: @ 08DE06F0
	.incbin "assets/sounds/sfxFC_track0.bin"
sfxFC_track1:: @ 08DE0707
	.incbin "assets/sounds/sfxFC_track1.bin"
sfxFC:: @ 08DE0728
	sound_header 2 0 0x40 0 gUnk_08A107FC sfxFC_track0 sfxFC_track1

sfxItemBombExplode_track0:: @ 08DE0738
	.incbin "assets/sounds/sfxItemBombExplode_track0.bin"
sfxItemBombExplode:: @ 08DE0784
	sound_header 1 0 0x7f 0 gUnk_08A10820 sfxItemBombExplode_track0

gUnk_08DE0790:: @ 08DE0790
	.incbin "assets/sounds/gUnk_08DE0790.bin"
gUnk_08DE07B8:: @ 08DE07B8
	.incbin "assets/sounds/gUnk_08DE07B8.bin"
sfxHit:: @ 08DE07D4
	.incbin "assets/sounds/sfxHit.bin"
	.4byte gUnk_08A10838
	.4byte gUnk_08DE0790
	.4byte gUnk_08DE07B8
gUnk_08DE07E4:: @ 08DE07E4
	.incbin "assets/sounds/gUnk_08DE07E4.bin"
gUnk_08DE0814:: @ 08DE0814
	.incbin "assets/sounds/gUnk_08DE0814.bin"
sfxFF:: @ 08DE0840
	.incbin "assets/sounds/sfxFF.bin"
	.4byte gUnk_08A1085C
	.4byte gUnk_08DE07E4
	.4byte gUnk_08DE0814
gUnk_08DE0850:: @ 08DE0850
	.incbin "assets/sounds/gUnk_08DE0850.bin"
sfx100:: @ 08DE0860
	.incbin "assets/sounds/sfx100.bin"
	.4byte gUnk_08A10874
	.4byte gUnk_08DE0850
gUnk_08DE086C:: @ 08DE086C
	.incbin "assets/sounds/gUnk_08DE086C.bin"
sfx101:: @ 08DE087C
	.incbin "assets/sounds/sfx101.bin"
	.4byte gUnk_08A10880
	.4byte gUnk_08DE086C
gUnk_08DE0888:: @ 08DE0888
	.incbin "assets/sounds/gUnk_08DE0888.bin"
sfx102:: @ 08DE0898
	.incbin "assets/sounds/sfx102.bin"
	.4byte gUnk_08A1088C
	.4byte gUnk_08DE0888
gUnk_08DE08A4:: @ 08DE08A4
	.incbin "assets/sounds/gUnk_08DE08A4.bin"
sfx103:: @ 08DE08C4
	.incbin "assets/sounds/sfx103.bin"
	.4byte gUnk_08A10898
	.4byte gUnk_08DE08A4
gUnk_08DE08D0:: @ 08DE08D0
	.incbin "assets/sounds/gUnk_08DE08D0.bin"
sfx104:: @ 08DE08FC
	.incbin "assets/sounds/sfx104.bin"
	.4byte gUnk_08A108A4
	.4byte gUnk_08DE08D0
gUnk_08DE0908:: @ 08DE0908
	.incbin "assets/sounds/gUnk_08DE0908.bin"
gUnk_08DE0918:: @ 08DE0918
	.incbin "assets/sounds/gUnk_08DE0918.bin"
gUnk_08DE1385:: @ 08DE1385
	.incbin "assets/sounds/gUnk_08DE1385.bin"
gUnk_08DE150A:: @ 08DE150A
	.incbin "assets/sounds/gUnk_08DE150A.bin"
gUnk_08DE168F:: @ 08DE168F
	.incbin "assets/sounds/gUnk_08DE168F.bin"
gUnk_08DE1814:: @ 08DE1814
	.incbin "assets/sounds/gUnk_08DE1814.bin"
sfx105:: @ 08DE199C
	.incbin "assets/sounds/sfx105.bin"
	.4byte gUnk_08A108B0
	.4byte gUnk_08DE0908
	.4byte gUnk_08DE0918
	.4byte gUnk_08DE1385
	.4byte gUnk_08DE150A
	.4byte gUnk_08DE168F
	.4byte gUnk_08DE1814
sfx106_track0:: @ 08DE19BC
	.incbin "assets/sounds/sfx106_track0.bin"
sfx106:: @ 08DE19D0
	sound_header 1 0 0x40 0 gUnk_08A108EC sfx106_track0

sfx107_track0:: @ 08DE19DC
	.incbin "assets/sounds/sfx107_track0.bin"
sfx107:: @ 08DE1A00
	sound_header 1 0 0x40 0 gUnk_08A108F8 sfx107_track0

sfx108_track0:: @ 08DE1A0C
	.incbin "assets/sounds/sfx108_track0.bin"
sfx108:: @ 08DE1A2C
	sound_header 1 0 0x40 0 gUnk_08A10904 sfx108_track0

sfx109_track0:: @ 08DE1A38
	.incbin "assets/sounds/sfx109_track0.bin"
sfx109_track1:: @ 08DE1A7B
	.incbin "assets/sounds/sfx109_track1.bin"
sfx109_track2:: @ 08DE1ABC
	.incbin "assets/sounds/sfx109_track2.bin"
sfx109_track3:: @ 08DE1AD7
	.incbin "assets/sounds/sfx109_track3.bin"
sfx109_track4:: @ 08DE1AF7
	.incbin "assets/sounds/sfx109_track4.bin"
sfx109_track5:: @ 08DE1B38
	.incbin "assets/sounds/sfx109_track5.bin"
sfx109_track6:: @ 08DE1B79
	.incbin "assets/sounds/sfx109_track6.bin"
sfx109_track7:: @ 08DE1B94
	.incbin "assets/sounds/sfx109_track7.bin"
sfx109_track8:: @ 08DE1BD7
	.incbin "assets/sounds/sfx109_track8.bin"
sfx109_track9:: @ 08DE1D00
	.incbin "assets/sounds/sfx109_track9.bin"
sfx109_trackA:: @ 08DE1E29
	.incbin "assets/sounds/sfx109_trackA.bin"
sfx109_trackB:: @ 08DE1F52
	.incbin "assets/sounds/sfx109_trackB.bin"
sfx109:: @ 08DE207C
	sound_header 0xc 0 0x20 0 gUnk_08A0F890 sfx109_track0 sfx109_track1 sfx109_track2 sfx109_track3 sfx109_track4 sfx109_track5 sfx109_track6 sfx109_track7 sfx109_track8 sfx109_track9 sfx109_trackA sfx109_trackB

sfx10A_track0:: @ 08DE20B4
	.incbin "assets/sounds/sfx10A_track0.bin"
sfx10A:: @ 08DE20C8
	sound_header 1 0 0x60 0 gUnk_08A1091C sfx10A_track0

sfx10B_track0:: @ 08DE20D4
	.incbin "assets/sounds/sfx10B_track0.bin"
sfx10B:: @ 08DE20FC
	sound_header 1 0 0x7f 0 gUnk_08A10928 sfx10B_track0

sfx10C_track0:: @ 08DE2108
	.incbin "assets/sounds/sfx10C_track0.bin"
sfx10C:: @ 08DE2124
	sound_header 1 0 0x50 0 gUnk_08A10940 sfx10C_track0

sfx10D_track0:: @ 08DE2130
	.incbin "assets/sounds/sfx10D_track0.bin"
sfx10D:: @ 08DE2174
	sound_header 1 0 0x40 0 gUnk_08A10958 sfx10D_track0

sfx10E_track0:: @ 08DE2180
	.incbin "assets/sounds/sfx10E_track0.bin"
sfx10E:: @ 08DE21AC
	sound_header 1 0 0x40 0 gUnk_08A10970 sfx10E_track0

sfx10F_track0:: @ 08DE21B8
	.incbin "assets/sounds/sfx10F_track0.bin"
sfx10F:: @ 08DE21E8
	sound_header 1 0 0x40 0 gUnk_08A10988 sfx10F_track0

sfx110_track0:: @ 08DE21F4
	.incbin "assets/sounds/sfx110_track0.bin"
sfx110:: @ 08DE222C
	sound_header 1 0 0x60 0 gUnk_08A10994 sfx110_track0

sfx111_track0:: @ 08DE2238
	.incbin "assets/sounds/sfx111_track0.bin"
sfx111:: @ 08DE2260
	sound_header 1 0 0x60 0 gUnk_08A109A0 sfx111_track0

sfx112_track0:: @ 08DE226C
	.incbin "assets/sounds/sfx112_track0.bin"
sfx112:: @ 08DE2338
	sound_header 1 0 0x60 0 gUnk_08A109B8 sfx112_track0

sfx113_track0:: @ 08DE2344
	.incbin "assets/sounds/sfx113_track0.bin"
sfx113_track1:: @ 08DE23A7
	.incbin "assets/sounds/sfx113_track1.bin"
sfx113:: @ 08DE2408
	sound_header 2 0 0x60 0 gUnk_08A109C4 sfx113_track0 sfx113_track1

sfx114_track0:: @ 08DE2418
	.incbin "assets/sounds/sfx114_track0.bin"
sfx114:: @ 08DE2478
	sound_header 1 0 0x60 0 gUnk_08A109DC sfx114_track0

sfx115_track0:: @ 08DE2484
	.incbin "assets/sounds/sfx115_track0.bin"
sfx115:: @ 08DE24BC
	sound_header 1 0 0x40 0 gUnk_08A109E8 sfx115_track0

sfx116_track0:: @ 08DE24C8
	.incbin "assets/sounds/sfx116_track0.bin"
sfx116:: @ 08DE2500
	sound_header 1 0 0x40 0 gUnk_08A109F4 sfx116_track0

sfx117_track0:: @ 08DE250C
	.incbin "assets/sounds/sfx117_track0.bin"
sfx117:: @ 08DE251C
	sound_header 1 0 0x40 0 gUnk_08A10A00 sfx117_track0

sfxItemShieldBounce_track0:: @ 08DE2528
	.incbin "assets/sounds/sfxItemShieldBounce_track0.bin"
sfxItemShieldBounce_track1:: @ 08DE2537
	.incbin "assets/sounds/sfxItemShieldBounce_track1.bin"
sfxItemShieldBounce:: @ 08DE2544
	sound_header 2 0 0x44 0 gUnk_08A10A0C sfxItemShieldBounce_track0 sfxItemShieldBounce_track1

sfxItemGlovesKnockback_track0:: @ 08DE2554
	.incbin "assets/sounds/sfxItemGlovesKnockback_track0.bin"
sfxItemGlovesKnockback_track1:: @ 08DE256F
	.incbin "assets/sounds/sfxItemGlovesKnockback_track1.bin"
sfxItemGlovesKnockback:: @ 08DE2584
	sound_header 2 0 0x44 0 gUnk_08A10A24 sfxItemGlovesKnockback_track0 sfxItemGlovesKnockback_track1

sfxEmArmosOn_track0:: @ 08DE2594
	.incbin "assets/sounds/sfxEmArmosOn_track0.bin"
sfxEmArmosOn:: @ 08DE25A4
	sound_header 1 0 0x40 0 gUnk_08A10A3C sfxEmArmosOn_track0

sfx11B_track0:: @ 08DE25B0
	.incbin "assets/sounds/sfx11B_track0.bin"
sfx11B:: @ 08DE25D0
	sound_header 1 0 0x40 0 gUnk_08A10A48 sfx11B_track0

sfx11C_track0:: @ 08DE25DC
	.incbin "assets/sounds/sfx11C_track0.bin"
sfx11C:: @ 08DE25F0
	sound_header 1 0 0x40 0 gUnk_08A10A54 sfx11C_track0

sfx11D_track0:: @ 08DE25FC
	.incbin "assets/sounds/sfx11D_track0.bin"
sfx11D_track1:: @ 08DE264C
	.incbin "assets/sounds/sfx11D_track1.bin"
sfx11D:: @ 08DE267C
	sound_header 2 0 0x40 0 gUnk_08A10A6C sfx11D_track0 sfx11D_track1

sfxEmMoblinSpear_track0:: @ 08DE268C
	.incbin "assets/sounds/sfxEmMoblinSpear_track0.bin"
sfxEmMoblinSpear:: @ 08DE269C
	sound_header 1 0 0x40 0 gUnk_08A10A84 sfxEmMoblinSpear_track0

sfxLowHealth_track0:: @ 08DE26A8
	.incbin "assets/sounds/sfxLowHealth_track0.bin"
sfxLowHealth:: @ 08DE26C4
	sound_header 1 0 0x40 0 gUnk_08A10A90 sfxLowHealth_track0

sfxChargingUp_track0:: @ 08DE26D0
	.incbin "assets/sounds/sfxChargingUp_track0.bin"
sfxChargingUp:: @ 08DE26E4
	sound_header 1 0 0x40 0 gUnk_08A10A9C sfxChargingUp_track0

sfxStairs_track0:: @ 08DE26F0
	.incbin "assets/sounds/sfxStairs_track0.bin"
sfxStairs:: @ 08DE2718
	sound_header 1 0 0x40 0 gUnk_08A10AA8 sfxStairs_track0

sfx122_track0:: @ 08DE2724
	.incbin "assets/sounds/sfx122_track0.bin"
sfx122:: @ 08DE2734
	sound_header 1 0 0x40 0 gUnk_08A10AB4 sfx122_track0

sfx123_track0:: @ 08DE2740
	.incbin "assets/sounds/sfx123_track0.bin"
sfx123:: @ 08DE2778
	sound_header 1 0 0x40 0 gUnk_08A10AC0 sfx123_track0

sfx124_track0:: @ 08DE2784
	.incbin "assets/sounds/sfx124_track0.bin"
sfx124:: @ 08DE27C0
	sound_header 1 0 0x30 0 gUnk_08A10ACC sfx124_track0

sfx125_track0:: @ 08DE27CC
	.incbin "assets/sounds/sfx125_track0.bin"
sfx125:: @ 08DE27DC
	sound_header 1 0 0x40 0 gUnk_08A10AE4 sfx125_track0

sfx126_track0:: @ 08DE27E8
	.incbin "assets/sounds/sfx126_track0.bin"
sfx126_track1:: @ 08DE281A
	.incbin "assets/sounds/sfx126_track1.bin"
sfx126:: @ 08DE287C
	sound_header 2 0 0x40 0 gUnk_08A10AF0 sfx126_track0 sfx126_track1

sfxBossHit_track0:: @ 08DE288C
	.incbin "assets/sounds/sfxBossHit_track0.bin"
sfxBossHit_track1:: @ 08DE2902
	.incbin "assets/sounds/sfxBossHit_track1.bin"
sfxBossHit:: @ 08DE2944
	sound_header 2 0 0x70 0 gUnk_08A10B08 sfxBossHit_track0 sfxBossHit_track1

sfxBossDie_track0:: @ 08DE2954
	.incbin "assets/sounds/sfxBossDie_track0.bin"
sfxBossDie_track1:: @ 08DE29DE
	.incbin "assets/sounds/sfxBossDie_track1.bin"
sfxBossDie:: @ 08DE2A68
	sound_header 2 0 0x70 0 gUnk_08A10B20 sfxBossDie_track0 sfxBossDie_track1

sfxBossExplode_track0:: @ 08DE2A78
	.incbin "assets/sounds/sfxBossExplode_track0.bin"
sfxBossExplode:: @ 08DE2AE8
	sound_header 1 0 0x90 0 gUnk_08A10B38 sfxBossExplode_track0

sfx12A_track0:: @ 08DE2AF4
	.incbin "assets/sounds/sfx12A_track0.bin"
sfx12A:: @ 08DE2B1C
	sound_header 1 0 0x40 0 gUnk_08A10B44 sfx12A_track0

sfx12B_track0:: @ 08DE2B28
	.incbin "assets/sounds/sfx12B_track0.bin"
sfx12B:: @ 08DE2B3C
	sound_header 1 0 0x40 0 gUnk_08A10B5C sfx12B_track0

sfx12C_track0:: @ 08DE2B48
	.incbin "assets/sounds/sfx12C_track0.bin"
sfx12C:: @ 08DE2B58
	sound_header 1 0 0x40 0 gUnk_08A10B68 sfx12C_track0

sfx12D_track0:: @ 08DE2B64
	.incbin "assets/sounds/sfx12D_track0.bin"
sfx12D:: @ 08DE2B78
	sound_header 1 0 0x40 0 gUnk_08A10B74 sfx12D_track0

sfx12E_track0:: @ 08DE2B84
	.incbin "assets/sounds/sfx12E_track0.bin"
sfx12E:: @ 08DE2B9C
	sound_header 1 0 0x40 0 gUnk_08A10B80 sfx12E_track0

sfx12F_track0:: @ 08DE2BA8
	.incbin "assets/sounds/sfx12F_track0.bin"
sfx12F:: @ 08DE2BD0
	sound_header 1 0 0x40 0 gUnk_08A10B8C sfx12F_track0

sfx130_track0:: @ 08DE2BDC
	.incbin "assets/sounds/sfx130_track0.bin"
sfx130:: @ 08DE2BF4
	sound_header 1 0 0x40 0 gUnk_08A10BA4 sfx130_track0

sfx131_track0:: @ 08DE2C00
	.incbin "assets/sounds/sfx131_track0.bin"
sfx131:: @ 08DE2C10
	sound_header 1 0 0x40 0 gUnk_08A10BB0 sfx131_track0

sfx132_track0:: @ 08DE2C1C
	.incbin "assets/sounds/sfx132_track0.bin"
sfx132:: @ 08DE2C2C
	sound_header 1 0 0x40 0 gUnk_08A10BBC sfx132_track0

sfx133_track0:: @ 08DE2C38
	.incbin "assets/sounds/sfx133_track0.bin"
sfx133:: @ 08DE2C48
	sound_header 1 0 0x40 0 gUnk_08A10BC8 sfx133_track0

sfx134_track0:: @ 08DE2C54
	.incbin "assets/sounds/sfx134_track0.bin"
sfx134:: @ 08DE2C64
	sound_header 1 0 0x40 0 gUnk_08A10BD4 sfx134_track0

sfx135_track0:: @ 08DE2C70
	.incbin "assets/sounds/sfx135_track0.bin"
sfx135:: @ 08DE2C8C
	sound_header 1 0 0x40 0 gUnk_08A10BE0 sfx135_track0

sfx136_track0:: @ 08DE2C98
	.incbin "assets/sounds/sfx136_track0.bin"
sfx136:: @ 08DE2CFC
	sound_header 1 0 0x40 0 gUnk_08A10BEC sfx136_track0

sfx137_track0:: @ 08DE2D08
	.incbin "assets/sounds/sfx137_track0.bin"
sfx137:: @ 08DE2D18
	sound_header 1 0 0x40 0 gUnk_08A10BF8 sfx137_track0

sfx138_track0:: @ 08DE2D24
	.incbin "assets/sounds/sfx138_track0.bin"
sfx138:: @ 08DE2D34
	sound_header 1 0 0x40 0 gUnk_08A10C04 sfx138_track0

sfx139_track0:: @ 08DE2D40
	.incbin "assets/sounds/sfx139_track0.bin"
sfx139:: @ 08DE2D50
	sound_header 1 0 0x40 0 gUnk_08A10C10 sfx139_track0

sfx13A_track0:: @ 08DE2D5C
	.incbin "assets/sounds/sfx13A_track0.bin"
sfx13A:: @ 08DE2D6C
	sound_header 1 0 0x40 0 gUnk_08A10C1C sfx13A_track0

sfx13B_track0:: @ 08DE2D78
	.incbin "assets/sounds/sfx13B_track0.bin"
sfx13B:: @ 08DE2D88
	sound_header 1 0 0x40 0 gUnk_08A10C28 sfx13B_track0

sfx13C_track0:: @ 08DE2D94
	.incbin "assets/sounds/sfx13C_track0.bin"
sfx13C:: @ 08DE2DA4
	sound_header 1 0 0x40 0 gUnk_08A10C34 sfx13C_track0

sfxItemLanternOn_track0:: @ 08DE2DB0
	.incbin "assets/sounds/sfxItemLanternOn_track0.bin"
sfxItemLanternOn:: @ 08DE2DC0
	sound_header 1 0 0x40 0 gUnk_08A10C40 sfxItemLanternOn_track0

sfxItemLanternOff_track0:: @ 08DE2DCC
	.incbin "assets/sounds/sfxItemLanternOff_track0.bin"
sfxItemLanternOff:: @ 08DE2DDC
	sound_header 1 0 0x40 0 gUnk_08A10C4C sfxItemLanternOff_track0

sfxItemSwordBeam_track0:: @ 08DE2DE8
	.incbin "assets/sounds/sfxItemSwordBeam_track0.bin"
sfxItemSwordBeam:: @ 08DE2E74
	sound_header 1 0 0x48 0 gUnk_08A10C58 sfxItemSwordBeam_track0

sfx140_track0:: @ 08DE2E80
	.incbin "assets/sounds/sfx140_track0.bin"
sfx140:: @ 08DE2EDC
	sound_header 1 0 0x40 0 gUnk_08A10C64 sfx140_track0

sfxHeartContainerSpawn_track0:: @ 08DE2EE8
	.incbin "assets/sounds/sfxHeartContainerSpawn_track0.bin"
sfxHeartContainerSpawn_track1:: @ 08DE2F49
	.incbin "assets/sounds/sfxHeartContainerSpawn_track1.bin"
sfxHeartContainerSpawn:: @ 08DE2F98
	sound_header 2 0 0x40 0 gUnk_08A10C70 sfxHeartContainerSpawn_track0 sfxHeartContainerSpawn_track1

sfxSparkles_track0:: @ 08DE2FA8
	.incbin "assets/sounds/sfxSparkles_track0.bin"
gUnk_08DE30BE:: @ 08DE30BE
	.incbin "assets/sounds/gUnk_08DE30BE.bin"
	.4byte gUnk_08DE30BE
	.incbin "assets/sounds/gUnk_08DE30BE_1.bin"
sfxSparkles:: @ 08DE3100
	sound_header 1 0 0x40 0 gUnk_08A10C94 sfxSparkles_track0

sfx143_track0:: @ 08DE310C
	.incbin "assets/sounds/sfx143_track0.bin"
sfx143:: @ 08DE311C
	sound_header 1 0 0xf0 0 gUnk_08A10CAC sfx143_track0

sfx144_track0:: @ 08DE3128
	.incbin "assets/sounds/sfx144_track0.bin"
sfx144:: @ 08DE3154
	sound_header 1 0 0x40 0 gUnk_08A10CB8 sfx144_track0

sfx145_track0:: @ 08DE3160
	.incbin "assets/sounds/sfx145_track0.bin"
sfx145:: @ 08DE3188
	sound_header 1 0 0x40 0 gUnk_08A10CC4 sfx145_track0

sfx146_track0:: @ 08DE3194
	.incbin "assets/sounds/sfx146_track0.bin"
sfx146:: @ 08DE31C4
	sound_header 1 0 0x40 0 gUnk_08A10CDC sfx146_track0

sfx147_track0:: @ 08DE31D0
	.incbin "assets/sounds/sfx147_track0.bin"
sfx147_track1:: @ 08DE3239
	.incbin "assets/sounds/sfx147_track1.bin"
sfx147:: @ 08DE32A4
	sound_header 2 0 0x40 0 gUnk_08A10CE8 sfx147_track0 sfx147_track1

sfx148_track0:: @ 08DE32B4
	.incbin "assets/sounds/sfx148_track0.bin"
sfx148_track1:: @ 08DE3384
	.incbin "assets/sounds/sfx148_track1.bin"
sfx148:: @ 08DE33B4
	sound_header 2 0 0x40 0 gUnk_08A10D00 sfx148_track0 sfx148_track1

sfx149_track0:: @ 08DE33C4
	.incbin "assets/sounds/sfx149_track0.bin"
sfx149:: @ 08DE33E8
	sound_header 1 0 0x40 0 gUnk_08A10D24 sfx149_track0

sfx14A_track0:: @ 08DE33F4
	.incbin "assets/sounds/sfx14A_track0.bin"
sfx14A:: @ 08DE34A4
	sound_header 1 0 0x7f 0 gUnk_08A10D30 sfx14A_track0

sfx14B_track0:: @ 08DE34B0
	.incbin "assets/sounds/sfx14B_track0.bin"
sfx14B:: @ 08DE34E4
	sound_header 1 0 0x40 0 gUnk_08A10D3C sfx14B_track0

sfx14C_track0:: @ 08DE34F0
	.incbin "assets/sounds/sfx14C_track0.bin"
sfx14C_track1:: @ 08DE3538
	.incbin "assets/sounds/sfx14C_track1.bin"
sfx14C:: @ 08DE3564
	sound_header 2 0 0x40 0 gUnk_08A10D54 sfx14C_track0 sfx14C_track1

sfx14D_track0:: @ 08DE3574
	.incbin "assets/sounds/sfx14D_track0.bin"
sfx14D:: @ 08DE3588
	sound_header 1 0 0x60 0 gUnk_08A10D84 sfx14D_track0

sfx14E_track0:: @ 08DE3594
	.incbin "assets/sounds/sfx14E_track0.bin"
sfx14E:: @ 08DE35AC
	sound_header 1 0 0x40 0 gUnk_08A10D90 sfx14E_track0

sfx14F_track0:: @ 08DE35B8
	.incbin "assets/sounds/sfx14F_track0.bin"
sfx14F:: @ 08DE3618
	sound_header 1 0 0x40 0 gUnk_08A10D9C sfx14F_track0

sfx150_track0:: @ 08DE3624
	.incbin "assets/sounds/sfx150_track0.bin"
sfx150_track1:: @ 08DE3644
	.incbin "assets/sounds/sfx150_track1.bin"
sfx150:: @ 08DE3674
	sound_header 2 0 0x40 0 gUnk_08A10DA8 sfx150_track0 sfx150_track1

sfx151_track0:: @ 08DE3684
	.incbin "assets/sounds/sfx151_track0.bin"
sfx151:: @ 08DE36B0
	sound_header 1 0 0x60 0 gUnk_08A10DC0 sfx151_track0

sfx152_track0:: @ 08DE36BC
	.incbin "assets/sounds/sfx152_track0.bin"
sfx152_track1:: @ 08DE3742
	.incbin "assets/sounds/sfx152_track1.bin"
sfx152:: @ 08DE37CC
	sound_header 2 0 0x40 0 gUnk_08A10DD8 sfx152_track0 sfx152_track1

sfx153_track0:: @ 08DE37DC
	.incbin "assets/sounds/sfx153_track0.bin"
sfx153:: @ 08DE380C
	sound_header 1 0 0x60 0 gUnk_08A10DF0 sfx153_track0

sfx154_track0:: @ 08DE3818
	.incbin "assets/sounds/sfx154_track0.bin"
sfx154:: @ 08DE3850
	sound_header 1 0 0x40 0 gUnk_08A10DFC sfx154_track0

sfx155_track0:: @ 08DE385C
	.incbin "assets/sounds/sfx155_track0.bin"
sfx155:: @ 08DE3888
	sound_header 1 0 0x40 0 gUnk_08A10E14 sfx155_track0

sfx156_track0:: @ 08DE3894
	.incbin "assets/sounds/sfx156_track0.bin"
sfx156:: @ 08DE38F0
	sound_header 1 0 0x40 0 gUnk_08A10E20 sfx156_track0

sfx157_track0:: @ 08DE38FC
	.incbin "assets/sounds/sfx157_track0.bin"
sfx157:: @ 08DE3918
	sound_header 1 0 0x40 0 gUnk_08A10E2C sfx157_track0

sfx158_track0:: @ 08DE3924
	.incbin "assets/sounds/sfx158_track0.bin"
sfx158:: @ 08DE3968
	sound_header 1 0 0x40 0 gUnk_08A10E44 sfx158_track0

sfx159_track0:: @ 08DE3974
	.incbin "assets/sounds/sfx159_track0.bin"
sfx159:: @ 08DE39B4
	sound_header 1 0 0x40 0 gUnk_08A10E68 sfx159_track0

sfx15A_track0:: @ 08DE39C0
	.incbin "assets/sounds/sfx15A_track0.bin"
sfx15A_track1:: @ 08DE39E6
	.incbin "assets/sounds/sfx15A_track1.bin"
sfx15A:: @ 08DE3A10
	sound_header 2 0 0x40 0 gUnk_08A10E74 sfx15A_track0 sfx15A_track1

sfx15B_track0:: @ 08DE3A20
	.incbin "assets/sounds/sfx15B_track0.bin"
sfx15B:: @ 08DE3A70
	sound_header 1 0 0x40 0 gUnk_08A10EA4 sfx15B_track0

sfx15C_track0:: @ 08DE3A7C
	.incbin "assets/sounds/sfx15C_track0.bin"
sfx15C:: @ 08DE3AA0
	sound_header 1 0 0x40 0 gUnk_08A10EBC sfx15C_track0

sfx15D_track0:: @ 08DE3AAC
	.incbin "assets/sounds/sfx15D_track0.bin"
sfx15D_track1:: @ 08DE3AD3
	.incbin "assets/sounds/sfx15D_track1.bin"
sfx15D:: @ 08DE3AF8
	sound_header 2 0 0x40 0 gUnk_08A10EC8 sfx15D_track0 sfx15D_track1

sfx15E_track0:: @ 08DE3B08
	.incbin "assets/sounds/sfx15E_track0.bin"
sfx15E:: @ 08DE3B30
	sound_header 1 0 0x40 0 gUnk_08A10EEC sfx15E_track0

sfx15F_track0:: @ 08DE3B3C
	.incbin "assets/sounds/sfx15F_track0.bin"
sfx15F:: @ 08DE3B6C
	sound_header 1 0 0x40 0 gUnk_08A10EF8 sfx15F_track0

sfx160_track0:: @ 08DE3B78
	.incbin "assets/sounds/sfx160_track0.bin"
sfx160:: @ 08DE3BD4
	sound_header 1 0 0x40 0 gUnk_08A10F04 sfx160_track0

sfx161_track0:: @ 08DE3BE0
	.incbin "assets/sounds/sfx161_track0.bin"
sfx161:: @ 08DE3BF0
	sound_header 1 0 0x28 0 gUnk_08A10F1C sfx161_track0

sfx162_track0:: @ 08DE3BFC
	.incbin "assets/sounds/sfx162_track0.bin"
sfx162:: @ 08DE3C14
	sound_header 1 0 0x40 0 gUnk_08A10F28 sfx162_track0

sfx163_track0:: @ 08DE3C20
	.incbin "assets/sounds/sfx163_track0.bin"
sfx163_track1:: @ 08DE3C40
	.incbin "assets/sounds/sfx163_track1.bin"
sfx163:: @ 08DE3C64
	sound_header 2 0 0x40 0 gUnk_08A10F34 sfx163_track0 sfx163_track1

sfx164_track0:: @ 08DE3C74
	.incbin "assets/sounds/sfx164_track0.bin"
sfx164:: @ 08DE3CC0
	sound_header 1 0 0x40 0 gUnk_08A10F58 sfx164_track0

sfx165_track0:: @ 08DE3CCC
	.incbin "assets/sounds/sfx165_track0.bin"
sfx165:: @ 08DE3D34
	sound_header 1 0 0x40 0 gUnk_08A10F70 sfx165_track0

sfx166_track0:: @ 08DE3D40
	.incbin "assets/sounds/sfx166_track0.bin"
sfx166:: @ 08DE3DB0
	sound_header 1 0 0x40 0 gUnk_08A10F88 sfx166_track0

sfx167_track0:: @ 08DE3DBC
	.incbin "assets/sounds/sfx167_track0.bin"
sfx167:: @ 08DE3E34
	sound_header 1 0 0x40 0 gUnk_08A10FA0 sfx167_track0

sfx168_track0:: @ 08DE3E40
	.incbin "assets/sounds/sfx168_track0.bin"
sfx168:: @ 08DE3E5C
	sound_header 1 0 0x40 0 gUnk_08A10FB8 sfx168_track0

sfx169_track0:: @ 08DE3E68
	.incbin "assets/sounds/sfx169_track0.bin"
sfx169:: @ 08DE3EA4
	sound_header 1 0 0x40 0 gUnk_08A10FD0 sfx169_track0

sfx16A_track0:: @ 08DE3EB0
	.incbin "assets/sounds/sfx16A_track0.bin"
sfx16A:: @ 08DE3EE0
	sound_header 1 0 0x40 0 gUnk_08A10FE8 sfx16A_track0

sfx16B_track0:: @ 08DE3EEC
	.incbin "assets/sounds/sfx16B_track0.bin"
sfx16B:: @ 08DE3F1C
	sound_header 1 0 0x40 0 gUnk_08A11000 sfx16B_track0

sfx16C_track0:: @ 08DE3F28
	.incbin "assets/sounds/sfx16C_track0.bin"
sfx16C:: @ 08DE3F5C
	sound_header 1 0 0x40 0 gUnk_08A11018 sfx16C_track0

sfx16D_track0:: @ 08DE3F68
	.incbin "assets/sounds/sfx16D_track0.bin"
sfx16D_track1:: @ 08DE3FB4
	.incbin "assets/sounds/sfx16D_track1.bin"
sfx16D:: @ 08DE4028
	sound_header 2 0 0x40 0 gUnk_08A11048 sfx16D_track0 sfx16D_track1

sfx16E_track0:: @ 08DE4038
	.incbin "assets/sounds/sfx16E_track0.bin"
sfx16E:: @ 08DE406C
	sound_header 1 0 0x40 0 gUnk_08A1106C sfx16E_track0

sfxPlyShrinking_track0:: @ 08DE4078
	.incbin "assets/sounds/sfxPlyShrinking_track0.bin"
sfxPlyShrinking:: @ 08DE4110
	sound_header 1 0 0x40 0 gUnk_08A11084 sfxPlyShrinking_track0

sfxPlyGrow_track0:: @ 08DE411C
	.incbin "assets/sounds/sfxPlyGrow_track0.bin"
sfxPlyGrow:: @ 08DE417C
	sound_header 1 0 0x40 0 gUnk_08A11090 sfxPlyGrow_track0

sfx171_track0:: @ 08DE4188
	.incbin "assets/sounds/sfx171_track0.bin"
sfx171:: @ 08DE4198
	sound_header 1 0 0x40 0 gUnk_08A1109C sfx171_track0

sfx172_track0:: @ 08DE41A4
	.incbin "assets/sounds/sfx172_track0.bin"
sfx172:: @ 08DE41D0
	sound_header 1 0 0x40 0 gUnk_08A110A8 sfx172_track0

sfxEzloUi_track0:: @ 08DE41DC
	.incbin "assets/sounds/sfxEzloUi_track0.bin"
sfxEzloUi_track1:: @ 08DE41F4
	.incbin "assets/sounds/sfxEzloUi_track1.bin"
sfxEzloUi:: @ 08DE420C
	sound_header 2 0 0x7f 0 gUnk_08A110B4 sfxEzloUi_track0 sfxEzloUi_track1

sfx174_track0:: @ 08DE421C
	.incbin "assets/sounds/sfx174_track0.bin"
sfx174:: @ 08DE4244
	sound_header 1 0 0x40 0 gUnk_08A110CC sfx174_track0

sfx175_track0:: @ 08DE4250
	.incbin "assets/sounds/sfx175_track0.bin"
sfx175:: @ 08DE4278
	sound_header 1 0 0x30 0 gUnk_08A110D8 sfx175_track0

sfx176_track0:: @ 08DE4284
	.incbin "assets/sounds/sfx176_track0.bin"
sfx176_track1:: @ 08DE42A4
	.incbin "assets/sounds/sfx176_track1.bin"
sfx176:: @ 08DE42C0
	sound_header 2 0 0x40 0 gUnk_08A110E4 sfx176_track0 sfx176_track1

sfx177_track0:: @ 08DE42D0
	.incbin "assets/sounds/sfx177_track0.bin"
sfx177_track1:: @ 08DE432B
	.incbin "assets/sounds/sfx177_track1.bin"
sfx177:: @ 08DE4380
	sound_header 2 0 0x60 0 gUnk_08A11108 sfx177_track0 sfx177_track1

sfx178_track0:: @ 08DE4390
	.incbin "assets/sounds/sfx178_track0.bin"
sfx178:: @ 08DE43D4
	sound_header 1 0 0x40 0 gUnk_08A1112C sfx178_track0

sfx179_track0:: @ 08DE43E0
	.incbin "assets/sounds/sfx179_track0.bin"
sfx179:: @ 08DE4424
	sound_header 1 0 0x40 0 gUnk_08A11144 sfx179_track0

sfx17A_track0:: @ 08DE4430
	.incbin "assets/sounds/sfx17A_track0.bin"
sfx17A_track1:: @ 08DE4486
	.incbin "assets/sounds/sfx17A_track1.bin"
sfx17A:: @ 08DE44C4
	sound_header 2 0 0x78 0 gUnk_08A11150 sfx17A_track0 sfx17A_track1

sfxLavaTitleStep_track0:: @ 08DE44D4
	.incbin "assets/sounds/sfxLavaTitleStep_track0.bin"
sfxLavaTitleStep:: @ 08DE44E4
	sound_header 1 0 0x40 0 gUnk_08A11168 sfxLavaTitleStep_track0

sfxLavaTitleWobble_track0:: @ 08DE44F0
	.incbin "assets/sounds/sfxLavaTitleWobble_track0.bin"
sfxLavaTitleWobble:: @ 08DE4500
	sound_header 1 0 0x40 0 gUnk_08A11174 sfxLavaTitleWobble_track0

sfxLavaTitleSink_track0:: @ 08DE450C
	.incbin "assets/sounds/sfxLavaTitleSink_track0.bin"
sfxLavaTitleSink:: @ 08DE451C
	sound_header 1 0 0x40 0 gUnk_08A11180 sfxLavaTitleSink_track0

sfxLavaTitleFlip_track0:: @ 08DE4528
	.incbin "assets/sounds/sfxLavaTitleFlip_track0.bin"
sfxLavaTitleFlip:: @ 08DE4538
	sound_header 1 0 0x40 0 gUnk_08A1118C sfxLavaTitleFlip_track0

sfxLavaTitleLand_track0:: @ 08DE4544
	.incbin "assets/sounds/sfxLavaTitleLand_track0.bin"
sfxLavaTitleLand:: @ 08DE4554
	sound_header 1 0 0x40 0 gUnk_08A11198 sfxLavaTitleLand_track0

sfx180_track0:: @ 08DE4560
	.incbin "assets/sounds/sfx180_track0.bin"
sfx180:: @ 08DE4574
	sound_header 1 0 0x40 0 gUnk_08A111A4 sfx180_track0

sfx181_track0:: @ 08DE4580
	.incbin "assets/sounds/sfx181_track0.bin"
sfx181:: @ 08DE4594
	sound_header 1 0 0x40 0 gUnk_08A111B0 sfx181_track0

sfx182_track0:: @ 08DE45A0
	.incbin "assets/sounds/sfx182_track0.bin"
sfx182_track1:: @ 08DE45C2
	.incbin "assets/sounds/sfx182_track1.bin"
sfx182:: @ 08DE45F0
	sound_header 2 0 0x40 0 gUnk_08A111BC sfx182_track0 sfx182_track1

sfx183_track0:: @ 08DE4600
	.incbin "assets/sounds/sfx183_track0.bin"
sfx183_track1:: @ 08DE466B
	.incbin "assets/sounds/sfx183_track1.bin"
sfx183:: @ 08DE46A8
	sound_header 2 0 0x30 0 gUnk_08A111E0 sfx183_track0 sfx183_track1

sfx184_track0:: @ 08DE46B8
	.incbin "assets/sounds/sfx184_track0.bin"
sfx184:: @ 08DE46C8
	sound_header 1 0 0x40 0 gUnk_08A111F8 sfx184_track0

sfx185_track0:: @ 08DE46D4
	.incbin "assets/sounds/sfx185_track0.bin"
sfx185_track1:: @ 08DE4711
	.incbin "assets/sounds/sfx185_track1.bin"
sfx185:: @ 08DE475C
	sound_header 2 0 0x40 0 gUnk_08A11204 sfx185_track0 sfx185_track1

sfx186_track0:: @ 08DE476C
	.incbin "assets/sounds/sfx186_track0.bin"
sfx186:: @ 08DE4790
	sound_header 1 0 0x40 0 gUnk_08A11228 sfx186_track0

sfxStairsAscend_track0:: @ 08DE479C
	.incbin "assets/sounds/sfxStairsAscend_track0.bin"
sfxStairsAscend:: @ 08DE47E4
	sound_header 1 0 0x40 0 gUnk_08A11234 sfxStairsAscend_track0

sfxStairsDescend_track0:: @ 08DE47F0
	.incbin "assets/sounds/sfxStairsDescend_track0.bin"
sfxStairsDescend:: @ 08DE4838
	sound_header 1 0 0x40 0 gUnk_08A11240 sfxStairsDescend_track0

sfx189_track0:: @ 08DE4844
	.incbin "assets/sounds/sfx189_track0.bin"
sfx189:: @ 08DE4878
	sound_header 1 0 0x60 0 gUnk_08A1124C sfx189_track0

sfx18A_track0:: @ 08DE4884
	.incbin "assets/sounds/sfx18A_track0.bin"
sfx18A_track1:: @ 08DE48A3
	.incbin "assets/sounds/sfx18A_track1.bin"
sfx18A:: @ 08DE48BC
	sound_header 2 0 0x40 0 gUnk_08A11258 sfx18A_track0 sfx18A_track1

sfx18B_track0:: @ 08DE48CC
	.incbin "assets/sounds/sfx18B_track0.bin"
sfx18B_track1:: @ 08DE4909
	.incbin "assets/sounds/sfx18B_track1.bin"
sfx18B:: @ 08DE4930
	sound_header 2 0 0x40 0 gUnk_08A1127C sfx18B_track0 sfx18B_track1

sfx18C_track0:: @ 08DE4940
	.incbin "assets/sounds/sfx18C_track0.bin"
sfx18C_track1:: @ 08DE495B
	.incbin "assets/sounds/sfx18C_track1.bin"
sfx18C:: @ 08DE4968
	sound_header 2 0 0x40 0 gUnk_08A112AC sfx18C_track0 sfx18C_track1

sfx18D_track0:: @ 08DE4978
	.incbin "assets/sounds/sfx18D_track0.bin"
sfx18D:: @ 08DE49AC
	sound_header 1 0 0x40 0 gUnk_08A112D0 sfx18D_track0

sfx18E_track0:: @ 08DE49B8
	.incbin "assets/sounds/sfx18E_track0.bin"
sfx18E:: @ 08DE49D0
	sound_header 1 0 0x40 0 gUnk_08A112E8 sfx18E_track0

sfx18F_track0:: @ 08DE49DC
	.incbin "assets/sounds/sfx18F_track0.bin"
sfx18F:: @ 08DE4A0C
	sound_header 1 0 0x50 0 gUnk_08A11300 sfx18F_track0

sfx190_track0:: @ 08DE4A18
	.incbin "assets/sounds/sfx190_track0.bin"
sfx190:: @ 08DE4A28
	sound_header 1 0 0x40 0 gUnk_08A1130C sfx190_track0

sfx191_track0:: @ 08DE4A34
	.incbin "assets/sounds/sfx191_track0.bin"
sfx191:: @ 08DE4A60
	sound_header 1 0 0x40 0 gUnk_08A11318 sfx191_track0

sfx192_track0:: @ 08DE4A6C
	.incbin "assets/sounds/sfx192_track0.bin"
sfx192_track1:: @ 08DE4AA4
	.incbin "assets/sounds/sfx192_track1.bin"
sfx192:: @ 08DE4ACC
	sound_header 2 0 0x40 0 gUnk_08A11330 sfx192_track0 sfx192_track1

sfx193_track0:: @ 08DE4ADC
	.incbin "assets/sounds/sfx193_track0.bin"
sfx193:: @ 08DE4B00
	sound_header 1 0 0x40 0 gUnk_08A11360 sfx193_track0

sfx194_track0:: @ 08DE4B0C
	.incbin "assets/sounds/sfx194_track0.bin"
sfx194_track1:: @ 08DE4B2A
	.incbin "assets/sounds/sfx194_track1.bin"
sfx194:: @ 08DE4B50
	sound_header 2 0 0x40 0 gUnk_08A1136C sfx194_track0 sfx194_track1

sfx195_track0:: @ 08DE4B60
	.incbin "assets/sounds/sfx195_track0.bin"
sfx195_track1:: @ 08DE4BA4
	.incbin "assets/sounds/sfx195_track1.bin"
sfx195:: @ 08DE4BEC
	sound_header 2 0 0x40 0 gUnk_08A11384 sfx195_track0 sfx195_track1

sfx196_track0:: @ 08DE4BFC
	.incbin "assets/sounds/sfx196_track0.bin"
sfx196:: @ 08DE4CCC
	sound_header 1 0 0x60 0 gUnk_08A1139C sfx196_track0

sfx197_track0:: @ 08DE4CD8
	.incbin "assets/sounds/sfx197_track0.bin"
sfx197:: @ 08DE4D24
	sound_header 1 0 0x60 0 gUnk_08A113B4 sfx197_track0

sfx198_track0:: @ 08DE4D30
	.incbin "assets/sounds/sfx198_track0.bin"
sfx198:: @ 08DE4E64
	sound_header 1 0 0x40 0 gUnk_08A113C0 sfx198_track0

sfx199_track0:: @ 08DE4E70
	.incbin "assets/sounds/sfx199_track0.bin"
sfx199_track1:: @ 08DE4E97
	.incbin "assets/sounds/sfx199_track1.bin"
sfx199:: @ 08DE4EB0
	sound_header 2 0 0x40 0 gUnk_08A113E4 sfx199_track0 sfx199_track1

sfx19A_track0:: @ 08DE4EC0
	.incbin "assets/sounds/sfx19A_track0.bin"
sfx19A_track1:: @ 08DE4ED6
	.incbin "assets/sounds/sfx19A_track1.bin"
sfx19A:: @ 08DE4F20
	sound_header 2 0 0x40 0 gUnk_08A113FC sfx19A_track0 sfx19A_track1

sfx19B_track0:: @ 08DE4F30
	.incbin "assets/sounds/sfx19B_track0.bin"
sfx19B_track1:: @ 08DE4F79
	.incbin "assets/sounds/sfx19B_track1.bin"
sfx19B:: @ 08DE4FB4
	sound_header 2 0 0x40 0 gUnk_08A11414 sfx19B_track0 sfx19B_track1

sfx19C_track0:: @ 08DE4FC4
	.incbin "assets/sounds/sfx19C_track0.bin"
sfx19C:: @ 08DE4FE8
	sound_header 1 0 0x40 0 gUnk_08A1142C sfx19C_track0

sfx19D_track0:: @ 08DE4FF4
	.incbin "assets/sounds/sfx19D_track0.bin"
sfx19D_track1:: @ 08DE5024
	.incbin "assets/sounds/sfx19D_track1.bin"
sfx19D:: @ 08DE506C
	sound_header 2 0 0x40 0 gUnk_08A11444 sfx19D_track0 sfx19D_track1

sfx19E_track0:: @ 08DE507C
	.incbin "assets/sounds/sfx19E_track0.bin"
sfx19E:: @ 08DE50BC
	sound_header 1 0 0x40 0 gUnk_08A1145C sfx19E_track0

sfx19F_track0:: @ 08DE50C8
	.incbin "assets/sounds/sfx19F_track0.bin"
sfx19F_track1:: @ 08DE50EE
	.incbin "assets/sounds/sfx19F_track1.bin"
sfx19F:: @ 08DE512C
	sound_header 2 0 0x40 0 gUnk_08A11468 sfx19F_track0 sfx19F_track1

sfx1A0_track0:: @ 08DE513C
	.incbin "assets/sounds/sfx1A0_track0.bin"
sfx1A0_track1:: @ 08DE5184
	.incbin "assets/sounds/sfx1A0_track1.bin"
sfx1A0:: @ 08DE51B0
	sound_header 2 0 0x40 0 gUnk_08A1148C sfx1A0_track0 sfx1A0_track1

sfx1A1_track0:: @ 08DE51C0
	.incbin "assets/sounds/sfx1A1_track0.bin"
sfx1A1_track1:: @ 08DE51E4
	.incbin "assets/sounds/sfx1A1_track1.bin"
sfx1A1:: @ 08DE5218
	sound_header 2 0 0x40 0 gUnk_08A114BC sfx1A1_track0 sfx1A1_track1

sfx1A2_track0:: @ 08DE5228
	.incbin "assets/sounds/sfx1A2_track0.bin"
sfx1A2:: @ 08DE5248
	sound_header 1 0 0x40 0 gUnk_08A114E0 sfx1A2_track0

sfx1A3_track0:: @ 08DE5254
	.incbin "assets/sounds/sfx1A3_track0.bin"
sfx1A3_track1:: @ 08DE529F
	.incbin "assets/sounds/sfx1A3_track1.bin"
sfx1A3:: @ 08DE52F0
	sound_header 2 0 0x40 0 gUnk_08A11504 sfx1A3_track0 sfx1A3_track1

sfx1A4_track0:: @ 08DE5300
	.incbin "assets/sounds/sfx1A4_track0.bin"
sfx1A4:: @ 08DE5318
	sound_header 1 0 0x40 0 gUnk_08A1151C sfx1A4_track0

sfx1A5_track0:: @ 08DE5324
	.incbin "assets/sounds/sfx1A5_track0.bin"
sfx1A5:: @ 08DE5348
	sound_header 1 0 0x40 0 gUnk_08A11528 sfx1A5_track0

sfx1A6_track0:: @ 08DE5354
	.incbin "assets/sounds/sfx1A6_track0.bin"
sfx1A6:: @ 08DE5390
	sound_header 1 0 0x40 0 gUnk_08A11534 sfx1A6_track0

sfx1A7_track0:: @ 08DE539C
	.incbin "assets/sounds/sfx1A7_track0.bin"
sfx1A7:: @ 08DE53FC
	sound_header 1 0 0x40 0 gUnk_08A11540 sfx1A7_track0

sfx1A8_track0:: @ 08DE5408
	.incbin "assets/sounds/sfx1A8_track0.bin"
sfx1A8:: @ 08DE5440
	sound_header 1 0 0x40 0 gUnk_08A1154C sfx1A8_track0

sfx1A9_track0:: @ 08DE544C
	.incbin "assets/sounds/sfx1A9_track0.bin"
sfx1A9:: @ 08DE5540
	sound_header 1 0 0x38 0 gUnk_08A11564 sfx1A9_track0

sfx1AA_track0:: @ 08DE554C
	.incbin "assets/sounds/sfx1AA_track0.bin"
gUnk_08DE55A2:: @ 08DE55A2
	.incbin "assets/sounds/gUnk_08DE55A2.bin"
	.4byte gUnk_08DE55A2
	.incbin "assets/sounds/gUnk_08DE55A2_1.bin"
sfx1AA_track1:: @ 08DE55D0
	.incbin "assets/sounds/sfx1AA_track1.bin"
gUnk_08DE5624:: @ 08DE5624
	.incbin "assets/sounds/gUnk_08DE5624.bin"
	.4byte gUnk_08DE5624
	.incbin "assets/sounds/gUnk_08DE5624_1.bin"
sfx1AA:: @ 08DE5654
	sound_header 2 0 0x40 0 gUnk_08A11570 sfx1AA_track0 sfx1AA_track1

sfx1AB_track0:: @ 08DE5664
	.incbin "assets/sounds/sfx1AB_track0.bin"
sfx1AB_track1:: @ 08DE56D2
	.incbin "assets/sounds/sfx1AB_track1.bin"
sfx1AB:: @ 08DE5728
	sound_header 2 0 0x40 0 gUnk_08A11588 sfx1AB_track0 sfx1AB_track1

sfx1AC_track0:: @ 08DE5738
	.incbin "assets/sounds/sfx1AC_track0.bin"
sfx1AC:: @ 08DE57AC
	sound_header 1 0 0x40 0 gUnk_08A115A0 sfx1AC_track0

sfx1AD_track0:: @ 08DE57B8
	.incbin "assets/sounds/sfx1AD_track0.bin"
sfx1AD_track1:: @ 08DE57DA
	.incbin "assets/sounds/sfx1AD_track1.bin"
sfx1AD:: @ 08DE5808
	sound_header 2 0 0x40 0 gUnk_08A115AC sfx1AD_track0 sfx1AD_track1

sfx1AE_track0:: @ 08DE5818
	.incbin "assets/sounds/sfx1AE_track0.bin"
sfx1AE_track1:: @ 08DE5837
	.incbin "assets/sounds/sfx1AE_track1.bin"
sfx1AE:: @ 08DE5850
	sound_header 2 0 0x40 0 gUnk_08A115D0 sfx1AE_track0 sfx1AE_track1

sfx1AF_track0:: @ 08DE5860
	.incbin "assets/sounds/sfx1AF_track0.bin"
sfx1AF_track1:: @ 08DE587B
	.incbin "assets/sounds/sfx1AF_track1.bin"
sfx1AF:: @ 08DE5894
	sound_header 2 0 0x40 0 gUnk_08A115F4 sfx1AF_track0 sfx1AF_track1

sfx1B0_track0:: @ 08DE58A4
	.incbin "assets/sounds/sfx1B0_track0.bin"
sfx1B0:: @ 08DE58E0
	sound_header 1 0 0x40 0 gUnk_08A1160C sfx1B0_track0

sfxIceBlockSlide_track0:: @ 08DE58EC
	.incbin "assets/sounds/sfxIceBlockSlide_track0.bin"
sfxIceBlockSlide:: @ 08DE58FC
	sound_header 1 0 0x40 0 gUnk_08A11618 sfxIceBlockSlide_track0

sfxIceBlockStop_track0:: @ 08DE5908
	.incbin "assets/sounds/sfxIceBlockStop_track0.bin"
sfxIceBlockStop:: @ 08DE5918
	sound_header 1 0 0x40 0 gUnk_08A11624 sfxIceBlockStop_track0

sfxIceBlockMelt_track0:: @ 08DE5924
	.incbin "assets/sounds/sfxIceBlockMelt_track0.bin"
sfxIceBlockMelt:: @ 08DE5934
	sound_header 1 0 0x40 0 gUnk_08A11630 sfxIceBlockMelt_track0

sfx1B4_track0:: @ 08DE5940
	.incbin "assets/sounds/sfx1B4_track0.bin"
sfx1B4:: @ 08DE598C
	sound_header 1 0 0x40 0 gUnk_08A1163C sfx1B4_track0

sfx1B5_track0:: @ 08DE5998
	.incbin "assets/sounds/sfx1B5_track0.bin"
sfx1B5:: @ 08DE59C8
	sound_header 1 0 0x40 0 gUnk_08A11654 sfx1B5_track0

sfx1B6_track0:: @ 08DE59D4
	.incbin "assets/sounds/sfx1B6_track0.bin"
sfx1B6_track1:: @ 08DE5A40
	.incbin "assets/sounds/sfx1B6_track1.bin"
sfx1B6:: @ 08DE5ADC
	sound_header 2 0 0x40 0 gUnk_08A1166C sfx1B6_track0 sfx1B6_track1

sfxVoGoron1_track0:: @ 08DE5AEC
	.incbin "assets/sounds/sfxVoGoron1_track0.bin"
sfxVoGoron1:: @ 08DE5AFC
	sound_header 1 0 0x48 0 gUnk_08A11690 sfxVoGoron1_track0

sfxVoGoron2_track0:: @ 08DE5B08
	.incbin "assets/sounds/sfxVoGoron2_track0.bin"
sfxVoGoron2:: @ 08DE5B18
	sound_header 1 0 0x48 0 gUnk_08A1169C sfxVoGoron2_track0

sfxVoGoron3_track0:: @ 08DE5B24
	.incbin "assets/sounds/sfxVoGoron3_track0.bin"
sfxVoGoron3:: @ 08DE5B34
	sound_header 1 0 0x48 0 gUnk_08A116A8 sfxVoGoron3_track0

sfxVoGoron4_track0:: @ 08DE5B40
	.incbin "assets/sounds/sfxVoGoron4_track0.bin"
sfxVoGoron4:: @ 08DE5B54
	sound_header 1 0 0x48 0 gUnk_08A116B4 sfxVoGoron4_track0

sfxEmDekuscrubHit_track0:: @ 08DE5B60
	.incbin "assets/sounds/sfxEmDekuscrubHit_track0.bin"
sfxEmDekuscrubHit:: @ 08DE5BA8
	sound_header 1 0 0x48 0 gUnk_08A116CC sfxEmDekuscrubHit_track0

sfx1BC_track0:: @ 08DE5BB4
	.incbin "assets/sounds/sfx1BC_track0.bin"
sfx1BC:: @ 08DE5BC4
	sound_header 1 0 0x48 0 gUnk_08A116D8 sfx1BC_track0

sfx1BD_track0:: @ 08DE5BD0
	.incbin "assets/sounds/sfx1BD_track0.bin"
sfx1BD:: @ 08DE5BE0
	sound_header 1 0 0x48 0 gUnk_08A116E4 sfx1BD_track0

sfx1BE_track0:: @ 08DE5BEC
	.incbin "assets/sounds/sfx1BE_track0.bin"
sfx1BE:: @ 08DE5BFC
	sound_header 1 0 0x48 0 gUnk_08A116F0 sfx1BE_track0

sfx1BF_track0:: @ 08DE5C08
	.incbin "assets/sounds/sfx1BF_track0.bin"
sfx1BF:: @ 08DE5C18
	sound_header 1 0 0x48 0 gUnk_08A116FC sfx1BF_track0

sfx1C0_track0:: @ 08DE5C24
	.incbin "assets/sounds/sfx1C0_track0.bin"
sfx1C0:: @ 08DE5C34
	sound_header 1 0 0x48 0 gUnk_08A11708 sfx1C0_track0

sfx1C1_track0:: @ 08DE5C40
	.incbin "assets/sounds/sfx1C1_track0.bin"
sfx1C1:: @ 08DE5C50
	sound_header 1 0 0x48 0 gUnk_08A11714 sfx1C1_track0

sfx1C2_track0:: @ 08DE5C5C
	.incbin "assets/sounds/sfx1C2_track0.bin"
sfx1C2:: @ 08DE5C6C
	sound_header 1 0 0x40 0 gUnk_08A11720 sfx1C2_track0

sfx1C3_track0:: @ 08DE5C78
	.incbin "assets/sounds/sfx1C3_track0.bin"
sfx1C3:: @ 08DE5C88
	sound_header 1 0 0x40 0 gUnk_08A1172C sfx1C3_track0

sfx1C4_track0:: @ 08DE5C94
	.incbin "assets/sounds/sfx1C4_track0.bin"
sfx1C4:: @ 08DE5CA8
	sound_header 1 0 0x40 0 gUnk_08A11738 sfx1C4_track0

sfx1C5_track0:: @ 08DE5CB4
	.incbin "assets/sounds/sfx1C5_track0.bin"
sfx1C5:: @ 08DE5CC4
	sound_header 1 0 0x40 0 gUnk_08A11744 sfx1C5_track0

sfx1C6_track0:: @ 08DE5CD0
	.incbin "assets/sounds/sfx1C6_track0.bin"
sfx1C6:: @ 08DE5CE0
	sound_header 1 0 0x40 0 gUnk_08A11750 sfx1C6_track0

sfx1C7_track0:: @ 08DE5CEC
	.incbin "assets/sounds/sfx1C7_track0.bin"
sfx1C7:: @ 08DE5CFC
	sound_header 1 0 0x40 0 gUnk_08A1175C sfx1C7_track0

sfx1C8_track0:: @ 08DE5D08
	.incbin "assets/sounds/sfx1C8_track0.bin"
sfx1C8:: @ 08DE5D28
	sound_header 1 0 0x40 0 gUnk_08A11768 sfx1C8_track0

sfx1C9_track0:: @ 08DE5D34
	.incbin "assets/sounds/sfx1C9_track0.bin"
sfx1C9:: @ 08DE5D44
	sound_header 1 0 0x40 0 gUnk_08A11774 sfx1C9_track0

sfx1CA_track0:: @ 08DE5D50
	.incbin "assets/sounds/sfx1CA_track0.bin"
sfx1CA_track1:: @ 08DE5D60
	.incbin "assets/sounds/sfx1CA_track1.bin"
sfx1CA:: @ 08DE5D70
	sound_header 2 0 0x44 0 gUnk_08A11780 sfx1CA_track0 sfx1CA_track1

sfx1CB_track0:: @ 08DE5D80
	.incbin "assets/sounds/sfx1CB_track0.bin"
sfx1CB:: @ 08DE5D90
	sound_header 1 0 0x40 0 gUnk_08A11798 sfx1CB_track0

sfx1CC_track0:: @ 08DE5D9C
	.incbin "assets/sounds/sfx1CC_track0.bin"
sfx1CC:: @ 08DE5DAC
	sound_header 1 0 0x40 0 gUnk_08A117A4 sfx1CC_track0

sfxElementPlace_track0:: @ 08DE5DB8
	.incbin "assets/sounds/sfxElementPlace_track0.bin"
sfxElementPlace:: @ 08DE5DC8
	sound_header 1 0 0x40 0 gUnk_08A117B0 sfxElementPlace_track0

sfxElementFloat_track0:: @ 08DE5DD4
	.incbin "assets/sounds/sfxElementFloat_track0.bin"
sfxElementFloat:: @ 08DE5DE4
	sound_header 1 0 0x40 0 gUnk_08A117BC sfxElementFloat_track0

sfxElementCharge_track0:: @ 08DE5DF0
	.incbin "assets/sounds/sfxElementCharge_track0.bin"
sfxElementCharge:: @ 08DE5E00
	sound_header 1 0 0x40 0 gUnk_08A117C8 sfxElementCharge_track0

sfx1D0_track0:: @ 08DE5E0C
	.incbin "assets/sounds/sfx1D0_track0.bin"
sfx1D0:: @ 08DE5E1C
	sound_header 1 0 0x40 0 gUnk_08A117D4 sfx1D0_track0

sfxElementInfuse_track0:: @ 08DE5E28
	.incbin "assets/sounds/sfxElementInfuse_track0.bin"
sfxElementInfuse:: @ 08DE5E38
	sound_header 1 0 0x40 0 gUnk_08A117E0 sfxElementInfuse_track0

sfx1D2_track0:: @ 08DE5E44
	.incbin "assets/sounds/sfx1D2_track0.bin"
sfx1D2:: @ 08DE5E54
	sound_header 1 0 0x40 0 gUnk_08A117EC sfx1D2_track0

sfx1D3_track0:: @ 08DE5E60
	.incbin "assets/sounds/sfx1D3_track0.bin"
sfx1D3:: @ 08DE5E70
	sound_header 1 0 0x40 0 gUnk_08A117F8 sfx1D3_track0

sfx1D4_track0:: @ 08DE5E7C
	.incbin "assets/sounds/sfx1D4_track0.bin"
sfx1D4:: @ 08DE5E8C
	sound_header 1 0 0x40 0 gUnk_08A11804 sfx1D4_track0

sfx1D5_track0:: @ 08DE5E98
	.incbin "assets/sounds/sfx1D5_track0.bin"
sfx1D5:: @ 08DE5EA8
	sound_header 1 0 0x40 0 gUnk_08A11810 sfx1D5_track0

sfxVoCucco1_track0:: @ 08DE5EB4
	.incbin "assets/sounds/sfxVoCucco1_track0.bin"
sfxVoCucco1:: @ 08DE5EC4
	sound_header 1 0 0x48 0 gUnk_08A1181C sfxVoCucco1_track0

sfxVoCucco2_track0:: @ 08DE5ED0
	.incbin "assets/sounds/sfxVoCucco2_track0.bin"
sfxVoCucco2:: @ 08DE5EE0
	sound_header 1 0 0x48 0 gUnk_08A11828 sfxVoCucco2_track0

sfxVoCucco3_track0:: @ 08DE5EEC
	.incbin "assets/sounds/sfxVoCucco3_track0.bin"
sfxVoCucco3:: @ 08DE5EFC
	sound_header 1 0 0x48 0 gUnk_08A11834 sfxVoCucco3_track0

sfxVoCucco4_track0:: @ 08DE5F08
	.incbin "assets/sounds/sfxVoCucco4_track0.bin"
sfxVoCucco4:: @ 08DE5F18
	sound_header 1 0 0x48 0 gUnk_08A11840 sfxVoCucco4_track0

sfxVoCucco5_track0:: @ 08DE5F24
	.incbin "assets/sounds/sfxVoCucco5_track0.bin"
sfxVoCucco5:: @ 08DE5F34
	sound_header 1 0 0x48 0 gUnk_08A1184C sfxVoCucco5_track0

sfx1DB_track0:: @ 08DE5F40
	.incbin "assets/sounds/sfx1DB_track0.bin"
sfx1DB_track1:: @ 08DE5F84
	.incbin "assets/sounds/sfx1DB_track1.bin"
sfx1DB:: @ 08DE5FCC
	sound_header 2 0 0x40 0 gUnk_08A11858 sfx1DB_track0 sfx1DB_track1

sfx1DC_track0:: @ 08DE5FDC
	.incbin "assets/sounds/sfx1DC_track0.bin"
sfx1DC:: @ 08DE6004
	sound_header 1 0 0x40 0 gUnk_08A11870 sfx1DC_track0

sfx1DD_track0:: @ 08DE6010
	.incbin "assets/sounds/sfx1DD_track0.bin"
sfx1DD:: @ 08DE6044
	sound_header 1 0 0x48 0 gUnk_08A11888 sfx1DD_track0

sfx1DE_track0:: @ 08DE6050
	.incbin "assets/sounds/sfx1DE_track0.bin"
sfx1DE:: @ 08DE6060
	sound_header 1 0 0x48 0 gUnk_08A11894 sfx1DE_track0

sfx1DF_track0:: @ 08DE606C
	.incbin "assets/sounds/sfx1DF_track0.bin"
sfx1DF:: @ 08DE607C
	sound_header 1 0 0x48 0 gUnk_08A118A0 sfx1DF_track0

sfx1E0_track0:: @ 08DE6088
	.incbin "assets/sounds/sfx1E0_track0.bin"
sfx1E0:: @ 08DE6098
	sound_header 1 0 0x48 0 gUnk_08A118AC sfx1E0_track0

sfx1E1_track0:: @ 08DE60A4
	.incbin "assets/sounds/sfx1E1_track0.bin"
sfx1E1:: @ 08DE60B4
	sound_header 1 0 0x48 0 gUnk_08A118B8 sfx1E1_track0

sfx1E2_track0:: @ 08DE60C0
	.incbin "assets/sounds/sfx1E2_track0.bin"
sfx1E2:: @ 08DE60D0
	sound_header 1 0 0x48 0 gUnk_08A118C4 sfx1E2_track0

sfx1E3_track0:: @ 08DE60DC
	.incbin "assets/sounds/sfx1E3_track0.bin"
sfx1E3:: @ 08DE60EC
	sound_header 1 0 0x48 0 gUnk_08A118D0 sfx1E3_track0

sfx1E4_track0:: @ 08DE60F8
	.incbin "assets/sounds/sfx1E4_track0.bin"
sfx1E4:: @ 08DE6108
	sound_header 1 0 0x48 0 gUnk_08A118DC sfx1E4_track0

sfx1E5_track0:: @ 08DE6114
	.incbin "assets/sounds/sfx1E5_track0.bin"
sfx1E5:: @ 08DE6124
	sound_header 1 0 0x48 0 gUnk_08A118E8 sfx1E5_track0

sfx1E6_track0:: @ 08DE6130
	.incbin "assets/sounds/sfx1E6_track0.bin"
sfx1E6:: @ 08DE6140
	sound_header 1 0 0x48 0 gUnk_08A118F4 sfx1E6_track0

sfx1E7_track0:: @ 08DE614C
	.incbin "assets/sounds/sfx1E7_track0.bin"
sfx1E7:: @ 08DE615C
	sound_header 1 0 0x48 0 gUnk_08A11900 sfx1E7_track0

sfx1E8_track0:: @ 08DE6168
	.incbin "assets/sounds/sfx1E8_track0.bin"
sfx1E8:: @ 08DE6178
	sound_header 1 0 0x48 0 gUnk_08A1190C sfx1E8_track0

sfx1E9_track0:: @ 08DE6184
	.incbin "assets/sounds/sfx1E9_track0.bin"
sfx1E9:: @ 08DE6194
	sound_header 1 0 0x48 0 gUnk_08A11918 sfx1E9_track0

sfx1EA_track0:: @ 08DE61A0
	.incbin "assets/sounds/sfx1EA_track0.bin"
sfx1EA:: @ 08DE61B0
	sound_header 1 0 0x48 0 gUnk_08A11924 sfx1EA_track0

sfx1EB_track0:: @ 08DE61BC
	.incbin "assets/sounds/sfx1EB_track0.bin"
sfx1EB:: @ 08DE61CC
	sound_header 1 0 0x48 0 gUnk_08A11930 sfx1EB_track0

sfx1EC_track0:: @ 08DE61D8
	.incbin "assets/sounds/sfx1EC_track0.bin"
sfx1EC:: @ 08DE61E8
	sound_header 1 0 0x48 0 gUnk_08A1193C sfx1EC_track0

sfx1ED_track0:: @ 08DE61F4
	.incbin "assets/sounds/sfx1ED_track0.bin"
sfx1ED:: @ 08DE6204
	sound_header 1 0 0x48 0 gUnk_08A11948 sfx1ED_track0

sfx1EE_track0:: @ 08DE6210
	.incbin "assets/sounds/sfx1EE_track0.bin"
sfx1EE:: @ 08DE6220
	sound_header 1 0 0x48 0 gUnk_08A11954 sfx1EE_track0

sfx1EF_track0:: @ 08DE622C
	.incbin "assets/sounds/sfx1EF_track0.bin"
sfx1EF:: @ 08DE623C
	sound_header 1 0 0x48 0 gUnk_08A11960 sfx1EF_track0

sfx1F0_track0:: @ 08DE6248
	.incbin "assets/sounds/sfx1F0_track0.bin"
sfx1F0:: @ 08DE6258
	sound_header 1 0 0x48 0 gUnk_08A1196C sfx1F0_track0

sfx1F1_track0:: @ 08DE6264
	.incbin "assets/sounds/sfx1F1_track0.bin"
sfx1F1:: @ 08DE6274
	sound_header 1 0 0x48 0 gUnk_08A11978 sfx1F1_track0

sfx1F2_track0:: @ 08DE6280
	.incbin "assets/sounds/sfx1F2_track0.bin"
sfx1F2:: @ 08DE6290
	sound_header 1 0 0x48 0 gUnk_08A11984 sfx1F2_track0

sfx1F3_track0:: @ 08DE629C
	.incbin "assets/sounds/sfx1F3_track0.bin"
sfx1F3:: @ 08DE62AC
	sound_header 1 0 0x48 0 gUnk_08A11990 sfx1F3_track0

sfx1F4_track0:: @ 08DE62B8
	.incbin "assets/sounds/sfx1F4_track0.bin"
sfx1F4:: @ 08DE62C8
	sound_header 1 0 0x48 0 gUnk_08A1199C sfx1F4_track0

sfx1F5_track0:: @ 08DE62D4
	.incbin "assets/sounds/sfx1F5_track0.bin"
sfx1F5:: @ 08DE62E4
	sound_header 1 0 0x48 0 gUnk_08A119A8 sfx1F5_track0

sfx1F6_track0:: @ 08DE62F0
	.incbin "assets/sounds/sfx1F6_track0.bin"
sfx1F6:: @ 08DE6300
	sound_header 1 0 0x48 0 gUnk_08A119B4 sfx1F6_track0

sfx1F7_track0:: @ 08DE630C
	.incbin "assets/sounds/sfx1F7_track0.bin"
sfx1F7:: @ 08DE631C
	sound_header 1 0 0x48 0 gUnk_08A119C0 sfx1F7_track0

sfx1F8_track0:: @ 08DE6328
	.incbin "assets/sounds/sfx1F8_track0.bin"
sfx1F8:: @ 08DE6338
	sound_header 1 0 0x48 0 gUnk_08A119CC sfx1F8_track0

sfx1F9_track0:: @ 08DE6344
	.incbin "assets/sounds/sfx1F9_track0.bin"
sfx1F9:: @ 08DE6354
	sound_header 1 0 0x48 0 gUnk_08A119D8 sfx1F9_track0

sfx1FA_track0:: @ 08DE6360
	.incbin "assets/sounds/sfx1FA_track0.bin"
sfx1FA:: @ 08DE6370
	sound_header 1 0 0x48 0 gUnk_08A119E4 sfx1FA_track0

sfx1FB_track0:: @ 08DE637C
	.incbin "assets/sounds/sfx1FB_track0.bin"
sfx1FB:: @ 08DE638C
	sound_header 1 0 0x48 0 gUnk_08A119F0 sfx1FB_track0

sfx1FC_track0:: @ 08DE6398
	.incbin "assets/sounds/sfx1FC_track0.bin"
sfx1FC:: @ 08DE63A8
	sound_header 1 0 0x48 0 gUnk_08A119FC sfx1FC_track0

sfx1FD_track0:: @ 08DE63B4
	.incbin "assets/sounds/sfx1FD_track0.bin"
sfx1FD:: @ 08DE63C4
	sound_header 1 0 0x48 0 gUnk_08A11A08 sfx1FD_track0

sfx1FE_track0:: @ 08DE63D0
	.incbin "assets/sounds/sfx1FE_track0.bin"
sfx1FE:: @ 08DE63E0
	sound_header 1 0 0x48 0 gUnk_08A11A14 sfx1FE_track0

sfx1FF_track0:: @ 08DE63EC
	.incbin "assets/sounds/sfx1FF_track0.bin"
sfx1FF:: @ 08DE63FC
	sound_header 1 0 0x48 0 gUnk_08A11A20 sfx1FF_track0

sfx200_track0:: @ 08DE6408
	.incbin "assets/sounds/sfx200_track0.bin"
sfx200:: @ 08DE6418
	sound_header 1 0 0x48 0 gUnk_08A11A2C sfx200_track0

sfx201_track0:: @ 08DE6424
	.incbin "assets/sounds/sfx201_track0.bin"
sfx201:: @ 08DE6434
	sound_header 1 0 0x48 0 gUnk_08A11A38 sfx201_track0

sfx202_track0:: @ 08DE6440
	.incbin "assets/sounds/sfx202_track0.bin"
sfx202:: @ 08DE6450
	sound_header 1 0 0x48 0 gUnk_08A11A44 sfx202_track0

sfx203_track0:: @ 08DE645C
	.incbin "assets/sounds/sfx203_track0.bin"
sfx203:: @ 08DE646C
	sound_header 1 0 0x48 0 gUnk_08A11A50 sfx203_track0

sfx204_track0:: @ 08DE6478
	.incbin "assets/sounds/sfx204_track0.bin"
sfx204:: @ 08DE6488
	sound_header 1 0 0x48 0 gUnk_08A11A5C sfx204_track0

sfx205_track0:: @ 08DE6494
	.incbin "assets/sounds/sfx205_track0.bin"
sfx205:: @ 08DE64A4
	sound_header 1 0 0x48 0 gUnk_08A11A68 sfx205_track0

sfx206_track0:: @ 08DE64B0
	.incbin "assets/sounds/sfx206_track0.bin"
sfx206:: @ 08DE64C0
	sound_header 1 0 0x48 0 gUnk_08A11A74 sfx206_track0

sfx207_track0:: @ 08DE64CC
	.incbin "assets/sounds/sfx207_track0.bin"
sfx207:: @ 08DE64DC
	sound_header 1 0 0x48 0 gUnk_08A11A80 sfx207_track0

sfx208_track0:: @ 08DE64E8
	.incbin "assets/sounds/sfx208_track0.bin"
sfx208:: @ 08DE64F8
	sound_header 1 0 0x48 0 gUnk_08A11A8C sfx208_track0

sfx209_track0:: @ 08DE6504
	.incbin "assets/sounds/sfx209_track0.bin"
sfx209:: @ 08DE6514
	sound_header 1 0 0x48 0 gUnk_08A11A98 sfx209_track0

sfx20A_track0:: @ 08DE6520
	.incbin "assets/sounds/sfx20A_track0.bin"
sfx20A:: @ 08DE6530
	sound_header 1 0 0x48 0 gUnk_08A11AA4 sfx20A_track0

sfx20B_track0:: @ 08DE653C
	.incbin "assets/sounds/sfx20B_track0.bin"
sfx20B:: @ 08DE654C
	sound_header 1 0 0x48 0 gUnk_08A11AB0 sfx20B_track0

sfx20C_track0:: @ 08DE6558
	.incbin "assets/sounds/sfx20C_track0.bin"
sfx20C:: @ 08DE6568
	sound_header 1 0 0x48 0 gUnk_08A11ABC sfx20C_track0

sfx20D_track0:: @ 08DE6574
	.incbin "assets/sounds/sfx20D_track0.bin"
sfx20D:: @ 08DE6584
	sound_header 1 0 0x48 0 gUnk_08A11AC8 sfx20D_track0

sfx20E_track0:: @ 08DE6590
	.incbin "assets/sounds/sfx20E_track0.bin"
sfx20E:: @ 08DE65A0
	sound_header 1 0 0x48 0 gUnk_08A11AD4 sfx20E_track0

sfx20F_track0:: @ 08DE65AC
	.incbin "assets/sounds/sfx20F_track0.bin"
sfx20F:: @ 08DE65BC
	sound_header 1 0 0x48 0 gUnk_08A11AE0 sfx20F_track0

sfx210_track0:: @ 08DE65C8
	.incbin "assets/sounds/sfx210_track0.bin"
sfx210:: @ 08DE65DC
	sound_header 1 0 0x48 0 gUnk_08A11AEC sfx210_track0

sfx211_track0:: @ 08DE65E8
	.incbin "assets/sounds/sfx211_track0.bin"
sfx211:: @ 08DE65F8
	sound_header 1 0 0x48 0 gUnk_08A11AF8 sfx211_track0

sfx212_track0:: @ 08DE6604
	.incbin "assets/sounds/sfx212_track0.bin"
sfx212:: @ 08DE6614
	sound_header 1 0 0x48 0 gUnk_08A11B04 sfx212_track0

sfx213_track0:: @ 08DE6620
	.incbin "assets/sounds/sfx213_track0.bin"
sfx213:: @ 08DE6630
	sound_header 1 0 0x48 0 gUnk_08A11B10 sfx213_track0

sfx214_track0:: @ 08DE663C
	.incbin "assets/sounds/sfx214_track0.bin"
sfx214:: @ 08DE6650
	sound_header 1 0 0x48 0 gUnk_08A11B1C sfx214_track0

sfx215_track0:: @ 08DE665C
	.incbin "assets/sounds/sfx215_track0.bin"
sfx215:: @ 08DE6674
	sound_header 1 0 0xc0 0 gUnk_08A11B28 sfx215_track0

sfx216_track0:: @ 08DE6680
	.incbin "assets/sounds/sfx216_track0.bin"
sfx216_track1:: @ 08DE66FD
	.incbin "assets/sounds/sfx216_track1.bin"
sfx216_track2:: @ 08DE675C
	.incbin "assets/sounds/sfx216_track2.bin"
sfx216_track3:: @ 08DE6797
	.incbin "assets/sounds/sfx216_track3.bin"
sfx216_track4:: @ 08DE6F20
	.incbin "assets/sounds/sfx216_track4.bin"
sfx216_track5:: @ 08DE70A9
	.incbin "assets/sounds/sfx216_track5.bin"
sfx216_track6:: @ 08DE7232
	.incbin "assets/sounds/sfx216_track6.bin"
sfx216_track7:: @ 08DE73BB
	.incbin "assets/sounds/sfx216_track7.bin"
sfx216:: @ 08DE7544
	sound_header 8 0 0x20 0 gUnk_08A0F890 sfx216_track0 sfx216_track1 sfx216_track2 sfx216_track3 sfx216_track4 sfx216_track5 sfx216_track6 sfx216_track7

sfx217_track0:: @ 08DE756C
	.incbin "assets/sounds/sfx217_track0.bin"
sfx217_track1:: @ 08DE7598
	.incbin "assets/sounds/sfx217_track1.bin"
sfx217_track2:: @ 08DE75C2
	.incbin "assets/sounds/sfx217_track2.bin"
sfx217_track3:: @ 08DE75E8
	.incbin "assets/sounds/sfx217_track3.bin"
sfx217_track4:: @ 08DE7611
	.incbin "assets/sounds/sfx217_track4.bin"
sfx217_track5:: @ 08DE763B
	.incbin "assets/sounds/sfx217_track5.bin"
sfx217_track6:: @ 08DE7665
	.incbin "assets/sounds/sfx217_track6.bin"
sfx217_track7:: @ 08DE7698
	.incbin "assets/sounds/sfx217_track7.bin"
sfx217_track8:: @ 08DE76C9
	.incbin "assets/sounds/sfx217_track8.bin"
sfx217_track9:: @ 08DE77F2
	.incbin "assets/sounds/sfx217_track9.bin"
sfx217_trackA:: @ 08DE791B
	.incbin "assets/sounds/sfx217_trackA.bin"
sfx217_trackB:: @ 08DE7A44
	.incbin "assets/sounds/sfx217_trackB.bin"
sfx217:: @ 08DE7B70
	sound_header 0xc 0 0x20 0 gUnk_08A0F890 sfx217_track0 sfx217_track1 sfx217_track2 sfx217_track3 sfx217_track4 sfx217_track5 sfx217_track6 sfx217_track7 sfx217_track8 sfx217_track9 sfx217_trackA sfx217_trackB

sfx218_track0:: @ 08DE7BA8
	.incbin "assets/sounds/sfx218_track0.bin"
sfx218:: @ 08DE7BB8
	sound_header 1 0 0x40 0 gUnk_08A11B34 sfx218_track0

sfx219_track0:: @ 08DE7BC4
	.incbin "assets/sounds/sfx219_track0.bin"
sfx219:: @ 08DE7BD4
	sound_header 1 0 0x40 0 gUnk_08A11B40 sfx219_track0

sfx21A_track0:: @ 08DE7BE0
	.incbin "assets/sounds/sfx21A_track0.bin"
sfx21A:: @ 08DE7BFC
	sound_header 1 0 0x40 0 gUnk_08A11B4C sfx21A_track0

sfx21B_track0:: @ 08DE7C08
	.incbin "assets/sounds/sfx21B_track0.bin"
sfx21B:: @ 08DE7C28
	sound_header 1 0 0x40 0 gUnk_08A11B58 sfx21B_track0

sfx21C_track0:: @ 08DE7C34
	.incbin "assets/sounds/sfx21C_track0.bin"
sfx21C:: @ 08DE7C78
	sound_header 1 0 0x40 0 gUnk_08A11B64 sfx21C_track0

sfx21D_track0:: @ 08DE7C84
	.incbin "assets/sounds/sfx21D_track0.bin"
sfx21D:: @ 08DE7C94
	sound_header 1 0 0x40 0 gUnk_08A11B70 sfx21D_track0

sfx21E_track0:: @ 08DE7CA0
	.incbin "assets/sounds/sfx21E_track0.bin"
sfx21E:: @ 08DE7CB4
	sound_header 1 0 0x40 0 gUnk_08A11B7C sfx21E_track0

sfx21F_track0:: @ 08DE7CC0
	.incbin "assets/sounds/sfx21F_track0.bin"
sfx21F:: @ 08DE7CF0
	sound_header 1 0 0x40 0 gUnk_08A11B88 sfx21F_track0

sfx220_track0:: @ 08DE7CFC
	.incbin "assets/sounds/sfx220_track0.bin"
sfx220:: @ 08DE7D0C
	sound_header 1 0 0x48 0 gUnk_08A11B94 sfx220_track0

sfx221_track0:: @ 08DE7D18
	.incbin "assets/sounds/sfx221_track0.bin"
sfx221:: @ 08DE7D28
	sound_header 1 0 0x48 0 gUnk_08A11BA0 sfx221_track0
