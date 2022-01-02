    .syntax unified
	push {r4, lr}
	lsrs r4, r1, #3
	lsls r4, r4, #4
	lsrs r3, r0, #3
	adds r4, r4, r3
	lsls r4, r4, #5
	ldr r3, _0801DF58 @ =gUnk_0201AEE0
	adds r4, r4, r3
	movs r3, #7
	ands r1, r3
	lsls r1, r1, #2
	adds r4, r4, r1
	ands r0, r3
	lsls r0, r0, #2
	lsls r2, r0
	ldr r1, _0801DF5C @ =gUnk_080C9460
	adds r0, r0, r1
	ldr r1, [r4]
	ldr r0, [r0]
	ands r1, r0
	orrs r1, r2
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
_0801DF58: .4byte gUnk_0201AEE0
_0801DF5C: .4byte gUnk_080C9460
    .syntax divided
