	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124ED0:: @ 08124ED0
	.4byte sub_080A1704
	.4byte sub_080A184C
	.4byte sub_080A189C
	.4byte sub_080A190C
	.4byte sub_080A1990
	.4byte sub_080A19FC
	.4byte sub_080A1A80
	.4byte sub_080A1AE8
	.4byte sub_080A1B4C
	.4byte sub_080A1C04

gUnk_08124EF8:: @ 08124EF8
	.incbin "baserom.gba", 0x124EF8, 0x0000010
