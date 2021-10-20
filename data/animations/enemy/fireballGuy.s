	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1818:: @ 080D1818
	.incbin "fireballGuy/gUnk_080D1818.bin"

gUnk_080D1839:: @ 080D1839
	.incbin "fireballGuy/gUnk_080D1839.bin"

gSpriteAnimations_FireballGuy:: @ 080D185C
	.4byte gUnk_080D1818
	.4byte gUnk_080D1839
	.4byte 00000000
