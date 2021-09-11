	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CDFE8:: @ 080CDFE8
	.incbin "wizzrobeFire/gUnk_080CDFE8.bin"

gUnk_080CDFF5:: @ 080CDFF5
	.incbin "wizzrobeFire/gUnk_080CDFF5.bin"

gUnk_080CE002:: @ 080CE002
	.incbin "wizzrobeFire/gUnk_080CE002.bin"

gUnk_080CE00F:: @ 080CE00F
	.incbin "wizzrobeFire/gUnk_080CE00F.bin"

gUnk_080CE01C:: @ 080CE01C
	.incbin "wizzrobeFire/gUnk_080CE01C.bin"

gUnk_080CE029:: @ 080CE029
	.incbin "wizzrobeFire/gUnk_080CE029.bin"

gUnk_080CE036:: @ 080CE036
	.incbin "wizzrobeFire/gUnk_080CE036.bin"

gUnk_080CE043:: @ 080CE043
	.incbin "wizzrobeFire/gUnk_080CE043.bin"

gUnk_080CE050:: @ 080CE050
	.4byte gUnk_080CDFE8
	.4byte gUnk_080CDFF5
	.4byte gUnk_080CE002
	.4byte gUnk_080CE00F
	.4byte gUnk_080CE01C
	.4byte gUnk_080CE029
	.4byte gUnk_080CE036
	.4byte gUnk_080CE043
	.4byte 00000000
