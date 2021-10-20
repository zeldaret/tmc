	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123E80:: @ 08123E80
	.4byte sub_0809CEA8
	.4byte sub_0809CEC0

gUnk_08123E88:: @ 08123E88
	.incbin "object93/gUnk_08123E88.bin"

gSpriteAnimations_Object93_0:: @ 08123E9C
	.4byte gUnk_08123E88
	.incbin "object93/gSpriteAnimations_Object93_0.bin"

gUnk_08123EA4:: @ 08123EA4
	.incbin "object93/gUnk_08123EA4.bin"

gSpriteAnimations_Object93_1:: @ 08123EB8
	.4byte gUnk_08123EA4
	.incbin "object93/gSpriteAnimations_Object93_1.bin"
