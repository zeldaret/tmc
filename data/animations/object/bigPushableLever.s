	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081236FC:: @ 081236FC
	.incbin "bigPushableLever/gUnk_081236FC.bin"

gUnk_08123711:: @ 08123711
	.incbin "bigPushableLever/gUnk_08123711.bin"

gUnk_08123728:: @ 08123728
	.4byte gUnk_081236FC
	.4byte gUnk_08123711
	.4byte 00000000
