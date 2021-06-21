	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

@ TODO use tmc_strings to extract strings for other variants

gUnk_089B1D90:: @ 089B1D90
.ifdef JP
	.incbin "baserom_jp.gba", 0x9B1A30, 0x2BCC0
.else
.ifdef EU
.incbin "baserom_eu.gba", 0x9AEB60, 0x00488C0

gUnk_089F7420::
.incbin "baserom_eu.gba", 0x9F7420, 0x0047A90

gUnk_08A3EEB0::
.incbin "baserom_eu.gba", 0xA3EEB0, 0x0042FC0

gUnk_08A81E70::
.incbin "baserom_eu.gba", 0xA81E70, 0x0041930

gUnk_08AC37A0::    
.incbin "baserom_eu.gba", 0xAC37A0, 0x00438E0

.else
    .incbin "translations/USA.bin"
.endif
.endif
