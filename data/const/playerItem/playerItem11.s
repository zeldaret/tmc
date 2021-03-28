	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_080B3DD0:: @ 080B3DD0
	.4byte sub_08018CBC
	.4byte sub_08018DE8
	.4byte sub_08018E68
	.4byte sub_08018F6C

gUnk_080B3DE0:: @ 080B3DE0
	.incbin "baserom.gba", 0x0B3DE0, 0x0000008

gUnk_080B3DE8:: @ 080B3DE8
	.4byte gUnk_080B3E18
	.4byte gUnk_080B3E20
	.4byte gUnk_080B3E28

gUnk_080B3DF4:: @ 080B3DF4
	.incbin "baserom.gba", 0x0B3DF4, 0x0000024

gUnk_080B3E18:: @ 080B3E18
	.incbin "baserom.gba", 0x0B3E18, 0x0000008

gUnk_080B3E20:: @ 080B3E20
	.incbin "baserom.gba", 0x0B3E20, 0x0000008

gUnk_080B3E28:: @ 080B3E28
	.incbin "baserom.gba", 0x0B3E28, 0x0000008
