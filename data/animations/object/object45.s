	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121BE0:: @ 08121BE0
	.incbin "object45/gUnk_08121BE0.bin"

gUnk_08121BF8:: @ 08121BF8
	.incbin "object45/gUnk_08121BF8.bin"

gSpriteAnimations_Object45:: @ 08121C34
	.4byte gUnk_08121BE0
	.4byte gUnk_08121BF8
	.4byte 00000000
