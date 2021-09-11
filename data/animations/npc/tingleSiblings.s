	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FC54:: @ 0810FC54
	.incbin "assets/tingleSiblings/gUnk_0810FC54.bin"

gUnk_0810FC5E:: @ 0810FC5E
	.incbin "assets/tingleSiblings/gUnk_0810FC5E.bin"

gUnk_0810FC68:: @ 0810FC68
	.incbin "assets/tingleSiblings/gUnk_0810FC68.bin"

gUnk_0810FCAD:: @ 0810FCAD
	.incbin "assets/tingleSiblings/gUnk_0810FCAD.bin"

gUnk_0810FCCE:: @ 0810FCCE
	.incbin "assets/tingleSiblings/gUnk_0810FCCE.bin"

gUnk_0810FD6C:: @ 0810FD6C
	.4byte gUnk_0810FC5E
	.4byte gUnk_0810FC54
	.4byte gUnk_0810FC5E
	.4byte gUnk_0810FC68
	.4byte gUnk_0810FCAD
	.4byte gUnk_0810FCAD
	.4byte gUnk_0810FCAD
	.4byte gUnk_0810FCAD
	.4byte gUnk_0810FCCE
	.4byte gUnk_0810FCCE
	.4byte gUnk_0810FCCE
	.4byte gUnk_0810FCCE
	.4byte 00000000
