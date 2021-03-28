	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081142BC:: @ 081142BC
	.4byte sub_0806DF00
	.4byte sub_0806DF74
	.4byte sub_0806DFB4
	.4byte nullsub_111

gUnk_081142CC:: @ 081142CC
	.incbin "baserom.gba", 0x1142CC, 0x0000010

gUnk_081142DC:: @ 081142DC
	.incbin "baserom.gba", 0x1142DC, 0x0000020
