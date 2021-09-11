	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_08000F54:: @ 08000F54
	.4byte gUnk_08000F84
	.4byte gUnk_08000FC4
	.4byte gUnk_08001004
	.4byte 00000000
	.4byte gUnk_08001044
	.4byte gUnk_08001084
	.4byte gUnk_080010C4
	.4byte 00000000
	.4byte gUnk_08001104
	.4byte gUnk_08001144
	.4byte gUnk_08001184
	.4byte 00000000

gUnk_08000F84:: @ 08000F84
	.incbin "baserom.gba", 0x000F84, 0x0000040

gUnk_08000FC4:: @ 08000FC4
	.incbin "baserom.gba", 0x000FC4, 0x0000040

gUnk_08001004:: @ 08001004
	.incbin "baserom.gba", 0x001004, 0x0000040

gUnk_08001044:: @ 08001044
	.incbin "baserom.gba", 0x001044, 0x0000040

gUnk_08001084:: @ 08001084
	.incbin "baserom.gba", 0x001084, 0x0000040

gUnk_080010C4:: @ 080010C4
	.incbin "baserom.gba", 0x0010C4, 0x0000040

gUnk_08001104:: @ 08001104
	.incbin "baserom.gba", 0x001104, 0x0000040

gUnk_08001144:: @ 08001144
	.incbin "baserom.gba", 0x001144, 0x0000040

gUnk_08001184:: @ 08001184
	.incbin "baserom.gba", 0x001184, 0x0000040
