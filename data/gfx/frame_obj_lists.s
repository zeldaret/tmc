	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gFrameObjLists:: @ 082F3D74
	.include "gfx/gFrameObjLists.s"
	.byte 0xff, 0xff, 0xff
