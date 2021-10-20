	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

@ TODO might as well be palaceArchway
gUnk_08124712:: @ 08124712
	.incbin "objectA2/gUnk_08124712.bin"

gUnk_08124743:: @ 08124743
	.incbin "objectA2/gUnk_08124743.bin"

gUnk_08124764:: @ 08124764
	.incbin "objectA2/gUnk_08124764.bin"

gSpriteAnimation_ObjectA2:: @ 08124788
	.4byte gUnk_08124712
	.4byte gUnk_08124743
	.4byte gUnk_08124764
	.4byte 00000000
