	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124F08:: @ 08124F08
	.incbin "baserom.gba", 0x124F08, 0x0000020

gUnk_08124F28:: @ 08124F28
	.incbin "baserom.gba", 0x124F28, 0x0000020

gUnk_08124F48:: @ 08124F48
	.incbin "baserom.gba", 0x124F48, 0x0000020

gUnk_08124F68:: @ 08124F68
	.incbin "baserom.gba", 0x124F68, 0x0000020

gUnk_08124F88:: @ 08124F88
	.incbin "baserom.gba", 0x124F88, 0x0000020

gUnk_08124FA8:: @ 08124FA8
	.incbin "baserom.gba", 0x124FA8, 0x0000020

gUnk_08124FC8:: @ 08124FC8
	.incbin "baserom.gba", 0x124FC8, 0x0000014

gUnk_08124FDC:: @ 08124FDC
	.incbin "baserom.gba", 0x124FDC, 0x0000014

gUnk_08124FF0:: @ 08124FF0
	.4byte gUnk_08124F08
	.4byte gUnk_08124F28
	.4byte gUnk_08124F48
	.4byte gUnk_08124F68
	.4byte gUnk_08124F88
	.4byte gUnk_08124FA8
	.4byte gUnk_08124FC8
	.4byte gUnk_08124FDC
