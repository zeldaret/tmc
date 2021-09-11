	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108C28:: @ 08108C28
	.incbin "manager1B/gUnk_08108C28.bin"

gUnk_08108C44:: @ 08108C44
	.incbin "manager1B/gUnk_08108C44.bin"

gUnk_08108C54:: @ 08108C54
	.4byte sub_0805B448
	.4byte sub_0805B474

gUnk_08108C5C:: @ 08108C5C
	.incbin "manager1B/gUnk_08108C5C.bin"
