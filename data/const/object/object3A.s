	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081215E8:: @ 081215E8
	.incbin "baserom.gba", 0x1215E8, 0x000002A

gUnk_08121612:: @ 08121612
	.incbin "baserom.gba", 0x121612, 0x0000002

gUnk_08121614:: @ 08121614
	.incbin "baserom.gba", 0x121614, 0x000000D

gUnk_08121621:: @ 08121621
	.incbin "baserom.gba", 0x121621, 0x0000017

gUnk_08121638:: @ 08121638
	.4byte sub_0808C6D4
	.4byte sub_0808C74C

gUnk_08121640:: @ 08121640
	.4byte sub_0808C858
	.4byte sub_0808C8B8

gUnk_08121648:: @ 08121648
	.incbin "baserom.gba", 0x121648, 0x0000020
