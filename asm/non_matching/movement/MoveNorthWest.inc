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
	movs r1, #0xe
	ands r1, r0
	mov ip, r1
	movs r2, #0xe0
	lsls r2, r2, #4
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AEEC0
	cmp r2, #0
	bne _080AEF5A
_080AEEC0:
	orrs r1, r2
	cmp r1, #0
	bne _080AEEE4
	ldr r1, _080AEEE0 @ =gSineTable
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
	b _080AEF46
	.align 2, 0
_080AEEE0: .4byte gSineTable
_080AEEE4:
	mov r2, ip
	cmp r2, #4
	bne _080AEEFE
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	subs r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0x1c
	mov r2, sb
	bl CalculateEntityTileCollisions
	b _080AEF18
_080AEEFE:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r3, r0
	bne _080AEF18
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x1c
	mov r2, sb
	bl CalculateEntityTileCollisions
_080AEF18:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AEF3A
	ldr r1, _080AEF70 @ =gSineTable
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
_080AEF3A:
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080AEF5A
	ldr r1, _080AEF70 @ =gSineTable
_080AEF46:
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
_080AEF5A:
	ldr r2, _080AEF74 @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AEF78 @ =0x00006665
	cmp r0, r1
	bhi _080AEF7C
	ldr r2, _080AEF74 @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AEF7C
	movs r0, #0
	b _080AEF7E
	.align 2, 0
_080AEF70: .4byte gSineTable
_080AEF74: .4byte 0x00003333
_080AEF78: .4byte 0x00006665
_080AEF7C:
	movs r0, #1
_080AEF7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
