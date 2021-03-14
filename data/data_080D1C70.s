	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2


	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/animations/enemy/gyorgMale.inc"

	.include "data/const/enemy/curtain.inc"
	.include "data/animations/enemy/curtain.inc"

	.include "data/const/enemy/enemy5F.inc"
	.include "data/animations/enemy/enemy5F.inc"

	.include "data/const/enemy/gyorgChild.inc"
	.include "data/animations/enemy/gyorgChild.inc"

	.include "data/const/enemy/gyorgFemaleEye.inc"
	.include "data/animations/enemy/gyorgFemaleEye.inc"

	.include "data/const/enemy/enemy62.inc"
	.include "data/animations/enemy/enemy62.inc"

	.include "data/const/enemy/gyorgFemaleMouth.inc"
	.include "data/animations/enemy/gyorgFemaleMouth.inc"

	.include "data/const/enemy/enemy64.inc"

	.include "data/const/enemy/treeItem.inc"

	.include "data/const/enemy/enemy66.inc"

	.include "data/const/code_08049D30.inc"
