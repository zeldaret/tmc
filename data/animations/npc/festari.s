	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08109BC8:: @ 08109BC8
	.incbin "baserom.gba", 0x109BC8, 0x0000005

gUnk_08109BCD:: @ 08109BCD
	.incbin "baserom.gba", 0x109BCD, 0x0000005

gUnk_08109BD2:: @ 08109BD2
	.incbin "baserom.gba", 0x109BD2, 0x0000005

gUnk_08109BD7:: @ 08109BD7
	.incbin "baserom.gba", 0x109BD7, 0x0000011

gUnk_08109BE8:: @ 08109BE8
	.incbin "baserom.gba", 0x109BE8, 0x0000011

gUnk_08109BF9:: @ 08109BF9
	.incbin "baserom.gba", 0x109BF9, 0x0000035

gUnk_08109C2E:: @ 08109C2E
	.incbin "baserom.gba", 0x109C2E, 0x000001D

gUnk_08109C4B:: @ 08109C4B
	.incbin "baserom.gba", 0x109C4B, 0x0000009

gUnk_08109C54:: @ 08109C54
	.incbin "baserom.gba", 0x109C54, 0x0000005

gUnk_08109C59:: @ 08109C59
	.incbin "baserom.gba", 0x109C59, 0x0000007

gUnk_08109C60:: @ 08109C60
	.4byte gUnk_08109BCD
	.4byte gUnk_08109BC8
	.4byte gUnk_08109BCD
	.4byte gUnk_08109BD2
	.4byte gUnk_08109BD7
	.4byte gUnk_08109BD7
	.4byte gUnk_08109BD7
	.4byte gUnk_08109BE8
	.4byte gUnk_08109C2E
	.4byte gUnk_08109BF9
	.4byte gUnk_08109C4B
	.4byte gUnk_08109C54
	.4byte gUnk_08109C59
	.4byte 00000000
