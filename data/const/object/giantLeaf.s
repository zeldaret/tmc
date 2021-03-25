	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121750:: @ 08121750 
	.incbin "baserom.gba", 0x121750, 0x000001A

gUnk_0812176A:: @ 0812176A
	.incbin "baserom.gba", 0x12176A, 0x000001A
