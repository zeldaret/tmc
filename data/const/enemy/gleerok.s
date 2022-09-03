	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CD7C4:: @ 080CD7C4
	.incbin "gleerok/gUnk_080CD7C4.bin"

gUnk_080CD7E4:: @ 080CD7E4
	.4byte sub_0802D674
	.4byte sub_0802D6F0
	.4byte sub_0802D714
	.4byte sub_0802D77C
	.4byte sub_0802D7B4

gUnk_080CD7F8:: @ 080CD7F8
	.incbin "gleerok/gUnk_080CD7F8.bin"

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
	.incbin "gleerok/gUnk_080CD844.bin"

gUnk_080CD848:: @ 080CD848
	.4byte sub_0802E448
	.4byte sub_0802E4C0

gUnk_080CD850:: @ 080CD850
	.incbin "gleerok/gUnk_080CD850.bin"

gUnk_080CD854:: @ 080CD854
	.incbin "gleerok/gUnk_080CD854.bin"

gUnk_080CD858:: @ 080CD858
	.incbin "gleerok/gUnk_080CD858.bin"

gUnk_080CD85B:: @ 080CD85B
	.incbin "gleerok/gUnk_080CD85B.bin"

gUnk_080CD85E:: @ 080CD85E
	.incbin "gleerok/gUnk_080CD85E.bin"

gUnk_080CD861:: @ 080CD861
	.incbin "gleerok/gUnk_080CD861.bin"

gUnk_080CD864:: @ 080CD864
	.incbin "gleerok/gUnk_080CD864.bin"

gUnk_080CD867:: @ 080CD867
	.incbin "gleerok/gUnk_080CD867.bin"

gUnk_080CD86C:: @ 080CD86C
	.4byte gUnk_080CD858
	.4byte gUnk_080CD85E
	.4byte gUnk_080CD864

gUnk_080CD878:: @ 080CD878
	.4byte gUnk_080CD85B
	.4byte gUnk_080CD861
	.4byte gUnk_080CD867

gUnk_080CD884:: @ 080CD884
	.incbin "gleerok/gUnk_080CD884.bin"
