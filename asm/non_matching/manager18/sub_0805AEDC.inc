	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0805AF2C @ =gScreen
	ldr r0, _0805AF30 @ =0x00001E05
	strh r0, [r2, #0x2c]
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _0805AF34 @ =0x00003648
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	cmp r3, #0
	beq _0805AF06
	ldrh r1, [r3, #0x20]
_0805AF06:
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0]
	ldr r1, _0805AF38 @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r4, [r1, #0xa]
	adds r0, r0, r4
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	cmp r3, #0
	beq _0805AF28
	adds r0, r3, #0
	bl Manager18_Main
_0805AF28:
	pop {r4, pc}
	.align 2, 0
_0805AF2C: .4byte gScreen
_0805AF30: .4byte 0x00001E05
_0805AF34: .4byte 0x00003648
_0805AF38: .4byte gRoomControls
	.syntax divided
