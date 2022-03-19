    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sl, r1
	adds r6, r2, #0
	movs r0, #0x2e
	ldrsh r1, [r1, r0]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	ble _0804A3F0
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r4, r0, #4
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	movs r2, #3
	mov r8, r2
	cmp r0, #7
	bhi _0804A34C
	movs r0, #0xc
	mov r8, r0
_0804A34C:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0804A3E8 @ =gRoomControls
	mov sb, r2
	ldrh r3, [r2, #6]
	adds r1, r3, #0
	subs r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r7, #0x3f
	ands r0, r7
	ldrh r2, [r2, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r1, #0x2e
	ldrsh r4, [r4, r1]
	subs r1, r4, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A3EC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	bne _0804A394
	b _0804A4B0
_0804A394:
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	adds r4, r0, #4
	mov r0, r8
	movs r1, #0xf
	eors r0, r1
	mov r8, r0
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	mov r5, sb
	ldrh r3, [r5, #6]
	adds r1, r3, #0
	subs r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	ldrh r2, [r5, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A3EC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r0, #8
	b _0804A4B2
	.align 2, 0
_0804A3E8: .4byte gRoomControls
_0804A3EC: .4byte 0x00002004
_0804A3F0:
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	subs r4, r0, #4
	adds r0, r4, #0
	movs r1, #0xf
	ands r0, r1
	movs r2, #3
	mov r8, r2
	cmp r0, #7
	bhi _0804A408
	movs r0, #0xc
	mov r8, r0
_0804A408:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0804A4A8 @ =gRoomControls
	mov sb, r2
	ldrh r3, [r2, #6]
	adds r1, r3, #0
	adds r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r7, #0x3f
	ands r0, r7
	ldrh r2, [r2, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r1, #0x2e
	ldrsh r4, [r4, r1]
	subs r1, r4, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A4AC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	rsbs r2, r2, #0
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	adds r4, r0, #4
	mov r0, r8
	movs r1, #0xf
	eors r0, r1
	mov r8, r0
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	mov r5, sb
	ldrh r3, [r5, #6]
	adds r1, r3, #0
	adds r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r7
	ldrh r2, [r5, #8]
	subs r2, r4, r2
	lsrs r2, r2, #4
	ands r2, r7
	lsls r2, r2, #6
	orrs r0, r2
	mov r4, sl
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r7
	orrs r1, r2
	ldr r2, _0804A4AC @ =0x00002004
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #1
	rsbs r2, r2, #0
	mov r3, r8
	bl sub_0804A4BC
	cmp r0, #0
	beq _0804A4B0
	movs r0, #0x18
	b _0804A4B2
	.align 2, 0
_0804A4A8: .4byte gRoomControls
_0804A4AC: .4byte 0x00002004
_0804A4B0:
	movs r0, #0xff
_0804A4B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
    .syntax divided
