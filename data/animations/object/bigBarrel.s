	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08120C66:: @ 08120C66
	.incbin "bigBarrel/gUnk_08120C66.bin"

gUnk_08120C6F:: @ 08120C6F
	.incbin "bigBarrel/gUnk_08120C6F.bin"

gUnk_08120C78:: @ 08120C78
	.4byte gUnk_08120C66
	.4byte gUnk_08120C6F
