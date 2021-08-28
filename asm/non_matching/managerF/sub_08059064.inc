	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x53
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805908E
	movs r0, #2
	strb r0, [r2, #0xe]
	ldr r1, _08059090 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
_0805908E:
	pop {r4, pc}
	.align 2, 0
_08059090: .4byte gRoomControls
	.syntax divided
