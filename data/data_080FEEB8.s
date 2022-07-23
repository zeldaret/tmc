	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080FEEB8:: @ 080FEEB8
	.4byte sub_08054C20
	.4byte sub_08054C58
	.4byte sub_08054C88
	.4byte sub_08054CC0

gUnk_080FEEC8:: @ 080FEEC8
	.4byte sub_08054D04
	.4byte sub_08054D3C
	.4byte sub_08054D74

gUnk_080FEED4:: @ 080FEED4
	.incbin "data_080FEEB8/gUnk_080FEED4.bin"
	.4byte script_BigGoronKinstone1
	.incbin "data_080FEEB8/gUnk_080FEED4_1.bin"
	.4byte script_BigGoronKinstone2
	.incbin "data_080FEEB8/gUnk_080FEED4_2.bin"
	.4byte script_BigGoronKinstone3
	.incbin "data_080FEEB8/gUnk_080FEED4_3.bin"

gUnk_080FEF34:: @ 080FEF34
	.4byte sub_08054DAC
	.4byte nullsub_484

gUnk_080FEF3C:: @ 080FEF3C
	.4byte sub_08054E1C
	.4byte sub_08054E5C
	.4byte sub_08054E9C

gUnk_080FEF48:: @ 080FEF48
	.incbin "data_080FEEB8/gUnk_080FEF48.bin"
	.4byte script_GoronKinstone
.ifdef JP
	.incbin "data_080FEEB8/gUnk_080FEF48_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080FEEB8/gUnk_080FEF48_2_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "data_080FEEB8/gUnk_080FEF48_3_EU.bin"
.else
	.incbin "data_080FEEB8/gUnk_080FEF48_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FEF78:: @ 080FEF78
	.incbin "data_080FEEB8/gUnk_080FEF78.bin"
	.4byte script_Goron1Kinstone2
	.incbin "data_080FEEB8/gUnk_080FEF78_1.bin"
	.4byte script_Goron2Kinstone2
	.incbin "data_080FEEB8/gUnk_080FEF78_2.bin"

gUnk_080FEFA8:: @ 080FEFA8
	.incbin "data_080FEEB8/gUnk_080FEFA8.bin"
	.4byte script_Goron1Kinstone3
	.incbin "data_080FEEB8/gUnk_080FEFA8_1.bin"
	.4byte script_Goron2Kinstone3
	.incbin "data_080FEEB8/gUnk_080FEFA8_2.bin"
	.4byte script_Goron3Kinstone3
	.incbin "data_080FEEB8/gUnk_080FEFA8_3.bin"

gUnk_080FEFE8:: @ 080FEFE8
	.incbin "data_080FEEB8/gUnk_080FEFE8.bin"
	.4byte script_Goron1Kinstone4
	.incbin "data_080FEEB8/gUnk_080FEFE8_1.bin"
	.4byte script_Goron2Kinstone4
	.incbin "data_080FEEB8/gUnk_080FEFE8_2.bin"
	.4byte script_Goron2Kinstone4
	.incbin "data_080FEEB8/gUnk_080FEFE8_3.bin"
	.4byte script_Goron4Kinstone4
	.incbin "data_080FEEB8/gUnk_080FEFE8_4.bin"

gUnk_080FF038:: @ 080FF038
	.incbin "data_080FEEB8/gUnk_080FF038.bin"
	.4byte script_Goron1Kinstone5
	.incbin "data_080FEEB8/gUnk_080FF038_1.bin"
	.4byte script_Goron2Kinstone5
	.incbin "data_080FEEB8/gUnk_080FF038_2.bin"
	.4byte script_Goron2Kinstone5
	.incbin "data_080FEEB8/gUnk_080FF038_3.bin"
	.4byte script_Goron2Kinstone5
	.incbin "data_080FEEB8/gUnk_080FF038_4.bin"
	.4byte script_Goron5Kinstone5
	.incbin "data_080FEEB8/gUnk_080FF038_5.bin"

gUnk_080FF098:: @ 080FF098
	.incbin "data_080FEEB8/gUnk_080FF098.bin"
	.4byte script_Goron1Kinstone6
	.incbin "data_080FEEB8/gUnk_080FF098_1.bin"
	.4byte script_Goron2Kinstone6
	.incbin "data_080FEEB8/gUnk_080FF098_2.bin"
	.4byte script_Goron2Kinstone6
	.incbin "data_080FEEB8/gUnk_080FF098_3.bin"
	.4byte script_Goron2Kinstone6
	.incbin "data_080FEEB8/gUnk_080FF098_4.bin"
	.4byte script_Goron2Kinstone6
	.incbin "data_080FEEB8/gUnk_080FF098_5.bin"
	.4byte script_Goron6Kindstone6
	.incbin "data_080FEEB8/gUnk_080FF098_6.bin"

gUnk_080FF108:: @ 080FF108
	.4byte gUnk_080FEF48
	.4byte gUnk_080FEF78
	.4byte gUnk_080FEFA8
	.4byte gUnk_080FEFE8
	.4byte gUnk_080FF038
	.4byte gUnk_080FF098

gUnk_080FF120:: @ 080FF120
	.4byte sub_08054FAC
	.4byte sub_08055014

gUnk_080FF128:: @ 080FF128
	.incbin "data_080FEEB8/gUnk_080FF128.bin"
	.4byte script_GoronMerchantArriving
	.incbin "data_080FEEB8/gUnk_080FF128_1.bin"

gUnk_080FF148:: @ 080FF148
	.4byte sub_08055054
	.4byte sub_0805508C
	.4byte sub_08055090

gUnk_080FF154:: @ 080FF154
	.incbin "data_080FEEB8/gUnk_080FF154.bin"
	.4byte script_MutohKinstone
	.incbin "data_080FEEB8/gUnk_080FF154_1.bin"

gUnk_080FF174:: @ 080FF174
	.4byte sub_080550B0
	.4byte nullsub_487

gUnk_080FF17C:: @ 080FF17C
	.incbin "data_080FEEB8/gUnk_080FF17C.bin"
	.4byte script_GhostBrotherKinstone
	.incbin "data_080FEEB8/gUnk_080FF17C_1.bin"

gUnk_080FF1CC:: @ 080FF1CC
	.4byte sub_08055114
	.4byte nullsub_488

gUnk_080FF1D4:: @ 080FF1D4
	.incbin "data_080FEEB8/gUnk_080FF1D4.bin"

gUnk_080FF1F4:: @ 080FF1F4
	.4byte sub_08055184
	.4byte sub_08055224
	.4byte sub_0805524C
	.4byte sub_080552E0

gUnk_080FF204:: @ 080FF204
	.incbin "data_080FEEB8/gUnk_080FF204.bin"

gUnk_080FF228:: @ 080FF228
	.4byte sub_08055318
	.4byte sub_08055350
	.4byte sub_08055380
	.4byte sub_080553B8

gUnk_080FF238:: @ 080FF238
	.4byte sub_08055430
	.4byte sub_08055468
	.4byte sub_08055498
	.4byte sub_080554D4

gUnk_080FF248:: @ 080FF248
	.4byte sub_08055518
	.4byte sub_08055548
	.4byte sub_08055580

gUnk_080FF254:: @ 080FF254
	.4byte sub_080555B8
	.4byte sub_0805560C
	.4byte sub_08055634
	.4byte sub_08055674

gUnk_080FF264:: @ 080FF264
	.incbin "data_080FEEB8/gUnk_080FF264.bin"
	.4byte script_CarlovKinstone
	.incbin "data_080FEEB8/gUnk_080FF264_1.bin"

gUnk_080FF284:: @ 080FF284
	.4byte sub_080556AC
	.4byte nullsub_489

gUnk_080FF28C:: @ 080FF28C
	.4byte sub_08055710
	.4byte sub_0805576C
	.4byte sub_08055798

gUnk_080FF298:: @ 080FF298
	.incbin "data_080FEEB8/gUnk_080FF298.bin"

gUnk_080FF2B8:: @ 080FF2B8
	.4byte sub_080557D0
	.4byte nullsub_490

gUnk_080FF2C0:: @ 080FF2C0
	.incbin "data_080FEEB8/gUnk_080FF2C0.bin"
	.4byte script_GormanFirstAppearance
	.incbin "data_080FEEB8/gUnk_080FF2C0_1.bin"

gUnk_080FF300:: @ 080FF300
	.4byte sub_08055834
	.4byte nullsub_491

gUnk_080FF308:: @ 080FF308
	.incbin "data_080FEEB8/gUnk_080FF308.bin"
	.4byte script_SyrupKinstone
	.incbin "data_080FEEB8/gUnk_080FF308_1.bin"

gUnk_080FF328:: @ 080FF328
	.4byte sub_080558A4
	.4byte nullsub_492

gUnk_080FF330:: @ 080FF330
	.4byte sub_08055908
	.4byte sub_08055948
	.4byte sub_08055978

gUnk_080FF33C:: @ 080FF33C
	.incbin "data_080FEEB8/gUnk_080FF33C.bin"

gUnk_080FF35C:: @ 080FF35C
	.4byte sub_080559FC
	.4byte sub_08055A3C
	.4byte sub_08055A6C
	.4byte sub_08055AA8

gUnk_080FF36C:: @ 080FF36C
	.4byte sub_08055AEC
	.4byte sub_08055B38
	.4byte sub_08055B54

gUnk_080FF378:: @ 080FF378
	.incbin "data_080FEEB8/gUnk_080FF378.bin"
	.4byte script_KinstoneSparkKinstoneSpark
	.incbin "data_080FEEB8/gUnk_080FF378_1.bin"
	.4byte script_KinstoneSparkKinstoneSparkFromBottom
	.incbin "data_080FEEB8/gUnk_080FF378_2.bin"
	.4byte script_KinstoneSparkKinstoneSparkGoronMerchang
	.incbin "data_080FEEB8/gUnk_080FF378_3.bin"
	.4byte script_KinstoneSparkKinstoneSparkGoron
	.incbin "data_080FEEB8/gUnk_080FF378_4.bin"

gUnk_080FF3C8:: @ 080FF3C8
	.4byte sub_08055BCC
	.4byte sub_08055C04
	.4byte sub_08055C34
	.4byte sub_08055CB0
	.4byte 0x000000ff
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_080FF3E8:: @ 080FF3E8
	.4byte sub_08055CF4
	.4byte sub_08055D2C
	.4byte sub_08055D64

gUnk_080FF3F4:: @ 080FF3F4
	.4byte sub_08055D9C
	.4byte sub_08055DC0
	.4byte sub_08055DEC

gUnk_080FF400:: @ 080FF400
	.incbin "data_080FEEB8/gUnk_080FF400.bin"
	.4byte script_StampKinstone
	.incbin "data_080FEEB8/gUnk_080FF400_1.bin"

gUnk_080FF420:: @ 080FF420
	.4byte sub_08055E24
	.4byte nullsub_493
