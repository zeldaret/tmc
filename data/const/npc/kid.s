	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810BD7C:: @ 0810BD7C
	.incbin "kid/gUnk_0810BD7C.bin"

gUnk_0810BD8C:: @ 0810BD8C
	.incbin "kid/gUnk_0810BD8C.bin"

gUnk_0810BD9C:: @ 0810BD9C
	.incbin "kid/gUnk_0810BD9C.bin"

gUnk_0810BDAC:: @ 0810BDAC
	.incbin "kid/gUnk_0810BDAC.bin"

gUnk_0810BDB8:: @ 0810BDB8
	.incbin "kid/gUnk_0810BDB8.bin"

gUnk_0810BDC4:: @ 0810BDC4
	.4byte gUnk_0810BD7C
	.4byte gUnk_0810BD7C
	.4byte gUnk_0810BD7C
	.4byte gUnk_0810BD7C
	.4byte gUnk_0810BD8C
	.4byte gUnk_0810BD8C
	.4byte gUnk_0810BD9C
	.4byte gUnk_0810BDAC
	.4byte gUnk_0810BDB8

gUnk_0810BDE8:: @ 0810BDE8
	.incbin "kid/gUnk_0810BDE8.bin"

gUnk_0810BE0C:: @ 0810BE0C
	.4byte sub_080620F4

gUnk_0810BE10:: @ 0810BE10
	.4byte sub_08062130
	.4byte sub_08062194
	.incbin "kid/gUnk_0810BE10.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "kid/gUnk_0810BE10_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "kid/gUnk_0810BE10_2_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "kid/gUnk_0810BE10_3_EU.bin"
.else
	.incbin "kid/gUnk_0810BE10_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_0810C0A0:: @ 0810C0A0
	.incbin "kid/gUnk_0810C0A0.bin"

