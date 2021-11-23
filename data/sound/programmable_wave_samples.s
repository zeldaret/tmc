	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

@ programmable wave samples

gUnk_08A11BAC:: @ 08A11BAC
	.incbin "programmable_wave_samples/gUnk_08A11BAC.bin"

gUnk_08A11BDC:: @ 08A11BDC
	.incbin "programmable_wave_samples/gUnk_08A11BDC.bin"

gUnk_08A11C0C:: @ 08A11C0C
	.incbin "programmable_wave_samples/gUnk_08A11C0C.bin"

gUnk_08A11C1C:: @ 08A11C1C
	.incbin "programmable_wave_samples/gUnk_08A11C1C.bin"
