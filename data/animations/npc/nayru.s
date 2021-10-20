	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810F9B0:: @ 0810F9B0
	.incbin "nayru/gUnk_0810F9B0.bin"

gUnk_0810F9B5:: @ 0810F9B5
	.incbin "nayru/gUnk_0810F9B5.bin"

gUnk_0810F9BA:: @ 0810F9BA
	.incbin "nayru/gUnk_0810F9BA.bin"

gUnk_0810F9BF:: @ 0810F9BF
	.incbin "nayru/gUnk_0810F9BF.bin"

gSpriteAnimations_Nayru:: @ 0810F9D0
	.4byte gUnk_0810F9B0
	.4byte gUnk_0810F9BA
	.4byte gUnk_0810F9B0
	.4byte gUnk_0810F9B5
	.4byte gUnk_0810F9BF
	.4byte gUnk_0810F9BF
	.4byte gUnk_0810F9BF
	.4byte gUnk_0810F9BF
	.4byte 00000000
