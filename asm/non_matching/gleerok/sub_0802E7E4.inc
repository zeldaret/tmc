	.syntax unified

	.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r0, [r0, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802E8D0
	movs r6, #0
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r0, #0x30
	add r0, ip
	mov r8, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov sl, r1
	movs r2, #4
	rsbs r2, r2, #0
	mov sb, r2
_0802E818:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r6, #1
	mov r1, r8
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E852
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E860
_0802E852:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E860:
	adds r5, #1
	cmp r5, #5
	bls _0802E818
	movs r5, #0
	movs r2, #7
	mov sb, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
_0802E872:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bhi _0802E8BA
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E8BA:
	cmp r5, #4
	bls _0802E872
	mov r1, ip
	ldr r0, [r1, #0x38]
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	b _0802E9A4
_0802E8D0:
	movs r6, #5
	movs r5, #0
	mov r7, ip
	adds r7, #0x3c
	movs r2, #0x30
	add r2, ip
	mov r8, r2
	movs r0, #8
	rsbs r0, r0, #0
	mov sl, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov sb, r1
_0802E8EA:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r3, [r4]
	adds r3, #0x29
	movs r1, #7
	ands r1, r6
	ldrb r2, [r3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	subs r6, #1
	mov r2, r8
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E924
	ldr r3, [r4]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
	b _0802E932
_0802E924:
	ldr r2, [r4]
	ldrb r1, [r2, #0x18]
	mov r0, sb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
_0802E932:
	adds r5, #1
	cmp r5, #5
	bls _0802E8EA
	movs r5, #0
	movs r0, #7
	mov sb, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov r8, r1
_0802E944:
	lsls r1, r5, #2
	mov r2, ip
	adds r0, r2, r1
	ldrb r0, [r0, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, #1
	cmp r0, #0x10
	bls _0802E98C
	adds r0, r7, r1
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r4, [r3]
	lsls r0, r4, #0x1d
	lsrs r6, r0, #0x1d
	lsls r2, r5, #2
	adds r2, r7, r2
	ldr r0, [r2]
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2]
	adds r1, #0x29
	mov r0, sb
	ands r6, r0
	ldrb r2, [r1]
	mov r0, r8
	ands r0, r2
	orrs r0, r6
	strb r0, [r1]
_0802E98C:
	cmp r5, #4
	bls _0802E944
	mov r1, ip
	ldr r2, [r1, #0x38]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
_0802E9A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
