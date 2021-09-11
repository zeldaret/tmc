	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081299D0:: @ 081299D0
	.4byte sub_080A931C
	.4byte sub_080A9334
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity

gUnk_081299E4:: @ 081299E4
	.4byte sub_080A9370
	.4byte sub_080A93A0
	.4byte sub_080A93DC
	.4byte sub_080A942C
	.4byte sub_080A9448

gUnk_081299F8:: @ 081299F8
	.incbin "assets/projectileD/gUnk_081299F8.bin"
	.4byte gUnk_08129A20
	.incbin "assets/projectileD/gUnk_081299F8_1.bin"
	.4byte gUnk_08129A18
	.incbin "assets/projectileD/gUnk_081299F8_2.bin"
	.4byte gUnk_08129A20
	.incbin "assets/projectileD/gUnk_081299F8_3.bin"
	.4byte gUnk_08129A18

gUnk_08129A18:: @ 08129A18
	.incbin "assets/projectileD/gUnk_08129A18.bin"

gUnk_08129A20:: @ 08129A20
	.incbin "assets/projectileD/gUnk_08129A20.bin"
