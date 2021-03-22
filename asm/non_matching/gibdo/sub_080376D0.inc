	

	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	bl sub_080379EC
	cmp r0, #0
	bne _0803773A
	bl ResetPlayer
	ldr r2, _08037724 @ =gPlayerState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08037728 @ =gPlayerEntity
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803773A
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803772C
	adds r0, r4, #0
	bl sub_08037A58
	b _0803773A
	.align 2, 0
_08037724: .4byte gPlayerState
_08037728: .4byte gPlayerEntity
_0803772C:
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08037B10
_0803773A:
	pop {r4, pc}

	.syntax divided
