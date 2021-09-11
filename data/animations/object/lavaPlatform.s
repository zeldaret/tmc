	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081226A4:: @ 081226A4
	.incbin "lavaPlatform/gUnk_081226A4.bin"

gUnk_081226A8:: @ 081226A8
	.incbin "lavaPlatform/gUnk_081226A8.bin"

gUnk_081226AC:: @ 081226AC
	.incbin "lavaPlatform/gUnk_081226AC.bin"

gUnk_0812273D:: @ 0812273D
	.incbin "lavaPlatform/gUnk_0812273D.bin"

gUnk_08122742:: @ 08122742
	.incbin "lavaPlatform/gUnk_08122742.bin"

gUnk_08122753:: @ 08122753
	.incbin "lavaPlatform/gUnk_08122753.bin"

gUnk_08122764:: @ 08122764
	.4byte gUnk_081226A4
	.4byte gUnk_081226A8
	.4byte gUnk_081226AC
	.4byte gUnk_0812273D
	.4byte gUnk_08122742
	.4byte gUnk_08122753
	.4byte 00000000
