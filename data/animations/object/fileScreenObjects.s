	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121E24:: @ 08121E24
	.incbin "fileScreenObjects/gUnk_08121E24.bin"

gUnk_08121E31:: @ 08121E31
	.incbin "fileScreenObjects/gUnk_08121E31.bin"

gSpriteAnimation_FileScreenObjects:: @ 08121E50
	.4byte gUnk_08121E24
	.4byte gUnk_08121E31
	.4byte 00000000
