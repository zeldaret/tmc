	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	adds r0, #0x84
	ldr r6, [r0]
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x3c
	adds r5, r7, #0
_0802D34A:
	ldm r5!, {r0}
	bl DeleteEntity
	adds r4, #1
	cmp r4, #3
	bls _0802D34A
	lsls r1, r4, #2
	adds r1, r7, r1
	ldr r0, [r1]
	adds r0, #0x45
	movs r3, #0
	strb r3, [r0]
	ldr r1, [r1]
	adds r1, #0x6d
	ldrb r2, [r1]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r6, #0x50]
	adds r0, #0x45
	strb r3, [r0]
	ldr r0, [r6, #0x50]
	strb r3, [r0, #0xb]
	ldr r3, [r6, #0x50]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	bl DeleteThisEntity
	pop {r4, r5, r6, r7, pc}

	.syntax divided
