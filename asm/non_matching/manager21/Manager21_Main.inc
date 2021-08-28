	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _0805B834
	movs r0, #1
	strb r0, [r5, #0xc]
	str r1, [r5, #0x20]
_0805B834:
	ldrb r0, [r5, #0xa]
	bl GetCurrentRoomProperty
	adds r4, r0, #0
	movs r7, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0805B8C4
	ldr r0, _0805B8A8 @ =gRoomControls
	mov r8, r0
_0805B848:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #4
	movs r3, #4
	bl CheckRectOnScreen
	cmp r0, #0
	beq _0805B8AC
	movs r6, #1
	lsls r6, r7
	ldr r0, [r5, #0x20]
	ands r0, r6
	cmp r0, #0
	bne _0805B8B6
	ldrh r0, [r4, #4]
	bl sub_0805B8CC
	cmp r0, #0
	beq _0805B8B6
	movs r0, #0x4e
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0805B8B6
	ldrh r0, [r4, #6]
	strb r0, [r1, #0xe]
	strb r7, [r1, #0xf]
	ldrh r0, [r4]
	mov r2, r8
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #2]
	mov r3, r8
	ldrh r3, [r3, #8]
	adds r0, r0, r3
	strh r0, [r1, #0x32]
	str r5, [r1, #0x50]
	adds r0, r1, #0
	bl sub_08016A30
	ldr r0, [r5, #0x20]
	orrs r0, r6
	b _0805B8B4
	.align 2, 0
_0805B8A8: .4byte gRoomControls
_0805B8AC:
	movs r1, #1
	lsls r1, r7
	ldr r0, [r5, #0x20]
	bics r0, r1
_0805B8B4:
	str r0, [r5, #0x20]
_0805B8B6:
	adds r4, #8
	adds r7, #1
	ldrh r0, [r4]
	cmp r0, #0
	beq _0805B8C4
	cmp r7, #0x1f
	bls _0805B848
_0805B8C4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
