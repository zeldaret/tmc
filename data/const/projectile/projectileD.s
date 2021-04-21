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
	.incbin "baserom.gba", 0x1299F8, 0x0000004
	.4byte gUnk_08129A20
	.incbin "baserom.gba", 0x129A00, 0x0000004
	.4byte gUnk_08129A18
	.incbin "baserom.gba", 0x129A08, 0x0000004
	.4byte gUnk_08129A20
	.incbin "baserom.gba", 0x129A10, 0x0000004
	.4byte gUnk_08129A18

gUnk_08129A18:: @ 08129A18
	.incbin "baserom.gba", 0x129A18, 0x0000008

gUnk_08129A20:: @ 08129A20
	.incbin "baserom.gba", 0x129A20, 0x0000008
