	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08059604 @ =gRoomVars
	movs r0, #0xff
	strb r0, [r1, #0x10]
	adds r0, r4, #0
	bl sub_08059690
	adds r0, r4, #0
	bl sub_080596E0
	movs r0, #0
	bl sub_0805B4D0
	pop {r4, pc}
	.align 2, 0
_08059604: .4byte gRoomVars
	.syntax divided
