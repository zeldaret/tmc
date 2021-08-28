	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805DF70 @ =gPlayerEntity
	movs r0, #0
	strb r0, [r2, #0x14]
	movs r3, #0x36
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805DF78
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	ldr r1, _0805DF74 @ =gRoomControls
	ldrh r1, [r1, #8]
	adds r1, #0x48
	cmp r0, r1
	bge _0805DF92
	strh r1, [r2, #0x32]
	b _0805DF92
	.align 2, 0
_0805DF70: .4byte gPlayerEntity
_0805DF74: .4byte gRoomControls
_0805DF78:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DF92
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldr r0, _0805DF94 @ =0x0000164F
	bl TextboxNoOverlapFollow
_0805DF92:
	pop {pc}
	.align 2, 0
_0805DF94: .4byte 0x0000164F
	.syntax divided
