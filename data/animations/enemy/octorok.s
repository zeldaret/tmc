	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA180:: @ 080CA180
	.incbin "octorok/gUnk_080CA180.bin"

gUnk_080CA189:: @ 080CA189
	.incbin "octorok/gUnk_080CA189.bin"

gUnk_080CA192:: @ 080CA192
	.incbin "octorok/gUnk_080CA192.bin"

gUnk_080CA19B:: @ 080CA19B
	.incbin "octorok/gUnk_080CA19B.bin"

gUnk_080CA1A4:: @ 080CA1A4
	.incbin "octorok/gUnk_080CA1A4.bin"

gUnk_080CA1B9:: @ 080CA1B9
	.incbin "octorok/gUnk_080CA1B9.bin"

gUnk_080CA1CE:: @ 080CA1CE
	.incbin "octorok/gUnk_080CA1CE.bin"

gUnk_080CA1E3:: @ 080CA1E3
	.incbin "octorok/gUnk_080CA1E3.bin"

gUnk_080CA1F8:: @ 080CA1F8
	.4byte gUnk_080CA180
	.4byte gUnk_080CA189
	.4byte gUnk_080CA192
	.4byte gUnk_080CA19B
	.4byte gUnk_080CA1A4
	.4byte gUnk_080CA1B9
	.4byte gUnk_080CA1CE
	.4byte gUnk_080CA1E3
	.4byte 00000000
