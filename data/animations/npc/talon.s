	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FEE0:: @ 0810FEE0
	.incbin "talon/gUnk_0810FEE0.bin"

gUnk_0810FEE5:: @ 0810FEE5
	.incbin "talon/gUnk_0810FEE5.bin"

gUnk_0810FEEA:: @ 0810FEEA
	.incbin "talon/gUnk_0810FEEA.bin"

gUnk_0810FEEF:: @ 0810FEEF
	.incbin "talon/gUnk_0810FEEF.bin"

gUnk_0810FEF4:: @ 0810FEF4
	.incbin "talon/gUnk_0810FEF4.bin"

gUnk_0810FF05:: @ 0810FF05
	.incbin "talon/gUnk_0810FF05.bin"

gUnk_0810FF16:: @ 0810FF16
	.incbin "talon/gUnk_0810FF16.bin"

gUnk_0810FF27:: @ 0810FF27
	.incbin "talon/gUnk_0810FF27.bin"

gUnk_0810FF38:: @ 0810FF38
	.4byte gUnk_0810FEE5
	.4byte gUnk_0810FEEF
	.4byte gUnk_0810FEE0
	.4byte gUnk_0810FEEA
	.4byte gUnk_0810FEF4
	.4byte gUnk_0810FF05
	.4byte gUnk_0810FF16
	.4byte gUnk_0810FF27
	.4byte 00000000
