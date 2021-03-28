	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108C28:: @ 08108C28
	.incbin "baserom.gba", 0x108C28, 0x000001C

gUnk_08108C44:: @ 08108C44
	.incbin "baserom.gba", 0x108C44, 0x0000010

gUnk_08108C54:: @ 08108C54
	.4byte sub_0805B448
	.4byte sub_0805B474

gUnk_08108C5C:: @ 08108C5C
	.incbin "baserom.gba", 0x108C5C, 0x0000008
