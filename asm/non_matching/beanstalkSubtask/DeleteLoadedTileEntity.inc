	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0xc
	orrs r4, r1
	ldr r2, _0801AFB8 @ =gUnk_0200B240
	ldr r0, _0801AFBC @ =gRoomVars
	ldrh r1, [r0, #0xe]
	movs r3, #0
	adds r5, r2, #0
	cmp r3, r1
	bhs _0801AFE0
	ldrh r6, [r2]
	cmp r4, r6
	bne _0801AFC0
	subs r1, #1
	strh r1, [r0, #0xe]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r2]
	b _0801AFE0
	.align 2, 0
_0801AFB8: .4byte gUnk_0200B240
_0801AFBC: .4byte gRoomVars
_0801AFC0:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	bhs _0801AFE0
	ldrh r6, [r2]
	cmp r4, r6
	bne _0801AFC0
	subs r1, #1
	strh r1, [r0, #0xe]
	adds r2, r5, #0
	lsls r0, r3, #2
	adds r0, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0]
_0801AFE0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
