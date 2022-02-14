	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0803573A
	b _08035974
_0803573A:
	lsls r0, r0, #2
	ldr r1, _08035744 @ =_08035748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035744: .4byte _08035748
_08035748: @ jump table
	.4byte _08035764 @ case 0
	.4byte _080358D8 @ case 1
	.4byte _080358D8 @ case 2
	.4byte _080358D8 @ case 3
	.4byte _080358D8 @ case 4
	.4byte _08035920 @ case 5
	.4byte _08035940 @ case 6
_08035764:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x7c
	movs r5, #0
	strb r5, [r0]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x30
	bl zMalloc
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x84
	str r2, [r0]
	mov r8, r0
	cmp r2, #0
	bne _0803579E
	adds r0, r4, #0
	bl GenericDeath
	b _080359A6
_0803579E:
	str r2, [r4, #0x64]
	mov r1, r8
	ldr r0, [r1]
	strb r5, [r0, #6]
	ldr r1, [r1]
	movs r0, #2
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r1, [r2]
	movs r0, #5
	strb r0, [r1, #1]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #6
	strh r5, [r0]
	movs r5, #0
	movs r0, #0x79
	adds r0, r0, r4
	mov sb, r0
	mov r7, r8
_080357E6:
	adds r6, r5, #1
	movs r0, #0x39
	adds r1, r6, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08035816
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7]
	lsls r0, r5, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_08035816:
	adds r5, r6, #0
	cmp r5, #3
	bls _080357E6
	movs r0, #0x39
	movs r1, #5
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08035840
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
_08035840:
	movs r0, #0x39
	movs r1, #6
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _0803586A
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r2]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0xc]
_0803586A:
	movs r5, #0
	mov r7, r8
_0803586E:
	movs r0, #0x39
	movs r1, #7
	bl CreateEnemy
	str r0, [r4, #0x54]
	adds r6, r5, #1
	cmp r0, #0
	beq _080358A0
	strb r5, [r0, #0xb]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x50]
	ldr r0, [r4, #0x54]
	adds r0, #0x84
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7]
	lsls r0, r6, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_080358A0:
	adds r5, r6, #0
	cmp r5, #3
	bls _0803586E
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x3c
	mov r1, sb
	strb r0, [r1]
	ldr r1, _080358D0 @ =gPlayerEntity
	ldrb r2, [r1, #0x18]
	subs r0, #0x40
	ands r0, r2
	strb r0, [r1, #0x18]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	subs r0, #0xa0
	strh r0, [r1, #0x32]
	ldr r0, _080358D4 @ =gRoomControls
	str r4, [r0, #0x30]
	b _08035974
	.align 2, 0
_080358D0: .4byte gPlayerEntity
_080358D4: .4byte gRoomControls
_080358D8:
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	ldrb r1, [r4, #0xa]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080358F4
	strb r2, [r4, #0xf]
	b _080358F8
_080358F4:
	movs r0, #0xfe
	strb r0, [r4, #0xf]
_080358F8:
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08035918
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _08035974
_08035918:
	adds r0, r4, #0
	adds r0, #0x76
	strh r2, [r0]
	b _08035974
_08035920:
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x1c
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	str r4, [r0, #8]
	b _08035974
_08035940:
	adds r0, r4, #0
	adds r0, #0x76
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x7d
	movs r0, #0x80
	strb r0, [r1]
_08035974:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _08035990
	ldr r0, _0803598C @ =gUnk_080CF08C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl InitializeAnimation
	b _080359A0
	.align 2, 0
_0803598C: .4byte gUnk_080CF08C
_08035990:
	ldr r0, _080359B0 @ =gUnk_080CF08C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080359A0:
	adds r0, r4, #0
	bl OctorokBoss_Action1
_080359A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080359B0: .4byte gUnk_080CF08C
	.syntax divided
