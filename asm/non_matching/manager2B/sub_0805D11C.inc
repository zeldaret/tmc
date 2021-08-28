	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r1, _0805D170 @ =gRoomControls
	mov r8, r1
	movs r7, #0x3f
	adds r5, r0, #0
	adds r5, #0x20
_0805D12E:
	ldr r4, [r5]
	movs r0, #0
	stm r5!, {r0}
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	mov r3, r8
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r7
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	adds r0, r4, #0
	bl DeleteEntity
	adds r6, #1
	cmp r6, #3
	bls _0805D12E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805D170: .4byte gRoomControls
	.syntax divided
