	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

@ staffroll rodata

@ staffroll.c
gUnk_081272F0:: @ 081272F0
	.incbin "data_08127280/gUnk_081272F0.bin"

gUnk_08127644:: @ 08127644
	.incbin "data_08127280/gUnk_08127644.bin"

gUnk_08127998:: @ 08127998
	.incbin "data_08127280/gUnk_08127998.bin"

gUnk_08127CEC:: @ 08127CEC
	.incbin "data_08127280/gUnk_08127CEC.bin"

gUnk_08127D00:: @ 08127D00
	.4byte StaffrollTask_State0
	.4byte StaffrollTask_State1
	.4byte StaffrollTask_State2
	.4byte StaffrollTask_State3

gUnk_08127D10:: @ 08127D10
	.4byte StaffrollTask_State1MenuType0
	.4byte StaffrollTask_State1MenuType1
	.4byte StaffrollTask_State1MenuType2
	.4byte StaffrollTask_State1MenuType3
	.4byte StaffrollTask_State1MenuType4
	.4byte StaffrollTask_State1MenuType5
	.4byte StaffrollTask_State1MenuType6
	.4byte StaffrollTask_State1MenuType7

@ End of staffroll
