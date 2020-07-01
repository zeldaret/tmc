	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08045678
sub_08045678: @ 0x08045678
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0804568E
	subs r0, #1
	strb r0, [r5, #0xe]
	b _080456D4
_0804568E:
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080456CA
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080456CA
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _080456D4
_080456CA:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_080456D4:
	pop {r4, r5, pc}
	.align 2, 0
