	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805A0B0 @ =gRoomControls
	ldrb r0, [r0, #5]
	cmp r0, #9
	bgt _0805A0B4
	cmp r0, #8
	bge _0805A0BC
	cmp r0, #0
	beq _0805A0BC
	b _0805A0B8
	.align 2, 0
_0805A0B0: .4byte gRoomControls
_0805A0B4:
	cmp r0, #0x17
	beq _0805A0BC
_0805A0B8:
	movs r0, #3
	strb r0, [r1, #0xc]
_0805A0BC:
	pop {pc}
	.align 2, 0
	.syntax divided
