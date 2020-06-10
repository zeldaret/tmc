	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08032358
sub_08032358: @ 0x08032358
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0803237C
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x74
	adds r0, r4, #0
	bl sub_080A2CC0
_0803237C:
	ldrb r1, [r4, #0x15]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0803238E
	adds r0, r4, #0
	bl sub_0806F69C
_0803238E:
	adds r5, r4, #0
	adds r5, #0x74
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080323BA
	ldrb r1, [r4, #0x15]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080323AE
	movs r0, #0x74
	bl sub_08004488
_080323AE:
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080A2CC0
_080323BA:
	pop {r4, r5, r6, pc}
