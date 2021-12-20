    .syntax unified
    push {r4, r5, lr}
	adds r2, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	ldr r4, [r2, #0x48]
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r3, _0806F7CC @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	movs r5, #0x32
	ldrsh r1, [r2, r5]
	movs r2, #1
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	movs r2, #0x3f
	lsrs r0, r0, #4
	ands r0, r2
	lsrs r1, r1, #4
	ands r1, r2
	lsls r1, r1, #6
	adds r0, r0, r1
	pop {r4, r5, pc}
	.align 2, 0
_0806F7CC: .4byte gRoomControls
    .syntax divided
