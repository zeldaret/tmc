	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D19FC:: @ 080D19FC
	.4byte sub_08045B98
	.4byte sub_08045BC8
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_08001242
	.4byte nullsub_174

gUnk_080D1A14:: @ 080D1A14
	.4byte sub_08045C3C
	.4byte sub_08045CA4
	.4byte nullsub_24
	.4byte sub_08045CE0
	.4byte sub_08045E14
	.4byte sub_08045EC8
	.4byte sub_08045ED4
	.4byte sub_08045EDC
	.4byte nullsub_25

gUnk_080D1A38:: @ 080D1A38
	.incbin "businessScrubPrologue/gUnk_080D1A38.bin"

gUnk_080D1A3E:: @ 080D1A3E
	.incbin "businessScrubPrologue/gUnk_080D1A3E.bin"

gUnk_080D1A4E:: @ 080D1A4E
	.incbin "businessScrubPrologue/gUnk_080D1A4E.bin"
