	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810CF4C:: @ 0810CF4C
	.incbin "baserom.gba", 0x10CF4C, 0x0000158

gUnk_0810D0A4:: @ 0810D0A4
	.incbin "baserom.gba", 0x10D0A4, 0x0002480

gUnk_0810F524:: @ 0810F524
	.incbin "baserom.gba", 0x10F524, 0x0000020

gUnk_0810F544:: @ 0810F544
	.4byte sub_08063E90
	.4byte sub_08063F20
	.4byte sub_08063F78

gUnk_0810F550:: @ 0810F550
	.4byte sub_08063D44
	.4byte sub_08063DC8
	.4byte sub_08063E54
	.4byte sub_08063E6C

