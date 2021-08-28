	.syntax unified
	push {lr}
	movs r0, #0x4c
	bl LoadGfxGroup
	ldr r2, _0805D4A0 @ =gScreen
	ldr r0, _0805D4A4 @ =0x00001E07
	strh r0, [r2, #0x2c]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0805D4A8 @ =gRoomControls
	ldrh r0, [r1, #0x2a]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0x30]
	pop {pc}
	.align 2, 0
_0805D4A0: .4byte gScreen
_0805D4A4: .4byte 0x00001E07
_0805D4A8: .4byte gRoomControls
	.syntax divided
