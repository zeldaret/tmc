	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081228A8:: @ 081228A8
	.incbin "baserom.gba", 0x1228A8, 0x0000008

gUnk_081228B0:: @ 081228B0
	.4byte sub_080933D8
	.4byte sub_080933FC

gUnk_081228B8:: @ 081228B8
	.incbin "baserom.gba", 0x1228B8, 0x0000010
