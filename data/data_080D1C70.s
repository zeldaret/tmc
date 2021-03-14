	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2


	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/animations/gyorgMale.inc"

	.include "data/curtain.inc"
	.include "data/animations/curtain.inc"

	.include "data/enemy5F.inc"
	.include "data/animations/enemy5F.inc"

	.include "data/gyorgChild.inc"
	.include "data/animations/gyorgChild.inc"

	.include "data/gyorgFemaleEye.inc"
	.include "data/animations/gyorgFemaleEye.inc"

	.include "data/enemy62.inc"
	.include "data/animations/enemy62.inc"

	.include "data/gyorgFemaleMouth.inc"
	.include "data/animations/gyorgFemaleMouth.inc"

	.include "data/enemy64.inc"

	.include "data/treeItem.inc"

	.include "data/enemy66.inc"

	.include "data/code_08049D30.inc"
