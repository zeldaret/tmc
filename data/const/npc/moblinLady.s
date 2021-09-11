	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113004:: @ 08113004
	.incbin "moblinLady/gUnk_08113004.bin"

gUnk_08113024:: @ 08113024
	.4byte gUnk_08113004
	.incbin "moblinLady/gUnk_08113024.bin"
