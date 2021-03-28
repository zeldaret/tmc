	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08132700:: @ 08132700
	.4byte sub_080ADA6C
	.4byte sub_080ADAA8
	.4byte sub_080ADAD4
	.4byte sub_080ADC14
	.4byte sub_080ADC60

gUnk_08132714:: @ 08132714
	.4byte gUnk_08132AF4
	.4byte gUnk_08132AEA
	.4byte gUnk_08132AE0
	.4byte gUnk_08132AEA
	.4byte gUnk_08132B1A
	.4byte gUnk_08132B0C
	.4byte gUnk_08132AFE
	.4byte gUnk_08132B0C

gUnk_08132734:: @ 08132734
	.incbin "baserom.gba", 0x132734, 0x0000001

gUnk_08132735:: @ 08132735
	.incbin "baserom.gba", 0x132735, 0x0000001

gUnk_08132736:: @ 08132736
	.incbin "baserom.gba", 0x132736, 0x000000E

gUnk_08132744:: @ 08132744
	.incbin "baserom.gba", 0x132744, 0x0000010

gUnk_08132754:: @ 08132754
	.incbin "baserom.gba", 0x132754, 0x0000010

gUnk_08132764:: @ 08132764
	.incbin "baserom.gba", 0x132764, 0x0000010

gUnk_08132774:: @ 08132774
	.incbin "baserom.gba", 0x132774, 0x0000010

gUnk_08132784:: @ 08132784
	.incbin "baserom.gba", 0x132784, 0x0000010

gUnk_08132794:: @ 08132794
	.incbin "baserom.gba", 0x132794, 0x0000018

gUnk_081327AC:: @ 081327AC
	.incbin "baserom.gba", 0x1327AC, 0x0000018

gUnk_081327C4:: @ 081327C4
	.incbin "baserom.gba", 0x1327C4, 0x0000018

gUnk_081327DC:: @ 081327DC
	.4byte gUnk_08132754
	.4byte gUnk_08132744
	.4byte gUnk_08132734
	.4byte gUnk_08132744
	.4byte gUnk_08132784
	.4byte gUnk_08132774
	.4byte gUnk_08132764
	.4byte gUnk_08132774
	.4byte gUnk_081327C4
	.4byte gUnk_081327AC
	.4byte gUnk_08132794
	.4byte gUnk_081327AC
	.4byte 00000000

gUnk_08132810:: @ 08132810
	.incbin "baserom.gba", 0x132810, 0x0000017

gUnk_08132827:: @ 08132827
	.incbin "baserom.gba", 0x132827, 0x00002B9

gUnk_08132AE0:: @ 08132AE0
	.incbin "baserom.gba", 0x132AE0, 0x000000A

gUnk_08132AEA:: @ 08132AEA
	.incbin "baserom.gba", 0x132AEA, 0x000000A

gUnk_08132AF4:: @ 08132AF4
	.incbin "baserom.gba", 0x132AF4, 0x000000A

gUnk_08132AFE:: @ 08132AFE
	.incbin "baserom.gba", 0x132AFE, 0x000000E

gUnk_08132B0C:: @ 08132B0C
	.incbin "baserom.gba", 0x132B0C, 0x000000E

gUnk_08132B1A:: @ 08132B1A
	.incbin "baserom.gba", 0x132B1A, 0x000000E

gUnk_08132B28:: @ 08132B28
	.incbin "baserom.gba", 0x132B28, 0x0000008
