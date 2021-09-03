	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108C64:: @ 08108C64
	.4byte sub_0805B554
	.4byte sub_0805B55C

gUnk_08108C6C:: @ 08108C6C
	.incbin "baserom.gba", 0x108C6C, 0x000000B
	.incbin "baserom.gba", 0x108C77, 0x0000005

gUnk_08108C7C:: @ 08108C7C
	.incbin "baserom.gba", 0x108C7C, 0x0000004
