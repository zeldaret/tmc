	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121090:: @ 08121090
	.incbin "assets/pushableRock/gUnk_08121090.bin"

gUnk_08121094:: @ 08121094
	.incbin "assets/pushableRock/gUnk_08121094.bin"

gUnk_081210D0:: @ 081210D0
	.incbin "assets/pushableRock/gUnk_081210D0.bin"

gUnk_0812110C:: @ 0812110C
	.incbin "assets/pushableRock/gUnk_0812110C.bin"

gUnk_08121148:: @ 08121148
	.incbin "assets/pushableRock/gUnk_08121148.bin"

gUnk_08121154:: @ 08121154
	.incbin "assets/pushableRock/gUnk_08121154.bin"

gUnk_08121158:: @ 08121158
	.4byte gUnk_08121090
	.4byte gUnk_08121094
	.4byte gUnk_081210D0
	.4byte gUnk_0812110C
	.4byte gUnk_081210D0
	.4byte gUnk_08121148
	.4byte gUnk_08121154
	.4byte 00000000
