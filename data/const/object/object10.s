	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120560:: @ 08120560
	.4byte sub_0808483C
	.4byte sub_080848C8
	.4byte sub_080849D8

gUnk_0812056C:: @ 0812056C
	.incbin "baserom.gba", 0x12056C, 0x0000008

gUnk_08120574:: @ 08120574
	.incbin "baserom.gba", 0x120574, 0x0000008
