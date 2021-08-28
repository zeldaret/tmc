	.syntax unified
	push {lr}
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _0805B65E
	ldr r1, _0805B660 @ =gRoomControls
	ldr r0, [r1, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #0x28]
	ldr r2, _0805B664 @ =gScreen
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
_0805B65E:
	pop {pc}
	.align 2, 0
_0805B660: .4byte gRoomControls
_0805B664: .4byte gScreen
	.syntax divided
