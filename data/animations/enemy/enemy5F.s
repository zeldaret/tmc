	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1DA0:: @ 080D1DA0
	.incbin "enemy5F/gUnk_080D1DA0.bin"

gUnk_080D1DC8:: @ 080D1DC8
	.incbin "enemy5F/gUnk_080D1DC8.bin"

gUnk_080D1DCC:: @ 080D1DCC
	.incbin "enemy5F/gUnk_080D1DCC.bin"

gUnk_080D1DD0:: @ 080D1DD0
	.incbin "enemy5F/gUnk_080D1DD0.bin"

gUnk_080D1DDC:: @ 080D1DDC
	.incbin "enemy5F/gUnk_080D1DDC.bin"

gUnk_080D1DE8:: @ 080D1DE8
	.incbin "enemy5F/gUnk_080D1DE8.bin"

gUnk_080D1E05:: @ 080D1E05
	.incbin "enemy5F/gUnk_080D1E05.bin"

gUnk_080D1E21:: @ 080D1E21
	.incbin "enemy5F/gUnk_080D1E21.bin"

gUnk_080D1E32:: @ 080D1E32
	.incbin "enemy5F/gUnk_080D1E32.bin"

gUnk_080D1E44:: @ 080D1E44
	.4byte gUnk_080D1DA0
	.4byte gUnk_080D1DC8
	.4byte gUnk_080D1DCC
	.4byte gUnk_080D1DDC
	.4byte gUnk_080D1DD0
	.4byte gUnk_080D1DE8
	.4byte gUnk_080D1E05
	.4byte gUnk_080D1E21
	.4byte gUnk_080D1E32
	.4byte 00000000
