	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080FC908:: @ 080FC908
	.4byte sub_08050888
	.4byte sub_080508E4
	.4byte sub_08050910

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
	.incbin "baserom.gba", 0x0FCBC4, 0x000000C
	.4byte script_08009A50
	.incbin "baserom.gba", 0x0FCBD4, 0x000000C
	.4byte script_08009A84
	.incbin "baserom.gba", 0x0FCBE4, 0x000000C
	.4byte script_08009AF8
	.incbin "baserom.gba", 0x0FCBF4, 0x000000C
	.4byte script_08009A34
	.incbin "baserom.gba", 0x0FCC04, 0x0000010

gUnk_080FCC14:: @ 080FCC14
	.incbin "baserom.gba", 0x0FCC14, 0x000000C
	.4byte script_08009918
	.incbin "baserom.gba", 0x0FCC24, 0x000000C
	.4byte script_08009950
	.incbin "baserom.gba", 0x0FCC34, 0x000000C
	.4byte script_080099DC
	.incbin "baserom.gba", 0x0FCC44, 0x0000010

gUnk_080FCC54:: @ 080FCC54
	.incbin "baserom.gba", 0x0FCC54, 0x000000C
	.4byte script_08009D6C
	.incbin "baserom.gba", 0x0FCC64, 0x0000020

gUnk_080FCC84:: @ 080FCC84
	.incbin "baserom.gba", 0x0FCC84, 0x0000018

gUnk_080FCC9C:: @ 080FCC9C
	.incbin "baserom.gba", 0x0FCC9C, 0x0000018

gUnk_080FCCB4:: @ 080FCCB4
	.4byte gUnk_080FCC84
	.incbin "baserom.gba", 0x0FCCB8, 0x0000008
	.4byte gUnk_080FCC84
	.incbin "baserom.gba", 0x0FCCC4, 0x0000008
	.4byte gUnk_080FCC9C
	.incbin "baserom.gba", 0x0FCCD0, 0x0000008
	.4byte gUnk_080FCC9C
	.incbin "baserom.gba", 0x0FCCDC, 0x0000008
	.4byte gUnk_080FCC84
	.incbin "baserom.gba", 0x0FCCE8, 0x0000008
	.4byte gUnk_080FCC84
	.incbin "baserom.gba", 0x0FCCF4, 0x0000008

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
	.incbin "baserom.gba", 0x0FCD84, 0x000000C
	.4byte script_080153EC
	.incbin "baserom.gba", 0x0FCD94, 0x000000C
	.4byte script_0801550C
	.incbin "baserom.gba", 0x0FCDA4, 0x000000C
	.4byte script_08015618
	.incbin "baserom.gba", 0x0FCDB4, 0x000000C
	.4byte script_08015684
	.incbin "baserom.gba", 0x0FCDC4, 0x0000010

gUnk_080FCDD4:: @ 080FCDD4
	.4byte sub_08053ACC
	.4byte sub_08053B00
	.4byte sub_08053B10

gUnk_080FCDE0:: @ 080FCDE0
	.incbin "baserom.gba", 0x0FCDE0, 0x000000C
	.4byte script_08015CD4
	.incbin "baserom.gba", 0x0FCDF0, 0x000000C
	.4byte script_08015DF0
	.incbin "baserom.gba", 0x0FCE00, 0x000000C
	.4byte script_08015E58
	.incbin "baserom.gba", 0x0FCE10, 0x000000C
	.4byte script_08015FA4
	.incbin "baserom.gba", 0x0FCE20, 0x0000010

gUnk_080FCE30:: @ 080FCE30
	.incbin "baserom.gba", 0x0FCE30, 0x000000C
	.4byte script_08015F08
	.incbin "baserom.gba", 0x0FCE40, 0x000000C
	.4byte script_08015F3C
	.incbin "baserom.gba", 0x0FCE50, 0x000000C
	.4byte script_08015F3C
	.incbin "baserom.gba", 0x0FCE60, 0x000000C
	.4byte script_08015F3C
	.incbin "baserom.gba", 0x0FCE70, 0x000000C
	.4byte script_08015F3C
	.incbin "baserom.gba", 0x0FCE80, 0x000000C
	.4byte script_08015F3C
	.incbin "baserom.gba", 0x0FCE90, 0x000000C
	.4byte script_08015F3C
	.incbin "baserom.gba", 0x0FCEA0, 0x0000010

gUnk_080FCEB0:: @ 080FCEB0
	.4byte sub_08053B74
	.4byte sub_08053BAC
	.4byte sub_08053BBC

gUnk_080FCEBC:: @ 080FCEBC
	.incbin "baserom.gba", 0x0FCEBC, 0x000000C
	.4byte script_0800DB18
	.incbin "baserom.gba", 0x0FCECC, 0x000000C
	.4byte script_0800E58C
	.incbin "baserom.gba", 0x0FCEDC, 0x0000010

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
