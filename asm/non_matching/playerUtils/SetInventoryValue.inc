	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	lsrs r4, r3, #2
	ldr r0, _0807CAC4 @ =gUnk_02002B32
	adds r4, r4, r0
	movs r0, #3
	ands r3, r0
	lsls r3, r3, #1
	lsls r1, r3
	ldrb r2, [r4]
	lsls r0, r3
	ands r0, r2
	eors r2, r0
	orrs r2, r1
	strb r2, [r4]
	lsrs r0, r3
	pop {r4, pc}
	.align 2, 0
_0807CAC4: .4byte gUnk_02002B32
	.syntax divided
