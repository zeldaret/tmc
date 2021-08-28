	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805DD1E
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DCEC
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0805DCEC:
	ldr r5, _0805DD20 @ =gRoomControls
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x14]
	movs r0, #0x69
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DD1E
	ldrh r0, [r5, #6]
	ldrh r2, [r4, #0x38]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #8]
	ldrh r2, [r4, #0x3a]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	str r1, [r4, #0x18]
	str r1, [r5, #0x30]
	adds r0, r1, #0
	movs r1, #0x1e
	bl sub_0805E4E0
_0805DD1E:
	pop {r4, r5, pc}
	.align 2, 0
_0805DD20: .4byte gRoomControls
	.syntax divided
