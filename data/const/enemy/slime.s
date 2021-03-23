	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D16A4:: @ 080D16A4
	.4byte sub_08044F70
	.4byte sub_08044F88
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_08001242
	.4byte nullsub_171

gUnk_080D16BC:: @ 080D16BC
	.4byte sub_08044FC8
	.4byte sub_08044FF8
	.4byte sub_08045018
	.4byte sub_08045088
	.4byte sub_080450A8

gUnk_080D16D0:: @ 080D16D0
	.incbin "baserom.gba", 0x0D16D0, 0x0000004

gUnk_080D16D4:: @ 080D16D4
	.incbin "baserom.gba", 0x0D16D4, 0x0000008

