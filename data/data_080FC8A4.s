	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080FC908:: @ 080FC908
	.4byte sub_08050888
	.4byte sub_080508E4
	.4byte sub_08050910

gUnk_080FC914:: @ 080FC914
	.incbin "assets/data_080FC8A4/gUnk_080FC914.bin"

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
	.incbin "assets/data_080FC8A4/gUnk_080FC970.bin"

gUnk_080FC980:: @ 080FC980
	.incbin "assets/data_080FC8A4/gUnk_080FC980.bin"

gUnk_080FC9A0:: @ 080FC9A0
	.incbin "assets/data_080FC8A4/gUnk_080FC9A0.bin"

gUnk_080FC9B0:: @ 080FC9B0
	.4byte sub_080513A8
	.4byte sub_080513C0
	.4byte sub_0805141C

gUnk_080FC9BC:: @ 080FC9BC
	.4byte sub_080515c8
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
	.incbin "assets/data_080FC8A4/gUnk_080FCA20.bin"

gUnk_080FCA70:: @ 080FCA70
	.4byte sub_080520D8
	.4byte sub_0805212C
	.4byte sub_080521A0
	.4byte sub_080522F4
	.4byte nullsub_107

gUnk_080FCA84:: @ 080FCA84
	.incbin "assets/data_080FC8A4/gUnk_080FCA84.bin"

gUnk_080FCA8C:: @ 080FCA8C
	.incbin "assets/data_080FC8A4/gUnk_080FCA8C.bin"

gUnk_080FCAA4:: @ 080FCAA4
	.incbin "assets/data_080FC8A4/gUnk_080FCAA4.bin"

gUnk_080FCAC8:: @ 080FCAC8
	.incbin "assets/data_080FC8A4/gUnk_080FCAC8.bin"

gUnk_080FCAD6:: @ 080FCAD6
	.incbin "assets/data_080FC8A4/gUnk_080FCAD6.bin"

gUnk_080FCAF8:: @ 080FCAF8
	.incbin "assets/data_080FC8A4/gUnk_080FCAF8.bin"

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
	.incbin "assets/data_080FC8A4/gUnk_080FCB38.bin"

gUnk_080FCB62:: @ 080FCB62
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FCB62_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FCB62_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080FC8A4/gUnk_080FCB62_2_EU.bin"
.else
	.incbin "assets/data_080FC8A4/gUnk_080FCB62_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FCB94:: @ 080FCB94
	.incbin "assets/data_080FC8A4/gUnk_080FCB94.bin"

gUnk_080FCBB4:: @ 080FCBB4
	.4byte sub_080535AC
	.4byte sub_080535F4
	.4byte nullsub_481
	.4byte sub_08053618

gUnk_080FCBC4:: @ 080FCBC4
	.incbin "assets/data_080FC8A4/gUnk_080FCBC4.bin"
	.4byte script_08009A50
	.incbin "assets/data_080FC8A4/gUnk_080FCBC4_1.bin"
	.4byte script_08009A84
	.incbin "assets/data_080FC8A4/gUnk_080FCBC4_2.bin"
	.4byte script_08009AF8
	.incbin "assets/data_080FC8A4/gUnk_080FCBC4_3.bin"
	.4byte script_08009A34
	.incbin "assets/data_080FC8A4/gUnk_080FCBC4_4.bin"

gUnk_080FCC14:: @ 080FCC14
	.incbin "assets/data_080FC8A4/gUnk_080FCC14.bin"
	.4byte script_08009918
	.incbin "assets/data_080FC8A4/gUnk_080FCC14_1.bin"
	.4byte script_08009950
	.incbin "assets/data_080FC8A4/gUnk_080FCC14_2.bin"
	.4byte script_080099DC
	.incbin "assets/data_080FC8A4/gUnk_080FCC14_3.bin"

gUnk_080FCC54:: @ 080FCC54
	.incbin "assets/data_080FC8A4/gUnk_080FCC54.bin"
	.4byte script_08009D6C
	.incbin "assets/data_080FC8A4/gUnk_080FCC54_1.bin"

gUnk_080FCC84:: @ 080FCC84
	.incbin "assets/data_080FC8A4/gUnk_080FCC84.bin"

gUnk_080FCC9C:: @ 080FCC9C
	.incbin "assets/data_080FC8A4/gUnk_080FCC9C.bin"

gUnk_080FCCB4:: @ 080FCCB4
	.4byte gUnk_080FCC84
	.incbin "assets/data_080FC8A4/gUnk_080FCCB4.bin"
	.4byte gUnk_080FCC84
	.incbin "assets/data_080FC8A4/gUnk_080FCCB4_1.bin"
	.4byte gUnk_080FCC9C
	.incbin "assets/data_080FC8A4/gUnk_080FCCB4_2.bin"
	.4byte gUnk_080FCC9C
	.incbin "assets/data_080FC8A4/gUnk_080FCCB4_3.bin"
	.4byte gUnk_080FCC84
	.incbin "assets/data_080FC8A4/gUnk_080FCCB4_4.bin"
	.4byte gUnk_080FCC84
	.incbin "assets/data_080FC8A4/gUnk_080FCCB4_5.bin"

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
	.incbin "assets/data_080FC8A4/gUnk_080FCD84.bin"
	.4byte script_080153EC
	.incbin "assets/data_080FC8A4/gUnk_080FCD84_1.bin"
	.4byte script_0801550C
	.incbin "assets/data_080FC8A4/gUnk_080FCD84_2.bin"
	.4byte script_08015618
	.incbin "assets/data_080FC8A4/gUnk_080FCD84_3.bin"
	.4byte script_08015684
	.incbin "assets/data_080FC8A4/gUnk_080FCD84_4.bin"

gUnk_080FCDD4:: @ 080FCDD4
	.4byte sub_08053ACC
	.4byte sub_08053B00
	.4byte sub_08053B10

gUnk_080FCDE0:: @ 080FCDE0
	.incbin "assets/data_080FC8A4/gUnk_080FCDE0.bin"
	.4byte script_08015CD4
	.incbin "assets/data_080FC8A4/gUnk_080FCDE0_1.bin"
	.4byte script_08015DF0
	.incbin "assets/data_080FC8A4/gUnk_080FCDE0_2.bin"
	.4byte script_08015E58
	.incbin "assets/data_080FC8A4/gUnk_080FCDE0_3.bin"
	.4byte script_08015FA4
	.incbin "assets/data_080FC8A4/gUnk_080FCDE0_4.bin"

gUnk_080FCE30:: @ 080FCE30
	.incbin "assets/data_080FC8A4/gUnk_080FCE30.bin"
	.4byte script_08015F08
	.incbin "assets/data_080FC8A4/gUnk_080FCE30_1.bin"
	.4byte script_08015F3C
	.incbin "assets/data_080FC8A4/gUnk_080FCE30_2.bin"
	.4byte script_08015F3C
	.incbin "assets/data_080FC8A4/gUnk_080FCE30_3.bin"
	.4byte script_08015F3C
	.incbin "assets/data_080FC8A4/gUnk_080FCE30_4.bin"
	.4byte script_08015F3C
	.incbin "assets/data_080FC8A4/gUnk_080FCE30_5.bin"
	.4byte script_08015F3C
	.incbin "assets/data_080FC8A4/gUnk_080FCE30_6.bin"
	.4byte script_08015F3C
	.incbin "assets/data_080FC8A4/gUnk_080FCE30_7.bin"

gUnk_080FCEB0:: @ 080FCEB0
	.4byte sub_08053B74
	.4byte sub_08053BAC
	.4byte sub_08053BBC

gUnk_080FCEBC:: @ 080FCEBC
	.incbin "assets/data_080FC8A4/gUnk_080FCEBC.bin"
	.4byte script_0800DB18
	.incbin "assets/data_080FC8A4/gUnk_080FCEBC_1.bin"
	.4byte script_0800E58C
	.incbin "assets/data_080FC8A4/gUnk_080FCEBC_2.bin"

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
	.incbin "assets/data_080FC8A4/gUnk_080FCF24.bin"

gUnk_080FCF44:: @ 080FCF44
	.incbin "assets/data_080FC8A4/gUnk_080FCF44.bin"

gUnk_080FCF64:: @ 080FCF64
	.incbin "assets/data_080FC8A4/gUnk_080FCF64.bin"

gUnk_080FCF84:: @ 080FCF84
	.incbin "assets/data_080FC8A4/gUnk_080FCF84.bin"

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
	.incbin "assets/data_080FC8A4/gUnk_080FCFE8.bin"

gUnk_080FD008:: @ 080FD008
	.incbin "assets/data_080FC8A4/gUnk_080FD008.bin"

gUnk_080FD028:: @ 080FD028
	.incbin "assets/data_080FC8A4/gUnk_080FD028.bin"

gUnk_080FD048:: @ 080FD048
	.incbin "assets/data_080FC8A4/gUnk_080FD048.bin"

gUnk_080FD078:: @ 080FD078
	.incbin "assets/data_080FC8A4/gUnk_080FD078.bin"

gUnk_080FD098:: @ 080FD098
	.incbin "assets/data_080FC8A4/gUnk_080FD098.bin"

gUnk_080FD0C8:: @ 080FD0C8
	.incbin "assets/data_080FC8A4/gUnk_080FD0C8.bin"

gUnk_080FD0E8:: @ 080FD0E8
	.incbin "assets/data_080FC8A4/gUnk_080FD0E8.bin"

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
	.incbin "assets/data_080FC8A4/gUnk_080FD150.bin"

gUnk_080FD158:: @ 080FD158
	.incbin "assets/data_080FC8A4/gUnk_080FD158.bin"

gUnk_080FD160:: @ 080FD160
	.incbin "assets/data_080FC8A4/gUnk_080FD160.bin"

gUnk_080FD168:: @ 080FD168
	.incbin "assets/data_080FC8A4/gUnk_080FD168.bin"

gUnk_080FD170:: @ 080FD170
	.incbin "assets/data_080FC8A4/gUnk_080FD170.bin"

gUnk_080FD178:: @ 080FD178
	.incbin "assets/data_080FC8A4/gUnk_080FD178.bin"

gUnk_080FD180:: @ 080FD180
	.incbin "assets/data_080FC8A4/gUnk_080FD180.bin"

gUnk_080FD188:: @ 080FD188
	.incbin "assets/data_080FC8A4/gUnk_080FD188.bin"

gUnk_080FD190:: @ 080FD190
	.incbin "assets/data_080FC8A4/gUnk_080FD190.bin"

gUnk_080FD198:: @ 080FD198
	.incbin "assets/data_080FC8A4/gUnk_080FD198.bin"

gUnk_080FD1A0:: @ 080FD1A0
	.incbin "assets/data_080FC8A4/gUnk_080FD1A0.bin"

gUnk_080FD1A8:: @ 080FD1A8
	.incbin "assets/data_080FC8A4/gUnk_080FD1A8.bin"

gUnk_080FD1B4:: @ 080FD1B4
	.incbin "assets/data_080FC8A4/gUnk_080FD1B4.bin"

gUnk_080FD1C4:: @ 080FD1C4
	.incbin "assets/data_080FC8A4/gUnk_080FD1C4.bin"

gUnk_080FD1CC:: @ 080FD1CC
	.incbin "assets/data_080FC8A4/gUnk_080FD1CC.bin"

gUnk_080FD1D4:: @ 080FD1D4
	.incbin "assets/data_080FC8A4/gUnk_080FD1D4.bin"

gUnk_080FD1DC:: @ 080FD1DC
	.incbin "assets/data_080FC8A4/gUnk_080FD1DC.bin"

gUnk_080FD1E4:: @ 080FD1E4
	.incbin "assets/data_080FC8A4/gUnk_080FD1E4.bin"

gUnk_080FD1EC:: @ 080FD1EC
	.incbin "assets/data_080FC8A4/gUnk_080FD1EC.bin"

gUnk_080FD1F4:: @ 080FD1F4
	.incbin "assets/data_080FC8A4/gUnk_080FD1F4.bin"

gUnk_080FD1FC:: @ 080FD1FC
	.incbin "assets/data_080FC8A4/gUnk_080FD1FC.bin"

gUnk_080FD204:: @ 080FD204
	.incbin "assets/data_080FC8A4/gUnk_080FD204.bin"

gUnk_080FD20C:: @ 080FD20C
	.incbin "assets/data_080FC8A4/gUnk_080FD20C.bin"

gUnk_080FD214:: @ 080FD214
	.incbin "assets/data_080FC8A4/gUnk_080FD214.bin"

gUnk_080FD21C:: @ 080FD21C
	.incbin "assets/data_080FC8A4/gUnk_080FD21C.bin"

gUnk_080FD224:: @ 080FD224
	.incbin "assets/data_080FC8A4/gUnk_080FD224.bin"

gUnk_080FD22C:: @ 080FD22C
	.incbin "assets/data_080FC8A4/gUnk_080FD22C.bin"

gUnk_080FD238:: @ 080FD238
	.incbin "assets/data_080FC8A4/gUnk_080FD238.bin"

gUnk_080FD240:: @ 080FD240
	.incbin "assets/data_080FC8A4/gUnk_080FD240.bin"

gUnk_080FD248:: @ 080FD248
	.incbin "assets/data_080FC8A4/gUnk_080FD248.bin"

gUnk_080FD250:: @ 080FD250
	.incbin "assets/data_080FC8A4/gUnk_080FD250.bin"

gUnk_080FD258:: @ 080FD258
	.incbin "assets/data_080FC8A4/gUnk_080FD258.bin"

gUnk_080FD260:: @ 080FD260
	.incbin "assets/data_080FC8A4/gUnk_080FD260.bin"

gUnk_080FD268:: @ 080FD268
	.incbin "assets/data_080FC8A4/gUnk_080FD268.bin"

gUnk_080FD270:: @ 080FD270
	.incbin "assets/data_080FC8A4/gUnk_080FD270.bin"

gUnk_080FD278:: @ 080FD278
	.incbin "assets/data_080FC8A4/gUnk_080FD278.bin"

gUnk_080FD280:: @ 080FD280
	.incbin "assets/data_080FC8A4/gUnk_080FD280.bin"

gUnk_080FD288:: @ 080FD288
	.incbin "assets/data_080FC8A4/gUnk_080FD288.bin"

gUnk_080FD290:: @ 080FD290
	.incbin "assets/data_080FC8A4/gUnk_080FD290.bin"

gUnk_080FD298:: @ 080FD298
	.incbin "assets/data_080FC8A4/gUnk_080FD298.bin"

gUnk_080FD2A0:: @ 080FD2A0
	.incbin "assets/data_080FC8A4/gUnk_080FD2A0.bin"

gUnk_080FD2A8:: @ 080FD2A8
	.incbin "assets/data_080FC8A4/gUnk_080FD2A8.bin"

gUnk_080FD2B0:: @ 080FD2B0
	.incbin "assets/data_080FC8A4/gUnk_080FD2B0.bin"

gUnk_080FD2B8:: @ 080FD2B8
	.incbin "assets/data_080FC8A4/gUnk_080FD2B8.bin"

gUnk_080FD2C0:: @ 080FD2C0
	.incbin "assets/data_080FC8A4/gUnk_080FD2C0.bin"

gUnk_080FD2C8:: @ 080FD2C8
	.incbin "assets/data_080FC8A4/gUnk_080FD2C8.bin"

gUnk_080FD2D0:: @ 080FD2D0
	.incbin "assets/data_080FC8A4/gUnk_080FD2D0.bin"

gUnk_080FD2D8:: @ 080FD2D8
	.incbin "assets/data_080FC8A4/gUnk_080FD2D8.bin"

gUnk_080FD2E0:: @ 080FD2E0
	.incbin "assets/data_080FC8A4/gUnk_080FD2E0.bin"

gUnk_080FD2E8:: @ 080FD2E8
	.incbin "assets/data_080FC8A4/gUnk_080FD2E8.bin"

gUnk_080FD2F0:: @ 080FD2F0
	.incbin "assets/data_080FC8A4/gUnk_080FD2F0.bin"

gUnk_080FD2F8:: @ 080FD2F8
	.incbin "assets/data_080FC8A4/gUnk_080FD2F8.bin"

gUnk_080FD300:: @ 080FD300
	.incbin "assets/data_080FC8A4/gUnk_080FD300.bin"

gUnk_080FD308:: @ 080FD308
	.incbin "assets/data_080FC8A4/gUnk_080FD308.bin"

gUnk_080FD310:: @ 080FD310
	.incbin "assets/data_080FC8A4/gUnk_080FD310.bin"

gUnk_080FD318:: @ 080FD318
	.incbin "assets/data_080FC8A4/gUnk_080FD318.bin"

gUnk_080FD320:: @ 080FD320
	.incbin "assets/data_080FC8A4/gUnk_080FD320.bin"

gUnk_080FD328:: @ 080FD328
	.incbin "assets/data_080FC8A4/gUnk_080FD328.bin"

gUnk_080FD330:: @ 080FD330
	.incbin "assets/data_080FC8A4/gUnk_080FD330.bin"

gUnk_080FD338:: @ 080FD338
	.incbin "assets/data_080FC8A4/gUnk_080FD338.bin"

gUnk_080FD340:: @ 080FD340
	.incbin "assets/data_080FC8A4/gUnk_080FD340.bin"

gUnk_080FD34C:: @ 080FD34C
	.incbin "assets/data_080FC8A4/gUnk_080FD34C.bin"

gUnk_080FD354:: @ 080FD354
	.incbin "assets/data_080FC8A4/gUnk_080FD354.bin"

gUnk_080FD35C:: @ 080FD35C
	.incbin "assets/data_080FC8A4/gUnk_080FD35C.bin"

gUnk_080FD364:: @ 080FD364
	.incbin "assets/data_080FC8A4/gUnk_080FD364.bin"

gUnk_080FD36C:: @ 080FD36C
	.incbin "assets/data_080FC8A4/gUnk_080FD36C.bin"

gUnk_080FD374:: @ 080FD374
	.incbin "assets/data_080FC8A4/gUnk_080FD374.bin"

gUnk_080FD37C:: @ 080FD37C
	.incbin "assets/data_080FC8A4/gUnk_080FD37C.bin"

gUnk_080FD384:: @ 080FD384
	.incbin "assets/data_080FC8A4/gUnk_080FD384.bin"

gUnk_080FD38C:: @ 080FD38C
	.incbin "assets/data_080FC8A4/gUnk_080FD38C.bin"

gUnk_080FD394:: @ 080FD394
	.incbin "assets/data_080FC8A4/gUnk_080FD394.bin"

gUnk_080FD39C:: @ 080FD39C
	.incbin "assets/data_080FC8A4/gUnk_080FD39C.bin"

gUnk_080FD3A4:: @ 080FD3A4
	.incbin "assets/data_080FC8A4/gUnk_080FD3A4.bin"

gUnk_080FD3AC:: @ 080FD3AC
	.incbin "assets/data_080FC8A4/gUnk_080FD3AC.bin"

gUnk_080FD3B4:: @ 080FD3B4
	.incbin "assets/data_080FC8A4/gUnk_080FD3B4.bin"

gUnk_080FD3BC:: @ 080FD3BC
	.incbin "assets/data_080FC8A4/gUnk_080FD3BC.bin"

gUnk_080FD3C4:: @ 080FD3C4
	.incbin "assets/data_080FC8A4/gUnk_080FD3C4.bin"

gUnk_080FD3CC:: @ 080FD3CC
	.incbin "assets/data_080FC8A4/gUnk_080FD3CC.bin"

gUnk_080FD3DC:: @ 080FD3DC
	.incbin "assets/data_080FC8A4/gUnk_080FD3DC.bin"

gUnk_080FD3E4:: @ 080FD3E4
	.incbin "assets/data_080FC8A4/gUnk_080FD3E4.bin"

gUnk_080FD3EC:: @ 080FD3EC
	.incbin "assets/data_080FC8A4/gUnk_080FD3EC.bin"

gUnk_080FD3F4:: @ 080FD3F4
	.incbin "assets/data_080FC8A4/gUnk_080FD3F4.bin"

gUnk_080FD3FC:: @ 080FD3FC
	.incbin "assets/data_080FC8A4/gUnk_080FD3FC.bin"

gUnk_080FD408:: @ 080FD408
	.incbin "assets/data_080FC8A4/gUnk_080FD408.bin"

gUnk_080FD410:: @ 080FD410
	.incbin "assets/data_080FC8A4/gUnk_080FD410.bin"

gUnk_080FD41C:: @ 080FD41C
	.incbin "assets/data_080FC8A4/gUnk_080FD41C.bin"

gUnk_080FD424:: @ 080FD424
	.incbin "assets/data_080FC8A4/gUnk_080FD424.bin"

gUnk_080FD42C:: @ 080FD42C
	.incbin "assets/data_080FC8A4/gUnk_080FD42C.bin"

gUnk_080FD434:: @ 080FD434
	.incbin "assets/data_080FC8A4/gUnk_080FD434.bin"

gUnk_080FD43C:: @ 080FD43C
	.incbin "assets/data_080FC8A4/gUnk_080FD43C.bin"

gUnk_080FD448:: @ 080FD448
	.incbin "assets/data_080FC8A4/gUnk_080FD448.bin"

gUnk_080FD450:: @ 080FD450
	.incbin "assets/data_080FC8A4/gUnk_080FD450.bin"

gUnk_080FD458:: @ 080FD458
	.incbin "assets/data_080FC8A4/gUnk_080FD458.bin"

gUnk_080FD460:: @ 080FD460
	.incbin "assets/data_080FC8A4/gUnk_080FD460.bin"

gUnk_080FD468:: @ 080FD468
	.incbin "assets/data_080FC8A4/gUnk_080FD468.bin"

gUnk_080FD470:: @ 080FD470
	.incbin "assets/data_080FC8A4/gUnk_080FD470.bin"

gUnk_080FD480:: @ 080FD480
	.incbin "assets/data_080FC8A4/gUnk_080FD480.bin"

gUnk_080FD488:: @ 080FD488
	.incbin "assets/data_080FC8A4/gUnk_080FD488.bin"

gUnk_080FD490:: @ 080FD490
	.incbin "assets/data_080FC8A4/gUnk_080FD490.bin"

gUnk_080FD498:: @ 080FD498
	.incbin "assets/data_080FC8A4/gUnk_080FD498.bin"

gUnk_080FD4A4:: @ 080FD4A4
	.incbin "assets/data_080FC8A4/gUnk_080FD4A4.bin"

gUnk_080FD4B8:: @ 080FD4B8
	.incbin "assets/data_080FC8A4/gUnk_080FD4B8.bin"

gUnk_080FD4C0:: @ 080FD4C0
	.incbin "assets/data_080FC8A4/gUnk_080FD4C0.bin"

gUnk_080FD4C8:: @ 080FD4C8
	.incbin "assets/data_080FC8A4/gUnk_080FD4C8.bin"

gUnk_080FD4D0:: @ 080FD4D0
	.incbin "assets/data_080FC8A4/gUnk_080FD4D0.bin"

gUnk_080FD4D8:: @ 080FD4D8
	.incbin "assets/data_080FC8A4/gUnk_080FD4D8.bin"

gUnk_080FD4E0:: @ 080FD4E0
	.incbin "assets/data_080FC8A4/gUnk_080FD4E0.bin"

gUnk_080FD4E8:: @ 080FD4E8
	.incbin "assets/data_080FC8A4/gUnk_080FD4E8.bin"

gUnk_080FD4F0:: @ 080FD4F0
	.incbin "assets/data_080FC8A4/gUnk_080FD4F0.bin"

gUnk_080FD4F8:: @ 080FD4F8
	.incbin "assets/data_080FC8A4/gUnk_080FD4F8.bin"

gUnk_080FD500:: @ 080FD500
	.incbin "assets/data_080FC8A4/gUnk_080FD500.bin"

gUnk_080FD508:: @ 080FD508
	.incbin "assets/data_080FC8A4/gUnk_080FD508.bin"

gUnk_080FD510:: @ 080FD510
	.incbin "assets/data_080FC8A4/gUnk_080FD510.bin"

gUnk_080FD518:: @ 080FD518
	.incbin "assets/data_080FC8A4/gUnk_080FD518.bin"

gUnk_080FD520:: @ 080FD520
	.incbin "assets/data_080FC8A4/gUnk_080FD520.bin"

gUnk_080FD528:: @ 080FD528
	.incbin "assets/data_080FC8A4/gUnk_080FD528.bin"

gUnk_080FD530:: @ 080FD530
	.incbin "assets/data_080FC8A4/gUnk_080FD530.bin"

gUnk_080FD538:: @ 080FD538
	.incbin "assets/data_080FC8A4/gUnk_080FD538.bin"

gUnk_080FD544:: @ 080FD544
	.incbin "assets/data_080FC8A4/gUnk_080FD544.bin"

gUnk_080FD54C:: @ 080FD54C
	.incbin "assets/data_080FC8A4/gUnk_080FD54C.bin"

gUnk_080FD558:: @ 080FD558
	.incbin "assets/data_080FC8A4/gUnk_080FD558.bin"

gUnk_080FD560:: @ 080FD560
	.incbin "assets/data_080FC8A4/gUnk_080FD560.bin"

gUnk_080FD568:: @ 080FD568
	.incbin "assets/data_080FC8A4/gUnk_080FD568.bin"

gUnk_080FD570:: @ 080FD570
	.incbin "assets/data_080FC8A4/gUnk_080FD570.bin"

gUnk_080FD578:: @ 080FD578
	.incbin "assets/data_080FC8A4/gUnk_080FD578.bin"

gUnk_080FD580:: @ 080FD580
	.incbin "assets/data_080FC8A4/gUnk_080FD580.bin"

gUnk_080FD588:: @ 080FD588
	.incbin "assets/data_080FC8A4/gUnk_080FD588.bin"

gWalletSizes:: @ 080FD590
	.incbin "assets/data_080FC8A4/gWalletSizes.bin"

gBombBagSizes:: @ 080FD5A0
	.incbin "assets/data_080FC8A4/gBombBagSizes.bin"

gQuiverSizes:: @ 080FD5A4
	.incbin "assets/data_080FC8A4/gQuiverSizes.bin"

gUnk_080FD5A8:: @ 080FD5A8
	.incbin "assets/data_080FC8A4/gUnk_080FD5A8.bin"

gUnk_080FD5B4:: @ 080FD5B4
	.incbin "assets/data_080FC8A4/gUnk_080FD5B4.bin"

gUnk_080FD964:: @ 080FD964
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FD964_EU.bin"
.else
	.incbin "assets/data_080FC8A4/gUnk_080FD964_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080FDD14:: @ 080FDD14
	.incbin "assets/data_080FC8A4/gUnk_080FDD14.bin"

gUnk_080FDD19:: @ 080FDD19
	.incbin "assets/data_080FC8A4/gUnk_080FDD19.bin"

gUnk_080FDD1E:: @ 080FDD1E
	.incbin "assets/data_080FC8A4/gUnk_080FDD1E.bin"

gUnk_080FDD23:: @ 080FDD23
	.incbin "assets/data_080FC8A4/gUnk_080FDD23.bin"

gUnk_080FDD28:: @ 080FDD28
	.incbin "assets/data_080FC8A4/gUnk_080FDD28.bin"

gUnk_080FDD2D:: @ 080FDD2D
	.incbin "assets/data_080FC8A4/gUnk_080FDD2D.bin"

gUnk_080FDD32:: @ 080FDD32
	.incbin "assets/data_080FC8A4/gUnk_080FDD32.bin"

gUnk_080FDD37:: @ 080FDD37
	.incbin "assets/data_080FC8A4/gUnk_080FDD37.bin"

gUnk_080FDD48:: @ 080FDD48
	.incbin "assets/data_080FC8A4/gUnk_080FDD48.bin"

gUnk_080FDD4D:: @ 080FDD4D
	.incbin "assets/data_080FC8A4/gUnk_080FDD4D.bin"

gUnk_080FDD52:: @ 080FDD52
	.incbin "assets/data_080FC8A4/gUnk_080FDD52.bin"

gUnk_080FDD57:: @ 080FDD57
	.incbin "assets/data_080FC8A4/gUnk_080FDD57.bin"

gUnk_080FDD5C:: @ 080FDD5C
	.incbin "assets/data_080FC8A4/gUnk_080FDD5C.bin"

gUnk_080FDD61:: @ 080FDD61
	.incbin "assets/data_080FC8A4/gUnk_080FDD61.bin"

gUnk_080FDD92:: @ 080FDD92
	.incbin "assets/data_080FC8A4/gUnk_080FDD92.bin"

gUnk_080FDD97:: @ 080FDD97
	.incbin "assets/data_080FC8A4/gUnk_080FDD97.bin"

gUnk_080FDDA8:: @ 080FDDA8
	.incbin "assets/data_080FC8A4/gUnk_080FDDA8.bin"

gUnk_080FDDAD:: @ 080FDDAD
	.incbin "assets/data_080FC8A4/gUnk_080FDDAD.bin"

gUnk_080FDDB2:: @ 080FDDB2
	.incbin "assets/data_080FC8A4/gUnk_080FDDB2.bin"

gUnk_080FDDB7:: @ 080FDDB7
	.incbin "assets/data_080FC8A4/gUnk_080FDDB7.bin"

gUnk_080FDDBC:: @ 080FDDBC
	.incbin "assets/data_080FC8A4/gUnk_080FDDBC.bin"

gUnk_080FDDC1:: @ 080FDDC1
	.incbin "assets/data_080FC8A4/gUnk_080FDDC1.bin"

gUnk_080FDDC6:: @ 080FDDC6
	.incbin "assets/data_080FC8A4/gUnk_080FDDC6.bin"

gUnk_080FDDCB:: @ 080FDDCB
	.incbin "assets/data_080FC8A4/gUnk_080FDDCB.bin"

gUnk_080FDDD0:: @ 080FDDD0
	.incbin "assets/data_080FC8A4/gUnk_080FDDD0.bin"

gUnk_080FDDD5:: @ 080FDDD5
	.incbin "assets/data_080FC8A4/gUnk_080FDDD5.bin"

gUnk_080FDDDA:: @ 080FDDDA
	.incbin "assets/data_080FC8A4/gUnk_080FDDDA.bin"

gUnk_080FDDDF:: @ 080FDDDF
	.incbin "assets/data_080FC8A4/gUnk_080FDDDF.bin"

gUnk_080FDDE4:: @ 080FDDE4
	.incbin "assets/data_080FC8A4/gUnk_080FDDE4.bin"

gUnk_080FDDF5:: @ 080FDDF5
	.incbin "assets/data_080FC8A4/gUnk_080FDDF5.bin"

gUnk_080FDE0E:: @ 080FDE0E
	.incbin "assets/data_080FC8A4/gUnk_080FDE0E.bin"

gUnk_080FDE27:: @ 080FDE27
	.incbin "assets/data_080FC8A4/gUnk_080FDE27.bin"

gUnk_080FDE40:: @ 080FDE40
	.incbin "assets/data_080FC8A4/gUnk_080FDE40.bin"

gUnk_080FDE59:: @ 080FDE59
	.incbin "assets/data_080FC8A4/gUnk_080FDE59.bin"

gUnk_080FDE72:: @ 080FDE72
	.incbin "assets/data_080FC8A4/gUnk_080FDE72.bin"

gUnk_080FDE8B:: @ 080FDE8B
	.incbin "assets/data_080FC8A4/gUnk_080FDE8B.bin"

gUnk_080FDE90:: @ 080FDE90
	.incbin "assets/data_080FC8A4/gUnk_080FDE90.bin"

gUnk_080FDE95:: @ 080FDE95
	.incbin "assets/data_080FC8A4/gUnk_080FDE95.bin"

gUnk_080FDE9A:: @ 080FDE9A
	.incbin "assets/data_080FC8A4/gUnk_080FDE9A.bin"

gUnk_080FDE9F:: @ 080FDE9F
	.incbin "assets/data_080FC8A4/gUnk_080FDE9F.bin"

gUnk_080FDEA4:: @ 080FDEA4
	.incbin "assets/data_080FC8A4/gUnk_080FDEA4.bin"

gUnk_080FDEA9:: @ 080FDEA9
	.incbin "assets/data_080FC8A4/gUnk_080FDEA9.bin"

gUnk_080FDEAE:: @ 080FDEAE
	.incbin "assets/data_080FC8A4/gUnk_080FDEAE.bin"

gUnk_080FDEB3:: @ 080FDEB3
	.incbin "assets/data_080FC8A4/gUnk_080FDEB3.bin"

gUnk_080FDEB8:: @ 080FDEB8
	.incbin "assets/data_080FC8A4/gUnk_080FDEB8.bin"

gUnk_080FDEBD:: @ 080FDEBD
	.incbin "assets/data_080FC8A4/gUnk_080FDEBD.bin"

gUnk_080FDEC2:: @ 080FDEC2
	.incbin "assets/data_080FC8A4/gUnk_080FDEC2.bin"

gUnk_080FDEC7:: @ 080FDEC7
	.incbin "assets/data_080FC8A4/gUnk_080FDEC7.bin"

gUnk_080FDECC:: @ 080FDECC
	.incbin "assets/data_080FC8A4/gUnk_080FDECC.bin"

gUnk_080FDED1:: @ 080FDED1
	.incbin "assets/data_080FC8A4/gUnk_080FDED1.bin"

gUnk_080FDED6:: @ 080FDED6
	.incbin "assets/data_080FC8A4/gUnk_080FDED6.bin"

gUnk_080FDEDB:: @ 080FDEDB
	.incbin "assets/data_080FC8A4/gUnk_080FDEDB.bin"

gUnk_080FDEE0:: @ 080FDEE0
	.incbin "assets/data_080FC8A4/gUnk_080FDEE0.bin"

gUnk_080FDEE5:: @ 080FDEE5
	.incbin "assets/data_080FC8A4/gUnk_080FDEE5.bin"

gUnk_080FDEEA:: @ 080FDEEA
	.incbin "assets/data_080FC8A4/gUnk_080FDEEA.bin"

gUnk_080FDEEF:: @ 080FDEEF
	.incbin "assets/data_080FC8A4/gUnk_080FDEEF.bin"

gUnk_080FDEF4:: @ 080FDEF4
	.incbin "assets/data_080FC8A4/gUnk_080FDEF4.bin"

gUnk_080FDEF9:: @ 080FDEF9
	.incbin "assets/data_080FC8A4/gUnk_080FDEF9.bin"

gUnk_080FDEFE:: @ 080FDEFE
	.incbin "assets/data_080FC8A4/gUnk_080FDEFE.bin"

gUnk_080FDF03:: @ 080FDF03
	.incbin "assets/data_080FC8A4/gUnk_080FDF03.bin"

gUnk_080FDF08:: @ 080FDF08
	.incbin "assets/data_080FC8A4/gUnk_080FDF08.bin"

gUnk_080FDF0D:: @ 080FDF0D
	.incbin "assets/data_080FC8A4/gUnk_080FDF0D.bin"

gUnk_080FDF12:: @ 080FDF12
	.incbin "assets/data_080FC8A4/gUnk_080FDF12.bin"

gUnk_080FDF17:: @ 080FDF17
	.incbin "assets/data_080FC8A4/gUnk_080FDF17.bin"

gUnk_080FDF28:: @ 080FDF28
	.incbin "assets/data_080FC8A4/gUnk_080FDF28.bin"

gUnk_080FDF45:: @ 080FDF45
	.incbin "assets/data_080FC8A4/gUnk_080FDF45.bin"

gUnk_080FDF4A:: @ 080FDF4A
	.incbin "assets/data_080FC8A4/gUnk_080FDF4A.bin"

gUnk_080FDF4F:: @ 080FDF4F
	.incbin "assets/data_080FC8A4/gUnk_080FDF4F.bin"

gUnk_080FDF54:: @ 080FDF54
	.incbin "assets/data_080FC8A4/gUnk_080FDF54.bin"

gUnk_080FDF59:: @ 080FDF59
	.incbin "assets/data_080FC8A4/gUnk_080FDF59.bin"

gUnk_080FDF5E:: @ 080FDF5E
	.incbin "assets/data_080FC8A4/gUnk_080FDF5E.bin"

gUnk_080FDF63:: @ 080FDF63
	.incbin "assets/data_080FC8A4/gUnk_080FDF63.bin"

gUnk_080FDF68:: @ 080FDF68
	.incbin "assets/data_080FC8A4/gUnk_080FDF68.bin"

gUnk_080FDF6D:: @ 080FDF6D
	.incbin "assets/data_080FC8A4/gUnk_080FDF6D.bin"

gUnk_080FDF72:: @ 080FDF72
	.incbin "assets/data_080FC8A4/gUnk_080FDF72.bin"

gUnk_080FDF77:: @ 080FDF77
	.incbin "assets/data_080FC8A4/gUnk_080FDF77.bin"

gUnk_080FDF7C:: @ 080FDF7C
	.incbin "assets/data_080FC8A4/gUnk_080FDF7C.bin"

gUnk_080FDF81:: @ 080FDF81
	.incbin "assets/data_080FC8A4/gUnk_080FDF81.bin"

gUnk_080FDF86:: @ 080FDF86
	.incbin "assets/data_080FC8A4/gUnk_080FDF86.bin"

gUnk_080FDF8F:: @ 080FDF8F
	.incbin "assets/data_080FC8A4/gUnk_080FDF8F.bin"

gUnk_080FDF94:: @ 080FDF94
	.incbin "assets/data_080FC8A4/gUnk_080FDF94.bin"

gUnk_080FDF99:: @ 080FDF99
	.incbin "assets/data_080FC8A4/gUnk_080FDF99.bin"

gUnk_080FDF9E:: @ 080FDF9E
	.incbin "assets/data_080FC8A4/gUnk_080FDF9E.bin"

gUnk_080FDFA3:: @ 080FDFA3
	.incbin "assets/data_080FC8A4/gUnk_080FDFA3.bin"

gUnk_080FDFA8:: @ 080FDFA8
	.incbin "assets/data_080FC8A4/gUnk_080FDFA8.bin"

gUnk_080FDFC1:: @ 080FDFC1
	.incbin "assets/data_080FC8A4/gUnk_080FDFC1.bin"

gUnk_080FDFC6:: @ 080FDFC6
	.incbin "assets/data_080FC8A4/gUnk_080FDFC6.bin"

gUnk_080FDFCB:: @ 080FDFCB
	.incbin "assets/data_080FC8A4/gUnk_080FDFCB.bin"

gUnk_080FDFD0:: @ 080FDFD0
	.incbin "assets/data_080FC8A4/gUnk_080FDFD0.bin"

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
	.incbin "assets/data_080FC8A4/gUnk_080FE1B4.bin"

gUnk_080FE1C6:: @ 080FE1C6
	.incbin "assets/data_080FC8A4/gUnk_080FE1C6.bin"

gUnk_080FE1DD:: @ 080FE1DD
	.incbin "assets/data_080FC8A4/gUnk_080FE1DD.bin"

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
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FE320_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FE320_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080FC8A4/gUnk_080FE320_2_EU.bin"
.else
	.incbin "assets/data_080FC8A4/gUnk_080FE320_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FE320_4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FE320_5_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080FC8A4/gUnk_080FE320_6_EU.bin"
.else
	.incbin "assets/data_080FC8A4/gUnk_080FE320_7_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FEAC8:: @ 080FEAC8
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_2_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_3_EU.bin"
.else
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_5_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_6_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_7_EU.bin"
.else
	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_8_USA-DEMO_USA.bin"
.endif
.endif
.endif

	.incbin "assets/data_080FC8A4/gUnk_080FEAC8_9.bin"

gUnk_080FEBE8:: @ 080FEBE8
	.incbin "assets/data_080FC8A4/gUnk_080FEBE8.bin"

gUnk_080FEC28:: @ 080FEC28
	.incbin "assets/data_080FC8A4/gUnk_080FEC28.bin"

gUnk_080FECC8:: @ 080FECC8
	.incbin "assets/data_080FC8A4/gUnk_080FECC8.bin"

gUnk_080FED18:: @ 080FED18
	.incbin "assets/data_080FC8A4/gUnk_080FED18.bin"

gUnk_080FED58:: @ 080FED58
	.incbin "assets/data_080FC8A4/gUnk_080FED58.bin"

gUnk_080FED98:: @ 080FED98
	.4byte gUnk_080FEDA4
	.4byte gUnk_080FEDDA
	.4byte gUnk_080FEDF8

gUnk_080FEDA4:: @ 080FEDA4
	.incbin "assets/data_080FC8A4/gUnk_080FEDA4.bin"

gUnk_080FEDDA:: @ 080FEDDA
	.incbin "assets/data_080FC8A4/gUnk_080FEDDA.bin"

gUnk_080FEDF8:: @ 080FEDF8
	.incbin "assets/data_080FC8A4/gUnk_080FEDF8.bin"

gUnk_080FEE18:: @ 080FEE18
	.incbin "assets/data_080FC8A4/gUnk_080FEE18.bin"

gUnk_080FEE38:: @ 080FEE38
	.incbin "assets/data_080FC8A4/gUnk_080FEE38.bin"

gUnk_080FEE48:: @ 080FEE48
	.incbin "assets/data_080FC8A4/gUnk_080FEE48.bin"

gUnk_080FEE58:: @ 080FEE58
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FEE58_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "assets/data_080FC8A4/gUnk_080FEE58_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080FC8A4/gUnk_080FEE58_2_EU.bin"
.else
	.incbin "assets/data_080FC8A4/gUnk_080FEE58_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080FEE78:: @ 080FEE78
	.incbin "assets/data_080FC8A4/gUnk_080FEE78.bin"
