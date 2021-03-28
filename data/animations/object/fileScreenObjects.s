	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121E24:: @ 08121E24
	.incbin "baserom.gba", 0x121E24, 0x0000005

gUnk_08121E29:: @ 08121E29
	.incbin "baserom.gba", 0x121E29, 0x0000008

gUnk_08121E31:: @ 08121E31
	.incbin "baserom.gba", 0x121E31, 0x000001F

gUnk_08121E50:: @ 08121E50
	.4byte gUnk_08121E24
	.4byte gUnk_08121E31
	.4byte 00000000
