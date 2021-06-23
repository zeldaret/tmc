	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108398:: @ 08108398
	.incbin "baserom.gba", 0x108398, 0x0000016

gUnk_081083AE:: @ 081083AE
	.incbin "baserom.gba", 0x1083AE, 0x0000016

gUnk_081083C4:: @ 081083C4
	.incbin "baserom.gba", 0x1083C4, 0x0000016

gUnk_081083DA:: @ 081083DA
	.incbin "baserom.gba", 0x1083DA, 0x0000018

gUnk_081083F2:: @ 081083F2
	.incbin "baserom.gba", 0x1083F2, 0x0000016

gUnk_08108408:: @ 08108408
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x107B5C, 0x000003C
.else
	.incbin "baserom.gba", 0x108408, 0x000003C
.endif

gUnk_08108444:: @ 08108444
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x107B98, 0x0000024
.else
	.incbin "baserom.gba", 0x108444, 0x0000024
.endif

gUnk_08108468:: @ 08108468
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x107BBC, 0x0000026
.else
	.incbin "baserom.gba", 0x108468, 0x0000026
.endif

gUnk_0810848E:: @ 0810848E
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x107BE2, 0x0000035
.else
	.incbin "baserom.gba", 0x10848E, 0x0000035
.endif

gUnk_081084C3:: @ 081084C3
	.incbin "baserom.gba", 0x1084C3, 0x0000005
