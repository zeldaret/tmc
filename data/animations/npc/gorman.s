	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111CBC:: @ 08111CBC
	.incbin "assets/gorman/gUnk_08111CBC.bin"

gUnk_08111CC1:: @ 08111CC1
	.incbin "assets/gorman/gUnk_08111CC1.bin"

gUnk_08111CC6:: @ 08111CC6
	.incbin "assets/gorman/gUnk_08111CC6.bin"

gUnk_08111CCB:: @ 08111CCB
	.incbin "assets/gorman/gUnk_08111CCB.bin"

gUnk_08111CD0:: @ 08111CD0
	.incbin "assets/gorman/gUnk_08111CD0.bin"

gUnk_08111CE9:: @ 08111CE9
	.incbin "assets/gorman/gUnk_08111CE9.bin"

gUnk_08111D02:: @ 08111D02
	.incbin "assets/gorman/gUnk_08111D02.bin"

gUnk_08111D1B:: @ 08111D1B
	.incbin "assets/gorman/gUnk_08111D1B.bin"

gUnk_08111D34:: @ 08111D34
	.4byte gUnk_08111CBC
	.4byte gUnk_08111CC1
	.4byte gUnk_08111CC6
	.4byte gUnk_08111CCB
	.4byte gUnk_08111CD0
	.4byte gUnk_08111D1B
	.4byte gUnk_08111CE9
	.4byte gUnk_08111D02
	.4byte 00000000
