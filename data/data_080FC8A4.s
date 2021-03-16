	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080FC908:: @ 080FC908
	.incbin "baserom.gba", 0x0FC908, 0x000000C

gUnk_080FC914:: @ 080FC914
	.incbin "baserom.gba", 0x0FC914, 0x0000028

gUnk_080FC93C:: @ 080FC93C
	.4byte sub_08050C54
	.4byte sub_08050D68

gUnk_080FC944:: @ 080FC944
	.4byte sub_08050DB8
	.4byte sub_08050DE4
	.4byte sub_08050E88

gUnk_080FC950:: @ 080FC950
	.4byte sub_08050EB8
	.4byte sub_08050EF4
	.4byte sub_08050FFC
	.4byte sub_0805103C

gUnk_080FC960:: @ 080FC960
	.4byte sub_08051090
	.4byte sub_080610B8
	.4byte sub_0805138C
	.4byte sub_0805144C

gUnk_080FC970:: @ 080FC970
	.incbin "baserom.gba", 0x0FC970, 0x0000010

gUnk_080FC980:: @ 080FC980
	.incbin "baserom.gba", 0x0FC980, 0x0000020

gUnk_080FC9A0:: @ 080FC9A0
	.incbin "baserom.gba", 0x0FC9A0, 0x0000010

gUnk_080FC9B0:: @ 080FC9B0
	.4byte sub_080513A8
	.4byte sub_080513C0
	.4byte sub_0805141C

gUnk_080FC9BC:: @ 080FC9BC
	.4byte FUN_080515c8
	.4byte sub_080515D4
	.4byte sub_080516E0

gUnk_080FC9C8:: @ 080FC9C8
	.4byte sub_08051738
	.4byte sub_080517EC
	.4byte sub_08051874
	.4byte sub_080518E4

gUnk_080FC9D8:: @ 080FC9D8
	.4byte sub_080519B0
	.4byte sub_08051A14
	.4byte sub_08051A90
	.4byte sub_08051D2C

gUnk_080FC9E8:: @ 080FC9E8
	.4byte InitializeNewRoom
	.4byte sub_08051AF0
	.4byte sub_08051BD0
	.4byte sub_08051CF0
	.4byte sub_0804AAB8
	.4byte sub_08051CA8
	.4byte 00000000
	.4byte sub_080A721C

gUnk_080FCA08:: @ 080FCA08
	.4byte sub_08051E84
	.4byte sub_08051F04
	.4byte sub_08051F40

gUnk_080FCA14:: @ 080FCA14
	.4byte sub_08053590
	.4byte sub_08053FB4
	.4byte sub_08053C90

gUnk_080FCA20:: @ 080FCA20
	.incbin "baserom.gba", 0x0FCA20, 0x0000050

gUnk_080FCA70:: @ 080FCA70
	.4byte sub_080520D8
	.4byte sub_0805212C
	.4byte sub_080521A0
	.4byte sub_080522F4
	.4byte nullsub_107

gUnk_080FCA84:: @ 080FCA84
	.incbin "baserom.gba", 0x0FCA84, 0x0000008

gUnk_080FCA8C:: @ 080FCA8C
	.incbin "baserom.gba", 0x0FCA8C, 0x0000018

gUnk_080FCAA4:: @ 080FCAA4
	.incbin "baserom.gba", 0x0FCAA4, 0x0000024

gUnk_080FCAC8:: @ 080FCAC8
	.incbin "baserom.gba", 0x0FCAC8, 0x000000E

gUnk_080FCAD6:: @ 080FCAD6
	.incbin "baserom.gba", 0x0FCAD6, 0x0000022

gUnk_080FCAF8:: @ 080FCAF8
	.incbin "baserom.gba", 0x0FCAF8, 0x0000020

gUnk_080FCB18:: @ 080FCB18
	.4byte sub_08053434
	.4byte nullsub_480
	.4byte sub_080534E4
	.4byte nullsub_480
	.4byte nullsub_480
	.4byte nullsub_480
	.4byte nullsub_480
	.4byte nullsub_480

gUnk_080FCB38:: @ 080FCB38
	.incbin "baserom.gba", 0x0FCB38, 0x000002A

gUnk_080FCB62:: @ 080FCB62
	.incbin "baserom.gba", 0x0FCB62, 0x0000032

gUnk_080FCB94:: @ 080FCB94
	.incbin "baserom.gba", 0x0FCB94, 0x0000020

gUnk_080FCBB4:: @ 080FCBB4
	.4byte sub_080535AC
	.4byte sub_080535F4
	.4byte nullsub_481
	.4byte sub_08053618

gUnk_080FCBC4:: @ 080FCBC4
	.incbin "baserom.gba", 0x0FCBC4, 0x0000050

gUnk_080FCC14:: @ 080FCC14
	.incbin "baserom.gba", 0x0FCC14, 0x0000040

gUnk_080FCC54:: @ 080FCC54
	.incbin "baserom.gba", 0x0FCC54, 0x0000030

gUnk_080FCC84:: @ 080FCC84
	.incbin "baserom.gba", 0x0FCC84, 0x0000018

gUnk_080FCC9C:: @ 080FCC9C
	.incbin "baserom.gba", 0x0FCC9C, 0x0000018

gUnk_080FCCB4:: @ 080FCCB4
	.incbin "baserom.gba", 0x0FCCB4, 0x0000048

gUnk_080FCCFC:: @ 080FCCFC
	.4byte sub_08053758
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053904
	.4byte sub_08053974
	.4byte nullsub_482
	.4byte sub_080539BC
	.4byte nullsub_482

gUnk_080FCD38:: @ 080FCD38
	.4byte sub_0805370C
	.4byte nullsub_482

gUnk_080FCD40:: @ 080FCD40
	.4byte sub_08053758
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_08053800
	.4byte sub_08053894
	.4byte sub_080539F4
	.4byte sub_08053A1C
	.4byte sub_08053A5C
	.4byte sub_08053A90

gUnk_080FCD84:: @ 080FCD84
	.incbin "baserom.gba", 0x0FCD84, 0x0000050

gUnk_080FCDD4:: @ 080FCDD4
	.4byte sub_08053ACC
	.4byte sub_08053B00
	.4byte sub_08053B10

gUnk_080FCDE0:: @ 080FCDE0
	.incbin "baserom.gba", 0x0FCDE0, 0x0000050

gUnk_080FCE30:: @ 080FCE30
	.incbin "baserom.gba", 0x0FCE30, 0x0000080

gUnk_080FCEB0:: @ 080FCEB0
	.4byte sub_08053B74
	.4byte sub_08053BAC
	.4byte sub_08053BBC

gUnk_080FCEBC:: @ 080FCEBC
	.incbin "baserom.gba", 0x0FCEBC, 0x0000030

gUnk_080FCEEC:: @ 080FCEEC
	.4byte sub_08053C20
	.4byte nullsub_483
	.4byte sub_08053C60

gUnk_080FCEF8:: @ 080FCEF8
	.4byte sub_08053CAC
	.4byte sub_08053CAC
	.4byte sub_08053E58

gUnk_080FCF04:: @ 080FCF04
	.4byte gUnk_080FCF24
	.4byte 0x00001c58
	.4byte gUnk_080FCF44
	.4byte 0x00002058
	.4byte gUnk_080FCF64
	.4byte 0x00001d58
	.4byte gUnk_080FCF84
	.4byte 0x00002258

gUnk_080FCF24:: @ 080FCF24
	.incbin "baserom.gba", 0x0FCF24, 0x0000020

gUnk_080FCF44:: @ 080FCF44
	.incbin "baserom.gba", 0x0FCF44, 0x0000020

gUnk_080FCF64:: @ 080FCF64
	.incbin "baserom.gba", 0x0FCF64, 0x0000020

gUnk_080FCF84:: @ 080FCF84
	.incbin "baserom.gba", 0x0FCF84, 0x0000020

gUnk_080FCFA4:: @ 080FCFA4
	.4byte sub_08053CC8
	.4byte sub_08053D34
	.4byte sub_08053D90
	.4byte sub_08053DB4
	.4byte sub_08053E30

gUnk_080FCFB8:: @ 080FCFB8
	.4byte gUnk_080FCFE8
	.4byte gUnk_080FD008
	.4byte 0x10100e88
	.4byte gUnk_080FD028
	.4byte gUnk_080FD048
	.4byte 0x10101088
	.4byte gUnk_080FD078
	.4byte gUnk_080FD098
	.4byte 0x10101388
	.4byte gUnk_080FD0C8
	.4byte gUnk_080FD0E8
	.4byte 0x10101588

gUnk_080FCFE8:: @ 080FCFE8
	.incbin "baserom.gba", 0x0FCFE8, 0x0000020

gUnk_080FD008:: @ 080FD008
	.incbin "baserom.gba", 0x0FD008, 0x0000020

gUnk_080FD028:: @ 080FD028
	.incbin "baserom.gba", 0x0FD028, 0x0000020

gUnk_080FD048:: @ 080FD048
	.incbin "baserom.gba", 0x0FD048, 0x0000030

gUnk_080FD078:: @ 080FD078
	.incbin "baserom.gba", 0x0FD078, 0x0000020

gUnk_080FD098:: @ 080FD098
	.incbin "baserom.gba", 0x0FD098, 0x0000030

gUnk_080FD0C8:: @ 080FD0C8
	.incbin "baserom.gba", 0x0FD0C8, 0x0000020

gUnk_080FD0E8:: @ 080FD0E8
	.incbin "baserom.gba", 0x0FD0E8, 0x0000020

gUnk_080FD108:: @ 080FD108
	.4byte sub_08053E74
	.4byte sub_08053EC4
	.4byte sub_08053EFC
	.4byte sub_08053F20
	.4byte sub_08053EC4
	.4byte sub_08053EFC
	.4byte sub_08053F20
	.4byte sub_08053EC4
	.4byte sub_08053EFC
	.4byte sub_08053F20
	.4byte sub_08053EC4
	.4byte sub_08053F88

gUnk_080FD138:: @ 080FD138
	.4byte sub_080536D4
	.4byte sub_08053B58
	.4byte sub_0805373C
	.4byte sub_08053AB0
	.4byte sub_080536F0
	.4byte sub_08053C04

gUnk_080FD150:: @ 080FD150
	.incbin "baserom.gba", 0x0FD150, 0x0000008

gUnk_080FD158:: @ 080FD158
	.incbin "baserom.gba", 0x0FD158, 0x0000008

gUnk_080FD160:: @ 080FD160
	.incbin "baserom.gba", 0x0FD160, 0x0000008

gUnk_080FD168:: @ 080FD168
	.incbin "baserom.gba", 0x0FD168, 0x0000008

gUnk_080FD170:: @ 080FD170
	.incbin "baserom.gba", 0x0FD170, 0x0000008

gUnk_080FD178:: @ 080FD178
	.incbin "baserom.gba", 0x0FD178, 0x0000008

gUnk_080FD180:: @ 080FD180
	.incbin "baserom.gba", 0x0FD180, 0x0000008

gUnk_080FD188:: @ 080FD188
	.incbin "baserom.gba", 0x0FD188, 0x0000008

gUnk_080FD190:: @ 080FD190
	.incbin "baserom.gba", 0x0FD190, 0x0000008

gUnk_080FD198:: @ 080FD198
	.incbin "baserom.gba", 0x0FD198, 0x0000008

gUnk_080FD1A0:: @ 080FD1A0
	.incbin "baserom.gba", 0x0FD1A0, 0x0000008

gUnk_080FD1A8:: @ 080FD1A8
	.incbin "baserom.gba", 0x0FD1A8, 0x000000C

gUnk_080FD1B4:: @ 080FD1B4
	.incbin "baserom.gba", 0x0FD1B4, 0x0000010

gUnk_080FD1C4:: @ 080FD1C4
	.incbin "baserom.gba", 0x0FD1C4, 0x0000008

gUnk_080FD1CC:: @ 080FD1CC
	.incbin "baserom.gba", 0x0FD1CC, 0x0000008

gUnk_080FD1D4:: @ 080FD1D4
	.incbin "baserom.gba", 0x0FD1D4, 0x0000008

gUnk_080FD1DC:: @ 080FD1DC
	.incbin "baserom.gba", 0x0FD1DC, 0x0000008

gUnk_080FD1E4:: @ 080FD1E4
	.incbin "baserom.gba", 0x0FD1E4, 0x0000008

gUnk_080FD1EC:: @ 080FD1EC
	.incbin "baserom.gba", 0x0FD1EC, 0x0000008

gUnk_080FD1F4:: @ 080FD1F4
	.incbin "baserom.gba", 0x0FD1F4, 0x0000008

gUnk_080FD1FC:: @ 080FD1FC
	.incbin "baserom.gba", 0x0FD1FC, 0x0000008

gUnk_080FD204:: @ 080FD204
	.incbin "baserom.gba", 0x0FD204, 0x0000008

gUnk_080FD20C:: @ 080FD20C
	.incbin "baserom.gba", 0x0FD20C, 0x0000008

gUnk_080FD214:: @ 080FD214
	.incbin "baserom.gba", 0x0FD214, 0x0000008

gUnk_080FD21C:: @ 080FD21C
	.incbin "baserom.gba", 0x0FD21C, 0x0000008

gUnk_080FD224:: @ 080FD224
	.incbin "baserom.gba", 0x0FD224, 0x0000008

gUnk_080FD22C:: @ 080FD22C
	.incbin "baserom.gba", 0x0FD22C, 0x000000C

gUnk_080FD238:: @ 080FD238
	.incbin "baserom.gba", 0x0FD238, 0x0000008

gUnk_080FD240:: @ 080FD240
	.incbin "baserom.gba", 0x0FD240, 0x0000008

gUnk_080FD248:: @ 080FD248
	.incbin "baserom.gba", 0x0FD248, 0x0000008

gUnk_080FD250:: @ 080FD250
	.incbin "baserom.gba", 0x0FD250, 0x0000008

gUnk_080FD258:: @ 080FD258
	.incbin "baserom.gba", 0x0FD258, 0x0000008

gUnk_080FD260:: @ 080FD260
	.incbin "baserom.gba", 0x0FD260, 0x0000008

gUnk_080FD268:: @ 080FD268
	.incbin "baserom.gba", 0x0FD268, 0x0000008

gUnk_080FD270:: @ 080FD270
	.incbin "baserom.gba", 0x0FD270, 0x0000008

gUnk_080FD278:: @ 080FD278
	.incbin "baserom.gba", 0x0FD278, 0x0000008

gUnk_080FD280:: @ 080FD280
	.incbin "baserom.gba", 0x0FD280, 0x0000008

gUnk_080FD288:: @ 080FD288
	.incbin "baserom.gba", 0x0FD288, 0x0000008

gUnk_080FD290:: @ 080FD290
	.incbin "baserom.gba", 0x0FD290, 0x0000008

gUnk_080FD298:: @ 080FD298
	.incbin "baserom.gba", 0x0FD298, 0x0000008

gUnk_080FD2A0:: @ 080FD2A0
	.incbin "baserom.gba", 0x0FD2A0, 0x0000008

gUnk_080FD2A8:: @ 080FD2A8
	.incbin "baserom.gba", 0x0FD2A8, 0x0000008

gUnk_080FD2B0:: @ 080FD2B0
	.incbin "baserom.gba", 0x0FD2B0, 0x0000008

gUnk_080FD2B8:: @ 080FD2B8
	.incbin "baserom.gba", 0x0FD2B8, 0x0000008

gUnk_080FD2C0:: @ 080FD2C0
	.incbin "baserom.gba", 0x0FD2C0, 0x0000008

gUnk_080FD2C8:: @ 080FD2C8
	.incbin "baserom.gba", 0x0FD2C8, 0x0000008

gUnk_080FD2D0:: @ 080FD2D0
	.incbin "baserom.gba", 0x0FD2D0, 0x0000008

gUnk_080FD2D8:: @ 080FD2D8
	.incbin "baserom.gba", 0x0FD2D8, 0x0000008

gUnk_080FD2E0:: @ 080FD2E0
	.incbin "baserom.gba", 0x0FD2E0, 0x0000008

gUnk_080FD2E8:: @ 080FD2E8
	.incbin "baserom.gba", 0x0FD2E8, 0x0000008

gUnk_080FD2F0:: @ 080FD2F0
	.incbin "baserom.gba", 0x0FD2F0, 0x0000008

gUnk_080FD2F8:: @ 080FD2F8
	.incbin "baserom.gba", 0x0FD2F8, 0x0000008

gUnk_080FD300:: @ 080FD300
	.incbin "baserom.gba", 0x0FD300, 0x0000008

gUnk_080FD308:: @ 080FD308
	.incbin "baserom.gba", 0x0FD308, 0x0000008

gUnk_080FD310:: @ 080FD310
	.incbin "baserom.gba", 0x0FD310, 0x0000008

gUnk_080FD318:: @ 080FD318
	.incbin "baserom.gba", 0x0FD318, 0x0000008

gUnk_080FD320:: @ 080FD320
	.incbin "baserom.gba", 0x0FD320, 0x0000008

gUnk_080FD328:: @ 080FD328
	.incbin "baserom.gba", 0x0FD328, 0x0000008

gUnk_080FD330:: @ 080FD330
	.incbin "baserom.gba", 0x0FD330, 0x0000008

gUnk_080FD338:: @ 080FD338
	.incbin "baserom.gba", 0x0FD338, 0x0000008

gUnk_080FD340:: @ 080FD340
	.incbin "baserom.gba", 0x0FD340, 0x000000C

gUnk_080FD34C:: @ 080FD34C
	.incbin "baserom.gba", 0x0FD34C, 0x0000008

gUnk_080FD354:: @ 080FD354
	.incbin "baserom.gba", 0x0FD354, 0x0000008

gUnk_080FD35C:: @ 080FD35C
	.incbin "baserom.gba", 0x0FD35C, 0x0000008

gUnk_080FD364:: @ 080FD364
	.incbin "baserom.gba", 0x0FD364, 0x0000008

gUnk_080FD36C:: @ 080FD36C
	.incbin "baserom.gba", 0x0FD36C, 0x0000008

gUnk_080FD374:: @ 080FD374
	.incbin "baserom.gba", 0x0FD374, 0x0000008

gUnk_080FD37C:: @ 080FD37C
	.incbin "baserom.gba", 0x0FD37C, 0x0000008

gUnk_080FD384:: @ 080FD384
	.incbin "baserom.gba", 0x0FD384, 0x0000008

gUnk_080FD38C:: @ 080FD38C
	.incbin "baserom.gba", 0x0FD38C, 0x0000008

gUnk_080FD394:: @ 080FD394
	.incbin "baserom.gba", 0x0FD394, 0x0000008

gUnk_080FD39C:: @ 080FD39C
	.incbin "baserom.gba", 0x0FD39C, 0x0000008

gUnk_080FD3A4:: @ 080FD3A4
	.incbin "baserom.gba", 0x0FD3A4, 0x0000008

gUnk_080FD3AC:: @ 080FD3AC
	.incbin "baserom.gba", 0x0FD3AC, 0x0000008

gUnk_080FD3B4:: @ 080FD3B4
	.incbin "baserom.gba", 0x0FD3B4, 0x0000008

gUnk_080FD3BC:: @ 080FD3BC
	.incbin "baserom.gba", 0x0FD3BC, 0x0000008

gUnk_080FD3C4:: @ 080FD3C4
	.incbin "baserom.gba", 0x0FD3C4, 0x0000008

gUnk_080FD3CC:: @ 080FD3CC
	.incbin "baserom.gba", 0x0FD3CC, 0x0000010

gUnk_080FD3DC:: @ 080FD3DC
	.incbin "baserom.gba", 0x0FD3DC, 0x0000008

gUnk_080FD3E4:: @ 080FD3E4
	.incbin "baserom.gba", 0x0FD3E4, 0x0000008

gUnk_080FD3EC:: @ 080FD3EC
	.incbin "baserom.gba", 0x0FD3EC, 0x0000008

gUnk_080FD3F4:: @ 080FD3F4
	.incbin "baserom.gba", 0x0FD3F4, 0x0000008

gUnk_080FD3FC:: @ 080FD3FC
	.incbin "baserom.gba", 0x0FD3FC, 0x000000C

gUnk_080FD408:: @ 080FD408
	.incbin "baserom.gba", 0x0FD408, 0x0000008

gUnk_080FD410:: @ 080FD410
	.incbin "baserom.gba", 0x0FD410, 0x000000C

gUnk_080FD41C:: @ 080FD41C
	.incbin "baserom.gba", 0x0FD41C, 0x0000008

gUnk_080FD424:: @ 080FD424
	.incbin "baserom.gba", 0x0FD424, 0x0000008

gUnk_080FD42C:: @ 080FD42C
	.incbin "baserom.gba", 0x0FD42C, 0x0000008

gUnk_080FD434:: @ 080FD434
	.incbin "baserom.gba", 0x0FD434, 0x0000008

gUnk_080FD43C:: @ 080FD43C
	.incbin "baserom.gba", 0x0FD43C, 0x000000C

gUnk_080FD448:: @ 080FD448
	.incbin "baserom.gba", 0x0FD448, 0x0000008

gUnk_080FD450:: @ 080FD450
	.incbin "baserom.gba", 0x0FD450, 0x0000008

gUnk_080FD458:: @ 080FD458
	.incbin "baserom.gba", 0x0FD458, 0x0000008

gUnk_080FD460:: @ 080FD460
	.incbin "baserom.gba", 0x0FD460, 0x0000008

gUnk_080FD468:: @ 080FD468
	.incbin "baserom.gba", 0x0FD468, 0x0000008

gUnk_080FD470:: @ 080FD470
	.incbin "baserom.gba", 0x0FD470, 0x0000010

gUnk_080FD480:: @ 080FD480
	.incbin "baserom.gba", 0x0FD480, 0x0000008

gUnk_080FD488:: @ 080FD488
	.incbin "baserom.gba", 0x0FD488, 0x0000008

gUnk_080FD490:: @ 080FD490
	.incbin "baserom.gba", 0x0FD490, 0x0000008

gUnk_080FD498:: @ 080FD498
	.incbin "baserom.gba", 0x0FD498, 0x000000C

gUnk_080FD4A4:: @ 080FD4A4
	.incbin "baserom.gba", 0x0FD4A4, 0x0000014

gUnk_080FD4B8:: @ 080FD4B8
	.incbin "baserom.gba", 0x0FD4B8, 0x0000008

gUnk_080FD4C0:: @ 080FD4C0
	.incbin "baserom.gba", 0x0FD4C0, 0x0000008

gUnk_080FD4C8:: @ 080FD4C8
	.incbin "baserom.gba", 0x0FD4C8, 0x0000008

gUnk_080FD4D0:: @ 080FD4D0
	.incbin "baserom.gba", 0x0FD4D0, 0x0000008

gUnk_080FD4D8:: @ 080FD4D8
	.incbin "baserom.gba", 0x0FD4D8, 0x0000008

gUnk_080FD4E0:: @ 080FD4E0
	.incbin "baserom.gba", 0x0FD4E0, 0x0000008

gUnk_080FD4E8:: @ 080FD4E8
	.incbin "baserom.gba", 0x0FD4E8, 0x0000008

gUnk_080FD4F0:: @ 080FD4F0
	.incbin "baserom.gba", 0x0FD4F0, 0x0000008

gUnk_080FD4F8:: @ 080FD4F8
	.incbin "baserom.gba", 0x0FD4F8, 0x0000008

gUnk_080FD500:: @ 080FD500
	.incbin "baserom.gba", 0x0FD500, 0x0000008

gUnk_080FD508:: @ 080FD508
	.incbin "baserom.gba", 0x0FD508, 0x0000008

gUnk_080FD510:: @ 080FD510
	.incbin "baserom.gba", 0x0FD510, 0x0000008

gUnk_080FD518:: @ 080FD518
	.incbin "baserom.gba", 0x0FD518, 0x0000008

gUnk_080FD520:: @ 080FD520
	.incbin "baserom.gba", 0x0FD520, 0x0000008

gUnk_080FD528:: @ 080FD528
	.incbin "baserom.gba", 0x0FD528, 0x0000008

gUnk_080FD530:: @ 080FD530
	.incbin "baserom.gba", 0x0FD530, 0x0000008

gUnk_080FD538:: @ 080FD538
	.incbin "baserom.gba", 0x0FD538, 0x000000C

gUnk_080FD544:: @ 080FD544
	.incbin "baserom.gba", 0x0FD544, 0x0000008

gUnk_080FD54C:: @ 080FD54C
	.incbin "baserom.gba", 0x0FD54C, 0x000000C

gUnk_080FD558:: @ 080FD558
	.incbin "baserom.gba", 0x0FD558, 0x0000008

gUnk_080FD560:: @ 080FD560
	.incbin "baserom.gba", 0x0FD560, 0x0000008

gUnk_080FD568:: @ 080FD568
	.incbin "baserom.gba", 0x0FD568, 0x0000008

gUnk_080FD570:: @ 080FD570
	.incbin "baserom.gba", 0x0FD570, 0x0000008

gUnk_080FD578:: @ 080FD578
	.incbin "baserom.gba", 0x0FD578, 0x0000008

gUnk_080FD580:: @ 080FD580
	.incbin "baserom.gba", 0x0FD580, 0x0000008

gUnk_080FD588:: @ 080FD588
	.incbin "baserom.gba", 0x0FD588, 0x0000008

gWalletSizes:: @ 080FD590
	.incbin "baserom.gba", 0x0FD590, 0x0000010

gBombBagSizes:: @ 080FD5A0
	.incbin "baserom.gba", 0x0FD5A0, 0x0000004

gQuiverSizes:: @ 080FD5A4
	.incbin "baserom.gba", 0x0FD5A4, 0x0000004

gUnk_080FD5A8:: @ 080FD5A8
	.incbin "baserom.gba", 0x0FD5A8, 0x000000C

gUnk_080FD5B4:: @ 080FD5B4
	.incbin "baserom.gba", 0x0FD5B4, 0x00003B0

gUnk_080FD964:: @ 080FD964
	.incbin "baserom.gba", 0x0FD964, 0x00003B0

gUnk_080FDD14:: @ 080FDD14
	.incbin "baserom.gba", 0x0FDD14, 0x0000005

gUnk_080FDD19:: @ 080FDD19
	.incbin "baserom.gba", 0x0FDD19, 0x0000005

gUnk_080FDD1E:: @ 080FDD1E
	.incbin "baserom.gba", 0x0FDD1E, 0x0000005

gUnk_080FDD23:: @ 080FDD23
	.incbin "baserom.gba", 0x0FDD23, 0x0000005

gUnk_080FDD28:: @ 080FDD28
	.incbin "baserom.gba", 0x0FDD28, 0x0000005

gUnk_080FDD2D:: @ 080FDD2D
	.incbin "baserom.gba", 0x0FDD2D, 0x0000005

gUnk_080FDD32:: @ 080FDD32
	.incbin "baserom.gba", 0x0FDD32, 0x0000005

gUnk_080FDD37:: @ 080FDD37
	.incbin "baserom.gba", 0x0FDD37, 0x0000011

gUnk_080FDD48:: @ 080FDD48
	.incbin "baserom.gba", 0x0FDD48, 0x0000005

gUnk_080FDD4D:: @ 080FDD4D
	.incbin "baserom.gba", 0x0FDD4D, 0x0000005

gUnk_080FDD52:: @ 080FDD52
	.incbin "baserom.gba", 0x0FDD52, 0x0000005

gUnk_080FDD57:: @ 080FDD57
	.incbin "baserom.gba", 0x0FDD57, 0x0000005

gUnk_080FDD5C:: @ 080FDD5C
	.incbin "baserom.gba", 0x0FDD5C, 0x0000005

gUnk_080FDD61:: @ 080FDD61
	.incbin "baserom.gba", 0x0FDD61, 0x0000031

gUnk_080FDD92:: @ 080FDD92
	.incbin "baserom.gba", 0x0FDD92, 0x0000005

gUnk_080FDD97:: @ 080FDD97
	.incbin "baserom.gba", 0x0FDD97, 0x0000011

gUnk_080FDDA8:: @ 080FDDA8
	.incbin "baserom.gba", 0x0FDDA8, 0x0000005

gUnk_080FDDAD:: @ 080FDDAD
	.incbin "baserom.gba", 0x0FDDAD, 0x0000005

gUnk_080FDDB2:: @ 080FDDB2
	.incbin "baserom.gba", 0x0FDDB2, 0x0000005

gUnk_080FDDB7:: @ 080FDDB7
	.incbin "baserom.gba", 0x0FDDB7, 0x0000005

gUnk_080FDDBC:: @ 080FDDBC
	.incbin "baserom.gba", 0x0FDDBC, 0x0000005

gUnk_080FDDC1:: @ 080FDDC1
	.incbin "baserom.gba", 0x0FDDC1, 0x0000005

gUnk_080FDDC6:: @ 080FDDC6
	.incbin "baserom.gba", 0x0FDDC6, 0x0000005

gUnk_080FDDCB:: @ 080FDDCB
	.incbin "baserom.gba", 0x0FDDCB, 0x0000005

gUnk_080FDDD0:: @ 080FDDD0
	.incbin "baserom.gba", 0x0FDDD0, 0x0000005

gUnk_080FDDD5:: @ 080FDDD5
	.incbin "baserom.gba", 0x0FDDD5, 0x0000005

gUnk_080FDDDA:: @ 080FDDDA
	.incbin "baserom.gba", 0x0FDDDA, 0x0000005

gUnk_080FDDDF:: @ 080FDDDF
	.incbin "baserom.gba", 0x0FDDDF, 0x0000005

gUnk_080FDDE4:: @ 080FDDE4
	.incbin "baserom.gba", 0x0FDDE4, 0x0000011

gUnk_080FDDF5:: @ 080FDDF5
	.incbin "baserom.gba", 0x0FDDF5, 0x0000019

gUnk_080FDE0E:: @ 080FDE0E
	.incbin "baserom.gba", 0x0FDE0E, 0x0000019

gUnk_080FDE27:: @ 080FDE27
	.incbin "baserom.gba", 0x0FDE27, 0x0000019

gUnk_080FDE40:: @ 080FDE40
	.incbin "baserom.gba", 0x0FDE40, 0x0000019

gUnk_080FDE59:: @ 080FDE59
	.incbin "baserom.gba", 0x0FDE59, 0x0000019

gUnk_080FDE72:: @ 080FDE72
	.incbin "baserom.gba", 0x0FDE72, 0x0000019

gUnk_080FDE8B:: @ 080FDE8B
	.incbin "baserom.gba", 0x0FDE8B, 0x0000005

gUnk_080FDE90:: @ 080FDE90
	.incbin "baserom.gba", 0x0FDE90, 0x0000005

gUnk_080FDE95:: @ 080FDE95
	.incbin "baserom.gba", 0x0FDE95, 0x0000005

gUnk_080FDE9A:: @ 080FDE9A
	.incbin "baserom.gba", 0x0FDE9A, 0x0000005

gUnk_080FDE9F:: @ 080FDE9F
	.incbin "baserom.gba", 0x0FDE9F, 0x0000005

gUnk_080FDEA4:: @ 080FDEA4
	.incbin "baserom.gba", 0x0FDEA4, 0x0000005

gUnk_080FDEA9:: @ 080FDEA9
	.incbin "baserom.gba", 0x0FDEA9, 0x0000005

gUnk_080FDEAE:: @ 080FDEAE
	.incbin "baserom.gba", 0x0FDEAE, 0x0000005

gUnk_080FDEB3:: @ 080FDEB3
	.incbin "baserom.gba", 0x0FDEB3, 0x0000005

gUnk_080FDEB8:: @ 080FDEB8
	.incbin "baserom.gba", 0x0FDEB8, 0x0000005

gUnk_080FDEBD:: @ 080FDEBD
	.incbin "baserom.gba", 0x0FDEBD, 0x0000005

gUnk_080FDEC2:: @ 080FDEC2
	.incbin "baserom.gba", 0x0FDEC2, 0x0000005

gUnk_080FDEC7:: @ 080FDEC7
	.incbin "baserom.gba", 0x0FDEC7, 0x0000005

gUnk_080FDECC:: @ 080FDECC
	.incbin "baserom.gba", 0x0FDECC, 0x0000005

gUnk_080FDED1:: @ 080FDED1
	.incbin "baserom.gba", 0x0FDED1, 0x0000005

gUnk_080FDED6:: @ 080FDED6
	.incbin "baserom.gba", 0x0FDED6, 0x0000005

gUnk_080FDEDB:: @ 080FDEDB
	.incbin "baserom.gba", 0x0FDEDB, 0x0000005

gUnk_080FDEE0:: @ 080FDEE0
	.incbin "baserom.gba", 0x0FDEE0, 0x0000005

gUnk_080FDEE5:: @ 080FDEE5
	.incbin "baserom.gba", 0x0FDEE5, 0x0000005

gUnk_080FDEEA:: @ 080FDEEA
	.incbin "baserom.gba", 0x0FDEEA, 0x0000005

gUnk_080FDEEF:: @ 080FDEEF
	.incbin "baserom.gba", 0x0FDEEF, 0x0000005

gUnk_080FDEF4:: @ 080FDEF4
	.incbin "baserom.gba", 0x0FDEF4, 0x0000005

gUnk_080FDEF9:: @ 080FDEF9
	.incbin "baserom.gba", 0x0FDEF9, 0x0000005

gUnk_080FDEFE:: @ 080FDEFE
	.incbin "baserom.gba", 0x0FDEFE, 0x0000005

gUnk_080FDF03:: @ 080FDF03
	.incbin "baserom.gba", 0x0FDF03, 0x0000005

gUnk_080FDF08:: @ 080FDF08
	.incbin "baserom.gba", 0x0FDF08, 0x0000005

gUnk_080FDF0D:: @ 080FDF0D
	.incbin "baserom.gba", 0x0FDF0D, 0x0000005

gUnk_080FDF12:: @ 080FDF12
	.incbin "baserom.gba", 0x0FDF12, 0x0000005

gUnk_080FDF17:: @ 080FDF17
	.incbin "baserom.gba", 0x0FDF17, 0x0000011

gUnk_080FDF28:: @ 080FDF28
	.incbin "baserom.gba", 0x0FDF28, 0x000001D

gUnk_080FDF45:: @ 080FDF45
	.incbin "baserom.gba", 0x0FDF45, 0x0000005

gUnk_080FDF4A:: @ 080FDF4A
	.incbin "baserom.gba", 0x0FDF4A, 0x0000005

gUnk_080FDF4F:: @ 080FDF4F
	.incbin "baserom.gba", 0x0FDF4F, 0x0000005

gUnk_080FDF54:: @ 080FDF54
	.incbin "baserom.gba", 0x0FDF54, 0x0000005

gUnk_080FDF59:: @ 080FDF59
	.incbin "baserom.gba", 0x0FDF59, 0x0000005

gUnk_080FDF5E:: @ 080FDF5E
	.incbin "baserom.gba", 0x0FDF5E, 0x0000005

gUnk_080FDF63:: @ 080FDF63
	.incbin "baserom.gba", 0x0FDF63, 0x0000005

gUnk_080FDF68:: @ 080FDF68
	.incbin "baserom.gba", 0x0FDF68, 0x0000005

gUnk_080FDF6D:: @ 080FDF6D
	.incbin "baserom.gba", 0x0FDF6D, 0x0000005

gUnk_080FDF72:: @ 080FDF72
	.incbin "baserom.gba", 0x0FDF72, 0x0000005

gUnk_080FDF77:: @ 080FDF77
	.incbin "baserom.gba", 0x0FDF77, 0x0000005

gUnk_080FDF7C:: @ 080FDF7C
	.incbin "baserom.gba", 0x0FDF7C, 0x0000005

gUnk_080FDF81:: @ 080FDF81
	.incbin "baserom.gba", 0x0FDF81, 0x0000005

gUnk_080FDF86:: @ 080FDF86
	.incbin "baserom.gba", 0x0FDF86, 0x0000009

gUnk_080FDF8F:: @ 080FDF8F
	.incbin "baserom.gba", 0x0FDF8F, 0x0000005

gUnk_080FDF94:: @ 080FDF94
	.incbin "baserom.gba", 0x0FDF94, 0x0000005

gUnk_080FDF99:: @ 080FDF99
	.incbin "baserom.gba", 0x0FDF99, 0x0000005

gUnk_080FDF9E:: @ 080FDF9E
	.incbin "baserom.gba", 0x0FDF9E, 0x0000005

gUnk_080FDFA3:: @ 080FDFA3
	.incbin "baserom.gba", 0x0FDFA3, 0x0000005

gUnk_080FDFA8:: @ 080FDFA8
	.incbin "baserom.gba", 0x0FDFA8, 0x0000019

gUnk_080FDFC1:: @ 080FDFC1
	.incbin "baserom.gba", 0x0FDFC1, 0x0000005

gUnk_080FDFC6:: @ 080FDFC6
	.incbin "baserom.gba", 0x0FDFC6, 0x0000005

gUnk_080FDFCB:: @ 080FDFCB
	.incbin "baserom.gba", 0x0FDFCB, 0x0000005

gUnk_080FDFD0:: @ 080FDFD0
	.incbin "baserom.gba", 0x0FDFD0, 0x0000008

gUnk_080FDFD8:: @ 080FDFD8
	.4byte gUnk_080FDD14
	.4byte gUnk_080FDD19
	.4byte gUnk_080FDD1E
	.4byte gUnk_080FDD23
	.4byte gUnk_080FDD28
	.4byte gUnk_080FDD97
	.4byte gUnk_080FDD2D
	.4byte gUnk_080FDD32
	.4byte gUnk_080FDD37
	.4byte gUnk_080FDD48
	.4byte gUnk_080FDD4D
	.4byte gUnk_080FDD52
	.4byte gUnk_080FDD57
	.4byte gUnk_080FDD5C
	.4byte gUnk_080FDD61
	.4byte gUnk_080FDD92
	.4byte gUnk_080FDD97
	.4byte gUnk_080FDDA8
	.4byte gUnk_080FDDAD
	.4byte gUnk_080FDDB2
	.4byte gUnk_080FDDB7
	.4byte gUnk_080FDDBC
	.4byte gUnk_080FDDC1
	.4byte gUnk_080FDDC6
	.4byte gUnk_080FDEB8
	.4byte gUnk_080FDEC7
	.4byte gUnk_080FDEE0
	.4byte gUnk_080FDD97
	.4byte gUnk_080FDDCB
	.4byte gUnk_080FDDCB
	.4byte gUnk_080FDDCB
	.4byte gUnk_080FDDCB
	.4byte gUnk_080FDDCB
	.4byte gUnk_080FDE9A
	.4byte gUnk_080FDDDA
	.4byte gUnk_080FDDDF
	.4byte gUnk_080FDE8B
	.4byte gUnk_080FDE90
	.4byte gUnk_080FDDD0
	.4byte gUnk_080FDDD5
	.4byte gUnk_080FDDE4
	.4byte gUnk_080FDDF5
	.4byte gUnk_080FDE0E
	.4byte gUnk_080FDE27
	.4byte gUnk_080FDE40
	.4byte gUnk_080FDE59
	.4byte gUnk_080FDE72
	.4byte gUnk_080FDE9F
	.4byte gUnk_080FDEA4
	.4byte gUnk_080FDEA9
	.4byte gUnk_080FDD97
	.4byte gUnk_080FDD97
	.4byte gUnk_080FDEAE
	.4byte gUnk_080FDEB3
	.4byte gUnk_080FDE95
	.4byte gUnk_080FDED1
	.4byte gUnk_080FDEC7
	.4byte gUnk_080FDEB8
	.4byte gUnk_080FDEBD
	.4byte gUnk_080FDEC2
	.4byte gUnk_080FDECC
	.4byte gUnk_080FDFCB
	.4byte gUnk_080FDFD0
	.4byte gUnk_080FDF6D
	.4byte gUnk_080FDEE5
	.4byte gUnk_080FDEEA
	.4byte gUnk_080FDEEF
	.4byte gUnk_080FDEF4
	.4byte gUnk_080FDED6
	.4byte gUnk_080FDEDB
	.4byte gUnk_080FDEE0
	.4byte gUnk_080FDEF9
	.4byte gUnk_080FDFC1
	.4byte gUnk_080FDFC1
	.4byte gUnk_080FDFC1
	.4byte gUnk_080FDFC1
	.4byte gUnk_080FDFC1
	.4byte gUnk_080FDFC1
	.4byte gUnk_080FDFC1
	.4byte gUnk_080FDFC1
	.4byte gUnk_080FDEF9
	.4byte gUnk_080FDEFE
	.4byte gUnk_080FDF03
	.4byte gUnk_080FDF08
	.4byte gUnk_080FDF0D
	.4byte gUnk_080FDF0D
	.4byte gUnk_080FDF0D
	.4byte gUnk_080FDF4A
	.4byte gUnk_080FDF4A
	.4byte gUnk_080FDF4A
	.4byte gUnk_080FDD97
	.4byte gUnk_080FDF86
	.4byte gUnk_080FDF8F
	.4byte gUnk_080FDF63
	.4byte gUnk_080FDF68
	.4byte gUnk_080FDF12
	.4byte gUnk_080FDF17
	.4byte gUnk_080FDFC6
	.4byte gUnk_080FDF28
	.4byte gUnk_080FDF45
	.4byte gUnk_080FDF72
	.4byte gUnk_080FDF77
	.4byte gUnk_080FDF7C
	.4byte gUnk_080FDF81
	.4byte gUnk_080FDF4F
	.4byte gUnk_080FDF54
	.4byte gUnk_080FDF59
	.4byte gUnk_080FDF5E
	.4byte gUnk_080FDF94
	.4byte gUnk_080FDF99
	.4byte gUnk_080FDF9E
	.4byte gUnk_080FDFA3
	.4byte gUnk_080FDFA8
	.4byte gUnk_080FDFA8
	.4byte gUnk_080FDFA8
	.4byte gUnk_080FDD14
	.4byte gUnk_080FDD14
	.4byte gUnk_080FDD14
	.4byte 00000000

gUnk_080FE1B4:: @ 080FE1B4
	.incbin "baserom.gba", 0x0FE1B4, 0x0000012

gUnk_080FE1C6:: @ 080FE1C6
	.incbin "baserom.gba", 0x0FE1C6, 0x0000017

gUnk_080FE1DD:: @ 080FE1DD
	.incbin "baserom.gba", 0x0FE1DD, 0x00000C3

gUnk_080FE2A0:: @ 080FE2A0
	.4byte sub_0805488C
	.4byte sub_080548E8
	.4byte sub_08054920

gUnk_080FE2AC:: @ 080FE2AC
	.4byte sub_08055D80
	.4byte sub_08054E00
	.4byte sub_080558EC
	.4byte sub_08054CE8
	.4byte sub_08054C04
	.4byte sub_08055168
	.4byte sub_080552FC
	.4byte sub_08055BB0
	.4byte sub_08055414
	.4byte sub_080559E0
	.4byte sub_0805559C
	.4byte sub_080554FC
	.4byte sub_08055818
	.4byte sub_08055094
	.4byte sub_080550F8
	.4byte sub_080556F4
	.4byte sub_08055038
	.4byte sub_08054F90
	.4byte sub_08054F90
	.4byte sub_08054D90
	.4byte sub_08055888
	.4byte sub_08055690
	.4byte sub_08055E08
	.4byte sub_080557B4
	.4byte sub_08055CD8
	.4byte sub_08055AD0
	.4byte sub_08055D80
	.4byte sub_08055D80
	.4byte sub_08055D80

gUnk_080FE320:: @ 080FE320
	.incbin "baserom.gba", 0x0FE320, 0x00002F0

gUnk_080FE610:: @ 080FE610
	.incbin "baserom.gba", 0x0FE610, 0x00004B8

gUnk_080FEAC8:: @ 080FEAC8
	.incbin "baserom.gba", 0x0FEAC8, 0x0000003

gUnk_080FEACB:: @ 080FEACB
	.incbin "baserom.gba", 0x0FEACB, 0x0000023

gUnk_080FEAEE:: @ 080FEAEE
	.incbin "baserom.gba", 0x0FEAEE, 0x000002C

gUnk_080FEB1A:: @ 080FEB1A
	.incbin "baserom.gba", 0x0FEB1A, 0x00000C2

gUnk_080FEBDC:: @ 080FEBDC
	.incbin "baserom.gba", 0x0FEBDC, 0x000000C

gUnk_080FEBE8:: @ 080FEBE8
	.incbin "baserom.gba", 0x0FEBE8, 0x0000006

gUnk_080FEBEE:: @ 080FEBEE
	.incbin "baserom.gba", 0x0FEBEE, 0x000001B

gUnk_080FEC09:: @ 080FEC09
	.incbin "baserom.gba", 0x0FEC09, 0x000001F

gUnk_080FEC28:: @ 080FEC28
	.incbin "baserom.gba", 0x0FEC28, 0x00000A0

gUnk_080FECC8:: @ 080FECC8
	.incbin "baserom.gba", 0x0FECC8, 0x0000050

gUnk_080FED18:: @ 080FED18
	.incbin "baserom.gba", 0x0FED18, 0x0000040

gUnk_080FED58:: @ 080FED58
	.incbin "baserom.gba", 0x0FED58, 0x0000040

gUnk_080FED98:: @ 080FED98
	.4byte gUnk_080FEDA4
	.4byte gUnk_080FEDDA
	.4byte gUnk_080FEDF8

gUnk_080FEDA4:: @ 080FEDA4
	.incbin "baserom.gba", 0x0FEDA4, 0x0000036

gUnk_080FEDDA:: @ 080FEDDA
	.incbin "baserom.gba", 0x0FEDDA, 0x000001E

gUnk_080FEDF8:: @ 080FEDF8
	.incbin "baserom.gba", 0x0FEDF8, 0x0000020

gUnk_080FEE18:: @ 080FEE18
	.incbin "baserom.gba", 0x0FEE18, 0x0000020

gUnk_080FEE38:: @ 080FEE38
	.incbin "baserom.gba", 0x0FEE38, 0x0000010

gUnk_080FEE48:: @ 080FEE48
	.incbin "baserom.gba", 0x0FEE48, 0x0000010

gUnk_080FEE58:: @ 080FEE58
	.incbin "baserom.gba", 0x0FEE58, 0x0000020

gUnk_080FEE78:: @ 080FEE78
	.incbin "baserom.gba", 0x0FEE78, 0x0000030

	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/const/playerItem/playerItemLantern.inc"

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
	.incbin "baserom.gba", 0x0FEED4, 0x0000060

gUnk_080FEF34:: @ 080FEF34
	.4byte sub_08054DAC
	.4byte nullsub_484

gUnk_080FEF3C:: @ 080FEF3C
	.4byte sub_08054E1C
	.4byte sub_08054E5C
	.4byte sub_08054E9C

gUnk_080FEF48:: @ 080FEF48
	.incbin "baserom.gba", 0x0FEF48, 0x0000030

gUnk_080FEF78:: @ 080FEF78
	.incbin "baserom.gba", 0x0FEF78, 0x0000030

gUnk_080FEFA8:: @ 080FEFA8
	.incbin "baserom.gba", 0x0FEFA8, 0x0000040

gUnk_080FEFE8:: @ 080FEFE8
	.incbin "baserom.gba", 0x0FEFE8, 0x0000050

gUnk_080FF038:: @ 080FF038
	.incbin "baserom.gba", 0x0FF038, 0x0000060

gUnk_080FF098:: @ 080FF098
	.incbin "baserom.gba", 0x0FF098, 0x0000070

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
	.incbin "baserom.gba", 0x0FF128, 0x0000020

gUnk_080FF148:: @ 080FF148
	.4byte sub_08055054
	.4byte sub_0805508C
	.4byte sub_08055090

gUnk_080FF154:: @ 080FF154
	.incbin "baserom.gba", 0x0FF154, 0x0000020

gUnk_080FF174:: @ 080FF174
	.4byte sub_080550B0
	.4byte nullsub_487

gUnk_080FF17C:: @ 080FF17C
	.incbin "baserom.gba", 0x0FF17C, 0x0000050

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
	.incbin "baserom.gba", 0x0FF264, 0x0000020

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
	.incbin "baserom.gba", 0x0FF2C0, 0x0000040

gUnk_080FF300:: @ 080FF300
	.4byte sub_08055834
	.4byte nullsub_491

gUnk_080FF308:: @ 080FF308
	.incbin "baserom.gba", 0x0FF308, 0x0000020

gUnk_080FF328:: @ 080FF328
	.4byte sub_080558A4
	.4byte nullsub_492

gUnk_080FF330:: @ 080FF330
	.incbin "baserom.gba", 0x0FF330, 0x000000C

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
	.incbin "baserom.gba", 0x0FF378, 0x0000050

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
	.incbin "baserom.gba", 0x0FF400, 0x0000020

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
