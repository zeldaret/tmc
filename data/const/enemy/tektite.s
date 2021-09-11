	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CDED0:: @ 080CDED0
	.4byte sub_0802F138
	.4byte sub_0802F150
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_0802F1F0
	.4byte nullsub_16

gUnk_080CDEE8:: @ 080CDEE8
	.4byte sub_0802F210
	.4byte sub_0802F284
	.4byte sub_0802F300
	.4byte sub_0802F3F4

gUnk_080CDEF8:: @ 080CDEF8
	.incbin "tektite/gUnk_080CDEF8.bin"
