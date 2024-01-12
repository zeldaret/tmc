	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

@ custom libgcc implementation

	.code 16
_divide_by_zero:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bx lr

	thumb_func_start __divsi3
__divsi3: @ 0x08000EE0
	cmp r1, #0
	beq _divide_by_zero
	svc #6
	bx lr

	thumb_func_start __modsi3
__modsi3: @ 0x08000EE8
	cmp r1, #0
	beq _divide_by_zero
	svc #6
	adds r0, r1, #0
	bx lr

	non_word_aligned_thumb_func_start _call_via_r0
_call_via_r0: @ 0x08000EF2
	bx r0

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x08000EF4
	bx r1

	non_word_aligned_thumb_func_start _call_via_r2
_call_via_r2: @ 0x08000EF6
	bx r2

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x08000EF8
	bx r3

	non_word_aligned_thumb_func_start _call_via_r4
_call_via_r4: @ 0x08000EFA
	bx r4

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x08000EFC
	bx r5

	non_word_aligned_thumb_func_start _call_via_r6
_call_via_r6: @ 0x08000EFE
	bx r6

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x08000F00
	bx r7

	non_word_aligned_thumb_func_start _call_via_r8
_call_via_r8: @ 0x08000F02
	bx r8

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x08000F04
	bx sb

	non_word_aligned_thumb_func_start _call_via_sl
_call_via_sl: @ 0x08000F06
	bx sl

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x08000F08
	bx fp

	non_word_aligned_thumb_func_start _call_via_ip
_call_via_ip: @ 0x08000F0A
	bx ip

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x08000F0C
	bx sp

	non_word_aligned_thumb_func_start _call_via_lr
_call_via_lr: @ 0x08000F0E
	bx lr
