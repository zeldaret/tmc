	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CEB60:: @ 080CEB60
	.incbin "assets/bombarossa/gUnk_080CEB60.bin"

gUnk_080CEB6C:: @ 080CEB6C
	.4byte gUnk_080CEB60
	.4byte 00000000
