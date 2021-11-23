	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

MineralWaterSourceActionFuncs:: @ 08123298
	.4byte MineralWaterSource_Init
	.4byte sub_080973DC

MineralWaterSourceParameters:: @ 081232A0
	.incbin "mineralWaterSource/MineralWaterSourceParameters.bin"
