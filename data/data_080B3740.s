	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080B37A0:: @ 080B37A0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0B2EC8, 0x0000192
.else
	.incbin "baserom.gba", 0x0B37A0, 0x0000192
.endif

gUnk_080B3932:: @ 080B3932
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0B305A, 0x00003E2
.else
	.incbin "baserom.gba", 0x0B3932, 0x00003E2
.endif

gUnk_080B3D14:: @ 080B3D14
	.incbin "baserom.gba", 0x0B3D14, 0x000000C

gUnk_080B3D20:: @ 080B3D20
.ifdef JP
	@ TODO only small differences
	.incbin "baserom_jp.gba", 0x0B3AC0, 0x00000B0
.else
.ifdef EU
	.incbin "baserom_jp.gba", 0x0B3AC0, 0x00000B0
.else
.ifdef DEMO_JP 
	.incbin "baserom_jp.gba", 0x0B3AC0, 0x00000B0 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0B3D20, 0x00000B0
.endif
.endif
.endif
