	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08112208:: @ 08112208
	.incbin "syrup/gUnk_08112208.bin"

gSpriteAnimations_Syrup:: @ 0811222C
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte 00000000
