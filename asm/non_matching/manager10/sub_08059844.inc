	.syntax unified
	push {lr}
	movs r3, #0
	ldr r0, _08059864 @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r2, _08059868 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #1
	cmp r1, r0
	ble _0805985E
	movs r3, #1
_0805985E:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_08059864: .4byte gPlayerEntity
_08059868: .4byte gRoomControls
	.syntax divided
