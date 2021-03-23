	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081205E4:: @ 081205E4
	.incbin "baserom.gba", 0x1205E4, 0x0000004

gUnk_081205E8:: @ 081205E8
	.incbin "baserom.gba", 0x1205E8, 0x0000004

gUnk_081205EC:: @ 081205EC
	.incbin "baserom.gba", 0x1205EC, 0x0000004

gUnk_081205F0:: @ 081205F0
	.incbin "baserom.gba", 0x1205F0, 0x0000004

gUnk_081205F4:: @ 081205F4
	.4byte gUnk_081205E4
	.4byte gUnk_081205E8
	.4byte gUnk_081205EC
	.4byte gUnk_081205F0
	.4byte 00000000
