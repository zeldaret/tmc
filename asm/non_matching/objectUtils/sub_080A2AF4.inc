	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	adds r4, r2, #0
	bl CreateLargeWaterTrace
	adds r6, r0, #0
	cmp r6, #0
	beq _080A2B74
	bl Random
	adds r7, r0, #0
	subs r1, r4, r5
	adds r1, #1
	bl __modsi3
	adds r4, r0, #0
	adds r4, r4, r5
	asrs r7, r7, #0x10
	movs r0, #0xff
	ands r7, r0
	ldr r0, _080A2B7C @ =gSineTable
	mov r8, r0
	lsls r0, r7, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x2c]
	adds r1, r1, r0
	str r1, [r6, #0x2c]
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r6, #0x30]
	subs r1, r1, r0
	str r1, [r6, #0x30]
_080A2B74:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A2B7C: .4byte gSineTable
	.syntax divided
