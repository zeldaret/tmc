	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08125050:: @ 08125050
	.incbin "baserom.gba", 0x125050, 0x000000C

gUnk_0812505C:: @ 0812505C
	.4byte sub_080A23DC
	.4byte sub_080A2420
	.4byte sub_080A243C
