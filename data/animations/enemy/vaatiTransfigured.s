	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D0BA4:: @ 080D0BA4
	.incbin "baserom.gba", 0x0D0BA4, 0x0000011

gUnk_080D0BB5:: @ 080D0BB5
	.incbin "baserom.gba", 0x0D0BB5, 0x000000F

gUnk_080D0BC4:: @ 080D0BC4
	.4byte gUnk_080D0BA4
	.4byte gUnk_080D0BA4
	.4byte gUnk_080D0BA4
	.4byte gUnk_080D0BA4
	.4byte gUnk_080D0BB5
	.4byte 00000000

gUnk_080D0BDC:: @ 080D0BDC
	.incbin "baserom.gba", 0x0D0BDC, 0x0000005

gUnk_080D0BE1:: @ 080D0BE1
	.incbin "baserom.gba", 0x0D0BE1, 0x000000C

gUnk_080D0BED:: @ 080D0BED
	.incbin "baserom.gba", 0x0D0BED, 0x0000005

gUnk_080D0BF2:: @ 080D0BF2
	.incbin "baserom.gba", 0x0D0BF2, 0x0000005

gUnk_080D0BF7:: @ 080D0BF7
	.incbin "baserom.gba", 0x0D0BF7, 0x0000004

gUnk_080D0BFB:: @ 080D0BFB
	.incbin "baserom.gba", 0x0D0BFB, 0x0000001

gUnk_080D0BFC:: @ 080D0BFC
	.incbin "baserom.gba", 0x0D0BFC, 0x0000004

gUnk_080D0C00:: @ 080D0C00
	.incbin "baserom.gba", 0x0D0C00, 0x0000006

gUnk_080D0C06:: @ 080D0C06
	.incbin "baserom.gba", 0x0D0C06, 0x0000002

gUnk_080D0C08:: @ 080D0C08
	.incbin "baserom.gba", 0x0D0C08, 0x0000002

gUnk_080D0C0A:: @ 080D0C0A
	.incbin "baserom.gba", 0x0D0C0A, 0x0000002

gUnk_080D0C0C:: @ 080D0C0C
	.4byte gUnk_080D0BDC
	.4byte gUnk_080D0BDC
	.4byte gUnk_080D0BDC
	.4byte gUnk_080D0BDC
	.4byte gUnk_080D0BE1
	.4byte gUnk_080D0BED
	.4byte gUnk_080D0BF2
	.4byte gUnk_080D0BF7
	.4byte gUnk_080D0BFC
	.4byte 00000000

gUnk_080D0C34:: @ 080D0C34
	.incbin "baserom.gba", 0x0D0C34, 0x0000021

gUnk_080D0C55:: @ 080D0C55
	.incbin "baserom.gba", 0x0D0C55, 0x0000033

gUnk_080D0C88:: @ 080D0C88
	.4byte gUnk_080D0C34
	.4byte gUnk_080D0C55
	.4byte gUnk_080D0C34
	.4byte gUnk_080D0C34
	.4byte gUnk_080D0C34
	.4byte 00000000

gUnk_080D0CA0:: @ 080D0CA0
	.incbin "baserom.gba", 0x0D0CA0, 0x0000005

gUnk_080D0CA5:: @ 080D0CA5
	.incbin "baserom.gba", 0x0D0CA5, 0x0000030

gUnk_080D0CD5:: @ 080D0CD5
	.incbin "baserom.gba", 0x0D0CD5, 0x0000011

gUnk_080D0CE6:: @ 080D0CE6
	.incbin "baserom.gba", 0x0D0CE6, 0x000000E

gUnk_080D0CF4:: @ 080D0CF4
	.4byte gUnk_080D0CA0
	.4byte gUnk_080D0CA0
	.4byte gUnk_080D0CA5
	.4byte gUnk_080D0CD5
	.4byte gUnk_080D0CE6
	.4byte 00000000

gUnk_080D0D0C:: @ 080D0D0C
	.incbin "baserom.gba", 0x0D0D0C, 0x0000002

gUnk_080D0D0E:: @ 080D0D0E
	.incbin "baserom.gba", 0x0D0D0E, 0x0000006

gUnk_080D0D14:: @ 080D0D14
	.incbin "baserom.gba", 0x0D0D14, 0x000002C

gUnk_080D0D40:: @ 080D0D40
	.4byte gUnk_080D0D0C
	.incbin "baserom.gba", 0x0D0D44, 0x0000004

gUnk_080D0D48:: @ 080D0D48
	.incbin "baserom.gba", 0x0D0D48, 0x0000030

gUnk_080D0D78:: @ 080D0D78
	.incbin "baserom.gba", 0x0D0D78, 0x0000019

gUnk_080D0D91:: @ 080D0D91
	.incbin "baserom.gba", 0x0D0D91, 0x0000010

gUnk_080D0DA1:: @ 080D0DA1
	.incbin "baserom.gba", 0x0D0DA1, 0x000000F

gUnk_080D0DB0:: @ 080D0DB0
	.4byte gUnk_080D0D48
	.4byte gUnk_080D0D78
	.4byte gUnk_080D0D91
	.4byte gUnk_080D0DA1
	.4byte 00000000
