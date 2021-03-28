	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD628:: @ 080CD628
	.incbin "baserom.gba", 0x0CD628, 0x0000011

gUnk_080CD639:: @ 080CD639
	.incbin "baserom.gba", 0x0CD639, 0x0000011

gUnk_080CD64A:: @ 080CD64A
	.incbin "baserom.gba", 0x0CD64A, 0x0000011

gUnk_080CD65B:: @ 080CD65B
	.incbin "baserom.gba", 0x0CD65B, 0x0000011

gUnk_080CD66C:: @ 080CD66C
	.incbin "baserom.gba", 0x0CD66C, 0x0000005

gUnk_080CD671:: @ 080CD671
	.incbin "baserom.gba", 0x0CD671, 0x0000005

gUnk_080CD676:: @ 080CD676
	.incbin "baserom.gba", 0x0CD676, 0x0000009

gUnk_080CD67F:: @ 080CD67F
	.incbin "baserom.gba", 0x0CD67F, 0x0000009

gUnk_080CD688:: @ 080CD688
	.incbin "baserom.gba", 0x0CD688, 0x0000024

gUnk_080CD6AC:: @ 080CD6AC
	.incbin "baserom.gba", 0x0CD6AC, 0x0000024

gUnk_080CD6D0:: @ 080CD6D0
	.4byte gUnk_080CD628
	.4byte gUnk_080CD639
	.4byte gUnk_080CD64A
	.4byte gUnk_080CD65B
	.4byte gUnk_080CD66C
	.4byte gUnk_080CD671
	.4byte gUnk_080CD676
	.4byte gUnk_080CD67F
	.4byte gUnk_080CD688
	.4byte gUnk_080CD6AC
	.4byte 00000000
