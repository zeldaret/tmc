	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0802D3DE
	ldr r2, _0802D3F4 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0802D3F8 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802D3FC @ =gPlayerEntity
	bl sub_0807AABC
	bl DeleteThisEntity
_0802D3DE:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0802D3EA
	b _0802D63C
_0802D3EA:
	lsls r0, r0, #2
	ldr r1, _0802D400 @ =_0802D404
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D3F4: .4byte gScreen
_0802D3F8: .4byte 0x0000FDFF
_0802D3FC: .4byte gPlayerEntity
_0802D400: .4byte _0802D404
_0802D404: @ jump table
	.4byte _0802D420 @ case 0
	.4byte _0802D544 @ case 1
	.4byte _0802D58C @ case 2
	.4byte _0802D5A8 @ case 3
	.4byte _0802D5EC @ case 4
	.4byte _0802D5F6 @ case 5
	.4byte _0802D61A @ case 6
_0802D420:
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x75
	strb r2, [r0]
	adds r0, #0xb
	strb r2, [r0]
	subs r0, #7
	strb r2, [r0]
	movs r0, #0x96
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_0802EB9C
	movs r0, #0x54
	bl zMalloc
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r5, #0
	bne _0802D470
	adds r0, r4, #0
	bl sub_0804A7D4
	bl DeleteThisEntity
_0802D470:
	ldr r0, [r7]
	str r0, [r4, #0x64]
	movs r6, #0
	movs r0, #0
	mov r8, r0
_0802D47A:
	movs r0, #0x24
	movs r1, #1
	bl CreateEnemy
	str r0, [r4, #0x54]
	adds r3, r6, #1
	cmp r0, #0
	beq _0802D4D6
	strb r3, [r0, #0xb]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, #0x38
	strb r0, [r1]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r4, #0x54]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldrh r2, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	lsls r2, r6, #2
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r4, #0x54]
	str r1, [r0]
	adds r2, r5, r2
	movs r0, #0x10
	strb r0, [r2, #1]
	mov r0, r8
	strb r0, [r2, #0x19]
	adds r0, r5, #0
	adds r0, #0x35
	mov r1, r8
	strb r1, [r0]
_0802D4D6:
	adds r6, r3, #0
	cmp r6, #4
	bls _0802D47A
	movs r0, #0x24
	movs r1, #2
	bl CreateEnemy
	adds r2, r0, #0
	str r2, [r4, #0x54]
	cmp r2, #0
	beq _0802D52E
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	movs r3, #0
	strh r0, [r1, #0x2e]
	ldr r2, [r4, #0x54]
	adds r1, r6, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r0, [r4, #0x54]
	str r0, [r5, #0x50]
	movs r0, #0x10
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x2d
	strb r3, [r0]
	adds r0, #8
	strb r3, [r0]
_0802D52E:
.ifndef EU
	ldr r0, _0802D540 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
.endif
	adds r0, r4, #0
	movs r1, #0x4c
	bl InitializeAnimation
	b _0802D63C
	.align 2, 0
.ifndef EU
_0802D540: .4byte gPlayerState
.endif
_0802D544:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0802D55C
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
_0802D55C:
	ldr r1, _0802D588 @ =gUnk_080CD7C4
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	adds r3, r4, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x24
	bl InitializeAnimation
	b _0802D63C
	.align 2, 0
_0802D588: .4byte gUnk_080CD7C4
_0802D58C:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _0802D63C
_0802D5A8:
	ldr r0, _0802D5E8 @ =gUnk_080CD884
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x12
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x4f
	bl InitializeAnimation
	b _0802D63C
	.align 2, 0
_0802D5E8: .4byte gUnk_080CD884
_0802D5EC:
	adds r0, r4, #0
	movs r1, #0x2c
	bl InitAnimationForceUpdate
	b _0802D63C
_0802D5F6:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x2d
	bl InitAnimationForceUpdate
	b _0802D63C
_0802D61A:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #0x50
	bl InitializeAnimation
_0802D63C:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0802D648
	adds r0, r4, #0
	bl sub_0802D86C
_0802D648:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
