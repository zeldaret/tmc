	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129770:: @ 08129770
	.incbin "baserom.gba", 0x129770, 0x0000005

gUnk_08129775:: @ 08129775
	.incbin "baserom.gba", 0x129775, 0x000001B

gUnk_08129790:: @ 08129790
	.4byte gUnk_08129770
	.4byte gUnk_08129775
	.4byte 00000000
