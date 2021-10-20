	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812296C:: @ 0812296C
	.incbin "object64/gUnk_0812296C.bin"

gUnk_0812297C:: @ 0812297C
	.incbin "object64/gUnk_0812297C.bin"

gUnk_08122988:: @ 08122988
	.incbin "object64/gUnk_08122988.bin"

gSpriteAnimations_Object64:: @ 081229A4
	.4byte gUnk_0812296C
	.4byte gUnk_0812297C
	.4byte gUnk_08122988
	.4byte 00000000
