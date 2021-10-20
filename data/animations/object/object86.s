	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812380C:: @ 0812380C
	.incbin "object86/gUnk_0812380C.bin"

gUnk_08123820:: @ 08123820
	.incbin "object86/gUnk_08123820.bin"

gSpriteAnimations_Object86:: @ 08123834
	.4byte gUnk_0812380C
	.4byte gUnk_08123820
	.4byte 00000000
