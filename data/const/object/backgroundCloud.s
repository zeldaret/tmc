	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121EA4:: @ 08121EA4
	.4byte sub_0808F658
	.4byte sub_0808F6E0
	.4byte sub_0808F70C

gUnk_08121EB0:: @ 08121EB0
	.incbin "baserom.gba", 0x121EB0, 0x0000003

gUnk_08121EB3:: @ 08121EB3
	.incbin "baserom.gba", 0x121EB3, 0x0000005
