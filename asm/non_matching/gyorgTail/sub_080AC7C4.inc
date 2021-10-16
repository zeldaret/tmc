	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	mov r8, r0
	ldr r7, [r0, #0x54]
	ldr r5, [r7, #0x54]
	cmp r5, #0
	beq _080AC7E4
	ldr r0, [r4, #0x50]
	adds r1, r5, #0
	bl CopyPosition
	b _080AC7E6
_080AC7E4:
	ldr r5, [r4, #0x50]
_080AC7E6:
	adds r0, r7, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r3, _080AC880 @ =gSineTable
	mov sb, r3
	ldrb r1, [r7, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl PositionRelative
	mov r0, r8
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	mov r0, r8
	ldrb r1, [r0, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl PositionRelative
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldrb r1, [r4, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	mov r0, r8
	adds r1, r4, #0
	adds r2, r6, #0
	bl PositionRelative
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AC880: .4byte gSineTable
	.syntax divided
