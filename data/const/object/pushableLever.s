	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123494:: @ 08123494
	.4byte sub_08098278
	.4byte sub_08098294
	.4byte sub_08098304

gUnk_081234A0:: @ 081234A0
	.incbin "baserom.gba", 0x1234A0, 0x0000004

gUnk_081234A4:: @ 081234A4
	.incbin "baserom.gba", 0x1234A4, 0x0000008

gUnk_081234AC:: @ 081234AC
	.incbin "baserom.gba", 0x1234AC, 0x0000008
