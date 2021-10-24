	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_PushableStatue_0:: @ 08120D86
	.include "animations/gSpriteAnimations_PushableStatue_0.s"

gSpriteAnimations_PushableStatue:: @ 08120D8C
	.4byte gSpriteAnimations_PushableStatue_0
