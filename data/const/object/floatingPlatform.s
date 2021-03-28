	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120650:: @ 08120650
	.4byte sub_080860D8
	.4byte sub_0808611C

gUnk_08120658:: @ 08120658
	.incbin "baserom.gba", 0x120658, 0x0000008
