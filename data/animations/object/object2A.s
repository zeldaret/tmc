	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120DD8:: @ 08120DD8
	.incbin "assets/object2A/gUnk_08120DD8.bin"

gUnk_08120DEC:: @ 08120DEC
	.4byte gUnk_08120DD8
	.4byte 00000000
