	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080576BC @ =gRoomVars
	ldrb r0, [r0, #0x10]
	bl LoadGfxGroup
	movs r0, #0
	str r0, [r4, #0x38]
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_0805754C
	pop {r4, pc}
	.align 2, 0
_080576BC: .4byte gRoomVars
	.syntax divided
