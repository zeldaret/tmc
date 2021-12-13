	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r1
	adds r6, r2, #0
	adds r1, r0, #0
	adds r1, #0x84
	ldr r4, [r1]
	ldr r2, [r4, #0xc]
	ldrb r1, [r4, #1]
	subs r1, #1
	lsls r1, r1, #2
	adds r3, r4, #0
	adds r3, #0xc
	adds r1, r3, r1
	ldr r1, [r1]
	adds r1, #0x7b
	adds r0, #0x79
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r2, #0x7b
	strb r0, [r2]
	ldrb r0, [r4, #1]
	movs r2, #0
	cmp r0, #1
	beq _08036A58
	adds r5, r3, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	rsbs r0, r6, #0
	lsls r0, r0, #0x18
	asrs r7, r0, #0x18
_08036A16:
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r1, [r0]
	adds r1, #0x7b
	adds r2, #1
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x7b
	ldrb r1, [r1]
	ldrb r0, [r3]
	cmp r1, r0
	beq _08036A4C
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08036A44
	cmp r0, r8
	ble _08036A4C
	adds r0, r1, r6
	b _08036A4A
_08036A44:
	cmp r0, r7
	bge _08036A4C
	subs r0, r1, r6
_08036A4A:
	strb r0, [r3]
_08036A4C:
	ldrb r0, [r4, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	blo _08036A16
_08036A58:
	ldrb r0, [r4, #1]
	subs r2, r0, #1
	cmp r2, #0
	beq _08036AE4
	ldr r0, _08036AEC @ =gSineTable
	mov sb, r0
	movs r1, #0x80
	mov r8, r1
	mov r1, ip
	lsls r0, r1, #0x14
	asrs r6, r0, #0x10
	lsls r0, r2, #2
	adds r0, #8
	adds r5, r0, r4
	movs r7, #0x80
	lsls r7, r7, #1
_08036A78:
	subs r4, r2, #1
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	mov r1, r8
	eors r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl FixedDiv
	ldr r2, [r5]
	ldr r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r2, #0x2c]
	ldr r0, [r5]
	adds r0, #0x7b
	ldrb r0, [r0]
	mov r1, r8
	eors r0, r1
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	bl FixedDiv
	ldr r2, [r5]
	ldr r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x30]
	subs r1, r1, r0
	str r1, [r2, #0x30]
	subs r5, #4
	adds r2, r4, #0
	cmp r2, #0
	bne _08036A78
_08036AE4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08036AEC: .4byte gSineTable
	.syntax divided
