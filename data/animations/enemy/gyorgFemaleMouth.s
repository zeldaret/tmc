	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D291C:: @ 080D291C
	.incbin "baserom.gba", 0x0D291C, 0x0000011

gUnk_080D292D:: @ 080D292D
	.incbin "baserom.gba", 0x0D292D, 0x0000011

gUnk_080D293E:: @ 080D293E
	.incbin "baserom.gba", 0x0D293E, 0x0000011

gUnk_080D294F:: @ 080D294F
	.incbin "baserom.gba", 0x0D294F, 0x0000011

gUnk_080D2960:: @ 080D2960
	.4byte gUnk_080D291C
	.4byte gUnk_080D292D
	.4byte gUnk_080D293E
	.4byte gUnk_080D294F
	.4byte 00000000
