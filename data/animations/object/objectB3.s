	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124A2C:: @ 08124A2C
	.incbin "assets/objectB3/gUnk_08124A2C.bin"

gUnk_08124A7D:: @ 08124A7D
	.incbin "assets/objectB3/gUnk_08124A7D.bin"

gUnk_08124A82:: @ 08124A82
	.incbin "assets/objectB3/gUnk_08124A82.bin"

gUnk_08124A87:: @ 08124A87
	.incbin "assets/objectB3/gUnk_08124A87.bin"

gUnk_08124A8C:: @ 08124A8C
	.incbin "assets/objectB3/gUnk_08124A8C.bin"

gUnk_08124AAD:: @ 08124AAD
	.incbin "assets/objectB3/gUnk_08124AAD.bin"

gUnk_08124AF8:: @ 08124AF8
	.4byte gUnk_08124A2C
	.4byte gUnk_08124A7D
	.4byte gUnk_08124A82
	.4byte gUnk_08124A87
	.4byte gUnk_08124A8C
	.4byte gUnk_08124AAD
