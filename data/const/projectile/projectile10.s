	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129AE0:: @ 08129AE0
	.4byte sub_080A9A1C
	.4byte sub_080A9A34
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte sub_080A9A64

gUnk_08129AF8:: @ 08129AF8
	.4byte sub_080A9ACC
	.4byte sub_080A9B24
	.4byte sub_080A9B54
	.4byte sub_080A9B80

gUnk_08129B08:: @ 08129B08
	.4byte sub_080A9A94
	.4byte sub_080A9AA4
	.4byte sub_080A9AAC
	.4byte sub_080A9AB4
	.4byte nullsub_128
	.4byte sub_080A9AC4

gUnk_08129B20:: @ 08129B20
	.incbin "assets/projectile10/gUnk_08129B20.bin"

gUnk_08129B50:: @ 08129B50
	.incbin "assets/projectile10/gUnk_08129B50.bin"
