	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #8
	bl sub_0805E4E0
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805DD94
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DDAE
	ldr r1, _0805DD90 @ =gRoomControls
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x30]
	b _0805DDAE
	.align 2, 0
_0805DD90: .4byte gRoomControls
_0805DD94:
	ldr r0, _0805DDB0 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805DDAE
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DDAA
	bl DeleteEntity
_0805DDAA:
	bl DeleteThisEntity
_0805DDAE:
	pop {r4, pc}
	.align 2, 0
_0805DDB0: .4byte gRoomControls
	.syntax divided
