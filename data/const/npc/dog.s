	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111D58:: @ 08111D58
.ifdef EU
    @ TODO only small differences
	.incbin "dog/gUnk_08111D58_EU.bin"
.else
	.incbin "dog/gUnk_08111D58_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08111D88:: @ 08111D88
	.4byte sub_08069B44
	.4byte sub_08069C40
	.4byte sub_08069D54
	.4byte sub_08069DF8
	.4byte sub_08069E44
	.4byte sub_08069E50
	.4byte sub_08069ECC
	.4byte sub_08069EE0

gUnk_08111DA8:: @ 08111DA8
	.incbin "dog/gUnk_08111DA8.bin"

gUnk_08111DB0:: @ 08111DB0
	.incbin "dog/gUnk_08111DB0.bin"

gUnk_08111E30:: @ 08111E30
	.incbin "dog/gUnk_08111E30.bin"

gUnk_08111E34:: @ 08111E34
	.incbin "dog/gUnk_08111E34.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_1.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_2.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_3.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_4.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_5.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_6.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_7.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_8.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_9.bin"
	.4byte sub_0806A0A4
	.incbin "dog/gUnk_08111E34_10.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_11.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_12.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_13.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_14.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_15.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_16.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_17.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_18.bin"
	.4byte sub_0806A144
	.incbin "dog/gUnk_08111E34_19.bin"
	.4byte sub_0806A144

gUnk_08111F74:: @ 08111F74
	.incbin "dog/gUnk_08111F74.bin"

gUnk_08111FD8:: @ 08111FD8
	.incbin "dog/gUnk_08111FD8.bin"
