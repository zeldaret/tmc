	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r1, #0
	ldr r2, _080AE380 @ =gGFXSlots
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r5, r1, r2
	ldrb r4, [r5, #5]
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _080AE372
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r8, r0
	adds r0, r1, #4
	adds r6, r0, r2
_080AE350:
	mov r0, r8
	adds r0, #4
	adds r1, r5, #4
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	adds r0, r6, #0
	movs r1, #0xc
	bl MemClear
	adds r6, #0xc
	adds r5, #0xc
	movs r0, #0xc
	add r8, r0
	subs r4, #1
	subs r0, #0xd
	cmp r4, r0
	bne _080AE350
_080AE372:
	ldr r1, _080AE380 @ =gGFXSlots
	movs r0, #1
	strb r0, [r1, #3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AE380: .4byte gGFXSlots
	.syntax divided
