	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r6, _0807B5F8 @ =gUnk_0811C456
	ldrb r1, [r3, #0x14]
	movs r2, #6
	ands r2, r1
	lsls r1, r2, #1
	adds r1, r1, r6
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	ldr r5, _0807B5FC @ =gRoomControls
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r4, #0x3f
	ands r0, r4
	movs r7, #0x32
	ldrsh r1, [r3, r7]
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r6
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_0807B600
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807B5F8: .4byte gUnk_0811C456
_0807B5FC: .4byte gRoomControls
	.syntax divided
