	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080D3D94:: @ 080D3D94
	.incbin "baserom.gba", 0x0D3D94, 0x00000E0

gUnk_080D3E74:: @ 080D3E74
	.incbin "baserom.gba", 0x0D3E74, 0x000001C

gUnk_080D3E90:: @ 080D3E90
	.incbin "baserom.gba", 0x0D3E90, 0x00000A0

gUnk_080D3F30:: @ 080D3F30
	.incbin "baserom.gba", 0x0D3F30, 0x00000A0

gUnk_080D3FD0:: @ 080D3FD0
	.incbin "baserom.gba", 0x0D3FD0, 0x00000A0

gUnk_080D4070:: @ 080D4070
	.incbin "baserom.gba", 0x0D4070, 0x00000A0

gUnk_080D4110:: @ 080D4110
	.4byte gUnk_080D3E90
	.4byte gUnk_080D3F30
	.4byte gUnk_080D3FD0
	.4byte gUnk_080D4070

gUnk_080D4120:: @ 080D4120
	.4byte sub_0804AAD4
	.4byte sub_0804AB04
	.4byte sub_0804AB24

gUnk_080D412C:: @ 080D412C
	.4byte sub_0804AB70
	.4byte sub_0804AC1C
	.4byte sub_0804ACC8

gUnk_080D4138:: @ 080D4138
	.incbin "baserom.gba", 0x0D4138, 0x0000008

gUnk_080D4140:: @ 080D4140
	.incbin "baserom.gba", 0x0D4140, 0x0000010
