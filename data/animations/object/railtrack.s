	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081205E4:: @ 081205E4
	.incbin "railtrack/gUnk_081205E4.bin"

gUnk_081205E8:: @ 081205E8
	.incbin "railtrack/gUnk_081205E8.bin"

gUnk_081205EC:: @ 081205EC
	.incbin "railtrack/gUnk_081205EC.bin"

gUnk_081205F0:: @ 081205F0
	.incbin "railtrack/gUnk_081205F0.bin"

gSpriteAnimations_Railtrack:: @ 081205F4
	.4byte gUnk_081205E4
	.4byte gUnk_081205E8
	.4byte gUnk_081205EC
	.4byte gUnk_081205F0
	.4byte 00000000
