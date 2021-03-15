	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/const/manager/managerD.inc"

	.include "data/const/manager/managerF.inc"

	.include "data/const/manager/manager10.inc"

	.include "data/const/manager/manager12.inc"

	.include "data/const/manager/manager13.inc"

	.include "data/const/manager/manager14.inc"

	.include "data/const/manager/manager15.inc"

	.include "data/const/manager/manager17.inc"

	.include "data/const/manager/manager18.inc"

	.include "data/const/manager/manager1A.inc"

	.include "data/const/manager/manager1B.inc"

	.include "data/const/manager/manager1C.inc"

	.include "data/const/manager/manager1D.inc"
