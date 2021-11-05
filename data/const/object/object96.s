	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123FB0:: @ 08123FB0
	.4byte sub_0809D91C
	.4byte sub_0809D93C
	.4byte 0x30300000
	.4byte 0x133c3c01
	.4byte 0x00010000
	.4byte 0x00001800
	.4byte 0x00400060
	.4byte 0x00014021
	.4byte sub_0809D91C
	.4byte 00000000
	.4byte 00000000
	.4byte 0x10636300
	.4byte 00000000
	.4byte 0x00001800
	.4byte 0x00180000
.ifdef JP
	.4byte 0x000000CD
.else
.ifdef DEMO_JP
	.4byte 0x000000CD
.else
.ifdef EU
	.4byte 0x000000CD  @ TODO deduplicate
.else
	.4byte 0x000000d0
.endif
.endif
.endif
	.4byte sub_0809D91C
	.4byte 00000000
	.4byte 00000000
	.4byte 0x0f3c3c00
	.4byte 0x00010000
	.4byte 0x00001800
	.4byte 0x00400060
	.4byte 0x00014021
	.4byte sub_0809D91C
	.4byte 00000000
	.4byte 00000000
	.4byte 0x023c3c00
	.4byte 0x00010000
	.4byte 0x00001800
	.4byte 0x00400140
	.4byte 0x00014021
	.4byte sub_0809D91C
	.4byte 00000000
	.4byte 00000000
	.4byte 0x0d3c3c00
	.4byte 0x00010000
	.4byte 0x00001800
	.4byte 0x00400060
	.4byte 0x00014021
	.4byte sub_0809D91C
	.4byte 00000000
	.4byte 00000000
	.4byte 0x1a3c3c00
	.4byte 0x00010000
	.4byte 0x00001800
	.4byte 0x00400100
	.4byte 0x00014021
	.4byte sub_0809D91C
	.4byte 00000000
	.4byte 00000000
	.4byte 0x133c3c00
	.4byte 0x00010000
	.4byte 0x00001800
	.4byte 0x00400060


gUnk_0812408C:: @ 0812408C
	.incbin "baserom.gba", 0x12408C, 0x0000024

gUnk_081240B0:: @ 081240B0
	.4byte sub_0809D7A8
	.4byte sub_0809D824
	.4byte sub_0809D860
	.4byte sub_0809D8C8

