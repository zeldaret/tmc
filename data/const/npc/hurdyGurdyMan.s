	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081144F0:: @ 081144F0
	.incbin "baserom.gba", 0x1144F0, 0x000000C

gUnk_081144FC:: @ 081144FC
	.incbin "baserom.gba", 0x1144FC, 0x0000040
