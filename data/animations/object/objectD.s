	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F918:: @ 0811F918
	.incbin "objectD/gUnk_0811F918.bin"

gUnk_0811F945:: @ 0811F945
	.incbin "objectD/gUnk_0811F945.bin"

gSpriteAnimations_ObjectD:: @ 0811F954
	.4byte gUnk_0811F918
	.4byte gUnk_0811F945
	.4byte 00000000
