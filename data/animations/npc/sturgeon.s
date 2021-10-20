	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FB78:: @ 0810FB78
	.incbin "sturgeon/gUnk_0810FB78.bin"

gUnk_0810FB7D:: @ 0810FB7D
	.incbin "sturgeon/gUnk_0810FB7D.bin"

gUnk_0810FB82:: @ 0810FB82
	.incbin "sturgeon/gUnk_0810FB82.bin"

gUnk_0810FB87:: @ 0810FB87
	.incbin "sturgeon/gUnk_0810FB87.bin"

gUnk_0810FB8C:: @ 0810FB8C
	.incbin "sturgeon/gUnk_0810FB8C.bin"

gUnk_0810FBAD:: @ 0810FBAD
	.incbin "sturgeon/gUnk_0810FBAD.bin"

gSpriteAnimations_Sturgeon:: @ 0810FBD0
	.4byte gUnk_0810FB78
	.4byte gUnk_0810FB7D
	.4byte gUnk_0810FB82
	.4byte gUnk_0810FB87
	.4byte gUnk_0810FB24
	.4byte gUnk_0810FB39
	.4byte gUnk_0810FB4E
	.4byte gUnk_0810FB63
	.4byte gUnk_0810FB8C
	.4byte gUnk_0810FBAD
	.4byte 00000000
