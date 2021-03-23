	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110E4C:: @ 08110E4C
	.4byte sub_080673C0
	.4byte sub_080673F4
	.4byte sub_08067410
	.4byte sub_0806752C

gUnk_08110E5C:: @ 08110E5C
	.4byte sub_08067418
	.4byte sub_08067514

gUnk_08110E64:: @ 08110E64
	.incbin "baserom.gba", 0x110E64, 0x0000004

gUnk_08110E68:: @ 08110E68
	.incbin "baserom.gba", 0x110E68, 0x0000010

gUnk_08110E78:: @ 08110E78
	.incbin "baserom.gba", 0x110E78, 0x0000012

gUnk_08110E8A:: @ 08110E8A
	.incbin "baserom.gba", 0x110E8A, 0x000000A

gUnk_08110E94:: @ 08110E94
	.incbin "baserom.gba", 0x110E94, 0x0000008
