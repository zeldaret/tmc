
	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	movs r7, #8
	cmp r0, #0x28
	bhi _0802B022
	movs r7, #4
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802AFEC
	adds r0, r2, #0
	subs r0, #0x10
	b _0802AFF0
_0802AFEC:
	adds r0, r2, #0
	adds r0, #0x10
_0802AFF0:
	strh r0, [r1]
	adds r5, r1, #0
	ldrh r2, [r5]
	movs r6, #0xf0
	adds r3, r6, #0
	ands r3, r2
	subs r0, r3, #1
	cmp r0, #0x7f
	bls _0802B00C
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	eors r0, r2
	strh r0, [r5]
_0802B00C:
	ldrh r0, [r1]
	adds r3, r6, #0
	ands r3, r0
	movs r2, #0x98
	lsls r2, r2, #1
	subs r2, r2, r3
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0802B022:
	ldrb r0, [r4, #0xf]
	ands r0, r7
	cmp r0, #0
	beq _0802B03A
	ldrb r0, [r4, #0x1a]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1a]
	b _0802B044
_0802B03A:
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
_0802B044:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	.syntax divided
