	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CF530:: @ 080CF530
	.incbin "baserom.gba", 0x0CF530, 0x000000D

gUnk_080CF53D:: @ 080CF53D
	.incbin "baserom.gba", 0x0CF53D, 0x000000D

gUnk_080CF54A:: @ 080CF54A
	.incbin "baserom.gba", 0x0CF54A, 0x000000D

gUnk_080CF557:: @ 080CF557
	.incbin "baserom.gba", 0x0CF557, 0x000000D

gUnk_080CF564:: @ 080CF564
	.incbin "baserom.gba", 0x0CF564, 0x000000D

gUnk_080CF571:: @ 080CF571
	.incbin "baserom.gba", 0x0CF571, 0x000000D

gUnk_080CF57E:: @ 080CF57E
	.incbin "baserom.gba", 0x0CF57E, 0x000000D

gUnk_080CF58B:: @ 080CF58B
	.incbin "baserom.gba", 0x0CF58B, 0x000000D

gUnk_080CF598:: @ 080CF598
	.incbin "baserom.gba", 0x0CF598, 0x000000D

gUnk_080CF5A5:: @ 080CF5A5
	.incbin "baserom.gba", 0x0CF5A5, 0x000000D

gUnk_080CF5B2:: @ 080CF5B2
	.incbin "baserom.gba", 0x0CF5B2, 0x000000D

gUnk_080CF5BF:: @ 080CF5BF
	.incbin "baserom.gba", 0x0CF5BF, 0x000000D

gUnk_080CF5CC:: @ 080CF5CC
	.4byte gUnk_080CF530
	.4byte gUnk_080CF53D
	.4byte gUnk_080CF54A
	.4byte gUnk_080CF557
	.4byte gUnk_080CF564
	.4byte gUnk_080CF571
	.4byte gUnk_080CF57E
	.4byte gUnk_080CF58B
	.4byte gUnk_080CF598
	.4byte gUnk_080CF5A5
	.4byte gUnk_080CF5B2
	.4byte gUnk_080CF5BF
	.4byte 00000000
