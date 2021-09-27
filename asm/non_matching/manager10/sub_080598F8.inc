	.syntax unified
	push {r4, r5, r6, r7, lr}
	movs r4, #0x1f
	adds r3, r0, #0
	ands r3, r4
	lsls r6, r3, #8
	adds r3, r6, #0
	muls r3, r2, r3
	lsrs r6, r3, #5
	adds r3, r1, #0
	ands r3, r4
	lsls r3, r3, #8
	movs r4, #0x20
	subs r4, r4, r2
	muls r3, r4, r3
	lsrs r3, r3, #5
	adds r3, r6, r3
	lsrs r6, r3, #8
	movs r5, #0xf8
	lsls r5, r5, #2
	adds r3, r0, #0
	ands r3, r5
	lsls r7, r3, #3
	adds r3, r7, #0
	muls r3, r2, r3
	lsrs r7, r3, #5
	adds r3, r1, #0
	ands r3, r5
	lsls r3, r3, #3
	muls r3, r4, r3
	lsrs r3, r3, #5
	adds r3, r7, r3
	lsrs r7, r3, #8
	movs r3, #0xf8
	lsls r3, r3, #7
	ands r0, r3
	lsrs r5, r0, #2
	adds r0, r5, #0
	muls r0, r2, r0
	lsrs r5, r0, #5
	ands r1, r3
	lsrs r0, r1, #2
	muls r0, r4, r0
	lsrs r0, r0, #5
	adds r0, r5, r0
	lsrs r5, r0, #8
	lsls r0, r7, #5
	orrs r6, r0
	lsls r0, r5, #0xa
	orrs r6, r0
	adds r0, r6, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
