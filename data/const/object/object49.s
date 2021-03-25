	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121E5C:: @ 08121E5C
	.4byte sub_0808F0B8
	.4byte sub_0808F1E0
	.4byte sub_0808F2C0
	.4byte sub_0808F370
	.4byte sub_0808F0B8
	.4byte sub_0808F3DC
	.4byte sub_0808F3DC
	.4byte sub_0808F3DC
	.4byte sub_0808F3DC
	.4byte sub_0808F498
	.4byte sub_0808F554

gUnk_08121E88:: @ 08121E88
	.4byte sub_0808F0D0
	.4byte sub_0808F14C
	.4byte sub_0808F170
	.4byte sub_0808F1A4

gUnk_08121E98:: @ 08121E98
	.4byte sub_0808F1F8
	.4byte sub_0808F244

gUnk_08121EA0:: @ 08121EA0
	.incbin "baserom.gba", 0x121EA0, 0x0000004
