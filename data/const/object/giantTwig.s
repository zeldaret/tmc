	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081228D8:: @ 081228D8
	.4byte sub_080937C4
	.4byte sub_08093884

gUnk_081228E0:: @ 081228E0
	.4byte sub_080938C0
	.4byte nullsub_524

gUnk_081228E8:: @ 081228E8
	.4byte sub_08093910
	.4byte nullsub_525

gUnk_081228F0:: @ 081228F0
	.4byte sub_080939C0
	.4byte nullsub_526

gUnk_081228F8:: @ 081228F8
	.incbin "baserom.gba", 0x1228F8, 0x0000026

gUnk_0812291E:: @ 0812291E
	.incbin "baserom.gba", 0x12291E, 0x0000026
