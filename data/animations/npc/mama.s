	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081137B0:: @ 081137B0
	.incbin "mama/gUnk_081137B0.bin"

gUnk_081137E9:: @ 081137E9
	.incbin "mama/gUnk_081137E9.bin"

gUnk_08113892:: @ 08113892
	.incbin "mama/gUnk_08113892.bin"

gUnk_08113897:: @ 08113897
	.incbin "mama/gUnk_08113897.bin"

gUnk_081138B0:: @ 081138B0
	.incbin "mama/gUnk_081138B0.bin"

gUnk_081138B8:: @ 081138B8
	.4byte gUnk_081137E9
	.4byte gUnk_08113892
	.4byte gUnk_08113897
	.4byte gUnk_081138B0
	.4byte gUnk_081137B0
	.4byte gUnk_081137B0
	.4byte gUnk_081137B0
	.4byte gUnk_081137B0
	.4byte 00000000
