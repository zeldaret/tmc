	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_081237BA:: @ 081237BA
	.incbin "assets/bigIceBlock/gUnk_081237BA.bin"

gUnk_081237BE:: @ 081237BE
	.incbin "assets/bigIceBlock/gUnk_081237BE.bin"

gUnk_081237C2:: @ 081237C2
	.incbin "assets/bigIceBlock/gUnk_081237C2.bin"

gUnk_081237C6:: @ 081237C6
	.incbin "assets/bigIceBlock/gUnk_081237C6.bin"

gUnk_081237CA:: @ 081237CA
	.incbin "assets/bigIceBlock/gUnk_081237CA.bin"

gUnk_081237E0:: @ 081237E0
	.4byte gUnk_081237BA
	.4byte gUnk_081237BE
	.4byte gUnk_081237C2
	.4byte gUnk_081237C6
	.4byte gUnk_081237CA
	.4byte 00000000
