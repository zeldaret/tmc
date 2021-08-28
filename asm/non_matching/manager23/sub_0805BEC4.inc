	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805BF10
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r1, _0805BF14 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #0x3a]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldrb r1, [r4, #0xb]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0805BF10:
	pop {r4, pc}
	.align 2, 0
_0805BF14: .4byte gRoomControls
	.syntax divided
