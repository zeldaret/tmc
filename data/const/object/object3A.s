	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081215E8:: @ 081215E8
	.incbin "baserom.gba", 0x1215E8, 0x000002A
	.incbin "baserom.gba", 0x121612, 0x0000002
	.incbin "baserom.gba", 0x121614, 0x000000D
	.incbin "baserom.gba", 0x121621, 0x0000017

gUnk_08121638:: @ 08121638
	.4byte sub_0808C6D4
	.4byte sub_0808C74C

gUnk_08121640:: @ 08121640
	.4byte sub_0808C858
	.4byte sub_0808C8B8

gUnk_08121648:: @ 08121648
	.incbin "baserom.gba", 0x121648, 0x0000020
