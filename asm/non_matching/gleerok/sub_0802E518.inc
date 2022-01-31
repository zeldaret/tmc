	.syntax unified

	.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	adds r0, #0x84
	ldr r0, [r0]
	mov sb, r0
	ldr r1, [r0, #0x3c]
	ldr r0, [r1, #0x50]
	bl CopyPosition
	mov r0, sb
	ldr r1, [r0, #0x3c]
	ldrb r0, [r0, #1]
	strb r0, [r1, #0x15]
	mov r1, sb
	ldrb r6, [r1, #1]
	cmp r6, #0x10
	bls _0802E54C
	movs r0, #0xf
	eors r6, r0
	adds r6, #1
	ands r6, r0
_0802E54C:
	cmp r6, #0x10
	bne _0802E552
	movs r6, #0xf
_0802E552:
	mov r2, sb
	ldr r1, [r2, #0x3c]
	movs r0, #0xf
	eors r6, r0
	adds r0, r6, #0
	adds r0, #0x12
	lsls r0, r0, #8
	strh r0, [r1, #0x24]
	ldr r0, [r2, #0x3c]
	bl LinearMoveUpdate
	movs r6, #0
	movs r0, #0x3c
	add r0, sb
	mov sl, r0
	mov r1, sb
	adds r1, #0x30
	str r1, [sp, #4]
	ldr r2, [sp]
	adds r2, #0x80
	str r2, [sp, #8]
	movs r7, #0x80
	lsls r7, r7, #1
_0802E580:
	lsls r0, r6, #2
	add r0, sl
	ldr r0, [r0]
	adds r1, r6, #1
	mov r8, r1
	lsls r4, r1, #2
	mov r2, sl
	adds r5, r2, r4
	ldr r1, [r5]
	bl CopyPosition
	add r4, sb
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #4
	ldr r1, _0802E644 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #4]
	adds r6, r1, r6
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl FixedDiv
	adds r1, r0, #0
	ldrb r0, [r4, #1]
	lsls r0, r0, #4
	ldr r2, _0802E644 @ =gSineTable
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl FixedDiv
	ldr r2, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #4
	adds r0, #0x80
	ldr r1, _0802E644 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl FixedDiv
	ldr r2, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
	mov r6, r8
	cmp r6, #4
	bls _0802E580
	mov r1, sb
	ldr r0, [r1, #0x50]
	ldrb r1, [r0, #0xe]
	adds r2, r0, #0
	cmp r1, #0x18
	bne _0802E662
	mov r1, sb
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #3
	lsls r7, r0, #2
	mov r0, sb
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xc
	bls _0802E648
	adds r7, #3
	b _0802E64C
	.align 2, 0
_0802E644: .4byte gSineTable
_0802E648:
	lsrs r0, r1, #0x1a
	adds r7, r7, r0
_0802E64C:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x18
	cmp r0, r1
	beq _0802E6E8
	adds r0, r2, #0
	bl InitAnimationForceUpdate
	b _0802E6E8
_0802E662:
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802E688
	mov r0, sb
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0802E7CC
	mov r0, sb
	ldr r2, [r0, #0x50]
	ldrb r1, [r2, #0x14]
	lsrs r0, r1, #1
	adds r7, r1, r0
	lsrs r0, r7, #2
	ldrb r2, [r2, #0xe]
	adds r7, r0, r2
	b _0802E6CA
_0802E688:
	ldr r0, [sp]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0802E6C0
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r3, [r0]
	mov r1, sb
	ldrb r0, [r1, #0x15]
	lsrs r2, r0, #3
	adds r0, r2, #0
	adds r0, #0x2f
	cmp r3, r0
	bne _0802E6BA
	ldr r0, [sp]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	adds r7, r3, #0
	cmp r0, #0
	beq _0802E6CA
_0802E6BA:
	adds r7, r2, #0
	adds r7, #0x28
	b _0802E6CA
_0802E6C0:
	mov r2, sb
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x2f
_0802E6CA:
	mov r0, sb
	ldr r1, [r0, #0x50]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r7
	beq _0802E6E2
	adds r0, r1, #0
	adds r1, r7, #0
	bl InitAnimationForceUpdate
	b _0802E6E8
_0802E6E2:
	adds r0, r1, #0
	bl UpdateAnimationSingleFrame
_0802E6E8:
	movs r6, #0
_0802E6EA:
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802E72E
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	movs r2, #0
	movs r3, #0
	bl sub_0802E7CC
	lsls r5, r6, #2
	mov r2, sl
	adds r0, r2, r5
	ldr r0, [r0]
	ldrb r1, [r0, #0x14]
	lsrs r0, r1, #1
	adds r7, r1, r0
	lsrs r7, r7, #2
	adds r4, r6, #1
	lsls r0, r4, #2
	add r0, sb
	ldrb r0, [r0, #0x19]
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r7, r7, r1
	adds r1, r5, #0
	b _0802E73E
_0802E72E:
	lsls r1, r6, #2
	mov r2, sb
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	lsrs r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x48
	adds r4, r6, #1
_0802E73E:
	mov r2, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r7
	beq _0802E756
	adds r0, r1, #0
	adds r1, r7, #0
	bl InitializeAnimation
_0802E756:
	adds r6, r4, #0
	cmp r6, #4
	bls _0802E6EA
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	.syntax divided
