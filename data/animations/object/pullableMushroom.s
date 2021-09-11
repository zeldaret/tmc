	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121204:: @ 08121204
	.incbin "baserom.gba", 0x121204, 0x0000004

gUnk_08121208:: @ 08121208
	.incbin "baserom.gba", 0x121208, 0x000001D

gUnk_08121225:: @ 08121225
	.incbin "baserom.gba", 0x121225, 0x0000010

gUnk_08121235:: @ 08121235
	.incbin "baserom.gba", 0x121235, 0x000001D

gUnk_08121252:: @ 08121252
	.incbin "baserom.gba", 0x121252, 0x0000011

gUnk_08121263:: @ 08121263
	.incbin "baserom.gba", 0x121263, 0x000001D

gUnk_08121280:: @ 08121280
	.incbin "baserom.gba", 0x121280, 0x0000011

gUnk_08121291:: @ 08121291
	.incbin "baserom.gba", 0x121291, 0x0000009

gUnk_0812129A:: @ 0812129A
	.incbin "baserom.gba", 0x12129A, 0x0000009

gUnk_081212A3:: @ 081212A3
	.incbin "baserom.gba", 0x1212A3, 0x0000009

gUnk_081212AC:: @ 081212AC
	.incbin "baserom.gba", 0x1212AC, 0x0000004

gUnk_081212B0:: @ 081212B0
	.incbin "baserom.gba", 0x1212B0, 0x0000004

gUnk_081212B4:: @ 081212B4
	.incbin "baserom.gba", 0x1212B4, 0x0000004

gUnk_081212B8:: @ 081212B8
	.4byte gUnk_08121204
	.4byte gUnk_08121208
	.4byte gUnk_08121235
	.4byte gUnk_08121263
	.4byte gUnk_08121235
	.4byte gUnk_08121291
	.4byte gUnk_0812129A
	.4byte gUnk_081212A3
	.4byte gUnk_0812129A
	.4byte gUnk_081212AC
	.4byte gUnk_081212B0
	.4byte gUnk_081212B4
	.4byte gUnk_081212B0
	.4byte gUnk_08121225
	.4byte gUnk_08121252
	.4byte gUnk_08121280
	.4byte gUnk_08121252
	.4byte 00000000
