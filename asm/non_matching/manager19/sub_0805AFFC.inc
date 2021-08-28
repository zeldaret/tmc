	.syntax unified
	ldr r2, _0805B024 @ =gScreen
	ldr r0, _0805B028 @ =0x00001E03
	strh r0, [r2, #0x2c]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0805B02C @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0805B024: .4byte gScreen
_0805B028: .4byte 0x00001E03
_0805B02C: .4byte gRoomControls
	.syntax divided
