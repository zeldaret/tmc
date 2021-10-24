	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA5D4:: @ 080CA5D4
	.incbin "peahat/gUnk_080CA5D4.bin"

gSpriteAnimations_Peahat_0:: @ 080CA5D6
	.include "animations/gSpriteAnimations_Peahat_0.s"

gSpriteAnimations_Peahat_1:: @ 080CA5E7
	.include "animations/gSpriteAnimations_Peahat_1.s"

gSpriteAnimations_Peahat_2:: @ 080CA5F8
	.include "animations/gSpriteAnimations_Peahat_2.s"

gSpriteAnimations_Peahat_3:: @ 080CA615
	.include "animations/gSpriteAnimations_Peahat_3.s"

gSpriteAnimations_Peahat_4:: @ 080CA626
	.include "animations/gSpriteAnimations_Peahat_4.s"

gSpriteAnimations_Peahat_5:: @ 080CA63A
	.include "animations/gSpriteAnimations_Peahat_5.s"

gSpriteAnimations_Peahat:: @ 080CA650
	.4byte gSpriteAnimations_Peahat_0
	.4byte gSpriteAnimations_Peahat_1
	.4byte gSpriteAnimations_Peahat_2
	.4byte gSpriteAnimations_Peahat_3
	.4byte gSpriteAnimations_Peahat_4
	.4byte gSpriteAnimations_Peahat_5
	.4byte 00000000
