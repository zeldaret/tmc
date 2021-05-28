	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r6, _080650F8 @ =gRoomVars
	ldr r0, [r6, #0x68]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08065100
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _080650FC @ =script_080143C0
	bl InitScriptExecutionContext
	b _080651A6
	.align 2, 0
_080650F8: .4byte gRoomVars
_080650FC: .4byte script_080143C0
_08065100:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806517C
	adds r3, r5, #0
	adds r3, #0x39
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0806517C
	strb r4, [r3]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #7
	bl InitializeAnimation
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0806513C
	ldr r7, _08065138 @ =0x00002C01
	b _0806515E
	.align 2, 0
_08065138: .4byte 0x00002C01
_0806513C:
	ldrb r0, [r6, #6]
	bl GetSaleItemConfirmMessageID
	adds r7, r0, #0
	ldrb r0, [r6, #6]
	bl GetItemPrice
	mov r8, r0
	movs r0, #4
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _08065174 @ =script_08014384
	bl InitScriptExecutionContext
_0806515E:
	adds r0, r7, #0
	adds r1, r5, #0
	bl TextboxNoOverlap
	ldr r1, _08065178 @ =gTextBox
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0x10]
	b _080651A6
	.align 2, 0
_08065174: .4byte script_08014384
_08065178: .4byte gTextBox
_0806517C:
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080651A0
	ldr r4, _0806519C @ =gUnk_0810FDB8
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r0, r5, #0
	bl InitializeAnimation
	b _080651A6
	.align 2, 0
_0806519C: .4byte gUnk_0810FDB8
_080651A0:
	adds r0, r5, #0
	bl GetNextFrame
_080651A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
