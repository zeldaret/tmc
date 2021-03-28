	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081104E0:: @ 081104E0
	.4byte sub_08066654
	.4byte sub_08066688
	.4byte sub_080666DC

gUnk_081104EC:: @ 081104EC
	.4byte sub_080666E4
	.4byte sub_0806670C
	.4byte sub_08066718

gUnk_081104F8:: @ 081104F8
	.incbin "baserom.gba", 0x1104F8, 0x0000008
