	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A63C:: @ 0812A63C
	.incbin "projectile1C/gUnk_0812A63C.bin"

gUnk_0812A65C:: @ 0812A65C
	.incbin "projectile1C/gUnk_0812A65C.bin"

gUnk_0812A665:: @ 0812A665
	.incbin "projectile1C/gUnk_0812A665.bin"

gUnk_0812A66E:: @ 0812A66E
	.incbin "projectile1C/gUnk_0812A66E.bin"

gUnk_0812A677:: @ 0812A677
	.incbin "projectile1C/gUnk_0812A677.bin"

gUnk_0812A680:: @ 0812A680
	.incbin "projectile1C/gUnk_0812A680.bin"

gUnk_0812A689:: @ 0812A689
	.incbin "projectile1C/gUnk_0812A689.bin"

gSpriteAnimations_V1EyeLaser:: @ 0812A694
	.4byte gUnk_0812A63C
	.4byte gUnk_0812A65C
	.4byte gUnk_0812A665
	.4byte gUnk_0812A66E
	.4byte gUnk_0812A677
	.4byte gUnk_0812A680
	.4byte gUnk_0812A689
	.4byte 00000000
