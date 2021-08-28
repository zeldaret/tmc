	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r5, _0805DF44 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	subs r2, #0x88
	ldr r4, _0805DF48 @ =gRoomControls
	ldrh r0, [r4, #6]
	subs r2, r2, r0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	subs r0, #0x40
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	adds r1, r2, #0
	muls r1, r2, r1
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0805DF42
	movs r0, #0
	movs r1, #2
	strb r1, [r3, #0xc]
	strb r0, [r3, #0xd]
	movs r0, #0x78
	strb r0, [r3, #0xe]
	movs r0, #2
	bl sub_08078A90
	bl sub_08078B48
	movs r0, #0x64
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805DF1A
	ldrh r0, [r4, #6]
	adds r0, #0x88
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #8]
	adds r0, #0x48
	strh r0, [r2, #0x32]
_0805DF1A:
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #8
	bl CreateSpeechBubbleExclamationMark
	adds r2, r0, #0
	cmp r2, #0
	beq _0805DF3C
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0805DF3C:
	movs r0, #0x32
	bl SoundReq
_0805DF42:
	pop {r4, r5, pc}
	.align 2, 0
_0805DF44: .4byte gPlayerEntity
_0805DF48: .4byte gRoomControls
	.syntax divided
