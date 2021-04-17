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
	.incbin "baserom.gba", 0x0FEED4, 0x000000C
	.4byte script_0800C350
	.incbin "baserom.gba", 0x0FEEE4, 0x000000C
	.4byte script_0800C3CC
	.incbin "baserom.gba", 0x0FEEF4, 0x000000C
	.4byte script_0800C410
	.incbin "baserom.gba", 0x0FEF04, 0x0000030

gUnk_080FEF34:: @ 080FEF34
	.4byte sub_08054DAC
	.4byte nullsub_484

gUnk_080FEF3C:: @ 080FEF3C
	.4byte sub_08054E1C
	.4byte sub_08054E5C
	.4byte sub_08054E9C

gUnk_080FEF48:: @ 080FEF48
	.incbin "baserom.gba", 0x0FEF48, 0x000000C
	.4byte script_0800BC50
	.incbin "baserom.gba", 0x0FEF58, 0x0000020

gUnk_080FEF78:: @ 080FEF78
	.incbin "baserom.gba", 0x0FEF78, 0x000000C
	.4byte script_0800BCE8
	.incbin "baserom.gba", 0x0FEF88, 0x000000C
	.4byte script_0800BD78
	.incbin "baserom.gba", 0x0FEF98, 0x0000010

gUnk_080FEFA8:: @ 080FEFA8
	.incbin "baserom.gba", 0x0FEFA8, 0x000000C
	.4byte script_0800BE1C
	.incbin "baserom.gba", 0x0FEFB8, 0x000000C
	.4byte script_0800BE54
	.incbin "baserom.gba", 0x0FEFC8, 0x000000C
	.4byte script_0800BECC
	.incbin "baserom.gba", 0x0FEFD8, 0x0000010

gUnk_080FEFE8:: @ 080FEFE8
	.incbin "baserom.gba", 0x0FEFE8, 0x000000C
	.4byte script_0800BF38
	.incbin "baserom.gba", 0x0FEFF8, 0x000000C
	.4byte script_0800BF70
	.incbin "baserom.gba", 0x0FF008, 0x000000C
	.4byte script_0800BF70
	.incbin "baserom.gba", 0x0FF018, 0x000000C
	.4byte script_0800C004
	.incbin "baserom.gba", 0x0FF028, 0x0000010

gUnk_080FF038:: @ 080FF038
	.incbin "baserom.gba", 0x0FF038, 0x000000C
	.4byte script_0800C0B0
	.incbin "baserom.gba", 0x0FF048, 0x000000C
	.4byte script_0800C0E8
	.incbin "baserom.gba", 0x0FF058, 0x000000C
	.4byte script_0800C0E8
	.incbin "baserom.gba", 0x0FF068, 0x000000C
	.4byte script_0800C0E8
	.incbin "baserom.gba", 0x0FF078, 0x000000C
	.4byte script_0800C160
	.incbin "baserom.gba", 0x0FF088, 0x0000010

gUnk_080FF098:: @ 080FF098
	.incbin "baserom.gba", 0x0FF098, 0x000000C
	.4byte script_0800C1D8
	.incbin "baserom.gba", 0x0FF0A8, 0x000000C
	.4byte script_0800C210
	.incbin "baserom.gba", 0x0FF0B8, 0x000000C
	.4byte script_0800C210
	.incbin "baserom.gba", 0x0FF0C8, 0x000000C
	.4byte script_0800C210
	.incbin "baserom.gba", 0x0FF0D8, 0x000000C
	.4byte script_0800C210
	.incbin "baserom.gba", 0x0FF0E8, 0x000000C
	.4byte script_0800C2A4
	.incbin "baserom.gba", 0x0FF0F8, 0x0000010

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
	.incbin "baserom.gba", 0x0FF128, 0x000000C
	.4byte script_0800BB64
	.incbin "baserom.gba", 0x0FF138, 0x0000010

gUnk_080FF148:: @ 080FF148
	.4byte sub_08055054
	.4byte sub_0805508C
	.4byte sub_08055090

gUnk_080FF154:: @ 080FF154
	.incbin "baserom.gba", 0x0FF154, 0x000000C
	.4byte script_0800BACC
	.incbin "baserom.gba", 0x0FF164, 0x0000010

gUnk_080FF174:: @ 080FF174
	.4byte sub_080550B0
	.4byte nullsub_487

gUnk_080FF17C:: @ 080FF17C
	.incbin "baserom.gba", 0x0FF17C, 0x000000C
	.4byte script_0800BC08
	.incbin "baserom.gba", 0x0FF18C, 0x0000040

gUnk_080FF1CC:: @ 080FF1CC
	.4byte sub_08055114
	.4byte nullsub_488

gUnk_080FF1D4:: @ 080FF1D4
	.incbin "baserom.gba", 0x0FF1D4, 0x0000018

gUnk_080FF1EC:: @ 080FF1EC
	.incbin "baserom.gba", 0x0FF1EC, 0x0000008

gUnk_080FF1F4:: @ 080FF1F4
	.4byte sub_08055184
	.4byte sub_08055224
	.4byte sub_0805524C

gUnk_080FF200:: @ 080FF200
	.4byte sub_080552E0

gUnk_080FF204:: @ 080FF204
	.incbin "baserom.gba", 0x0FF204, 0x0000024

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
	.incbin "baserom.gba", 0x0FF264, 0x000000C
	.4byte script_0800BBDC
	.incbin "baserom.gba", 0x0FF274, 0x0000010

gUnk_080FF284:: @ 080FF284
	.4byte sub_080556AC
	.4byte nullsub_489

gUnk_080FF28C:: @ 080FF28C
	.4byte sub_08055710
	.4byte sub_0805576C
	.4byte sub_08055798

gUnk_080FF298:: @ 080FF298
	.incbin "baserom.gba", 0x0FF298, 0x0000020

gUnk_080FF2B8:: @ 080FF2B8
	.4byte sub_080557D0
	.4byte nullsub_490

gUnk_080FF2C0:: @ 080FF2C0
	.incbin "baserom.gba", 0x0FF2C0, 0x000001C
	.4byte script_0800BA78
	.incbin "baserom.gba", 0x0FF2E0, 0x0000020

gUnk_080FF300:: @ 080FF300
	.4byte sub_08055834
	.4byte nullsub_491

gUnk_080FF308:: @ 080FF308
	.incbin "baserom.gba", 0x0FF308, 0x000000C
	.4byte script_0800BB00
	.incbin "baserom.gba", 0x0FF318, 0x0000010

gUnk_080FF328:: @ 080FF328
	.4byte sub_080558A4
	.4byte nullsub_492

gUnk_080FF330:: @ 080FF330
	.4byte sub_08055908
	.4byte sub_08055948
	.4byte sub_08055978

gUnk_080FF33C:: @ 080FF33C
	.incbin "baserom.gba", 0x0FF33C, 0x0000020

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
	.incbin "baserom.gba", 0x0FF378, 0x000000C
	.4byte script_0800C45C
	.incbin "baserom.gba", 0x0FF388, 0x000000C
	.4byte script_0800C494
	.incbin "baserom.gba", 0x0FF398, 0x000000C
	.4byte script_0800C4D0
	.incbin "baserom.gba", 0x0FF3A8, 0x000000C
	.4byte script_0800C50C
	.incbin "baserom.gba", 0x0FF3B8, 0x0000010

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
	.incbin "baserom.gba", 0x0FF400, 0x000000C
	.4byte script_0800BBA4
	.incbin "baserom.gba", 0x0FF410, 0x0000010

gUnk_080FF420:: @ 080FF420
	.4byte sub_08055E24
	.4byte nullsub_493

gUnk_080FF428:: @ 080FF428
	.incbin "baserom.gba", 0x0FF428, 0x0000008

gUnk_080FF430:: @ 080FF430
	.incbin "baserom.gba", 0x0FF430, 0x0000008

gUnk_080FF438:: @ 080FF438
	.incbin "baserom.gba", 0x0FF438, 0x000000C

gUnk_080FF444:: @ 080FF444
	.incbin "baserom.gba", 0x0FF444, 0x000000C

gUnk_080FF450:: @ 080FF450
	.incbin "baserom.gba", 0x0FF450, 0x0000004

gUnk_080FF454:: @ 080FF454
	.incbin "baserom.gba", 0x0FF454, 0x0000004

gUnk_080FF458:: @ 080FF458
	.incbin "baserom.gba", 0x0FF458, 0x0000004

gUnk_080FF45C:: @ 080FF45C
	.incbin "baserom.gba", 0x0FF45C, 0x0000004

gUnk_080FF460:: @ 080FF460
	.incbin "baserom.gba", 0x0FF460, 0x0000014

gUnk_080FF474:: @ 080FF474
	.incbin "baserom.gba", 0x0FF474, 0x0000010

gUnk_080FF484:: @ 080FF484
	.incbin "baserom.gba", 0x0FF484, 0x0000004

gUnk_080FF488:: @ 080FF488
	.incbin "baserom.gba", 0x0FF488, 0x0000008

gUnk_080FF490:: @ 080FF490
	.incbin "baserom.gba", 0x0FF490, 0x0000004

gUnk_080FF494:: @ 080FF494
	.incbin "baserom.gba", 0x0FF494, 0x0000004

gUnk_080FF498:: @ 080FF498
	.incbin "baserom.gba", 0x0FF498, 0x0000004

gUnk_080FF49C:: @ 080FF49C
	.incbin "baserom.gba", 0x0FF49C, 0x0000004

gUnk_080FF4A0:: @ 080FF4A0
	.incbin "baserom.gba", 0x0FF4A0, 0x0000004

gUnk_080FF4A4:: @ 080FF4A4
	.incbin "baserom.gba", 0x0FF4A4, 0x0000004

gUnk_080FF4A8:: @ 080FF4A8
	.incbin "baserom.gba", 0x0FF4A8, 0x0000004

gUnk_080FF4AC:: @ 080FF4AC
	.incbin "baserom.gba", 0x0FF4AC, 0x0000004

gUnk_080FF4B0:: @ 080FF4B0
	.incbin "baserom.gba", 0x0FF4B0, 0x0000004

gUnk_080FF4B4:: @ 080FF4B4
	.incbin "baserom.gba", 0x0FF4B4, 0x0000004

gUnk_080FF4B8:: @ 080FF4B8
	.incbin "baserom.gba", 0x0FF4B8, 0x0000004

gUnk_080FF4BC:: @ 080FF4BC
	.incbin "baserom.gba", 0x0FF4BC, 0x0000004

gUnk_080FF4C0:: @ 080FF4C0
	.incbin "baserom.gba", 0x0FF4C0, 0x0000004

gUnk_080FF4C4:: @ 080FF4C4
	.incbin "baserom.gba", 0x0FF4C4, 0x0000004

gUnk_080FF4C8:: @ 080FF4C8
	.incbin "baserom.gba", 0x0FF4C8, 0x0000004

gUnk_080FF4CC:: @ 080FF4CC
	.incbin "baserom.gba", 0x0FF4CC, 0x0000004

gUnk_080FF4D0:: @ 080FF4D0
	.incbin "baserom.gba", 0x0FF4D0, 0x0000004

gUnk_080FF4D4:: @ 080FF4D4
	.incbin "baserom.gba", 0x0FF4D4, 0x0000004

gUnk_080FF4D8:: @ 080FF4D8
	.incbin "baserom.gba", 0x0FF4D8, 0x0000004

gUnk_080FF4DC:: @ 080FF4DC
	.incbin "baserom.gba", 0x0FF4DC, 0x0000004

gUnk_080FF4E0:: @ 080FF4E0
	.incbin "baserom.gba", 0x0FF4E0, 0x0000004

gUnk_080FF4E4:: @ 080FF4E4
	.incbin "baserom.gba", 0x0FF4E4, 0x0000004

gUnk_080FF4E8:: @ 080FF4E8
	.incbin "baserom.gba", 0x0FF4E8, 0x0000004

gUnk_080FF4EC:: @ 080FF4EC
	.incbin "baserom.gba", 0x0FF4EC, 0x0000004

gUnk_080FF4F0:: @ 080FF4F0
	.incbin "baserom.gba", 0x0FF4F0, 0x0000004

gUnk_080FF4F4:: @ 080FF4F4
	.incbin "baserom.gba", 0x0FF4F4, 0x0000004

gUnk_080FF4F8:: @ 080FF4F8
	.incbin "baserom.gba", 0x0FF4F8, 0x0000004

gUnk_080FF4FC:: @ 080FF4FC
	.incbin "baserom.gba", 0x0FF4FC, 0x0000004

gUnk_080FF500:: @ 080FF500
	.incbin "baserom.gba", 0x0FF500, 0x0000004

gUnk_080FF504:: @ 080FF504
	.incbin "baserom.gba", 0x0FF504, 0x0000004

gUnk_080FF508:: @ 080FF508
	.incbin "baserom.gba", 0x0FF508, 0x0000004

gUnk_080FF50C:: @ 080FF50C
	.incbin "baserom.gba", 0x0FF50C, 0x0000004

gUnk_080FF510:: @ 080FF510
	.incbin "baserom.gba", 0x0FF510, 0x0000004

gUnk_080FF514:: @ 080FF514
	.incbin "baserom.gba", 0x0FF514, 0x0000004

gUnk_080FF518:: @ 080FF518
	.incbin "baserom.gba", 0x0FF518, 0x0000004

gUnk_080FF51C:: @ 080FF51C
	.incbin "baserom.gba", 0x0FF51C, 0x0000004

gUnk_080FF520:: @ 080FF520
	.incbin "baserom.gba", 0x0FF520, 0x0000004

gUnk_080FF524:: @ 080FF524
	.incbin "baserom.gba", 0x0FF524, 0x0000004

gUnk_080FF528:: @ 080FF528
	.incbin "baserom.gba", 0x0FF528, 0x0000004

gUnk_080FF52C:: @ 080FF52C
	.incbin "baserom.gba", 0x0FF52C, 0x0000004

gUnk_080FF530:: @ 080FF530
	.incbin "baserom.gba", 0x0FF530, 0x0000004

gUnk_080FF534:: @ 080FF534
	.incbin "baserom.gba", 0x0FF534, 0x0000004

gUnk_080FF538:: @ 080FF538
	.incbin "baserom.gba", 0x0FF538, 0x0000004

gUnk_080FF53C:: @ 080FF53C
	.incbin "baserom.gba", 0x0FF53C, 0x0000004

gUnk_080FF540:: @ 080FF540
	.incbin "baserom.gba", 0x0FF540, 0x0000004

gUnk_080FF544:: @ 080FF544
	.incbin "baserom.gba", 0x0FF544, 0x0000004

gUnk_080FF548:: @ 080FF548
	.incbin "baserom.gba", 0x0FF548, 0x0000004

gUnk_080FF54C:: @ 080FF54C
	.incbin "baserom.gba", 0x0FF54C, 0x0000004

gUnk_080FF550:: @ 080FF550
	.incbin "baserom.gba", 0x0FF550, 0x0000004

gUnk_080FF554:: @ 080FF554
	.incbin "baserom.gba", 0x0FF554, 0x0000004

gUnk_080FF558:: @ 080FF558
	.incbin "baserom.gba", 0x0FF558, 0x0000004

gUnk_080FF55C:: @ 080FF55C
	.incbin "baserom.gba", 0x0FF55C, 0x0000004

gUnk_080FF560:: @ 080FF560
	.incbin "baserom.gba", 0x0FF560, 0x0000004

gUnk_080FF564:: @ 080FF564
	.incbin "baserom.gba", 0x0FF564, 0x0000004

gUnk_080FF568:: @ 080FF568
	.incbin "baserom.gba", 0x0FF568, 0x0000004

gUnk_080FF56C:: @ 080FF56C
	.incbin "baserom.gba", 0x0FF56C, 0x0000004

gUnk_080FF570:: @ 080FF570
	.incbin "baserom.gba", 0x0FF570, 0x0000004

gUnk_080FF574:: @ 080FF574
	.incbin "baserom.gba", 0x0FF574, 0x0000004

gUnk_080FF578:: @ 080FF578
	.incbin "baserom.gba", 0x0FF578, 0x0000004

gUnk_080FF57C:: @ 080FF57C
	.incbin "baserom.gba", 0x0FF57C, 0x0000004

gUnk_080FF580:: @ 080FF580
	.incbin "baserom.gba", 0x0FF580, 0x0000004

gUnk_080FF584:: @ 080FF584
	.incbin "baserom.gba", 0x0FF584, 0x0000004

gUnk_080FF588:: @ 080FF588
	.incbin "baserom.gba", 0x0FF588, 0x0000004

gUnk_080FF58C:: @ 080FF58C
	.incbin "baserom.gba", 0x0FF58C, 0x0000004

gUnk_080FF590:: @ 080FF590
	.incbin "baserom.gba", 0x0FF590, 0x0000004

gUnk_080FF594:: @ 080FF594
	.incbin "baserom.gba", 0x0FF594, 0x0000004

gUnk_080FF598:: @ 080FF598
	.incbin "baserom.gba", 0x0FF598, 0x0000004

gUnk_080FF59C:: @ 080FF59C
	.incbin "baserom.gba", 0x0FF59C, 0x0000004

gUnk_080FF5A0:: @ 080FF5A0
	.incbin "baserom.gba", 0x0FF5A0, 0x0000004

gUnk_080FF5A4:: @ 080FF5A4
	.incbin "baserom.gba", 0x0FF5A4, 0x0000004

gUnk_080FF5A8:: @ 080FF5A8
	.incbin "baserom.gba", 0x0FF5A8, 0x0000004

gUnk_080FF5AC:: @ 080FF5AC
	.incbin "baserom.gba", 0x0FF5AC, 0x0000004

gUnk_080FF5B0:: @ 080FF5B0
	.incbin "baserom.gba", 0x0FF5B0, 0x0000004

gUnk_080FF5B4:: @ 080FF5B4
	.incbin "baserom.gba", 0x0FF5B4, 0x0000004

gUnk_080FF5B8:: @ 080FF5B8
	.incbin "baserom.gba", 0x0FF5B8, 0x0000004

gUnk_080FF5BC:: @ 080FF5BC
	.incbin "baserom.gba", 0x0FF5BC, 0x0000004

gUnk_080FF5C0:: @ 080FF5C0
	.incbin "baserom.gba", 0x0FF5C0, 0x0000004

gUnk_080FF5C4:: @ 080FF5C4
	.incbin "baserom.gba", 0x0FF5C4, 0x0000004

gUnk_080FF5C8:: @ 080FF5C8
	.incbin "baserom.gba", 0x0FF5C8, 0x0000004

gUnk_080FF5CC:: @ 080FF5CC
	.incbin "baserom.gba", 0x0FF5CC, 0x0000004

gUnk_080FF5D0:: @ 080FF5D0
	.incbin "baserom.gba", 0x0FF5D0, 0x0000004

gUnk_080FF5D4:: @ 080FF5D4
	.incbin "baserom.gba", 0x0FF5D4, 0x0000004

gUnk_080FF5D8:: @ 080FF5D8
	.incbin "baserom.gba", 0x0FF5D8, 0x0000004

gUnk_080FF5DC:: @ 080FF5DC
	.incbin "baserom.gba", 0x0FF5DC, 0x0000004

gUnk_080FF5E0:: @ 080FF5E0
	.incbin "baserom.gba", 0x0FF5E0, 0x0000004

gUnk_080FF5E4:: @ 080FF5E4
	.incbin "baserom.gba", 0x0FF5E4, 0x0000004

gUnk_080FF5E8:: @ 080FF5E8
	.incbin "baserom.gba", 0x0FF5E8, 0x0000004

gUnk_080FF5EC:: @ 080FF5EC
	.incbin "baserom.gba", 0x0FF5EC, 0x0000004

gUnk_080FF5F0:: @ 080FF5F0
	.incbin "baserom.gba", 0x0FF5F0, 0x0000004

gUnk_080FF5F4:: @ 080FF5F4
	.incbin "baserom.gba", 0x0FF5F4, 0x0000004

gUnk_080FF5F8:: @ 080FF5F8
	.incbin "baserom.gba", 0x0FF5F8, 0x0000004

gUnk_080FF5FC:: @ 080FF5FC
	.incbin "baserom.gba", 0x0FF5FC, 0x0000004

gUnk_080FF600:: @ 080FF600
	.incbin "baserom.gba", 0x0FF600, 0x0000004

gUnk_080FF604:: @ 080FF604
	.incbin "baserom.gba", 0x0FF604, 0x0000004

gUnk_080FF608:: @ 080FF608
	.incbin "baserom.gba", 0x0FF608, 0x0000004

gUnk_080FF60C:: @ 080FF60C
	.incbin "baserom.gba", 0x0FF60C, 0x0000004

gUnk_080FF610:: @ 080FF610
	.incbin "baserom.gba", 0x0FF610, 0x0000004

gUnk_080FF614:: @ 080FF614
	.incbin "baserom.gba", 0x0FF614, 0x0000004

gUnk_080FF618:: @ 080FF618
	.incbin "baserom.gba", 0x0FF618, 0x0000004

gUnk_080FF61C:: @ 080FF61C
	.incbin "baserom.gba", 0x0FF61C, 0x0000004

gUnk_080FF620:: @ 080FF620
	.incbin "baserom.gba", 0x0FF620, 0x0000004

gUnk_080FF624:: @ 080FF624
	.incbin "baserom.gba", 0x0FF624, 0x0000004

gUnk_080FF628:: @ 080FF628
	.incbin "baserom.gba", 0x0FF628, 0x0000004

gUnk_080FF62C:: @ 080FF62C
	.incbin "baserom.gba", 0x0FF62C, 0x0000004

gUnk_080FF630:: @ 080FF630
	.incbin "baserom.gba", 0x0FF630, 0x0000004

gUnk_080FF634:: @ 080FF634
	.incbin "baserom.gba", 0x0FF634, 0x0000004

gUnk_080FF638:: @ 080FF638
	.incbin "baserom.gba", 0x0FF638, 0x0000004

gUnk_080FF63C:: @ 080FF63C
	.incbin "baserom.gba", 0x0FF63C, 0x0000004

gUnk_080FF640:: @ 080FF640
	.incbin "baserom.gba", 0x0FF640, 0x0000004

gUnk_080FF644:: @ 080FF644
	.incbin "baserom.gba", 0x0FF644, 0x0000004

gUnk_080FF648:: @ 080FF648
	.incbin "baserom.gba", 0x0FF648, 0x0000004

gUnk_080FF64C:: @ 080FF64C
	.incbin "baserom.gba", 0x0FF64C, 0x0000004

gUnk_080FF650:: @ 080FF650
	.incbin "baserom.gba", 0x0FF650, 0x0000004

gUnk_080FF654:: @ 080FF654
	.incbin "baserom.gba", 0x0FF654, 0x0000004

gUnk_080FF658:: @ 080FF658
	.incbin "baserom.gba", 0x0FF658, 0x0000004

gUnk_080FF65C:: @ 080FF65C
	.incbin "baserom.gba", 0x0FF65C, 0x0000004

gUnk_080FF660:: @ 080FF660
	.incbin "baserom.gba", 0x0FF660, 0x0000004

gUnk_080FF664:: @ 080FF664
	.incbin "baserom.gba", 0x0FF664, 0x0000004

gUnk_080FF668:: @ 080FF668
	.incbin "baserom.gba", 0x0FF668, 0x0000004

gUnk_080FF66C:: @ 080FF66C
	.incbin "baserom.gba", 0x0FF66C, 0x0000004

gUnk_080FF670:: @ 080FF670
	.incbin "baserom.gba", 0x0FF670, 0x0000004

gUnk_080FF674:: @ 080FF674
	.incbin "baserom.gba", 0x0FF674, 0x0000004

gUnk_080FF678:: @ 080FF678
	.incbin "baserom.gba", 0x0FF678, 0x0000004

gUnk_080FF67C:: @ 080FF67C
	.incbin "baserom.gba", 0x0FF67C, 0x0000004

gUnk_080FF680:: @ 080FF680
	.incbin "baserom.gba", 0x0FF680, 0x0000004

gUnk_080FF684:: @ 080FF684
	.incbin "baserom.gba", 0x0FF684, 0x0000004

gUnk_080FF688:: @ 080FF688
	.incbin "baserom.gba", 0x0FF688, 0x0000004

gUnk_080FF68C:: @ 080FF68C
	.incbin "baserom.gba", 0x0FF68C, 0x0000004

gUnk_080FF690:: @ 080FF690
	.incbin "baserom.gba", 0x0FF690, 0x0000004

gUnk_080FF694:: @ 080FF694
	.incbin "baserom.gba", 0x0FF694, 0x0000004

gUnk_080FF698:: @ 080FF698
	.incbin "baserom.gba", 0x0FF698, 0x0000004

gUnk_080FF69C:: @ 080FF69C
	.incbin "baserom.gba", 0x0FF69C, 0x0000004

gUnk_080FF6A0:: @ 080FF6A0
	.incbin "baserom.gba", 0x0FF6A0, 0x0000004

gUnk_080FF6A4:: @ 080FF6A4
	.incbin "baserom.gba", 0x0FF6A4, 0x0000004

gUnk_080FF6A8:: @ 080FF6A8
	.incbin "baserom.gba", 0x0FF6A8, 0x0000004

gUnk_080FF6AC:: @ 080FF6AC
	.incbin "baserom.gba", 0x0FF6AC, 0x0000004

gUnk_080FF6B0:: @ 080FF6B0
	.incbin "baserom.gba", 0x0FF6B0, 0x0000004

gUnk_080FF6B4:: @ 080FF6B4
	.incbin "baserom.gba", 0x0FF6B4, 0x0000004

gUnk_080FF6B8:: @ 080FF6B8
	.incbin "baserom.gba", 0x0FF6B8, 0x0000004

gUnk_080FF6BC:: @ 080FF6BC
	.incbin "baserom.gba", 0x0FF6BC, 0x0000004

gUnk_080FF6C0:: @ 080FF6C0
	.incbin "baserom.gba", 0x0FF6C0, 0x0000004

gUnk_080FF6C4:: @ 080FF6C4
	.incbin "baserom.gba", 0x0FF6C4, 0x0000004

gUnk_080FF6C8:: @ 080FF6C8
	.incbin "baserom.gba", 0x0FF6C8, 0x0000004

gUnk_080FF6CC:: @ 080FF6CC
	.incbin "baserom.gba", 0x0FF6CC, 0x0000004

gUnk_080FF6D0:: @ 080FF6D0
	.incbin "baserom.gba", 0x0FF6D0, 0x0000004

gUnk_080FF6D4:: @ 080FF6D4
	.incbin "baserom.gba", 0x0FF6D4, 0x0000004

gUnk_080FF6D8:: @ 080FF6D8
	.incbin "baserom.gba", 0x0FF6D8, 0x0000004

gUnk_080FF6DC:: @ 080FF6DC
	.incbin "baserom.gba", 0x0FF6DC, 0x0000004

gUnk_080FF6E0:: @ 080FF6E0
	.incbin "baserom.gba", 0x0FF6E0, 0x0000004

gUnk_080FF6E4:: @ 080FF6E4
	.incbin "baserom.gba", 0x0FF6E4, 0x0000004

gUnk_080FF6E8:: @ 080FF6E8
	.incbin "baserom.gba", 0x0FF6E8, 0x0000004

gUnk_080FF6EC:: @ 080FF6EC
	.incbin "baserom.gba", 0x0FF6EC, 0x0000004

gUnk_080FF6F0:: @ 080FF6F0
	.incbin "baserom.gba", 0x0FF6F0, 0x0000004

gUnk_080FF6F4:: @ 080FF6F4
	.incbin "baserom.gba", 0x0FF6F4, 0x0000004

gUnk_080FF6F8:: @ 080FF6F8
	.incbin "baserom.gba", 0x0FF6F8, 0x0000004

gUnk_080FF6FC:: @ 080FF6FC
	.incbin "baserom.gba", 0x0FF6FC, 0x0000004

gUnk_080FF700:: @ 080FF700
	.incbin "baserom.gba", 0x0FF700, 0x0000004

gUnk_080FF704:: @ 080FF704
	.incbin "baserom.gba", 0x0FF704, 0x0000004

gUnk_080FF708:: @ 080FF708
	.incbin "baserom.gba", 0x0FF708, 0x0000004

gUnk_080FF70C:: @ 080FF70C
	.incbin "baserom.gba", 0x0FF70C, 0x0000004

gUnk_080FF710:: @ 080FF710
	.incbin "baserom.gba", 0x0FF710, 0x0000004

gUnk_080FF714:: @ 080FF714
	.incbin "baserom.gba", 0x0FF714, 0x0000004

gUnk_080FF718:: @ 080FF718
	.incbin "baserom.gba", 0x0FF718, 0x0000004

gUnk_080FF71C:: @ 080FF71C
	.incbin "baserom.gba", 0x0FF71C, 0x0000004

gUnk_080FF720:: @ 080FF720
	.incbin "baserom.gba", 0x0FF720, 0x0000004

gUnk_080FF724:: @ 080FF724
	.incbin "baserom.gba", 0x0FF724, 0x0000004

gUnk_080FF728:: @ 080FF728
	.incbin "baserom.gba", 0x0FF728, 0x0000004

gUnk_080FF72C:: @ 080FF72C
	.incbin "baserom.gba", 0x0FF72C, 0x0000004

gUnk_080FF730:: @ 080FF730
	.incbin "baserom.gba", 0x0FF730, 0x000000C

gUnk_080FF73C:: @ 080FF73C
	.incbin "baserom.gba", 0x0FF73C, 0x0000008

gUnk_080FF744:: @ 080FF744
	.incbin "baserom.gba", 0x0FF744, 0x000000C

gUnk_080FF750:: @ 080FF750
	.incbin "baserom.gba", 0x0FF750, 0x000000C

gUnk_080FF75C:: @ 080FF75C
	.incbin "baserom.gba", 0x0FF75C, 0x0000014

gUnk_080FF770:: @ 080FF770
	.incbin "baserom.gba", 0x0FF770, 0x0000008

gUnk_080FF778:: @ 080FF778
	.incbin "baserom.gba", 0x0FF778, 0x0000008

gUnk_080FF780:: @ 080FF780
	.incbin "baserom.gba", 0x0FF780, 0x0000008

gUnk_080FF788:: @ 080FF788
	.incbin "baserom.gba", 0x0FF788, 0x0000008

gUnk_080FF790:: @ 080FF790
	.incbin "baserom.gba", 0x0FF790, 0x0000008

gUnk_080FF798:: @ 080FF798
	.incbin "baserom.gba", 0x0FF798, 0x0000008

gUnk_080FF7A0:: @ 080FF7A0
	.incbin "baserom.gba", 0x0FF7A0, 0x0000008

gUnk_080FF7A8:: @ 080FF7A8
	.incbin "baserom.gba", 0x0FF7A8, 0x0000008

gUnk_080FF7B0:: @ 080FF7B0
	.incbin "baserom.gba", 0x0FF7B0, 0x0000008

gUnk_080FF7B8:: @ 080FF7B8
	.incbin "baserom.gba", 0x0FF7B8, 0x0000008

gUnk_080FF7C0:: @ 080FF7C0
	.incbin "baserom.gba", 0x0FF7C0, 0x0000008

gUnk_080FF7C8:: @ 080FF7C8
	.incbin "baserom.gba", 0x0FF7C8, 0x0000008

gUnk_080FF7D0:: @ 080FF7D0
	.incbin "baserom.gba", 0x0FF7D0, 0x0000008

gUnk_080FF7D8:: @ 080FF7D8
	.incbin "baserom.gba", 0x0FF7D8, 0x0000008

gUnk_080FF7E0:: @ 080FF7E0
	.incbin "baserom.gba", 0x0FF7E0, 0x0000008

gUnk_080FF7E8:: @ 080FF7E8
	.incbin "baserom.gba", 0x0FF7E8, 0x0000008

gUnk_080FF7F0:: @ 080FF7F0
	.incbin "baserom.gba", 0x0FF7F0, 0x0000008

gUnk_080FF7F8:: @ 080FF7F8
	.incbin "baserom.gba", 0x0FF7F8, 0x0000010

gUnk_080FF808:: @ 080FF808
	.incbin "baserom.gba", 0x0FF808, 0x000000C

gUnk_080FF814:: @ 080FF814
	.incbin "baserom.gba", 0x0FF814, 0x0000028

gUnk_080FF83C:: @ 080FF83C
	.incbin "baserom.gba", 0x0FF83C, 0x0000008

gUnk_080FF844:: @ 080FF844
	.incbin "baserom.gba", 0x0FF844, 0x000000C

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
	.4byte gUnk_080FF844

gUnk_080FFB90:: @ 080FFB90
	.incbin "baserom.gba", 0x0FFB90, 0x0000018

gUnk_080FFBA8:: @ 080FFBA8
	.incbin "baserom.gba", 0x0FFBA8, 0x0000035

gUnk_080FFBDD:: @ 080FFBDD
	.incbin "baserom.gba", 0x0FFBDD, 0x0000013

gUnk_080FFBF0:: @ 080FFBF0
	.incbin "baserom.gba", 0x0FFBF0, 0x0000024

gUnk_080FFC14:: @ 080FFC14
	.incbin "baserom.gba", 0x0FFC14, 0x0000024

gUnk_080FFC38:: @ 080FFC38
	.incbin "baserom.gba", 0x0FFC38, 0x0000030

gUnk_080FFC68:: @ 080FFC68
	.incbin "baserom.gba", 0x0FFC68, 0x0000018

gUnk_080FFC80:: @ 080FFC80
	.incbin "baserom.gba", 0x0FFC80, 0x000000C

gUnk_080FFC8C:: @ 080FFC8C
	.incbin "baserom.gba", 0x0FFC8C, 0x000000C

gUnk_080FFC98:: @ 080FFC98
	.incbin "baserom.gba", 0x0FFC98, 0x0000018

gUnk_080FFCB0:: @ 080FFCB0
	.incbin "baserom.gba", 0x0FFCB0, 0x0000018

gUnk_080FFCC8:: @ 080FFCC8
	.incbin "baserom.gba", 0x0FFCC8, 0x000000C

gUnk_080FFCD4:: @ 080FFCD4
	.incbin "baserom.gba", 0x0FFCD4, 0x0000018

gUnk_080FFCEC:: @ 080FFCEC
	.incbin "baserom.gba", 0x0FFCEC, 0x0000001

gUnk_080FFCED:: @ 080FFCED
	.incbin "baserom.gba", 0x0FFCED, 0x0000017

gUnk_080FFD04:: @ 080FFD04
	.incbin "baserom.gba", 0x0FFD04, 0x0000018

gUnk_080FFD1C:: @ 080FFD1C
	.incbin "baserom.gba", 0x0FFD1C, 0x000000C

gUnk_080FFD28:: @ 080FFD28
	.incbin "baserom.gba", 0x0FFD28, 0x0000018

gUnk_080FFD40:: @ 080FFD40
	.incbin "baserom.gba", 0x0FFD40, 0x000000C

gUnk_080FFD4C:: @ 080FFD4C
	.incbin "baserom.gba", 0x0FFD4C, 0x000000C

gUnk_080FFD58:: @ 080FFD58
	.incbin "baserom.gba", 0x0FFD58, 0x000000C

gUnk_080FFD64:: @ 080FFD64
	.incbin "baserom.gba", 0x0FFD64, 0x000000C

gUnk_080FFD70:: @ 080FFD70
	.incbin "baserom.gba", 0x0FFD70, 0x000000C

gUnk_080FFD7C:: @ 080FFD7C
	.incbin "baserom.gba", 0x0FFD7C, 0x000000C

gUnk_080FFD88:: @ 080FFD88
	.incbin "baserom.gba", 0x0FFD88, 0x000000C

gUnk_080FFD94:: @ 080FFD94
	.incbin "baserom.gba", 0x0FFD94, 0x0000018

gUnk_080FFDAC:: @ 080FFDAC
	.incbin "baserom.gba", 0x0FFDAC, 0x0000018

gUnk_080FFDC4:: @ 080FFDC4
	.incbin "baserom.gba", 0x0FFDC4, 0x000000C

gUnk_080FFDD0:: @ 080FFDD0
	.incbin "baserom.gba", 0x0FFDD0, 0x0000018

gUnk_080FFDE8:: @ 080FFDE8
	.incbin "baserom.gba", 0x0FFDE8, 0x000000C

gUnk_080FFDF4:: @ 080FFDF4
	.incbin "baserom.gba", 0x0FFDF4, 0x0000005

gUnk_080FFDF9:: @ 080FFDF9
	.incbin "baserom.gba", 0x0FFDF9, 0x0000007

gUnk_080FFE00:: @ 080FFE00
	.incbin "baserom.gba", 0x0FFE00, 0x0000018

gUnk_080FFE18:: @ 080FFE18
	.incbin "baserom.gba", 0x0FFE18, 0x0000018

gUnk_080FFE30:: @ 080FFE30
	.incbin "baserom.gba", 0x0FFE30, 0x000003C

gUnk_080FFE6C:: @ 080FFE6C
	.incbin "baserom.gba", 0x0FFE6C, 0x000003C

gUnk_080FFEA8:: @ 080FFEA8
	.incbin "baserom.gba", 0x0FFEA8, 0x000003C

gUnk_080FFEE4:: @ 080FFEE4
	.incbin "baserom.gba", 0x0FFEE4, 0x000003C

gUnk_080FFF20:: @ 080FFF20
	.incbin "baserom.gba", 0x0FFF20, 0x000003C

gUnk_080FFF5C:: @ 080FFF5C
	.incbin "baserom.gba", 0x0FFF5C, 0x000003C

gUnk_080FFF98:: @ 080FFF98
	.incbin "baserom.gba", 0x0FFF98, 0x0000030

gUnk_080FFFC8:: @ 080FFFC8
	.incbin "baserom.gba", 0x0FFFC8, 0x0000018

gUnk_080FFFE0:: @ 080FFFE0
	.incbin "baserom.gba", 0x0FFFE0, 0x000000C

gUnk_080FFFEC:: @ 080FFFEC
	.incbin "baserom.gba", 0x0FFFEC, 0x000000C

gUnk_080FFFF8:: @ 080FFFF8
	.incbin "baserom.gba", 0x0FFFF8, 0x0000008

gUnk_08100000:: @ 08100000
	.incbin "baserom.gba", 0x100000, 0x0000001

gUnk_08100001:: @ 08100001
	.incbin "baserom.gba", 0x100001, 0x0000002

gUnk_08100003:: @ 08100003
	.incbin "baserom.gba", 0x100003, 0x0000001

gUnk_08100004:: @ 08100004
	.incbin "baserom.gba", 0x100004, 0x000000C

gUnk_08100010:: @ 08100010
	.incbin "baserom.gba", 0x100010, 0x0000005

gUnk_08100015:: @ 08100015
	.incbin "baserom.gba", 0x100015, 0x0000007

gUnk_0810001C:: @ 0810001C
	.incbin "baserom.gba", 0x10001C, 0x000000C

gUnk_08100028:: @ 08100028
	.incbin "baserom.gba", 0x100028, 0x0000004

gUnk_0810002C:: @ 0810002C
	.incbin "baserom.gba", 0x10002C, 0x0000008

gUnk_08100034:: @ 08100034
	.incbin "baserom.gba", 0x100034, 0x000000B

gUnk_0810003F:: @ 0810003F
	.incbin "baserom.gba", 0x10003F, 0x0000001

gUnk_08100040:: @ 08100040
	.incbin "baserom.gba", 0x100040, 0x0000002

gUnk_08100042:: @ 08100042
	.incbin "baserom.gba", 0x100042, 0x000000A

gUnk_0810004C:: @ 0810004C
	.incbin "baserom.gba", 0x10004C, 0x000000C

gUnk_08100058:: @ 08100058
	.incbin "baserom.gba", 0x100058, 0x000000C

gUnk_08100064:: @ 08100064
	.incbin "baserom.gba", 0x100064, 0x000000C

gUnk_08100070:: @ 08100070
	.incbin "baserom.gba", 0x100070, 0x000000C

gUnk_0810007C:: @ 0810007C
	.incbin "baserom.gba", 0x10007C, 0x000000C

gUnk_08100088:: @ 08100088
	.incbin "baserom.gba", 0x100088, 0x000000C

gUnk_08100094:: @ 08100094
	.incbin "baserom.gba", 0x100094, 0x000000C

gUnk_081000A0:: @ 081000A0
	.incbin "baserom.gba", 0x1000A0, 0x000000C

gUnk_081000AC:: @ 081000AC
	.incbin "baserom.gba", 0x1000AC, 0x000000C

gUnk_081000B8:: @ 081000B8
	.incbin "baserom.gba", 0x1000B8, 0x000000C

gUnk_081000C4:: @ 081000C4
	.incbin "baserom.gba", 0x1000C4, 0x000000C

gUnk_081000D0:: @ 081000D0
	.incbin "baserom.gba", 0x1000D0, 0x000000C

gUnk_081000DC:: @ 081000DC
	.incbin "baserom.gba", 0x1000DC, 0x0000008

gUnk_081000E4:: @ 081000E4
	.incbin "baserom.gba", 0x1000E4, 0x0000004

gUnk_081000E8:: @ 081000E8
	.incbin "baserom.gba", 0x1000E8, 0x0000008

gUnk_081000F0:: @ 081000F0
	.incbin "baserom.gba", 0x1000F0, 0x0000004

gUnk_081000F4:: @ 081000F4
	.incbin "baserom.gba", 0x1000F4, 0x000000C

gUnk_08100100:: @ 08100100
	.incbin "baserom.gba", 0x100100, 0x0000007

gUnk_08100107:: @ 08100107
	.incbin "baserom.gba", 0x100107, 0x0000002

gUnk_08100109:: @ 08100109
	.incbin "baserom.gba", 0x100109, 0x0000003

gUnk_0810010C:: @ 0810010C
	.incbin "baserom.gba", 0x10010C, 0x000000C

gUnk_08100118:: @ 08100118
	.incbin "baserom.gba", 0x100118, 0x0000008

gUnk_08100120:: @ 08100120
	.incbin "baserom.gba", 0x100120, 0x0000006

gUnk_08100126:: @ 08100126
	.incbin "baserom.gba", 0x100126, 0x000000A

gUnk_08100130:: @ 08100130
	.incbin "baserom.gba", 0x100130, 0x0000018

gUnk_08100148:: @ 08100148
	.incbin "baserom.gba", 0x100148, 0x0000018

gUnk_08100160:: @ 08100160
	.incbin "baserom.gba", 0x100160, 0x0000018

gUnk_08100178:: @ 08100178
	.incbin "baserom.gba", 0x100178, 0x0000018

gUnk_08100190:: @ 08100190
	.incbin "baserom.gba", 0x100190, 0x0000018

gUnk_081001A8:: @ 081001A8
	.incbin "baserom.gba", 0x1001A8, 0x0000018

gUnk_081001C0:: @ 081001C0
	.incbin "baserom.gba", 0x1001C0, 0x0000018

gUnk_081001D8:: @ 081001D8
	.incbin "baserom.gba", 0x1001D8, 0x0000018

gUnk_081001F0:: @ 081001F0
	.incbin "baserom.gba", 0x1001F0, 0x0000009

gUnk_081001F9:: @ 081001F9
	.incbin "baserom.gba", 0x1001F9, 0x000000D

gUnk_08100206:: @ 08100206
	.incbin "baserom.gba", 0x100206, 0x0000002

gUnk_08100208:: @ 08100208
	.incbin "baserom.gba", 0x100208, 0x0000018

gUnk_08100220:: @ 08100220
	.incbin "baserom.gba", 0x100220, 0x0000018

gUnk_08100238:: @ 08100238
	.incbin "baserom.gba", 0x100238, 0x0000018

gUnk_08100250:: @ 08100250
	.incbin "baserom.gba", 0x100250, 0x0000018

gUnk_08100268:: @ 08100268
	.incbin "baserom.gba", 0x100268, 0x0000018

gUnk_08100280:: @ 08100280
	.incbin "baserom.gba", 0x100280, 0x0000018

gUnk_08100298:: @ 08100298
	.incbin "baserom.gba", 0x100298, 0x0000018

gUnk_081002B0:: @ 081002B0
	.incbin "baserom.gba", 0x1002B0, 0x0000018

gUnk_081002C8:: @ 081002C8
	.incbin "baserom.gba", 0x1002C8, 0x0000018

gUnk_081002E0:: @ 081002E0
	.incbin "baserom.gba", 0x1002E0, 0x000000C

gUnk_081002EC:: @ 081002EC
	.incbin "baserom.gba", 0x1002EC, 0x000000C

gUnk_081002F8:: @ 081002F8
	.incbin "baserom.gba", 0x1002F8, 0x000000C

gUnk_08100304:: @ 08100304
	.incbin "baserom.gba", 0x100304, 0x000000C

gUnk_08100310:: @ 08100310
	.incbin "baserom.gba", 0x100310, 0x0000007

gUnk_08100317:: @ 08100317
	.incbin "baserom.gba", 0x100317, 0x0000011

gUnk_08100328:: @ 08100328
	.incbin "baserom.gba", 0x100328, 0x0000030

gUnk_08100358:: @ 08100358
	.incbin "baserom.gba", 0x100358, 0x0000030

gUnk_08100388:: @ 08100388
	.incbin "baserom.gba", 0x100388, 0x0000054

gUnk_081003DC:: @ 081003DC
	.incbin "baserom.gba", 0x1003DC, 0x0000024

gUnk_08100400:: @ 08100400
	.incbin "baserom.gba", 0x100400, 0x0000001

gUnk_08100401:: @ 08100401
	.incbin "baserom.gba", 0x100401, 0x0000006

gUnk_08100407:: @ 08100407
	.incbin "baserom.gba", 0x100407, 0x000001D

gUnk_08100424:: @ 08100424
	.incbin "baserom.gba", 0x100424, 0x0000048

gUnk_0810046C:: @ 0810046C
	.incbin "baserom.gba", 0x10046C, 0x0000048

gUnk_081004B4:: @ 081004B4
	.incbin "baserom.gba", 0x1004B4, 0x0000018

gUnk_081004CC:: @ 081004CC
	.incbin "baserom.gba", 0x1004CC, 0x0000024

gUnk_081004F0:: @ 081004F0
	.incbin "baserom.gba", 0x1004F0, 0x0000008

gUnk_081004F8:: @ 081004F8
	.incbin "baserom.gba", 0x1004F8, 0x0000002

gUnk_081004FA:: @ 081004FA
	.incbin "baserom.gba", 0x1004FA, 0x0000004

gUnk_081004FE:: @ 081004FE
	.incbin "baserom.gba", 0x1004FE, 0x0000012

gUnk_08100510:: @ 08100510
	.incbin "baserom.gba", 0x100510, 0x0000001

gUnk_08100511:: @ 08100511
	.incbin "baserom.gba", 0x100511, 0x0000003

gUnk_08100514:: @ 08100514
	.incbin "baserom.gba", 0x100514, 0x000000C

gUnk_08100520:: @ 08100520
	.incbin "baserom.gba", 0x100520, 0x0000021

gUnk_08100541:: @ 08100541
	.incbin "baserom.gba", 0x100541, 0x000000F

gUnk_08100550:: @ 08100550
	.incbin "baserom.gba", 0x100550, 0x0000030

gUnk_08100580:: @ 08100580
	.incbin "baserom.gba", 0x100580, 0x0000030

gUnk_081005B0:: @ 081005B0
	.incbin "baserom.gba", 0x1005B0, 0x0000030

gUnk_081005E0:: @ 081005E0
	.incbin "baserom.gba", 0x1005E0, 0x000001B

gUnk_081005FB:: @ 081005FB
	.incbin "baserom.gba", 0x1005FB, 0x0000004

gUnk_081005FF:: @ 081005FF
	.incbin "baserom.gba", 0x1005FF, 0x0000001

gUnk_08100600:: @ 08100600
	.incbin "baserom.gba", 0x100600, 0x0000005

gUnk_08100605:: @ 08100605
	.incbin "baserom.gba", 0x100605, 0x0000001

gUnk_08100606:: @ 08100606
	.incbin "baserom.gba", 0x100606, 0x000000A

gUnk_08100610:: @ 08100610
	.incbin "baserom.gba", 0x100610, 0x0000010

gUnk_08100620:: @ 08100620
	.incbin "baserom.gba", 0x100620, 0x0000020

gUnk_08100640:: @ 08100640
	.incbin "baserom.gba", 0x100640, 0x0000030

gUnk_08100670:: @ 08100670
	.incbin "baserom.gba", 0x100670, 0x0000011

gUnk_08100681:: @ 08100681
	.incbin "baserom.gba", 0x100681, 0x000001F

gUnk_081006A0:: @ 081006A0
	.incbin "baserom.gba", 0x1006A0, 0x0000030

gUnk_081006D0:: @ 081006D0
	.incbin "baserom.gba", 0x1006D0, 0x0000030

gUnk_08100700:: @ 08100700
	.incbin "baserom.gba", 0x100700, 0x0000010

gUnk_08100710:: @ 08100710
	.incbin "baserom.gba", 0x100710, 0x0000010

gUnk_08100720:: @ 08100720
	.incbin "baserom.gba", 0x100720, 0x0000010

gUnk_08100730:: @ 08100730
	.incbin "baserom.gba", 0x100730, 0x0000010

gUnk_08100740:: @ 08100740
	.incbin "baserom.gba", 0x100740, 0x0000010

gUnk_08100750:: @ 08100750
	.incbin "baserom.gba", 0x100750, 0x0000010

gUnk_08100760:: @ 08100760
	.incbin "baserom.gba", 0x100760, 0x0000020

gUnk_08100780:: @ 08100780
	.incbin "baserom.gba", 0x100780, 0x0000001

gUnk_08100781:: @ 08100781
	.incbin "baserom.gba", 0x100781, 0x000000F

gUnk_08100790:: @ 08100790
	.incbin "baserom.gba", 0x100790, 0x0000030

gUnk_081007C0:: @ 081007C0
	.incbin "baserom.gba", 0x1007C0, 0x0000020

gUnk_081007E0:: @ 081007E0
	.incbin "baserom.gba", 0x1007E0, 0x0000010

gUnk_081007F0:: @ 081007F0
	.incbin "baserom.gba", 0x1007F0, 0x000000E

gUnk_081007FE:: @ 081007FE
	.incbin "baserom.gba", 0x1007FE, 0x0000001

gUnk_081007FF:: @ 081007FF
	.incbin "baserom.gba", 0x1007FF, 0x0000001

gUnk_08100800:: @ 08100800
	.incbin "baserom.gba", 0x100800, 0x0000004

gUnk_08100804:: @ 08100804
	.incbin "baserom.gba", 0x100804, 0x0000005

gUnk_08100809:: @ 08100809
	.incbin "baserom.gba", 0x100809, 0x0000007

gUnk_08100810:: @ 08100810
	.incbin "baserom.gba", 0x100810, 0x0000003

gUnk_08100813:: @ 08100813
	.incbin "baserom.gba", 0x100813, 0x000000D

gUnk_08100820:: @ 08100820
	.incbin "baserom.gba", 0x100820, 0x0000021

gUnk_08100841:: @ 08100841
	.incbin "baserom.gba", 0x100841, 0x000000F

gUnk_08100850:: @ 08100850
	.incbin "baserom.gba", 0x100850, 0x0000030

gUnk_08100880:: @ 08100880
	.incbin "baserom.gba", 0x100880, 0x0000001

gUnk_08100881:: @ 08100881
	.incbin "baserom.gba", 0x100881, 0x000002F

gUnk_081008B0:: @ 081008B0
	.incbin "baserom.gba", 0x1008B0, 0x0000030

gUnk_081008E0:: @ 081008E0
	.incbin "baserom.gba", 0x1008E0, 0x0000023

gUnk_08100903:: @ 08100903
	.incbin "baserom.gba", 0x100903, 0x0000001

gUnk_08100904:: @ 08100904
	.incbin "baserom.gba", 0x100904, 0x000000C

gUnk_08100910:: @ 08100910
	.incbin "baserom.gba", 0x100910, 0x0000030

gUnk_08100940:: @ 08100940
	.incbin "baserom.gba", 0x100940, 0x0000030

gUnk_08100970:: @ 08100970
	.incbin "baserom.gba", 0x100970, 0x000003C

gUnk_081009AC:: @ 081009AC
	.incbin "baserom.gba", 0x1009AC, 0x000000C

gUnk_081009B8:: @ 081009B8
	.incbin "baserom.gba", 0x1009B8, 0x000000C

gUnk_081009C4:: @ 081009C4
	.incbin "baserom.gba", 0x1009C4, 0x000000C

gUnk_081009D0:: @ 081009D0
	.incbin "baserom.gba", 0x1009D0, 0x0000009

gUnk_081009D9:: @ 081009D9
	.incbin "baserom.gba", 0x1009D9, 0x0000003

gUnk_081009DC:: @ 081009DC
	.incbin "baserom.gba", 0x1009DC, 0x000000C

gUnk_081009E8:: @ 081009E8
	.incbin "baserom.gba", 0x1009E8, 0x0000005

gUnk_081009ED:: @ 081009ED
	.incbin "baserom.gba", 0x1009ED, 0x0000007

gUnk_081009F4:: @ 081009F4
	.incbin "baserom.gba", 0x1009F4, 0x000000C

gUnk_08100A00:: @ 08100A00
	.incbin "baserom.gba", 0x100A00, 0x0000006

gUnk_08100A06:: @ 08100A06
	.incbin "baserom.gba", 0x100A06, 0x0000004

gUnk_08100A0A:: @ 08100A0A
	.incbin "baserom.gba", 0x100A0A, 0x0000002

gUnk_08100A0C:: @ 08100A0C
	.incbin "baserom.gba", 0x100A0C, 0x0000005

gUnk_08100A11:: @ 08100A11
	.incbin "baserom.gba", 0x100A11, 0x000001F

gUnk_08100A30:: @ 08100A30
	.incbin "baserom.gba", 0x100A30, 0x0000054

gUnk_08100A84:: @ 08100A84
	.incbin "baserom.gba", 0x100A84, 0x000000C

gUnk_08100A90:: @ 08100A90
	.incbin "baserom.gba", 0x100A90, 0x000000C

gUnk_08100A9C:: @ 08100A9C
	.incbin "baserom.gba", 0x100A9C, 0x000000C

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
	.4byte gUnk_080FFD1C
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
