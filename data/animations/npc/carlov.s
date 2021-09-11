	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113258:: @ 08113258
	.incbin "carlov/gUnk_08113258.bin"

gUnk_0811325D:: @ 0811325D
	.incbin "carlov/gUnk_0811325D.bin"

gUnk_0811326E:: @ 0811326E
	.incbin "carlov/gUnk_0811326E.bin"

gUnk_0811329F:: @ 0811329F
	.incbin "carlov/gUnk_0811329F.bin"

gUnk_081132E4:: @ 081132E4
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_0811325D
	.4byte gUnk_0811326E
	.4byte gUnk_0811329F
	.4byte 00000000

gUnk_08113314:: @ 08113314
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_08113258
	.4byte gUnk_0811325D
	.4byte gUnk_0811326E
	.4byte gUnk_0811329F
	.4byte gUnk_08113258
	.4byte gUnk_0811325D
	.4byte gUnk_0811326E
	.4byte gUnk_0811329F
	.4byte 00000000
