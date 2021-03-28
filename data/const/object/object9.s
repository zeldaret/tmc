	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F744:: @ 0811F744
	.incbin "baserom.gba", 0x11F744, 0x0000010

gUnk_0811F754:: @ 0811F754
	.4byte sub_08083914
	.4byte sub_0808395C
	.4byte sub_08083998
