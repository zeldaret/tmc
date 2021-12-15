	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp]
	mov r8, r2
	adds r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #1]
	subs r4, r0, #1
	cmp r4, #0
	bne _08036B10
	b _08036C80
_08036B10:
	ldr r0, [sp, #4]
	adds r0, #0xc
	str r0, [sp, #8]
	lsls r0, r1, #0x14
	asrs r0, r0, #0x10
	mov sl, r0
_08036B1C:
	mov r1, r8
	cmp r1, #0
	bne _08036BC0
	lsls r0, r4, #2
	ldr r2, [sp, #8]
	adds r6, r2, r0
	ldr r0, [r6]
	subs r4, #1
	lsls r1, r4, #2
	adds r5, r2, r1
	ldr r2, [r5]
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	movs r3, #0x32
	ldrsh r2, [r2, r3]
	bl sub_080041DC
	mov sb, r4
	ldr r1, [sp]
	cmp r1, r0
	blo _08036B48
	b _08036C78
_08036B48:
	ldr r2, [r5]
	ldr r3, [r6]
	ldr r0, [r2, #0x2c]
	ldr r1, [r3, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r3, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	ldr r1, [r5]
	adds r1, #0x7b
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, _08036BBC @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sl
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl FixedDiv
	ldr r2, [r5]
	ldr r1, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08036BBC @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl FixedDiv
	ldr r2, [r5]
	ldr r1, [r6]
	b _08036C6E
	.align 2, 0
_08036BBC: .4byte gSineTable
_08036BC0:
	subs r2, r4, #1
	lsls r0, r2, #2
	ldr r3, [sp, #8]
	adds r0, r3, r0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x7b
	lsls r1, r4, #2
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x7b
	ldrb r4, [r5]
	ldrb r3, [r0]
	adds r7, r1, #0
	ldr r6, [sp, #4]
	adds r6, #0xc
	mov sb, r2
	cmp r4, r3
	beq _08036C0E
	subs r0, r3, r4
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	ble _08036BFE
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	ble _08036C0E
	subs r0, r3, r2
	b _08036C0C
_08036BFE:
	mov r2, r8
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _08036C0E
	adds r0, r3, r2
_08036C0C:
	strb r0, [r5]
_08036C0E:
	mov r3, sb
	lsls r4, r3, #2
	adds r4, r6, r4
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, _08036C8C @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r1, sl
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl FixedDiv
	ldr r2, [r4]
	adds r5, r6, r7
	ldr r1, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08036C8C @ =gSineTable
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sl
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	bl FixedDiv
	ldr r2, [r4]
	ldr r1, [r5]
_08036C6E:
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
_08036C78:
	mov r4, sb
	cmp r4, #0
	beq _08036C80
	b _08036B1C
_08036C80:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036C8C: .4byte gSineTable
	.syntax divided
