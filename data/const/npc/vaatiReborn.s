	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08112F78:: @ 08112F78
	.4byte sub_0806B67C
	.4byte sub_0806B7BC

gUnk_08112F80:: @ 08112F80
	.incbin "baserom.gba", 0x112F80, 0x0000008
