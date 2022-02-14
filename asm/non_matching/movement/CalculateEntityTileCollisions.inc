	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	adds r4, r2, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	ldr r1, _080AE624 @ =0x00002004
	adds r5, r0, r1
	ldr r2, [sp]
	ldr r2, [r2, #0x48]
	str r2, [sp, #8]
	ldr r0, [sp]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r2, [sp, #8]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, [sp]
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldr r2, [sp, #8]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov sl, r1
	ldrb r0, [r2, #2]
	mov sb, r0
	ldrb r1, [r2, #3]
	mov r8, r1
	movs r0, #0xf
	ldr r2, [sp, #4]
	ands r0, r2
	cmp r0, #0
	beq _080AE65C
	cmp r2, #0xf
	bhi _080AE628
	ldr r7, [sp, #0xc]
	add r7, sb
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl IsTileCollision
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r2, sl
	add r2, r8
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	mov r0, sl
	mov r1, r8
	subs r2, r0, r1
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #6
	b _080AE6D2
	.align 2, 0
_080AE624: .4byte 0x00002004
_080AE628:
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r7, r2, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl IsTileCollision
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r2, sl
	add r2, r8
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	mov r1, sl
	mov r0, r8
	subs r2, r1, r0
	adds r0, r5, #0
	adds r1, r7, #0
	b _080AE6C8
_080AE65C:
	ldr r7, [sp, #0xc]
	add r7, sb
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl IsTileCollision
	adds r6, r0, #0
	lsls r6, r6, #1
	mov r1, sl
	add r1, r8
	str r1, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x10]
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	mov r2, sl
	mov r0, r8
	subs r2, r2, r0
	mov r8, r2
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #2
	ldr r1, [sp, #0xc]
	mov r2, sb
	subs r7, r1, r2
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x10]
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
_080AE6C8:
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #2
_080AE6D2:
	ldr r0, [sp, #8]
	ldrb r0, [r0, #4]
	mov sb, r0
	ldr r1, [sp, #8]
	ldrb r1, [r1, #5]
	mov r8, r1
	ldr r2, [sp, #4]
	subs r2, #8
	str r2, [sp, #4]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	beq _080AE760
	cmp r2, #0xf
	bhi _080AE72C
	mov r7, sl
	add r7, r8
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	ldr r0, [sp, #0xc]
	mov r2, sb
	subs r1, r0, r2
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #5
	b _080AE7D6
_080AE72C:
	mov r0, sl
	mov r1, r8
	subs r7, r0, r1
	lsls r6, r6, #4
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r1, r2, r0
	adds r0, r5, #0
	b _080AE7CA
_080AE760:
	mov r7, sl
	add r7, r8
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	ldr r1, [sp, #0xc]
	add r1, sb
	str r1, [sp, #0x14]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	ldr r2, [sp, #0xc]
	mov r0, sb
	subs r2, r2, r0
	mov sb, r2
	adds r0, r5, #0
	mov r1, sb
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #2
	mov r1, sl
	mov r2, r8
	subs r7, r1, r2
	adds r0, r5, #0
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
	adds r0, r5, #0
	mov r1, sb
_080AE7CA:
	adds r2, r7, #0
	adds r3, r4, #0
	bl IsTileCollision
	orrs r6, r0
	lsls r6, r6, #1
_080AE7D6:
	ldr r0, [sp]
	strh r6, [r0, #0x2a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
