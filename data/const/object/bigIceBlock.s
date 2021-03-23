	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081237A0:: @ 081237A0
	.4byte sub_0809975C
	.4byte sub_080997CC
	.4byte sub_080997F4
	.4byte sub_08099880

gUnk_081237B0:: @ 081237B0
	.incbin "baserom.gba", 0x1237B0, 0x000000A
