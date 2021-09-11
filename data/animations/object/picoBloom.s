	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_0812357A:: @ 0812357A
	.incbin "assets/picoBloom/gUnk_0812357A.bin"

gUnk_08123593:: @ 08123593
	.incbin "assets/picoBloom/gUnk_08123593.bin"

gUnk_081235AC:: @ 081235AC
	.incbin "assets/picoBloom/gUnk_081235AC.bin"

gUnk_081235B1:: @ 081235B1
	.incbin "assets/picoBloom/gUnk_081235B1.bin"

gUnk_081235B6:: @ 081235B6
	.incbin "assets/picoBloom/gUnk_081235B6.bin"

gUnk_081235EB:: @ 081235EB
	.incbin "assets/picoBloom/gUnk_081235EB.bin"

gUnk_08123620:: @ 08123620
	.4byte gUnk_0812357A
	.4byte gUnk_081235B6
	.4byte gUnk_081235AC
	.4byte gUnk_08123593
	.4byte gUnk_081235EB
	.4byte gUnk_081235B1
	.4byte 00000000

gUnk_0812363C:: @ 0812363C
	.incbin "assets/picoBloom/gUnk_0812363C.bin"
	.4byte gUnk_0812363C
	.4byte 00000000
