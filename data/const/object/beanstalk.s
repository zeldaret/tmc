	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120DF4:: @ 08120DF4
	.4byte sub_08089D1C
	.4byte sub_08089F08

gUnk_08120DFC:: @ 08120DFC
	.incbin "baserom.gba", 0x120DFC, 0x0000004
	.incbin "baserom.gba", 0x120E00, 0x0000001
	.incbin "baserom.gba", 0x120E01, 0x0000001
	.incbin "baserom.gba", 0x120E02, 0x0000006
	.incbin "baserom.gba", 0x120E08, 0x000000B
	.incbin "baserom.gba", 0x120E13, 0x0000001

gUnk_08120E14:: @ 08120E14
	.incbin "baserom.gba", 0x120E14, 0x0000028

gUnk_08120E3C:: @ 08120E3C
	.incbin "baserom.gba", 0x120E3C, 0x0000014

gUnk_08120E50:: @ 08120E50
	.4byte sub_08089F20
	.4byte nullsub_517
	.4byte sub_0808A010
	.4byte nullsub_517
	.4byte sub_0808A0C0
	.4byte sub_0808A0C0
	.4byte sub_0808A0C0
	.4byte sub_0808A0DC
	.4byte sub_0808A208
	.4byte sub_0808A2F0

gUnk_08120E78:: @ 08120E78
	.4byte sub_08089F38
	.4byte sub_08089F70
	.4byte sub_08089FF0

gUnk_08120E84:: @ 08120E84
	.4byte sub_0808A220
	.4byte nullsub_518

gUnk_08120E8C:: @ 08120E8C
	.incbin "baserom.gba", 0x120E8C, 0x0000045

gUnk_08120ED1:: @ 08120ED1
	.incbin "baserom.gba", 0x120ED1, 0x0000028
