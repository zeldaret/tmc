	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081234EC:: @ 081234EC
	.4byte gUnk_081234F4
	.4byte gUnk_081234FC

gUnk_081234F4:: @ 081234F4
	.incbin "baserom.gba", 0x1234F4, 0x0000008

gUnk_081234FC:: @ 081234FC
	.incbin "baserom.gba", 0x1234FC, 0x0000008

gUnk_08123504:: @ 08123504
	.4byte sub_080984EC
	.4byte nullsub_532
