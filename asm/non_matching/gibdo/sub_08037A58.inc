
	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037ACC
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xf
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0x3d
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _08037A84
	movs r0, #0xec
	strb r0, [r3]
_08037A84:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x26
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf4
	strb r0, [r3]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #4
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #0x30
	movs r0, #0x3c
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	pop {r4, pc}
	.align 2, 0

        .syntax divided
