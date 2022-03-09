	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bls _0809C400
	b _0809C5A4
_0809C400:
	lsls r0, r0, #2
	ldr r1, _0809C40C @ =_0809C410
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809C40C: .4byte _0809C410
_0809C410: @ jump table
	.4byte _0809C430 @ case 0
	.4byte _0809C53E @ case 1
	.4byte _0809C53E @ case 2
	.4byte _0809C53E @ case 3
	.4byte _0809C53E @ case 4
	.4byte _0809C586 @ case 5
	.4byte _0809C440 @ case 6
	.4byte _0809C5BA @ case 7
_0809C430:
	adds r0, r4, #0
	movs r1, #6
	bl SetDefaultPriority
	adds r1, r4, #0
	adds r1, #0x7e
	movs r0, #0
	strh r0, [r1]
_0809C440:
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0xf0
	strb r0, [r1]
	ldr r1, _0809C4B4 @ =gRoomControls
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7b
	movs r0, #0x80
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0809C52E
	subs r1, #0x19
	movs r0, #0x29
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe0
	strb r0, [r1]
	movs r0, #0x30
	bl zMalloc
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x84
	str r2, [r0]
	mov r8, r0
	cmp r2, #0
	bne _0809C4B8
	bl DeleteThisEntity
	b _0809C5BA
	.align 2, 0
_0809C4B4: .4byte gRoomControls
_0809C4B8:
	str r2, [r4, #0x64]
	mov r0, r8
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	movs r5, #0
	mov r7, r8
_0809C4C6:
	adds r6, r5, #1
	adds r0, r4, #0
	movs r1, #0x91
	adds r2, r6, #0
	movs r3, #0
	bl CreateObjectWithParent
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0809C4EE
	adds r1, r0, #0
	adds r1, #0x84
	ldr r0, [r7]
	str r0, [r1]
	ldr r1, [r7]
	lsls r0, r5, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_0809C4EE:
	adds r5, r6, #0
	cmp r5, #3
	bls _0809C4C6
	adds r0, r4, #0
	movs r1, #0x91
	movs r2, #5
	movs r3, #0
	bl CreateObjectWithParent
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0809C510
	adds r1, r0, #0
	adds r1, #0x84
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
_0809C510:
	adds r0, r4, #0
	movs r1, #0x91
	movs r2, #6
	movs r3, #0
	bl CreateObjectWithParent
	str r0, [r4, #0x50]
	cmp r0, #0
	beq _0809C5A4
	adds r1, r0, #0
	adds r1, #0x84
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
	b _0809C5A4
_0809C52E:
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0xd7
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe0
	strb r0, [r1]
	b _0809C5A4
_0809C53E:
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
	bne _0809C55A
	strb r2, [r4, #0xf]
	b _0809C55E
_0809C55A:
	movs r0, #0xfe
	strb r0, [r4, #0xf]
_0809C55E:
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809C57E
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _0809C5A4
_0809C57E:
	adds r0, r4, #0
	adds r0, #0x76
	strh r2, [r0]
	b _0809C5A4
_0809C586:
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
_0809C5A4:
	ldr r0, _0809C5C0 @ =gUnk_08123DDC
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl FrozenOctorok_Action1
_0809C5BA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809C5C0: .4byte gUnk_08123DDC
	.syntax divided
