	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_08107C0C:: @ 08107C0C
	.incbin "baserom.gba", 0x107C0C, 0x0000003

gUnk_08107C0F:: @ 08107C0F
	.incbin "baserom.gba", 0x107C0F, 0x0000005

gUnk_08107C14:: @ 08107C14
	.incbin "baserom.gba", 0x107C14, 0x0000004

gUnk_08107C18:: @ 08107C18
	.incbin "baserom.gba", 0x107C18, 0x0000004
