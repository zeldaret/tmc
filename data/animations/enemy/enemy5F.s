	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1DA0:: @ 080D1DA0
	.incbin "baserom.gba", 0x0D1DA0, 0x0000028

gUnk_080D1DC8:: @ 080D1DC8
	.incbin "baserom.gba", 0x0D1DC8, 0x0000004

gUnk_080D1DCC:: @ 080D1DCC
	.incbin "baserom.gba", 0x0D1DCC, 0x0000004

gUnk_080D1DD0:: @ 080D1DD0
	.incbin "baserom.gba", 0x0D1DD0, 0x000000C

gUnk_080D1DDC:: @ 080D1DDC
	.incbin "baserom.gba", 0x0D1DDC, 0x000000C

gUnk_080D1DE8:: @ 080D1DE8
	.incbin "baserom.gba", 0x0D1DE8, 0x000001D

gUnk_080D1E05:: @ 080D1E05
	.incbin "baserom.gba", 0x0D1E05, 0x0000016

gUnk_080D1E1B:: @ 080D1E1B
	.incbin "baserom.gba", 0x0D1E1B, 0x0000006

gUnk_080D1E21:: @ 080D1E21
	.incbin "baserom.gba", 0x0D1E21, 0x0000005

gUnk_080D1E26:: @ 080D1E26
	.incbin "baserom.gba", 0x0D1E26, 0x000000C

gUnk_080D1E32:: @ 080D1E32
	.incbin "baserom.gba", 0x0D1E32, 0x0000012

gUnk_080D1E44:: @ 080D1E44
	.4byte gUnk_080D1DA0
	.4byte gUnk_080D1DC8
	.4byte gUnk_080D1DCC
	.4byte gUnk_080D1DDC
	.4byte gUnk_080D1DD0
	.4byte gUnk_080D1DE8
	.4byte gUnk_080D1E05
	.4byte gUnk_080D1E21
	.4byte gUnk_080D1E32
	.4byte 00000000
