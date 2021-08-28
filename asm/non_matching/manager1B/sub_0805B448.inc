	.syntax unified
	push {r4, lr}
	ldr r4, _0805B46C @ =gScreen
	ldr r3, _0805B470 @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #2
	strh r1, [r4, #0x2e]
	movs r2, #0xc
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	asrs r1, r1, #1
	ldr r0, [r0, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	pop {r4, pc}
	.align 2, 0
_0805B46C: .4byte gScreen
_0805B470: .4byte gRoomControls
	.syntax divided
