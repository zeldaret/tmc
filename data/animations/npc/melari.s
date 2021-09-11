	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111544:: @ 08111544
	.incbin "melari/gUnk_08111544.bin"

gUnk_08111549:: @ 08111549
	.incbin "melari/gUnk_08111549.bin"

gUnk_0811154E:: @ 0811154E
	.incbin "melari/gUnk_0811154E.bin"

gUnk_08111553:: @ 08111553
	.incbin "melari/gUnk_08111553.bin"

gUnk_0811158C:: @ 0811158C
	.incbin "melari/gUnk_0811158C.bin"

gUnk_08111594:: @ 08111594
	.4byte gUnk_08111549
	.4byte gUnk_08111544
	.4byte gUnk_08111549
	.4byte gUnk_0811154E
	.4byte gUnk_08111549
	.4byte gUnk_08111544
	.4byte gUnk_08111549
	.4byte gUnk_0811154E
	.4byte gUnk_08111553
	.4byte gUnk_0811158C
	.4byte 00000000
    
