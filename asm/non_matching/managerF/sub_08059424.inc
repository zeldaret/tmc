	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08059436
	bl DeleteThisEntity
_08059436:
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _08059476
	movs r0, #0xf
	movs r1, #0x35
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08059476
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08059478 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
	movs r0, #0xd8
	lsls r0, r0, #1
	bl EnqueueSFX
	bl DeleteThisEntity
_08059476:
	pop {r4, pc}
	.align 2, 0
_08059478: .4byte gRoomControls
	.syntax divided
