	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111D58:: @ 08111D58
	.incbin "baserom.gba", 0x111D58, 0x0000030

gUnk_08111D88:: @ 08111D88
	.4byte sub_08069B44
	.4byte sub_08069C40
	.4byte sub_08069D54
	.4byte sub_08069DF8
	.4byte sub_08069E44
	.4byte sub_08069E50
	.4byte sub_08069ECC
	.4byte sub_08069EE0

gUnk_08111DA8:: @ 08111DA8
	.incbin "baserom.gba", 0x111DA8, 0x0000008

gUnk_08111DB0:: @ 08111DB0
	.incbin "baserom.gba", 0x111DB0, 0x0000066

gUnk_08111E16:: @ 08111E16
	.incbin "baserom.gba", 0x111E16, 0x000001A

gUnk_08111E30:: @ 08111E30
	.incbin "baserom.gba", 0x111E30, 0x0000004

gUnk_08111E34:: @ 08111E34
	.incbin "baserom.gba", 0x111E34, 0x00000AD

gUnk_08111EE1:: @ 08111EE1
	.incbin "baserom.gba", 0x111EE1, 0x0000047

gUnk_08111F28:: @ 08111F28
	.incbin "baserom.gba", 0x111F28, 0x0000008

gUnk_08111F30:: @ 08111F30
	.incbin "baserom.gba", 0x111F30, 0x0000044

gUnk_08111F74:: @ 08111F74
	.incbin "baserom.gba", 0x111F74, 0x0000064

gUnk_08111FD8:: @ 08111FD8
	.incbin "baserom.gba", 0x111FD8, 0x000000A
