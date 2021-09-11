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
	.incbin "assets/data_080FEEB8/gUnk_080FEED4.bin"
	.4byte script_0800C350
	.incbin "assets/data_080FEEB8/gUnk_080FEED4_1.bin"
	.4byte script_0800C3CC
	.incbin "assets/data_080FEEB8/gUnk_080FEED4_2.bin"
	.4byte script_0800C410
	.incbin "assets/data_080FEEB8/gUnk_080FEED4_3.bin"

gUnk_080FEF34:: @ 080FEF34
	.4byte sub_08054DAC
	.4byte nullsub_484

gUnk_080FEF3C:: @ 080FEF3C
	.4byte sub_08054E1C
	.4byte sub_08054E5C
	.4byte sub_08054E9C

gUnk_080FEF48:: @ 080FEF48
	.incbin "assets/data_080FEEB8/gUnk_080FEF48.bin"
	.4byte script_0800BC50
.ifdef JP
	.incbin "assets/data_080FEEB8/gUnk_080FEF48_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "assets/data_080FEEB8/gUnk_080FEF48_2_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080FEEB8/gUnk_080FEF48_3_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FEF48_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FEF78:: @ 080FEF78
	.incbin "assets/data_080FEEB8/gUnk_080FEF78.bin"
	.4byte script_0800BCE8
	.incbin "assets/data_080FEEB8/gUnk_080FEF78_1.bin"
	.4byte script_0800BD78
	.incbin "assets/data_080FEEB8/gUnk_080FEF78_2.bin"

gUnk_080FEFA8:: @ 080FEFA8
	.incbin "assets/data_080FEEB8/gUnk_080FEFA8.bin"
	.4byte script_0800BE1C
	.incbin "assets/data_080FEEB8/gUnk_080FEFA8_1.bin"
	.4byte script_0800BE54
	.incbin "assets/data_080FEEB8/gUnk_080FEFA8_2.bin"
	.4byte script_0800BECC
	.incbin "assets/data_080FEEB8/gUnk_080FEFA8_3.bin"

gUnk_080FEFE8:: @ 080FEFE8
	.incbin "assets/data_080FEEB8/gUnk_080FEFE8.bin"
	.4byte script_0800BF38
	.incbin "assets/data_080FEEB8/gUnk_080FEFE8_1.bin"
	.4byte script_0800BF70
	.incbin "assets/data_080FEEB8/gUnk_080FEFE8_2.bin"
	.4byte script_0800BF70
	.incbin "assets/data_080FEEB8/gUnk_080FEFE8_3.bin"
	.4byte script_0800C004
	.incbin "assets/data_080FEEB8/gUnk_080FEFE8_4.bin"

gUnk_080FF038:: @ 080FF038
	.incbin "assets/data_080FEEB8/gUnk_080FF038.bin"
	.4byte script_0800C0B0
	.incbin "assets/data_080FEEB8/gUnk_080FF038_1.bin"
	.4byte script_0800C0E8
	.incbin "assets/data_080FEEB8/gUnk_080FF038_2.bin"
	.4byte script_0800C0E8
	.incbin "assets/data_080FEEB8/gUnk_080FF038_3.bin"
	.4byte script_0800C0E8
	.incbin "assets/data_080FEEB8/gUnk_080FF038_4.bin"
	.4byte script_0800C160
	.incbin "assets/data_080FEEB8/gUnk_080FF038_5.bin"

gUnk_080FF098:: @ 080FF098
	.incbin "assets/data_080FEEB8/gUnk_080FF098.bin"
	.4byte script_0800C1D8
	.incbin "assets/data_080FEEB8/gUnk_080FF098_1.bin"
	.4byte script_0800C210
	.incbin "assets/data_080FEEB8/gUnk_080FF098_2.bin"
	.4byte script_0800C210
	.incbin "assets/data_080FEEB8/gUnk_080FF098_3.bin"
	.4byte script_0800C210
	.incbin "assets/data_080FEEB8/gUnk_080FF098_4.bin"
	.4byte script_0800C210
	.incbin "assets/data_080FEEB8/gUnk_080FF098_5.bin"
	.4byte script_0800C2A4
	.incbin "assets/data_080FEEB8/gUnk_080FF098_6.bin"

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
	.incbin "assets/data_080FEEB8/gUnk_080FF128.bin"
	.4byte script_0800BB64
	.incbin "assets/data_080FEEB8/gUnk_080FF128_1.bin"

gUnk_080FF148:: @ 080FF148
	.4byte sub_08055054
	.4byte sub_0805508C
	.4byte sub_08055090

gUnk_080FF154:: @ 080FF154
	.incbin "assets/data_080FEEB8/gUnk_080FF154.bin"
	.4byte script_0800BACC
	.incbin "assets/data_080FEEB8/gUnk_080FF154_1.bin"

gUnk_080FF174:: @ 080FF174
	.4byte sub_080550B0
	.4byte nullsub_487

gUnk_080FF17C:: @ 080FF17C
	.incbin "assets/data_080FEEB8/gUnk_080FF17C.bin"
	.4byte script_0800BC08
	.incbin "assets/data_080FEEB8/gUnk_080FF17C_1.bin"

gUnk_080FF1CC:: @ 080FF1CC
	.4byte sub_08055114
	.4byte nullsub_488

gUnk_080FF1D4:: @ 080FF1D4
	.incbin "assets/data_080FEEB8/gUnk_080FF1D4.bin"

gUnk_080FF1F4:: @ 080FF1F4
	.4byte sub_08055184
	.4byte sub_08055224
	.4byte sub_0805524C
	.4byte sub_080552E0

gUnk_080FF204:: @ 080FF204
	.incbin "assets/data_080FEEB8/gUnk_080FF204.bin"

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
	.incbin "assets/data_080FEEB8/gUnk_080FF264.bin"
	.4byte script_0800BBDC
	.incbin "assets/data_080FEEB8/gUnk_080FF264_1.bin"

gUnk_080FF284:: @ 080FF284
	.4byte sub_080556AC
	.4byte nullsub_489

gUnk_080FF28C:: @ 080FF28C
	.4byte sub_08055710
	.4byte sub_0805576C
	.4byte sub_08055798

gUnk_080FF298:: @ 080FF298
	.incbin "assets/data_080FEEB8/gUnk_080FF298.bin"

gUnk_080FF2B8:: @ 080FF2B8
	.4byte sub_080557D0
	.4byte nullsub_490

gUnk_080FF2C0:: @ 080FF2C0
	.incbin "assets/data_080FEEB8/gUnk_080FF2C0.bin"
	.4byte script_0800BA78
	.incbin "assets/data_080FEEB8/gUnk_080FF2C0_1.bin"

gUnk_080FF300:: @ 080FF300
	.4byte sub_08055834
	.4byte nullsub_491

gUnk_080FF308:: @ 080FF308
	.incbin "assets/data_080FEEB8/gUnk_080FF308.bin"
	.4byte script_0800BB00
	.incbin "assets/data_080FEEB8/gUnk_080FF308_1.bin"

gUnk_080FF328:: @ 080FF328
	.4byte sub_080558A4
	.4byte nullsub_492

gUnk_080FF330:: @ 080FF330
	.4byte sub_08055908
	.4byte sub_08055948
	.4byte sub_08055978

gUnk_080FF33C:: @ 080FF33C
	.incbin "assets/data_080FEEB8/gUnk_080FF33C.bin"

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
	.incbin "assets/data_080FEEB8/gUnk_080FF378.bin"
	.4byte script_0800C45C
	.incbin "assets/data_080FEEB8/gUnk_080FF378_1.bin"
	.4byte script_0800C494
	.incbin "assets/data_080FEEB8/gUnk_080FF378_2.bin"
	.4byte script_0800C4D0
	.incbin "assets/data_080FEEB8/gUnk_080FF378_3.bin"
	.4byte script_0800C50C
	.incbin "assets/data_080FEEB8/gUnk_080FF378_4.bin"

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
	.incbin "assets/data_080FEEB8/gUnk_080FF400.bin"
	.4byte script_0800BBA4
	.incbin "assets/data_080FEEB8/gUnk_080FF400_1.bin"

gUnk_080FF420:: @ 080FF420
	.4byte sub_08055E24
	.4byte nullsub_493

gUnk_080FF428:: @ 080FF428
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF428_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF428_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF430:: @ 080FF430
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF430_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF430_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF438:: @ 080FF438
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF438_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF438_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF444:: @ 080FF444
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF444_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF444_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF450:: @ 080FF450
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF450_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF450_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF454:: @ 080FF454
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF454_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF454_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF458:: @ 080FF458
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF458_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF458_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF45C:: @ 080FF45C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF45C_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF45C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF460:: @ 080FF460
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF460_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF460_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF474:: @ 080FF474
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF474_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF474_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF484:: @ 080FF484
	.incbin "assets/data_080FEEB8/gUnk_080FF484.bin"

gUnk_080FF488:: @ 080FF488
	.incbin "assets/data_080FEEB8/gUnk_080FF488.bin"

gUnk_080FF490:: @ 080FF490
	.incbin "assets/data_080FEEB8/gUnk_080FF490.bin"

gUnk_080FF494:: @ 080FF494
	.incbin "assets/data_080FEEB8/gUnk_080FF494.bin"

gUnk_080FF498:: @ 080FF498
	.incbin "assets/data_080FEEB8/gUnk_080FF498.bin"

gUnk_080FF49C:: @ 080FF49C
	.incbin "assets/data_080FEEB8/gUnk_080FF49C.bin"

gUnk_080FF4A0:: @ 080FF4A0
	.incbin "assets/data_080FEEB8/gUnk_080FF4A0.bin"

gUnk_080FF4A4:: @ 080FF4A4
	.incbin "assets/data_080FEEB8/gUnk_080FF4A4.bin"

gUnk_080FF4A8:: @ 080FF4A8
	.incbin "assets/data_080FEEB8/gUnk_080FF4A8.bin"

gUnk_080FF4AC:: @ 080FF4AC
	.incbin "assets/data_080FEEB8/gUnk_080FF4AC.bin"

gUnk_080FF4B0:: @ 080FF4B0
	.incbin "assets/data_080FEEB8/gUnk_080FF4B0.bin"

gUnk_080FF4B4:: @ 080FF4B4
	.incbin "assets/data_080FEEB8/gUnk_080FF4B4.bin"

gUnk_080FF4B8:: @ 080FF4B8
	.incbin "assets/data_080FEEB8/gUnk_080FF4B8.bin"

gUnk_080FF4BC:: @ 080FF4BC
	.incbin "assets/data_080FEEB8/gUnk_080FF4BC.bin"

gUnk_080FF4C0:: @ 080FF4C0
	.incbin "assets/data_080FEEB8/gUnk_080FF4C0.bin"

gUnk_080FF4C4:: @ 080FF4C4
	.incbin "assets/data_080FEEB8/gUnk_080FF4C4.bin"

gUnk_080FF4C8:: @ 080FF4C8
	.incbin "assets/data_080FEEB8/gUnk_080FF4C8.bin"

gUnk_080FF4CC:: @ 080FF4CC
	.incbin "assets/data_080FEEB8/gUnk_080FF4CC.bin"

gUnk_080FF4D0:: @ 080FF4D0
	.incbin "assets/data_080FEEB8/gUnk_080FF4D0.bin"

gUnk_080FF4D4:: @ 080FF4D4
	.incbin "assets/data_080FEEB8/gUnk_080FF4D4.bin"

gUnk_080FF4D8:: @ 080FF4D8
	.incbin "assets/data_080FEEB8/gUnk_080FF4D8.bin"

gUnk_080FF4DC:: @ 080FF4DC
	.incbin "assets/data_080FEEB8/gUnk_080FF4DC.bin"

gUnk_080FF4E0:: @ 080FF4E0
	.incbin "assets/data_080FEEB8/gUnk_080FF4E0.bin"

gUnk_080FF4E4:: @ 080FF4E4
	.incbin "assets/data_080FEEB8/gUnk_080FF4E4.bin"

gUnk_080FF4E8:: @ 080FF4E8
	.incbin "assets/data_080FEEB8/gUnk_080FF4E8.bin"

gUnk_080FF4EC:: @ 080FF4EC
	.incbin "assets/data_080FEEB8/gUnk_080FF4EC.bin"

gUnk_080FF4F0:: @ 080FF4F0
	.incbin "assets/data_080FEEB8/gUnk_080FF4F0.bin"

gUnk_080FF4F4:: @ 080FF4F4
	.incbin "assets/data_080FEEB8/gUnk_080FF4F4.bin"

gUnk_080FF4F8:: @ 080FF4F8
	.incbin "assets/data_080FEEB8/gUnk_080FF4F8.bin"

gUnk_080FF4FC:: @ 080FF4FC
	.incbin "assets/data_080FEEB8/gUnk_080FF4FC.bin"

gUnk_080FF500:: @ 080FF500
	.incbin "assets/data_080FEEB8/gUnk_080FF500.bin"

gUnk_080FF504:: @ 080FF504
	.incbin "assets/data_080FEEB8/gUnk_080FF504.bin"

gUnk_080FF508:: @ 080FF508
	.incbin "assets/data_080FEEB8/gUnk_080FF508.bin"

gUnk_080FF50C:: @ 080FF50C
	.incbin "assets/data_080FEEB8/gUnk_080FF50C.bin"

gUnk_080FF510:: @ 080FF510
	.incbin "assets/data_080FEEB8/gUnk_080FF510.bin"

gUnk_080FF514:: @ 080FF514
	.incbin "assets/data_080FEEB8/gUnk_080FF514.bin"

gUnk_080FF518:: @ 080FF518
	.incbin "assets/data_080FEEB8/gUnk_080FF518.bin"

gUnk_080FF51C:: @ 080FF51C
	.incbin "assets/data_080FEEB8/gUnk_080FF51C.bin"

gUnk_080FF520:: @ 080FF520
	.incbin "assets/data_080FEEB8/gUnk_080FF520.bin"

gUnk_080FF524:: @ 080FF524
	.incbin "assets/data_080FEEB8/gUnk_080FF524.bin"

gUnk_080FF528:: @ 080FF528
	.incbin "assets/data_080FEEB8/gUnk_080FF528.bin"

gUnk_080FF52C:: @ 080FF52C
	.incbin "assets/data_080FEEB8/gUnk_080FF52C.bin"

gUnk_080FF530:: @ 080FF530
	.incbin "assets/data_080FEEB8/gUnk_080FF530.bin"

gUnk_080FF534:: @ 080FF534
	.incbin "assets/data_080FEEB8/gUnk_080FF534.bin"

gUnk_080FF538:: @ 080FF538
	.incbin "assets/data_080FEEB8/gUnk_080FF538.bin"

gUnk_080FF53C:: @ 080FF53C
	.incbin "assets/data_080FEEB8/gUnk_080FF53C.bin"

gUnk_080FF540:: @ 080FF540
	.incbin "assets/data_080FEEB8/gUnk_080FF540.bin"

gUnk_080FF544:: @ 080FF544
	.incbin "assets/data_080FEEB8/gUnk_080FF544.bin"

gUnk_080FF548:: @ 080FF548
	.incbin "assets/data_080FEEB8/gUnk_080FF548.bin"

gUnk_080FF54C:: @ 080FF54C
	.incbin "assets/data_080FEEB8/gUnk_080FF54C.bin"

gUnk_080FF550:: @ 080FF550
	.incbin "assets/data_080FEEB8/gUnk_080FF550.bin"

gUnk_080FF554:: @ 080FF554
	.incbin "assets/data_080FEEB8/gUnk_080FF554.bin"

gUnk_080FF558:: @ 080FF558
	.incbin "assets/data_080FEEB8/gUnk_080FF558.bin"

gUnk_080FF55C:: @ 080FF55C
	.incbin "assets/data_080FEEB8/gUnk_080FF55C.bin"

gUnk_080FF560:: @ 080FF560
	.incbin "assets/data_080FEEB8/gUnk_080FF560.bin"

gUnk_080FF564:: @ 080FF564
	.incbin "assets/data_080FEEB8/gUnk_080FF564.bin"

gUnk_080FF568:: @ 080FF568
	.incbin "assets/data_080FEEB8/gUnk_080FF568.bin"

gUnk_080FF56C:: @ 080FF56C
	.incbin "assets/data_080FEEB8/gUnk_080FF56C.bin"

gUnk_080FF570:: @ 080FF570
	.incbin "assets/data_080FEEB8/gUnk_080FF570.bin"

gUnk_080FF574:: @ 080FF574
	.incbin "assets/data_080FEEB8/gUnk_080FF574.bin"

gUnk_080FF578:: @ 080FF578
	.incbin "assets/data_080FEEB8/gUnk_080FF578.bin"

gUnk_080FF57C:: @ 080FF57C
	.incbin "assets/data_080FEEB8/gUnk_080FF57C.bin"

gUnk_080FF580:: @ 080FF580
	.incbin "assets/data_080FEEB8/gUnk_080FF580.bin"

gUnk_080FF584:: @ 080FF584
	.incbin "assets/data_080FEEB8/gUnk_080FF584.bin"

gUnk_080FF588:: @ 080FF588
	.incbin "assets/data_080FEEB8/gUnk_080FF588.bin"

gUnk_080FF58C:: @ 080FF58C
	.incbin "assets/data_080FEEB8/gUnk_080FF58C.bin"

gUnk_080FF590:: @ 080FF590
	.incbin "assets/data_080FEEB8/gUnk_080FF590.bin"

gUnk_080FF594:: @ 080FF594
	.incbin "assets/data_080FEEB8/gUnk_080FF594.bin"

gUnk_080FF598:: @ 080FF598
	.incbin "assets/data_080FEEB8/gUnk_080FF598.bin"

gUnk_080FF59C:: @ 080FF59C
	.incbin "assets/data_080FEEB8/gUnk_080FF59C.bin"

gUnk_080FF5A0:: @ 080FF5A0
	.incbin "assets/data_080FEEB8/gUnk_080FF5A0.bin"

gUnk_080FF5A4:: @ 080FF5A4
	.incbin "assets/data_080FEEB8/gUnk_080FF5A4.bin"

gUnk_080FF5A8:: @ 080FF5A8
	.incbin "assets/data_080FEEB8/gUnk_080FF5A8.bin"

gUnk_080FF5AC:: @ 080FF5AC
	.incbin "assets/data_080FEEB8/gUnk_080FF5AC.bin"

gUnk_080FF5B0:: @ 080FF5B0
	.incbin "assets/data_080FEEB8/gUnk_080FF5B0.bin"

gUnk_080FF5B4:: @ 080FF5B4
	.incbin "assets/data_080FEEB8/gUnk_080FF5B4.bin"

gUnk_080FF5B8:: @ 080FF5B8
	.incbin "assets/data_080FEEB8/gUnk_080FF5B8.bin"

gUnk_080FF5BC:: @ 080FF5BC
	.incbin "assets/data_080FEEB8/gUnk_080FF5BC.bin"

gUnk_080FF5C0:: @ 080FF5C0
	.incbin "assets/data_080FEEB8/gUnk_080FF5C0.bin"

gUnk_080FF5C4:: @ 080FF5C4
	.incbin "assets/data_080FEEB8/gUnk_080FF5C4.bin"

gUnk_080FF5C8:: @ 080FF5C8
	.incbin "assets/data_080FEEB8/gUnk_080FF5C8.bin"

gUnk_080FF5CC:: @ 080FF5CC
	.incbin "assets/data_080FEEB8/gUnk_080FF5CC.bin"

gUnk_080FF5D0:: @ 080FF5D0
	.incbin "assets/data_080FEEB8/gUnk_080FF5D0.bin"

gUnk_080FF5D4:: @ 080FF5D4
	.incbin "assets/data_080FEEB8/gUnk_080FF5D4.bin"

gUnk_080FF5D8:: @ 080FF5D8
	.incbin "assets/data_080FEEB8/gUnk_080FF5D8.bin"

gUnk_080FF5DC:: @ 080FF5DC
	.incbin "assets/data_080FEEB8/gUnk_080FF5DC.bin"

gUnk_080FF5E0:: @ 080FF5E0
	.incbin "assets/data_080FEEB8/gUnk_080FF5E0.bin"

gUnk_080FF5E4:: @ 080FF5E4
	.incbin "assets/data_080FEEB8/gUnk_080FF5E4.bin"

gUnk_080FF5E8:: @ 080FF5E8
	.incbin "assets/data_080FEEB8/gUnk_080FF5E8.bin"

gUnk_080FF5EC:: @ 080FF5EC
	.incbin "assets/data_080FEEB8/gUnk_080FF5EC.bin"

gUnk_080FF5F0:: @ 080FF5F0
	.incbin "assets/data_080FEEB8/gUnk_080FF5F0.bin"

gUnk_080FF5F4:: @ 080FF5F4
	.incbin "assets/data_080FEEB8/gUnk_080FF5F4.bin"

gUnk_080FF5F8:: @ 080FF5F8
	.incbin "assets/data_080FEEB8/gUnk_080FF5F8.bin"

gUnk_080FF5FC:: @ 080FF5FC
	.incbin "assets/data_080FEEB8/gUnk_080FF5FC.bin"

gUnk_080FF600:: @ 080FF600
	.incbin "assets/data_080FEEB8/gUnk_080FF600.bin"

gUnk_080FF604:: @ 080FF604
	.incbin "assets/data_080FEEB8/gUnk_080FF604.bin"

gUnk_080FF608:: @ 080FF608
	.incbin "assets/data_080FEEB8/gUnk_080FF608.bin"

gUnk_080FF60C:: @ 080FF60C
	.incbin "assets/data_080FEEB8/gUnk_080FF60C.bin"

gUnk_080FF610:: @ 080FF610
	.incbin "assets/data_080FEEB8/gUnk_080FF610.bin"

gUnk_080FF614:: @ 080FF614
	.incbin "assets/data_080FEEB8/gUnk_080FF614.bin"

gUnk_080FF618:: @ 080FF618
	.incbin "assets/data_080FEEB8/gUnk_080FF618.bin"

gUnk_080FF61C:: @ 080FF61C
	.incbin "assets/data_080FEEB8/gUnk_080FF61C.bin"

gUnk_080FF620:: @ 080FF620
	.incbin "assets/data_080FEEB8/gUnk_080FF620.bin"

gUnk_080FF624:: @ 080FF624
	.incbin "assets/data_080FEEB8/gUnk_080FF624.bin"

gUnk_080FF628:: @ 080FF628
	.incbin "assets/data_080FEEB8/gUnk_080FF628.bin"

gUnk_080FF62C:: @ 080FF62C
	.incbin "assets/data_080FEEB8/gUnk_080FF62C.bin"

gUnk_080FF630:: @ 080FF630
	.incbin "assets/data_080FEEB8/gUnk_080FF630.bin"

gUnk_080FF634:: @ 080FF634
	.incbin "assets/data_080FEEB8/gUnk_080FF634.bin"

gUnk_080FF638:: @ 080FF638
	.incbin "assets/data_080FEEB8/gUnk_080FF638.bin"

gUnk_080FF63C:: @ 080FF63C
	.incbin "assets/data_080FEEB8/gUnk_080FF63C.bin"

gUnk_080FF640:: @ 080FF640
	.incbin "assets/data_080FEEB8/gUnk_080FF640.bin"

gUnk_080FF644:: @ 080FF644
	.incbin "assets/data_080FEEB8/gUnk_080FF644.bin"

gUnk_080FF648:: @ 080FF648
	.incbin "assets/data_080FEEB8/gUnk_080FF648.bin"

gUnk_080FF64C:: @ 080FF64C
	.incbin "assets/data_080FEEB8/gUnk_080FF64C.bin"

gUnk_080FF650:: @ 080FF650
	.incbin "assets/data_080FEEB8/gUnk_080FF650.bin"

gUnk_080FF654:: @ 080FF654
	.incbin "assets/data_080FEEB8/gUnk_080FF654.bin"

gUnk_080FF658:: @ 080FF658
	.incbin "assets/data_080FEEB8/gUnk_080FF658.bin"

gUnk_080FF65C:: @ 080FF65C
	.incbin "assets/data_080FEEB8/gUnk_080FF65C.bin"

gUnk_080FF660:: @ 080FF660
	.incbin "assets/data_080FEEB8/gUnk_080FF660.bin"

gUnk_080FF664:: @ 080FF664
	.incbin "assets/data_080FEEB8/gUnk_080FF664.bin"

gUnk_080FF668:: @ 080FF668
	.incbin "assets/data_080FEEB8/gUnk_080FF668.bin"

gUnk_080FF66C:: @ 080FF66C
	.incbin "assets/data_080FEEB8/gUnk_080FF66C.bin"

gUnk_080FF670:: @ 080FF670
	.incbin "assets/data_080FEEB8/gUnk_080FF670.bin"

gUnk_080FF674:: @ 080FF674
	.incbin "assets/data_080FEEB8/gUnk_080FF674.bin"

gUnk_080FF678:: @ 080FF678
	.incbin "assets/data_080FEEB8/gUnk_080FF678.bin"

gUnk_080FF67C:: @ 080FF67C
	.incbin "assets/data_080FEEB8/gUnk_080FF67C.bin"

gUnk_080FF680:: @ 080FF680
	.incbin "assets/data_080FEEB8/gUnk_080FF680.bin"

gUnk_080FF684:: @ 080FF684
	.incbin "assets/data_080FEEB8/gUnk_080FF684.bin"

gUnk_080FF688:: @ 080FF688
	.incbin "assets/data_080FEEB8/gUnk_080FF688.bin"

gUnk_080FF68C:: @ 080FF68C
	.incbin "assets/data_080FEEB8/gUnk_080FF68C.bin"

gUnk_080FF690:: @ 080FF690
	.incbin "assets/data_080FEEB8/gUnk_080FF690.bin"

gUnk_080FF694:: @ 080FF694
	.incbin "assets/data_080FEEB8/gUnk_080FF694.bin"

gUnk_080FF698:: @ 080FF698
	.incbin "assets/data_080FEEB8/gUnk_080FF698.bin"

gUnk_080FF69C:: @ 080FF69C
	.incbin "assets/data_080FEEB8/gUnk_080FF69C.bin"

gUnk_080FF6A0:: @ 080FF6A0
	.incbin "assets/data_080FEEB8/gUnk_080FF6A0.bin"

gUnk_080FF6A4:: @ 080FF6A4
	.incbin "assets/data_080FEEB8/gUnk_080FF6A4.bin"

gUnk_080FF6A8:: @ 080FF6A8
	.incbin "assets/data_080FEEB8/gUnk_080FF6A8.bin"

gUnk_080FF6AC:: @ 080FF6AC
	.incbin "assets/data_080FEEB8/gUnk_080FF6AC.bin"

gUnk_080FF6B0:: @ 080FF6B0
	.incbin "assets/data_080FEEB8/gUnk_080FF6B0.bin"

gUnk_080FF6B4:: @ 080FF6B4
	.incbin "assets/data_080FEEB8/gUnk_080FF6B4.bin"

gUnk_080FF6B8:: @ 080FF6B8
	.incbin "assets/data_080FEEB8/gUnk_080FF6B8.bin"

gUnk_080FF6BC:: @ 080FF6BC
	.incbin "assets/data_080FEEB8/gUnk_080FF6BC.bin"

gUnk_080FF6C0:: @ 080FF6C0
	.incbin "assets/data_080FEEB8/gUnk_080FF6C0.bin"

gUnk_080FF6C4:: @ 080FF6C4
	.incbin "assets/data_080FEEB8/gUnk_080FF6C4.bin"

gUnk_080FF6C8:: @ 080FF6C8
	.incbin "assets/data_080FEEB8/gUnk_080FF6C8.bin"

gUnk_080FF6CC:: @ 080FF6CC
	.incbin "assets/data_080FEEB8/gUnk_080FF6CC.bin"

gUnk_080FF6D0:: @ 080FF6D0
	.incbin "assets/data_080FEEB8/gUnk_080FF6D0.bin"

gUnk_080FF6D4:: @ 080FF6D4
	.incbin "assets/data_080FEEB8/gUnk_080FF6D4.bin"

gUnk_080FF6D8:: @ 080FF6D8
	.incbin "assets/data_080FEEB8/gUnk_080FF6D8.bin"

gUnk_080FF6DC:: @ 080FF6DC
	.incbin "assets/data_080FEEB8/gUnk_080FF6DC.bin"

gUnk_080FF6E0:: @ 080FF6E0
	.incbin "assets/data_080FEEB8/gUnk_080FF6E0.bin"

gUnk_080FF6E4:: @ 080FF6E4
	.incbin "assets/data_080FEEB8/gUnk_080FF6E4.bin"

gUnk_080FF6E8:: @ 080FF6E8
	.incbin "assets/data_080FEEB8/gUnk_080FF6E8.bin"

gUnk_080FF6EC:: @ 080FF6EC
	.incbin "assets/data_080FEEB8/gUnk_080FF6EC.bin"

gUnk_080FF6F0:: @ 080FF6F0
	.incbin "assets/data_080FEEB8/gUnk_080FF6F0.bin"

gUnk_080FF6F4:: @ 080FF6F4
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF6F4_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF6F4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF6F8:: @ 080FF6F8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF6F8_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF6F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF6FC:: @ 080FF6FC
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF6FC_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF6FC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF700:: @ 080FF700
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF700_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF700_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF704:: @ 080FF704
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF704_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF704_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF708:: @ 080FF708
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF708_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF708_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF70C:: @ 080FF70C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF70C_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF70C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF710:: @ 080FF710
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF710_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF710_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF714:: @ 080FF714
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF714_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF714_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF718:: @ 080FF718
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF718_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF718_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF71C:: @ 080FF71C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF71C_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF71C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF720:: @ 080FF720
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF720_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF720_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF724:: @ 080FF724
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF724_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF724_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF728:: @ 080FF728
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF728_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF728_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF72C:: @ 080FF72C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF72C_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF72C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif


gUnk_080FF730:: @ 080FF730
	.incbin "assets/data_080FEEB8/gUnk_080FF730.bin"

gUnk_080FF73C:: @ 080FF73C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF73C_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF73C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF744:: @ 080FF744
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF744_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF744_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF750:: @ 080FF750
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF750_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF750_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF75C:: @ 080FF75C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF75C_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF75C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF770:: @ 080FF770
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF770_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF770_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF778:: @ 080FF778
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF778_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF778_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF780:: @ 080FF780
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF780_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF780_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF788:: @ 080FF788
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF788_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF788_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF790:: @ 080FF790
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF790_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF790_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF798:: @ 080FF798
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF798_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF798_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7A0:: @ 080FF7A0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7A0_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7A8:: @ 080FF7A8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7A8_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7B0:: @ 080FF7B0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7B0_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7B8:: @ 080FF7B8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7B8_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7C0:: @ 080FF7C0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7C0_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7C8:: @ 080FF7C8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7C8_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7D0:: @ 080FF7D0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7D0_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7D8:: @ 080FF7D8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7D8_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7E0:: @ 080FF7E0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7E0_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7E8:: @ 080FF7E8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7E8_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7F0:: @ 080FF7F0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7F0_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF7F8:: @ 080FF7F8
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF7F8_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF7F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF808:: @ 080FF808
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF808_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF808_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF814:: @ 080FF814
	.incbin "assets/data_080FEEB8/gUnk_080FF814.bin"

gUnk_080FF83C:: @ 080FF83C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FF83C_EU.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FF83C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FF844:: @ 080FF844
.ifndef EU
	.incbin "assets/data_080FEEB8/gUnk_080FF844_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gPaletteGroups:: @ 080FF850
	.4byte 00000000
	.4byte gUnk_080FF428
	.4byte gUnk_080FF430
	.4byte gUnk_080FF438
	.4byte gUnk_080FF444
	.4byte gUnk_080FF450
	.4byte gUnk_080FF454
	.4byte gUnk_080FF458
	.4byte gUnk_080FF45C
	.4byte gUnk_080FF460
	.4byte gUnk_080FF474
	.4byte gUnk_080FF488
	.4byte gUnk_080FF484
	.4byte gUnk_080FF5C8
	.4byte gUnk_080FF4A0
	.4byte gUnk_080FF4DC
	.4byte gUnk_080FF560
	.4byte gUnk_080FF4E4
	.4byte gUnk_080FF4C4
	.4byte gUnk_080FF570
	.4byte gUnk_080FF49C
	.4byte gUnk_080FF498
	.4byte gUnk_080FF4A4
	.4byte gUnk_080FF4A8
	.4byte gUnk_080FF4AC
	.4byte gUnk_080FF4B0
	.4byte gUnk_080FF4E8
	.4byte gUnk_080FF4B8
	.4byte gUnk_080FF490
	.4byte gUnk_080FF574
	.4byte gUnk_080FF578
	.4byte gUnk_080FF590
	.4byte gUnk_080FF594
	.4byte gUnk_080FF57C
	.4byte gUnk_080FF5E4
	.4byte gUnk_080FF5F8
	.4byte gUnk_080FF4F0
	.4byte gUnk_080FF4F4
	.4byte gUnk_080FF598
	.4byte gUnk_080FF494
	.4byte gUnk_080FF6C4
	.4byte gUnk_080FF59C
	.4byte gUnk_080FF6C8
	.4byte gUnk_080FF6CC
	.4byte gUnk_080FF58C
	.4byte gUnk_080FF5CC
	.4byte gUnk_080FF564
	.4byte gUnk_080FF6D0
	.4byte gUnk_080FF6D4
	.4byte gUnk_080FF6D8
	.4byte gUnk_080FF6DC
	.4byte gUnk_080FF5B0
	.4byte gUnk_080FF5B4
	.4byte gUnk_080FF5C4
	.4byte gUnk_080FF4C0
	.4byte gUnk_080FF500
	.4byte gUnk_080FF510
	.4byte gUnk_080FF518
	.4byte gUnk_080FF51C
	.4byte gUnk_080FF524
	.4byte gUnk_080FF50C
	.4byte gUnk_080FF4B4
	.4byte gUnk_080FF5A0
	.4byte gUnk_080FF4C8
	.4byte gUnk_080FF4CC
	.4byte gUnk_080FF4D0
	.4byte gUnk_080FF4D4
	.4byte gUnk_080FF568
	.4byte gUnk_080FF650
	.4byte gUnk_080FF654
	.4byte gUnk_080FF658
	.4byte gUnk_080FF65C
	.4byte gUnk_080FF660
	.4byte gUnk_080FF664
	.4byte gUnk_080FF668
	.4byte gUnk_080FF66C
	.4byte gUnk_080FF670
	.4byte gUnk_080FF680
	.4byte gUnk_080FF684
	.4byte gUnk_080FF688
	.4byte gUnk_080FF68C
	.4byte gUnk_080FF690
	.4byte gUnk_080FF694
	.4byte gUnk_080FF698
	.4byte gUnk_080FF69C
	.4byte gUnk_080FF56C
	.4byte gUnk_080FF674
	.4byte gUnk_080FF678
	.4byte gUnk_080FF67C
	.4byte gUnk_080FF5B8
	.4byte gUnk_080FF4EC
	.4byte gUnk_080FF6E0
	.4byte gUnk_080FF5A4
	.4byte gUnk_080FF4D8
	.4byte gUnk_080FF4FC
	.4byte gUnk_080FF640
	.4byte gUnk_080FF644
	.4byte gUnk_080FF648
	.4byte gUnk_080FF64C
	.4byte gUnk_080FF580
	.4byte gUnk_080FF584
	.4byte gUnk_080FF5FC
	.4byte gUnk_080FF5A8
	.4byte gUnk_080FF5AC
	.4byte gUnk_080FF504
	.4byte gUnk_080FF53C
	.4byte gUnk_080FF540
	.4byte gUnk_080FF544
	.4byte gUnk_080FF548
	.4byte gUnk_080FF4E0
	.4byte gUnk_080FF600
	.4byte gUnk_080FF630
	.4byte gUnk_080FF634
	.4byte gUnk_080FF638
	.4byte gUnk_080FF63C
	.4byte gUnk_080FF6A0
	.4byte gUnk_080FF6A4
	.4byte gUnk_080FF6A8
	.4byte gUnk_080FF6AC
	.4byte gUnk_080FF6B0
	.4byte gUnk_080FF54C
	.4byte gUnk_080FF604
	.4byte gUnk_080FF6C0
	.4byte gUnk_080FF6BC
	.4byte gUnk_080FF6B8
	.4byte gUnk_080FF608
	.4byte gUnk_080FF60C
	.4byte gUnk_080FF610
	.4byte gUnk_080FF4F8
	.4byte gUnk_080FF6B4
	.4byte gUnk_080FF508
	.4byte gUnk_080FF614
	.4byte gUnk_080FF618
	.4byte gUnk_080FF61C
	.4byte gUnk_080FF6E4
	.4byte gUnk_080FF6E8
	.4byte gUnk_080FF6EC
	.4byte gUnk_080FF6F0
	.4byte gUnk_080FF6F4
	.4byte gUnk_080FF6F8
	.4byte gUnk_080FF6FC
	.4byte gUnk_080FF700
	.4byte gUnk_080FF704
	.4byte gUnk_080FF708
	.4byte gUnk_080FF528
	.4byte gUnk_080FF520
	.4byte gUnk_080FF5D0
	.4byte gUnk_080FF5D4
	.4byte gUnk_080FF5D8
	.4byte gUnk_080FF5DC
	.4byte gUnk_080FF5E0
	.4byte gUnk_080FF5E8
	.4byte gUnk_080FF5EC
	.4byte gUnk_080FF5F0
	.4byte gUnk_080FF5F4
	.4byte gUnk_080FF530
	.4byte gUnk_080FF534
	.4byte gUnk_080FF5BC
	.4byte gUnk_080FF620
	.4byte gUnk_080FF624
	.4byte gUnk_080FF628
	.4byte gUnk_080FF62C
	.4byte gUnk_080FF514
	.4byte gUnk_080FF550
	.4byte gUnk_080FF554
	.4byte gUnk_080FF558
	.4byte gUnk_080FF55C
	.4byte gUnk_080FF588
	.4byte gUnk_080FF5C0
	.4byte gUnk_080FF538
	.4byte gUnk_080FF4BC
	.4byte gUnk_080FF70C
	.4byte gUnk_080FF710
	.4byte gUnk_080FF714
	.4byte gUnk_080FF718
	.4byte gUnk_080FF71C
	.4byte gUnk_080FF720
	.4byte gUnk_080FF724
	.4byte gUnk_080FF728
	.4byte gUnk_080FF72C
	.4byte gUnk_080FF52C
	.4byte gUnk_080FF730
	.4byte gUnk_080FF73C
	.4byte gUnk_080FF744
	.4byte gUnk_080FF750
	.4byte gUnk_080FF75C
	.4byte gUnk_080FF770
	.4byte gUnk_080FF778
	.4byte gUnk_080FF780
	.4byte gUnk_080FF788
	.4byte gUnk_080FF790
	.4byte gUnk_080FF798
	.4byte gUnk_080FF7A0
	.4byte gUnk_080FF7A8
	.4byte gUnk_080FF7B0
	.4byte gUnk_080FF7B8
	.4byte gUnk_080FF7C0
	.4byte gUnk_080FF7C8
	.4byte gUnk_080FF7D0
	.4byte gUnk_080FF7D8
	.4byte gUnk_080FF7E0
	.4byte gUnk_080FF7E8
	.4byte gUnk_080FF7F0
	.4byte gUnk_080FF7F8
	.4byte gUnk_080FF808
	.4byte gUnk_080FF814
	.4byte gUnk_080FF83C
.ifndef EU
	.4byte gUnk_080FF844
.endif




@ TODO EU seems to be a lot different

.ifdef EU

gUnk_EU_080FF0C4:: @ 080FF0C4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF0C4_EU.bin"

gUnk_EU_080FF0DC:: @ 080FF0DC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF0DC_EU.bin"

gUnk_EU_080FF124:: @ 080FF124
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF124_EU.bin"

gUnk_EU_080FF178:: @ 080FF178
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF178_EU.bin"

gUnk_EU_080FF19C:: @ 080FF19C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF19C_EU.bin"

gUnk_EU_080FF1CC:: @ 080FF1CC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF1CC_EU.bin"

gUnk_EU_080FF214:: @ 080FF214
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF214_EU.bin"

gUnk_EU_080FF220:: @ 080FF220
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF220_EU.bin"

gUnk_EU_080FF22C:: @ 080FF22C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF22C_EU.bin"

gUnk_EU_080FF244:: @ 080FF244
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF244_EU.bin"

gUnk_EU_080FF25C:: @ 080FF25C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF25C_EU.bin"

gUnk_EU_080FF268:: @ 080FF268
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF268_EU.bin"

gUnk_EU_080FF2B0:: @ 080FF2B0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF2B0_EU.bin"

gUnk_EU_080FF2C8:: @ 080FF2C8
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF2C8_EU.bin"

gUnk_EU_080FF2E0:: @ 080FF2E0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF2E0_EU.bin"

gUnk_EU_080FF2EC:: @ 080FF2EC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF2EC_EU.bin"

gUnk_EU_080FF304:: @ 080FF304
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF304_EU.bin"

gUnk_EU_080FF310:: @ 080FF310
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF310_EU.bin"

gUnk_EU_080FF31C:: @ 080FF31C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF31C_EU.bin"

gUnk_EU_080FF328:: @ 080FF328
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF328_EU.bin"

gUnk_EU_080FF334:: @ 080FF334
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF334_EU.bin"

gUnk_EU_080FF340:: @ 080FF340
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF340_EU.bin"

gUnk_EU_080FF34C:: @ 080FF34C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF34C_EU.bin"

gUnk_EU_080FF358:: @ 080FF358
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF358_EU.bin"

gUnk_EU_080FF370:: @ 080FF370
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF370_EU.bin"

gUnk_EU_080FF388:: @ 080FF388
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF388_EU.bin"

gUnk_EU_080FF394:: @ 080FF394
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF394_EU.bin"

gUnk_EU_080FF3AC:: @ 080FF3AC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF3AC_EU.bin"

gUnk_EU_080FF3C4:: @ 080FF3C4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF3C4_EU.bin"

gUnk_EU_080FF3DC:: @ 080FF3DC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF3DC_EU.bin"

gUnk_EU_080FF3F4:: @ 080FF3F4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF3F4_EU.bin"

gUnk_EU_080FF430:: @ 080FF430
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF430_EU.bin"

gUnk_EU_080FF46C:: @ 080FF46C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF46C_EU.bin"

gUnk_EU_080FF4A8:: @ 080FF4A8
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF4A8_EU.bin"

gUnk_EU_080FF4E4:: @ 080FF4E4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF4E4_EU.bin"

gUnk_EU_080FF520:: @ 080FF520
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF520_EU.bin"

gUnk_EU_080FF55C:: @ 080FF55C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF55C_EU.bin"

gUnk_EU_080FF58C:: @ 080FF58C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF58C_EU.bin"

gUnk_EU_080FF5A4:: @ 080FF5A4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF5A4_EU.bin"

gUnk_EU_080FF5B0:: @ 080FF5B0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF5B0_EU.bin"

gUnk_EU_080FF5BC:: @ 080FF5BC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF5BC_EU.bin"

gUnk_EU_080FF5C8:: @ 080FF5C8
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF5C8_EU.bin"

gUnk_EU_080FF5D4:: @ 080FF5D4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF5D4_EU.bin"

gUnk_EU_080FF5E0:: @ 080FF5E0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF5E0_EU.bin"

gUnk_EU_080FF5EC:: @ 080FF5EC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF5EC_EU.bin"

gUnk_EU_080FF5F8:: @ 080FF5F8
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF5F8_EU.bin"

gUnk_EU_080FF604:: @ 080FF604
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF604_EU.bin"

gUnk_EU_080FF610:: @ 080FF610
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF610_EU.bin"

gUnk_EU_080FF61C:: @ 080FF61C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF61C_EU.bin"

gUnk_EU_080FF628:: @ 080FF628
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF628_EU.bin"

gUnk_EU_080FF634:: @ 080FF634
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF634_EU.bin"

gUnk_EU_080FF640:: @ 080FF640
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF640_EU.bin"

gUnk_EU_080FF64C:: @ 080FF64C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF64C_EU.bin"

gUnk_EU_080FF658:: @ 080FF658
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF658_EU.bin"

gUnk_EU_080FF664:: @ 080FF664
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF664_EU.bin"

gUnk_EU_080FF670:: @ 080FF670
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF670_EU.bin"

gUnk_EU_080FF67C:: @ 080FF67C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF67C_EU.bin"

gUnk_EU_080FF688:: @ 080FF688
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF688_EU.bin"

gUnk_EU_080FF694:: @ 080FF694
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF694_EU.bin"

gUnk_EU_080FF6A0:: @ 080FF6A0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF6A0_EU.bin"

gUnk_EU_080FF6AC:: @ 080FF6AC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF6AC_EU.bin"

gUnk_EU_080FF6B8:: @ 080FF6B8
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF6B8_EU.bin"

gUnk_EU_080FF6C4:: @ 080FF6C4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF6C4_EU.bin"

gUnk_EU_080FF6D0:: @ 080FF6D0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF6D0_EU.bin"

gUnk_EU_080FF6DC:: @ 080FF6DC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF6DC_EU.bin"

gUnk_EU_080FF6F4:: @ 080FF6F4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF6F4_EU.bin"

gUnk_EU_080FF70C:: @ 080FF70C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF70C_EU.bin"

gUnk_EU_080FF724:: @ 080FF724
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF724_EU.bin"

gUnk_EU_080FF73C:: @ 080FF73C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF73C_EU.bin"

gUnk_EU_080FF754:: @ 080FF754
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF754_EU.bin"

gUnk_EU_080FF76C:: @ 080FF76C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF76C_EU.bin"

gUnk_EU_080FF784:: @ 080FF784
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF784_EU.bin"

gUnk_EU_080FF79C:: @ 080FF79C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF79C_EU.bin"

gUnk_EU_080FF7B4:: @ 080FF7B4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF7B4_EU.bin"

gUnk_EU_080FF7CC:: @ 080FF7CC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF7CC_EU.bin"

gUnk_EU_080FF7E4:: @ 080FF7E4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF7E4_EU.bin"

gUnk_EU_080FF7FC:: @ 080FF7FC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF7FC_EU.bin"

gUnk_EU_080FF814:: @ 080FF814
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF814_EU.bin"

gUnk_EU_080FF82C:: @ 080FF82C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF82C_EU.bin"

gUnk_EU_080FF844:: @ 080FF844
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF844_EU.bin"

gUnk_EU_080FF85C:: @ 080FF85C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF85C_EU.bin"

gUnk_EU_080FF874:: @ 080FF874
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF874_EU.bin"

gUnk_EU_080FF88C:: @ 080FF88C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF88C_EU.bin"

gUnk_EU_080FF8A4:: @ 080FF8A4
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF8A4_EU.bin"

gUnk_EU_080FF8B0:: @ 080FF8B0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF8B0_EU.bin"

gUnk_EU_080FF8BC:: @ 080FF8BC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF8BC_EU.bin"

gUnk_EU_080FF8EC:: @ 080FF8EC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF8EC_EU.bin"

gUnk_EU_080FF91C:: @ 080FF91C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF91C_EU.bin"

gUnk_EU_080FF94C:: @ 080FF94C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF94C_EU.bin"

gUnk_EU_080FF9A0:: @ 080FF9A0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FF9A0_EU.bin"

gUnk_EU_080FFA48:: @ 080FFA48
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFA48_EU.bin"

gUnk_EU_080FFAF0:: @ 080FFAF0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFAF0_EU.bin"

gUnk_EU_080FFB68:: @ 080FFB68
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFB68_EU.bin"

gUnk_EU_080FFBB0:: @ 080FFBB0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFBB0_EU.bin"

gUnk_EU_080FFBC8:: @ 080FFBC8
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFBC8_EU.bin"

gUnk_EU_080FFBE0:: @ 080FFBE0
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFBE0_EU.bin"

gUnk_EU_080FFC1C:: @ 080FFC1C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFC1C_EU.bin"

gUnk_EU_080FFC4C:: @ 080FFC4C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFC4C_EU.bin"

gUnk_EU_080FFC7C:: @ 080FFC7C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFC7C_EU.bin"

gUnk_EU_080FFCAC:: @ 080FFCAC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFCAC_EU.bin"

gUnk_EU_080FFCDC:: @ 080FFCDC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFCDC_EU.bin"

gUnk_EU_080FFD0C:: @ 080FFD0C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFD0C_EU.bin"

gUnk_EU_080FFD3C:: @ 080FFD3C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFD3C_EU.bin"

gUnk_EU_080FFD6C:: @ 080FFD6C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFD6C_EU.bin"

gUnk_EU_080FFD9C:: @ 080FFD9C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFD9C_EU.bin"

gUnk_EU_080FFDCC:: @ 080FFDCC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFDCC_EU.bin"

gUnk_EU_080FFDFC:: @ 080FFDFC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFDFC_EU.bin"

gUnk_EU_080FFE2C:: @ 080FFE2C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFE2C_EU.bin"

gUnk_EU_080FFE5C:: @ 080FFE5C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFE5C_EU.bin"

gUnk_EU_080FFE8C:: @ 080FFE8C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFE8C_EU.bin"

gUnk_EU_080FFEBC:: @ 080FFEBC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFEBC_EU.bin"

gUnk_EU_080FFEEC:: @ 080FFEEC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFEEC_EU.bin"

gUnk_EU_080FFF1C:: @ 080FFF1C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFF1C_EU.bin"

gUnk_EU_080FFF4C:: @ 080FFF4C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFF4C_EU.bin"

gUnk_EU_080FFF7C:: @ 080FFF7C
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFF7C_EU.bin"

gUnk_EU_080FFFAC:: @ 080FFFAC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFFAC_EU.bin"

gUnk_EU_080FFFDC:: @ 080FFFDC
	.incbin "assets/data_080FEEB8/gUnk_EU_080FFFDC_EU.bin"

gUnk_EU_0810000C:: @ 0810000C
	.incbin "assets/data_080FEEB8/gUnk_EU_0810000C_EU.bin"

gUnk_EU_0810003C:: @ 0810003C
	.incbin "assets/data_080FEEB8/gUnk_EU_0810003C_EU.bin"

gUnk_EU_081000A8:: @ 081000A8
	.incbin "assets/data_080FEEB8/gUnk_EU_081000A8_EU.bin"

gUnk_EU_081000B4:: @ 081000B4
	.incbin "assets/data_080FEEB8/gUnk_EU_081000B4_EU.bin"

gUnk_EU_081000C0:: @ 081000C0
	.incbin "assets/data_080FEEB8/gUnk_EU_081000C0_EU.bin"

gUnk_EU_081000CC:: @ 081000CC
	.incbin "assets/data_080FEEB8/gUnk_EU_081000CC_EU.bin"

gUnk_EU_081000D8:: @ 081000D8
	.incbin "assets/data_080FEEB8/gUnk_EU_081000D8_EU.bin"

gUnk_EU_081000E4:: @ 081000E4
	.incbin "assets/data_080FEEB8/gUnk_EU_081000E4_EU.bin"

gUnk_EU_081000F0:: @ 081000F0
	.incbin "assets/data_080FEEB8/gUnk_EU_081000F0_EU.bin"

gUnk_EU_081000FC:: @ 081000FC
	.incbin "assets/data_080FEEB8/gUnk_EU_081000FC_EU.bin"

gUnk_EU_0810015C:: @ 0810015C
	.incbin "assets/data_080FEEB8/gUnk_EU_0810015C_EU.bin"

gUnk_EU_081001E0:: @ 081001E0
	.incbin "assets/data_080FEEB8/gUnk_EU_081001E0_EU.bin"

gUnk_EU_081001EC:: @ 081001EC
	.incbin "assets/data_080FEEB8/gUnk_EU_081001EC_EU.bin"

gUnk_EU_081001F8:: @ 081001F8
	.incbin "assets/data_080FEEB8/gUnk_EU_081001F8_EU.bin"


gUnk_08100AA8:: @ 08100218
	.4byte 0
	.4byte gUnk_EU_080FF0C4
	.4byte gUnk_EU_080FF0DC
	.4byte gUnk_EU_080FF124
	.4byte gUnk_EU_080FF178
	.4byte gUnk_EU_080FF19C
	.4byte gUnk_EU_080FF1CC
	.4byte gUnk_EU_080FF214
	.4byte gUnk_EU_080FF220
	.4byte gUnk_EU_080FF2B0
	.4byte gUnk_EU_080FF2C8
	.4byte gUnk_EU_080FF2E0
	.4byte gUnk_EU_080FF22C
	.4byte gUnk_EU_080FF244
	.4byte gUnk_EU_080FF25C
	.4byte gUnk_EU_080FF268
	.4byte gUnk_EU_080FF2EC
	.4byte gUnk_EU_080FF58C
	.4byte gUnk_EU_080FF5A4
	.4byte gUnk_EU_080FF5B0
	.4byte gUnk_EU_080FF5EC
	.4byte gUnk_EU_080FF5F8
	.4byte gUnk_EU_080FF55C
	.4byte gUnk_EU_080FF304
	.4byte gUnk_EU_080FF310
	.4byte gUnk_EU_080FF31C
	.4byte gUnk_EU_080FF328
	.4byte gUnk_EU_080FF334
	.4byte gUnk_EU_080FF340
	.4byte gUnk_EU_080FF34C
	.4byte gUnk_EU_080FF3F4
	.4byte gUnk_EU_080FF4A8
	.4byte gUnk_EU_080FF46C
	.4byte gUnk_EU_080FF430
	.4byte gUnk_EU_080FF520
	.4byte gUnk_EU_080FF4E4
	.4byte gUnk_EU_080FF358
	.4byte gUnk_EU_080FF370
	.4byte gUnk_EU_080FF388
	.4byte gUnk_EU_080FF394
	.4byte gUnk_EU_080FF3AC
	.4byte gUnk_EU_080FF3C4
	.4byte gUnk_EU_080FF3DC
	.4byte gUnk_EU_080FF5BC
	.4byte gUnk_EU_080FF5C8
	.4byte gUnk_EU_080FF5D4
	.4byte gUnk_EU_080FF5E0
	.4byte gUnk_EU_080FF604
	.4byte gUnk_EU_080FF610
	.4byte gUnk_EU_080FF61C
	.4byte gUnk_EU_080FF628
	.4byte gUnk_EU_080FF634
	.4byte gUnk_EU_080FF640
	.4byte gUnk_EU_080FF64C
	.4byte gUnk_EU_080FF6DC
	.4byte gUnk_EU_080FF6F4
	.4byte gUnk_EU_080FF70C
	.4byte gUnk_EU_080FF724
	.4byte gUnk_EU_080FF73C
	.4byte gUnk_EU_080FF754
	.4byte gUnk_EU_080FF76C
	.4byte gUnk_EU_080FF784
	.4byte gUnk_EU_080FF79C
	.4byte gUnk_EU_080FF7B4
	.4byte gUnk_EU_080FF7CC
	.4byte gUnk_EU_080FF7E4
	.4byte gUnk_EU_080FF7FC
	.4byte gUnk_EU_080FF814
	.4byte gUnk_EU_080FF82C
	.4byte gUnk_EU_080FF844
	.4byte gUnk_EU_080FF85C
	.4byte gUnk_EU_080FF874
	.4byte gUnk_EU_080FF88C
	.4byte gUnk_EU_080FF8A4
	.4byte gUnk_EU_080FF8B0
	.4byte gUnk_EU_080FF658
	.4byte gUnk_EU_080FF664
	.4byte gUnk_EU_080FF670
	.4byte gUnk_EU_080FF67C
	.4byte gUnk_EU_080FF688
	.4byte gUnk_EU_080FF694
	.4byte gUnk_EU_080FF6A0
	.4byte gUnk_EU_080FF6AC
	.4byte gUnk_EU_080FF6B8
	.4byte gUnk_EU_080FF6C4
	.4byte gUnk_EU_080FF6D0
	.4byte gUnk_EU_080FF8BC
	.4byte gUnk_EU_080FF8EC
	.4byte gUnk_EU_080FF91C
	.4byte gUnk_EU_080FF94C
	.4byte gUnk_EU_080FF9A0
	.4byte gUnk_EU_080FFA48
	.4byte gUnk_EU_080FFAF0
	.4byte gUnk_EU_080FFBE0
	.4byte gUnk_EU_080FFC1C
	.4byte gUnk_EU_080FFC4C
	.4byte gUnk_EU_080FFC7C
	.4byte gUnk_EU_080FFCAC
	.4byte gUnk_EU_080FFCDC
	.4byte gUnk_EU_080FFD0C
	.4byte gUnk_EU_080FFD3C
	.4byte gUnk_EU_080FFD6C
	.4byte gUnk_EU_080FFD9C
	.4byte gUnk_EU_080FFDCC
	.4byte gUnk_EU_080FFDFC
	.4byte gUnk_EU_080FFE5C
	.4byte gUnk_EU_080FFE8C
	.4byte gUnk_EU_080FFEEC
	.4byte gUnk_EU_080FFF1C
	.4byte gUnk_EU_080FFFAC
	.4byte gUnk_EU_080FFFDC
	.4byte gUnk_EU_0810000C
	.4byte gUnk_EU_080FFE2C
	.4byte gUnk_EU_080FFEBC
	.4byte gUnk_EU_080FFFAC
	.4byte gUnk_EU_080FFF7C
	.4byte gUnk_EU_080FFF4C
	.4byte gUnk_EU_0810003C
	.4byte gUnk_EU_081000A8
	.4byte gUnk_EU_081000B4
	.4byte gUnk_EU_081000C0
	.4byte gUnk_EU_081000CC
	.4byte gUnk_EU_081000D8
	.4byte gUnk_EU_081000E4
	.4byte gUnk_EU_081000F0
	.4byte gUnk_EU_081000FC
	.4byte gUnk_EU_0810015C
	.4byte gUnk_EU_080FFBB0
	.4byte gUnk_EU_080FFBC8
	.4byte gUnk_EU_080FFB68
	.4byte gUnk_EU_081001E0
	.4byte gUnk_EU_081001EC
	.4byte gUnk_EU_081001F8
.else



gUnk_080FFB90:: @ 080FFB90
	.incbin "assets/data_080FEEB8/gUnk_080FFB90_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFBA8:: @ 080FFBA8
.ifdef JP
	.incbin "assets/data_080FEEB8/gUnk_080FFBA8_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "assets/data_080FEEB8/gUnk_080FFBA8_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FFBA8_2_USA-DEMO_USA.bin"
.endif
.endif

.ifdef JP
	.incbin "assets/data_080FEEB8/gUnk_080FFBA8_3_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "assets/data_080FEEB8/gUnk_080FFBA8_4_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FFBA8_5_USA-DEMO_USA.bin"
.endif
.endif

gUnk_080FFBF0:: @ 080FFBF0
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFBF0_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFBF0_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FFBF0_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_080FFC14:: @ 080FFC14
	.incbin "assets/data_080FEEB8/gUnk_080FFC14_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFC38:: @ 080FFC38
	.incbin "assets/data_080FEEB8/gUnk_080FFC38_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFC68:: @ 080FFC68
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFC68_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFC68_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FFC68_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_080FFC80:: @ 080FFC80
	.incbin "assets/data_080FEEB8/gUnk_080FFC80_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFC8C:: @ 080FFC8C
	.incbin "assets/data_080FEEB8/gUnk_080FFC8C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFC98:: @ 080FFC98
	.incbin "assets/data_080FEEB8/gUnk_080FFC98_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFCB0:: @ 080FFCB0
	.incbin "assets/data_080FEEB8/gUnk_080FFCB0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFCC8:: @ 080FFCC8
	.incbin "assets/data_080FEEB8/gUnk_080FFCC8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFCD4:: @ 080FFCD4
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFCD4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFCD4_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FFCD4_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_080FFCEC:: @ 080FFCEC
	.incbin "assets/data_080FEEB8/gUnk_080FFCEC_USA-JP-DEMO_USA-DEMO_JP.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFCEC_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFCEC_2_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FFCEC_3_USA-DEMO_USA.bin"
.endif
.endif

gUnk_080FFD04:: @ 080FFD04
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFD04_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_080FFD04_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_080FFD04_2_USA-DEMO_USA.bin"
.endif
.endif

.ifdef JP
gUnk_080FF9D8:: @ 080FF9D8
	.incbin "assets/data_080FEEB8/gUnk_080FF9D8_JP.bin"
.else
.ifdef DEMO_JP
gUnk_080FF9D8:: @ 080FF9D8
	.incbin "assets/data_080FEEB8/gUnk_080FF9D8_DEMO_JP.bin"
.endif
.endif

gUnk_080FFD1C:: @ 080FFD1C
	.incbin "assets/data_080FEEB8/gUnk_080FFD1C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD28:: @ 080FFD28
	.incbin "assets/data_080FEEB8/gUnk_080FFD28_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD40:: @ 080FFD40
	.incbin "assets/data_080FEEB8/gUnk_080FFD40_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD4C:: @ 080FFD4C
	.incbin "assets/data_080FEEB8/gUnk_080FFD4C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD58:: @ 080FFD58
	.incbin "assets/data_080FEEB8/gUnk_080FFD58_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD64:: @ 080FFD64
	.incbin "assets/data_080FEEB8/gUnk_080FFD64_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD70:: @ 080FFD70
	.incbin "assets/data_080FEEB8/gUnk_080FFD70_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD7C:: @ 080FFD7C
	.incbin "assets/data_080FEEB8/gUnk_080FFD7C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD88:: @ 080FFD88
	.incbin "assets/data_080FEEB8/gUnk_080FFD88_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFD94:: @ 080FFD94
	.incbin "assets/data_080FEEB8/gUnk_080FFD94_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFDAC:: @ 080FFDAC
	.incbin "assets/data_080FEEB8/gUnk_080FFDAC_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFDC4:: @ 080FFDC4
	.incbin "assets/data_080FEEB8/gUnk_080FFDC4_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFDD0:: @ 080FFDD0
	.incbin "assets/data_080FEEB8/gUnk_080FFDD0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFDE8:: @ 080FFDE8
	.incbin "assets/data_080FEEB8/gUnk_080FFDE8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFE00:: @ 080FFE00
	.incbin "assets/data_080FEEB8/gUnk_080FFE00_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFE18:: @ 080FFE18
	.incbin "assets/data_080FEEB8/gUnk_080FFE18_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFE30:: @ 080FFE30
	.incbin "assets/data_080FEEB8/gUnk_080FFE30_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFE6C:: @ 080FFE6C
	.incbin "assets/data_080FEEB8/gUnk_080FFE6C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFEA8:: @ 080FFEA8
	.incbin "assets/data_080FEEB8/gUnk_080FFEA8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFEE4:: @ 080FFEE4
	.incbin "assets/data_080FEEB8/gUnk_080FFEE4_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFF20:: @ 080FFF20
	.incbin "assets/data_080FEEB8/gUnk_080FFF20_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFF5C:: @ 080FFF5C
	.incbin "assets/data_080FEEB8/gUnk_080FFF5C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFF98:: @ 080FFF98
	.incbin "assets/data_080FEEB8/gUnk_080FFF98_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFFC8:: @ 080FFFC8
	.incbin "assets/data_080FEEB8/gUnk_080FFFC8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFFE0:: @ 080FFFE0
	.incbin "assets/data_080FEEB8/gUnk_080FFFE0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFFEC:: @ 080FFFEC
	.incbin "assets/data_080FEEB8/gUnk_080FFFEC_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_080FFFF8:: @ 080FFFF8
	.incbin "assets/data_080FEEB8/gUnk_080FFFF8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100004:: @ 08100004
	.incbin "assets/data_080FEEB8/gUnk_08100004_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100010:: @ 08100010
	.incbin "assets/data_080FEEB8/gUnk_08100010_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_0810001C:: @ 0810001C
	.incbin "assets/data_080FEEB8/gUnk_0810001C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100028:: @ 08100028
	.incbin "assets/data_080FEEB8/gUnk_08100028_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100034:: @ 08100034
	.incbin "assets/data_080FEEB8/gUnk_08100034_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100040:: @ 08100040
	.incbin "assets/data_080FEEB8/gUnk_08100040_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_0810004C:: @ 0810004C
	.incbin "assets/data_080FEEB8/gUnk_0810004C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100058:: @ 08100058
	.incbin "assets/data_080FEEB8/gUnk_08100058_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100064:: @ 08100064
	.incbin "assets/data_080FEEB8/gUnk_08100064_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100070:: @ 08100070
	.incbin "assets/data_080FEEB8/gUnk_08100070_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_0810007C:: @ 0810007C
	.incbin "assets/data_080FEEB8/gUnk_0810007C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100088:: @ 08100088
	.incbin "assets/data_080FEEB8/gUnk_08100088_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100094:: @ 08100094
	.incbin "assets/data_080FEEB8/gUnk_08100094_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081000A0:: @ 081000A0
	.incbin "assets/data_080FEEB8/gUnk_081000A0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081000AC:: @ 081000AC
	.incbin "assets/data_080FEEB8/gUnk_081000AC_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081000B8:: @ 081000B8
	.incbin "assets/data_080FEEB8/gUnk_081000B8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081000C4:: @ 081000C4
	.incbin "assets/data_080FEEB8/gUnk_081000C4_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081000D0:: @ 081000D0
	.incbin "assets/data_080FEEB8/gUnk_081000D0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081000DC:: @ 081000DC
	.incbin "assets/data_080FEEB8/gUnk_081000DC_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081000E8:: @ 081000E8
	.incbin "assets/data_080FEEB8/gUnk_081000E8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081000F4:: @ 081000F4
	.incbin "assets/data_080FEEB8/gUnk_081000F4_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100100:: @ 08100100
	.incbin "assets/data_080FEEB8/gUnk_08100100_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_0810010C:: @ 0810010C
	.incbin "assets/data_080FEEB8/gUnk_0810010C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100118:: @ 08100118
	.incbin "assets/data_080FEEB8/gUnk_08100118_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100130:: @ 08100130
	.incbin "assets/data_080FEEB8/gUnk_08100130_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100148:: @ 08100148
	.incbin "assets/data_080FEEB8/gUnk_08100148_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100160:: @ 08100160
	.incbin "assets/data_080FEEB8/gUnk_08100160_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100178:: @ 08100178
	.incbin "assets/data_080FEEB8/gUnk_08100178_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100190:: @ 08100190
	.incbin "assets/data_080FEEB8/gUnk_08100190_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081001A8:: @ 081001A8
	.incbin "assets/data_080FEEB8/gUnk_081001A8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081001C0:: @ 081001C0
	.incbin "assets/data_080FEEB8/gUnk_081001C0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081001D8:: @ 081001D8
	.incbin "assets/data_080FEEB8/gUnk_081001D8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081001F0:: @ 081001F0
	.incbin "assets/data_080FEEB8/gUnk_081001F0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100208:: @ 08100208
	.incbin "assets/data_080FEEB8/gUnk_08100208_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100220:: @ 08100220
	.incbin "assets/data_080FEEB8/gUnk_08100220_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100238:: @ 08100238
	.incbin "assets/data_080FEEB8/gUnk_08100238_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100250:: @ 08100250
	.incbin "assets/data_080FEEB8/gUnk_08100250_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100268:: @ 08100268
	.incbin "assets/data_080FEEB8/gUnk_08100268_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100280:: @ 08100280
	.incbin "assets/data_080FEEB8/gUnk_08100280_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100298:: @ 08100298
	.incbin "assets/data_080FEEB8/gUnk_08100298_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081002B0:: @ 081002B0
	.incbin "assets/data_080FEEB8/gUnk_081002B0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081002C8:: @ 081002C8
	.incbin "assets/data_080FEEB8/gUnk_081002C8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081002E0:: @ 081002E0
	.incbin "assets/data_080FEEB8/gUnk_081002E0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081002EC:: @ 081002EC
	.incbin "assets/data_080FEEB8/gUnk_081002EC_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081002F8:: @ 081002F8
	.incbin "assets/data_080FEEB8/gUnk_081002F8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100328:: @ 08100328
	.incbin "assets/data_080FEEB8/gUnk_08100328_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100358:: @ 08100358
	.incbin "assets/data_080FEEB8/gUnk_08100358_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100388:: @ 08100388
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100388_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100388_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_08100388_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_081003DC:: @ 081003DC
	.incbin "assets/data_080FEEB8/gUnk_081003DC_USA-JP-DEMO_USA-DEMO_JP.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081003DC_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081003DC_2_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_081003DC_3_USA-DEMO_USA.bin"
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081003DC_4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081003DC_5_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_081003DC_6_USA-DEMO_USA.bin"
.endif
.endif

gUnk_08100424:: @ 08100424
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100424_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100424_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_08100424_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_0810046C:: @ 0810046C
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_0810046C_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_0810046C_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_0810046C_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_081004B4:: @ 081004B4
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004B4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004B4_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_081004B4_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_081004CC:: @ 081004CC
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004CC_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004CC_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_081004CC_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_081004F0:: @ 081004F0
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004F0_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004F0_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_081004F0_2_USA-DEMO_USA.bin"
.endif
.endif

	.incbin "assets/data_080FEEB8/gUnk_081004F0_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004F0_4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004F0_5_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_081004F0_6_USA-DEMO_USA.bin"
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004F0_7_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_081004F0_8_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_081004F0_9_USA-DEMO_USA.bin"
.endif
.endif

	.incbin "assets/data_080FEEB8/gUnk_081004F0_10_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100514:: @ 08100514
	.incbin "assets/data_080FEEB8/gUnk_08100514_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100550:: @ 08100550
	.incbin "assets/data_080FEEB8/gUnk_08100550_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100580:: @ 08100580
	.incbin "assets/data_080FEEB8/gUnk_08100580_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081005B0:: @ 081005B0
	.incbin "assets/data_080FEEB8/gUnk_081005B0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081005E0:: @ 081005E0
	.incbin "assets/data_080FEEB8/gUnk_081005E0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100610:: @ 08100610
	.incbin "assets/data_080FEEB8/gUnk_08100610_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100640:: @ 08100640
	.incbin "assets/data_080FEEB8/gUnk_08100640_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100670:: @ 08100670
	.incbin "assets/data_080FEEB8/gUnk_08100670_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081006A0:: @ 081006A0
	.incbin "assets/data_080FEEB8/gUnk_081006A0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081006D0:: @ 081006D0
	.incbin "assets/data_080FEEB8/gUnk_081006D0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100700:: @ 08100700
	.incbin "assets/data_080FEEB8/gUnk_08100700_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100730:: @ 08100730
	.incbin "assets/data_080FEEB8/gUnk_08100730_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100760:: @ 08100760
	.incbin "assets/data_080FEEB8/gUnk_08100760_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100790:: @ 08100790
	.incbin "assets/data_080FEEB8/gUnk_08100790_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081007C0:: @ 081007C0
	.incbin "assets/data_080FEEB8/gUnk_081007C0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081007F0:: @ 081007F0
	.incbin "assets/data_080FEEB8/gUnk_081007F0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100820:: @ 08100820
	.incbin "assets/data_080FEEB8/gUnk_08100820_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100850:: @ 08100850
	.incbin "assets/data_080FEEB8/gUnk_08100850_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100880:: @ 08100880
	.incbin "assets/data_080FEEB8/gUnk_08100880_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081008B0:: @ 081008B0
	.incbin "assets/data_080FEEB8/gUnk_081008B0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081008E0:: @ 081008E0
	.incbin "assets/data_080FEEB8/gUnk_081008E0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100910:: @ 08100910
	.incbin "assets/data_080FEEB8/gUnk_08100910_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100940:: @ 08100940
	.incbin "assets/data_080FEEB8/gUnk_08100940_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100970:: @ 08100970
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100970_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100970_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_08100970_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_081009AC:: @ 081009AC
	.incbin "assets/data_080FEEB8/gUnk_081009AC_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081009B8:: @ 081009B8
	.incbin "assets/data_080FEEB8/gUnk_081009B8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081009C4:: @ 081009C4
	.incbin "assets/data_080FEEB8/gUnk_081009C4_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081009D0:: @ 081009D0
	.incbin "assets/data_080FEEB8/gUnk_081009D0_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081009DC:: @ 081009DC
	.incbin "assets/data_080FEEB8/gUnk_081009DC_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081009E8:: @ 081009E8
	.incbin "assets/data_080FEEB8/gUnk_081009E8_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_081009F4:: @ 081009F4
	.incbin "assets/data_080FEEB8/gUnk_081009F4_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100A00:: @ 08100A00
	.incbin "assets/data_080FEEB8/gUnk_08100A00_USA-JP-DEMO_USA-DEMO_JP.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100A00_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100A00_2_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_08100A00_3_USA-DEMO_USA.bin"
.endif
.endif

gUnk_08100A30:: @ 08100A30
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100A30_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FEEB8/gUnk_08100A30_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080FEEB8/gUnk_08100A30_2_USA-DEMO_USA.bin"
.endif
.endif

gUnk_08100A84:: @ 08100A84
	.incbin "assets/data_080FEEB8/gUnk_08100A84_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100A90:: @ 08100A90
	.incbin "assets/data_080FEEB8/gUnk_08100A90_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100A9C:: @ 08100A9C
	.incbin "assets/data_080FEEB8/gUnk_08100A9C_USA-JP-DEMO_USA-DEMO_JP.bin"

gUnk_08100AA8:: @ 08100AA8
	.4byte 00000000
	.4byte gUnk_080FFB90
	.4byte gUnk_080FFBA8
	.4byte gUnk_080FFBF0
	.4byte gUnk_080FFC14
	.4byte gUnk_080FFC38
	.4byte gUnk_080FFC68
	.4byte gUnk_080FFC80
	.4byte gUnk_080FFC8C
	.4byte gUnk_080FFCEC
	.4byte gUnk_080FFD04
.ifdef JP
	.4byte gUnk_080FF9D8
.else
.ifdef DEMO_JP
	.4byte gUnk_080FF9D8
.else
	.4byte gUnk_080FFD1C 
.endif
.endif
	.4byte gUnk_080FFC98
	.4byte gUnk_080FFCB0
	.4byte gUnk_080FFCC8
	.4byte gUnk_080FFCD4
	.4byte gUnk_080FFD28
	.4byte gUnk_080FFFC8
	.4byte gUnk_080FFFE0
	.4byte gUnk_080FFFEC
	.4byte gUnk_08100028
	.4byte gUnk_08100034
	.4byte gUnk_080FFF98
	.4byte gUnk_080FFD40
	.4byte gUnk_080FFD4C
	.4byte gUnk_080FFD58
	.4byte gUnk_080FFD64
	.4byte gUnk_080FFD70
	.4byte gUnk_080FFD7C
	.4byte gUnk_080FFD88
	.4byte gUnk_080FFE30
	.4byte gUnk_080FFEE4
	.4byte gUnk_080FFEA8
	.4byte gUnk_080FFE6C
	.4byte gUnk_080FFF5C
	.4byte gUnk_080FFF20
	.4byte gUnk_080FFD94
	.4byte gUnk_080FFDAC
	.4byte gUnk_080FFDC4
	.4byte gUnk_080FFDD0
	.4byte gUnk_080FFDE8
	.4byte gUnk_080FFE00
	.4byte gUnk_080FFE18
	.4byte gUnk_080FFFF8
	.4byte gUnk_08100004
	.4byte gUnk_08100010
	.4byte gUnk_0810001C
	.4byte gUnk_08100040
	.4byte gUnk_0810004C
	.4byte gUnk_08100058
	.4byte gUnk_08100064
	.4byte gUnk_08100070
	.4byte gUnk_0810007C
	.4byte gUnk_08100088
	.4byte gUnk_08100118
	.4byte gUnk_08100130
	.4byte gUnk_08100148
	.4byte gUnk_08100160
	.4byte gUnk_08100178
	.4byte gUnk_08100190
	.4byte gUnk_081001A8
	.4byte gUnk_081001C0
	.4byte gUnk_081001D8
	.4byte gUnk_081001F0
	.4byte gUnk_08100208
	.4byte gUnk_08100220
	.4byte gUnk_08100238
	.4byte gUnk_08100250
	.4byte gUnk_08100268
	.4byte gUnk_08100280
	.4byte gUnk_08100298
	.4byte gUnk_081002B0
	.4byte gUnk_081002C8
	.4byte gUnk_081002E0
	.4byte gUnk_081002EC
	.4byte gUnk_08100094
	.4byte gUnk_081000A0
	.4byte gUnk_081000AC
	.4byte gUnk_081000B8
	.4byte gUnk_081000C4
	.4byte gUnk_081000D0
	.4byte gUnk_081000DC
	.4byte gUnk_081000E8
	.4byte gUnk_081000F4
	.4byte gUnk_08100100
	.4byte gUnk_0810010C
	.4byte gUnk_081002F8
	.4byte gUnk_08100328
	.4byte gUnk_08100358
	.4byte gUnk_08100388
	.4byte gUnk_081003DC
	.4byte gUnk_08100424
	.4byte gUnk_0810046C
	.4byte gUnk_08100514
	.4byte gUnk_08100550
	.4byte gUnk_08100580
	.4byte gUnk_081005B0
	.4byte gUnk_081005E0
	.4byte gUnk_08100610
	.4byte gUnk_08100640
	.4byte gUnk_08100670
	.4byte gUnk_081006A0
	.4byte gUnk_081006D0
	.4byte gUnk_08100700
	.4byte gUnk_08100730
	.4byte gUnk_08100790
	.4byte gUnk_081007C0
	.4byte gUnk_08100820
	.4byte gUnk_08100850
	.4byte gUnk_081008E0
	.4byte gUnk_08100910
	.4byte gUnk_08100940
	.4byte gUnk_08100760
	.4byte gUnk_081007F0
	.4byte gUnk_081008E0
	.4byte gUnk_081008B0
	.4byte gUnk_08100880
	.4byte gUnk_08100970
	.4byte gUnk_081009AC
	.4byte gUnk_081009B8
	.4byte gUnk_081009C4
	.4byte gUnk_081009D0
	.4byte gUnk_081009DC
	.4byte gUnk_081009E8
	.4byte gUnk_081009F4
	.4byte gUnk_08100A00
	.4byte gUnk_08100A30
	.4byte gUnk_081004CC
	.4byte gUnk_081004F0
	.4byte gUnk_081004B4
	.4byte gUnk_08100A84
	.4byte gUnk_08100A90
	.4byte gUnk_08100A9C
.endif
