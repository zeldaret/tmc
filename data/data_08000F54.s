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
	.incbin "data_08000F54/gUnk_08000F84.bin"

gUnk_08000FC4:: @ 08000FC4
	.incbin "data_08000F54/gUnk_08000FC4.bin"

gUnk_08001004:: @ 08001004
	.incbin "data_08000F54/gUnk_08001004.bin"

gUnk_08001044:: @ 08001044
	.incbin "data_08000F54/gUnk_08001044.bin"

gUnk_08001084:: @ 08001084
	.incbin "data_08000F54/gUnk_08001084.bin"

gUnk_080010C4:: @ 080010C4
	.incbin "data_08000F54/gUnk_080010C4.bin"

gUnk_08001104:: @ 08001104
	.incbin "data_08000F54/gUnk_08001104.bin"

gUnk_08001144:: @ 08001144
	.incbin "data_08000F54/gUnk_08001144.bin"

gUnk_08001184:: @ 08001184
	.incbin "data_08000F54/gUnk_08001184.bin"
