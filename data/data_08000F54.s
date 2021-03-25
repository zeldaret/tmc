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
	.incbin "baserom.gba", 0x000FC4, 0x000002D

gUnk_08000FF1:: @ 08000FF1
	.incbin "baserom.gba", 0x000FF1, 0x0000009

gUnk_08000FFA:: @ 08000FFA
	.incbin "baserom.gba", 0x000FFA, 0x0000006

gUnk_08001000:: @ 08001000
	.incbin "baserom.gba", 0x001000, 0x0000004

gUnk_08001004:: @ 08001004
	.incbin "baserom.gba", 0x001004, 0x000000C

gUnk_08001010:: @ 08001010
	.incbin "baserom.gba", 0x001010, 0x000000C

gUnk_0800101C:: @ 0800101C
	.incbin "baserom.gba", 0x00101C, 0x0000004

gUnk_08001020:: @ 08001020
	.incbin "baserom.gba", 0x001020, 0x0000005

gUnk_08001025:: @ 08001025
	.incbin "baserom.gba", 0x001025, 0x000000C

gUnk_08001031:: @ 08001031
	.incbin "baserom.gba", 0x001031, 0x0000013

gUnk_08001044:: @ 08001044
	.incbin "baserom.gba", 0x001044, 0x000000C

gUnk_08001050:: @ 08001050
	.incbin "baserom.gba", 0x001050, 0x0000034

gUnk_08001084:: @ 08001084
	.incbin "baserom.gba", 0x001084, 0x0000040

gUnk_080010C4:: @ 080010C4
	.incbin "baserom.gba", 0x0010C4, 0x0000033

gUnk_080010F7:: @ 080010F7
	.incbin "baserom.gba", 0x0010F7, 0x000000A

gUnk_08001101:: @ 08001101
	.incbin "baserom.gba", 0x001101, 0x0000003

gUnk_08001104:: @ 08001104
	.incbin "baserom.gba", 0x001104, 0x0000011

gUnk_08001115:: @ 08001115
	.incbin "baserom.gba", 0x001115, 0x000002F

gUnk_08001144:: @ 08001144
	.incbin "baserom.gba", 0x001144, 0x000002B

gUnk_0800116F:: @ 0800116F
	.incbin "baserom.gba", 0x00116F, 0x0000015

gUnk_08001184:: @ 08001184
	.incbin "baserom.gba", 0x001184, 0x0000040
