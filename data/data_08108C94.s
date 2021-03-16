	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/const/manager/manager1F.inc"

	.include "data/const/manager/manager22.inc"

	.include "data/const/manager/manager23.inc"

	.include "data/const/manager/manager24.inc"
