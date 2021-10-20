	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_0810F8E4:: @ 0810F8E4
	.incbin "maid/gUnk_0810F8E4.bin"

gUnk_0810F8E9:: @ 0810F8E9
	.incbin "maid/gUnk_0810F8E9.bin"

gUnk_0810F8EE:: @ 0810F8EE
	.incbin "maid/gUnk_0810F8EE.bin"

gUnk_0810F8F3:: @ 0810F8F3
	.incbin "maid/gUnk_0810F8F3.bin"

gUnk_0810F8F8:: @ 0810F8F8
	.incbin "maid/gUnk_0810F8F8.bin"

gUnk_0810F909:: @ 0810F909
	.incbin "maid/gUnk_0810F909.bin"

gUnk_0810F91A:: @ 0810F91A
	.incbin "maid/gUnk_0810F91A.bin"

gUnk_0810F92B:: @ 0810F92B
	.incbin "maid/gUnk_0810F92B.bin"

gUnk_0810F93C:: @ 0810F93C
	.incbin "maid/gUnk_0810F93C.bin"

gSpriteAnimations_Maid:: @ 0810F944
	.4byte gUnk_0810F8E4
	.4byte gUnk_0810F8E9
	.4byte gUnk_0810F8EE
	.4byte gUnk_0810F8F3
	.4byte gUnk_0810F8F8
	.4byte gUnk_0810F909
	.4byte gUnk_0810F91A
	.4byte gUnk_0810F92B
	.4byte gUnk_0810F93C
	.4byte 00000000
