	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

@ enterPortalSubtask.c
gUnk_080D4110:: @ 080D4110
	.4byte gUnk_080D3E90
	.4byte gUnk_080D3F30
	.4byte gUnk_080D3FD0
	.4byte gUnk_080D4070

@ enterPortalSubtask.c
gUnk_080D4120:: @ 080D4120
	.4byte sub_0804AAD4
	.4byte sub_0804AB04
	.4byte sub_0804AB24

@ enterPortalSubtask.c
gUnk_080D412C:: @ 080D412C
	.4byte sub_0804AB70
	.4byte sub_0804AC1C
	.4byte sub_0804ACC8

@ enterPortalSubtask.c
gUnk_080D4138:: @ 080D4138
	.incbin "data_080D3D94/gUnk_080D4138.bin"

@ enterPortalSubtask.c
gUnk_080D4140:: @ 080D4140
	.incbin "data_080D3D94/gUnk_080D4140.bin"
