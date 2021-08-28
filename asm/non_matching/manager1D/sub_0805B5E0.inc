	.syntax unified
	push {r4, r5, lr}
	movs r4, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r3, _0805B618 @ =gScreen
	ldrh r2, [r3]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _0805B61C @ =gUnk_08108C88
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r3, #0x2c]
	ldr r1, _0805B620 @ =gRoomControls
	str r4, [r1, #0x2c]
	str r4, [r1, #0x28]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _0805B612
	cmp r0, #1
	beq _0805B624
_0805B612:
	strh r4, [r3, #0x30]
	strh r4, [r3, #0x2e]
	b _0805B634
	.align 2, 0
_0805B618: .4byte gScreen
_0805B61C: .4byte gUnk_08108C88
_0805B620: .4byte gRoomControls
_0805B624:
	ldrh r0, [r1, #0x2a]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0x30]
_0805B634:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
