	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081232AC:: @ 081232AC
	.4byte sub_080975A0
	.4byte sub_08097730
	.4byte sub_08097748
	.4byte sub_080977A0
	.4byte nullsub_528

gUnk_081232C0:: @ 081232C0
	.incbin "baserom.gba", 0x1232C0, 0x000001D

gUnk_081232DD:: @ 081232DD
	.incbin "baserom.gba", 0x1232DD, 0x0000001

gUnk_081232DE:: @ 081232DE
	.incbin "baserom.gba", 0x1232DE, 0x0000006
