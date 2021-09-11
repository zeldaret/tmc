	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08120BF1:: @ 08120BF1
	.incbin "assets/object24/gUnk_08120BF1.bin"

gUnk_08120BF5:: @ 08120BF5
	.incbin "assets/object24/gUnk_08120BF5.bin"

gUnk_08120BF9:: @ 08120BF9
	.incbin "assets/object24/gUnk_08120BF9.bin"

gUnk_08120BFD:: @ 08120BFD
	.incbin "assets/object24/gUnk_08120BFD.bin"

gUnk_08120C01:: @ 08120C01
	.incbin "assets/object24/gUnk_08120C01.bin"

gUnk_08120C08:: @ 08120C08
	.4byte gUnk_08120BF1
	.4byte gUnk_08120BF5
	.4byte gUnk_08120BF9
	.4byte gUnk_08120BFD
	.4byte gUnk_08120C01
