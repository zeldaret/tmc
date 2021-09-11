	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08112E1C:: @ 08112E1C
	.incbin "assets/percy/gUnk_08112E1C.bin"

gUnk_08112E2C:: @ 08112E2C
	.incbin "assets/percy/gUnk_08112E2C.bin"
	.4byte sub_0806B504
	.incbin "assets/percy/gUnk_08112E2C_1.bin"
	.4byte sub_0806B540

gUnk_08112E54:: @ 08112E54
	.incbin "assets/percy/gUnk_08112E54.bin"
