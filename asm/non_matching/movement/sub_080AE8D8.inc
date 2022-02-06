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
	lsls r2, r2, #8
	ands r2, r0
	adds r3, r2, #0
	cmp r1, #0
	beq _080AE904
	cmp r2, #0
	bne _080AE99E
_080AE904:
	orrs r1, r2
	cmp r1, #0
	bne _080AE928
	ldr r1, _080AE924 @ =gSineTable
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
	b _080AE98A
	.align 2, 0
_080AE924: .4byte gSineTable
_080AE928:
	mov r2, ip
	cmp r2, #2
	bne _080AE942
	lsls r7, r5, #8
	ldr r0, [r4, #0x2c]
	adds r0, r0, r7
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #4
	mov r2, sb
	bl sub_080AE58C
	b _080AE95C
_080AE942:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	bne _080AE95C
	lsls r7, r5, #8
	ldr r0, [r4, #0x30]
	subs r0, r0, r7
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #4
	mov r2, sb
	bl sub_080AE58C
_080AE95C:
	ldrh r2, [r4, #0x2a]
	movs r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _080AE97E
	ldr r1, _080AE9B4 @ =gSineTable
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
_080AE97E:
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080AE99E
	ldr r1, _080AE9B4 @ =gSineTable
_080AE98A:
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
_080AE99E:
	ldr r2, _080AE9B8 @ =0x00003333
	adds r0, r7, r2
	ldr r1, _080AE9BC @ =0x00006665
	cmp r0, r1
	bhi _080AE9C0
	ldr r2, _080AE9B8 @ =0x00003333
	adds r0, r6, r2
	cmp r0, r1
	bhi _080AE9C0
	movs r0, #0
	b _080AE9C2
	.align 2, 0
_080AE9B4: .4byte gSineTable
_080AE9B8: .4byte 0x00003333
_080AE9BC: .4byte 0x00006665
_080AE9C0:
	movs r0, #1
_080AE9C2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
