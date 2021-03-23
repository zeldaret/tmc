	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124950:: @ 08124950
	.4byte sub_080A08C4
	.4byte sub_080A0910
	.4byte sub_080A0938
	.4byte nullsub_127

gUnk_08124960:: @ 08124960
	.incbin "baserom.gba", 0x124960, 0x0000005

gUnk_08124965:: @ 08124965
	.incbin "baserom.gba", 0x124965, 0x0000015

gUnk_0812497A:: @ 0812497A
	.incbin "baserom.gba", 0x12497A, 0x000001A
