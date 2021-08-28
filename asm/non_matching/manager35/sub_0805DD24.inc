	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #8
	bl sub_0805E4E0
	ldr r0, _0805DD64 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805DD60
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DD60
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805DD60
	movs r0, #1
	strb r0, [r1]
_0805DD60:
	pop {r4, pc}
	.align 2, 0
_0805DD64: .4byte gRoomControls
	.syntax divided
