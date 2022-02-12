	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	movs r7, #0
	movs r6, #0
	ldrh r0, [r4, #0x2a]
	movs r1, #0xe0
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #4
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AECD8
	cmp r2, #0
	bne _080AED72
_080AECD8:
	orrs r1, r2
	cmp r1, #0
	bne _080AECFC
	ldr r1, _080AECF8 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r0, #0
	muls r7, r5, r7
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	b _080AED5E
	.align 2, 0
_080AECF8: .4byte gSineTable
_080AECFC:
	mov r2, ip
	cmp r2, #0x40
	bne _080AED16
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x14
	mov r2, sb
	bl CalculateEntityTileCollisions
	b _080AED30
_080AED16:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	bne _080AED30
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	adds r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x14
	mov r2, sb
	bl CalculateEntityTileCollisions
_080AED30:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe0
	ands r0, r2
	cmp r0, #0
	bne _080AED52
	ldr r1, _080AED88 @ =gSineTable
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
_080AED52:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080AED72
	ldr r1, _080AED88 @ =gSineTable
_080AED5E:
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	muls r6, r5, r6
	ldr r0, [r4, #0x2c]
	adds r0, r0, r6
	str r0, [r4, #0x2c]
_080AED72:
	ldr r2, _080AED8C @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AED90 @ =0x00006665
	cmp r0, r1
	bhi _080AED94
	ldr r2, _080AED8C @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AED94
	movs r0, #0
	b _080AED96
	.align 2, 0
_080AED88: .4byte gSineTable
_080AED8C: .4byte 0x00003333
_080AED90: .4byte 0x00006665
_080AED94:
	movs r0, #1
_080AED96:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
