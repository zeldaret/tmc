	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08122A10:: @ 08122A10
	.4byte sub_08094774
	.4byte sub_080948D0

gUnk_08122A18:: @ 08122A18
	.incbin "baserom.gba", 0x122A18, 0x0000008

gUnk_08122A20:: @ 08122A20
	.incbin "baserom.gba", 0x122A20, 0x0000004
	.4byte sub_080948E8

gUnk_08122A28:: @ 08122A28
	.incbin "baserom.gba", 0x122A28, 0x000000C

