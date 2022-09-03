	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

@ before: enemy66.c
@ in here: enemyUtils.c, createEnemy.c, enterPortalSubtask.c, room.c roomInit.c, fade.c
@ after: fileselect.c

@ enemyUtils.c
gUnk_080D3D94:: @ 080D3D94
	.incbin "data_080D3D94/gUnk_080D3D94.bin"

@ enemyUtils.c
gUnk_080D3E74:: @ 080D3E74
	.incbin "data_080D3D94/gUnk_080D3E74.bin"

gUnk_080D3E90:: @ 080D3E90
	.incbin "data_080D3D94/gUnk_080D3E90.bin"

gUnk_080D3F30:: @ 080D3F30
	.incbin "data_080D3D94/gUnk_080D3F30.bin"

gUnk_080D3FD0:: @ 080D3FD0
	.incbin "data_080D3D94/gUnk_080D3FD0.bin"

gUnk_080D4070:: @ 080D4070
	.incbin "data_080D3D94/gUnk_080D4070.bin"
