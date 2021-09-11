	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

@ TODO might as well be giantRock or archway
gUnk_08122264:: @ 08122264
	.incbin "minishSizedEntrance/gUnk_08122264.bin"

gUnk_08122268:: @ 08122268
	.incbin "minishSizedEntrance/gUnk_08122268.bin"

gUnk_0812226C:: @ 0812226C
	.4byte gUnk_08122264
	.4byte gUnk_08122268
	.4byte 00000000

