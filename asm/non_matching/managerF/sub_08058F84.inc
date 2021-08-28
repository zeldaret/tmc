	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x21
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08058FA8
	ldr r0, _08058FAC @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, r1, r4
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	adds r0, r0, r5
	strh r0, [r2, #0x32]
_08058FA8:
	pop {r4, r5, pc}
	.align 2, 0
_08058FAC: .4byte gRoomControls
	.syntax divided
