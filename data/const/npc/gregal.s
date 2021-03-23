	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113D84:: @ 08113D84
	.incbin "baserom.gba", 0x113D84, 0x0000008

gUnk_08113D8C:: @ 08113D8C
	.4byte sub_0806CAF4
	.4byte sub_0806CB80
	.4byte sub_0806CBB4
	.4byte sub_0806CC08
