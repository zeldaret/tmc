    .syntax unified
	lsrs r2, r1, #3
	adds r3, r0, r2
	movs r2, #7
	ands r1, r2
	movs r2, #1
	lsls r2, r1
	ldrb r0, [r3]
	adds r1, r0, #0
	orrs r1, r2
	strb r1, [r3]
	ands r0, r2
	bx lr
    .syntax divided
