	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113004:: @ 08113004
	.incbin "baserom.gba", 0x113004, 0x0000020

gUnk_08113024:: @ 08113024
	.4byte gUnk_08113004
	.incbin "baserom.gba", 0x113028, 0x0000004
