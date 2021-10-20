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
	.4byte script_0800C350
	.incbin "data_080FEEB8/gUnk_080FEED4_1.bin"
	.4byte script_0800C3CC
	.incbin "data_080FEEB8/gUnk_080FEED4_2.bin"
	.4byte script_0800C410
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
	.4byte script_0800BC50
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
	.4byte script_0800BCE8
	.incbin "data_080FEEB8/gUnk_080FEF78_1.bin"
	.4byte script_0800BD78
	.incbin "data_080FEEB8/gUnk_080FEF78_2.bin"

gUnk_080FEFA8:: @ 080FEFA8
	.incbin "data_080FEEB8/gUnk_080FEFA8.bin"
	.4byte script_0800BE1C
	.incbin "data_080FEEB8/gUnk_080FEFA8_1.bin"
	.4byte script_0800BE54
	.incbin "data_080FEEB8/gUnk_080FEFA8_2.bin"
	.4byte script_0800BECC
	.incbin "data_080FEEB8/gUnk_080FEFA8_3.bin"

gUnk_080FEFE8:: @ 080FEFE8
	.incbin "data_080FEEB8/gUnk_080FEFE8.bin"
	.4byte script_0800BF38
	.incbin "data_080FEEB8/gUnk_080FEFE8_1.bin"
	.4byte script_0800BF70
	.incbin "data_080FEEB8/gUnk_080FEFE8_2.bin"
	.4byte script_0800BF70
	.incbin "data_080FEEB8/gUnk_080FEFE8_3.bin"
	.4byte script_0800C004
	.incbin "data_080FEEB8/gUnk_080FEFE8_4.bin"

gUnk_080FF038:: @ 080FF038
	.incbin "data_080FEEB8/gUnk_080FF038.bin"
	.4byte script_0800C0B0
	.incbin "data_080FEEB8/gUnk_080FF038_1.bin"
	.4byte script_0800C0E8
	.incbin "data_080FEEB8/gUnk_080FF038_2.bin"
	.4byte script_0800C0E8
	.incbin "data_080FEEB8/gUnk_080FF038_3.bin"
	.4byte script_0800C0E8
	.incbin "data_080FEEB8/gUnk_080FF038_4.bin"
	.4byte script_0800C160
	.incbin "data_080FEEB8/gUnk_080FF038_5.bin"

gUnk_080FF098:: @ 080FF098
	.incbin "data_080FEEB8/gUnk_080FF098.bin"
	.4byte script_0800C1D8
	.incbin "data_080FEEB8/gUnk_080FF098_1.bin"
	.4byte script_0800C210
	.incbin "data_080FEEB8/gUnk_080FF098_2.bin"
	.4byte script_0800C210
	.incbin "data_080FEEB8/gUnk_080FF098_3.bin"
	.4byte script_0800C210
	.incbin "data_080FEEB8/gUnk_080FF098_4.bin"
	.4byte script_0800C210
	.incbin "data_080FEEB8/gUnk_080FF098_5.bin"
	.4byte script_0800C2A4
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
	.4byte script_0800BB64
	.incbin "data_080FEEB8/gUnk_080FF128_1.bin"

gUnk_080FF148:: @ 080FF148
	.4byte sub_08055054
	.4byte sub_0805508C
	.4byte sub_08055090

gUnk_080FF154:: @ 080FF154
	.incbin "data_080FEEB8/gUnk_080FF154.bin"
	.4byte script_0800BACC
	.incbin "data_080FEEB8/gUnk_080FF154_1.bin"

gUnk_080FF174:: @ 080FF174
	.4byte sub_080550B0
	.4byte nullsub_487

gUnk_080FF17C:: @ 080FF17C
	.incbin "data_080FEEB8/gUnk_080FF17C.bin"
	.4byte script_0800BC08
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
	.4byte script_0800BBDC
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
	.4byte script_0800BA78
	.incbin "data_080FEEB8/gUnk_080FF2C0_1.bin"

gUnk_080FF300:: @ 080FF300
	.4byte sub_08055834
	.4byte nullsub_491

gUnk_080FF308:: @ 080FF308
	.incbin "data_080FEEB8/gUnk_080FF308.bin"
	.4byte script_0800BB00
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
	.4byte script_0800C45C
	.incbin "data_080FEEB8/gUnk_080FF378_1.bin"
	.4byte script_0800C494
	.incbin "data_080FEEB8/gUnk_080FF378_2.bin"
	.4byte script_0800C4D0
	.incbin "data_080FEEB8/gUnk_080FF378_3.bin"
	.4byte script_0800C50C
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
	.4byte script_0800BBA4
	.incbin "data_080FEEB8/gUnk_080FF400_1.bin"

gUnk_080FF420:: @ 080FF420
	.4byte sub_08055E24
	.4byte nullsub_493

	.include "palettes/paletteGroups.s"

@ gUnk_080FF428:: @ 080FF428
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF428_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF428_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF430:: @ 080FF430
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF430_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF430_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF438:: @ 080FF438
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF438_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF438_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF444:: @ 080FF444
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF444_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF444_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF450:: @ 080FF450
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF450_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF450_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF454:: @ 080FF454
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF454_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF454_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF458:: @ 080FF458
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF458_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF458_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF45C:: @ 080FF45C
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF45C_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF45C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF460:: @ 080FF460
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF460_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF460_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF474:: @ 080FF474
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF474_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF474_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF484:: @ 080FF484
@ 	.incbin "data_080FEEB8/gUnk_080FF484.bin"

@ gUnk_080FF488:: @ 080FF488
@ 	.incbin "data_080FEEB8/gUnk_080FF488.bin"

@ gUnk_080FF490:: @ 080FF490
@ 	.incbin "data_080FEEB8/gUnk_080FF490.bin"

@ gUnk_080FF494:: @ 080FF494
@ 	.incbin "data_080FEEB8/gUnk_080FF494.bin"

@ gUnk_080FF498:: @ 080FF498
@ 	.incbin "data_080FEEB8/gUnk_080FF498.bin"

@ gUnk_080FF49C:: @ 080FF49C
@ 	.incbin "data_080FEEB8/gUnk_080FF49C.bin"

@ gUnk_080FF4A0:: @ 080FF4A0
@ 	.incbin "data_080FEEB8/gUnk_080FF4A0.bin"

@ gUnk_080FF4A4:: @ 080FF4A4
@ 	.incbin "data_080FEEB8/gUnk_080FF4A4.bin"

@ gUnk_080FF4A8:: @ 080FF4A8
@ 	.incbin "data_080FEEB8/gUnk_080FF4A8.bin"

@ gUnk_080FF4AC:: @ 080FF4AC
@ 	.incbin "data_080FEEB8/gUnk_080FF4AC.bin"

@ gUnk_080FF4B0:: @ 080FF4B0
@ 	.incbin "data_080FEEB8/gUnk_080FF4B0.bin"

@ gUnk_080FF4B4:: @ 080FF4B4
@ 	.incbin "data_080FEEB8/gUnk_080FF4B4.bin"

@ gUnk_080FF4B8:: @ 080FF4B8
@ 	.incbin "data_080FEEB8/gUnk_080FF4B8.bin"

@ gUnk_080FF4BC:: @ 080FF4BC
@ 	.incbin "data_080FEEB8/gUnk_080FF4BC.bin"

@ gUnk_080FF4C0:: @ 080FF4C0
@ 	.incbin "data_080FEEB8/gUnk_080FF4C0.bin"

@ gUnk_080FF4C4:: @ 080FF4C4
@ 	.incbin "data_080FEEB8/gUnk_080FF4C4.bin"

@ gUnk_080FF4C8:: @ 080FF4C8
@ 	.incbin "data_080FEEB8/gUnk_080FF4C8.bin"

@ gUnk_080FF4CC:: @ 080FF4CC
@ 	.incbin "data_080FEEB8/gUnk_080FF4CC.bin"

@ gUnk_080FF4D0:: @ 080FF4D0
@ 	.incbin "data_080FEEB8/gUnk_080FF4D0.bin"

@ gUnk_080FF4D4:: @ 080FF4D4
@ 	.incbin "data_080FEEB8/gUnk_080FF4D4.bin"

@ gUnk_080FF4D8:: @ 080FF4D8
@ 	.incbin "data_080FEEB8/gUnk_080FF4D8.bin"

@ gUnk_080FF4DC:: @ 080FF4DC
@ 	.incbin "data_080FEEB8/gUnk_080FF4DC.bin"

@ gUnk_080FF4E0:: @ 080FF4E0
@ 	.incbin "data_080FEEB8/gUnk_080FF4E0.bin"

@ gUnk_080FF4E4:: @ 080FF4E4
@ 	.incbin "data_080FEEB8/gUnk_080FF4E4.bin"

@ gUnk_080FF4E8:: @ 080FF4E8
@ 	.incbin "data_080FEEB8/gUnk_080FF4E8.bin"

@ gUnk_080FF4EC:: @ 080FF4EC
@ 	.incbin "data_080FEEB8/gUnk_080FF4EC.bin"

@ gUnk_080FF4F0:: @ 080FF4F0
@ 	.incbin "data_080FEEB8/gUnk_080FF4F0.bin"

@ gUnk_080FF4F4:: @ 080FF4F4
@ 	.incbin "data_080FEEB8/gUnk_080FF4F4.bin"

@ gUnk_080FF4F8:: @ 080FF4F8
@ 	.incbin "data_080FEEB8/gUnk_080FF4F8.bin"

@ gUnk_080FF4FC:: @ 080FF4FC
@ 	.incbin "data_080FEEB8/gUnk_080FF4FC.bin"

@ gUnk_080FF500:: @ 080FF500
@ 	.incbin "data_080FEEB8/gUnk_080FF500.bin"

@ gUnk_080FF504:: @ 080FF504
@ 	.incbin "data_080FEEB8/gUnk_080FF504.bin"

@ gUnk_080FF508:: @ 080FF508
@ 	.incbin "data_080FEEB8/gUnk_080FF508.bin"

@ gUnk_080FF50C:: @ 080FF50C
@ 	.incbin "data_080FEEB8/gUnk_080FF50C.bin"

@ gUnk_080FF510:: @ 080FF510
@ 	.incbin "data_080FEEB8/gUnk_080FF510.bin"

@ gUnk_080FF514:: @ 080FF514
@ 	.incbin "data_080FEEB8/gUnk_080FF514.bin"

@ gUnk_080FF518:: @ 080FF518
@ 	.incbin "data_080FEEB8/gUnk_080FF518.bin"

@ gUnk_080FF51C:: @ 080FF51C
@ 	.incbin "data_080FEEB8/gUnk_080FF51C.bin"

@ gUnk_080FF520:: @ 080FF520
@ 	.incbin "data_080FEEB8/gUnk_080FF520.bin"

@ gUnk_080FF524:: @ 080FF524
@ 	.incbin "data_080FEEB8/gUnk_080FF524.bin"

@ gUnk_080FF528:: @ 080FF528
@ 	.incbin "data_080FEEB8/gUnk_080FF528.bin"

@ gUnk_080FF52C:: @ 080FF52C
@ 	.incbin "data_080FEEB8/gUnk_080FF52C.bin"

@ gUnk_080FF530:: @ 080FF530
@ 	.incbin "data_080FEEB8/gUnk_080FF530.bin"

@ gUnk_080FF534:: @ 080FF534
@ 	.incbin "data_080FEEB8/gUnk_080FF534.bin"

@ gUnk_080FF538:: @ 080FF538
@ 	.incbin "data_080FEEB8/gUnk_080FF538.bin"

@ gUnk_080FF53C:: @ 080FF53C
@ 	.incbin "data_080FEEB8/gUnk_080FF53C.bin"

@ gUnk_080FF540:: @ 080FF540
@ 	.incbin "data_080FEEB8/gUnk_080FF540.bin"

@ gUnk_080FF544:: @ 080FF544
@ 	.incbin "data_080FEEB8/gUnk_080FF544.bin"

@ gUnk_080FF548:: @ 080FF548
@ 	.incbin "data_080FEEB8/gUnk_080FF548.bin"

@ gUnk_080FF54C:: @ 080FF54C
@ 	.incbin "data_080FEEB8/gUnk_080FF54C.bin"

@ gUnk_080FF550:: @ 080FF550
@ 	.incbin "data_080FEEB8/gUnk_080FF550.bin"

@ gUnk_080FF554:: @ 080FF554
@ 	.incbin "data_080FEEB8/gUnk_080FF554.bin"

@ gUnk_080FF558:: @ 080FF558
@ 	.incbin "data_080FEEB8/gUnk_080FF558.bin"

@ gUnk_080FF55C:: @ 080FF55C
@ 	.incbin "data_080FEEB8/gUnk_080FF55C.bin"

@ gUnk_080FF560:: @ 080FF560
@ 	.incbin "data_080FEEB8/gUnk_080FF560.bin"

@ gUnk_080FF564:: @ 080FF564
@ 	.incbin "data_080FEEB8/gUnk_080FF564.bin"

@ gUnk_080FF568:: @ 080FF568
@ 	.incbin "data_080FEEB8/gUnk_080FF568.bin"

@ gUnk_080FF56C:: @ 080FF56C
@ 	.incbin "data_080FEEB8/gUnk_080FF56C.bin"

@ gUnk_080FF570:: @ 080FF570
@ 	.incbin "data_080FEEB8/gUnk_080FF570.bin"

@ gUnk_080FF574:: @ 080FF574
@ 	.incbin "data_080FEEB8/gUnk_080FF574.bin"

@ gUnk_080FF578:: @ 080FF578
@ 	.incbin "data_080FEEB8/gUnk_080FF578.bin"

@ gUnk_080FF57C:: @ 080FF57C
@ 	.incbin "data_080FEEB8/gUnk_080FF57C.bin"

@ gUnk_080FF580:: @ 080FF580
@ 	.incbin "data_080FEEB8/gUnk_080FF580.bin"

@ gUnk_080FF584:: @ 080FF584
@ 	.incbin "data_080FEEB8/gUnk_080FF584.bin"

@ gUnk_080FF588:: @ 080FF588
@ 	.incbin "data_080FEEB8/gUnk_080FF588.bin"

@ gUnk_080FF58C:: @ 080FF58C
@ 	.incbin "data_080FEEB8/gUnk_080FF58C.bin"

@ gUnk_080FF590:: @ 080FF590
@ 	.incbin "data_080FEEB8/gUnk_080FF590.bin"

@ gUnk_080FF594:: @ 080FF594
@ 	.incbin "data_080FEEB8/gUnk_080FF594.bin"

@ gUnk_080FF598:: @ 080FF598
@ 	.incbin "data_080FEEB8/gUnk_080FF598.bin"

@ gUnk_080FF59C:: @ 080FF59C
@ 	.incbin "data_080FEEB8/gUnk_080FF59C.bin"

@ gUnk_080FF5A0:: @ 080FF5A0
@ 	.incbin "data_080FEEB8/gUnk_080FF5A0.bin"

@ gUnk_080FF5A4:: @ 080FF5A4
@ 	.incbin "data_080FEEB8/gUnk_080FF5A4.bin"

@ gUnk_080FF5A8:: @ 080FF5A8
@ 	.incbin "data_080FEEB8/gUnk_080FF5A8.bin"

@ gUnk_080FF5AC:: @ 080FF5AC
@ 	.incbin "data_080FEEB8/gUnk_080FF5AC.bin"

@ gUnk_080FF5B0:: @ 080FF5B0
@ 	.incbin "data_080FEEB8/gUnk_080FF5B0.bin"

@ gUnk_080FF5B4:: @ 080FF5B4
@ 	.incbin "data_080FEEB8/gUnk_080FF5B4.bin"

@ gUnk_080FF5B8:: @ 080FF5B8
@ 	.incbin "data_080FEEB8/gUnk_080FF5B8.bin"

@ gUnk_080FF5BC:: @ 080FF5BC
@ 	.incbin "data_080FEEB8/gUnk_080FF5BC.bin"

@ gUnk_080FF5C0:: @ 080FF5C0
@ 	.incbin "data_080FEEB8/gUnk_080FF5C0.bin"

@ gUnk_080FF5C4:: @ 080FF5C4
@ 	.incbin "data_080FEEB8/gUnk_080FF5C4.bin"

@ gUnk_080FF5C8:: @ 080FF5C8
@ 	.incbin "data_080FEEB8/gUnk_080FF5C8.bin"

@ gUnk_080FF5CC:: @ 080FF5CC
@ 	.incbin "data_080FEEB8/gUnk_080FF5CC.bin"

@ gUnk_080FF5D0:: @ 080FF5D0
@ 	.incbin "data_080FEEB8/gUnk_080FF5D0.bin"

@ gUnk_080FF5D4:: @ 080FF5D4
@ 	.incbin "data_080FEEB8/gUnk_080FF5D4.bin"

@ gUnk_080FF5D8:: @ 080FF5D8
@ 	.incbin "data_080FEEB8/gUnk_080FF5D8.bin"

@ gUnk_080FF5DC:: @ 080FF5DC
@ 	.incbin "data_080FEEB8/gUnk_080FF5DC.bin"

@ gUnk_080FF5E0:: @ 080FF5E0
@ 	.incbin "data_080FEEB8/gUnk_080FF5E0.bin"

@ gUnk_080FF5E4:: @ 080FF5E4
@ 	.incbin "data_080FEEB8/gUnk_080FF5E4.bin"

@ gUnk_080FF5E8:: @ 080FF5E8
@ 	.incbin "data_080FEEB8/gUnk_080FF5E8.bin"

@ gUnk_080FF5EC:: @ 080FF5EC
@ 	.incbin "data_080FEEB8/gUnk_080FF5EC.bin"

@ gUnk_080FF5F0:: @ 080FF5F0
@ 	.incbin "data_080FEEB8/gUnk_080FF5F0.bin"

@ gUnk_080FF5F4:: @ 080FF5F4
@ 	.incbin "data_080FEEB8/gUnk_080FF5F4.bin"

@ gUnk_080FF5F8:: @ 080FF5F8
@ 	.incbin "data_080FEEB8/gUnk_080FF5F8.bin"

@ gUnk_080FF5FC:: @ 080FF5FC
@ 	.incbin "data_080FEEB8/gUnk_080FF5FC.bin"

@ gUnk_080FF600:: @ 080FF600
@ 	.incbin "data_080FEEB8/gUnk_080FF600.bin"

@ gUnk_080FF604:: @ 080FF604
@ 	.incbin "data_080FEEB8/gUnk_080FF604.bin"

@ gUnk_080FF608:: @ 080FF608
@ 	.incbin "data_080FEEB8/gUnk_080FF608.bin"

@ gUnk_080FF60C:: @ 080FF60C
@ 	.incbin "data_080FEEB8/gUnk_080FF60C.bin"

@ gUnk_080FF610:: @ 080FF610
@ 	.incbin "data_080FEEB8/gUnk_080FF610.bin"

@ gUnk_080FF614:: @ 080FF614
@ 	.incbin "data_080FEEB8/gUnk_080FF614.bin"

@ gUnk_080FF618:: @ 080FF618
@ 	.incbin "data_080FEEB8/gUnk_080FF618.bin"

@ gUnk_080FF61C:: @ 080FF61C
@ 	.incbin "data_080FEEB8/gUnk_080FF61C.bin"

@ gUnk_080FF620:: @ 080FF620
@ 	.incbin "data_080FEEB8/gUnk_080FF620.bin"

@ gUnk_080FF624:: @ 080FF624
@ 	.incbin "data_080FEEB8/gUnk_080FF624.bin"

@ gUnk_080FF628:: @ 080FF628
@ 	.incbin "data_080FEEB8/gUnk_080FF628.bin"

@ gUnk_080FF62C:: @ 080FF62C
@ 	.incbin "data_080FEEB8/gUnk_080FF62C.bin"

@ gUnk_080FF630:: @ 080FF630
@ 	.incbin "data_080FEEB8/gUnk_080FF630.bin"

@ gUnk_080FF634:: @ 080FF634
@ 	.incbin "data_080FEEB8/gUnk_080FF634.bin"

@ gUnk_080FF638:: @ 080FF638
@ 	.incbin "data_080FEEB8/gUnk_080FF638.bin"

@ gUnk_080FF63C:: @ 080FF63C
@ 	.incbin "data_080FEEB8/gUnk_080FF63C.bin"

@ gUnk_080FF640:: @ 080FF640
@ 	.incbin "data_080FEEB8/gUnk_080FF640.bin"

@ gUnk_080FF644:: @ 080FF644
@ 	.incbin "data_080FEEB8/gUnk_080FF644.bin"

@ gUnk_080FF648:: @ 080FF648
@ 	.incbin "data_080FEEB8/gUnk_080FF648.bin"

@ gUnk_080FF64C:: @ 080FF64C
@ 	.incbin "data_080FEEB8/gUnk_080FF64C.bin"

@ gUnk_080FF650:: @ 080FF650
@ 	.incbin "data_080FEEB8/gUnk_080FF650.bin"

@ gUnk_080FF654:: @ 080FF654
@ 	.incbin "data_080FEEB8/gUnk_080FF654.bin"

@ gUnk_080FF658:: @ 080FF658
@ 	.incbin "data_080FEEB8/gUnk_080FF658.bin"

@ gUnk_080FF65C:: @ 080FF65C
@ 	.incbin "data_080FEEB8/gUnk_080FF65C.bin"

@ gUnk_080FF660:: @ 080FF660
@ 	.incbin "data_080FEEB8/gUnk_080FF660.bin"

@ gUnk_080FF664:: @ 080FF664
@ 	.incbin "data_080FEEB8/gUnk_080FF664.bin"

@ gUnk_080FF668:: @ 080FF668
@ 	.incbin "data_080FEEB8/gUnk_080FF668.bin"

@ gUnk_080FF66C:: @ 080FF66C
@ 	.incbin "data_080FEEB8/gUnk_080FF66C.bin"

@ gUnk_080FF670:: @ 080FF670
@ 	.incbin "data_080FEEB8/gUnk_080FF670.bin"

@ gUnk_080FF674:: @ 080FF674
@ 	.incbin "data_080FEEB8/gUnk_080FF674.bin"

@ gUnk_080FF678:: @ 080FF678
@ 	.incbin "data_080FEEB8/gUnk_080FF678.bin"

@ gUnk_080FF67C:: @ 080FF67C
@ 	.incbin "data_080FEEB8/gUnk_080FF67C.bin"

@ gUnk_080FF680:: @ 080FF680
@ 	.incbin "data_080FEEB8/gUnk_080FF680.bin"

@ gUnk_080FF684:: @ 080FF684
@ 	.incbin "data_080FEEB8/gUnk_080FF684.bin"

@ gUnk_080FF688:: @ 080FF688
@ 	.incbin "data_080FEEB8/gUnk_080FF688.bin"

@ gUnk_080FF68C:: @ 080FF68C
@ 	.incbin "data_080FEEB8/gUnk_080FF68C.bin"

@ gUnk_080FF690:: @ 080FF690
@ 	.incbin "data_080FEEB8/gUnk_080FF690.bin"

@ gUnk_080FF694:: @ 080FF694
@ 	.incbin "data_080FEEB8/gUnk_080FF694.bin"

@ gUnk_080FF698:: @ 080FF698
@ 	.incbin "data_080FEEB8/gUnk_080FF698.bin"

@ gUnk_080FF69C:: @ 080FF69C
@ 	.incbin "data_080FEEB8/gUnk_080FF69C.bin"

@ gUnk_080FF6A0:: @ 080FF6A0
@ 	.incbin "data_080FEEB8/gUnk_080FF6A0.bin"

@ gUnk_080FF6A4:: @ 080FF6A4
@ 	.incbin "data_080FEEB8/gUnk_080FF6A4.bin"

@ gUnk_080FF6A8:: @ 080FF6A8
@ 	.incbin "data_080FEEB8/gUnk_080FF6A8.bin"

@ gUnk_080FF6AC:: @ 080FF6AC
@ 	.incbin "data_080FEEB8/gUnk_080FF6AC.bin"

@ gUnk_080FF6B0:: @ 080FF6B0
@ 	.incbin "data_080FEEB8/gUnk_080FF6B0.bin"

@ gUnk_080FF6B4:: @ 080FF6B4
@ 	.incbin "data_080FEEB8/gUnk_080FF6B4.bin"

@ gUnk_080FF6B8:: @ 080FF6B8
@ 	.incbin "data_080FEEB8/gUnk_080FF6B8.bin"

@ gUnk_080FF6BC:: @ 080FF6BC
@ 	.incbin "data_080FEEB8/gUnk_080FF6BC.bin"

@ gUnk_080FF6C0:: @ 080FF6C0
@ 	.incbin "data_080FEEB8/gUnk_080FF6C0.bin"

@ gUnk_080FF6C4:: @ 080FF6C4
@ 	.incbin "data_080FEEB8/gUnk_080FF6C4.bin"

@ gUnk_080FF6C8:: @ 080FF6C8
@ 	.incbin "data_080FEEB8/gUnk_080FF6C8.bin"

@ gUnk_080FF6CC:: @ 080FF6CC
@ 	.incbin "data_080FEEB8/gUnk_080FF6CC.bin"

@ gUnk_080FF6D0:: @ 080FF6D0
@ 	.incbin "data_080FEEB8/gUnk_080FF6D0.bin"

@ gUnk_080FF6D4:: @ 080FF6D4
@ 	.incbin "data_080FEEB8/gUnk_080FF6D4.bin"

@ gUnk_080FF6D8:: @ 080FF6D8
@ 	.incbin "data_080FEEB8/gUnk_080FF6D8.bin"

@ gUnk_080FF6DC:: @ 080FF6DC
@ 	.incbin "data_080FEEB8/gUnk_080FF6DC.bin"

@ gUnk_080FF6E0:: @ 080FF6E0
@ 	.incbin "data_080FEEB8/gUnk_080FF6E0.bin"

@ gUnk_080FF6E4:: @ 080FF6E4
@ 	.incbin "data_080FEEB8/gUnk_080FF6E4.bin"

@ gUnk_080FF6E8:: @ 080FF6E8
@ 	.incbin "data_080FEEB8/gUnk_080FF6E8.bin"

@ gUnk_080FF6EC:: @ 080FF6EC
@ 	.incbin "data_080FEEB8/gUnk_080FF6EC.bin"

@ gUnk_080FF6F0:: @ 080FF6F0
@ 	.incbin "data_080FEEB8/gUnk_080FF6F0.bin"

@ gUnk_080FF6F4:: @ 080FF6F4
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF6F4_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF6F4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF6F8:: @ 080FF6F8
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF6F8_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF6F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF6FC:: @ 080FF6FC
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF6FC_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF6FC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF700:: @ 080FF700
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF700_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF700_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF704:: @ 080FF704
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF704_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF704_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF708:: @ 080FF708
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF708_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF708_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF70C:: @ 080FF70C
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF70C_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF70C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF710:: @ 080FF710
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF710_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF710_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF714:: @ 080FF714
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF714_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF714_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF718:: @ 080FF718
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF718_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF718_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF71C:: @ 080FF71C
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF71C_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF71C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF720:: @ 080FF720
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF720_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF720_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF724:: @ 080FF724
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF724_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF724_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF728:: @ 080FF728
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF728_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF728_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF72C:: @ 080FF72C
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF72C_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF72C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif


@ gUnk_080FF730:: @ 080FF730
@ 	.incbin "data_080FEEB8/gUnk_080FF730.bin"

@ gUnk_080FF73C:: @ 080FF73C
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF73C_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF73C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF744:: @ 080FF744
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF744_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF744_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF750:: @ 080FF750
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF750_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF750_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF75C:: @ 080FF75C
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF75C_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF75C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF770:: @ 080FF770
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF770_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF770_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF778:: @ 080FF778
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF778_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF778_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF780:: @ 080FF780
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF780_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF780_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF788:: @ 080FF788
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF788_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF788_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF790:: @ 080FF790
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF790_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF790_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF798:: @ 080FF798
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF798_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF798_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7A0:: @ 080FF7A0
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7A0_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7A8:: @ 080FF7A8
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7A8_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7B0:: @ 080FF7B0
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7B0_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7B8:: @ 080FF7B8
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7B8_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7C0:: @ 080FF7C0
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7C0_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7C8:: @ 080FF7C8
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7C8_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7D0:: @ 080FF7D0
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7D0_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7D8:: @ 080FF7D8
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7D8_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7E0:: @ 080FF7E0
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7E0_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7E8:: @ 080FF7E8
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7E8_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7F0:: @ 080FF7F0
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7F0_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF7F8:: @ 080FF7F8
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF7F8_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF7F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF808:: @ 080FF808
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF808_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF808_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF814:: @ 080FF814
@ 	.incbin "data_080FEEB8/gUnk_080FF814.bin"

@ gUnk_080FF83C:: @ 080FF83C
@ .ifdef EU
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gUnk_080FF83C_EU.bin"
@ .else
@ 	.incbin "data_080FEEB8/gUnk_080FF83C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gUnk_080FF844:: @ 080FF844
@ .ifndef EU
@ 	.incbin "data_080FEEB8/gUnk_080FF844_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .endif

@ gPaletteGroups:: @ 080FF850
@ 	.4byte 00000000
@ 	.4byte gUnk_080FF428
@ 	.4byte gUnk_080FF430
@ 	.4byte gUnk_080FF438
@ 	.4byte gUnk_080FF444
@ 	.4byte gUnk_080FF450
@ 	.4byte gUnk_080FF454
@ 	.4byte gUnk_080FF458
@ 	.4byte gUnk_080FF45C
@ 	.4byte gUnk_080FF460
@ 	.4byte gUnk_080FF474
@ 	.4byte gUnk_080FF488
@ 	.4byte gUnk_080FF484
@ 	.4byte gUnk_080FF5C8
@ 	.4byte gUnk_080FF4A0
@ 	.4byte gUnk_080FF4DC
@ 	.4byte gUnk_080FF560
@ 	.4byte gUnk_080FF4E4
@ 	.4byte gUnk_080FF4C4
@ 	.4byte gUnk_080FF570
@ 	.4byte gUnk_080FF49C
@ 	.4byte gUnk_080FF498
@ 	.4byte gUnk_080FF4A4
@ 	.4byte gUnk_080FF4A8
@ 	.4byte gUnk_080FF4AC
@ 	.4byte gUnk_080FF4B0
@ 	.4byte gUnk_080FF4E8
@ 	.4byte gUnk_080FF4B8
@ 	.4byte gUnk_080FF490
@ 	.4byte gUnk_080FF574
@ 	.4byte gUnk_080FF578
@ 	.4byte gUnk_080FF590
@ 	.4byte gUnk_080FF594
@ 	.4byte gUnk_080FF57C
@ 	.4byte gUnk_080FF5E4
@ 	.4byte gUnk_080FF5F8
@ 	.4byte gUnk_080FF4F0
@ 	.4byte gUnk_080FF4F4
@ 	.4byte gUnk_080FF598
@ 	.4byte gUnk_080FF494
@ 	.4byte gUnk_080FF6C4
@ 	.4byte gUnk_080FF59C
@ 	.4byte gUnk_080FF6C8
@ 	.4byte gUnk_080FF6CC
@ 	.4byte gUnk_080FF58C
@ 	.4byte gUnk_080FF5CC
@ 	.4byte gUnk_080FF564
@ 	.4byte gUnk_080FF6D0
@ 	.4byte gUnk_080FF6D4
@ 	.4byte gUnk_080FF6D8
@ 	.4byte gUnk_080FF6DC
@ 	.4byte gUnk_080FF5B0
@ 	.4byte gUnk_080FF5B4
@ 	.4byte gUnk_080FF5C4
@ 	.4byte gUnk_080FF4C0
@ 	.4byte gUnk_080FF500
@ 	.4byte gUnk_080FF510
@ 	.4byte gUnk_080FF518
@ 	.4byte gUnk_080FF51C
@ 	.4byte gUnk_080FF524
@ 	.4byte gUnk_080FF50C
@ 	.4byte gUnk_080FF4B4
@ 	.4byte gUnk_080FF5A0
@ 	.4byte gUnk_080FF4C8
@ 	.4byte gUnk_080FF4CC
@ 	.4byte gUnk_080FF4D0
@ 	.4byte gUnk_080FF4D4
@ 	.4byte gUnk_080FF568
@ 	.4byte gUnk_080FF650
@ 	.4byte gUnk_080FF654
@ 	.4byte gUnk_080FF658
@ 	.4byte gUnk_080FF65C
@ 	.4byte gUnk_080FF660
@ 	.4byte gUnk_080FF664
@ 	.4byte gUnk_080FF668
@ 	.4byte gUnk_080FF66C
@ 	.4byte gUnk_080FF670
@ 	.4byte gUnk_080FF680
@ 	.4byte gUnk_080FF684
@ 	.4byte gUnk_080FF688
@ 	.4byte gUnk_080FF68C
@ 	.4byte gUnk_080FF690
@ 	.4byte gUnk_080FF694
@ 	.4byte gUnk_080FF698
@ 	.4byte gUnk_080FF69C
@ 	.4byte gUnk_080FF56C
@ 	.4byte gUnk_080FF674
@ 	.4byte gUnk_080FF678
@ 	.4byte gUnk_080FF67C
@ 	.4byte gUnk_080FF5B8
@ 	.4byte gUnk_080FF4EC
@ 	.4byte gUnk_080FF6E0
@ 	.4byte gUnk_080FF5A4
@ 	.4byte gUnk_080FF4D8
@ 	.4byte gUnk_080FF4FC
@ 	.4byte gUnk_080FF640
@ 	.4byte gUnk_080FF644
@ 	.4byte gUnk_080FF648
@ 	.4byte gUnk_080FF64C
@ 	.4byte gUnk_080FF580
@ 	.4byte gUnk_080FF584
@ 	.4byte gUnk_080FF5FC
@ 	.4byte gUnk_080FF5A8
@ 	.4byte gUnk_080FF5AC
@ 	.4byte gUnk_080FF504
@ 	.4byte gUnk_080FF53C
@ 	.4byte gUnk_080FF540
@ 	.4byte gUnk_080FF544
@ 	.4byte gUnk_080FF548
@ 	.4byte gUnk_080FF4E0
@ 	.4byte gUnk_080FF600
@ 	.4byte gUnk_080FF630
@ 	.4byte gUnk_080FF634
@ 	.4byte gUnk_080FF638
@ 	.4byte gUnk_080FF63C
@ 	.4byte gUnk_080FF6A0
@ 	.4byte gUnk_080FF6A4
@ 	.4byte gUnk_080FF6A8
@ 	.4byte gUnk_080FF6AC
@ 	.4byte gUnk_080FF6B0
@ 	.4byte gUnk_080FF54C
@ 	.4byte gUnk_080FF604
@ 	.4byte gUnk_080FF6C0
@ 	.4byte gUnk_080FF6BC
@ 	.4byte gUnk_080FF6B8
@ 	.4byte gUnk_080FF608
@ 	.4byte gUnk_080FF60C
@ 	.4byte gUnk_080FF610
@ 	.4byte gUnk_080FF4F8
@ 	.4byte gUnk_080FF6B4
@ 	.4byte gUnk_080FF508
@ 	.4byte gUnk_080FF614
@ 	.4byte gUnk_080FF618
@ 	.4byte gUnk_080FF61C
@ 	.4byte gUnk_080FF6E4
@ 	.4byte gUnk_080FF6E8
@ 	.4byte gUnk_080FF6EC
@ 	.4byte gUnk_080FF6F0
@ 	.4byte gUnk_080FF6F4
@ 	.4byte gUnk_080FF6F8
@ 	.4byte gUnk_080FF6FC
@ 	.4byte gUnk_080FF700
@ 	.4byte gUnk_080FF704
@ 	.4byte gUnk_080FF708
@ 	.4byte gUnk_080FF528
@ 	.4byte gUnk_080FF520
@ 	.4byte gUnk_080FF5D0
@ 	.4byte gUnk_080FF5D4
@ 	.4byte gUnk_080FF5D8
@ 	.4byte gUnk_080FF5DC
@ 	.4byte gUnk_080FF5E0
@ 	.4byte gUnk_080FF5E8
@ 	.4byte gUnk_080FF5EC
@ 	.4byte gUnk_080FF5F0
@ 	.4byte gUnk_080FF5F4
@ 	.4byte gUnk_080FF530
@ 	.4byte gUnk_080FF534
@ 	.4byte gUnk_080FF5BC
@ 	.4byte gUnk_080FF620
@ 	.4byte gUnk_080FF624
@ 	.4byte gUnk_080FF628
@ 	.4byte gUnk_080FF62C
@ 	.4byte gUnk_080FF514
@ 	.4byte gUnk_080FF550
@ 	.4byte gUnk_080FF554
@ 	.4byte gUnk_080FF558
@ 	.4byte gUnk_080FF55C
@ 	.4byte gUnk_080FF588
@ 	.4byte gUnk_080FF5C0
@ 	.4byte gUnk_080FF538
@ 	.4byte gUnk_080FF4BC
@ 	.4byte gUnk_080FF70C
@ 	.4byte gUnk_080FF710
@ 	.4byte gUnk_080FF714
@ 	.4byte gUnk_080FF718
@ 	.4byte gUnk_080FF71C
@ 	.4byte gUnk_080FF720
@ 	.4byte gUnk_080FF724
@ 	.4byte gUnk_080FF728
@ 	.4byte gUnk_080FF72C
@ 	.4byte gUnk_080FF52C
@ 	.4byte gUnk_080FF730
@ 	.4byte gUnk_080FF73C
@ 	.4byte gUnk_080FF744
@ 	.4byte gUnk_080FF750
@ 	.4byte gUnk_080FF75C
@ 	.4byte gUnk_080FF770
@ 	.4byte gUnk_080FF778
@ 	.4byte gUnk_080FF780
@ 	.4byte gUnk_080FF788
@ 	.4byte gUnk_080FF790
@ 	.4byte gUnk_080FF798
@ 	.4byte gUnk_080FF7A0
@ 	.4byte gUnk_080FF7A8
@ 	.4byte gUnk_080FF7B0
@ 	.4byte gUnk_080FF7B8
@ 	.4byte gUnk_080FF7C0
@ 	.4byte gUnk_080FF7C8
@ 	.4byte gUnk_080FF7D0
@ 	.4byte gUnk_080FF7D8
@ 	.4byte gUnk_080FF7E0
@ 	.4byte gUnk_080FF7E8
@ 	.4byte gUnk_080FF7F0
@ 	.4byte gUnk_080FF7F8
@ 	.4byte gUnk_080FF808
@ 	.4byte gUnk_080FF814
@ 	.4byte gUnk_080FF83C
@ .ifndef EU
@ 	.4byte gUnk_080FF844
@ .endif



	.include "gfx/gfxGroups.s"
@ TODO EU seems to be a lot different

@ .ifdef EU

@ gUnk_EU_080FF0C4:: @ 080FF0C4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF0C4_EU.bin"

@ gUnk_EU_080FF0DC:: @ 080FF0DC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF0DC_EU.bin"

@ gUnk_EU_080FF124:: @ 080FF124
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF124_EU.bin"

@ gUnk_EU_080FF178:: @ 080FF178
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF178_EU.bin"

@ gUnk_EU_080FF19C:: @ 080FF19C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF19C_EU.bin"

@ gUnk_EU_080FF1CC:: @ 080FF1CC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF1CC_EU.bin"

@ gUnk_EU_080FF214:: @ 080FF214
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF214_EU.bin"

@ gUnk_EU_080FF220:: @ 080FF220
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF220_EU.bin"

@ gUnk_EU_080FF22C:: @ 080FF22C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF22C_EU.bin"

@ gUnk_EU_080FF244:: @ 080FF244
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF244_EU.bin"

@ gUnk_EU_080FF25C:: @ 080FF25C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF25C_EU.bin"

@ gUnk_EU_080FF268:: @ 080FF268
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF268_EU.bin"

@ gUnk_EU_080FF2B0:: @ 080FF2B0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF2B0_EU.bin"

@ gUnk_EU_080FF2C8:: @ 080FF2C8
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF2C8_EU.bin"

@ gUnk_EU_080FF2E0:: @ 080FF2E0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF2E0_EU.bin"

@ gUnk_EU_080FF2EC:: @ 080FF2EC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF2EC_EU.bin"

@ gUnk_EU_080FF304:: @ 080FF304
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF304_EU.bin"

@ gUnk_EU_080FF310:: @ 080FF310
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF310_EU.bin"

@ gUnk_EU_080FF31C:: @ 080FF31C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF31C_EU.bin"

@ gUnk_EU_080FF328:: @ 080FF328
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF328_EU.bin"

@ gUnk_EU_080FF334:: @ 080FF334
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF334_EU.bin"

@ gUnk_EU_080FF340:: @ 080FF340
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF340_EU.bin"

@ gUnk_EU_080FF34C:: @ 080FF34C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF34C_EU.bin"

@ gUnk_EU_080FF358:: @ 080FF358
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF358_EU.bin"

@ gUnk_EU_080FF370:: @ 080FF370
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF370_EU.bin"

@ gUnk_EU_080FF388:: @ 080FF388
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF388_EU.bin"

@ gUnk_EU_080FF394:: @ 080FF394
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF394_EU.bin"

@ gUnk_EU_080FF3AC:: @ 080FF3AC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF3AC_EU.bin"

@ gUnk_EU_080FF3C4:: @ 080FF3C4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF3C4_EU.bin"

@ gUnk_EU_080FF3DC:: @ 080FF3DC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF3DC_EU.bin"

@ gUnk_EU_080FF3F4:: @ 080FF3F4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF3F4_EU.bin"

@ gUnk_EU_080FF430:: @ 080FF430
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF430_EU.bin"

@ gUnk_EU_080FF46C:: @ 080FF46C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF46C_EU.bin"

@ gUnk_EU_080FF4A8:: @ 080FF4A8
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF4A8_EU.bin"

@ gUnk_EU_080FF4E4:: @ 080FF4E4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF4E4_EU.bin"

@ gUnk_EU_080FF520:: @ 080FF520
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF520_EU.bin"

@ gUnk_EU_080FF55C:: @ 080FF55C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF55C_EU.bin"

@ gUnk_EU_080FF58C:: @ 080FF58C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF58C_EU.bin"

@ gUnk_EU_080FF5A4:: @ 080FF5A4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF5A4_EU.bin"

@ gUnk_EU_080FF5B0:: @ 080FF5B0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF5B0_EU.bin"

@ gUnk_EU_080FF5BC:: @ 080FF5BC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF5BC_EU.bin"

@ gUnk_EU_080FF5C8:: @ 080FF5C8
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF5C8_EU.bin"

@ gUnk_EU_080FF5D4:: @ 080FF5D4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF5D4_EU.bin"

@ gUnk_EU_080FF5E0:: @ 080FF5E0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF5E0_EU.bin"

@ gUnk_EU_080FF5EC:: @ 080FF5EC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF5EC_EU.bin"

@ gUnk_EU_080FF5F8:: @ 080FF5F8
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF5F8_EU.bin"

@ gUnk_EU_080FF604:: @ 080FF604
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF604_EU.bin"

@ gUnk_EU_080FF610:: @ 080FF610
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF610_EU.bin"

@ gUnk_EU_080FF61C:: @ 080FF61C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF61C_EU.bin"

@ gUnk_EU_080FF628:: @ 080FF628
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF628_EU.bin"

@ gUnk_EU_080FF634:: @ 080FF634
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF634_EU.bin"

@ gUnk_EU_080FF640:: @ 080FF640
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF640_EU.bin"

@ gUnk_EU_080FF64C:: @ 080FF64C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF64C_EU.bin"

@ gUnk_EU_080FF658:: @ 080FF658
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF658_EU.bin"

@ gUnk_EU_080FF664:: @ 080FF664
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF664_EU.bin"

@ gUnk_EU_080FF670:: @ 080FF670
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF670_EU.bin"

@ gUnk_EU_080FF67C:: @ 080FF67C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF67C_EU.bin"

@ gUnk_EU_080FF688:: @ 080FF688
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF688_EU.bin"

@ gUnk_EU_080FF694:: @ 080FF694
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF694_EU.bin"

@ gUnk_EU_080FF6A0:: @ 080FF6A0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF6A0_EU.bin"

@ gUnk_EU_080FF6AC:: @ 080FF6AC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF6AC_EU.bin"

@ gUnk_EU_080FF6B8:: @ 080FF6B8
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF6B8_EU.bin"

@ gUnk_EU_080FF6C4:: @ 080FF6C4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF6C4_EU.bin"

@ gUnk_EU_080FF6D0:: @ 080FF6D0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF6D0_EU.bin"

@ gUnk_EU_080FF6DC:: @ 080FF6DC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF6DC_EU.bin"

@ gUnk_EU_080FF6F4:: @ 080FF6F4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF6F4_EU.bin"

@ gUnk_EU_080FF70C:: @ 080FF70C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF70C_EU.bin"

@ gUnk_EU_080FF724:: @ 080FF724
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF724_EU.bin"

@ gUnk_EU_080FF73C:: @ 080FF73C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF73C_EU.bin"

@ gUnk_EU_080FF754:: @ 080FF754
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF754_EU.bin"

@ gUnk_EU_080FF76C:: @ 080FF76C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF76C_EU.bin"

@ gUnk_EU_080FF784:: @ 080FF784
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF784_EU.bin"

@ gUnk_EU_080FF79C:: @ 080FF79C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF79C_EU.bin"

@ gUnk_EU_080FF7B4:: @ 080FF7B4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF7B4_EU.bin"

@ gUnk_EU_080FF7CC:: @ 080FF7CC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF7CC_EU.bin"

@ gUnk_EU_080FF7E4:: @ 080FF7E4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF7E4_EU.bin"

@ gUnk_EU_080FF7FC:: @ 080FF7FC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF7FC_EU.bin"

@ gUnk_EU_080FF814:: @ 080FF814
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF814_EU.bin"

@ gUnk_EU_080FF82C:: @ 080FF82C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF82C_EU.bin"

@ gUnk_EU_080FF844:: @ 080FF844
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF844_EU.bin"

@ gUnk_EU_080FF85C:: @ 080FF85C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF85C_EU.bin"

@ gUnk_EU_080FF874:: @ 080FF874
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF874_EU.bin"

@ gUnk_EU_080FF88C:: @ 080FF88C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF88C_EU.bin"

@ gUnk_EU_080FF8A4:: @ 080FF8A4
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF8A4_EU.bin"

@ gUnk_EU_080FF8B0:: @ 080FF8B0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF8B0_EU.bin"

@ gUnk_EU_080FF8BC:: @ 080FF8BC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF8BC_EU.bin"

@ gUnk_EU_080FF8EC:: @ 080FF8EC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF8EC_EU.bin"

@ gUnk_EU_080FF91C:: @ 080FF91C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF91C_EU.bin"

@ gUnk_EU_080FF94C:: @ 080FF94C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF94C_EU.bin"

@ gUnk_EU_080FF9A0:: @ 080FF9A0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FF9A0_EU.bin"

@ gUnk_EU_080FFA48:: @ 080FFA48
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFA48_EU.bin"

@ gUnk_EU_080FFAF0:: @ 080FFAF0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFAF0_EU.bin"

@ gUnk_EU_080FFB68:: @ 080FFB68
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFB68_EU.bin"

@ gUnk_EU_080FFBB0:: @ 080FFBB0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFBB0_EU.bin"

@ gUnk_EU_080FFBC8:: @ 080FFBC8
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFBC8_EU.bin"

@ gUnk_EU_080FFBE0:: @ 080FFBE0
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFBE0_EU.bin"

@ gUnk_EU_080FFC1C:: @ 080FFC1C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFC1C_EU.bin"

@ gUnk_EU_080FFC4C:: @ 080FFC4C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFC4C_EU.bin"

@ gUnk_EU_080FFC7C:: @ 080FFC7C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFC7C_EU.bin"

@ gUnk_EU_080FFCAC:: @ 080FFCAC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFCAC_EU.bin"

@ gUnk_EU_080FFCDC:: @ 080FFCDC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFCDC_EU.bin"

@ gUnk_EU_080FFD0C:: @ 080FFD0C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFD0C_EU.bin"

@ gUnk_EU_080FFD3C:: @ 080FFD3C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFD3C_EU.bin"

@ gUnk_EU_080FFD6C:: @ 080FFD6C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFD6C_EU.bin"

@ gUnk_EU_080FFD9C:: @ 080FFD9C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFD9C_EU.bin"

@ gUnk_EU_080FFDCC:: @ 080FFDCC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFDCC_EU.bin"

@ gUnk_EU_080FFDFC:: @ 080FFDFC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFDFC_EU.bin"

@ gUnk_EU_080FFE2C:: @ 080FFE2C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFE2C_EU.bin"

@ gUnk_EU_080FFE5C:: @ 080FFE5C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFE5C_EU.bin"

@ gUnk_EU_080FFE8C:: @ 080FFE8C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFE8C_EU.bin"

@ gUnk_EU_080FFEBC:: @ 080FFEBC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFEBC_EU.bin"

@ gUnk_EU_080FFEEC:: @ 080FFEEC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFEEC_EU.bin"

@ gUnk_EU_080FFF1C:: @ 080FFF1C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFF1C_EU.bin"

@ gUnk_EU_080FFF4C:: @ 080FFF4C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFF4C_EU.bin"

@ gUnk_EU_080FFF7C:: @ 080FFF7C
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFF7C_EU.bin"

@ gUnk_EU_080FFFAC:: @ 080FFFAC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFFAC_EU.bin"

@ gUnk_EU_080FFFDC:: @ 080FFFDC
@ 	.incbin "data_080FEEB8/gUnk_EU_080FFFDC_EU.bin"

@ gUnk_EU_0810000C:: @ 0810000C
@ 	.incbin "data_080FEEB8/gUnk_EU_0810000C_EU.bin"

@ gUnk_EU_0810003C:: @ 0810003C
@ 	.incbin "data_080FEEB8/gUnk_EU_0810003C_EU.bin"

@ gUnk_EU_081000A8:: @ 081000A8
@ 	.incbin "data_080FEEB8/gUnk_EU_081000A8_EU.bin"

@ gUnk_EU_081000B4:: @ 081000B4
@ 	.incbin "data_080FEEB8/gUnk_EU_081000B4_EU.bin"

@ gUnk_EU_081000C0:: @ 081000C0
@ 	.incbin "data_080FEEB8/gUnk_EU_081000C0_EU.bin"

@ gUnk_EU_081000CC:: @ 081000CC
@ 	.incbin "data_080FEEB8/gUnk_EU_081000CC_EU.bin"

@ gUnk_EU_081000D8:: @ 081000D8
@ 	.incbin "data_080FEEB8/gUnk_EU_081000D8_EU.bin"

@ gUnk_EU_081000E4:: @ 081000E4
@ 	.incbin "data_080FEEB8/gUnk_EU_081000E4_EU.bin"

@ gUnk_EU_081000F0:: @ 081000F0
@ 	.incbin "data_080FEEB8/gUnk_EU_081000F0_EU.bin"

@ gUnk_EU_081000FC:: @ 081000FC
@ 	.incbin "data_080FEEB8/gUnk_EU_081000FC_EU.bin"

@ gUnk_EU_0810015C:: @ 0810015C
@ 	.incbin "data_080FEEB8/gUnk_EU_0810015C_EU.bin"

@ gUnk_EU_081001E0:: @ 081001E0
@ 	.incbin "data_080FEEB8/gUnk_EU_081001E0_EU.bin"

@ gUnk_EU_081001EC:: @ 081001EC
@ 	.incbin "data_080FEEB8/gUnk_EU_081001EC_EU.bin"

@ gUnk_EU_081001F8:: @ 081001F8
@ 	.incbin "data_080FEEB8/gUnk_EU_081001F8_EU.bin"


@ gGfxGroups:: @ 08100218
@ 	.4byte 0
@ 	.4byte gUnk_EU_080FF0C4
@ 	.4byte gUnk_EU_080FF0DC
@ 	.4byte gUnk_EU_080FF124
@ 	.4byte gUnk_EU_080FF178
@ 	.4byte gUnk_EU_080FF19C
@ 	.4byte gUnk_EU_080FF1CC
@ 	.4byte gUnk_EU_080FF214
@ 	.4byte gUnk_EU_080FF220
@ 	.4byte gUnk_EU_080FF2B0
@ 	.4byte gUnk_EU_080FF2C8
@ 	.4byte gUnk_EU_080FF2E0
@ 	.4byte gUnk_EU_080FF22C
@ 	.4byte gUnk_EU_080FF244
@ 	.4byte gUnk_EU_080FF25C
@ 	.4byte gUnk_EU_080FF268
@ 	.4byte gUnk_EU_080FF2EC
@ 	.4byte gUnk_EU_080FF58C
@ 	.4byte gUnk_EU_080FF5A4
@ 	.4byte gUnk_EU_080FF5B0
@ 	.4byte gUnk_EU_080FF5EC
@ 	.4byte gUnk_EU_080FF5F8
@ 	.4byte gUnk_EU_080FF55C
@ 	.4byte gUnk_EU_080FF304
@ 	.4byte gUnk_EU_080FF310
@ 	.4byte gUnk_EU_080FF31C
@ 	.4byte gUnk_EU_080FF328
@ 	.4byte gUnk_EU_080FF334
@ 	.4byte gUnk_EU_080FF340
@ 	.4byte gUnk_EU_080FF34C
@ 	.4byte gUnk_EU_080FF3F4
@ 	.4byte gUnk_EU_080FF4A8
@ 	.4byte gUnk_EU_080FF46C
@ 	.4byte gUnk_EU_080FF430
@ 	.4byte gUnk_EU_080FF520
@ 	.4byte gUnk_EU_080FF4E4
@ 	.4byte gUnk_EU_080FF358
@ 	.4byte gUnk_EU_080FF370
@ 	.4byte gUnk_EU_080FF388
@ 	.4byte gUnk_EU_080FF394
@ 	.4byte gUnk_EU_080FF3AC
@ 	.4byte gUnk_EU_080FF3C4
@ 	.4byte gUnk_EU_080FF3DC
@ 	.4byte gUnk_EU_080FF5BC
@ 	.4byte gUnk_EU_080FF5C8
@ 	.4byte gUnk_EU_080FF5D4
@ 	.4byte gUnk_EU_080FF5E0
@ 	.4byte gUnk_EU_080FF604
@ 	.4byte gUnk_EU_080FF610
@ 	.4byte gUnk_EU_080FF61C
@ 	.4byte gUnk_EU_080FF628
@ 	.4byte gUnk_EU_080FF634
@ 	.4byte gUnk_EU_080FF640
@ 	.4byte gUnk_EU_080FF64C
@ 	.4byte gUnk_EU_080FF6DC
@ 	.4byte gUnk_EU_080FF6F4
@ 	.4byte gUnk_EU_080FF70C
@ 	.4byte gUnk_EU_080FF724
@ 	.4byte gUnk_EU_080FF73C
@ 	.4byte gUnk_EU_080FF754
@ 	.4byte gUnk_EU_080FF76C
@ 	.4byte gUnk_EU_080FF784
@ 	.4byte gUnk_EU_080FF79C
@ 	.4byte gUnk_EU_080FF7B4
@ 	.4byte gUnk_EU_080FF7CC
@ 	.4byte gUnk_EU_080FF7E4
@ 	.4byte gUnk_EU_080FF7FC
@ 	.4byte gUnk_EU_080FF814
@ 	.4byte gUnk_EU_080FF82C
@ 	.4byte gUnk_EU_080FF844
@ 	.4byte gUnk_EU_080FF85C
@ 	.4byte gUnk_EU_080FF874
@ 	.4byte gUnk_EU_080FF88C
@ 	.4byte gUnk_EU_080FF8A4
@ 	.4byte gUnk_EU_080FF8B0
@ 	.4byte gUnk_EU_080FF658
@ 	.4byte gUnk_EU_080FF664
@ 	.4byte gUnk_EU_080FF670
@ 	.4byte gUnk_EU_080FF67C
@ 	.4byte gUnk_EU_080FF688
@ 	.4byte gUnk_EU_080FF694
@ 	.4byte gUnk_EU_080FF6A0
@ 	.4byte gUnk_EU_080FF6AC
@ 	.4byte gUnk_EU_080FF6B8
@ 	.4byte gUnk_EU_080FF6C4
@ 	.4byte gUnk_EU_080FF6D0
@ 	.4byte gUnk_EU_080FF8BC
@ 	.4byte gUnk_EU_080FF8EC
@ 	.4byte gUnk_EU_080FF91C
@ 	.4byte gUnk_EU_080FF94C
@ 	.4byte gUnk_EU_080FF9A0
@ 	.4byte gUnk_EU_080FFA48
@ 	.4byte gUnk_EU_080FFAF0
@ 	.4byte gUnk_EU_080FFBE0
@ 	.4byte gUnk_EU_080FFC1C
@ 	.4byte gUnk_EU_080FFC4C
@ 	.4byte gUnk_EU_080FFC7C
@ 	.4byte gUnk_EU_080FFCAC
@ 	.4byte gUnk_EU_080FFCDC
@ 	.4byte gUnk_EU_080FFD0C
@ 	.4byte gUnk_EU_080FFD3C
@ 	.4byte gUnk_EU_080FFD6C
@ 	.4byte gUnk_EU_080FFD9C
@ 	.4byte gUnk_EU_080FFDCC
@ 	.4byte gUnk_EU_080FFDFC
@ 	.4byte gUnk_EU_080FFE5C
@ 	.4byte gUnk_EU_080FFE8C
@ 	.4byte gUnk_EU_080FFEEC
@ 	.4byte gUnk_EU_080FFF1C
@ 	.4byte gUnk_EU_080FFFAC
@ 	.4byte gUnk_EU_080FFFDC
@ 	.4byte gUnk_EU_0810000C
@ 	.4byte gUnk_EU_080FFE2C
@ 	.4byte gUnk_EU_080FFEBC
@ 	.4byte gUnk_EU_080FFFAC
@ 	.4byte gUnk_EU_080FFF7C
@ 	.4byte gUnk_EU_080FFF4C
@ 	.4byte gUnk_EU_0810003C
@ 	.4byte gUnk_EU_081000A8
@ 	.4byte gUnk_EU_081000B4
@ 	.4byte gUnk_EU_081000C0
@ 	.4byte gUnk_EU_081000CC
@ 	.4byte gUnk_EU_081000D8
@ 	.4byte gUnk_EU_081000E4
@ 	.4byte gUnk_EU_081000F0
@ 	.4byte gUnk_EU_081000FC
@ 	.4byte gUnk_EU_0810015C
@ 	.4byte gUnk_EU_080FFBB0
@ 	.4byte gUnk_EU_080FFBC8
@ 	.4byte gUnk_EU_080FFB68
@ 	.4byte gUnk_EU_081001E0
@ 	.4byte gUnk_EU_081001EC
@ 	.4byte gUnk_EU_081001F8
@ .else



@ gGfxGroup_1:: @ 080FFB90
@ 	.incbin "data_080FEEB8/gGfxGroup_1_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_2:: @ 080FFBA8
@ .ifdef JP
@ 	.incbin "data_080FEEB8/gGfxGroup_2_JP.bin"
@ .else
@ .ifdef DEMO_JP
@ 	.incbin "data_080FEEB8/gGfxGroup_2_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_2_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ .ifdef JP
@ 	.incbin "data_080FEEB8/gGfxGroup_2_3_JP.bin"
@ .else
@ .ifdef DEMO_JP
@ 	.incbin "data_080FEEB8/gGfxGroup_2_4_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_2_5_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_3:: @ 080FFBF0
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_3_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_3_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_3_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_4:: @ 080FFC14
@ 	.incbin "data_080FEEB8/gGfxGroup_4_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_5:: @ 080FFC38
@ 	.incbin "data_080FEEB8/gGfxGroup_5_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_6:: @ 080FFC68
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_6_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_6_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_6_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_7:: @ 080FFC80
@ 	.incbin "data_080FEEB8/gGfxGroup_7_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_8:: @ 080FFC8C
@ 	.incbin "data_080FEEB8/gGfxGroup_8_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_12:: @ 080FFC98
@ 	.incbin "data_080FEEB8/gGfxGroup_12_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_13:: @ 080FFCB0
@ 	.incbin "data_080FEEB8/gGfxGroup_13_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_14:: @ 080FFCC8
@ 	.incbin "data_080FEEB8/gGfxGroup_14_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_15:: @ 080FFCD4
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_15_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_15_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_15_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_9:: @ 080FFCEC
@ 	.incbin "data_080FEEB8/gGfxGroup_9_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_9_1_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_9_2_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_9_3_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_10:: @ 080FFD04
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_10_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_10_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_10_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ .ifdef JP
@ gUnk_080FF9D8:: @ 080FF9D8
@ 	.incbin "data_080FEEB8/gUnk_080FF9D8_JP.bin"
@ .else
@ .ifdef DEMO_JP
@ gUnk_080FF9D8:: @ 080FF9D8
@ 	.incbin "data_080FEEB8/gUnk_080FF9D8_DEMO_JP.bin"
@ .endif
@ .endif

@ gGfxGroup_11:: @ 080FFD1C
@ 	.incbin "data_080FEEB8/gGfxGroup_11_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_16:: @ 080FFD28
@ 	.incbin "data_080FEEB8/gGfxGroup_16_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_23:: @ 080FFD40
@ 	.incbin "data_080FEEB8/gGfxGroup_23_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_24:: @ 080FFD4C
@ 	.incbin "data_080FEEB8/gGfxGroup_24_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_25:: @ 080FFD58
@ 	.incbin "data_080FEEB8/gGfxGroup_25_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_26:: @ 080FFD64
@ 	.incbin "data_080FEEB8/gGfxGroup_26_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_27:: @ 080FFD70
@ 	.incbin "data_080FEEB8/gGfxGroup_27_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_28:: @ 080FFD7C
@ 	.incbin "data_080FEEB8/gGfxGroup_28_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_29:: @ 080FFD88
@ 	.incbin "data_080FEEB8/gGfxGroup_29_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_36:: @ 080FFD94
@ 	.incbin "data_080FEEB8/gGfxGroup_36_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_37:: @ 080FFDAC
@ 	.incbin "data_080FEEB8/gGfxGroup_37_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_38:: @ 080FFDC4
@ 	.incbin "data_080FEEB8/gGfxGroup_38_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_39:: @ 080FFDD0
@ 	.incbin "data_080FEEB8/gGfxGroup_39_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_40:: @ 080FFDE8
@ 	.incbin "data_080FEEB8/gGfxGroup_40_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_41:: @ 080FFE00
@ 	.incbin "data_080FEEB8/gGfxGroup_41_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_42:: @ 080FFE18
@ 	.incbin "data_080FEEB8/gGfxGroup_42_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_30:: @ 080FFE30
@ 	.incbin "data_080FEEB8/gGfxGroup_30_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_33:: @ 080FFE6C
@ 	.incbin "data_080FEEB8/gGfxGroup_33_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_32:: @ 080FFEA8
@ 	.incbin "data_080FEEB8/gGfxGroup_32_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_31:: @ 080FFEE4
@ 	.incbin "data_080FEEB8/gGfxGroup_31_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_35:: @ 080FFF20
@ 	.incbin "data_080FEEB8/gGfxGroup_35_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_34:: @ 080FFF5C
@ 	.incbin "data_080FEEB8/gGfxGroup_34_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_22:: @ 080FFF98
@ 	.incbin "data_080FEEB8/gGfxGroup_22_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_17:: @ 080FFFC8
@ 	.incbin "data_080FEEB8/gGfxGroup_17_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_18:: @ 080FFFE0
@ 	.incbin "data_080FEEB8/gGfxGroup_18_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_19:: @ 080FFFEC
@ 	.incbin "data_080FEEB8/gGfxGroup_19_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_43:: @ 080FFFF8
@ 	.incbin "data_080FEEB8/gGfxGroup_43_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_44:: @ 08100004
@ 	.incbin "data_080FEEB8/gGfxGroup_44_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_45:: @ 08100010
@ 	.incbin "data_080FEEB8/gGfxGroup_45_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_46:: @ 0810001C
@ 	.incbin "data_080FEEB8/gGfxGroup_46_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_20:: @ 08100028
@ 	.incbin "data_080FEEB8/gGfxGroup_20_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_21:: @ 08100034
@ 	.incbin "data_080FEEB8/gGfxGroup_21_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_47:: @ 08100040
@ 	.incbin "data_080FEEB8/gGfxGroup_47_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_48:: @ 0810004C
@ 	.incbin "data_080FEEB8/gGfxGroup_48_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_49:: @ 08100058
@ 	.incbin "data_080FEEB8/gGfxGroup_49_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_50:: @ 08100064
@ 	.incbin "data_080FEEB8/gGfxGroup_50_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_51:: @ 08100070
@ 	.incbin "data_080FEEB8/gGfxGroup_51_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_52:: @ 0810007C
@ 	.incbin "data_080FEEB8/gGfxGroup_52_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_53:: @ 08100088
@ 	.incbin "data_080FEEB8/gGfxGroup_53_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_75:: @ 08100094
@ 	.incbin "data_080FEEB8/gGfxGroup_75_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_76:: @ 081000A0
@ 	.incbin "data_080FEEB8/gGfxGroup_76_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_77:: @ 081000AC
@ 	.incbin "data_080FEEB8/gGfxGroup_77_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_78:: @ 081000B8
@ 	.incbin "data_080FEEB8/gGfxGroup_78_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_79:: @ 081000C4
@ 	.incbin "data_080FEEB8/gGfxGroup_79_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_80:: @ 081000D0
@ 	.incbin "data_080FEEB8/gGfxGroup_80_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_81:: @ 081000DC
@ 	.incbin "data_080FEEB8/gGfxGroup_81_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_82:: @ 081000E8
@ 	.incbin "data_080FEEB8/gGfxGroup_82_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_83:: @ 081000F4
@ 	.incbin "data_080FEEB8/gGfxGroup_83_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_84:: @ 08100100
@ 	.incbin "data_080FEEB8/gGfxGroup_84_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_85:: @ 0810010C
@ 	.incbin "data_080FEEB8/gGfxGroup_85_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_54:: @ 08100118
@ 	.incbin "data_080FEEB8/gGfxGroup_54_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_55:: @ 08100130
@ 	.incbin "data_080FEEB8/gGfxGroup_55_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_56:: @ 08100148
@ 	.incbin "data_080FEEB8/gGfxGroup_56_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_57:: @ 08100160
@ 	.incbin "data_080FEEB8/gGfxGroup_57_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_58:: @ 08100178
@ 	.incbin "data_080FEEB8/gGfxGroup_58_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_59:: @ 08100190
@ 	.incbin "data_080FEEB8/gGfxGroup_59_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_60:: @ 081001A8
@ 	.incbin "data_080FEEB8/gGfxGroup_60_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_61:: @ 081001C0
@ 	.incbin "data_080FEEB8/gGfxGroup_61_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_62:: @ 081001D8
@ 	.incbin "data_080FEEB8/gGfxGroup_62_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_63:: @ 081001F0
@ 	.incbin "data_080FEEB8/gGfxGroup_63_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_64:: @ 08100208
@ 	.incbin "data_080FEEB8/gGfxGroup_64_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_65:: @ 08100220
@ 	.incbin "data_080FEEB8/gGfxGroup_65_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_66:: @ 08100238
@ 	.incbin "data_080FEEB8/gGfxGroup_66_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_67:: @ 08100250
@ 	.incbin "data_080FEEB8/gGfxGroup_67_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_68:: @ 08100268
@ 	.incbin "data_080FEEB8/gGfxGroup_68_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_69:: @ 08100280
@ 	.incbin "data_080FEEB8/gGfxGroup_69_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_70:: @ 08100298
@ 	.incbin "data_080FEEB8/gGfxGroup_70_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_71:: @ 081002B0
@ 	.incbin "data_080FEEB8/gGfxGroup_71_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_72:: @ 081002C8
@ 	.incbin "data_080FEEB8/gGfxGroup_72_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_73:: @ 081002E0
@ 	.incbin "data_080FEEB8/gGfxGroup_73_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_74:: @ 081002EC
@ 	.incbin "data_080FEEB8/gGfxGroup_74_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_86:: @ 081002F8
@ 	.incbin "data_080FEEB8/gGfxGroup_86_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_87:: @ 08100328
@ 	.incbin "data_080FEEB8/gGfxGroup_87_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_88:: @ 08100358
@ 	.incbin "data_080FEEB8/gGfxGroup_88_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_89:: @ 08100388
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_89_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_89_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_89_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_90:: @ 081003DC
@ 	.incbin "data_080FEEB8/gGfxGroup_90_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_90_1_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_90_2_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_90_3_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_90_4_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_90_5_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_90_6_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_91:: @ 08100424
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_91_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_91_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_91_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_92:: @ 0810046C
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_92_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_92_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_92_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_129:: @ 081004B4
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_129_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_129_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_129_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_127:: @ 081004CC
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_127_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_127_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_127_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_128:: @ 081004F0
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_128_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_128_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_128_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ 	.incbin "data_080FEEB8/gGfxGroup_128_3_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_128_4_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_128_5_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_128_6_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_128_7_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_128_8_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_128_9_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ 	.incbin "data_080FEEB8/gGfxGroup_128_10_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_93:: @ 08100514
@ 	.incbin "data_080FEEB8/gGfxGroup_93_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_94:: @ 08100550
@ 	.incbin "data_080FEEB8/gGfxGroup_94_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_95:: @ 08100580
@ 	.incbin "data_080FEEB8/gGfxGroup_95_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_96:: @ 081005B0
@ 	.incbin "data_080FEEB8/gGfxGroup_96_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_97:: @ 081005E0
@ 	.incbin "data_080FEEB8/gGfxGroup_97_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_98:: @ 08100610
@ 	.incbin "data_080FEEB8/gGfxGroup_98_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_99:: @ 08100640
@ 	.incbin "data_080FEEB8/gGfxGroup_99_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_100:: @ 08100670
@ 	.incbin "data_080FEEB8/gGfxGroup_100_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_101:: @ 081006A0
@ 	.incbin "data_080FEEB8/gGfxGroup_101_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_102:: @ 081006D0
@ 	.incbin "data_080FEEB8/gGfxGroup_102_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_103:: @ 08100700
@ 	.incbin "data_080FEEB8/gGfxGroup_103_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_104:: @ 08100730
@ 	.incbin "data_080FEEB8/gGfxGroup_104_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_112:: @ 08100760
@ 	.incbin "data_080FEEB8/gGfxGroup_112_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_105:: @ 08100790
@ 	.incbin "data_080FEEB8/gGfxGroup_105_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_106:: @ 081007C0
@ 	.incbin "data_080FEEB8/gGfxGroup_106_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_113:: @ 081007F0
@ 	.incbin "data_080FEEB8/gGfxGroup_113_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_107:: @ 08100820
@ 	.incbin "data_080FEEB8/gGfxGroup_107_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_108:: @ 08100850
@ 	.incbin "data_080FEEB8/gGfxGroup_108_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_116:: @ 08100880
@ 	.incbin "data_080FEEB8/gGfxGroup_116_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_115:: @ 081008B0
@ 	.incbin "data_080FEEB8/gGfxGroup_115_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_109:: @ 081008E0
@ 	.incbin "data_080FEEB8/gGfxGroup_109_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_110:: @ 08100910
@ 	.incbin "data_080FEEB8/gGfxGroup_110_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_111:: @ 08100940
@ 	.incbin "data_080FEEB8/gGfxGroup_111_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_117:: @ 08100970
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_117_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_117_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_117_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_118:: @ 081009AC
@ 	.incbin "data_080FEEB8/gGfxGroup_118_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_119:: @ 081009B8
@ 	.incbin "data_080FEEB8/gGfxGroup_119_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_120:: @ 081009C4
@ 	.incbin "data_080FEEB8/gGfxGroup_120_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_121:: @ 081009D0
@ 	.incbin "data_080FEEB8/gGfxGroup_121_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_122:: @ 081009DC
@ 	.incbin "data_080FEEB8/gGfxGroup_122_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_123:: @ 081009E8
@ 	.incbin "data_080FEEB8/gGfxGroup_123_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_124:: @ 081009F4
@ 	.incbin "data_080FEEB8/gGfxGroup_124_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_125:: @ 08100A00
@ 	.incbin "data_080FEEB8/gGfxGroup_125_USA-JP-DEMO_USA-DEMO_JP.bin"
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_125_1_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_125_2_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_125_3_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_126:: @ 08100A30
@ .ifdef JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_126_JP.bin"
@ .else
@ .ifdef DEMO_JP
@     @ TODO only small differences
@ 	.incbin "data_080FEEB8/gGfxGroup_126_1_DEMO_JP.bin"
@ .else
@ 	.incbin "data_080FEEB8/gGfxGroup_126_2_USA-DEMO_USA.bin"
@ .endif
@ .endif

@ gGfxGroup_130:: @ 08100A84
@ 	.incbin "data_080FEEB8/gGfxGroup_130_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_131:: @ 08100A90
@ 	.incbin "data_080FEEB8/gGfxGroup_131_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroup_132:: @ 08100A9C
@ 	.incbin "data_080FEEB8/gGfxGroup_132_USA-JP-DEMO_USA-DEMO_JP.bin"

@ gGfxGroups:: @ 08100AA8
@ 	.4byte 00000000
@ 	.4byte gGfxGroup_1
@ 	.4byte gGfxGroup_2
@ 	.4byte gGfxGroup_3
@ 	.4byte gGfxGroup_4
@ 	.4byte gGfxGroup_5
@ 	.4byte gGfxGroup_6
@ 	.4byte gGfxGroup_7
@ 	.4byte gGfxGroup_8
@ 	.4byte gGfxGroup_9
@ 	.4byte gGfxGroup_10
@ .ifdef JP
@ 	.4byte gUnk_080FF9D8
@ .else
@ .ifdef DEMO_JP
@ 	.4byte gUnk_080FF9D8
@ .else
@ 	.4byte gGfxGroup_11
@ .endif
@ .endif
@ 	.4byte gGfxGroup_12
@ 	.4byte gGfxGroup_13
@ 	.4byte gGfxGroup_14
@ 	.4byte gGfxGroup_15
@ 	.4byte gGfxGroup_16
@ 	.4byte gGfxGroup_17
@ 	.4byte gGfxGroup_18
@ 	.4byte gGfxGroup_19
@ 	.4byte gGfxGroup_20
@ 	.4byte gGfxGroup_21
@ 	.4byte gGfxGroup_22
@ 	.4byte gGfxGroup_23
@ 	.4byte gGfxGroup_24
@ 	.4byte gGfxGroup_25
@ 	.4byte gGfxGroup_26
@ 	.4byte gGfxGroup_27
@ 	.4byte gGfxGroup_28
@ 	.4byte gGfxGroup_29
@ 	.4byte gGfxGroup_30
@ 	.4byte gGfxGroup_31
@ 	.4byte gGfxGroup_32
@ 	.4byte gGfxGroup_33
@ 	.4byte gGfxGroup_34
@ 	.4byte gGfxGroup_35
@ 	.4byte gGfxGroup_36
@ 	.4byte gGfxGroup_37
@ 	.4byte gGfxGroup_38
@ 	.4byte gGfxGroup_39
@ 	.4byte gGfxGroup_40
@ 	.4byte gGfxGroup_41
@ 	.4byte gGfxGroup_42
@ 	.4byte gGfxGroup_43
@ 	.4byte gGfxGroup_44
@ 	.4byte gGfxGroup_45
@ 	.4byte gGfxGroup_46
@ 	.4byte gGfxGroup_47
@ 	.4byte gGfxGroup_48
@ 	.4byte gGfxGroup_49
@ 	.4byte gGfxGroup_50
@ 	.4byte gGfxGroup_51
@ 	.4byte gGfxGroup_52
@ 	.4byte gGfxGroup_53
@ 	.4byte gGfxGroup_54
@ 	.4byte gGfxGroup_55
@ 	.4byte gGfxGroup_56
@ 	.4byte gGfxGroup_57
@ 	.4byte gGfxGroup_58
@ 	.4byte gGfxGroup_59
@ 	.4byte gGfxGroup_60
@ 	.4byte gGfxGroup_61
@ 	.4byte gGfxGroup_62
@ 	.4byte gGfxGroup_63
@ 	.4byte gGfxGroup_64
@ 	.4byte gGfxGroup_65
@ 	.4byte gGfxGroup_66
@ 	.4byte gGfxGroup_67
@ 	.4byte gGfxGroup_68
@ 	.4byte gGfxGroup_69
@ 	.4byte gGfxGroup_70
@ 	.4byte gGfxGroup_71
@ 	.4byte gGfxGroup_72
@ 	.4byte gGfxGroup_73
@ 	.4byte gGfxGroup_74
@ 	.4byte gGfxGroup_75
@ 	.4byte gGfxGroup_76
@ 	.4byte gGfxGroup_77
@ 	.4byte gGfxGroup_78
@ 	.4byte gGfxGroup_79
@ 	.4byte gGfxGroup_80
@ 	.4byte gGfxGroup_81
@ 	.4byte gGfxGroup_82
@ 	.4byte gGfxGroup_83
@ 	.4byte gGfxGroup_84
@ 	.4byte gGfxGroup_85
@ 	.4byte gGfxGroup_86
@ 	.4byte gGfxGroup_87
@ 	.4byte gGfxGroup_88
@ 	.4byte gGfxGroup_89
@ 	.4byte gGfxGroup_90
@ 	.4byte gGfxGroup_91
@ 	.4byte gGfxGroup_92
@ 	.4byte gGfxGroup_93
@ 	.4byte gGfxGroup_94
@ 	.4byte gGfxGroup_95
@ 	.4byte gGfxGroup_96
@ 	.4byte gGfxGroup_97
@ 	.4byte gGfxGroup_98
@ 	.4byte gGfxGroup_99
@ 	.4byte gGfxGroup_100
@ 	.4byte gGfxGroup_101
@ 	.4byte gGfxGroup_102
@ 	.4byte gGfxGroup_103
@ 	.4byte gGfxGroup_104
@ 	.4byte gGfxGroup_105
@ 	.4byte gGfxGroup_106
@ 	.4byte gGfxGroup_107
@ 	.4byte gGfxGroup_108
@ 	.4byte gGfxGroup_109
@ 	.4byte gGfxGroup_110
@ 	.4byte gGfxGroup_111
@ 	.4byte gGfxGroup_112
@ 	.4byte gGfxGroup_113
@ 	.4byte gGfxGroup_109
@ 	.4byte gGfxGroup_115
@ 	.4byte gGfxGroup_116
@ 	.4byte gGfxGroup_117
@ 	.4byte gGfxGroup_118
@ 	.4byte gGfxGroup_119
@ 	.4byte gGfxGroup_120
@ 	.4byte gGfxGroup_121
@ 	.4byte gGfxGroup_122
@ 	.4byte gGfxGroup_123
@ 	.4byte gGfxGroup_124
@ 	.4byte gGfxGroup_125
@ 	.4byte gGfxGroup_126
@ 	.4byte gGfxGroup_127
@ 	.4byte gGfxGroup_128
@ 	.4byte gGfxGroup_129
@ 	.4byte gGfxGroup_130
@ 	.4byte gGfxGroup_131
@ 	.4byte gGfxGroup_132
@ .endif
