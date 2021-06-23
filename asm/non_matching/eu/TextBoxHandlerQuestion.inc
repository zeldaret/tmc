.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _08056570 @ =gUnk_02024030
	movs r7, #3
	ldrsb r7, [r0, r7]
	ldr r0, _08056574 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #8
	beq _08056582
	cmp r0, #8
	bgt _08056578
	cmp r0, #1
	beq _08056582
	b _080565EA
	.align 2, 0
_08056570: .4byte gUnk_02024030
_08056574: .4byte gInput
_08056578:
	cmp r0, #0x10
	beq _080565E8
	cmp r0, #0x20
	beq _080565E4
	b _080565EA
_08056582:
	ldr r0, _08056598EU @ =gUnk_02024030
	lsls r1, r7, #1
	adds r0, #0x10
	adds r1, r1, r0
	ldrh r1, [r1]
	cmp r1, #0
	bne _080565A0EU
	ldr r1, _0805659CEU @ =gUnk_08107C14
	adds r0, r6, #0
	adds r0, #0x20
	b _080565B0EU
	.align 2, 0
_08056598EU: .4byte gUnk_02024030
_0805659CEU: .4byte gUnk_08107C14
_080565A0EU:
	strh r1, [r6, #8]
	adds r4, r6, #0
	adds r4, #0x20
	adds r0, r4, #0
	bl sub_0805EEB4
	ldr r1, _080565D8 @ =gUnk_08107C0F
	adds r0, r4, #0
_080565B0EU:
	bl sub_0805EF40
	ldr r2, _080565DC @ =gUnk_02000040
	ldr r0, _080565E0 @ =gUnk_02024030
	ldrb r1, [r0, #3]
	strb r1, [r2, #1]
	movs r1, #3
	strb r1, [r2]
	movs r1, #0x18
	bl MemClear
	movs r0, #0x6a
	bl SoundReq
	adds r1, r6, #0
	adds r1, #0x89
	movs r0, #1
	strb r0, [r1]
	b _080565EA
	.align 2, 0
_080565D8: .4byte gUnk_08107C0F
_080565DC: .4byte gUnk_02000040
_080565E0: .4byte gUnk_02024030
_080565E4:
	subs r7, #1
	b _080565EA
_080565E8:
	adds r7, #1
_080565EA:
	ldr r4, _0805660C @ =gUnk_02024030
	movs r1, #2
	ldrsb r1, [r4, r1]
	adds r0, r7, r1
	bl __modsi3
	adds r7, r0, #0
	movs r5, #3
	ldrsb r5, [r4, r5]
	cmp r7, r5
	beq _08056610
	strb r7, [r4, #3]
	movs r0, #0x69
	bl SoundReq
	movs r1, #1
	b _08056612
	.align 2, 0
_0805660C: .4byte gUnk_02024030
_08056610:
	movs r1, #0
_08056612:
	ldr r2, _08056674 @ =gUnk_02000040
	ldrb r0, [r2]
	cmp r0, #1
	bne _08056624
	ldr r1, _08056678 @ =gUnk_02024030
	movs r0, #2
	strb r0, [r2]
	strb r0, [r1]
	movs r1, #1
_08056624:
	cmp r1, #0
	beq _0805666A
	ldr r0, _0805667C @ =gCurrentTextBox
	mov sl, r0
	movs r1, #0x56
	add r1, sl
	mov sb, r1
	ldrh r0, [r1]
	mov r8, r0
	ldr r4, _08056678 @ =gUnk_02024030
	lsls r0, r5, #1
	adds r4, #8
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r6, #0x50
	movs r0, #0
	adds r1, r6, #0
	bl sub_0805F8E4
	lsls r0, r7, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	mov r1, sb
	strh r0, [r1]
	movs r0, #1
	adds r1, r6, #0
	bl sub_0805F8E4
	mov r1, r8
	mov r0, sb
	strh r1, [r0]
	movs r0, #1
	ldr r1, _08056680 @ =0x0202281D
	strb r0, [r1]
_0805666A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08056674: .4byte gUnk_02000040
_08056678: .4byte gUnk_02024030
_0805667C: .4byte gCurrentTextBox
_08056680: .4byte 0x0202281D
.syntax divided
