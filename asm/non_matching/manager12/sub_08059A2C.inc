	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r1, _08059A54 @ =gRoomVars
	movs r0, #0xff
	strb r0, [r1, #0x12]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x11]
	strb r0, [r1, #0x10]
	adds r1, r2, #0
	adds r1, #0x22
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08059A58
	pop {pc}
	.align 2, 0
_08059A54: .4byte gRoomVars
	.syntax divided
