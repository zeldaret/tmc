	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CE530:: @ 080CE530
	.4byte sub_08031680
	.4byte nullsub_152
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_08001242
	.4byte sub_0803169C

gUnk_080CE548:: @ 080CE548
	.4byte sub_08031704
	.4byte sub_08031714
	.4byte sub_08031770

gUnk_080CE554:: @ 080CE554
	.4byte sub_080316DC
	.4byte sub_080316E8
	.4byte sub_080316F0

gUnk_080CE560:: @ 080CE560
	.incbin "assets/smallPesto/gUnk_080CE560.bin"
