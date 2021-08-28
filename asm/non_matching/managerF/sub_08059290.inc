	.syntax unified
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0805929C @ =gRoomControls
	ldr r0, _080592A0 @ =gPlayerEntity
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0805929C: .4byte gRoomControls
_080592A0: .4byte gPlayerEntity
	.syntax divided
