	.syntax unified
	push {r4, r5, lr}
	ldr r5, _0805B4A8 @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r5, r0]
	ldrh r4, [r5, #8]
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	ldrh r1, [r5, #0x20]
	subs r1, #0xa0
	bl __divsi3
	ldr r2, _0805B4AC @ =gScreen
	adds r4, r4, r0
	strh r4, [r2, #0x30]
	ldrh r0, [r5, #0x1e]
	ldr r1, _0805B4B0 @ =0xFFFFFF00
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r5, #0xa]
	subs r1, r1, r0
	strh r1, [r2, #0x2e]
	pop {r4, r5, pc}
	.align 2, 0
_0805B4A8: .4byte gRoomControls
_0805B4AC: .4byte gScreen
_0805B4B0: .4byte 0xFFFFFF00
	.syntax divided
