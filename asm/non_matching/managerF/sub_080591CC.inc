	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080591F4
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	strb r0, [r4, #0xb]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08059214
	ldr r1, _080591F0 @ =gRoomVars
	ldrh r0, [r4, #0x3a]
	b _08059218
	.align 2, 0
_080591F0: .4byte gRoomVars
_080591F4:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	adds r1, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, r1
	beq _0805921A
	strb r1, [r4, #0xb]
	cmp r1, #0
	beq _08059214
	ldr r1, _08059210 @ =gRoomVars
	ldrh r0, [r4, #0x3a]
	b _08059218
	.align 2, 0
_08059210: .4byte gRoomVars
_08059214:
	ldr r1, _0805921C @ =gRoomVars
	ldrh r0, [r4, #0x38]
_08059218:
	strh r0, [r1, #0xc]
_0805921A:
	pop {r4, pc}
	.align 2, 0
_0805921C: .4byte gRoomVars
	.syntax divided
