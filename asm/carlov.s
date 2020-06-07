	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806BD54
sub_0806BD54: @ 0x0806BD54
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806BD6A
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806BD72
_0806BD6A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_0806BD72:
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806BD94
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4]
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
	movs r0, #0x10
	movs r1, #0
	bl sub_08080964
_0806BD94:
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806BDAA
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r4]
	movs r0, #0x7c
	bl sub_08004488
_0806BDAA:
	pop {r4, pc}