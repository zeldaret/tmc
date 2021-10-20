	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124878:: @ 08124878
	.incbin "objectAB/gUnk_08124878.bin"

gSpriteAnimations_ObjectAB:: @ 08124890
	.4byte gUnk_08124878
	.4byte 00000000
