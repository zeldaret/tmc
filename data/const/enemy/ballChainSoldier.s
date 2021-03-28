	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D06E0:: @ 080D06E0
	.4byte sub_0803E538
	.4byte sub_0803E550

gUnk_080D06E8:: @ 080D06E8
	.4byte sub_0803E560
	.4byte sub_0803E570
	.4byte sub_08001242
	.4byte nullsub_20

gUnk_080D06F8:: @ 080D06F8
	.4byte sub_0803E580

gUnk_080D06FC:: @ 080D06FC
	.4byte sub_0803E5E8

gUnk_080D0700:: @ 080D0700
	.4byte sub_0803E61C
	.4byte sub_0803E66C
	.4byte sub_0803E6B4
	.4byte sub_0803E6E0
	.4byte sub_0803E71C
	.4byte sub_0803E75C
	.4byte sub_0803E7B4
	.4byte sub_0803E7CC
	.4byte sub_0803E818

gUnk_080D0724:: @ 080D0724
	.incbin "baserom.gba", 0x0D0724, 0x0000004

gUnk_080D0728:: @ 080D0728
	.incbin "baserom.gba", 0x0D0728, 0x0000008

gUnk_080D0730:: @ 080D0730
	.incbin "baserom.gba", 0x0D0730, 0x0000008

gUnk_080D0738:: @ 080D0738
	.incbin "baserom.gba", 0x0D0738, 0x0000004

gUnk_080D073C:: @ 080D073C
	.incbin "baserom.gba", 0x0D073C, 0x0000004

gUnk_080D0740:: @ 080D0740
	.incbin "baserom.gba", 0x0D0740, 0x0000004
