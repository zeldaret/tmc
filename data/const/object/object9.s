	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F744:: @ 0811F744
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x11EE8C, 0x0000010
.else
	.incbin "baserom.gba", 0x11F744, 0x0000010
.endif

gUnk_0811F754:: @ 0811F754
	.4byte sub_08083914
	.4byte sub_0808395C
	.4byte sub_08083998
