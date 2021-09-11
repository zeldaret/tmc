	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081138DC:: @ 081138DC
	.incbin "emma/gUnk_081138DC.bin"

gUnk_081138E1:: @ 081138E1
	.incbin "emma/gUnk_081138E1.bin"

gUnk_081138FC:: @ 081138FC
	.4byte gUnk_081138DC
	.4byte gUnk_081138DC
	.4byte gUnk_081138E1
	.4byte gUnk_081138DC
	.4byte 00000000
