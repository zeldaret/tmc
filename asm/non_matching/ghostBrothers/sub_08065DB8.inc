	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhi _08065E74
	lsls r0, r0, #2
	ldr r1, _08065DCC @ =_08065DD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065DCC: .4byte _08065DD0
_08065DD0: @ jump table
	.4byte _08065DE4 @ case 0
	.4byte _08065E08 @ case 1
	.4byte _08065EB0 @ case 2
	.4byte _08065E34 @ case 3
	.4byte _08065E4E @ case 4
_08065DE4:
	ldr r0, _08065E04 @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08065EB0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #4
	bl InitAnimationForceUpdate
	b _08065EB0
	.align 2, 0
_08065E04: .4byte gMessage
_08065E08:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065EB0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	ldr r1, _08065E30 @ =gUnk_02018EB0
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	adds r0, r4, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	b _08065EB0
	.align 2, 0
_08065E30: .4byte gUnk_02018EB0
_08065E34:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065EB0
	movs r0, #0
	bl MessageFromTarget
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _08065EB0
_08065E4E:
	ldr r0, _08065E6C @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08065EB0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldr r0, _08065E70 @ =gUnk_0811022E
	str r0, [r4, #0x6c]
	b _08065EB0
	.align 2, 0
_08065E6C: .4byte gMessage
_08065E70: .4byte gUnk_0811022E
_08065E74:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065EB0
	ldr r1, [r4, #0x6c]
	ldrh r2, [r1]
	ldr r0, _08065E9C @ =0x0000FFFF
	cmp r2, r0
	beq _08065EA4
	ldr r0, _08065EA0 @ =gScreen
	adds r0, #0x68
	strh r2, [r0]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0xe]
	adds r0, r1, #4
	str r0, [r4, #0x6c]
	b _08065EB0
	.align 2, 0
_08065E9C: .4byte 0x0000FFFF
_08065EA0: .4byte gScreen
_08065EA4:
	ldr r1, _08065EB8 @ =gUnk_02018EB0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl DeleteThisEntity
_08065EB0:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_08065EB8: .4byte gUnk_02018EB0
	.syntax divided
