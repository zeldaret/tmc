	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_080CD748:: @ 080CD748
	.4byte sub_0802D394
	.4byte sub_0802D394
	.4byte sub_08001324
	.4byte sub_0802D034
	.4byte sub_08001242

gUnk_080CD75C:: @ 080CD75C
	.4byte sub_0802D158
	.4byte sub_0802D170
	.4byte sub_0802D170
	.4byte sub_0802D218
	.4byte sub_0802D258
	.4byte sub_0802D33C

gUnk_080CD774:: @ 080CD774
	.incbin "baserom.gba", 0x0CD774, 0x0000044

gUnk_080CD7B8:: @ 080CD7B8
	.4byte sub_0802D3B8
	.4byte sub_0802D86C
	.4byte sub_0802D650

gUnk_080CD7C4:: @ 080CD7C4
	.incbin "baserom.gba", 0x0CD7C4, 0x0000020

gUnk_080CD7E4:: @ 080CD7E4
	.4byte sub_0802D674
	.4byte sub_0802D6F0
	.4byte sub_0802D714
	.4byte sub_0802D77C
	.4byte sub_0802D7B4

gUnk_080CD7F8:: @ 080CD7F8
	.incbin "baserom.gba", 0x0CD7F8, 0x0000018

gUnk_080CD810:: @ 080CD810
	.4byte sub_0802DB84
	.4byte sub_0802DC1C
	.4byte sub_0802DCE0
	.4byte sub_0802DDD8
	.4byte sub_0802DFA8
	.4byte sub_0802E430

gUnk_080CD828:: @ 080CD828
	.4byte sub_0802DFC0
	.4byte sub_0802E034
	.4byte sub_0802E034
	.4byte sub_0802E0B8
	.4byte sub_0802E1D0
	.4byte sub_0802E300

gUnk_080CD840:: @ 080CD840
	.4byte 0x08100804 @ not a pointer!

gUnk_080CD844:: @ 080CD844
	.incbin "baserom.gba", 0x0CD844, 0x0000004

gUnk_080CD848:: @ 080CD848
	.4byte sub_0802E448
	.4byte sub_0802E4C0

gUnk_080CD850:: @ 080CD850
	.incbin "baserom.gba", 0x0CD850, 0x0000004

gUnk_080CD854:: @ 080CD854
	.incbin "baserom.gba", 0x0CD854, 0x0000004

gUnk_080CD858:: @ 080CD858
	.incbin "baserom.gba", 0x0CD858, 0x0000003

gUnk_080CD85B:: @ 080CD85B
	.incbin "baserom.gba", 0x0CD85B, 0x0000003

gUnk_080CD85E:: @ 080CD85E
	.incbin "baserom.gba", 0x0CD85E, 0x0000003

gUnk_080CD861:: @ 080CD861
	.incbin "baserom.gba", 0x0CD861, 0x0000003

gUnk_080CD864:: @ 080CD864
	.incbin "baserom.gba", 0x0CD864, 0x0000003

gUnk_080CD867:: @ 080CD867
	.incbin "baserom.gba", 0x0CD867, 0x0000005

gUnk_080CD86C:: @ 080CD86C
	.4byte gUnk_080CD858
	.4byte gUnk_080CD85E
	.4byte gUnk_080CD864

gUnk_080CD878:: @ 080CD878
	.4byte gUnk_080CD85B
	.4byte gUnk_080CD861
	.4byte gUnk_080CD867

gUnk_080CD884:: @ 080CD884
	.incbin "baserom.gba", 0x0CD884, 0x000001F
