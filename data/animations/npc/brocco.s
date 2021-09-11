	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810CAFC:: @ 0810CAFC
	.incbin "brocco/gUnk_0810CAFC.bin"

gUnk_0810CB45:: @ 0810CB45
	.incbin "brocco/gUnk_0810CB45.bin"

gUnk_0810CB4A:: @ 0810CB4A
	.incbin "brocco/gUnk_0810CB4A.bin"

gUnk_0810CB4F:: @ 0810CB4F
	.incbin "brocco/gUnk_0810CB4F.bin"

gUnk_0810CB54:: @ 0810CB54
	.4byte gUnk_0810CAFC
	.4byte gUnk_0810CAFC
	.4byte gUnk_0810CAFC
	.4byte gUnk_0810CAFC
	.4byte gUnk_0810CB45
	.4byte gUnk_0810CB4A
	.4byte gUnk_0810CB45
	.4byte gUnk_0810CB4F
	.4byte 00000000
