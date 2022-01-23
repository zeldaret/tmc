	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r5, [r6, #0x54]
	cmp r5, #0
	beq _080AA3D8
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080AA3D8
	ldrb r4, [r5, #0x14]
	ldr r0, _080AA3CC @ =gUnk_08129D14
	adds r4, r4, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806F824
	adds r7, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	adds r0, r6, #0
	movs r3, #8
	bl isEntityWithinDistance
	cmp r0, #0
	beq _080AA3D0
	movs r0, #1
	mov r8, r0
	b _080AA3D8
	.align 2, 0
_080AA3CC: .4byte gUnk_08129D14
_080AA3D0:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08004596
_080AA3D8:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
