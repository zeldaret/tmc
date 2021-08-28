	.syntax unified
	push {lr}
	movs r2, #0
	ldr r0, _0805988C @ =gPlayerEntity
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	ldr r0, _08059890 @ =gRoomControls
	ldrh r0, [r0, #6]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08059886
	movs r2, #1
_08059886:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0805988C: .4byte gPlayerEntity
_08059890: .4byte gRoomControls
	.syntax divided
