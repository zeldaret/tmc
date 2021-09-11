	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_080D04D7:: @ 080D04D7
	.incbin "assets/vaatiRebornEnemy/gUnk_080D04D7.bin"

gUnk_080D04E8:: @ 080D04E8
	.incbin "assets/vaatiRebornEnemy/gUnk_080D04E8.bin"

gUnk_080D0501:: @ 080D0501
	.incbin "assets/vaatiRebornEnemy/gUnk_080D0501.bin"

gUnk_080D050D:: @ 080D050D
	.incbin "assets/vaatiRebornEnemy/gUnk_080D050D.bin"

gUnk_080D0531:: @ 080D0531
	.incbin "assets/vaatiRebornEnemy/gUnk_080D0531.bin"

gUnk_080D0558:: @ 080D0558
	.4byte gUnk_080D04D7
	.4byte gUnk_080D04E8
	.4byte gUnk_080D0501
	.4byte gUnk_080D050D
	.4byte gUnk_080D0531
	.4byte 00000000

gUnk_080D0570:: @ 080D0570
	.incbin "assets/vaatiRebornEnemy/gUnk_080D0570.bin"

gUnk_080D0575:: @ 080D0575
	.incbin "assets/vaatiRebornEnemy/gUnk_080D0575.bin"

gUnk_080D0585:: @ 080D0585
	.incbin "assets/vaatiRebornEnemy/gUnk_080D0585.bin"

gUnk_080D058C:: @ 080D058C
	.4byte gUnk_080D0570
	.4byte gUnk_080D0575
	.4byte gUnk_080D0585
	.4byte 00000000

gUnk_080D059C:: @ 080D059C
	.incbin "assets/vaatiRebornEnemy/gUnk_080D059C.bin"

gUnk_080D05AD:: @ 080D05AD
	.incbin "assets/vaatiRebornEnemy/gUnk_080D05AD.bin"

gUnk_080D05BE:: @ 080D05BE
	.incbin "assets/vaatiRebornEnemy/gUnk_080D05BE.bin"

gUnk_080D05CF:: @ 080D05CF
	.incbin "assets/vaatiRebornEnemy/gUnk_080D05CF.bin"

gUnk_080D05E0:: @ 080D05E0
	.4byte gUnk_080D059C
	.4byte gUnk_080D05BE
	.4byte gUnk_080D05AD
	.4byte gUnk_080D05CF
	.4byte 00000000

gUnk_080D05F4:: @ 080D05F4
	.incbin "assets/vaatiRebornEnemy/gUnk_080D05F4.bin"

gUnk_080D0609:: @ 080D0609
	.incbin "assets/vaatiRebornEnemy/gUnk_080D0609.bin"

gUnk_080D061E:: @ 080D061E
	.incbin "assets/vaatiRebornEnemy/gUnk_080D061E.bin"

gUnk_080D0634:: @ 080D0634
	.4byte gUnk_080D05F4
	.4byte gUnk_080D0609
	.4byte gUnk_080D05F4
	.4byte gUnk_080D061E
	.4byte 00000000
