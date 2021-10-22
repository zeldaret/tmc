	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806E622
	adds r0, #1
	strb r0, [r4, #0xd]
	bl Random
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0806E612
	ldrb r0, [r4, #0x18]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	eors r1, r5
	lsls r1, r1, #6
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #0x18]
_0806E612:
	bl Random
	adds r1, r0, #0
	ands r1, r5
	adds r1, #2
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0806E622:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E638
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0806E638:
	adds r0, r4, #0
	bl sub_0806E65C
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
