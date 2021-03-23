	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CE288:: @ 080CE288
	.4byte sub_08030A3C
	.4byte sub_08030A54
	.4byte sub_08001324
	.4byte sub_08030B34
	.4byte sub_08001242
	.4byte nullsub_18

gUnk_080CE2A0:: @ 080CE2A0
	.4byte sub_08030B78
	.4byte sub_08030BEC
	.4byte sub_08030C0C
	.4byte sub_08030C70
	.4byte sub_08030CD0
	.4byte sub_08030D68
	.4byte sub_08030E20

gUnk_080CE2BC:: @ 080CE2BC
	.incbin "baserom.gba", 0x0CE2BC, 0x0000004

gUnk_080CE2C0:: @ 080CE2C0
	.incbin "baserom.gba", 0x0CE2C0, 0x0000034

gUnk_080CE2F4:: @ 080CE2F4
	.incbin "baserom.gba", 0x0CE2F4, 0x0000010

gUnk_080CE304:: @ 080CE304
	.incbin "baserom.gba", 0x0CE304, 0x0000008
