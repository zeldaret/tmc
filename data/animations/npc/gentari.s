	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08109AD8:: @ 08109AD8
	.incbin "baserom.gba", 0x109AD8, 0x0000005

gUnk_08109ADD:: @ 08109ADD
	.incbin "baserom.gba", 0x109ADD, 0x0000005

gUnk_08109AE2:: @ 08109AE2
	.incbin "baserom.gba", 0x109AE2, 0x0000005

gUnk_08109AE7:: @ 08109AE7
	.incbin "baserom.gba", 0x109AE7, 0x0000005

gUnk_08109AEC:: @ 08109AEC
	.incbin "baserom.gba", 0x109AEC, 0x0000011

gUnk_08109AFD:: @ 08109AFD
	.incbin "baserom.gba", 0x109AFD, 0x000000B
	.incbin "baserom.gba", 0x109B08, 0x0000006

gUnk_08109B0E:: @ 08109B0E
	.incbin "baserom.gba", 0x109B0E, 0x000002D

gUnk_08109B3B:: @ 08109B3B
	.incbin "baserom.gba", 0x109B3B, 0x0000025

gUnk_08109B60:: @ 08109B60
	.incbin "baserom.gba", 0x109B60, 0x0000020

gUnk_08109B80:: @ 08109B80
	.4byte gUnk_08109AD8
	.4byte gUnk_08109ADD
	.4byte gUnk_08109AE2
	.4byte gUnk_08109AE7
	.4byte gUnk_08109AEC
	.4byte gUnk_08109AEC
	.4byte gUnk_08109AEC
	.4byte gUnk_08109AFD
	.4byte gUnk_08109B0E
	.4byte gUnk_08109ADD
	.4byte gUnk_08109B0E
	.4byte gUnk_08109AE7
	.4byte gUnk_08109B3B
	.4byte gUnk_08109B60
	.4byte 00000000
