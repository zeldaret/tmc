	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
 @   .align 2

gUnk_0810C445:: @ 0810C445
	.incbin "pita/gUnk_0810C445.bin"

gUnk_0810C44A:: @ 0810C44A
	.incbin "pita/gUnk_0810C44A.bin"

gUnk_0810C468:: @ 0810C468
	.4byte gUnk_0810C445
	.4byte gUnk_0810C445
	.4byte gUnk_0810C445
	.4byte gUnk_0810C445
	.4byte gUnk_0810C44A
	.4byte gUnk_0810C44A
	.4byte gUnk_0810C44A
	.4byte gUnk_0810C44A
	.4byte 00000000
