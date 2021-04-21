	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A3C0:: @ 0812A3C0
	.4byte sub_080AAB04
	.4byte sub_080AAB1C
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity

gUnk_0812A3D4:: @ 0812A3D4
	.4byte sub_080AAB24
	.4byte sub_080AAB38
	.4byte sub_080AAB64

gUnk_0812A3E0:: @ 0812A3E0
	.incbin "baserom.gba", 0x12A3E0, 0x0000014

gUnk_0812A3F4:: @ 0812A3F4
	.4byte gUnk_0812A3E0
	.incbin "baserom.gba", 0x12A3F8, 0x0000004
