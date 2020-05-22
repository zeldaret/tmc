	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0801D630
sub_0801D630: @ 0x0801D630
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r4, #0
	adds r1, r3, #0
	orrs r1, r2
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0801D64A
	cmp r1, #2
	beq _0801D654
	b _0801D65E
_0801D64A:
	movs r0, #0
	adds r1, r3, #0
	bl sub_0801D610
	b _0801D668
_0801D654:
	movs r0, #0
	adds r1, r3, #0
	bl sub_0801D5EC
	b _0801D668
_0801D65E:
	strb r4, [r3]
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bne _0801D65E
_0801D668:
	pop {r4, pc}
	.align 2, 0