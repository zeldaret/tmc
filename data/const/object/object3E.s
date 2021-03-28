	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081216DC:: @ 081216DC
	.4byte sub_0808D0E0
	.4byte sub_0808D194
	.4byte sub_0808D194
	.4byte nullsub_521
	.4byte sub_0808D2FC
	.4byte sub_0808D360
	.4byte sub_0808D394
	.4byte sub_0808D408
	.4byte sub_0808D45C
	.4byte sub_0808D194

gUnk_08121704:: @ 08121704
	.incbin "baserom.gba", 0x121704, 0x0000010

gUnk_08121714:: @ 08121714
	.incbin "baserom.gba", 0x121714, 0x0000002

gUnk_08121716:: @ 08121716
	.incbin "baserom.gba", 0x121716, 0x0000001

gUnk_08121717:: @ 08121717
	.incbin "baserom.gba", 0x121717, 0x0000002

gUnk_08121719:: @ 08121719
	.incbin "baserom.gba", 0x121719, 0x0000007

gUnk_08121720:: @ 08121720
	.incbin "baserom.gba", 0x121720, 0x000000C

gUnk_0812172C:: @ 0812172C
	.4byte sub_0808D474
	.4byte sub_0808D518
	.4byte sub_0808D59C

gUnk_08121738:: @ 08121738
	.incbin "baserom.gba", 0x121738, 0x0000018
