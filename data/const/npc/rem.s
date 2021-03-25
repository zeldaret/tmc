	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08112260:: @ 08112260
	.4byte sub_0806a370
	.4byte sub_0806A5E8
	.4byte sub_0806A630
	.4byte sub_0806A674
	.4byte sub_0806A830
	.4byte sub_0806A890

gUnk_08112278:: @ 08112278
	.4byte sub_0806A3D8
	.4byte sub_0806A410
	.4byte sub_0806A458
	.4byte sub_0806A4CC
	.4byte sub_0806A550
	.4byte nullsub_503
	.4byte sub_0806A5C0

gUnk_08112294:: @ 08112294
	.incbin "baserom.gba", 0x112294, 0x0000008

gUnk_0811229C:: @ 0811229C
	.incbin "baserom.gba", 0x11229C, 0x0000004

gUnk_081122A0:: @ 081122A0
	.incbin "baserom.gba", 0x1122A0, 0x0000008

gUnk_081122A8:: @ 081122A8
	.incbin "baserom.gba", 0x1122A8, 0x0000008

gUnk_081122B0:: @ 081122B0
	.incbin "baserom.gba", 0x1122B0, 0x0000008

gUnk_081122B8:: @ 081122B8
	.incbin "baserom.gba", 0x1122B8, 0x0000008
