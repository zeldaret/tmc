
	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	bl GetNextFrame
	adds r3, r7, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _08031D54
	ldr r0, _08031D50 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _08031D66
	bl Random
	adds r6, r0, #0
	movs r0, #3
	mov sb, r0
	ands r6, r0
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #0xb]
	mov r0, r8
	str r0, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	movs r0, #1
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r4, [r5, #0x54]
	movs r0, #2
	strb r0, [r4, #0xb]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r5, r0, #0
	str r5, [r4, #0x54]
	mov r0, sb
	strb r0, [r5, #0xb]
	str r4, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08031E48
	movs r0, #0x2e
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r1, [r5, #0x54]
	movs r0, #4
	strb r0, [r1, #0xb]
	str r5, [r1, #0x50]
	mov r0, r8
	str r0, [r1, #0x54]
	adds r0, r1, #0
	adds r0, #0x74
	strb r6, [r0]
	adds r0, r7, #0
	bl sub_08031E48
	movs r0, #6
	strb r0, [r7, #0xc]
	movs r0, #0x14
	strb r0, [r7, #0xe]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	movs r1, #7
	bl InitializeAnimation
	b _08031D66
	.align 2, 0
_08031D50: .4byte gEntCount
_08031D54:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031D66
	strb r2, [r3]
	ldrb r1, [r7, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7, #0x10]
_08031D66:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
    .syntax divided
	